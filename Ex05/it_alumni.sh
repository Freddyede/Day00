# Parcourir CSV afin de récupérer la liste des anciens élèves en fonction de leurs villes 
# grep -w 'PHP' ~/Downloads/it_alumni.csv > "php.csv";
# grep -w 'Remote' php.csv > "remote.csv";
# grep -c '2019' remote.csv > "php_remote_2019.csv";
# rm remote.csv;
# rm php.csv;
awk -F , '$5=="PHP" && $2 =="Remote" && $1=="2019" {count++} END {printf("%d", count)}' it_alumni.csv > php_remote_2019.csv;
awk -F , '($2 =="Charbonnieres" || $2=="Villeurbanne") && $5=="Js" {print}' it_alumni.csv > javascript_villeurbanne_charbonnieres.csv;
awk -F , '$3=="David" || $4=="David"{print}' it_alumni.csv > david.csv;
awk -F , '$2=="Gex" {print $6}' it_alumni.csv > mails_gex.csv;
awk -F , '$2=="Charbonnieres" || $2=="Remote"  {print $6}' it_alumni.csv > mails_charbonnieres_remote.csv;
awk -F , '$2=="Charbonnieres" && $5=="Python" && $1=="2008" {count++} END {printf("%d", count)}' it_alumni.csv > python_2008.csv;