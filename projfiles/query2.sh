awk -F: 'BEGIN { count=0;}
$6 ~ /DexterPlus/ { count++; }
END { print "Number of patients admitted in DexterPlus Hospital in different places =",count;}' patients

