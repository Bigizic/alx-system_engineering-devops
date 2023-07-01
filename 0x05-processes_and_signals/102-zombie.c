#include <stdio.h>
#include <stdlib.h>
#include <unistd.h>
#include <sys/types.h>
/* header */



/** infinite_while - infinite while loop
 *
 * Return: void
 */
int infinite_while(void)
{
	while (1)
	{
		sleep(1);
	}
	return (0);
}



/**
 * main - main entry
 *
 * Return: 0 if success
 */

int main()
{
	pid_t child_pid;
	int count;

	for (count = 0; count < 5; count++)
	{
		child_pid = fork();
		if (child_pid == 0)
		{
			printf("Zombie process created, PID: %d\n", getpid());
			exit(0);
		}
		else if (child_pid < 0)
		{
			perror("Error: couldn't create zombies\n");
			exit(1);
		}
	}
	infinite_while();

	return (0);
}
