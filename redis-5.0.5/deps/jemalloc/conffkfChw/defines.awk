BEGIN {
D["PACKAGE_NAME"]=" \"\""
D["PACKAGE_TARNAME"]=" \"\""
D["PACKAGE_VERSION"]=" \"\""
D["PACKAGE_STRING"]=" \"\""
D["PACKAGE_BUGREPORT"]=" \"\""
D["PACKAGE_URL"]=" \"\""
D["JEMALLOC_HAS_RESTRICT"]=" 1"
D["HAVE_CXX14"]=" 1"
D["STDC_HEADERS"]=" 1"
D["HAVE_SYS_TYPES_H"]=" 1"
D["HAVE_SYS_STAT_H"]=" 1"
D["HAVE_STDLIB_H"]=" 1"
D["HAVE_STRING_H"]=" 1"
D["HAVE_MEMORY_H"]=" 1"
D["HAVE_STRINGS_H"]=" 1"
D["HAVE_INTTYPES_H"]=" 1"
D["HAVE_STDINT_H"]=" 1"
D["HAVE_UNISTD_H"]=" 1"
D["SIZEOF_VOID_P"]=" 8"
D["LG_SIZEOF_PTR"]=" 3"
D["SIZEOF_INT"]=" 4"
D["LG_SIZEOF_INT"]=" 2"
D["SIZEOF_LONG"]=" 8"
D["LG_SIZEOF_LONG"]=" 3"
D["SIZEOF_LONG_LONG"]=" 8"
D["LG_SIZEOF_LONG_LONG"]=" 3"
D["SIZEOF_INTMAX_T"]=" 8"
D["LG_SIZEOF_INTMAX_T"]=" 3"
D["HAVE_CPU_SPINWAIT"]=" 1"
D["CPU_SPINWAIT"]=" __asm__ volatile(\"pause\")"
D["LG_VADDR"]=" 48"
D["LG_VADDR"]=" 48"
D["JEMALLOC_PURGE_MADVISE_DONTNEED_ZEROS"]=" "
D["JEMALLOC_HAS_ALLOCA_H"]=" 1"
D["JEMALLOC_PROC_SYS_VM_OVERCOMMIT_MEMORY"]=" "
D["JEMALLOC_THREADED_INIT"]=" "
D["JEMALLOC_USE_CXX_THROW"]=" "
D["HAVE_MALLOC_H"]=" 1"
D["JEMALLOC_USABLE_SIZE_CONST"]=" "
D["JEMALLOC_HAVE_ATTR"]=" "
D["JEMALLOC_HAVE_ATTR_ALLOC_SIZE"]=" "
D["JEMALLOC_HAVE_ATTR_FORMAT_GNU_PRINTF"]=" "
D["JEMALLOC_HAVE_ATTR_FORMAT_PRINTF"]=" "
D["JEMALLOC_PREFIX"]=" \"je_\""
D["JEMALLOC_CPREFIX"]=" \"JE_\""
D["JEMALLOC_OVERRIDE_MEMALIGN"]=" "
D["JEMALLOC_OVERRIDE_VALLOC"]=" "
D["JEMALLOC_PRIVATE_NAMESPACE"]=" je_"
D["JEMALLOC_CONFIG_MALLOC_CONF"]=" \"\""
D["JEMALLOC_STATS"]=" "
D["JEMALLOC_MAPS_COALESCE"]=" "
D["JEMALLOC_RETAIN"]=" "
D["JEMALLOC_DSS"]=" "
D["JEMALLOC_FILL"]=" "
D["JEMALLOC_CACHE_OBLIVIOUS"]=" "
D["JEMALLOC_INTERNAL_UNREACHABLE"]=" __builtin_unreachable"
D["JEMALLOC_INTERNAL_FFSLL"]=" __builtin_ffsll"
D["JEMALLOC_INTERNAL_FFSL"]=" __builtin_ffsl"
D["JEMALLOC_INTERNAL_FFS"]=" __builtin_ffs"
D["LG_QUANTUM"]=" 3"
D["LG_PAGE"]=" 12"
D["LG_HUGEPAGE"]=" 21"
D["JEMALLOC_HAVE_PTHREAD"]=" "
D["HAVE_PTHREAD_H"]=" 1"
D["HAVE_DLFCN_H"]=" 1"
D["JEMALLOC_HAVE_DLSYM"]=" "
D["JEMALLOC_HAVE_PTHREAD_ATFORK"]=" "
D["JEMALLOC_HAVE_PTHREAD_SETNAME_NP"]=" "
D["JEMALLOC_HAVE_CLOCK_MONOTONIC_COARSE"]=" 1"
D["JEMALLOC_HAVE_CLOCK_MONOTONIC"]=" 1"
D["JEMALLOC_USE_SYSCALL"]=" "
D["JEMALLOC_HAVE_SECURE_GETENV"]=" "
D["JEMALLOC_HAVE_SCHED_GETCPU"]=" "
D["JEMALLOC_HAVE_SCHED_SETAFFINITY"]=" "
D["JEMALLOC_TLS"]=" "
D["JEMALLOC_GCC_ATOMIC_ATOMICS"]=" 1"
D["JEMALLOC_GCC_SYNC_ATOMICS"]=" 1"
D["JEMALLOC_HAVE_MADVISE"]=" "
D["JEMALLOC_PURGE_MADVISE_FREE"]=" "
D["JEMALLOC_DEFINE_MADVISE_FREE"]=" "
D["JEMALLOC_PURGE_MADVISE_DONTNEED"]=" "
D["JEMALLOC_MADVISE_DONTDUMP"]=" "
D["JEMALLOC_HAVE_MADVISE_HUGE"]=" "
D["JEMALLOC_HAVE_BUILTIN_CLZ"]=" "
D["JEMALLOC_TLS_MODEL"]=" __attribute__((tls_model(\"initial-exec\")))"
D["JEMALLOC_BACKGROUND_THREAD"]=" 1"
D["JEMALLOC_HAVE_PTHREAD_MUTEX_ADAPTIVE_NP"]=" "
D["JEMALLOC_STRERROR_R_RETURNS_CHAR_WITH_GNU_SOURCE"]=" "
D["HAVE__BOOL"]=" 1"
D["HAVE_STDBOOL_H"]=" 1"
  for (key in D) D_is_set[key] = 1
  FS = ""
}
/^[\t ]*#[\t ]*(define|undef)[\t ]+[_abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ][_abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789]*([\t (]|$)/ {
  line = $ 0
  split(line, arg, " ")
  if (arg[1] == "#") {
    defundef = arg[2]
    mac1 = arg[3]
  } else {
    defundef = substr(arg[1], 2)
    mac1 = arg[2]
  }
  split(mac1, mac2, "(") #)
  macro = mac2[1]
  prefix = substr(line, 1, index(line, defundef) - 1)
  if (D_is_set[macro]) {
    # Preserve the white space surrounding the "#".
    print prefix "define", macro P[macro] D[macro]
    next
  } else {
    # Replace #undef with comments.  This is necessary, for example,
    # in the case of _POSIX_SOURCE, which is predefined and required
    # on some systems where configure will not decide to define it.
    if (defundef == "undef") {
      print "/*", prefix defundef, macro, "*/"
      next
    }
  }
}
{ print }
