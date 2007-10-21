n:255
n3:floor n%3
test:([]bbb:n?0b)
tmp:update xxx:n?0x0 from`test
tmp:update hhh:n?0h from`test
tmp:update hhg:`g#n#n3?0h from`test
tmp:update iii:n?0i from`test
tmp:update iig:`g#n#n3?0i from`test
tmp:update iis:asc n#n3?0i from`test
tmp:update iip:`p#iis from`test
tmp:update iiu:`u#(neg n)?2*n from`test
tmp:update jjj:n?0j from`test
tmp:update jjg:`g#n#n3?0j from`test
tmp:update eee:n?9999e from`test
tmp:update fff:n?99999999f from`test
tmp:update ccc:n?" " from`test
tmp:update sss:n?`7 from`test
tmp:update ssg:`g#n#n3?`7 from`test
tmp:update ss3:`g#n#3?`7 from`test
tmp:update mmm:n?2007.01m from`test
tmp:update mm1:200701+n?12 from`test
tmp:update yyy:2000+n?20 from`test
tmp:update ddd:n?.z.d from`test
tmp:update zzz:n?.z.z from`test
tmp:update uuu:n?23:59 from`test
tmp:update uu1:2100+n?60 from`test
tmp:update vvv:n?23:59:59 from`test
tmp:update vv1:212200+n?60 from`test
tmp:update ttt:n?.z.t from`test

save`:test.csv
