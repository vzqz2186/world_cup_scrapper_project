# FIFA World Cup Data Scrapper Project

This program scraps online tables and data related to the rosters, teams, fixtures, and main stats from the FIFA World Cup. This is an ongoing project that I'm doing ahead of the 2022 World Cup hosted in Qatar in November. For the moment, it only contains data from the 2018 World Cup hosted in Russia. Future versions will contain data from Brazil 2014, South Africa 2010, Germany 2006, and Korea/Japan 2002 as well.

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

    3. Scrap rosters data from the 2018 World Cup squads entry in Wikipedia.
    4. Scrap Group data from the same webpage as Step 3, detailing the different groups and the teams that
       conform make them up.
    5. Scrap match results compiled by Fox Sports.
    6. Save all scrapped dataframes to csv files.
    
After scrapping the data, SQL is used to clean the obtained tables. The changes are the following:

    1. Remove an unwanted row from the 'Groups' table, since the table headers were also scrapped as data
       when they were not supposed to be.
    2. Calculate the players' age at the start of the tournament (June 14, 2018) and create a new column
       to store that data.
    3. Separate the 'captain' label from certain players' names and create a column detailing which players
       are team captains and which ones are not.
    4. Replace the abbreviations in the 'Player_position' field with the full names of the positions.

__To do:__
- Scrap player stats (goals, assists, yellow and red cards, saves) and add them to the players dataframe.
