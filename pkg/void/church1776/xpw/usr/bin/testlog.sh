execve("./xpw", ["./xpw", "-h"], 0x7fff51abb5d8 /* 41 vars */) = 0
brk(NULL)                               = 0x5dc7165fc000
access("/etc/ld.so.preload", R_OK)      = -1 ENOENT (No such file or directory)
openat(AT_FDCWD, "/etc/ld.so.cache", O_RDONLY|O_CLOEXEC) = 3
fstat(3, {st_mode=S_IFREG|0644, st_size=24575, ...}) = 0
mmap(NULL, 24575, PROT_READ, MAP_PRIVATE, 3, 0) = 0x7bdf0dc92000
close(3)                                = 0
openat(AT_FDCWD, "/usr/lib/libc.so.6", O_RDONLY|O_CLOEXEC) = 3
read(3, "\177ELF\2\1\1\3\0\0\0\0\0\0\0\0\3\0>\0\1\0\0\0\300\255\2\0\0\0\0\0"..., 832) = 832
pread64(3, "\6\0\0\0\4\0\0\0@\0\0\0\0\0\0\0@\0\0\0\0\0\0\0@\0\0\0\0\0\0\0"..., 784, 64) = 784
fstat(3, {st_mode=S_IFREG|0755, st_size=12699128, ...}) = 0
mmap(NULL, 8192, PROT_READ|PROT_WRITE, MAP_PRIVATE|MAP_ANONYMOUS, -1, 0) = 0x7bdf0dc90000
pread64(3, "\6\0\0\0\4\0\0\0@\0\0\0\0\0\0\0@\0\0\0\0\0\0\0@\0\0\0\0\0\0\0"..., 784, 64) = 784
mmap(NULL, 2006680, PROT_READ, MAP_PRIVATE|MAP_DENYWRITE, 3, 0) = 0x7bdf0daa6000
mmap(0x7bdf0dace000, 1413120, PROT_READ|PROT_EXEC, MAP_PRIVATE|MAP_FIXED|MAP_DENYWRITE, 3, 0x28000) = 0x7bdf0dace000
mmap(0x7bdf0dc27000, 352256, PROT_READ, MAP_PRIVATE|MAP_FIXED|MAP_DENYWRITE, 3, 0x181000) = 0x7bdf0dc27000
mmap(0x7bdf0dc7d000, 24576, PROT_READ|PROT_WRITE, MAP_PRIVATE|MAP_FIXED|MAP_DENYWRITE, 3, 0x1d6000) = 0x7bdf0dc7d000
mmap(0x7bdf0dc83000, 52888, PROT_READ|PROT_WRITE, MAP_PRIVATE|MAP_FIXED|MAP_ANONYMOUS, -1, 0) = 0x7bdf0dc83000
close(3)                                = 0
mmap(NULL, 12288, PROT_READ|PROT_WRITE, MAP_PRIVATE|MAP_ANONYMOUS, -1, 0) = 0x7bdf0daa3000
arch_prctl(ARCH_SET_FS, 0x7bdf0daa3740) = 0
set_tid_address(0x7bdf0daa3a10)         = 33482
set_robust_list(0x7bdf0daa3a20, 24)     = 0
rseq({cpu_id_start=0, cpu_id=RSEQ_CPU_ID_UNINITIALIZED, rseq_cs=NULL, flags=0, node_id=0, mm_cid=0, slice_ctrl={request=0, granted=0, __reserved=0}, __reserved=0}, 32, 0, 0x53053053) = 0
mprotect(0x7bdf0dc7d000, 16384, PROT_READ) = 0
mprotect(0x5dc714df3000, 8192, PROT_READ) = 0
mprotect(0x7bdf0dcd3000, 8192, PROT_READ) = 0
prlimit64(0, RLIMIT_STACK, NULL, {rlim_cur=8192*1024, rlim_max=RLIM64_INFINITY}) = 0
munmap(0x7bdf0dc92000, 24575)           = 0
getpid()                                = 33482
rt_sigaction(SIGCHLD, {sa_handler=0x5dc714de8530, sa_mask=~[RTMIN RT_1], sa_flags=SA_RESTORER, sa_restorer=0x7bdf0dae6110}, NULL, 8) = 0
geteuid()                               = 1000
getrandom("\x81\x53\xf4\x96\x46\x80\x79\x02", 8, GRND_NONBLOCK) = 8
brk(NULL)                               = 0x5dc7165fc000
brk(0x5dc71661d000)                     = 0x5dc71661d000
getppid()                               = 33480
newfstatat(AT_FDCWD, "/home/brass/projects/pkgdb/pkg/void/church1776/xpw/usr/bin", {st_mode=S_IFDIR|0755, st_size=4096, ...}, 0) = 0
newfstatat(AT_FDCWD, ".", {st_mode=S_IFDIR|0755, st_size=4096, ...}, 0) = 0
openat(AT_FDCWD, "./xpw", O_RDONLY)     = 3
fcntl(3, F_DUPFD, 10)                   = 10
close(3)                                = 0
fcntl(10, F_SETFD, FD_CLOEXEC)          = 0
rt_sigaction(SIGINT, NULL, {sa_handler=SIG_DFL, sa_mask=[], sa_flags=0}, 8) = 0
rt_sigaction(SIGINT, {sa_handler=0x5dc714de8530, sa_mask=~[RTMIN RT_1], sa_flags=SA_RESTORER, sa_restorer=0x7bdf0dae6110}, NULL, 8) = 0
rt_sigaction(SIGQUIT, NULL, {sa_handler=SIG_DFL, sa_mask=[], sa_flags=0}, 8) = 0
rt_sigaction(SIGQUIT, {sa_handler=SIG_DFL, sa_mask=~[RTMIN RT_1], sa_flags=SA_RESTORER, sa_restorer=0x7bdf0dae6110}, NULL, 8) = 0
rt_sigaction(SIGTERM, NULL, {sa_handler=SIG_DFL, sa_mask=[], sa_flags=0}, 8) = 0
rt_sigaction(SIGTERM, {sa_handler=SIG_DFL, sa_mask=~[RTMIN RT_1], sa_flags=SA_RESTORER, sa_restorer=0x7bdf0dae6110}, NULL, 8) = 0
read(10, "#!/usr/bin/sh\n#\n# The X Binary P"..., 8192) = 6802
pipe2([3, 4], 0)                        = 0
rt_sigprocmask(SIG_BLOCK, ~[], [], 8)   = 0
clone(child_stack=NULL, flags=CLONE_CHILD_CLEARTID|CLONE_CHILD_SETTID|SIGCHLD, child_tidptr=0x7bdf0daa3a10) = 33483
rt_sigprocmask(SIG_SETMASK, [], NULL, 8) = 0
close(4)                                = 0
read(3, "alternatives\ncheckvers\ncreate\ndg"..., 128) = 127
read(3, "", 128)                        = 0
--- SIGCHLD {si_signo=SIGCHLD, si_code=CLD_EXITED, si_pid=33483, si_uid=1000, si_status=0, si_utime=0, si_stime=0} ---
rt_sigreturn({mask=[]})                 = 0
close(3)                                = 0
wait4(-1, [{WIFEXITED(s) && WEXITSTATUS(s) == 0}], 0, NULL) = 33483
wait4(-1, 0x7fffa1fc4a3c, WNOHANG, NULL) = -1 ECHILD (No child processes)
newfstatat(AT_FDCWD, "/home/brass/.xpwrc", {st_mode=S_IFREG|0644, st_size=520, ...}, 0) = 0
openat(AT_FDCWD, "/home/brass/.xpwrc", O_RDONLY) = 3
fcntl(0, F_DUPFD, 10)                   = 11
close(0)                                = 0
fcntl(11, F_SETFD, FD_CLOEXEC)          = 0
dup2(3, 0)                              = 0
close(3)                                = 0
read(0, "#", 1)                         = 1
read(0, " ", 1)                         = 1
read(0, "X", 1)                         = 1
read(0, "B", 1)                         = 1
read(0, "P", 1)                         = 1
read(0, "S", 1)                         = 1
read(0, " ", 1)                         = 1
read(0, "P", 1)                         = 1
read(0, "r", 1)                         = 1
read(0, "o", 1)                         = 1
read(0, "g", 1)                         = 1
read(0, "r", 1)                         = 1
read(0, "a", 1)                         = 1
read(0, "m", 1)                         = 1
read(0, " ", 1)                         = 1
read(0, "W", 1)                         = 1
read(0, "r", 1)                         = 1
read(0, "a", 1)                         = 1
read(0, "p", 1)                         = 1
read(0, "p", 1)                         = 1
read(0, "e", 1)                         = 1
read(0, "r", 1)                         = 1
read(0, "\n", 1)                        = 1
read(0, "#", 1)                         = 1
read(0, " ", 1)                         = 1
read(0, "\n", 1)                        = 1
read(0, "#", 1)                         = 1
read(0, " ", 1)                         = 1
read(0, "U", 1)                         = 1
read(0, "s", 1)                         = 1
read(0, "e", 1)                         = 1
read(0, " ", 1)                         = 1
read(0, "t", 1)                         = 1
read(0, "h", 1)                         = 1
read(0, "i", 1)                         = 1
read(0, "s", 1)                         = 1
read(0, " ", 1)                         = 1
read(0, "f", 1)                         = 1
read(0, "i", 1)                         = 1
read(0, "l", 1)                         = 1
read(0, "e", 1)                         = 1
read(0, " ", 1)                         = 1
read(0, "t", 1)                         = 1
read(0, "o", 1)                         = 1
read(0, " ", 1)                         = 1
read(0, "c", 1)                         = 1
read(0, "r", 1)                         = 1
read(0, "e", 1)                         = 1
read(0, "a", 1)                         = 1
read(0, "t", 1)                         = 1
read(0, "e", 1)                         = 1
read(0, " ", 1)                         = 1
read(0, "a", 1)                         = 1
read(0, "l", 1)                         = 1
read(0, "i", 1)                         = 1
read(0, "a", 1)                         = 1
read(0, "s", 1)                         = 1
read(0, "e", 1)                         = 1
read(0, "s", 1)                         = 1
read(0, " ", 1)                         = 1
read(0, "f", 1)                         = 1
read(0, "o", 1)                         = 1
read(0, "r", 1)                         = 1
read(0, " ", 1)                         = 1
read(0, "t", 1)                         = 1
read(0, "h", 1)                         = 1
read(0, "e", 1)                         = 1
read(0, " ", 1)                         = 1
read(0, "x", 1)                         = 1
read(0, "b", 1)                         = 1
read(0, "p", 1)                         = 1
read(0, "s", 1)                         = 1
read(0, "-", 1)                         = 1
read(0, "c", 1)                         = 1
read(0, "o", 1)                         = 1
read(0, "m", 1)                         = 1
read(0, "m", 1)                         = 1
read(0, "a", 1)                         = 1
read(0, "n", 1)                         = 1
read(0, "d", 1)                         = 1
read(0, "s", 1)                         = 1
read(0, ".", 1)                         = 1
read(0, " ", 1)                         = 1
read(0, "E", 1)                         = 1
read(0, "x", 1)                         = 1
read(0, ":", 1)                         = 1
read(0, " ", 1)                         = 1
read(0, "s", 1)                         = 1
read(0, "e", 1)                         = 1
read(0, " ", 1)                         = 1
read(0, "=", 1)                         = 1
read(0, " ", 1)                         = 1
read(0, "q", 1)                         = 1
read(0, "u", 1)                         = 1
read(0, "e", 1)                         = 1
read(0, "r", 1)                         = 1
read(0, "y", 1)                         = 1
read(0, ",", 1)                         = 1
read(0, " ", 1)                         = 1
read(0, "v", 1)                         = 1
read(0, "s", 1)                         = 1
read(0, " ", 1)                         = 1
read(0, "=", 1)                         = 1
read(0, " ", 1)                         = 1
read(0, "i", 1)                         = 1
read(0, "n", 1)                         = 1
read(0, "s", 1)                         = 1
read(0, "t", 1)                         = 1
read(0, "a", 1)                         = 1
read(0, "l", 1)                         = 1
read(0, "l", 1)                         = 1
read(0, " ", 1)                         = 1
read(0, "-", 1)                         = 1
read(0, "V", 1)                         = 1
read(0, ",", 1)                         = 1
read(0, " ", 1)                         = 1
read(0, "i", 1)                         = 1
read(0, "d", 1)                         = 1
read(0, "x", 1)                         = 1
read(0, " ", 1)                         = 1
read(0, "=", 1)                         = 1
read(0, " ", 1)                         = 1
read(0, "r", 1)                         = 1
read(0, "i", 1)                         = 1
read(0, "n", 1)                         = 1
read(0, "d", 1)                         = 1
read(0, "e", 1)                         = 1
read(0, "x", 1)                         = 1
read(0, "\n", 1)                        = 1
read(0, "#", 1)                         = 1
read(0, " ", 1)                         = 1
read(0, "U", 1)                         = 1
read(0, "n", 1)                         = 1
read(0, "c", 1)                         = 1
read(0, "o", 1)                         = 1
read(0, "m", 1)                         = 1
read(0, "m", 1)                         = 1
read(0, "e", 1)                         = 1
read(0, "n", 1)                         = 1
read(0, "t", 1)                         = 1
read(0, " ", 1)                         = 1
read(0, "t", 1)                         = 1
read(0, "h", 1)                         = 1
read(0, "e", 1)                         = 1
read(0, " ", 1)                         = 1
read(0, "[", 1)                         = 1
read(0, "a", 1)                         = 1
read(0, "l", 1)                         = 1
read(0, "i", 1)                         = 1
read(0, "a", 1)                         = 1
read(0, "s", 1)                         = 1
read(0, "]", 1)                         = 1
read(0, " ", 1)                         = 1
read(0, "s", 1)                         = 1
read(0, "e", 1)                         = 1
read(0, "c", 1)                         = 1
read(0, "t", 1)                         = 1
read(0, "i", 1)                         = 1
read(0, "o", 1)                         = 1
read(0, "n", 1)                         = 1
read(0, " ", 1)                         = 1
read(0, "h", 1)                         = 1
read(0, "e", 1)                         = 1
read(0, "a", 1)                         = 1
read(0, "d", 1)                         = 1
read(0, "e", 1)                         = 1
read(0, "r", 1)                         = 1
read(0, " ", 1)                         = 1
read(0, "t", 1)                         = 1
read(0, "o", 1)                         = 1
read(0, " ", 1)                         = 1
read(0, "e", 1)                         = 1
read(0, "n", 1)                         = 1
read(0, "a", 1)                         = 1
read(0, "b", 1)                         = 1
read(0, "l", 1)                         = 1
read(0, "e", 1)                         = 1
read(0, " ", 1)                         = 1
read(0, "t", 1)                         = 1
read(0, "h", 1)                         = 1
read(0, "e", 1)                         = 1
read(0, " ", 1)                         = 1
read(0, "a", 1)                         = 1
read(0, "l", 1)                         = 1
read(0, "i", 1)                         = 1
read(0, "a", 1)                         = 1
read(0, "s", 1)                         = 1
read(0, "e", 1)                         = 1
read(0, "s", 1)                         = 1
read(0, ".", 1)                         = 1
read(0, "\n", 1)                        = 1
read(0, "#", 1)                         = 1
read(0, " ", 1)                         = 1
read(0, "T", 1)                         = 1
read(0, "r", 1)                         = 1
read(0, "y", 1)                         = 1
read(0, ":", 1)                         = 1
read(0, " ", 1)                         = 1
read(0, "x", 1)                         = 1
read(0, "p", 1)                         = 1
read(0, "w", 1)                         = 1
read(0, " ", 1)                         = 1
read(0, "-", 1)                         = 1
read(0, "h", 1)                         = 1
read(0, " ", 1)                         = 1
read(0, "f", 1)                         = 1
read(0, "o", 1)                         = 1
read(0, "r", 1)                         = 1
read(0, " ", 1)                         = 1
read(0, "m", 1)                         = 1
read(0, "o", 1)                         = 1
read(0, "r", 1)                         = 1
read(0, "e", 1)                         = 1
read(0, " ", 1)                         = 1
read(0, "i", 1)                         = 1
read(0, "n", 1)                         = 1
read(0, "f", 1)                         = 1
read(0, "o", 1)                         = 1
read(0, "r", 1)                         = 1
read(0, "m", 1)                         = 1
read(0, "a", 1)                         = 1
read(0, "t", 1)                         = 1
read(0, "i", 1)                         = 1
read(0, "o", 1)                         = 1
read(0, "n", 1)                         = 1
read(0, ".", 1)                         = 1
read(0, "\n", 1)                        = 1
read(0, " ", 1)                         = 1
read(0, "\n", 1)                        = 1
read(0, "[", 1)                         = 1
read(0, "a", 1)                         = 1
read(0, "l", 1)                         = 1
read(0, "i", 1)                         = 1
read(0, "a", 1)                         = 1
read(0, "s", 1)                         = 1
read(0, "]", 1)                         = 1
read(0, "\n", 1)                        = 1
read(0, " ", 1)                         = 1
read(0, " ", 1)                         = 1
read(0, "a", 1)                         = 1
read(0, "l", 1)                         = 1
read(0, "t", 1)                         = 1
read(0, "s", 1)                         = 1
read(0, " ", 1)                         = 1
read(0, "=", 1)                         = 1
read(0, " ", 1)                         = 1
read(0, "a", 1)                         = 1
read(0, "l", 1)                         = 1
read(0, "t", 1)                         = 1
read(0, "e", 1)                         = 1
read(0, "r", 1)                         = 1
read(0, "n", 1)                         = 1
read(0, "a", 1)                         = 1
read(0, "t", 1)                         = 1
read(0, "i", 1)                         = 1
read(0, "v", 1)                         = 1
read(0, "e", 1)                         = 1
read(0, "s", 1)                         = 1
read(0, "\n", 1)                        = 1
read(0, " ", 1)                         = 1
read(0, " ", 1)                         = 1
read(0, "c", 1)                         = 1
read(0, "k", 1)                         = 1
read(0, " ", 1)                         = 1
read(0, "=", 1)                         = 1
read(0, " ", 1)                         = 1
read(0, "c", 1)                         = 1
read(0, "h", 1)                         = 1
read(0, "e", 1)                         = 1
read(0, "c", 1)                         = 1
read(0, "k", 1)                         = 1
read(0, "v", 1)                         = 1
read(0, "e", 1)                         = 1
read(0, "r", 1)                         = 1
read(0, "s", 1)                         = 1
read(0, "\n", 1)                        = 1
read(0, " ", 1)                         = 1
read(0, " ", 1)                         = 1
read(0, "n", 1)                         = 1
read(0, "e", 1)                         = 1
read(0, "w", 1)                         = 1
read(0, " ", 1)                         = 1
read(0, "=", 1)                         = 1
read(0, " ", 1)                         = 1
read(0, "c", 1)                         = 1
read(0, "r", 1)                         = 1
read(0, "e", 1)                         = 1
read(0, "a", 1)                         = 1
read(0, "t", 1)                         = 1
read(0, "e", 1)                         = 1
read(0, "\n", 1)                        = 1
read(0, " ", 1)                         = 1
read(0, " ", 1)                         = 1
read(0, "d", 1)                         = 1
read(0, "e", 1)                         = 1
read(0, "p", 1)                         = 1
read(0, "s", 1)                         = 1
read(0, " ", 1)                         = 1
read(0, "=", 1)                         = 1
read(0, " ", 1)                         = 1
read(0, "d", 1)                         = 1
read(0, "g", 1)                         = 1
read(0, "r", 1)                         = 1
read(0, "a", 1)                         = 1
read(0, "p", 1)                         = 1
read(0, "h", 1)                         = 1
read(0, "\n", 1)                        = 1
read(0, " ", 1)                         = 1
read(0, " ", 1)                         = 1
read(0, "h", 1)                         = 1
read(0, "a", 1)                         = 1
read(0, "s", 1)                         = 1
read(0, "h", 1)                         = 1
read(0, " ", 1)                         = 1
read(0, "=", 1)                         = 1
read(0, " ", 1)                         = 1
read(0, "d", 1)                         = 1
read(0, "i", 1)                         = 1
read(0, "g", 1)                         = 1
read(0, "e", 1)                         = 1
read(0, "s", 1)                         = 1
read(0, "t", 1)                         = 1
read(0, "\n", 1)                        = 1
read(0, " ", 1)                         = 1
read(0, " ", 1)                         = 1
read(0, "b", 1)                         = 1
read(0, "u", 1)                         = 1
read(0, "l", 1)                         = 1
read(0, "k", 1)                         = 1
read(0, " ", 1)                         = 1
read(0, "=", 1)                         = 1
read(0, " ", 1)                         = 1
read(0, "f", 1)                         = 1
read(0, "b", 1)                         = 1
read(0, "u", 1)                         = 1
read(0, "l", 1)                         = 1
read(0, "k", 1)                         = 1
read(0, "\n", 1)                        = 1
read(0, " ", 1)                         = 1
read(0, " ", 1)                         = 1
read(0, "i", 1)                         = 1
read(0, "n", 1)                         = 1
read(0, "s", 1)                         = 1
read(0, "t", 1)                         = 1
read(0, " ", 1)                         = 1
read(0, "=", 1)                         = 1
read(0, " ", 1)                         = 1
read(0, "i", 1)                         = 1
read(0, "n", 1)                         = 1
read(0, "s", 1)                         = 1
read(0, "t", 1)                         = 1
read(0, "a", 1)                         = 1
read(0, "l", 1)                         = 1
read(0, "l", 1)                         = 1
read(0, "\n", 1)                        = 1
read(0, " ", 1)                         = 1
read(0, " ", 1)                         = 1
read(0, "d", 1)                         = 1
read(0, "b", 1)                         = 1
read(0, " ", 1)                         = 1
read(0, "=", 1)                         = 1
read(0, " ", 1)                         = 1
read(0, "p", 1)                         = 1
read(0, "k", 1)                         = 1
read(0, "g", 1)                         = 1
read(0, "d", 1)                         = 1
read(0, "b", 1)                         = 1
read(0, "\n", 1)                        = 1
read(0, " ", 1)                         = 1
read(0, " ", 1)                         = 1
read(0, "p", 1)                         = 1
read(0, "d", 1)                         = 1
read(0, "b", 1)                         = 1
read(0, " ", 1)                         = 1
read(0, "=", 1)                         = 1
read(0, " ", 1)                         = 1
read(0, "p", 1)                         = 1
read(0, "k", 1)                         = 1
read(0, "g", 1)                         = 1
read(0, "d", 1)                         = 1
read(0, "b", 1)                         = 1
read(0, "\n", 1)                        = 1
read(0, " ", 1)                         = 1
read(0, " ", 1)                         = 1
read(0, "s", 1)                         = 1
read(0, "e", 1)                         = 1
read(0, " ", 1)                         = 1
read(0, "=", 1)                         = 1
read(0, " ", 1)                         = 1
read(0, "q", 1)                         = 1
read(0, "u", 1)                         = 1
read(0, "e", 1)                         = 1
read(0, "r", 1)                         = 1
read(0, "y", 1)                         = 1
read(0, "\n", 1)                        = 1
read(0, " ", 1)                         = 1
read(0, " ", 1)                         = 1
read(0, "q", 1)                         = 1
read(0, "u", 1)                         = 1
read(0, "e", 1)                         = 1
read(0, " ", 1)                         = 1
read(0, "=", 1)                         = 1
read(0, " ", 1)                         = 1
read(0, "q", 1)                         = 1
read(0, "u", 1)                         = 1
read(0, "e", 1)                         = 1
read(0, "r", 1)                         = 1
read(0, "y", 1)                         = 1
read(0, "\n", 1)                        = 1
read(0, " ", 1)                         = 1
read(0, " ", 1)                         = 1
read(0, "r", 1)                         = 1
read(0, "c", 1)                         = 1
read(0, " ", 1)                         = 1
read(0, "=", 1)                         = 1
read(0, " ", 1)                         = 1
read(0, "r", 1)                         = 1
read(0, "e", 1)                         = 1
read(0, "c", 1)                         = 1
read(0, "o", 1)                         = 1
read(0, "n", 1)                         = 1
read(0, "f", 1)                         = 1
read(0, "i", 1)                         = 1
read(0, "g", 1)                         = 1
read(0, "u", 1)                         = 1
read(0, "r", 1)                         = 1
read(0, "e", 1)                         = 1
read(0, "\n", 1)                        = 1
read(0, " ", 1)                         = 1
read(0, " ", 1)                         = 1
read(0, "i", 1)                         = 1
read(0, "d", 1)                         = 1
read(0, "x", 1)                         = 1
read(0, " ", 1)                         = 1
read(0, "=", 1)                         = 1
read(0, " ", 1)                         = 1
read(0, "r", 1)                         = 1
read(0, "i", 1)                         = 1
read(0, "n", 1)                         = 1
read(0, "d", 1)                         = 1
read(0, "e", 1)                         = 1
read(0, "x", 1)                         = 1
read(0, "\n", 1)                        = 1
read(0, " ", 1)                         = 1
read(0, " ", 1)                         = 1
read(0, "c", 1)                         = 1
read(0, "h", 1)                         = 1
read(0, "r", 1)                         = 1
read(0, "o", 1)                         = 1
read(0, "o", 1)                         = 1
read(0, "t", 1)                         = 1
read(0, " ", 1)                         = 1
read(0, "=", 1)                         = 1
read(0, " ", 1)                         = 1
read(0, "u", 1)                         = 1
read(0, "c", 1)                         = 1
read(0, "h", 1)                         = 1
read(0, "r", 1)                         = 1
read(0, "o", 1)                         = 1
read(0, "o", 1)                         = 1
read(0, "t", 1)                         = 1
read(0, "\n", 1)                        = 1
read(0, " ", 1)                         = 1
read(0, " ", 1)                         = 1
read(0, "h", 1)                         = 1
read(0, "e", 1)                         = 1
read(0, "l", 1)                         = 1
read(0, "p", 1)                         = 1
read(0, "e", 1)                         = 1
read(0, "r", 1)                         = 1
read(0, " ", 1)                         = 1
read(0, "=", 1)                         = 1
read(0, " ", 1)                         = 1
read(0, "u", 1)                         = 1
read(0, "h", 1)                         = 1
read(0, "e", 1)                         = 1
read(0, "l", 1)                         = 1
read(0, "p", 1)                         = 1
read(0, "e", 1)                         = 1
read(0, "r", 1)                         = 1
read(0, "\n", 1)                        = 1
read(0, " ", 1)                         = 1
read(0, " ", 1)                         = 1
read(0, "u", 1)                         = 1
read(0, "n", 1)                         = 1
read(0, "s", 1)                         = 1
read(0, "h", 1)                         = 1
read(0, "a", 1)                         = 1
read(0, "r", 1)                         = 1
read(0, "e", 1)                         = 1
read(0, " ", 1)                         = 1
read(0, "=", 1)                         = 1
read(0, " ", 1)                         = 1
read(0, "u", 1)                         = 1
read(0, "u", 1)                         = 1
read(0, "n", 1)                         = 1
read(0, "s", 1)                         = 1
read(0, "h", 1)                         = 1
read(0, "a", 1)                         = 1
read(0, "r", 1)                         = 1
read(0, "e", 1)                         = 1
read(0, "\n", 1)                        = 1
read(0, " ", 1)                         = 1
read(0, " ", 1)                         = 1
read(0, "v", 1)                         = 1
read(0, "s", 1)                         = 1
read(0, " ", 1)                         = 1
read(0, "=", 1)                         = 1
read(0, " ", 1)                         = 1
read(0, "i", 1)                         = 1
read(0, "n", 1)                         = 1
read(0, "s", 1)                         = 1
read(0, "t", 1)                         = 1
read(0, "a", 1)                         = 1
read(0, "l", 1)                         = 1
read(0, "l", 1)                         = 1
read(0, " ", 1)                         = 1
read(0, "-", 1)                         = 1
read(0, "V", 1)                         = 1
read(0, "\n", 1)                        = 1
read(0, "", 1)                          = 0
dup2(11, 0)                             = 0
close(11)                               = 0
pipe2([3, 4], 0)                        = 0
rt_sigprocmask(SIG_BLOCK, ~[], [], 8)   = 0
clone(child_stack=NULL, flags=CLONE_CHILD_CLEARTID|CLONE_CHILD_SETTID|SIGCHLD, child_tidptr=0x7bdf0daa3a10) = 33487
rt_sigprocmask(SIG_SETMASK, [], NULL, 8) = 0
--- SIGCHLD {si_signo=SIGCHLD, si_code=CLD_EXITED, si_pid=33487, si_uid=1000, si_status=0, si_utime=0, si_stime=0} ---
rt_sigreturn({mask=[]})                 = 0
close(4)                                = 0
read(3, "al", 128)                      = 2
read(3, "", 128)                        = 0
close(3)                                = 0
wait4(-1, [{WIFEXITED(s) && WEXITSTATUS(s) == 0}], 0, NULL) = 33487
wait4(-1, 0x7fffa1fc48bc, WNOHANG, NULL) = -1 ECHILD (No child processes)
pipe2([3, 4], 0)                        = 0
rt_sigprocmask(SIG_BLOCK, ~[], [], 8)   = 0
clone(child_stack=NULL, flags=CLONE_CHILD_CLEARTID|CLONE_CHILD_SETTID|SIGCHLD, child_tidptr=0x7bdf0daa3a10) = 33488
rt_sigprocmask(SIG_SETMASK, [], NULL, 8) = 0
--- SIGCHLD {si_signo=SIGCHLD, si_code=CLD_EXITED, si_pid=33488, si_uid=1000, si_status=0, si_utime=0, si_stime=0} ---
rt_sigreturn({mask=[]})                 = 0
close(4)                                = 0
read(3, "ch", 128)                      = 2
read(3, "", 128)                        = 0
close(3)                                = 0
wait4(-1, [{WIFEXITED(s) && WEXITSTATUS(s) == 0}], 0, NULL) = 33488
wait4(-1, 0x7fffa1fc48bc, WNOHANG, NULL) = -1 ECHILD (No child processes)
pipe2([3, 4], 0)                        = 0
rt_sigprocmask(SIG_BLOCK, ~[], [], 8)   = 0
clone(child_stack=NULL, flags=CLONE_CHILD_CLEARTID|CLONE_CHILD_SETTID|SIGCHLD, child_tidptr=0x7bdf0daa3a10) = 33489
rt_sigprocmask(SIG_SETMASK, [], NULL, 8) = 0
--- SIGCHLD {si_signo=SIGCHLD, si_code=CLD_EXITED, si_pid=33489, si_uid=1000, si_status=0, si_utime=0, si_stime=0} ---
rt_sigreturn({mask=[]})                 = 0
close(4)                                = 0
read(3, "cr", 128)                      = 2
read(3, "", 128)                        = 0
close(3)                                = 0
wait4(-1, [{WIFEXITED(s) && WEXITSTATUS(s) == 0}], 0, NULL) = 33489
wait4(-1, 0x7fffa1fc48bc, WNOHANG, NULL) = -1 ECHILD (No child processes)
pipe2([3, 4], 0)                        = 0
rt_sigprocmask(SIG_BLOCK, ~[], [], 8)   = 0
clone(child_stack=NULL, flags=CLONE_CHILD_CLEARTID|CLONE_CHILD_SETTID|SIGCHLD, child_tidptr=0x7bdf0daa3a10) = 33490
rt_sigprocmask(SIG_SETMASK, [], NULL, 8) = 0
--- SIGCHLD {si_signo=SIGCHLD, si_code=CLD_EXITED, si_pid=33490, si_uid=1000, si_status=0, si_utime=0, si_stime=0} ---
rt_sigreturn({mask=[]})                 = 0
close(4)                                = 0
read(3, "dg", 128)                      = 2
read(3, "", 128)                        = 0
close(3)                                = 0
wait4(-1, [{WIFEXITED(s) && WEXITSTATUS(s) == 0}], 0, NULL) = 33490
wait4(-1, 0x7fffa1fc48bc, WNOHANG, NULL) = -1 ECHILD (No child processes)
pipe2([3, 4], 0)                        = 0
rt_sigprocmask(SIG_BLOCK, ~[], [], 8)   = 0
clone(child_stack=NULL, flags=CLONE_CHILD_CLEARTID|CLONE_CHILD_SETTID|SIGCHLD, child_tidptr=0x7bdf0daa3a10) = 33491
rt_sigprocmask(SIG_SETMASK, [], NULL, 8) = 0
--- SIGCHLD {si_signo=SIGCHLD, si_code=CLD_EXITED, si_pid=33491, si_uid=1000, si_status=0, si_utime=0, si_stime=0} ---
rt_sigreturn({mask=[]})                 = 0
close(4)                                = 0
read(3, "di", 128)                      = 2
read(3, "", 128)                        = 0
close(3)                                = 0
wait4(-1, [{WIFEXITED(s) && WEXITSTATUS(s) == 0}], 0, NULL) = 33491
wait4(-1, 0x7fffa1fc48bc, WNOHANG, NULL) = -1 ECHILD (No child processes)
pipe2([3, 4], 0)                        = 0
rt_sigprocmask(SIG_BLOCK, ~[], [], 8)   = 0
clone(child_stack=NULL, flags=CLONE_CHILD_CLEARTID|CLONE_CHILD_SETTID|SIGCHLD, child_tidptr=0x7bdf0daa3a10) = 33492
rt_sigprocmask(SIG_SETMASK, [], NULL, 8) = 0
--- SIGCHLD {si_signo=SIGCHLD, si_code=CLD_EXITED, si_pid=33492, si_uid=1000, si_status=0, si_utime=0, si_stime=0} ---
rt_sigreturn({mask=[]})                 = 0
close(4)                                = 0
read(3, "fb", 128)                      = 2
read(3, "", 128)                        = 0
close(3)                                = 0
wait4(-1, [{WIFEXITED(s) && WEXITSTATUS(s) == 0}], 0, NULL) = 33492
wait4(-1, 0x7fffa1fc48bc, WNOHANG, NULL) = -1 ECHILD (No child processes)
pipe2([3, 4], 0)                        = 0
rt_sigprocmask(SIG_BLOCK, ~[], [], 8)   = 0
clone(child_stack=NULL, flags=CLONE_CHILD_CLEARTID|CLONE_CHILD_SETTID|SIGCHLD, child_tidptr=0x7bdf0daa3a10) = 33493
rt_sigprocmask(SIG_SETMASK, [], NULL, 8) = 0
--- SIGCHLD {si_signo=SIGCHLD, si_code=CLD_EXITED, si_pid=33493, si_uid=1000, si_status=0, si_utime=0, si_stime=0} ---
rt_sigreturn({mask=[]})                 = 0
close(4)                                = 0
read(3, "fe", 128)                      = 2
read(3, "", 128)                        = 0
close(3)                                = 0
wait4(-1, [{WIFEXITED(s) && WEXITSTATUS(s) == 0}], 0, NULL) = 33493
wait4(-1, 0x7fffa1fc48bc, WNOHANG, NULL) = -1 ECHILD (No child processes)
pipe2([3, 4], 0)                        = 0
rt_sigprocmask(SIG_BLOCK, ~[], [], 8)   = 0
clone(child_stack=NULL, flags=CLONE_CHILD_CLEARTID|CLONE_CHILD_SETTID|SIGCHLD, child_tidptr=0x7bdf0daa3a10) = 33494
rt_sigprocmask(SIG_SETMASK, [], NULL, 8) = 0
--- SIGCHLD {si_signo=SIGCHLD, si_code=CLD_EXITED, si_pid=33494, si_uid=1000, si_status=0, si_utime=0, si_stime=0} ---
rt_sigreturn({mask=[]})                 = 0
close(4)                                = 0
read(3, "in", 128)                      = 2
read(3, "", 128)                        = 0
close(3)                                = 0
wait4(-1, [{WIFEXITED(s) && WEXITSTATUS(s) == 0}], 0, NULL) = 33494
wait4(-1, 0x7fffa1fc48bc, WNOHANG, NULL) = -1 ECHILD (No child processes)
pipe2([3, 4], 0)                        = 0
rt_sigprocmask(SIG_BLOCK, ~[], [], 8)   = 0
clone(child_stack=NULL, flags=CLONE_CHILD_CLEARTID|CLONE_CHILD_SETTID|SIGCHLD, child_tidptr=0x7bdf0daa3a10) = 33495
rt_sigprocmask(SIG_SETMASK, [], NULL, 8) = 0
--- SIGCHLD {si_signo=SIGCHLD, si_code=CLD_EXITED, si_pid=33495, si_uid=1000, si_status=0, si_utime=0, si_stime=0} ---
rt_sigreturn({mask=[]})                 = 0
close(4)                                = 0
read(3, "pk", 128)                      = 2
read(3, "", 128)                        = 0
close(3)                                = 0
wait4(-1, [{WIFEXITED(s) && WEXITSTATUS(s) == 0}], 0, NULL) = 33495
wait4(-1, 0x7fffa1fc48bc, WNOHANG, NULL) = -1 ECHILD (No child processes)
pipe2([3, 4], 0)                        = 0
rt_sigprocmask(SIG_BLOCK, ~[], [], 8)   = 0
clone(child_stack=NULL, flags=CLONE_CHILD_CLEARTID|CLONE_CHILD_SETTID|SIGCHLD, child_tidptr=0x7bdf0daa3a10) = 33496
rt_sigprocmask(SIG_SETMASK, [], NULL, 8) = 0
--- SIGCHLD {si_signo=SIGCHLD, si_code=CLD_EXITED, si_pid=33496, si_uid=1000, si_status=0, si_utime=0, si_stime=0} ---
rt_sigreturn({mask=[]})                 = 0
close(4)                                = 0
read(3, "qu", 128)                      = 2
read(3, "", 128)                        = 0
close(3)                                = 0
wait4(-1, [{WIFEXITED(s) && WEXITSTATUS(s) == 0}], 0, NULL) = 33496
wait4(-1, 0x7fffa1fc48bc, WNOHANG, NULL) = -1 ECHILD (No child processes)
pipe2([3, 4], 0)                        = 0
rt_sigprocmask(SIG_BLOCK, ~[], [], 8)   = 0
clone(child_stack=NULL, flags=CLONE_CHILD_CLEARTID|CLONE_CHILD_SETTID|SIGCHLD, child_tidptr=0x7bdf0daa3a10) = 33497
rt_sigprocmask(SIG_SETMASK, [], NULL, 8) = 0
--- SIGCHLD {si_signo=SIGCHLD, si_code=CLD_EXITED, si_pid=33497, si_uid=1000, si_status=0, si_utime=0, si_stime=0} ---
rt_sigreturn({mask=[]})                 = 0
close(4)                                = 0
read(3, "re", 128)                      = 2
read(3, "", 128)                        = 0
close(3)                                = 0
wait4(-1, [{WIFEXITED(s) && WEXITSTATUS(s) == 0}], 0, NULL) = 33497
wait4(-1, 0x7fffa1fc48bc, WNOHANG, NULL) = -1 ECHILD (No child processes)
pipe2([3, 4], 0)                        = 0
rt_sigprocmask(SIG_BLOCK, ~[], [], 8)   = 0
clone(child_stack=NULL, flags=CLONE_CHILD_CLEARTID|CLONE_CHILD_SETTID|SIGCHLD, child_tidptr=0x7bdf0daa3a10) = 33498
rt_sigprocmask(SIG_SETMASK, [], NULL, 8) = 0
--- SIGCHLD {si_signo=SIGCHLD, si_code=CLD_EXITED, si_pid=33498, si_uid=1000, si_status=0, si_utime=0, si_stime=0} ---
rt_sigreturn({mask=[]})                 = 0
close(4)                                = 0
read(3, "ri", 128)                      = 2
read(3, "", 128)                        = 0
close(3)                                = 0
wait4(-1, [{WIFEXITED(s) && WEXITSTATUS(s) == 0}], 0, NULL) = 33498
wait4(-1, 0x7fffa1fc48bc, WNOHANG, NULL) = -1 ECHILD (No child processes)
pipe2([3, 4], 0)                        = 0
rt_sigprocmask(SIG_BLOCK, ~[], [], 8)   = 0
clone(child_stack=NULL, flags=CLONE_CHILD_CLEARTID|CLONE_CHILD_SETTID|SIGCHLD, child_tidptr=0x7bdf0daa3a10) = 33499
rt_sigprocmask(SIG_SETMASK, [], NULL, 8) = 0
--- SIGCHLD {si_signo=SIGCHLD, si_code=CLD_EXITED, si_pid=33499, si_uid=1000, si_status=0, si_utime=0, si_stime=0} ---
rt_sigreturn({mask=[]})                 = 0
close(4)                                = 0
read(3, "uc", 128)                      = 2
read(3, "", 128)                        = 0
close(3)                                = 0
wait4(-1, [{WIFEXITED(s) && WEXITSTATUS(s) == 0}], 0, NULL) = 33499
wait4(-1, 0x7fffa1fc48bc, WNOHANG, NULL) = -1 ECHILD (No child processes)
pipe2([3, 4], 0)                        = 0
rt_sigprocmask(SIG_BLOCK, ~[], [], 8)   = 0
clone(child_stack=NULL, flags=CLONE_CHILD_CLEARTID|CLONE_CHILD_SETTID|SIGCHLD, child_tidptr=0x7bdf0daa3a10) = 33500
rt_sigprocmask(SIG_SETMASK, [], NULL, 8) = 0
--- SIGCHLD {si_signo=SIGCHLD, si_code=CLD_EXITED, si_pid=33500, si_uid=1000, si_status=0, si_utime=0, si_stime=0} ---
rt_sigreturn({mask=[]})                 = 0
close(4)                                = 0
read(3, "uh", 128)                      = 2
read(3, "", 128)                        = 0
close(3)                                = 0
wait4(-1, [{WIFEXITED(s) && WEXITSTATUS(s) == 0}], 0, NULL) = 33500
wait4(-1, 0x7fffa1fc48bc, WNOHANG, NULL) = -1 ECHILD (No child processes)
pipe2([3, 4], 0)                        = 0
rt_sigprocmask(SIG_BLOCK, ~[], [], 8)   = 0
clone(child_stack=NULL, flags=CLONE_CHILD_CLEARTID|CLONE_CHILD_SETTID|SIGCHLD, child_tidptr=0x7bdf0daa3a10) = 33501
rt_sigprocmask(SIG_SETMASK, [], NULL, 8) = 0
--- SIGCHLD {si_signo=SIGCHLD, si_code=CLD_EXITED, si_pid=33501, si_uid=1000, si_status=0, si_utime=0, si_stime=0} ---
rt_sigreturn({mask=[]})                 = 0
close(4)                                = 0
read(3, "uu", 128)                      = 2
read(3, "", 128)                        = 0
close(3)                                = 0
wait4(-1, [{WIFEXITED(s) && WEXITSTATUS(s) == 0}], 0, NULL) = 33501
wait4(-1, 0x7fffa1fc48bc, WNOHANG, NULL) = -1 ECHILD (No child processes)
pipe2([3, 4], 0)                        = 0
rt_sigprocmask(SIG_BLOCK, ~[], [], 8)   = 0
clone(child_stack=NULL, flags=CLONE_CHILD_CLEARTID|CLONE_CHILD_SETTID|SIGCHLD, child_tidptr=0x7bdf0daa3a10) = 33502
rt_sigprocmask(SIG_SETMASK, [], NULL, 8) = 0
close(4)                                = 0
read(3, "alts:alternatives ck:checkvers n"..., 128) = 128
read(3, "rc:reconfigure idx:rindex chroot"..., 128) = 128
--- SIGCHLD {si_signo=SIGCHLD, si_code=CLD_EXITED, si_pid=33502, si_uid=1000, si_status=0, si_utime=0, si_stime=0} ---
rt_sigreturn({mask=[]})                 = 128
read(3, ":dgraph di:digest fb:fbulk fe:fe"..., 128) = 128
read(3, "share\n", 128)                 = 6
read(3, "", 128)                        = 0
close(3)                                = 0
wait4(-1, [{WIFEXITED(s) && WEXITSTATUS(s) == 0}], 0, NULL) = 33502
wait4(-1, 0x7fffa1fc49dc, WNOHANG, NULL) = -1 ECHILD (No child processes)
pipe2([3, 4], 0)                        = 0
rt_sigprocmask(SIG_BLOCK, ~[], [], 8)   = 0
clone(child_stack=NULL, flags=CLONE_CHILD_CLEARTID|CLONE_CHILD_SETTID|SIGCHLD, child_tidptr=0x7bdf0daa3a10) = 33505
rt_sigprocmask(SIG_SETMASK, [], NULL, 8) = 0
close(4)                                = 0
read(3, "-V\n", 128)                    = 3
read(3, "", 128)                        = 0
--- SIGCHLD {si_signo=SIGCHLD, si_code=CLD_EXITED, si_pid=33505, si_uid=1000, si_status=0, si_utime=0, si_stime=0} ---
rt_sigreturn({mask=[]})                 = 0
close(3)                                = 0
wait4(-1, [{WIFEXITED(s) && WEXITSTATUS(s) == 0}], 0, NULL) = 33505
wait4(-1, 0x7fffa1fc47fc, WNOHANG, NULL) = -1 ECHILD (No child processes)
pipe2([3, 4], 0)                        = 0
rt_sigprocmask(SIG_BLOCK, ~[], [], 8)   = 0
clone(child_stack=NULL, flags=CLONE_CHILD_CLEARTID|CLONE_CHILD_SETTID|SIGCHLD, child_tidptr=0x7bdf0daa3a10) = 33508
rt_sigprocmask(SIG_SETMASK, [], NULL, 8) = 0
close(4)                                = 0
read(3, "help\n", 128)                  = 5
--- SIGCHLD {si_signo=SIGCHLD, si_code=CLD_EXITED, si_pid=33508, si_uid=1000, si_status=0, si_utime=0, si_stime=0} ---
rt_sigreturn({mask=[]})                 = 5
read(3, "", 128)                        = 0
close(3)                                = 0
wait4(-1, [{WIFEXITED(s) && WEXITSTATUS(s) == 0}], 0, NULL) = 33508
wait4(-1, 0x7fffa1fc46ac, WNOHANG, NULL) = -1 ECHILD (No child processes)
write(1, "XBPS Program Wrapper\nUsage: xpw "..., 173) = 173
write(1, "     [alts|al] -> alternatives\n", 31) = 31
write(1, "       [ck|ch] -> checkvers\n", 28) = 28
write(1, "      [new|cr] -> create\n", 25) = 25
write(1, "     [deps|dg] -> dgraph\n", 25) = 25
write(1, "     [hash|di] -> digest\n", 25) = 25
write(1, "     [bulk|fb] -> fbulk\n", 24) = 24
write(1, "          [fe] -> fetch\n", 24) = 24
write(1, "     [inst|in] -> install\n", 26) = 26
write(1, "   [db|pdb|pk] -> pkgdb\n", 24) = 24
write(1, "   [se|que|qu] -> query\n", 24) = 24
write(1, "       [rc|re] -> reconfigure\n", 30) = 30
write(1, "          [rm] -> remove\n", 25) = 25
write(1, "      [idx|ri] -> rindex\n", 25) = 25
write(1, "   [chroot|uc] -> uchroot\n", 26) = 26
write(1, "   [helper|uh] -> uhelper\n", 26) = 26
write(1, "  [unshare|uu] -> uunshare\n", 27) = 27
write(1, "\nExamples: \n  xpw al <args> -> x"..., 172) = 172
read(10, "", 8192)                      = 0
read(10, "", 8192)                      = 0
exit_group(0)                           = ?
+++ exited with 0 +++
