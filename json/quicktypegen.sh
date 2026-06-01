#gsio############################################################
# quicktype \
#   json/gsio \
#   --lang cpp \
#   --out gen/gsio.json.h \
#   --no-boost \
#   --code-format with-struct \
#   --namespace gsio

# quicktype json/gsio --out gen/giso_json.py --lang python
#cmd############################################################
# quicktype json/cmd --out /Users/zhouwenzhe/Code/microsate/new_cmd/cmd/gen/cmd.qt.go --lang go --package qt
# quicktype json/cmd --out /Users/zhouwenzhe/Code/microsate/new_cmd/cmd/gen/cmd_qt.py --lang python
#gsio2###############################################################
# quicktype json/mtp --out /Users/zhouwenzhe/Code/microsate/gsio2/gen/mtp_qt.py --lang python  \
# --all-properties-optional \
# --just-types \
#   --python-version 3.7 
#mtp#################################################################
quicktype json/mtp --out /Users/zhouwenzhe/Code/microsate/mtp/gen/mtp.qt.go --lang go --package qt
