      AREA     appcode, CODE, READONLY
     export __main	 
	 ENTRY 
__main  function
	          MOV r0 , #0  ;
	          MOV r1 , #1    ; 
              MOV r7 , #1	  ;  
              MOV r2 , r7	 ; register stores values 		  
              CMP r2 , #1
              IT LS 
              BLS STOP				  
			  SUB r3 , r2 ,#1      ; 
LOOP              ADD r4 , r1 , r0  ;
                  MOV r0 ,r1
                  MOV r1 ,r4
                  MOV r2 , r4
                  SUB r3 ,#1 
				  CMP r3 ,#0
                  BNE LOOP					  
STOP		      B STOP  ; 
        endfunc
      end
