# patch segitsegevel szoveges fajlok modositasat tudjuk elvegezni
# van egy korabbi verzio, majd keszul egy ujabb verzio, de a patch csak a ketto verzio kozotti kulonbseget tartalmazza
# igy egy kis meretu fajllal kell csak dolgozni

# a diff segitsegevel ket fajlt megadva, megkapjuk a ketto kozotti soronkenti kulonbseget (amit a kulon fajlba is tehetunk)
diff -Naur old_file new_file > diff_file

# miutan a fentiek szerint elkeszitettuk a diff_file -t, futtassuk a patch parancsot hogy az old_file-ba belekeruljenek a modositasok:
patch < diff_file
















