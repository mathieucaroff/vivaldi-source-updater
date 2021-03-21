from http import server
import os
import time
import threading

port = int(os.getenv("PORT"))

threading.Thread(
    target=server.HTTPServer(("", port), server.BaseHTTPRequestHandler).serve_forever,
    daemon=True,
).start()

print(f"Listening on http://localhost:{port}")

while True:
    time.sleep(3600)
