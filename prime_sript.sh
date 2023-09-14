#!/bin/bash

# Setting initial value for the range's start point
i=3 

# Setting the end point of the range
j=300 

echo "Prime numbers between $i and $j:"

# Start the loop from the initial value 'i' and iterate until 'j'
while [ $i -lt $j ]; do
    # By default, assume the number is prime (flag=0)
    flag=0
    
    # Start checking for factors from 2
    tem=2

    # Loop to check for factors of 'i'
    while [ $tem -lt $i ]; do
        # If 'i' is divisible by 'tem', it's not a prime number
        if [ `expr $i % $tem` -eq 0 ]; then
            # Set flag to indicate 'i' is not prime
            flag=1
            
            # Exit the loop since we found a factor and it's not a prime
            break
        fi
        
        # Increment the divisor to check the next number
        tem=`expr $tem + 1`
    done

    # If flag is still 0, then 'i' is a prime number
    if [ $flag -eq 0 ]; then
        echo $i
    fi

    # Move on to the next number
    i=`expr $i + 1`
done

