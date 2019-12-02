#include <stdio.h>
#include <stdlib.h>
#include <math.h>

int main(int argc, char* argv[])
{
    if (argc < 2) {
	    fprintf(stderr, "usage: %s number\n", argv[0]);
		return 1;
	}

	float f = atof(argv[1]);
	float r = sqrt(f);

	fprintf(stdout, "The %g sqrt is %g.\n",f, r);

	return 0;
}
