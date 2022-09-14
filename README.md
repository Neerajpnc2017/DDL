1.	Create a Bash script that takes NBK ID( git config user.name) and ddl .sql script changes with Date timestamp.
2.	Bash script should be able to take in incremental changes of who made the change . Lets say only 3 files modified then only those three modified .sql files will be ran as part of build.sh and after appending the data with id, author, datetime it will be package those data in .zip binary which will upload to artifactory.
3.	Two arguments should be passed dynamically to pre build shell script as developer makes changes in feature branch & append to .sql file. 
4.	Pass those dynamic values of Nbk id , author & unique Tag to sql file
5.	Create a logic in Jenkinfile to execute a prebuild shell script and take the delta (Modified scripts with Details like Author, ID, NBKID) and publish that data as .zip binary to artifactory. 

Two arguments are for example

git diff --cached--name-status

git config user.name

As soon as the git commit happens, the pre commit shell script should be able to get the data 

1. who modified the file
2. Files that have been modified 
3. Username of developer such as git config user.name. This data should be appended inside that respective SQL file in the header section.



