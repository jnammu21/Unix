awk -F: 'BEGIN { count=0;}
$6 ~ /AllDocs/ { count++; }
END { print "Number of patients admitted in AllDocs Hospital =",count;}' patients

