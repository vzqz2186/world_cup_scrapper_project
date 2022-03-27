# 2018 FIFA World Cup Data Scrapper Project

This program scraps online tables and data related to the rosters, teams, fixtures, and main stats from the FIFA World Cup organized in Russia for 2018. The program follows the following procedure:

    1. Access the html code for the websites to scrap using the BeautifulSoup libraries.
    2. Scrap different data from tables and other places from the html code to fill lists to be used in completing pandas dataframes.
       The tables contain information on:

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
    4. Scrap Group data from the same webpage as Step 3, detailing the different groups and the teams that conform make them up.
    5. Scrap match results compiled by Fox Sports.
    6. Save all scrapped dataframes to csv files.

To do: Scrap player stats (goals, assists, yellow and red cards, saves) and add them to the players dataframe.
