## EXERCISE 1

1. SSH to server1
2. Run the following command: 
```bash
curl http://www.textfiles.com/art/bnbascii.txt
```
3. What went wrong? Fix the issue and add the command that fixes the issue to `exercise1-fix.sh`

There was a route for 208.86.224.90 to interface enp0s8 instead of using the default gateway via enp0s3
# route -n
Kernel IP routing table
Destination     Gateway         Genmask         Flags Metric Ref    Use Iface
0.0.0.0         10.0.2.2        0.0.0.0         UG    100    0        0 enp0s3
10.0.2.0        0.0.0.0         255.255.255.0   U     0      0        0 enp0s3
10.0.2.2        0.0.0.0         255.255.255.255 UH    100    0        0 enp0s3
192.168.100.0   0.0.0.0         255.255.255.0   U     0      0        0 enp0s8
208.86.224.90   0.0.0.0         255.255.255.255 UH    0      0        0 enp0s8

Fixed by running the below command to delete this route:

ip route del 208.86.224.90/32

> Once you're done continue to the next exercise

[Next: **Exercise 2 ** ➡️](exercise-2.md)