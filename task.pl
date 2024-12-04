 - % Zadani c. 42:
% Napiste program resici ukol dany predikatem u42(VIN), kde promenna VIN  
% obsahuje prirozene cislo. Predikat prevede toto cislo na oktalove cislo
% (cislo v osmickove soustave).  

% Testovaci predikaty:
u42_1:- u42(113).						% 161
u42_2:- u42(1024).                                              % 2000
u42_3:- u42(1).                                                 % 1
u42_r:- write('Zadej VIN: '),read(VIN),u42(VIN).

% Reseni:
u42(0):-!.
u42(A):- RC is A//8, 
   	u42(RC), 
    W is A mod 8, 
    write(W), !.