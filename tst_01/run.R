
docker <- length(system('grep docker /proc/self/cgroup', intern = TRUE))

path <- ifelse ( docker ==  0, '/data/dkrts' , '/data')
in_path <- file.path(path, 'in/infile.txt')
out_path <- file.path(path, 'out/outfile.txt')


d <- read.table(in_path, head = T)
d$x <- d$x + 1
write.table(d , out_path, quote = F, row.names = F)
#write.table(docker , '/data/out/docker.txt', quote = F, row.names = F)
