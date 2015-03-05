


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