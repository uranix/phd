prologues := 3;
outputtemplate := "%j-%c.eps";

beginfig(1)

a = 100;

z1 = (0, 0);
z2 = (a, 0);
z3 = (.5a, .86a);

z4 = .3[.6[z1,z2],z3];

transform t;
z1 transformed t = z1;
z2 transformed t = z3;
z3 transformed t = 1.5[z3,z4];

path p;
p = z1 -- z2 -- z3 -- cycle;

dotlabel(btex etex, z4);

for x = .2 step 0.15 until 2:
	draw ((fullcircle scaled (x * a)) transformed t) shifted z4 withpen pencircle scaled 0.25;
endfor

clip currentpicture to p;

draw p;

endfig;

end
