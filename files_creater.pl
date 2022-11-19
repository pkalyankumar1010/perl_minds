$ref_file = $ARGV[0];#file_subfile
$seeds = $ARGV[1];#no of files to be generated

for($i =1;$i < $seeds+1;$i=$i+1) {
	#$i =7;
	$new = substr($ref_file,5).$i;#to name subfiles as subfile1
	system("perl -pe \"s/seed=\\d+/seed=$i/\" <$ref_file> fol/$new");#save them in a folder
	print "$new generated \n";
}



