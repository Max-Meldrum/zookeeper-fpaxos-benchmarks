set title "ZooKeeper ensemble of 6 nodes"
set terminal pdf enhanced
set output '6node.pdf'

set ylabel 'Create operations'
set yrange [0:13000];

set style data histogram
set style histogram cluster gap 4
set style fill solid border -1
set boxwidth 0.9
set format x '%+-.6f' # to make the labels longer
set xtics rotate by 25 right


set auto x
plot '6nodedata' using 2:xtic(1) title col, \
        '' using 3:xtic(1) title col, \
