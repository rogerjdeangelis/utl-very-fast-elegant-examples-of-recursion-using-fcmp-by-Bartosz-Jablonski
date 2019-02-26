%let pgm=utl-very-fast-elegant-examples-of-recursion-using-fcmp-by-Bartosz-Jablonski;                                
                                                                                                                     
Very fast elegant examples of recursion using fcmp by Bartosz Jablonski                                              
                                                                                                                     
  1. Generate Factorial                                                                                              
  2. Fibonacci                                                                                                       
                                                                                                                     
   by Bartosz Jablonski                                                                                              
   yabwon@gmail.com                                                                                                  
                                                                                                                     
                                                                                                                     
github                                                                                                               
http://tinyurl.com/y558dv9q                                                                                          
https://github.com/rogerjdeangelis/utl-very-fast-elegant-examples-of-recursion-using-fcmp-by-Bartosz-Jablonski       
                                                                                                                     
SAS-L                                                                                                                
https://listserv.uga.edu/cgi-bin/wa?A2=SAS-L;1600e37c.1902d                                                          
                                                                                                                     
                                                                                                                     
INPUT                                                                                                                
=====                                                                                                                
                                                                                                                     
  Recusion Formulae                                                                                                  
                                                                                                                     
   1.  Factorials:  x = n * FactorialR(n-1);                                                                         
                                                                                                                     
   2.  Fibonacci:   x = fibR(n-2) + fibR(n-1)                                                                        
                                                                                                                     
 EXAMPLE OUTPUT                                                                                                      
 ---------------                                                                                                     
                                                                                                                     
 Factorials                                                                                                          
 ----------                                                                                                          
                                                                                                                     
 N=2     X = 2                                                                                                       
 N=3     X = 6                                                                                                       
 N=4     X = 24                                                                                                      
 N=5     X = 120                                                                                                     
 N=6     X = 720                                                                                                     
 N=7     X = 5040                                                                                                    
 N=8     X = 40320                                                                                                   
 N=9     X = 362880                                                                                                  
 N=10    X = 3628800                                                                                                 
 N=11    X = 39916800                                                                                                
 N=12    X = 479001600                                                                                               
 N=13    X = 6227020800                                                                                              
 N=14    X = 87178291200                                                                                             
 N=15    X = 1307674368000                                                                                           
 N=16    X = 20922789888000                                                                                          
 N=17    X = 355687428096000                                                                                         
 N=18    X = 6402373705728000                                                                                        
 N=19    X = 121645100408832000                                                                                      
 N=20    X = 2432902008176640000                                                                                     
                                                                                                                     
                                                                                                                     
Fibonacci                                                                                                            
---------                                                                                                            
                                                                                                                     
 N=2     X = 1                                                                                                       
 N=3     X = 2                                                                                                       
 N=4     X = 3                                                                                                       
 N=5     X = 5                                                                                                       
 N=6     X = 8                                                                                                       
 N=7     X = 13                                                                                                      
 N=8     X = 21                                                                                                      
 N=9     X = 34                                                                                                      
 N=10    X = 55                                                                                                      
 N=11    X = 89                                                                                                      
 N=12    X = 144                                                                                                     
 N=13    X = 233                                                                                                     
 N=14    X = 377                                                                                                     
 N=15    X = 610                                                                                                     
 N=16    X = 987                                                                                                     
 N=17    X = 1597                                                                                                    
 N=18    X = 2584                                                                                                    
 N=19    X = 4181                                                                                                    
 N=20    X = 6765                                                                                                    
                                                                                                                     
                                                                                                                     
SOLUTIONS                                                                                                            
=========                                                                                                            
                                                                                                                     
---------------------------                                                                                          
1. Generate Factorial                                                                                                
---------------------------                                                                                          
                                                                                                                     
options cmplib = work.f;                                                                                             
                                                                                                                     
proc fcmp outlib=work.f.n;                                                                                           
                                                                                                                     
function FactorialR(n);                                                                                              
  if n = 1 or n = 0 then return(1);                                                                                  
  x = n * FactorialR(n-1);                                                                                           
  return (x);                                                                                                        
endsub;                                                                                                              
run;                                                                                                                 
quit;                                                                                                                
                                                                                                                     
data _null_; /* test */                                                                                              
  *-- Recursive --* ;                                                                                                
  do n=2 to 20;                                                                                                      
    x = FactorialR(n);                                                                                               
    put n= x= best32.;                                                                                               
  end;                                                                                                               
run;quit;                                                                                                            
                                                                                                                     
                                                                                                                     
------------                                                                                                         
2. Fibonacci                                                                                                         
------------                                                                                                         
                                                                                                                     
proc fcmp outlib=work.f.n;                                                                                           
function fibR(n);                                                                                                    
                                                                                                                     
  if n = 1 then return(1);                                                                                           
  if n = 0 then return(0);                                                                                           
                                                                                                                     
    x = fibR(n-2) + fibR(n-1);                                                                                       
                                                                                                                     
  return (x);                                                                                                        
endsub;                                                                                                              
run;                                                                                                                 
quit;                                                                                                                
                                                                                                                     
data _null_; /* test */                                                                                              
  *-- Recursive --* ;                                                                                                
  do n=2 to 20;                                                                                                      
    x = FibR(n);                                                                                                     
    put n= x= best32.;                                                                                               
  end;                                                                                                               
run;                                                                                                                 
                                                                                                                     
