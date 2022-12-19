file_name='file.txt';
# var=$(cat < ${file_name})
# echo "${var}"
var=[]
idx=0
while IFS= read -r line || [[ -n "$line" ]]; do
    var[idx]="${line}"
    (( idx += 1 ))
done < ${file_name}

echo "${#var[@]}"
idx=0
while [[ ${idx} -lt ${#var[@]} ]];do
   echo "${var[idx]}"
   (( idx += 1 ))
done
