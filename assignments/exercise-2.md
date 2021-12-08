## EXERCISE 2

1. SSH to server1
2. Run the following command: 
```bash
curl http://www.ascii-art.de/ascii/ab/007.txt
```
3. What went wrong? Fix the issue and add the command that fixes the issue to `exercise2-fix.sh`

127.0.0.1 www.ascii-art.de was added to /etc/hosts

Fixed by removing the line for 127.0.0.1 from /etc/hosts:

sed '/^127\.0\.0\.1[[:space:]]/d' /etc/hosts > /etc/hosts.new
cat /etc/hosts.new > /etc/hosts
rm /etc/hosts.new

> Once you're done continue to the next exercise

[Next: **Exercise 3 ** ➡️](exercise-3.md)