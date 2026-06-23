## 
## @param s {storage}
## @param l {nbt_path}
## @param i {integer}
## @borrowedstack
##
$execute store success score temp.acc dputils run data get storage $(s) $(l)[$(i)]
