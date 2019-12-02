#include <stdio.h>
#include <stdlib.h>
#include <math.h>
#include "TutorialConfig.h"
#include "MathFunctions.h"

int main(int argc, char* argv[])
{
    if (argc < 2) {
	    fprintf(stderr, "the version %d.%d\n", TUTORIAL_VERSION_MAJOR, TUTORIAL_VERSION_MINOR);
	    fprintf(stderr, "usage: %s number\n", argv[0]);
		return 1;
	}

	float f = atof(argv[1]);

	float r = mysqrt(f);

	fprintf(stdout, "The %g sqrt is %g.\n",f, r);

	return 0;
}
