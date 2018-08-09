##########################################################################
modifyprescription()
{
echo "Enter the ID of the prescription to modify"
read prid
temp=`cat ./Hospital/prescriptions|grep -c $prid` 2> /var/tmp/prjt
if [ $temp -eq 0 ]
then
  echo "No prescription with given ID is generated in hospital try diffferent ID"
else
cat ./Hospital/prescriptions|grep -v $prid >> ./tmp
  mv ./tmp ./Hospital/prescriptions
prescriptionname 
sleep 3
fi

}
##########################################################################

prescriptionname ()
{
  echo   
  echo "Please enter prescription ID"
  read prid
  echo "Please enter the patient name this prescription belongs to "
  read pname
  echo "Please enter the doctor name this prescription belongs to"
  read dname
    touch ./Hospital/prescriptions
temp=`cat ./Hospital/prescriptions|grep -c $prid` 2> /var/tmp/prjt
if [ $temp -eq 0 ]
then
  echo $prid,$pname,$dname
  a=$prid:$pname:$dname
  echo $a >> ./Hospital/prescriptions  

else
 echo "prescription already exits. Please select a different ID"
sleep 3
fi
 echo  
sleep 3
  echo "Saving and going back to main menu....."  
  
 

  
}


##########################################################################

deleteprescription ()
{
 echo "Please enter the prescription ID which you would like to delete"
 read prid
 echo Deleting the prescription....
 cat ./Hospital/prescriptions|grep -v $prid >> ./tmp
  mv ./tmp ./Hospital/prescriptions
  echo prescription with ID $prid is deleted.
echo  
  echo "Saving and going back to main menu....." 


}

##########################################################################

##########################################################################

listprescriptions ()
{
 
 echo "List of Prescriptions"
cat ./Hospital/prescriptions
echo
echo
sleep 3



}

##########################################################################
##########################################################################
modifypharmacy()
{
echo "Enter the ID of the pharmacy to modify"
read phid
temp=`cat ./Hospital/pharmacys|grep -c $phid` 2> /var/tmp/prjt
if [ $temp -eq 0 ]
then
  echo "No pharamcy with given ID is present in hospital try diffferent ID"
else
cat ./Hospital/pharmacys|grep -v $phid >> ./tmp
  mv ./tmp ./Hospital/pharmacys
pharmacyname 
sleep 3
fi

}
##########################################################################

pharmacyname ()
{
  echo   
  echo "Please enter pharmacy ID"
  read phid
  echo "Please enter the location of pharmacy "
  read phl
  echo "Please enter the pharmacist belongs to"
  read phd
    touch ./Hospital/pharmacys
temp=`cat ./Hospital/pharmacys|grep -c $phid` 2> /var/tmp/prjt
if [ $temp -eq 0 ]
then
  echo $phid,$phl,$phd
  a=$phid:$phl:$phd
  echo $a >> ./Hospital/pharmacys  

else
 echo "pharmacy already exits. Please select a different ID"
sleep 3
fi
 echo  
sleep 3
  echo "Saving and going back to main menu....."  
  
 

  
}


##########################################################################

deletepharmacy ()
{
 echo "Please enter the pharmacy ID which you would like to delete"
 read phid
 echo Deleting the pharmacy....
 cat ./Hospital/pharmacys|grep -v $phid >> ./tmp
  mv ./tmp ./Hospital/pharmacys
  echo pharmacy with ID $phid is deleted.
echo  
  echo "Saving and going back to main menu....." 


}

##########################################################################

##########################################################################

listpharmacys ()
{
 
 echo "List of Pharmacys"
cat ./Hospital/pharmacys
echo
echo
sleep 3



}

##########################################################################
##########################################################################
modifydoctor()
{
echo "Enter the ID of the Doctor to modify"
read did
temp=`cat ./Hospital/doctors|grep -c $did` 2> /var/tmp/prjt
if [ $temp -eq 0 ]
then
  echo "No Docotor with given ID is working in hospital try diffferent ID"
else
cat ./Hospital/doctors|grep -v $did >> ./tmp
  mv ./tmp ./Hospital/doctors
doctorname 
sleep 3
fi

}
##########################################################################

doctorname ()
{
  echo   
  echo "Please enter doctor name "
  read dname
  echo "Please enter doctor ID"
  read did
  echo "Please enter the speciality of doctor "
  read ds
  echo "Please enter the building the doctor belongs to"
  read db
 touch ./Hospital/doctors 
temp=`cat ./Hospital/doctors|grep -c $did` 2> /var/tmp/prjt
if [ $temp -eq 0 ]
then
  echo $dname,$did,$ds,$db
  a=$dname:$did:$ds:$db
  echo $a >> ./Hospital/doctors  

else
 echo "doctor already exits. Please select a different ID"
sleep 3
fi
 echo  
sleep 3
  echo "Saving and going back to main menu....."  
  
 

  
}


##########################################################################

deletedoctor ()
{
 echo "Please enter the doctor ID which you would like to delete"
 read did
 echo Deleting the doctor....
 cat ./Hospital/doctors|grep -v $did >> ./tmp
  mv ./tmp ./Hospital/doctors
  echo doctor with ID $did is deleted.
echo  
  echo "Saving and going back to main menu....." 


}

##########################################################################

##########################################################################

listdoctors ()
{
 
 echo "List of Doctors"
cat ./Hospital/doctors
echo
echo
sleep 3



}

##########################################################################
##########################################################################
modifyroom()
{
echo "Enter the ID of the room to modify"
read rid
temp=`cat ./Hospital/rooms|grep -c $rid` 2> /var/tmp/prjt
if [ $temp -eq 0 ]
then
  echo "No room with given ID is present in hospital try diffferent ID"
else
cat ./Hospital/rooms|grep -v $pid >> ./tmp
  mv ./tmp ./Hospital/rooms
roomname 
sleep 3
fi

}
##########################################################################

roomname ()
{
  echo   
  echo "Please enter room ID "
  read rid
  echo "Please enter the size of room in sqft "
  read rs
  echo "Please enter the building the room belongs to"
  read rb
  echo "Please enter the number of beds in this room"
  read rn

 touch ./Hospital/rooms 
temp=`cat ./Hospital/rooms|grep -c $rid` 2> /var/tmp/prjt
if [ $temp -eq 0 ]
then
  echo $rid,$rs,$rb,$rn
  a=$rid:$rs:$rb:$rn
  echo $a >> ./Hospital/rooms  

else
 echo "room already exits. Please select a different ID"
sleep 3
fi
 echo  
sleep 3
  echo "Saving and going back to main menu....."  
  
 

  
}


##########################################################################

deleteroom ()
{
 echo "Please enter the room ID which you would like to delete"
 read rid
 echo Deleting the room....
 cat ./Hospital/rooms|grep -v $rid >> ./tmp
  mv ./tmp ./Hospital/rooms
  echo room with ID $rid is deleted.
echo  
  echo "Saving and going back to main menu....." 


}

##########################################################################

##########################################################################

listrooms ()
{
 
 echo "List of Rooms"
cat ./Hospital/rooms
echo
echo
sleep 3



}
##########################################################################
modifybuilding()
{
echo "Enter the Name of the building to modify"
read bname
temp=`cat ./Hospital/buildings|grep -c $bname` 2> /var/tmp/prjt
if [ $temp -eq 0 ]
then
  echo "No building with given Name is entered in hospital try diffferent name"
else
cat ./Hospital/buildings|grep -v $bname >> ./tmp
  mv ./tmp ./Hospital/buildings
buildingname 
sleep 3
fi

}
##########################################################################



buildingname ()
{
  echo   
  echo "Please enter building name "
  read bname
  echo "Please enter no of rooms "
  read bn
  echo "Please enter the department the building belongs to"
  read bdep
  touch ./Hospital/buildings
temp=`cat ./Hospital/buildings|grep -c $bname` 2> /var/tmp/prjt
if [ $temp -eq 0 ]
then
  echo $bname,$bn,$bdep
  a=$bname:$bn:$bdep
  echo $a >> ./Hospital/buildings  

else
 echo "building already exits. Please select a different name"
sleep 3
fi
 echo  
sleep 3
  echo "Saving and going back to main menu....."  
}


##########################################################################

deletebuilding ()
{
 echo "Please enter the building name which you would like to delete"
 read bname
 echo Deleting the building....
 cat ./Hospital/buildings|grep -v $bname >> ./tmp
  mv ./tmp ./Hospital/buildings
  echo building with name $bname is deleted.
echo  
  echo "Saving and going back to main menu....." 


}

##########################################################################

##########################################################################

listbuildings ()
{
 
 echo "List of Hospital Buildings"
cat ./Hospital/buildings
echo
echo
sleep 3



}

##########################################################################
modifypatient()
{
echo "Enter the ID of the patient to modify"
read pid
temp=`cat ./Hospital/patients|grep -c $pid` 2> /var/tmp/prjt
if [ $temp -eq 0 ]
then
  echo "No patient with given ID is admitted in hospital try diffferent ID"
else
cat ./Hospital/patients|grep -v $pid >> ./tmp
  mv ./tmp ./Hospital/patients
patientname 
sleep 3
fi

}
##########################################################################

##########################################################################
patientname ()
{
  echo   
  echo "Please enter patient name "
  read pname
  echo "Please enter patient id: "
  read pid
  echo "Please enter patient date of admisssion:"
  read doa
  echo "Please enter patient location: "
  read pl
echo "Please enter patient doctor: "
  read pd
echo "Please enter the building the patient got admitted to: "
  read pb
echo "Please enter id of the rooom patient admitted to : "
  read pr


  touch ./Hospital/patients
temp=`cat ./Hospital/patients|grep -c $pid` 2> /var/tmp/prjt
if [ $temp -eq 0 ]
then
  echo $pname - $pid, $doa, $pl, $pd, $pb, $pr
  a=$pname:$pid:$doa:$pl:$pd:$pb:$pr  
  echo $a >> ./Hospital/patients  

else
 echo "Patient already exits. Please select a different PID"
sleep 3
fi
  echo  
sleep 3
  echo "Saving and going back to main menu....."  
}



##########################################################################

##########################################################################

deletepatient ()
{
 echo "Please enter the patient id which you would like to delete"
 read pid
 echo Deleting the patient....
 cat ./Hospital/patients|grep -v $pid >> ./tmp
  mv ./tmp ./Hospital/patients
  echo pateint with id $pid is deleted.
echo  
  echo "Saving and going back to main menu....." 


}

##########################################################################

##########################################################################

listpatients ()
{
 
 echo "List of Patients"
cat ./Hospital/patients
echo
echo
sleep 3
#ls -l ./patients| grep ^-|awk '{print $1}' 


}

##########################################################################


main()
{
echo ________________________________________________________________
echo
echo "    Welcome To Hospital Database"
echo
echo ================================================================
echo
echo  
echo "{{{{Select any code as per the following}}}}"
echo
echo
  echo "1.Display the List of patients				
2.Insert a new patient for this hospital "
  echo "3.Remove an existing patient"
echo				
echo "4.Display the List of buildings "
  echo "5.Insert a new Hospital buidling 			
6.Remove an existing Hospital buidling"
echo
  echo "7.Display the List of Rooms				
8.Insert a new room for this hospital"
  echo "9.Remove an existing room"
echo				
echo "10.Display the List of Docotors "
  echo "11.Insert a Doctor for this hospital			
12.Remove an existing Doctor"
echo
  echo "13.Display the List of Pharmacies				
14.Insert a Pharmacy for this hospital"
  echo "15.Remove an existing Pharmacy"
echo				
echo "16.Display the List of Prescriptions generated in this hospital "
  echo "17.Insert a Prescription generated in this hospital	
18.Remove an existing Prescription"
echo
  echo "19.Update Patient Information				
20.Update Hospital Building Information"
  echo "21.Update Room Information				
22.Update Doctor Information"
  echo "23.Update Pharmacy Information				
24.Update Prescription Information"
echo
  echo "25.EXIT"
echo
echo 
 

if [ -d Hospital ]; then echo ; else  mkdir ./Hospital 2> /var/tmp/prjt ;  fi


}
while true
do
  main
  echo "Please Enter your choice: "
  read n
case $n in

1) listpatients
;;
2) patientname
;;
3) deletepatient
;;
4)listbuildings 
;;
5)buildingname
;;
6)deletebuilding
;;
7)listrooms 
;;
8)roomname
;;
9)deleteroom
;;
10)listdoctors 
;;
11)doctorname
;;
12)deletedoctor
;;
13)listpharmacys 
;;
14)pharmacyname
;;
15)deletepharmacy
;;
16)listprescriptions 
;;
17)prescriptionname
;;
18)deleteprescription
;;
19)modifypatient
;;
20)modifybuilding
;;
21)modifyroom
;;
22)modifydoctor
;;
23)modifypharmacy
;;
24)modifyprescription
;;
25) exit
;;
esac
done

################################

