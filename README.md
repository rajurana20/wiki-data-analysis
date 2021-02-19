# WIKI-DATA-ANALYSIS
## Project Description
WIKI-DATA-ANALYSIS is project 1, which analyse the wiki data pageviews, clcksream and Wiki-Media data inorder to find few analytical answers like which is most trending wiki-article and so on.

## Technologies Used
- apache-hive-2.3.8
- Hadoop 2.7.7
- Git + GitHub
## Features
List of features ready - The analysis consist of answer of the following questions by analysing wikipedia data.
- Which English wikipedia article got the most traffic on January 20, 2021?
- What English wikipedia article has the largest fraction of its readers follow an internal link to another wikipedia article?
- What series of wikipedia articles, starting with Hotel California, keeps the largest fraction of its readers clicking on internal links? This is similar to (2), but you should continue the analysis past the first article. There are multiple ways you can count this fraction, be careful to be clear about the method you find most appropriate.
- Find an example of an English wikipedia article that is relatively more popular in the Americas than elsewhere. There is no location data associated with the wikipedia pageviews data, but there are timestamps. You'll need to make some assumptions about internet usage over the hours of the day.
- Analyze how many users will see the average vandalized wikipedia page before the offending edit is reversed.
- Finding the dead end page from where user never visit to next page that is the page which is never used as refferer.

To-do list for future development:
- The project is based on limited data, This project can lead to vast querrying can be done to find patterns to which language article are trending in which hour/time.
## Getting Started
Requirements / Tools
 - if you have windows then you need to install wls2 if you have linux/ubuntu wsl not required because wsl is to run linux in windows os. https://docs.microsoft.com/en-us/windows/wsl/install-win10
 - install hadoop 2.7.7 https://hadoop.apache.org/docs/r2.7.7/hadoop-project-dist/hadoop-common/SingleCluster.html
 - start dfs and yarn
 - next install hive https://cwiki.apache.org/confluence/display/Hive/GettingStarted#GettingStarted-RunningHiveServer2andBeeline
 - git clone https://github.com/rajurana20/wiki-data-analysis in linux terminal through wsl
 - you can have wiki dump data from https://dumps.wikimedia.org/other/analytics/
 - then you can run those querry in beeline or you can install DBeaver and connect hiveserver2 for easy UI.

## Usage
Best thing is to have dbeaver connected to hiveserver2. Open these script. Best way is to start from question-1.sql script. Execute each line by line till the end of the file, at the end of the file execution you will get the final required answer.

## Contributors
Its solo project, but we used guidance of our instructor adam.

## License
This project uses the following license: Its open source. Any one can use it modify it as they want. and can built their own project.
