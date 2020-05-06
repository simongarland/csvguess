# csvguess
utilities for loading CSVs

guess CSV loadstrings by inspecting the data, and after tweaking the column definitions. Generate a loader script (csvguess.q) or simply load the data (csvutil.q) 

see: https://code.kx.com/q/ref/file-text/ for the vanilla CSV loading primitives.

### csvutil.q

a collection of utilities to load CSVs

.csv.colhdrs[file] - return a list of colhdrs from file

 info:.csv.info[file] - return a table of information about the file
 columns are:
 
	- c - column name
	- ci - column index 
	- t - load type; mw - max width
	- dchar - distinct characters in values
	- rules - rules that caught the type
	- maybe - needs checking, _could_ be say a date, but perhaps just a float?

 .csv.info0[file;onlycols] - like .csv.info except that it only analyses <onlycols>

 example:
 
```	
	info:.csv.info0[file;(.csv.colhdrs file)like"*price"]

	info:.csv.infolike[file;"*price"]
	
	show delete from info where t=" "
```

 .csv.data[file;info] - use the info from .csv.info to read the data

 .csv.data10[file;info] - like .csv.data but only returns the first 10 rows

 bulkload[file;info] - bulk loads file into table DATA (which must be already defined :: DATA:() )

 .csv.read[file]/read10[file] - for when you don't care about checking/tweaking the <info> before reading
 
### csvguess.q

a standalone script to generate a csv loader for a particular schema. 

```
usage: q csvguess.q CSVFILE [-compress|co] [-noheader|nh] [-discardempty|de] [-semicolon|sc] [-tab|tb] [-zaphdrs|zh] [-savescript|ss] [-saveinfo|si] [-zeuro|z1] [-exit]
```

Command line options:
 
	-compress|co - compress low granularity (info.gr) columns with COMPRESSZD default (17;2;6)
	-noheader|nh - the csv file doesn't have headers, so create some (c00..)
	-discardempty|de - if a column is empty don't bother to load it
	-semicolon|sc - use semicolon as delimiter in place of the default comma
	-tab|tb - use tab as delimiter in place of default comma
	-zaphdrs|zh - by default junk characters are removed from column headers, so for example "Profit & Loss_2005" will become "ProfitLoss_2005". Use the zaphdrs flag to force the name to lowercase and to remove the underscores ("profitloss2005")
	-savescript|ss - save a standalone load script for the data. Do this manually (perhaps after adjusting <info>) by calling savescript[]
	-saveinfo|si - *append* the table information to a shared csv - potentially with information from other tables
	-zeur|zeuro|z1 - set \z 1 for european format dates dd/mm/yy (default \z 0 mm/dd/yy)
	-exit - exit on completion, only makes sense in conjunction with savescript or saveinfo

example:

```
for %1 in (import\*.csv) do q csvguess.q %1 -zh -ss -si -exit
```
