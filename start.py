import os
import subprocess

port = os.environ.get("PORT", "8000")
print(f"Starting server on port {port}")
subprocess.run(["uvicorn", "main:app", "--host", "0.0.0.0", "--port", port])
