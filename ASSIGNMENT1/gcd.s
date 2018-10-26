     AREA     appcode, CODE, READONLY
     export __main	 
	 ENTRY 
__main  function
	          MOV r0 , #11	  ; a value
			  MOV r1 , #6     ; b value
LOOP			  CMP r0 , r1
              IT EQ 
              BEQ STOP	
              ITE HI			  
			  SUBHI r0 , r0 , r1 			  
			  SUBLS r1 , r1 , r0
              B LOOP			  
STOP		      B STOP  ;
        endfunc
      end
