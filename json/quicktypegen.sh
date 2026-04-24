quicktype json/qz --out gen/qz.json.go --lang go

quicktype \
  json/qz \
  --lang cpp \
  --out gen/qz.json.h \
  --no-boost \
  --code-format with-struct \
  --namespace qz

quicktype json/qz --out gen/qz.json.py --lang python