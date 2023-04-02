#include <stdio.h>
#include <time.h>

int main()
{
	int num;
	time_t hour;
	struct tm * timeStruct;
	hour = time(NULL);
	timeStruct = localtime(&hour);
	num = timeStruct->tm_hour;
	printf("Current hour: %d %d %d\n", num, num+1, num+2);
	FILE *file = fopen("output.txt", "w");
	if(file == NULL)
	{
		printf("[-] Unable to open file");
		return -1;
	}
	fprintf(file, "%d\n%d\n%d\n", num, num+1, num+2);
	

}