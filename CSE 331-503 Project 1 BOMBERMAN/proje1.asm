.data
Row:               .asciiz "Enter the number of rows: "
Col:               .asciiz "Enter the number of col: " 
Star:              .asciiz "*"  # Yýldýz karakterini tutmak için
newLine:           .asciiz "\n"
str1:              .asciiz  "First step"
str2:              .asciiz  "Second Step"
str3:              .asciiz  "Third step"
str4:              .asciiz "input entered by the user"


                   .text
Main:              #print row 
                   li $v0,4
                   la $a0,Row
                   syscall 
                   
                   #read row 
                   li $v0,5
                   syscall 
                   move $s0,$v0 # put the row value in the s0 regester
                   
                   #print col 
                   li $v0,4
                   la $a0,Col
                   syscall 
                   
                   #read col
                   li $v0,5
                   syscall 
                   move $s1,$v0 # put the col value in the s0 regester
                   
                   #allocate memory for matrix
                   mul $t9,$s1,$s0
                   li $v0,9
                   move $a0,$t9
                   syscall 
                   move $s2,$v0 #s2 char matrix
                   
                   #allocate memory for sayac
                   mul $t9,$t9,4
                   li $v0,9
                   move $a0,$t9
                   syscall
                   move $s3,$v0 #s3 int count matrix
                   
                   jal fill_matrix #Receiving input from the user
                   
                   li $v0,4
                   la $a0,str4
                   syscall
                   li $v0, 4 #space
	           la $a0, newLine
	           syscall
                 
                   jal print_matrix
                  
                  
                   #step1
                   li $v0,4
                   la $a0,str1
                   syscall 
                   move $t0,$s2 #I copy it to the t0 register so as not to disturb the main matrix
                   move $t1,$s3 # copy the counter to the t1 register     
                   li $t2,0 # i in for loop 
outer_l:
            bge $t2,$s0,end_in #End for loop if t2 is greater than row
            li $t3,0 #j in for loop 
      
in_l:
            bge $t3,$s1,row_in #End for loop if t3 is greater than col
            lb $t4,0($t0) #to visit char arraya in order
            li $t5,'B' #T5=B
            beq $t4,$t5,sayaciazalt #if my character is a bomb, go to the countdown function
            j loopadev
    	
    		
sayaciazalt:
         lw $s6,0($t1) #I threw the value of the counter to s6
         sub $s6,$s6,1 #I decreased the value of my counter by one
         sw $s6,0($t1)
         j loopadev
          	
loopadev:
          addi $t3,$t3,1 #j++
          addi $t0,$t0,1 #to look for the next char array element
          addi $t1,$t1,4 #to look for the next int array element
          j in_l
row_in:
          li $v0, 4 #space
	  la $a0, newLine
	  syscall
          addi $t2,$t2,1 #i++
          j outer_l                
end_in:                   
          jal print_matrix
           
           
           
           
           
           
           
           
              #SECOND Step
              li $v0,4
              la $a0,str2
              syscall 
    
              move $t0,$s2 #I copy it to the t0 register so as not to disturb the main matrix
              move $t1,$s3 # copy the counter to the t1 register     
              li $t2,0 # i in for loop   
outer_second:
              bge $t2,$s0,end_second #Finish if t2 is equal to rowa larger
              li $t3,0 #j++
            
in_second:
          bge $t3,$s1,row_second  #If t3 is greater than or equal to row so increase j
          lb $t4,0($t0) #array scanning
          li $t5,'B' #T5=B
          li $t7,'*' #t7=*
          li $s7,4 #s7=4
          bne $t4,$t7,sayaciazaltsecond #if the character is not *
          sb $t5,0($t0) #Turn non-bomb characters into bombs
          sw $s7,0($t1) 
          j sayaciazaltsecond
 	
sayaciazaltsecond:
          lw $s6,0($t1) #put the value of the counter to s6
          sub $s6,$s6,1 #decrease matrix counter value
          sw $s6,0($t1) #synchronize new matrix counter value
          j loopadevsecond
          	
loopadevsecond:
          addi $t3,$t3,1 #j++
          addi $t0,$t0,1 #to look for the next char array element
          addi $t1,$t1,4 #to look for the next int array element
          j in_second
   
row_second:
          li $v0, 4
	  la $a0, newLine
	  syscall
          addi $t2,$t2,1 #i++
          j outer_second                
end_second:      
        jal print_matrix #2. step print
   
       
           
               
                       
                       
#THÝRD STEP
              li $v0,4
              la $a0,str3
              syscall 
              move $t0,$s2 #I copy it to the t0 register so as not to disturb the main matrix
              move $t1,$s3 # copy the counter to the t1 register   
              li $t2,0 #loop i   
outer_third:
              bge $t2,$s0,end_third 
              li $t3,0
in_third:
              bge $t3,$s1,row_third #If t3 is greater than or equal to row so increase j
              lb $t4,0($t0) #scan in order
              lw $s6,0($t1) #put the value of the counter to s6
              sub $s6,$s6,1 #counter increase
              sw $s6,0($t1)
              j loopadevthird
          	
loopadevthird:
          addi $t3,$t3,1 #j++
          addi $t0,$t0,1 #to look for the next char array element
          addi $t1,$t1,4 #to look for the next int array element
          j in_third
   
row_third:
        li $v0, 4
	la $a0, newLine
	syscall
        addi $t2,$t2,1 #i++
        j outer_third 
                       
end_third: 

       jal explode_bomba #bomb detonation functioN
       jal print_matrix 
           
       li $v0, 10 #exit function
       syscall

            
       
                   
#receive input from the user                                                                 
                   
fill_matrix:  # fill_matrix($s2 = matrix, $s3 = matrixsayac, $s0 = row, $s1 = col) 
                   move $t0,$s2 #matrix doesn't break
                   move $t1,$s3 ##matrix counter doesn't break      
                   li $t2,0 #loop i   
outer_loop:
            bge $t2,$s0,end_input #Finish if t2 rowa buyuk esitese
            li $t3,0
      
in_loop:
            bge $t3,$s1,row_increase #If t3 is greater than or equal to col so increase j
            li $v0,12  #character doing character reading
            syscall
            move $t4,$v0  #I assign the character I read to t4
            sb $t4,0($t0) #I fill my matrix with the inputs I receive
            
            li $v0, 12 #/n import
            syscall
            
            li $t5,'B'  #t5=B 
            beq $t4,$t5,ucyap #make the character's counter 3
            bne $t4,$t5,besyap #make the character's counter 5
            
ucyap:
            li $t6,3
            sw $t6,0($t1)
            j loopadevam 
            
besyap:
            li $t7,5  
            sw $t7,0($t1)        
    		
loopadevam:
          addi $t3,$t3,1 #j++
          addi $t0,$t0,1 #to look for the next char array element
          addi $t1,$t1,4 #to look for the next int array element
          j in_loop
   
row_increase:
        li $v0, 4
	la $a0, newLine
	syscall
        addi $t2,$t2,1 #i++
        j outer_loop 
                       
end_input:
   	jr $ra
   	

 	
#print function
print_matrix:
            move $t0,$s2 
            li $t2,0 #loop i   
outer_loop_:
            bge $t2,$s0,end_input_ #Finish if t2 is equal to rowa big.
            li $t3,0#j=0
      
in_loop_:
            bge $t3,$s1,row_increase_#If t3 nuyuk is equal to col so increase j
            lb $t4,0($t0)#assign the value of t0 to t4
            li $v0,11 #doing character-by-character writing
            la $a0,($t4) 
          # move $s0,$t4
            syscall        
             
loopadevam_:
          addi $t3,$t3,1
          add $t0,$t0,1
          j in_loop_
            
row_increase_:
	li $v0, 4
	la $a0, newLine
	syscall
        addi $t2,$t2,1 #i'yi arttýr
        j outer_loop_
                         
end_input_:
   	jr $ra
   	
 
#MY BOMB DETONATION FUNCTION
explode_bomba:

          move $t0,$s2 # same process with la so that the matrix is not distorted
          move $t1,$s3 # same process with la so that the matrix counter is not distorted
          li $t2,0 #loop i   
outer_loopp:
          bge $t2,$s0,end_inputt #Finish if t2 is greater than rowa
          li $t3,0 #j=0
      
in_loopp:
          bge $t3,$s1,row_increasee  #If t3 nuyuk is equal to row so increase j
          lb $t4,0($t0)#sequential scanning
          li $t5,'B'
          beq $t4,$t5,sayac_kontrol
          j loopadevamm

sayac_kontrol:
          lw $t6,0($t1)
          beq $t6,0,patlat
          j loopadevamm
       
patlat:    
            li $t7,'*'
            sb $t7,0($t0)
            li $a1,4 #a1=4 
            sw $a1,0($t1) #MATRÝX Scounter = 4
            
            ble $t3,0,case1 #go from 0 to case1 if j is less than or equal to
            move $a2,$t1 #synchronizing int matrix address to a2
            sub $a2,$a2,4 #I'm looking at the previous address with a2 to see if there's a bomb.
            lw $a3,0($a2) #I assign a3 the value of a2
            beq $a3,0,case1 #if this value is 0 go to case1 if not
            sw $a1,0($a2) #make the bomb explodes int matrix value 4
            move $s4,$t0 
            sub $s4,$s4,1 #find its value because we exploded the one on the left.
            sb $t7,0($s4) #"*"
           
              
                  
 case1:    
            sub $s5,$s1,1#To look to the left of the matrix, we look at 1 minus the colum
            bge $t3,$s5,case2
            move $a2,$t1 #int matrixi a2 ye adresini eþitliyorum
            add $a2,$a2,4 #to look at the next address, I look at 4 more than integer
            lw $a3,0($a2) #I assign the value of a2 to a3
            beq $a3,0,case2 #looking to see if there's a bomb to his right.
            sw $a1,0($a2) # a2=4
            move $s4,$t0 #because the bomb exploded. It takes the value of * and 4.
            add $s4,$s4,1
            sb $t7,0($s4)
        
            
            
case2:      ble $t2,0,case3
            move $a2,$t1 # synchronizing int matrix address to a2
            mul $t8,$s0,4 #going back up to 4 rows
            sub $a2,$a2,$t8 #a2 I'm looking at the address in the above location
            lw $a3,0($a2) #assign the value in a2 to a3
            beq $a3,0,case3 #looking to see if there's a bomb to his up
            sw $a1,0($a2)
            move $s4,$t0 #because the bomb exploded. It takes the value of * and 4.
            sub $s4,$s4,$s1
            sb $t7,0($s4) #* YAPTIM
         
       
case3:      sub $s5,$s0,1 #is there a bomb under the bomb
            bge $t2,$s5,loopadevamm
            move $a2,$t1 # equating the address of the int matrix to a2
            mul  $t8,$s0,4 #Go back up to 4 rows
            add $a2,$a2,$t8 #a2 is the step to go to look for the master bomb.
            lw $a3,0($a2) #I assign the value of a2 to a3
            beq $a3,0,loopadevamm
            sw $a1,0($a2)
            move $s4,$t0
            add $s4,$s4,$s1
            sb $t7,0($s4)
            
loopadevamm:
          addi $t3,$t3,1
          add $t0,$t0,1
          add $t1,$t1,4
          j in_loopp
          
row_increasee:
	li $v0, 4
	la $a0, newLine
	syscall
        addi $t2,$t2,1 #i++
        j outer_loopp

end_inputt:
   	jr $ra    
            
    
            

             
   	

