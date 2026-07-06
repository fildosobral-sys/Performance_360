from http.server import SimpleHTTPRequestHandler, ThreadingHTTPServer
from pathlib import Path
import socket
import webbrowser


PORT = 8765
ROOT = Path(__file__).resolve().parent


class NoCacheHandler(SimpleHTTPRequestHandler):
    def end_headers(self):
        self.send_header("Cache-Control", "no-store, no-cache, must-revalidate, max-age=0")
        self.send_header("Pragma", "no-cache")
        self.send_header("Expires", "0")
        super().end_headers()

    def log_message(self, format, *args):
        return


def local_ip():
    sock = socket.socket(socket.AF_INET, socket.SOCK_DGRAM)
    try:
        sock.connect(("10.255.255.255", 1))
        return sock.getsockname()[0]
    except OSError:
        return "127.0.0.1"
    finally:
        sock.close()


if __name__ == "__main__":
    import os

    os.chdir(ROOT)
    ip = local_ip()
    computer_url = f"http://127.0.0.1:{PORT}/index.html"
    phone_url = f"http://{ip}:{PORT}/index.html"

    print("=" * 62)
    print("FS PERFORMANCE 360 - SERVIDOR ATIVO")
    print("=" * 62)
    print()
    print("NO CELULAR, conectado ao mesmo Wi-Fi, abra:")
    print()
    print(f"  {phone_url}")
    print()
    print("Após qualquer atualização, apenas pressione F5 no navegador.")
    print("Mantenha esta janela aberta durante o uso.")
    print("Para encerrar, feche esta janela ou pressione Ctrl+C.")
    print()

    webbrowser.open(computer_url)
    server = ThreadingHTTPServer(("0.0.0.0", PORT), NoCacheHandler)
    try:
        server.serve_forever()
    except KeyboardInterrupt:
        pass
    finally:
        server.server_close()

