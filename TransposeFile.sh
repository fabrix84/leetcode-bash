awk '{
	if(NR==1)
		for (x = 1; x <= NF; x++)
			col[x] = $x
	else
		for (x = 1; x <= NF; x++)
			col[x] = col[x]" "$x
}
END {
	for (x = 1; x <= NF; x++) {
		printf("%s\n", col[x])
	}
}' file.txt
