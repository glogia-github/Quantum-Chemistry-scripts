set sel [atomselect top "(within 0.5 of index $pqrlines) and (type C)"] 
set output [$sel get {index x y z charge type}]
set file [open "vmd_max.txt" w]
#puts $file "index x y z charge type"
puts $file  $output
close $file
#draw delete $sphere