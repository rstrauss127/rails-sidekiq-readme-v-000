/* confdefs.h */
#define PACKAGE_NAME ""
#define PACKAGE_TARNAME ""
#define PACKAGE_VERSION ""
#define PACKAGE_STRING ""
#define PACKAGE_BUGREPORT ""
#define PACKAGE_URL ""
#define JEMALLOC_HAS_RESTRICT 1
#define HAVE_CXX14 1
#define STDC_HEADERS 1
#define HAVE_SYS_TYPES_H 1
#define HAVE_SYS_STAT_H 1
#define HAVE_STDLIB_H 1
#define HAVE_STRING_H 1
#define HAVE_MEMORY_H 1
#define HAVE_STRINGS_H 1
#define HAVE_INTTYPES_H 1
#define HAVE_STDINT_H 1
#define HAVE_UNISTD_H 1
#define SIZEOF_VOID_P 8
#define LG_SIZEOF_PTR 3
#define SIZEOF_INT 4
#define LG_SIZEOF_INT 2
#define SIZEOF_LONG 8
#define LG_SIZEOF_LONG 3
#define SIZEOF_LONG_LONG 8
#define LG_SIZEOF_LONG_LONG 3
/* end confdefs.h.  */
#include <stdio.h>
#ifdef HAVE_SYS_TYPES_H
# include <sys/types.h>
#endif
#ifdef HAVE_SYS_STAT_H
# include <sys/stat.h>
#endif
#ifdef STDC_HEADERS
# include <stdlib.h>
# include <stddef.h>
#else
# ifdef HAVE_STDLIB_H
#  include <stdlib.h>
# endif
#endif
#ifdef HAVE_STRING_H
# if !defined STDC_HEADERS && defined HAVE_MEMORY_H
#  include <memory.h>
# endif
# include <string.h>
#endif
#ifdef HAVE_STRINGS_H
# include <strings.h>
#endif
#ifdef HAVE_INTTYPES_H
# include <inttypes.h>
#endif
#ifdef HAVE_STDINT_H
# include <stdint.h>
#endif
#ifdef HAVE_UNISTD_H
# include <unistd.h>
#endif
static long int longval () { return (long int) (sizeof (intmax_t)); }
static unsigned long int ulongval () { return (long int) (sizeof (intmax_t)); }
#include <stdio.h>
#include <stdlib.h>
int
main ()
{

  FILE *f = fopen ("conftest.val", "w");
  if (! f)
    return 1;
  if (((long int) (sizeof (intmax_t))) < 0)
    {
      long int i = longval ();
      if (i != ((long int) (sizeof (intmax_t))))
	return 1;
      fprintf (f, "%ld", i);
    }
  else
    {
      unsigned long int i = ulongval ();
      if (i != ((long int) (sizeof (intmax_t))))
	return 1;
      fprintf (f, "%lu", i);
    }
  /* Do not output a trailing newline, as this causes \r\n confusion
     on some platforms.  */
  return ferror (f) || fclose (f) != 0;

  ;
  return 0;
}
