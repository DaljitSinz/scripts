cat deploy_rollback.csv | grep "pkB" > /tmp/tmp.csv
       cut -c2- /tmp/tmp.csv > unit.csv
cat unit.csv
