clean:
        rm *.o

clean-up:
	find / -type d -name ".terraform" -exec rm -rf {} \;
