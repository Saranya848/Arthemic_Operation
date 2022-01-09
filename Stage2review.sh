echo "------------- Compution And Sorting ---------------"

#TO DECLARE THE DICTIONARY
declare -A Operation

read -p "Enter First Number :" a
read -p "Enter Second input:" b
read -p "Enter Third input :" c

#COMPUTING ARITHMETIC OPERATION
result1=`echo $(($a + $b * $c))`
echo "Result:" $result1

result2=`echo $(($a * $b + $c))`
echo "Result:" $result2

result3=`echo $(($c + $a / $b))`
echo "Result:" $result3

result4=`echo $(($a % $b + $c))`
echo "Result:" $result4

#THE DICTIONARY
Operation[result1]=$result1
Operation[result2]=$result2
Operation[result3]=$result3
Operation[result4]=$result4

#TO READ AND PRINT THE DICTIONARY VALUE IN ARRAY
for((index=0; index<${#Operation[@]}; index++))
do
  array[index]=${Operation[result$((index+1))]}
done

echo "${array[@]}"

#SORTING RESULTS IN DECENDING ORDER
function descendingOrderSort()
{
for ((i = 0; i<${#array[@]}; i++))
	do
		for((j = 0; j<${#array[@]}-1; j++))
    		do
    
        		if [[ ${array[j]} -lt ${array[$((j+1))]} ]]
        		then
            
            			temp=${array[j]}
            			array[$j]=${array[$((j+1))]}  
            			array[$((j+1))]=$temp
        		fi
    		done
	done
echo "Descending order:" ${array[@]}
}

#FUNCTION CALL FOR SORTING IN DECENDING ORDER
descendingOrderSort ${array[@]}

#SORTING RESULTS IN ASCENDING ORDER
function ascendingOrderSort()
{
for ((i = 0; i<${#array[@]}; i++))
	do
		for((j = 0; j<${#array[@]}-1; j++))
    		do
    
        		if [[ ${array[j]} -gt ${array[$((j+1))]} ]]
        		then
            
            			temp=${array[j]}
            			array[$j]=${array[$((j+1))]}  
            			array[$((j+1))]=$temp
        		fi
    		done
	done
echo "Ascending order:" ${array[@]}
}

#FUNCTION CALL FOR SORTING IN ASCENDING ORDER
ascendingOrderSort ${array[@]}
