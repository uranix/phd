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

a = 60;
pair om;
om = (1, .5) scaled .5a;

z0 = (0, 0);
z1 = (7a, 7a);

ahlength := 10;
drawarrow (z0 -- om) shifted z1 withpen pencircle scaled 2;
label.bot(btex $ \boldsymbol \omega $ etex, .5om + z1);

z2 = (4a, 4a);
z3 = (6a, 7a);

draw z2 -- z3 dashed evenly;

z4 = .2[z2,z3];
z5 = .8[z2,z3];

z6 = .5[z4,z5];
z7 = z6 + .5 * ((z5 - z4) rotated -90);
z8 = z6 - .4 * ((z5 - z4) rotated -90);

path c[];

c1 = fullcircle scaled 2abs(z7 - z4) shifted z7;
c2 = fullcircle scaled 2abs(z8 - z4) shifted z8;

z9 = point 0 of c1;
z10 = point 4.7 of c2;

filldraw z4 -- z10 -- z5 -- cycle withcolor .5white;
filldraw z4 -- z9 -- z5 -- cycle withcolor .5white;

draw c1;
draw c2;

dotlabel.rt(btex etex, z4);
dotlabel.rt(btex etex, z5);
dotlabel.rt(btex $O$ etex, z7);
dotlabel.rt(btex $O'$ etex, z8);

dotlabel.rt(btex $V$ etex, z9);
dotlabel.lft(btex $V'$ etex, z10);

draw z4 -- z10 -- z5 -- z4 withpen pencircle scaled 1;
draw z4 -- z9 -- z5 withpen pencircle scaled 1;

label.top(btex $T$ etex, (z4 + z5 + z9) / 3);
label.lft(btex $T'$ etex, (z4 + z5 + z10) / 3);

ahlength := 5;
ahangle := 30;

z11 = .3[z6,z7];

drawarrow z6 -- z11 withpen pencircle scaled 1;
label.urt(btex $\mathbf n$ etex, z11);

endfig;

end
