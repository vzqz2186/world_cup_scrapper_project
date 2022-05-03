# FIFA World Cup Data Scrapper Project

This program scraps online tables and data related to the rosters, teams, and fixtures from the FIFA World Cup. This is an ongoing project that I'm working on ahead of the 2022 World Cup hosted in Qatar in November. At this time, the Python script pulls data for participating players, tournament group, and fixtures for the World Cups hosted between 2002 and 2018. All data is scrapped from the tournament's respective Wikipedia entries. Since the HTML is already very standardized, it allows for all functions to be reused, making small tweaks to them for particular ocations.

The program follows the following procedure:

    1. Access the html code for the websites to scrap using the BeautifulSoup libraries.
    2. Scrap different data from tables and other places from the html code to fill lists to be used
       in completing pandas dataframes. The tables contain information on:

        a. Team groups
        b. Participating countries
        c. Players' birthdays
        d. Match locations
        e. Players' birthdays
        f. Match dates
        g. Match results
        h. Match home and away sides
        i. Match groups and stages.

    3. Save all scrapped dataframes to csv files.
    
After scrapping the data, SQL is used to clean the obtained tables. The changes are the following:

    1. Calculate the players' age at the start of the tournament and create a new column to store that data.
    2. Separate the 'captain' label from certain players' names and create a column detailing which players
       are team captains.
    3. Replace the abbreviations in the 'Pos' field with the full names of the player positions.
    4. Separate the goals in 'Result' field into their own columns and add a new column to label the match
       winner.
    5. Add a column that flags games that had a penalty kick round.

All files (csv's and scripts) are in the files section of this page. The following tasks are also planned to add to the project.
- Scrap data for match location and date.
- Scrap penalty kick scores.
