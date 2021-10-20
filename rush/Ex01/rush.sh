# TODO : [X] Exercice 00 :
  # TODO : [X] Faire disparaître les deux dernières ligne de la déposition de Joe Rugiani
sed -i '10,11d' Day01/ex00/deposition_Joe_Rugiani.txt;
sed -i "s/'ai vu cette chevrolet impala/'ai vu cette cadillac jaune/g" Day01/ex00/deposition_Joe_Rugiani.txt;
sed -i "s/'est approché de la voiture ils ont discute durant 30 minutes et le chauffeur lui a donné un paquet ensuite le jeune livreur l'/'est approché de la voiture ils ont discute durant 30 minutes et le chauffeur lui a donné un paquet ensuite le jeune livreur l'/g" Day01/ex00/deposition_Joe_Rugiani.txt;
#TODO : [X] Exercice 01 :
  # TODO : [X] Changer la marque de la voiture cadillac jaune en chevrolet impala
  # TODO : [X] Changer la couleur du chapeau rouge qui doit-être en vert
sed -i '11d' Day01/ex01/deposition_Joe_Rugiani.txt;
sed -i 's/cadillac jaune/chevrolet impala/g' Day01/ex01/deposition_Joe_Rugiani.txt;
sed -i 's/rouge/vert/g' deposition_Joe_Rugiani.txt;
sed -i "s/'est approché de la voiture ils ont discute durant 30 minutes et le chauffeur lui a donné un paquet ensuite le jeune livreur l'a range dans son sac a dos/'est approché de la voiture ils ont discute durant 30 minutes et le chauffeur lui a donné un paquet ensuite le jeune livreur l'a range dans son sac a dos/g" deposition_Joe_Rugiani.txt;
#TODO : [X] Exercice 02 :
  # TODO : [#] Afficher uniquement les officiers
  # TODO : [X] Afficher l'officier Cameron, Officer, 8
awk -F , '$2=="Officer" {print}' Day01/ex02/tcpd_department.csv > tcpd_department_deposition.csv;
awk -F , '$2=="Officer" && $3 > 6 {print}' Day01/ex02/tcpd_department.csv > tcpd_department_tueur.csv;
#TODO : [ ] Exercice 03 - Mystery :
  #TODO : [ ] Get all reports in file crimescene find by keyword "CLUE"
sed -r 's/.*(CLUE).*/\1/g' Day01/ex03/Murder_in_terminal_city/mystery/crimescene