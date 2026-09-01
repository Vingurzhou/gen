sh sql/gormgen.sh
# sh sql/sqlpp11gen.sh
# sh sql/sqlacodegen.sh
sh json/quicktypegen.sh

cd proto
buf generate --include-imports
