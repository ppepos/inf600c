         STRO    pin,d       
         DECI    n,d         ; 8188
         LDA     1616,i      
         LDX     4,i         
         CALL    get_pin     
         CPA     n,d         
         BRNE    k           
         LDA     n,d         
         CALL    print
         STOP       
k:       STRO err,d
         STOP                
get_pin: SUBSP   2,i         
         STA     0,s         
l:       CPX     0,i         
         BRLE    z           
         ASRA                
         ADDA    1,i         
         ADDA    0,s         
         STA     0,s         
         SUBX    1,i         
         BR      l           
z:       LDA     0,s         
;         DECO    0,s
         RET2                
;
print:   SUBSP   2,i         
         STRO    flag,d      
         DECO    0,s         
         CHARO   '}',i       
         CHARO '\n',i
         RET2                
n:       .BLOCK  2           
pin:     .ASCII  "PIN:\x00"  
flag:    .ASCII  "INF600C{\x00" 
err:     .ASCII  "Erreur!\n\x00"
         .END                  
