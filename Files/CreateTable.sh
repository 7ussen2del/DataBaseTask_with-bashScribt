create_table() { 
 
    echo "$DBName" 
 
    read -p "Enter the Table Name you want to create: " createTB 
 
    if [ -n "$createTB" ] 
    then 
        if [ -f "../DataBases/$DBName/$createTB" ] 
        then 
            echo "$createTB already exists" 
        else 
            if [[ "${createTB:0:1}" =~ [a-zA-Z] ]] 
            then 
 
                while true 
                do 
                    read -p "Enter number of colomn: " col 
 
                    if [[ "$col" =~ ^[0-9]+$ ]] 
                    then 
                        break 
                    else 
                        echo "Sorry integers only" 
                    fi 
                done 
 
                arr=("id") 
 
                for ((var=1;var<=$col;var++)) 
                do 
                    read -p "Enter name of column $var : " colName 
                    arr+=("$colName") 
                done 
 
                printf "%s || " "${arr[@]}" > "../DataBases/$DBName/$createTB"
                printf "\n" >> "../DataBases/$DBName/$createTB" 
 
                echo "$createTB created" 
 
            else 
                echo "Table name should start with a letter" 
            fi 
        fi 
    else 
        echo "Error , you entered empty name" 
    fi 
} 
 
create_table