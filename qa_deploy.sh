for i in `cat deploy_rollback.csv`
do
 echo "The package: $i is being deployed Start_Time:$(date)"
 sqlplus -s apps/appsJ14tst4qa@ebstst << EOB
   $i;
   quit;
EOB
echo "Package $i is deployded Successfully log_time:$(date)"
done
