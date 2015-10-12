set term postscript eps monochrome enhanced size 4.5in,3in

set key spacing 1.5

set logscale
set output "UL2err.eps"
set xtics auto
set ytics auto
set yrange [0.25:1.1]
set ytics (.3,.4,.5,.6,.7,.8,.9,1)

set xrange [0.8:80]
#set xtics (1,6,15,28,45,66)
set xtics (1,2,5,10,20,50)

set xlabel "K"

set key right
plot "sph-ang.dat" using 1:2 title "||U_{sph} - U_a||_{DL_2}", \
	"rbf-ang.dat" using 1:2 title "||U_{rbf} - U_a||_{DL_2}", \
	0.993679 / (x ** 0.292888) title "0.993 K^{-0.29}" lt 1


