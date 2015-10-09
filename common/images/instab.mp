prologues := 0;
ahangle := 15;
ahlength := 5;
outputtemplate := "%j-%c.eps";

verbatimtex
\documentclass[12pt]{article}
\usepackage[utf8]{inputenc}
\usepackage[T2A]{fontenc}
\usepackage{amsmath}
\begin{document}
etex;

beginfig(0);

a = 70;
pair om;
om = (0.12, 1) scaled .5a;

z11 = (.2a, a);
z12 = (.8a, a);
z13 = (a, .8a);
z14 = (a, .2a);

z15 = z11 + whatever * om;
z16 = z12 + whatever * om;
z17 = z13 + whatever * om;
z18 = z14 + whatever * om;

y15 = 0;
y16 = 0;
y17 = 0;
y18 = 0;

numeric tmp;
tmp = ahlength;
ahlength := 3;

dotlabel.rt(btex etex, z11);
dotlabel.rt(btex etex, z12);
dotlabel.rt(btex etex, z13);
dotlabel.rt(btex etex, z14);

drawarrow z11 -- z15 withpen pencircle scaled .25;
drawarrow z12 -- z16 withpen pencircle scaled .25;
drawarrow z13 -- z17 withpen pencircle scaled .25;
drawarrow z14 -- z18 withpen pencircle scaled .25;

ahlength := tmp;

addto currentpicture also currentpicture shifted (0, a);

z20 = (.43a, .3a);
x26 + x20 = a;
y26 = y20;
x21 = x20;
y21 = 2.2a;
y25 = y21;
x25 + x21 = a;
x22 = .3a;
y22 = y21;
y24 = y22;
x24 + x22 = a;
x23 = .5a;
y23 = 2.7a;

draw z20 -- z21 -- z22 -- z23 -- z24 -- z25 -- z26 -- z20;

addto currentpicture also currentpicture shifted (a, 0);

z0 = (0, 0);

draw (-.5a,0) -- (2.5a,0);
draw (-.5a,a) -- (2.5a,a);
draw (-.5a,2a) -- (2.5a,2a);

draw (0,-.5a) -- (0,2.5a);
draw (a,-.5a) -- (a,2.5a);
draw (2a,-.5a) -- (2a,2.5a);

z10 = (2.6a, 1.9a);

label.lft(btex $j - 1$ etex, (-.5a, 0));
label.lft(btex $j    $ etex, (-.5a, a));
label.lft(btex $j + 1$ etex, (-.5a, 2a));

ahlength := 10;
drawarrow (z0 -- om) shifted z10 withpen pencircle scaled 2;
label.rt(btex $ \boldsymbol \omega $ etex, .5om + z10);

draw (0, 0) -- z11 dashed evenly;
label.ulft(btex $\theta_\text{кр}$ etex, (0, 0));

R = .3a;

draw (0, R) --- ((0, R) rotated (angle(z11) - 90));

endfig;

end
