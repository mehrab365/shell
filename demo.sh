#!/bin/ksh
HOME="/home/jthomas" #Simple home directory
DATE=$(date) # Set DATE equal to the output of running the shell command date
HOSTNAME=$(hostname) # Set HOSTNAME equal to the output of the hostname command
PASSWORD_FILE="/etc/passwd" # Set AIX password file path
#Begin Code
x=5
y=7

print "\$x is $x"

### calculation and assign value to a variable
#((Result=x + y))
#print "x + y is: $Result"
#
#((Result = y-x))
#print "y-x is $Result"
#
#((Result=x * y))
#print "x * y is: $Result"
#
#((Result=y/x))
#print "y/x is: $Result"
#
#((Result=y%x))
#print "y%x is: $Result"
#
#### calculate in print statement
#print "just print $((2**3))"
#### -R for print negative
#print -R "print negative value: $((x-y))"
#
#print "print boolean: $((x != y))"


#### =================== console read write ==============
#### -n for Input at same line
#print -n "Enter city: "
#read CITY
#print "You entered : $CITY"

#### =================== Array
#Month[1]="January"
#Month[2]="February"
#Month[11]="November"
#Month[12]="December"
#
#print "Last month of year: ${Month[12]}"
#print "The whole month array: ${Month[*]}"
#print "A value not available in Array: ${Month[0]}"

####========================== if
#print -n "Enter AGE: "
#read AGE
#if ((AGE >= 18)) && ((x == 5));then
#    print "Vote!!!"
#elif ((y == 7));then
#    print "may vote y = ${y}"
#else
#    print "No Vote!!!, AGE IS: ${AGE}"
#fi
#print -n "Enter username: "
#read username
#
#if [[ ${username} = "mehrab" ]]
#then
#    print "mached \"mehrab\" "
#else
#    print "mis-match \$username"
#fi
#### match first 3 char then other 3 random char
#if [[ ${username} = meh??? ]];then
#    print "mached meh???"
#fi
#
#### mached a word followed by m
#if [[ ${username} = m* ]];then
#    print "mached m*"
#fi
#
#### match "a*" the actual work
#if [[ ${username} = "a*" ]];then
#    print "mached a*"
#fi

######################## if pattern matches
### ?() inside parenthesis value is optional one word or char
### @() inside parenthesis value is mandatory one word or char
### *() inside parenthesis value is optional multiple char
### !(root) match anything except word inside parenthesis

#print -n "Enter Y or y for yes and N or n for no: "
#read Answer
#
#if [[ "${Answer}" = [Yy]* ]]; then
#    print "Entered y ${Answer}"
#elif [[ ${Answer} = [Nn]* ]]; then
#    print "Entered n ${Answer}"
#else
#    print "Entered ${Answer}"
#fi


#print -n "Enter a vowel: "
#read Answer
#
#if [[ "${Answer}" = [aeiouAEIOU] ]]; then
#    print "its a vowel ${Answer}"
#else
#    print "not a vowel ${Answer}"
#fi

#print -n "Enter number between 0 to 9: "
#read Answer
#
#if [[ "${Answer}" = [0-9] ]]; then
#    print "valid number ${Answer}"
#else
#    print "invalid number ${Answer}"
#fi

#print -n "Enter a word start with reg or REG: "
#read Answer
#if [[ "${Answer}" = [Rr][Ee][Gg]* ]]; then
#    print "valid ans ${Answer}"
#else
#    print "invalid ans ${Answer}"
#fi

#print -n "Enter a word start with capital latter: "
#read Answer
#if [[ "${Answer}" = [!a-z]* ]]; then
#    print "valid ans ${Answer}"
#else
#    print "invalid ans ${Answer}"
#fi

#print -n "Enter a name like [jJ]ohn?(ny|boy|nie): "
#read Answer
#if [[ "${Answer}" == [jJ]ohn?(ny|boy|nie) ]]; then
#    print "valid ans ${Answer}"
#else
#    print "invalid ans ${Answer}"
#fi

#print -n "Enter a ans like chapter01 or chap(t or blank)01: "
#read Answer
#if [[ "${Answer}" == ch?(ap?(t)|apter)01 ]]; then
#    print "valid ans ${Answer}"
#else
#    print "invalid ans ${Answer}"
#fi

#print -n "Enter a name like [jJ]ohn@(ny|boy|nie): "
#read Answer
#if [[ "${Answer}" == [jJ]ohn@(ny|boy|nie) ]]; then
#    print "valid ans ${Answer}"
#else
#    print "invalid ans ${Answer}"
#fi

#print -n "Enter a name like [jJ]ohn*([a-z]): "
#read Answer
#if [[ "${Answer}" == [jJ]ohn*([a-z]) ]]; then
#    print "valid ans ${Answer}"
#else
#    print "invalid ans ${Answer}"
#fi

####################### case statement

#print -n "Enter a value: "
#read Var
#
#case $Var in
#    1) print "value is 1";;
#    2) print "value is 2";;
#    3|71) print "value is 3 or 71" ;;
#    *) print "value is ${Var} none of 1, 2, 3, 71"::
#esac


##################### work with file
### -a means anything file or directory
### -f means any file not directory
### -d means directory not file
### -L means symbolic link or shortcut
### -s means file and not empty
### -r means check can read the file
### -w check can write to the file
### -x check can execute the file
### -O check owner of the file
### -G check group owner of the file
### [[ f1 -nt f2 ]] file f1 newer than f2
### [[ f1 -ot f2 ]] file f1 older than f2

#FILE_NAME="/etc/passwd"
#if [[ -s ${FILE_NAME} ]]; then
#    print "file exist!!! "
#else
#    print "file does not exist"
#fi

######################## while loop

#n=0
#while (( n < 6))
#    do
#        (( Cube = n * n * n ))
#        print "$n cubed is: $Cube"
#        (( n = n + 1))
#    done


######################## until loop
#
#n=0
#until  (( n >= 6))
#    do
#        (( Cube = n * n * n ))
#        print "$n cubed is: $Cube"
#        (( n = n + 1))
#    done


##################### for loop
#a="this is a array of string not only a word"
#for word in $a
#    do
#        print "${word}"
#    done
#
#
#for i in 1 2 3 4 5 6
#    do
#        (( Cube = i * i * i ))
#        print "$i cubed is: $Cube"
#    done

########################### for break continue

#for i in 1 2 3 4 5 6
#    do
#        if (( $i == 3)); then
#            continue
#        fi
#        print "\$i is: $i"
#        if (( $i == 5)); then
#            break
#        fi
#    done
#    print "out of for loop"

################## receive args
### $@ list of all args
### "$@" list of all args
### $* list of all args
### "$*" string of all args

#print "script name: ${0}"
#print "1st arg: ${1}"
#print "2nd arg: ${2}"
#print "3rd arg: ${3}"
#print "4th arg: ${4}"
#print "5th arg: ${5}"

#for Arg in $@
#for Arg in "$@"
#for Arg in $*
#for Arg in "$*"
#    do
#        print $Arg
#    done

########################### flag by args

#I=0
#getopts :xyz Flag
#    (( I = I + 1 ))
#    print "Flag: $I is $Flag"
#
#getopts :xyz Flag
#    (( I = I + 1 ))
#    print "Flag: $I is $Flag"
#
#getopts :xyz Flag
#    (( I = I + 1 ))
#    print "Flag: $I is $Flag"
#
#getopts :xyz Flag
#    (( I = I + 1 ))
#    print "Flag: $I is $Flag"


## same using while loop
#I=0
#while getopts :xyz Flag
#    do
#        (( I = I + 1 ))
#        print "Flag: $I is $Flag"
#    done

### same with loop and case
#Usage="demo.sh [-xy]"
#while getopts :xy Value
#do
#  case $Value in
#    x) print "Entered -x"
#       XSet=1;;
#    y) print "Entered -y"
#       YSet=1;;
#   \?) print -n "Flag:$OPTARG "  #we can use * also
#       print "is not a valid flag."
#       print
#       print "$Usage"
#       exit;; #Korn shell command.
#  esac
#done
### flag with mandatory value

#Usage="demo.sh [-x Value] [-y] [args]"
#while getopts :x:y Value
#do
#  case $Value in
#    x) print "Entered -x"
#       print ""value:$OPTARG ""
#       XSet=1;;
#
#    y) print "Entered -y"
#       YSet=1;;
#   \?) print -n "Flag:$OPTARG "  #we can use * also
#       print "is not a valid flag."
#       print
#       print "$Usage"
#       exit;; #Korn shell command.
#    :) print -n "Flag:$OPTARG "  #we can use * also
#       print "Required a value"
#       print
#       print "$Usage"
#  esac
#done
## confusing
#print -R "arguments before shift : $*"
#print "OPTIND: $OPTIND"
#
#(( StartHere = OPTIND - 3 ))
#print "Start here value : ${StartHere}"
#
#shift $ShiftHere
#
#print -R "args after shiftl: $*"
#confusing

############################# function clip 50

#function Cube
#{
#    N=$1
#    (( Result = N * N * N))
#}
#
#Cube 5
#print "Result is: $Result"


######## Load a function stored in another file
##source ./Cube.sh # 1st way
#. ./Cube.sh       # 2nd way
#
#Cube 5
#
#print -R "Result is: $Result"

############ Use alias for unix command
#alias psg='ps -ef | grep'
#a=$( psg mehrab )
#i=0
#for item in $a
#    do
#        (( i=i+1))
#        print "item #$i is: "$item""
#    done

#### load alias from different file and variable musking
. ./Aliases.sh
#
##d=$(du) # 1st way
#d=`du`   # 2nd way
#pr "value of d is : $d"
###### uppercase and lowercase
#lname="mehrab"
#uc lname
#pr "uppercase value: $lname"
#
#uname="MEHRAB"
#lc uname
#pr "lowercase value: $uname"
#### fix 10 length
#FullName="Mohammad Mehrabul Ferdous"
#a=${FullName#M} #remove first M from full name
#pr "remove first M from full name: $a"
#a=${FullName#?????} #remove 1st 5 char from FullName
#pr "remove 1st 5 char from FullName: $a"
#lastname=${FullName#* } # remove chars before 1st space
#pr "last name is: $lastname"
#lastname=${FullName##* } # remove all chars before last space
#pr "last name is: $lastname"
#pr "length of FullName: ${#FullName}" # length of a var
#
#a=${FullName%s} #remove last g from FullName
#pr "remove last g from FullName: $a"
#
#a=${FullName%?????} #remove last 5 char from FullName
#pr "remove last 5 char from FullName: $a"
#firstname=${FullName% *} # remove all the chars after last space
#pr "first name: $firstname"
#firstname=${FullName%% *} # remove all the chars after 1st space
#pr "first name: $firstname"
#l10 FullName
#pr "full name is : $FullName :" # only take 10 char
#
#any="    any"
#l10 any
#pr "any is : $any :" # fill rest also ignore leading spaces
#any='any'
#r10 any
#pr "any is : $any :"
#pr "length of any: ${#any}" # length of a var

#### assign a default value
#
#default_age=18
#print "enter age: default is 18:"
#read entered_age
#print "entered_age is : ${entered_age}"
#
#age=${entered_age:-$default_age}
#print "age is: ${age}"
#
#age=${3:-33}
#print "age is: ${age}"

sleep 3 &
print "after sleep 3"
sleep 4 &
print "after sleep 4"
sleep 5 &
print "after sleep 5"
print "end"
jobs

# if [[ -e "$PASSWORD_FILE" ]]; then #Check to see if the file exists and if so then continue
#
#     for username in $(cat $PASSWORD_FILE | cut -f1 -d:)
#     do
#
#         print $username
#
#     done
#else
#
#         print "$PASSWORD_FILE was not found"
#         exit
#fi