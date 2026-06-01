import json


def print_curl(response, *args, **kwargs):
    req = response.request

    headers = " ".join(
        f"-H '{k}: {v}'"
        for k, v in req.headers.items()
        if k.lower() != "content-length"
    )

    body = ""
    if req.body:
        if isinstance(req.body, (bytes, bytearray)):
            try:
                obj = json.loads(req.body.decode())
                body = f"--data '{json.dumps(obj)}'"
            except Exception:
                body = f"--data '{req.body.decode()}'"
        else:
            body = f"--data '{req.body}'"

    curl = f"curl -X {req.method} '{req.url}' {headers} {body}"
    print("\n[CURL]\n", curl)
