#include <stdio.h>
#include <stdlib.h>
#include <math.h>

int main(int argc, char* argv[])
{
    int i;
	double result;

	if (argc < 2) {
	    return 1;
	}

	FILE* fout = fopen(argv[1], "w");
	if (fout == NULL) {
	    return 1;
	}

	fprintf(fout, "double sqrtTable[] = {\n");
	for (int i = 0; i < 10; i++) {
	    result = sqrt(static_cast<double>(i));
		fprintf(fout, "%g,\n", result);
	}

	fprintf(fout, "0};\n");
	fclose(fout);
	return 0;
}
