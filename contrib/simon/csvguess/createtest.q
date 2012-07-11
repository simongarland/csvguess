/ create a test csv with most types 
\P 0
n:100
test:([]typeb:n?0b;typeg:n?0Ng;typex:n?0x00;typeh:n?0h;typei:n?0i;typej:n?0j;typee:n?1234e;typef:n?1234567f;typec:n?" ";types:n?`7;typep:n?.z.p;typem:n?`month$.z.p;typed:n?`date$.z.p;typez:n?.z.z;typen:n?.z.n;typeu:n?`minute$.z.p;typev:n?`second$.z.p;typet:n?.z.t)
save`:test.csv
\\
\
b    1     1    0b                   boolean              Boolean    boolean   
g    16    2    0Ng                  guid                 UUID       GUID
x    1     4    0x0                  byte                 Byte       byte      
h    2     5    0h                   short     smallint   Short      int16     
i    4     6    0                    int       int        Integer    int32     
j    8     7    0j                   long      bigint     Long       int64     
e    4     8    0e                   real      real       Float      single    
f    8     9    0.0                  float     float      Double     double    
c    1     10   " "                  char                 Character  char
s    .     11   `                    symbol    varchar    String     string    
p    8     12   dateDtimespan        timestamp
m    4     13   2000.01m             month
d    4     14   2000.01.01           date      date       Date                 
z    8     15   dateTtime            datetime  timestamp  Timestamp  DateTime
n    8     16   0D00:00:00.000000000 timespan
u    4     17   00:00                minute
v    4     18   00:00:00             second
t    4     19   00:00:00.000         time      time       Time       TimeSpan 
