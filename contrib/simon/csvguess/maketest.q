n:255
n3:floor n%3
test:([]bbb:n?0b)
update xxx:n?0x0 from`test;
update hhh:n?0h from`test;
update hhg:`g#n#n3?0h from`test;
update iii:n?0i from`test;
update iig:`g#n#n3?0i from`test;
update iis:asc n#n3?0i from`test;
update iip:`p#iis from`test;
update iiu:`u#(neg n)?99999999i from`test;
update jjj:n?0j from`test;
update jjg:`g#n#n3?0j from`test;
update eee:n?9999e from`test;
update fff:n?99999999f from`test;
update ccc:n?" " from`test;
update sss:n?`7 from`test;
update ssg:`g#n#n3?`7 from`test;
update ss3:`g#n#3?`7 from`test;
update mmm:n?2007.01m from`test;
update mm1:200701+n?12 from`test;
update yyy:2000+n?20 from`test;
update ddd:n?.z.d from`test;
update zzz:n?.z.z from`test;
update uuu:n?23:59 from`test;
update uu1:2100+n?60 from`test;
update vvv:n?23:59:59 from`test;
update vv1:212200+n?60 from`test;
update ttt:n?.z.t from`test;
update ppp:.z.p+n?10000000000j from`test;
update nnn:.z.n+n?10000000000j from`test;

save`:test.csv
`:db/test/ set .Q.en[`:db]test 
\\
