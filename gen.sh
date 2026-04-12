sh sql/gormgen.sh
sh sql/sqlpp11gen.sh

cd proto
buf generate --include-imports
