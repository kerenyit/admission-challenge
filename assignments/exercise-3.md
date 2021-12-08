## EXERCISE 2

1. Open your web browser at: http://192.168.100.10/
2. You should see a message from OpsSchool
3. What did you get? Fix the issue and add the command that fixes the issue to `exercise3-fix.sh`

Message is "Forbidden You don't have permission to access this resource."

Fixed by changing "Require all denied" to "Require all granted" in:
/etc/apache2/sites-enabled/000-default.conf
And restart apache2 service

> Once you're done continue to the next exercise

[Next: **Exercise 4 ** ➡️](exercise-4.md)