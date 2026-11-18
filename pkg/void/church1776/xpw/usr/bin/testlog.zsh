execve("./xpw", ["./xpw", "-h"], 0x7ffe873686a8 /* 41 vars */) = 0
brk(NULL)                               = 0x5605affa8000
access("/etc/ld.so.preload", R_OK)      = -1 ENOENT (No such file or directory)
openat(AT_FDCWD, "/etc/ld.so.cache", O_RDONLY|O_CLOEXEC) = 3
fstat(3, {st_mode=S_IFREG|0644, st_size=24575, ...}) = 0
mmap(NULL, 24575, PROT_READ, MAP_PRIVATE, 3, 0) = 0x7c1a1025d000
close(3)                                = 0
openat(AT_FDCWD, "/usr/lib/libc.so.6", O_RDONLY|O_CLOEXEC) = 3
read(3, "\177ELF\2\1\1\3\0\0\0\0\0\0\0\0\3\0>\0\1\0\0\0\300\255\2\0\0\0\0\0"..., 832) = 832
pread64(3, "\6\0\0\0\4\0\0\0@\0\0\0\0\0\0\0@\0\0\0\0\0\0\0@\0\0\0\0\0\0\0"..., 784, 64) = 784
fstat(3, {st_mode=S_IFREG|0755, st_size=12699128, ...}) = 0
mmap(NULL, 8192, PROT_READ|PROT_WRITE, MAP_PRIVATE|MAP_ANONYMOUS, -1, 0) = 0x7c1a1025b000
pread64(3, "\6\0\0\0\4\0\0\0@\0\0\0\0\0\0\0@\0\0\0\0\0\0\0@\0\0\0\0\0\0\0"..., 784, 64) = 784
mmap(NULL, 2006680, PROT_READ, MAP_PRIVATE|MAP_DENYWRITE, 3, 0) = 0x7c1a10071000
mmap(0x7c1a10099000, 1413120, PROT_READ|PROT_EXEC, MAP_PRIVATE|MAP_FIXED|MAP_DENYWRITE, 3, 0x28000) = 0x7c1a10099000
mmap(0x7c1a101f2000, 352256, PROT_READ, MAP_PRIVATE|MAP_FIXED|MAP_DENYWRITE, 3, 0x181000) = 0x7c1a101f2000
mmap(0x7c1a10248000, 24576, PROT_READ|PROT_WRITE, MAP_PRIVATE|MAP_FIXED|MAP_DENYWRITE, 3, 0x1d6000) = 0x7c1a10248000
mmap(0x7c1a1024e000, 52888, PROT_READ|PROT_WRITE, MAP_PRIVATE|MAP_FIXED|MAP_ANONYMOUS, -1, 0) = 0x7c1a1024e000
close(3)                                = 0
mmap(NULL, 12288, PROT_READ|PROT_WRITE, MAP_PRIVATE|MAP_ANONYMOUS, -1, 0) = 0x7c1a1006e000
arch_prctl(ARCH_SET_FS, 0x7c1a1006e740) = 0
set_tid_address(0x7c1a1006ea10)         = 54408
set_robust_list(0x7c1a1006ea20, 24)     = 0
rseq({cpu_id_start=0, cpu_id=RSEQ_CPU_ID_UNINITIALIZED, rseq_cs=NULL, flags=0, node_id=0, mm_cid=0, slice_ctrl={request=0, granted=0, __reserved=0}, __reserved=0}, 32, 0, 0x53053053) = 0
mprotect(0x7c1a10248000, 16384, PROT_READ) = 0
mprotect(0x5605acc39000, 8192, PROT_READ) = 0
mprotect(0x7c1a1029e000, 8192, PROT_READ) = 0
prlimit64(0, RLIMIT_STACK, NULL, {rlim_cur=8192*1024, rlim_max=RLIM64_INFINITY}) = 0
munmap(0x7c1a1025d000, 24575)           = 0
getpid()                                = 54408
rt_sigaction(SIGCHLD, {sa_handler=0x5605acc2e530, sa_mask=~[RTMIN RT_1], sa_flags=SA_RESTORER, sa_restorer=0x7c1a100b1110}, NULL, 8) = 0
geteuid()                               = 1000
getrandom("\xc7\xbd\x2f\xe7\x53\x69\x92\x89", 8, GRND_NONBLOCK) = 8
brk(NULL)                               = 0x5605affa8000
brk(0x5605affc9000)                     = 0x5605affc9000
getppid()                               = 54406
newfstatat(AT_FDCWD, "/home/brass/projects/pkgdb/pkg/void/church1776/xpw/usr/bin", {st_mode=S_IFDIR|0755, st_size=4096, ...}, 0) = 0
newfstatat(AT_FDCWD, ".", {st_mode=S_IFDIR|0755, st_size=4096, ...}, 0) = 0
openat(AT_FDCWD, "./xpw", O_RDONLY)     = 3
fcntl(3, F_DUPFD, 10)                   = 10
close(3)                                = 0
fcntl(10, F_SETFD, FD_CLOEXEC)          = 0
rt_sigaction(SIGINT, NULL, {sa_handler=SIG_DFL, sa_mask=[], sa_flags=0}, 8) = 0
rt_sigaction(SIGINT, {sa_handler=0x5605acc2e530, sa_mask=~[RTMIN RT_1], sa_flags=SA_RESTORER, sa_restorer=0x7c1a100b1110}, NULL, 8) = 0
rt_sigaction(SIGQUIT, NULL, {sa_handler=SIG_DFL, sa_mask=[], sa_flags=0}, 8) = 0
rt_sigaction(SIGQUIT, {sa_handler=SIG_DFL, sa_mask=~[RTMIN RT_1], sa_flags=SA_RESTORER, sa_restorer=0x7c1a100b1110}, NULL, 8) = 0
rt_sigaction(SIGTERM, NULL, {sa_handler=SIG_DFL, sa_mask=[], sa_flags=0}, 8) = 0
rt_sigaction(SIGTERM, {sa_handler=SIG_DFL, sa_mask=~[RTMIN RT_1], sa_flags=SA_RESTORER, sa_restorer=0x7c1a100b1110}, NULL, 8) = 0
read(10, "#!/usr/bin/sh\n#\n# The X Binary P"..., 8192) = 6169
pipe2([3, 4], 0)                        = 0
rt_sigprocmask(SIG_BLOCK, ~[], [], 8)   = 0
clone(child_stack=NULL, flags=CLONE_CHILD_CLEARTID|CLONE_CHILD_SETTID|SIGCHLD, child_tidptr=0x7c1a1006ea10) = 54409
rt_sigprocmask(SIG_SETMASK, [], NULL, 8) = 0
close(4)                                = 0
read(3, "alternatives\ncheckvers\ncreate\ndg"..., 128) = 127
read(3, "", 128)                        = 0
--- SIGCHLD {si_signo=SIGCHLD, si_code=CLD_EXITED, si_pid=54409, si_uid=1000, si_status=0, si_utime=0, si_stime=0} ---
rt_sigreturn({mask=[]})                 = 0
close(3)                                = 0
wait4(-1, [{WIFEXITED(s) && WEXITSTATUS(s) == 0}], 0, NULL) = 54409
wait4(-1, 0x7fffe23f16ec, WNOHANG, NULL) = -1 ECHILD (No child processes)
newfstatat(AT_FDCWD, "/home/brass/.xpwrc", {st_mode=S_IFREG|0644, st_size=517, ...}, 0) = 0
pipe2([3, 4], 0)                        = 0
rt_sigprocmask(SIG_BLOCK, ~[], [], 8)   = 0
clone(child_stack=NULL, flags=CLONE_CHILD_CLEARTID|CLONE_CHILD_SETTID|SIGCHLD, child_tidptr=0x7c1a1006ea10) = 54413
rt_sigprocmask(SIG_SETMASK, [], NULL, 8) = 0
close(4)                                = 0
read(3, "# XBPS Program Wrapper\n# \n# Use "..., 128) = 128
read(3, "\n# Uncomment the [alias] section"..., 128) = 128
--- SIGCHLD {si_signo=SIGCHLD, si_code=CLD_EXITED, si_pid=54413, si_uid=1000, si_status=0, si_utime=0, si_stime=0} ---
rt_sigreturn({mask=[]})                 = 128
read(3, "es\n  ck = checkvers\n  new = crea"..., 128) = 128
read(3, "se = query\n   = query\n  rc = rec"..., 128) = 128
read(3, "l -V\nx", 128)                 = 6
read(3, "", 128)                        = 0
close(3)                                = 0
wait4(-1, [{WIFEXITED(s) && WEXITSTATUS(s) == 0}], 0, NULL) = 54413
wait4(-1, 0x7fffe23f15ac, WNOHANG, NULL) = -1 ECHILD (No child processes)
openat(AT_FDCWD, "/home/brass/.xpwrc", O_RDONLY) = 3
fcntl(0, F_DUPFD, 10)                   = 11
close(0)                                = 0
fcntl(11, F_SETFD, FD_CLOEXEC)          = 0
dup2(3, 0)                              = 0
close(3)                                = 0
dup2(11, 0)                             = 0
close(11)                               = 0
pipe2([3, 4], 0)                        = 0
rt_sigprocmask(SIG_BLOCK, ~[], [], 8)   = 0
clone(child_stack=NULL, flags=CLONE_CHILD_CLEARTID|CLONE_CHILD_SETTID|SIGCHLD, child_tidptr=0x7c1a1006ea10) = 54415
rt_sigprocmask(SIG_SETMASK, [], NULL, 8) = 0
--- SIGCHLD {si_signo=SIGCHLD, si_code=CLD_EXITED, si_pid=54415, si_uid=1000, si_status=0, si_utime=0, si_stime=0} ---
rt_sigreturn({mask=[]})                 = 0
close(4)                                = 0
read(3, "al", 128)                      = 2
read(3, "", 128)                        = 0
close(3)                                = 0
wait4(-1, [{WIFEXITED(s) && WEXITSTATUS(s) == 0}], 0, NULL) = 54415
wait4(-1, 0x7fffe23f156c, WNOHANG, NULL) = -1 ECHILD (No child processes)
pipe2([3, 4], 0)                        = 0
rt_sigprocmask(SIG_BLOCK, ~[], [], 8)   = 0
clone(child_stack=NULL, flags=CLONE_CHILD_CLEARTID|CLONE_CHILD_SETTID|SIGCHLD, child_tidptr=0x7c1a1006ea10) = 54416
rt_sigprocmask(SIG_SETMASK, [], NULL, 8) = 0
--- SIGCHLD {si_signo=SIGCHLD, si_code=CLD_EXITED, si_pid=54416, si_uid=1000, si_status=0, si_utime=0, si_stime=0} ---
rt_sigreturn({mask=[]})                 = 0
close(4)                                = 0
read(3, "cr", 128)                      = 2
read(3, "", 128)                        = 0
close(3)                                = 0
wait4(-1, [{WIFEXITED(s) && WEXITSTATUS(s) == 0}], 0, NULL) = 54416
wait4(-1, 0x7fffe23f156c, WNOHANG, NULL) = -1 ECHILD (No child processes)
pipe2([3, 4], 0)                        = 0
rt_sigprocmask(SIG_BLOCK, ~[], [], 8)   = 0
clone(child_stack=NULL, flags=CLONE_CHILD_CLEARTID|CLONE_CHILD_SETTID|SIGCHLD, child_tidptr=0x7c1a1006ea10) = 54417
rt_sigprocmask(SIG_SETMASK, [], NULL, 8) = 0
--- SIGCHLD {si_signo=SIGCHLD, si_code=CLD_EXITED, si_pid=54417, si_uid=1000, si_status=0, si_utime=0, si_stime=0} ---
rt_sigreturn({mask=[]})                 = 0
close(4)                                = 0
read(3, "dg", 128)                      = 2
read(3, "", 128)                        = 0
close(3)                                = 0
wait4(-1, [{WIFEXITED(s) && WEXITSTATUS(s) == 0}], 0, NULL) = 54417
wait4(-1, 0x7fffe23f156c, WNOHANG, NULL) = -1 ECHILD (No child processes)
pipe2([3, 4], 0)                        = 0
rt_sigprocmask(SIG_BLOCK, ~[], [], 8)   = 0
clone(child_stack=NULL, flags=CLONE_CHILD_CLEARTID|CLONE_CHILD_SETTID|SIGCHLD, child_tidptr=0x7c1a1006ea10) = 54418
rt_sigprocmask(SIG_SETMASK, [], NULL, 8) = 0
--- SIGCHLD {si_signo=SIGCHLD, si_code=CLD_EXITED, si_pid=54418, si_uid=1000, si_status=0, si_utime=0, si_stime=0} ---
rt_sigreturn({mask=[]})                 = 0
close(4)                                = 0
read(3, "di", 128)                      = 2
read(3, "", 128)                        = 0
close(3)                                = 0
wait4(-1, [{WIFEXITED(s) && WEXITSTATUS(s) == 0}], 0, NULL) = 54418
wait4(-1, 0x7fffe23f156c, WNOHANG, NULL) = -1 ECHILD (No child processes)
pipe2([3, 4], 0)                        = 0
rt_sigprocmask(SIG_BLOCK, ~[], [], 8)   = 0
clone(child_stack=NULL, flags=CLONE_CHILD_CLEARTID|CLONE_CHILD_SETTID|SIGCHLD, child_tidptr=0x7c1a1006ea10) = 54419
rt_sigprocmask(SIG_SETMASK, [], NULL, 8) = 0
--- SIGCHLD {si_signo=SIGCHLD, si_code=CLD_EXITED, si_pid=54419, si_uid=1000, si_status=0, si_utime=0, si_stime=0} ---
rt_sigreturn({mask=[]})                 = 0
close(4)                                = 0
read(3, "fb", 128)                      = 2
read(3, "", 128)                        = 0
close(3)                                = 0
wait4(-1, [{WIFEXITED(s) && WEXITSTATUS(s) == 0}], 0, NULL) = 54419
wait4(-1, 0x7fffe23f156c, WNOHANG, NULL) = -1 ECHILD (No child processes)
pipe2([3, 4], 0)                        = 0
rt_sigprocmask(SIG_BLOCK, ~[], [], 8)   = 0
clone(child_stack=NULL, flags=CLONE_CHILD_CLEARTID|CLONE_CHILD_SETTID|SIGCHLD, child_tidptr=0x7c1a1006ea10) = 54420
rt_sigprocmask(SIG_SETMASK, [], NULL, 8) = 0
--- SIGCHLD {si_signo=SIGCHLD, si_code=CLD_EXITED, si_pid=54420, si_uid=1000, si_status=0, si_utime=0, si_stime=0} ---
rt_sigreturn({mask=[]})                 = 0
close(4)                                = 0
read(3, "fe", 128)                      = 2
read(3, "", 128)                        = 0
close(3)                                = 0
wait4(-1, [{WIFEXITED(s) && WEXITSTATUS(s) == 0}], 0, NULL) = 54420
wait4(-1, 0x7fffe23f156c, WNOHANG, NULL) = -1 ECHILD (No child processes)
pipe2([3, 4], 0)                        = 0
rt_sigprocmask(SIG_BLOCK, ~[], [], 8)   = 0
clone(child_stack=NULL, flags=CLONE_CHILD_CLEARTID|CLONE_CHILD_SETTID|SIGCHLD, child_tidptr=0x7c1a1006ea10) = 54421
rt_sigprocmask(SIG_SETMASK, [], NULL, 8) = 0
--- SIGCHLD {si_signo=SIGCHLD, si_code=CLD_EXITED, si_pid=54421, si_uid=1000, si_status=0, si_utime=0, si_stime=0} ---
rt_sigreturn({mask=[]})                 = 0
close(4)                                = 0
read(3, "in", 128)                      = 2
read(3, "", 128)                        = 0
close(3)                                = 0
wait4(-1, [{WIFEXITED(s) && WEXITSTATUS(s) == 0}], 0, NULL) = 54421
wait4(-1, 0x7fffe23f156c, WNOHANG, NULL) = -1 ECHILD (No child processes)
pipe2([3, 4], 0)                        = 0
rt_sigprocmask(SIG_BLOCK, ~[], [], 8)   = 0
clone(child_stack=NULL, flags=CLONE_CHILD_CLEARTID|CLONE_CHILD_SETTID|SIGCHLD, child_tidptr=0x7c1a1006ea10) = 54422
rt_sigprocmask(SIG_SETMASK, [], NULL, 8) = 0
--- SIGCHLD {si_signo=SIGCHLD, si_code=CLD_EXITED, si_pid=54422, si_uid=1000, si_status=0, si_utime=0, si_stime=0} ---
rt_sigreturn({mask=[]})                 = 0
close(4)                                = 0
read(3, "pk", 128)                      = 2
read(3, "", 128)                        = 0
close(3)                                = 0
wait4(-1, [{WIFEXITED(s) && WEXITSTATUS(s) == 0}], 0, NULL) = 54422
wait4(-1, 0x7fffe23f156c, WNOHANG, NULL) = -1 ECHILD (No child processes)
pipe2([3, 4], 0)                        = 0
rt_sigprocmask(SIG_BLOCK, ~[], [], 8)   = 0
clone(child_stack=NULL, flags=CLONE_CHILD_CLEARTID|CLONE_CHILD_SETTID|SIGCHLD, child_tidptr=0x7c1a1006ea10) = 54423
rt_sigprocmask(SIG_SETMASK, [], NULL, 8) = 0
--- SIGCHLD {si_signo=SIGCHLD, si_code=CLD_EXITED, si_pid=54423, si_uid=1000, si_status=0, si_utime=0, si_stime=0} ---
rt_sigreturn({mask=[]})                 = 0
close(4)                                = 0
read(3, "qu", 128)                      = 2
read(3, "", 128)                        = 0
close(3)                                = 0
wait4(-1, [{WIFEXITED(s) && WEXITSTATUS(s) == 0}], 0, NULL) = 54423
wait4(-1, 0x7fffe23f156c, WNOHANG, NULL) = -1 ECHILD (No child processes)
pipe2([3, 4], 0)                        = 0
rt_sigprocmask(SIG_BLOCK, ~[], [], 8)   = 0
clone(child_stack=NULL, flags=CLONE_CHILD_CLEARTID|CLONE_CHILD_SETTID|SIGCHLD, child_tidptr=0x7c1a1006ea10) = 54424
rt_sigprocmask(SIG_SETMASK, [], NULL, 8) = 0
--- SIGCHLD {si_signo=SIGCHLD, si_code=CLD_EXITED, si_pid=54424, si_uid=1000, si_status=0, si_utime=0, si_stime=0} ---
rt_sigreturn({mask=[]})                 = 0
close(4)                                = 0
read(3, "re", 128)                      = 2
read(3, "", 128)                        = 0
close(3)                                = 0
wait4(-1, [{WIFEXITED(s) && WEXITSTATUS(s) == 0}], 0, NULL) = 54424
wait4(-1, 0x7fffe23f156c, WNOHANG, NULL) = -1 ECHILD (No child processes)
pipe2([3, 4], 0)                        = 0
rt_sigprocmask(SIG_BLOCK, ~[], [], 8)   = 0
clone(child_stack=NULL, flags=CLONE_CHILD_CLEARTID|CLONE_CHILD_SETTID|SIGCHLD, child_tidptr=0x7c1a1006ea10) = 54425
rt_sigprocmask(SIG_SETMASK, [], NULL, 8) = 0
--- SIGCHLD {si_signo=SIGCHLD, si_code=CLD_EXITED, si_pid=54425, si_uid=1000, si_status=0, si_utime=0, si_stime=0} ---
rt_sigreturn({mask=[]})                 = 0
close(4)                                = 0
read(3, "ri", 128)                      = 2
read(3, "", 128)                        = 0
close(3)                                = 0
wait4(-1, [{WIFEXITED(s) && WEXITSTATUS(s) == 0}], 0, NULL) = 54425
wait4(-1, 0x7fffe23f156c, WNOHANG, NULL) = -1 ECHILD (No child processes)
pipe2([3, 4], 0)                        = 0
rt_sigprocmask(SIG_BLOCK, ~[], [], 8)   = 0
clone(child_stack=NULL, flags=CLONE_CHILD_CLEARTID|CLONE_CHILD_SETTID|SIGCHLD, child_tidptr=0x7c1a1006ea10) = 54426
rt_sigprocmask(SIG_SETMASK, [], NULL, 8) = 0
--- SIGCHLD {si_signo=SIGCHLD, si_code=CLD_EXITED, si_pid=54426, si_uid=1000, si_status=0, si_utime=0, si_stime=0} ---
rt_sigreturn({mask=[]})                 = 0
close(4)                                = 0
read(3, "uc", 128)                      = 2
read(3, "", 128)                        = 0
close(3)                                = 0
wait4(-1, [{WIFEXITED(s) && WEXITSTATUS(s) == 0}], 0, NULL) = 54426
wait4(-1, 0x7fffe23f156c, WNOHANG, NULL) = -1 ECHILD (No child processes)
pipe2([3, 4], 0)                        = 0
rt_sigprocmask(SIG_BLOCK, ~[], [], 8)   = 0
clone(child_stack=NULL, flags=CLONE_CHILD_CLEARTID|CLONE_CHILD_SETTID|SIGCHLD, child_tidptr=0x7c1a1006ea10) = 54427
rt_sigprocmask(SIG_SETMASK, [], NULL, 8) = 0
--- SIGCHLD {si_signo=SIGCHLD, si_code=CLD_EXITED, si_pid=54427, si_uid=1000, si_status=0, si_utime=0, si_stime=0} ---
rt_sigreturn({mask=[]})                 = 0
close(4)                                = 0
read(3, "uh", 128)                      = 2
read(3, "", 128)                        = 0
close(3)                                = 0
wait4(-1, [{WIFEXITED(s) && WEXITSTATUS(s) == 0}], 0, NULL) = 54427
wait4(-1, 0x7fffe23f156c, WNOHANG, NULL) = -1 ECHILD (No child processes)
pipe2([3, 4], 0)                        = 0
rt_sigprocmask(SIG_BLOCK, ~[], [], 8)   = 0
clone(child_stack=NULL, flags=CLONE_CHILD_CLEARTID|CLONE_CHILD_SETTID|SIGCHLD, child_tidptr=0x7c1a1006ea10) = 54428
rt_sigprocmask(SIG_SETMASK, [], NULL, 8) = 0
--- SIGCHLD {si_signo=SIGCHLD, si_code=CLD_EXITED, si_pid=54428, si_uid=1000, si_status=0, si_utime=0, si_stime=0} ---
rt_sigreturn({mask=[]})                 = 0
close(4)                                = 0
read(3, "uu", 128)                      = 2
read(3, "", 128)                        = 0
close(3)                                = 0
wait4(-1, [{WIFEXITED(s) && WEXITSTATUS(s) == 0}], 0, NULL) = 54428
wait4(-1, 0x7fffe23f156c, WNOHANG, NULL) = -1 ECHILD (No child processes)
pipe2([3, 4], 0)                        = 0
rt_sigprocmask(SIG_BLOCK, ~[], [], 8)   = 0
clone(child_stack=NULL, flags=CLONE_CHILD_CLEARTID|CLONE_CHILD_SETTID|SIGCHLD, child_tidptr=0x7c1a1006ea10) = 54429
rt_sigprocmask(SIG_SETMASK, [], NULL, 8) = 0
close(4)                                = 0
read(3, "alts:alternatives ck:checkvers n"..., 128) = 128
read(3, "c:reconfigure idx:rindex chroot:"..., 128) = 128
--- SIGCHLD {si_signo=SIGCHLD, si_code=CLD_EXITED, si_pid=54429, si_uid=1000, si_status=0, si_utime=0, si_stime=0} ---
rt_sigreturn({mask=[]})                 = 128
read(3, "dgraph di:digest fb:fbulk fe:fet"..., 128) = 128
read(3, "hare\n", 128)                  = 5
read(3, "", 128)                        = 0
close(3)                                = 0
wait4(-1, [{WIFEXITED(s) && WEXITSTATUS(s) == 0}], 0, NULL) = 54429
wait4(-1, 0x7fffe23f168c, WNOHANG, NULL) = -1 ECHILD (No child processes)
pipe2([3, 4], 0)                        = 0
rt_sigprocmask(SIG_BLOCK, ~[], [], 8)   = 0
clone(child_stack=NULL, flags=CLONE_CHILD_CLEARTID|CLONE_CHILD_SETTID|SIGCHLD, child_tidptr=0x7c1a1006ea10) = 54432
rt_sigprocmask(SIG_SETMASK, [], NULL, 8) = 0
close(4)                                = 0
read(3, "-V\n", 128)                    = 3
read(3, "", 128)                        = 0
--- SIGCHLD {si_signo=SIGCHLD, si_code=CLD_EXITED, si_pid=54432, si_uid=1000, si_status=0, si_utime=0, si_stime=0} ---
rt_sigreturn({mask=[]})                 = 0
close(3)                                = 0
wait4(-1, [{WIFEXITED(s) && WEXITSTATUS(s) == 0}], 0, NULL) = 54432
wait4(-1, 0x7fffe23f14ac, WNOHANG, NULL) = -1 ECHILD (No child processes)
pipe2([3, 4], 0)                        = 0
rt_sigprocmask(SIG_BLOCK, ~[], [], 8)   = 0
clone(child_stack=NULL, flags=CLONE_CHILD_CLEARTID|CLONE_CHILD_SETTID|SIGCHLD, child_tidptr=0x7c1a1006ea10) = 54435
rt_sigprocmask(SIG_SETMASK, [], NULL, 8) = 0
close(4)                                = 0
read(3, "help\n", 128)                  = 5
--- SIGCHLD {si_signo=SIGCHLD, si_code=CLD_EXITED, si_pid=54435, si_uid=1000, si_status=0, si_utime=0, si_stime=0} ---
rt_sigreturn({mask=[]})                 = 1
read(3, "", 128)                        = 0
close(3)                                = 0
wait4(-1, [{WIFEXITED(s) && WEXITSTATUS(s) == 0}], 0, NULL) = 54435
wait4(-1, 0x7fffe23f135c, WNOHANG, NULL) = -1 ECHILD (No child processes)
write(1, "XBPS Program Wrapper\nUsage: xpw "..., 181) = 181
pipe2([3, 4], 0)                        = 0
rt_sigprocmask(SIG_BLOCK, ~[], [], 8)   = 0
clone(child_stack=NULL, flags=CLONE_CHILD_CLEARTID|CLONE_CHILD_SETTID|SIGCHLD, child_tidptr=0x7c1a1006ea10) = 54440
rt_sigprocmask(SIG_SETMASK, [], NULL, 8) = 0
--- SIGCHLD {si_signo=SIGCHLD, si_code=CLD_EXITED, si_pid=54440, si_uid=1000, si_status=0, si_utime=0, si_stime=0} ---
rt_sigreturn({mask=[]})                 = 0
close(4)                                = 0
read(3, "al", 128)                      = 2
read(3, "", 128)                        = 0
close(3)                                = 0
wait4(-1, [{WIFEXITED(s) && WEXITSTATUS(s) == 0}], 0, NULL) = 54440
wait4(-1, 0x7fffe23f107c, WNOHANG, NULL) = -1 ECHILD (No child processes)
pipe2([3, 4], 0)                        = 0
rt_sigprocmask(SIG_BLOCK, ~[], [], 8)   = 0
clone(child_stack=NULL, flags=CLONE_CHILD_CLEARTID|CLONE_CHILD_SETTID|SIGCHLD, child_tidptr=0x7c1a1006ea10) = 54441
rt_sigprocmask(SIG_SETMASK, [], NULL, 8) = 0
--- SIGCHLD {si_signo=SIGCHLD, si_code=CLD_EXITED, si_pid=54441, si_uid=1000, si_status=0, si_utime=0, si_stime=0} ---
rt_sigreturn({mask=[]})                 = 0
close(4)                                = 0
read(3, "cr", 128)                      = 2
read(3, "", 128)                        = 0
close(3)                                = 0
wait4(-1, [{WIFEXITED(s) && WEXITSTATUS(s) == 0}], 0, NULL) = 54441
wait4(-1, 0x7fffe23f107c, WNOHANG, NULL) = -1 ECHILD (No child processes)
pipe2([3, 4], 0)                        = 0
rt_sigprocmask(SIG_BLOCK, ~[], [], 8)   = 0
clone(child_stack=NULL, flags=CLONE_CHILD_CLEARTID|CLONE_CHILD_SETTID|SIGCHLD, child_tidptr=0x7c1a1006ea10) = 54442
rt_sigprocmask(SIG_SETMASK, [], NULL, 8) = 0
--- SIGCHLD {si_signo=SIGCHLD, si_code=CLD_EXITED, si_pid=54442, si_uid=1000, si_status=0, si_utime=0, si_stime=0} ---
rt_sigreturn({mask=[]})                 = 0
close(4)                                = 0
read(3, "dg", 128)                      = 2
read(3, "", 128)                        = 0
close(3)                                = 0
wait4(-1, [{WIFEXITED(s) && WEXITSTATUS(s) == 0}], 0, NULL) = 54442
wait4(-1, 0x7fffe23f107c, WNOHANG, NULL) = -1 ECHILD (No child processes)
pipe2([3, 4], 0)                        = 0
rt_sigprocmask(SIG_BLOCK, ~[], [], 8)   = 0
clone(child_stack=NULL, flags=CLONE_CHILD_CLEARTID|CLONE_CHILD_SETTID|SIGCHLD, child_tidptr=0x7c1a1006ea10) = 54443
rt_sigprocmask(SIG_SETMASK, [], NULL, 8) = 0
--- SIGCHLD {si_signo=SIGCHLD, si_code=CLD_EXITED, si_pid=54443, si_uid=1000, si_status=0, si_utime=0, si_stime=0} ---
rt_sigreturn({mask=[]})                 = 0
close(4)                                = 0
read(3, "di", 128)                      = 2
read(3, "", 128)                        = 0
close(3)                                = 0
wait4(-1, [{WIFEXITED(s) && WEXITSTATUS(s) == 0}], 0, NULL) = 54443
wait4(-1, 0x7fffe23f107c, WNOHANG, NULL) = -1 ECHILD (No child processes)
pipe2([3, 4], 0)                        = 0
rt_sigprocmask(SIG_BLOCK, ~[], [], 8)   = 0
clone(child_stack=NULL, flags=CLONE_CHILD_CLEARTID|CLONE_CHILD_SETTID|SIGCHLD, child_tidptr=0x7c1a1006ea10) = 54444
rt_sigprocmask(SIG_SETMASK, [], NULL, 8) = 0
--- SIGCHLD {si_signo=SIGCHLD, si_code=CLD_EXITED, si_pid=54444, si_uid=1000, si_status=0, si_utime=0, si_stime=0} ---
rt_sigreturn({mask=[]})                 = 0
close(4)                                = 0
read(3, "fb", 128)                      = 2
read(3, "", 128)                        = 0
close(3)                                = 0
wait4(-1, [{WIFEXITED(s) && WEXITSTATUS(s) == 0}], 0, NULL) = 54444
wait4(-1, 0x7fffe23f107c, WNOHANG, NULL) = -1 ECHILD (No child processes)
pipe2([3, 4], 0)                        = 0
rt_sigprocmask(SIG_BLOCK, ~[], [], 8)   = 0
clone(child_stack=NULL, flags=CLONE_CHILD_CLEARTID|CLONE_CHILD_SETTID|SIGCHLD, child_tidptr=0x7c1a1006ea10) = 54445
rt_sigprocmask(SIG_SETMASK, [], NULL, 8) = 0
--- SIGCHLD {si_signo=SIGCHLD, si_code=CLD_EXITED, si_pid=54445, si_uid=1000, si_status=0, si_utime=0, si_stime=0} ---
rt_sigreturn({mask=[]})                 = 0
close(4)                                = 0
read(3, "fe", 128)                      = 2
read(3, "", 128)                        = 0
close(3)                                = 0
wait4(-1, [{WIFEXITED(s) && WEXITSTATUS(s) == 0}], 0, NULL) = 54445
wait4(-1, 0x7fffe23f107c, WNOHANG, NULL) = -1 ECHILD (No child processes)
pipe2([3, 4], 0)                        = 0
rt_sigprocmask(SIG_BLOCK, ~[], [], 8)   = 0
clone(child_stack=NULL, flags=CLONE_CHILD_CLEARTID|CLONE_CHILD_SETTID|SIGCHLD, child_tidptr=0x7c1a1006ea10) = 54446
rt_sigprocmask(SIG_SETMASK, [], NULL, 8) = 0
--- SIGCHLD {si_signo=SIGCHLD, si_code=CLD_EXITED, si_pid=54446, si_uid=1000, si_status=0, si_utime=0, si_stime=0} ---
rt_sigreturn({mask=[]})                 = 0
close(4)                                = 0
read(3, "in", 128)                      = 2
read(3, "", 128)                        = 0
close(3)                                = 0
wait4(-1, [{WIFEXITED(s) && WEXITSTATUS(s) == 0}], 0, NULL) = 54446
wait4(-1, 0x7fffe23f107c, WNOHANG, NULL) = -1 ECHILD (No child processes)
pipe2([3, 4], 0)                        = 0
rt_sigprocmask(SIG_BLOCK, ~[], [], 8)   = 0
clone(child_stack=NULL, flags=CLONE_CHILD_CLEARTID|CLONE_CHILD_SETTID|SIGCHLD, child_tidptr=0x7c1a1006ea10) = 54447
rt_sigprocmask(SIG_SETMASK, [], NULL, 8) = 0
--- SIGCHLD {si_signo=SIGCHLD, si_code=CLD_EXITED, si_pid=54447, si_uid=1000, si_status=0, si_utime=0, si_stime=0} ---
rt_sigreturn({mask=[]})                 = 0
close(4)                                = 0
read(3, "pk", 128)                      = 2
read(3, "", 128)                        = 0
close(3)                                = 0
wait4(-1, [{WIFEXITED(s) && WEXITSTATUS(s) == 0}], 0, NULL) = 54447
wait4(-1, 0x7fffe23f107c, WNOHANG, NULL) = -1 ECHILD (No child processes)
pipe2([3, 4], 0)                        = 0
rt_sigprocmask(SIG_BLOCK, ~[], [], 8)   = 0
clone(child_stack=NULL, flags=CLONE_CHILD_CLEARTID|CLONE_CHILD_SETTID|SIGCHLD, child_tidptr=0x7c1a1006ea10) = 54448
rt_sigprocmask(SIG_SETMASK, [], NULL, 8) = 0
--- SIGCHLD {si_signo=SIGCHLD, si_code=CLD_EXITED, si_pid=54448, si_uid=1000, si_status=0, si_utime=0, si_stime=0} ---
rt_sigreturn({mask=[]})                 = 0
close(4)                                = 0
read(3, "qu", 128)                      = 2
read(3, "", 128)                        = 0
close(3)                                = 0
wait4(-1, [{WIFEXITED(s) && WEXITSTATUS(s) == 0}], 0, NULL) = 54448
wait4(-1, 0x7fffe23f107c, WNOHANG, NULL) = -1 ECHILD (No child processes)
pipe2([3, 4], 0)                        = 0
rt_sigprocmask(SIG_BLOCK, ~[], [], 8)   = 0
clone(child_stack=NULL, flags=CLONE_CHILD_CLEARTID|CLONE_CHILD_SETTID|SIGCHLD, child_tidptr=0x7c1a1006ea10) = 54449
rt_sigprocmask(SIG_SETMASK, [], NULL, 8) = 0
--- SIGCHLD {si_signo=SIGCHLD, si_code=CLD_EXITED, si_pid=54449, si_uid=1000, si_status=0, si_utime=0, si_stime=0} ---
rt_sigreturn({mask=[]})                 = 0
close(4)                                = 0
read(3, "re", 128)                      = 2
read(3, "", 128)                        = 0
close(3)                                = 0
wait4(-1, [{WIFEXITED(s) && WEXITSTATUS(s) == 0}], 0, NULL) = 54449
wait4(-1, 0x7fffe23f107c, WNOHANG, NULL) = -1 ECHILD (No child processes)
pipe2([3, 4], 0)                        = 0
rt_sigprocmask(SIG_BLOCK, ~[], [], 8)   = 0
clone(child_stack=NULL, flags=CLONE_CHILD_CLEARTID|CLONE_CHILD_SETTID|SIGCHLD, child_tidptr=0x7c1a1006ea10) = 54450
rt_sigprocmask(SIG_SETMASK, [], NULL, 8) = 0
--- SIGCHLD {si_signo=SIGCHLD, si_code=CLD_EXITED, si_pid=54450, si_uid=1000, si_status=0, si_utime=0, si_stime=0} ---
rt_sigreturn({mask=[]})                 = 0
close(4)                                = 0
read(3, "ri", 128)                      = 2
read(3, "", 128)                        = 0
close(3)                                = 0
wait4(-1, [{WIFEXITED(s) && WEXITSTATUS(s) == 0}], 0, NULL) = 54450
wait4(-1, 0x7fffe23f107c, WNOHANG, NULL) = -1 ECHILD (No child processes)
pipe2([3, 4], 0)                        = 0
rt_sigprocmask(SIG_BLOCK, ~[], [], 8)   = 0
clone(child_stack=NULL, flags=CLONE_CHILD_CLEARTID|CLONE_CHILD_SETTID|SIGCHLD, child_tidptr=0x7c1a1006ea10) = 54451
rt_sigprocmask(SIG_SETMASK, [], NULL, 8) = 0
--- SIGCHLD {si_signo=SIGCHLD, si_code=CLD_EXITED, si_pid=54451, si_uid=1000, si_status=0, si_utime=0, si_stime=0} ---
rt_sigreturn({mask=[]})                 = 0
close(4)                                = 0
read(3, "uc", 128)                      = 2
read(3, "", 128)                        = 0
close(3)                                = 0
wait4(-1, [{WIFEXITED(s) && WEXITSTATUS(s) == 0}], 0, NULL) = 54451
wait4(-1, 0x7fffe23f107c, WNOHANG, NULL) = -1 ECHILD (No child processes)
pipe2([3, 4], 0)                        = 0
rt_sigprocmask(SIG_BLOCK, ~[], [], 8)   = 0
clone(child_stack=NULL, flags=CLONE_CHILD_CLEARTID|CLONE_CHILD_SETTID|SIGCHLD, child_tidptr=0x7c1a1006ea10) = 54452
rt_sigprocmask(SIG_SETMASK, [], NULL, 8) = 0
--- SIGCHLD {si_signo=SIGCHLD, si_code=CLD_EXITED, si_pid=54452, si_uid=1000, si_status=0, si_utime=0, si_stime=0} ---
rt_sigreturn({mask=[]})                 = 0
close(4)                                = 0
read(3, "uh", 128)                      = 2
read(3, "", 128)                        = 0
close(3)                                = 0
wait4(-1, [{WIFEXITED(s) && WEXITSTATUS(s) == 0}], 0, NULL) = 54452
wait4(-1, 0x7fffe23f107c, WNOHANG, NULL) = -1 ECHILD (No child processes)
pipe2([3, 4], 0)                        = 0
rt_sigprocmask(SIG_BLOCK, ~[], [], 8)   = 0
clone(child_stack=NULL, flags=CLONE_CHILD_CLEARTID|CLONE_CHILD_SETTID|SIGCHLD, child_tidptr=0x7c1a1006ea10) = 54453
rt_sigprocmask(SIG_SETMASK, [], NULL, 8) = 0
--- SIGCHLD {si_signo=SIGCHLD, si_code=CLD_EXITED, si_pid=54453, si_uid=1000, si_status=0, si_utime=0, si_stime=0} ---
rt_sigreturn({mask=[]})                 = 0
close(4)                                = 0
read(3, "uu", 128)                      = 2
read(3, "", 128)                        = 0
close(3)                                = 0
wait4(-1, [{WIFEXITED(s) && WEXITSTATUS(s) == 0}], 0, NULL) = 54453
wait4(-1, 0x7fffe23f107c, WNOHANG, NULL) = -1 ECHILD (No child processes)
write(1, "  al -> alternatives\n  cv -> che"..., 255) = 255
write(1, "\nExamples: \n  xpw al <args> -> x"..., 172) = 172
read(10, "", 8192)                      = 0
read(10, "", 8192)                      = 0
exit_group(0)                           = ?
+++ exited with 0 +++
