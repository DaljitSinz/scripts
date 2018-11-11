if grep -q Error "/tmp/logs/dev_out.log"; then
        echo "Error found please check below logs or from /tmp/logs/dev_out.log"
        cat /tmp/logs/dev_out.log
		exit 1
fi
if grep -q ERROR "/tmp/logs/dev_out.log"; then
        echo "ERROR found please check below logs or from /tmp/logs/dev_out.log"
        cat /tmp/logs/dev_out.log
		exit 1
fi

