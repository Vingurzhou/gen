quicktype json/qz --out gen/qz.json.go --lang go

quicktype \
  json/qz \
  --lang cpp \
  --out gen/qz.json.h \
  --no-boost \
  --code-format with-struct \
  --namespace qz

quicktype json/qz --out gen/qz_json.py --lang python
#############################################################
quicktype \
  json/gsio \
  --lang cpp \
  --out gen/gsio.json.h \
  --no-boost \
  --code-format with-struct \
  --namespace gsio

quicktype json/gsio --out gen/giso_json.py --lang python
