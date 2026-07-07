const CACHE_NAME = "performance360-v4";

const APP_SHELL = [
  "./",
  "./index.html",
  "./estilos.css",
  "./app.js",
  "./manifest.json",
  "./icone-192.png",
  "./icone-512.png",
  "./mascarável-512.png",
  "./logo-zenir.png",
  "./logo-foco.png"
];

// Instala o Service Worker
self.addEventListener("install", event => {
  self.skipWaiting();

  event.waitUntil(
    caches.open(CACHE_NAME)
      .then(cache => cache.addAll(APP_SHELL))
      .catch(error => {
        console.error("Erro ao criar cache:", error);
      })
  );
});

// Ativa e remove caches antigos
self.addEventListener("activate", event => {
  event.waitUntil(
    caches.keys().then(keys => {
      return Promise.all(
        keys
          .filter(key => key !== CACHE_NAME)
          .map(key => caches.delete(key))
      );
    }).then(() => self.clients.claim())
  );
});

// Intercepta requisições
self.addEventListener("fetch", event => {

  if (event.request.method !== "GET") {
    return;
  }

  event.respondWith(

    caches.match(event.request).then(cacheResponse => {

      if (cacheResponse) {
        return cacheResponse;
      }

      return fetch(event.request)
        .then(networkResponse => {

          if (!networkResponse || networkResponse.status !== 200) {
            return networkResponse;
          }

          const responseClone = networkResponse.clone();

          caches.open(CACHE_NAME).then(cache => {
            cache.put(event.request, responseClone);
          });

          return networkResponse;

        })
        .catch(() => {

          if (event.request.mode === "navigate") {
            return caches.match("./index.html");
          }

        });

    })

  );

});
