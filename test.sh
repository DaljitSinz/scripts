for i in `cat unit.csv`
do
        sqlplus -s apps/Ebsep0l123@ebsdev << EOB
                set feedback off
                set serveroutput on
                DECLARE
                l_result qu_config.maxvarchar2;
                BEGIN
                qu_test.run_test_for (owner_in => 'APPS'
                , NAME_IN => '$i'
                , result_out => l_result
                , test_definition_owner_in => NULL
                , code_coverage_goal_in => 75);
                DBMS_OUTPUT.put_line (l_result);
        END;
/
quit;
EOB
echo "Unit Test $i is done log_time:$(date)"
done
echo "Done with Unit Test Execution"        
