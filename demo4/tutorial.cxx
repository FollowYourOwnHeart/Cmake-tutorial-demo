#include <stdio.h>
#include <stdlib.h>
#include <math.h>
#include "TutorialConfig.h"
#ifdef USE_MYMATH
#include "MathFunctions.h"
#endif //USE_MYMATH

int main(int argc, char* argv[])
{
    if (argc < 2) {
	    fprintf(stderr, "the version %d.%d\n", TUTORIAL_VERSION_MAJOR, TUTORIAL_VERSION_MINOR);
	    fprintf(stderr, "usage: %s number\n", argv[0]);
		return 1;
	}

	float f = atof(argv[1]);

#ifdef USE_MYMATH
	float r = mysqrt(f);
	printf("this is mysqrt\n");
#else
	float r = sqrt(f);
	printf("this is sqrt\n");
#endif

	fprintf(stdout, "The %g sqrt is %g.\n",f, r);

	return 0;
}
