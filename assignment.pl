


comb_find(_Varcount,Count) :- (

							Count is (2**_Varcount)-1
							
						).
						
						
		
dec2bin(0,[0]).
dec2bin(1,[1]).

dec2bin(N,L):- 
    N > 1,
    X is N mod 2,
    Y is N // 2,  
    dec2bin(Y,L1), 
    append(L1, [X], L),!.
	
	
zero_helper(N,R):- (
				between(1, N, X),
				R is 0;
				false
		 ).

		 
dec2binz(N,_Noofvars,R) :- (
				
				dec2bin(N,T),!,
				length(T,Count),
				Zero_gen is _Noofvars-Count,
				findall(L,zero_helper(Zero_gen,L),Zeros),
				append(Zeros,T,R)		
				
			).
			
			
			
			

			
truth_and(0,0,0).
truth_and(0,1,0). 
truth_and(1,0,0).
truth_and(1,1,1). 

truth_or(0,0,0). 
truth_or(0,1,1). 
truth_or(1,0,1).
truth_or(1,1,1).


truth_xor(0,0,0).
truth_xor(0,1,1).
truth_xor(1,0,1).
truth_xor(1,1,0).


truth_nand(0,0,1).
truth_nand(0,1,1).
truth_nand(1,0,1).
truth_nand(1,1,0).

     
truth_not(0,1).   
truth_not(1,0).