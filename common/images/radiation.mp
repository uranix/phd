prologues := 3;
ahangle := 15;
ahlength := 5;
outputtemplate := "%j-%c.eps";

verbatimtex
\documentclass[12pt]{article}
\usepackage{amsmath}
\begin{document}
etex;

beginfig(0);
s = 50;
a = 0.4s;
b = 0.4a;
alpha = 25;

transform t;

z0 = (0,0);
z1 = (a,0);
z2 = (0,b);
z3 = (0,s);

(0, 0) transformed t = z0;
(.5,0) transformed t = z1;
(0,.5) transformed t = z2;

draw halfcircle transformed t rotated 180;
draw halfcircle transformed t dashed dashpattern(on 4pt off 2pt);
draw fullcircle transformed t shifted (0,s);
draw (z0 .. z3) shifted z1;
draw (z0 .. z3) shifted -z1;
drawarrow (-.5)[z0,z3] .. 1.5[z0,z3];

drawdot z0 withpen pencircle scaled 1pt;
drawdot z3 withpen pencircle scaled 1pt;

label.rt(btex $s$ etex rotated alpha, 1.5[z0,z3]);

drawdblarrow (z0 .. z3) shifted -(z1+(5,0));
label.lft(btex $cdt$ etex rotated 90, 0.5[z0,z3] - (z1+(5,0)));

label.rt(btex $dS$ etex rotated alpha, z0);

drawarrow ((-0.3)[z0,z3]+1.5z1) .. (z0+1.5z1) withpen pencircle scaled 1;
label.rt(btex $\bf \Omega$ etex rotated alpha, (-0.15)[z0,z3] + 1.5z1);

currentpicture := currentpicture rotated -alpha;

endfig;

beginfig(1);

a := 50;

z10 = (0,-0.3a);
z11 = (a,.4a);
z12 = (.5a,a);
z13 = (-.4a,a);
z14 = (-a,.5a);
z15 = (-.9a,.2a);

path p;
p = z10 .. z11 .. z12 .. z13 .. z14 .. z15 .. cycle;

draw p;

label(btex $G$ etex, (.1a, .4a));

v = 2.5;
rot = 50;

pair q;
q = direction v of p rotated -90;
z16 = point v of p;
drawarrow z16 .. z16 + q;
drawarrow z16 .. z16 + (q rotated rot);
drawarrow z16 .. z16 + (q rotated (180 - rot));

label.rt(btex $\bf n$ etex, z16 + q);
label.lft(btex $\bf \Omega'$ etex, z16 + (q rotated rot));
label.lft(btex $\bf \Omega$ etex, z16 + (q rotated (180 - rot)));

label.urt(btex $\partial G$ etex, point 1.9 of p);

endfig;

beginfig(2);

a := 100;

z20 = (0,0);
z21 = (a,.2a);
z22 = (a,-.2a);
z23 = (0,-.6a);
z24 = (-.9a,0.1a);
z25 = (-.5a,.8a);
z26 = (.5a,a);
z27 = (1.1a,1.1a);
z28 = (.1a,1.2a);
z29 = (-a,1.6a);
z30 = (2a,0.3a);

draw z20 -- z21 -- z26 -- z25 -- z20 -- z26;
draw z25 -- z21 dashed evenly;

draw z20 -- .5[z20,z24] dashed evenly;
draw z20 -- .5[z20,z23] dashed evenly;
draw z20 -- .5[z20,z22] dashed evenly;

draw z21 -- .5[z21,z30] dashed evenly;
draw z21 -- .5[z21,z27] dashed evenly;
draw z21 -- .5[z21,z22] dashed evenly;

draw z26 -- .5[z26,z28] dashed evenly;
draw z26 -- .5[z26,z27] dashed evenly;

draw z25 -- .5[z25,z28] dashed evenly;
draw z25 -- .5[z25,z24] dashed evenly;
draw z25 -- .5[z25,z29] dashed evenly;

z31 = .2[.5[z20,z21],z25]; 

draw z26 -- z31 withpen pencircle scaled 1;

label.top (btex $I_i^p$ etex, z26);
label.lft (btex $I_i^q$ etex, z25);
label.llft (btex $I_i^r$ etex, z20);
label.lrt (btex $I_i^s$ etex, z21);
dotlabel.lrt (btex $I_i^*$ etex, z31);

z32 = 0.3(z26 - z31);
z33 = (1.2a,.8a);

drawarrow ((0,0) -- z32) shifted z33 withpen pencircle scaled 1;
label.rt (btex $\boldsymbol \omega_i$ etex, .5z32 + z33);

endfig;

beginfig(3);

a := 100;

z35 = (.3a,.4a);

z40 = (0,0);
z41 = (a,0);
z42 = (a,a);
z43 = (0,a);

draw z40 -- z41 -- z42 -- z43 -- cycle;
draw (z41 -- z42 -- z43) shifted z35;
draw (z40 -- z35) shifted z41;
draw (z40 -- z35) shifted z42;
draw (z40 -- z35) shifted z43;
draw (z40 -- z35) dashed evenly;
draw (z40 -- z41) shifted z35 dashed evenly;
draw (z40 -- z43) shifted z35 dashed evenly;

z45 = .5[z40,z42] + .5z35;
z46 = z45 + (a,0);
z47 = z45 + (.5a,.9a);
z48 = z45 + (-a,.3a);
z49 = z45 + (-.3a,-a);

dotlabel.lrt(btex $\bf\rm r$ etex, z45);
label.bot(btex $\omega_1$ etex, z46);
label.rt(btex $\omega_2$ etex, z47);
label.bot(btex $\omega_3$ etex, z48);
label.bot(btex $\omega_4$ etex, z49);

draw z45 -- .5[z45,z46] dashed dashpattern(on 6pt off 2pt on 0pt off 2pt);
drawarrow .5[z45,z47] -- z47 dashed dashpattern(on 6pt off 2pt on 0pt off 2pt);
drawarrow .5[z45,z48] -- z48 dashed dashpattern(on 6pt off 2pt on 0pt off 2pt);
drawarrow .5[z45,z49] -- z49 dashed dashpattern(on 6pt off 2pt on 0pt off 2pt);

transform t;
(0,0) transformed t = (0,0);
(1,0) transformed t = (.3,.4);
(0,1) transformed t = (0,1);

filldraw fullcircle scaled 20pt transformed t shifted .5[z45,z46] 
		withcolor .5[white,black];
drawarrow .5[z45,z46] -- z46 dashed dashpattern(on 6pt off 2pt on 0pt off 2pt);

transform t;
(0,0) transformed t = (0,0);
(1,0) transformed t = (1,0);
(0,1) transformed t = (0,.5);

filldraw fullcircle scaled 20pt transformed t shifted .5[z45,z47] 
		withcolor .5[white,black];
draw .5[z45,z47] -- z45 dashed dashpattern(on 6pt off 2pt on 0pt off 2pt);

transform t;
(0,0) transformed t = (0,0);
(1,0) transformed t = (.533,.125);
(0,1) transformed t = (.125,.966);

filldraw fullcircle scaled 20pt transformed t shifted .5[z45,z48] 
		withcolor .5[white,black];
draw .5[z45,z48] -- z45 dashed dashpattern(on 6pt off 2pt on 0pt off 2pt);

transform t;
(0,0) transformed t = (0,0);
(1,0) transformed t = (.98,.09);
(0,1) transformed t = (.09,.51);

filldraw fullcircle scaled 20pt transformed t shifted .5[z45,z49] 
		withcolor .5[white,black];
draw .5[z45,z49] -- z45 dashed dashpattern(on 6pt off 2pt on 0pt off 2pt);

endfig;

beginfig(4);

a := 40;

z20 = (7a,4a);
z21 = (3a,7a);
z22 = (6a,1a);
z23 = (a,2a);

z24 = 0.3333[0.5[z21,z22],z20];

z25 = .5[z24,z21];
z26 = .5[z24,z20];
z27 = .5[z24,z22];

draw z20 -- z21 -- z23 -- z22 -- z20;
draw z22 -- z21;
draw z20 -- z23 dashed evenly;

%draw z26 -- z31 withpen pencircle scaled 1;

dotlabel.ulft(btex $I_j^{(1)}$ etex, z24);
dotlabel.rt(btex $I_j^{(2)}$ etex, z25);
dotlabel.top(btex $I_j^{(3)}$ etex, z26);
dotlabel.rt(btex $I_j^{(4)}$ etex, z27);

z32 = (.6a, .28a);
z33 = (7a, 6a);

drawarrow ((0,0) -- -5z32) shifted z24;
drawarrow ((0,0) -- -2z32) shifted z25;
drawarrow ((0,0) -- -6z32) shifted z26;
drawarrow ((0,0) -- -1z32) shifted z27;

drawarrow ((0,0) -- z32) shifted z33 withpen pencircle scaled 1;
label.lrt (btex $\boldsymbol \omega$ etex, .5z32 + z33);

endfig;

end
