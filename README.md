# Global Electronics Sales and Customer Analysis
## Table of Content
* <a href="">General Overview</a>
## General Overview
### Journey to the Dashboard
This Project was named as __'Journey to the Dashboard'__ When i saw how large the data was i decided to make the whole stuff to be as simplle as possible see to understand
i adopted visualization as my means of relay the information and my findings from this project. the market is an ideal market affected by the forces of demand and supply<br/>
Here is a code well arranged for Exploratory Data Analysis, Grouped Data Analysis and Machine learning adopting the Kmeans Algorithm.
The Data came in as a four table analysed data (Customers' Table, Sales Table, Store Table, and The Product list Table).
![Global Electronic Portfolio Project - Google Chrome 9_28_2024 6_44_48 PM](https://github.com/user-attachments/assets/d6b4440d-2dec-42b6-8552-b570d650ced8)<br/>
**Sales Dataset**<br/>
![Untitled - Google Chrome 9_27_2024 9_01_07 PM](https://github.com/user-attachments/assets/9bfe2a29-3585-458d-b653-74fcba632e76)<br/>
**Product Dataset**<br/>
![Untitled - Google Chrome 9_27_2024 8_53_09 PM](https://github.com/user-attachments/assets/8bb1a9c4-2699-4343-a997-5141ccc7c2cb)<br/>
**Stores Records**<br/>
![Untitled - Google Chrome 9_27_2024 8_46_09 PM](https://github.com/user-attachments/assets/9c1d3e93-08ae-41c2-8884-b1623fe53068)<br/>
__Customer Records__<br/>


I had to wrangle with the use of SQL(SQL Workbench).it was a task but by leveraging the use of Primary Key and Foreign Keys the four tables made more sense as one table.
the Table looked like this. it contained all rows from all four tables.![Global Electronic Portfolio Project - Google Chrome 9_28_2024 6_44_48 PM](https://github.com/user-attachments/assets/f49878e5-67ae-4355-86dd-ae8f4a717958). You can access this code from the repo List as __Data Wrangled__

while going through the wrangled data i realized there were a lot of duplicates like this
![Global Electronic Portfolio Project - Google Chrome 9_27_2024 11_50_35 PM](https://github.com/user-attachments/assets/34ab3a86-7a89-46ac-9258-4b9c70c476e9)
It made no sense but I realized it was due to difference in products bought and date it was bought and other related factors.
Grouped analysis was carried out with this Table because the grouped analysis wa mostly about summing so I left it like that.
But when it came to hypothetical analysis i need to remove the duplicates. At this point i had to adopt the 'groupby' keyword to execute this and it workd. WHen you check the code,
you will see failed codes when i was trying to use pivot table to eliminate the dupilicates. the code finally formed sth reasonable but i could not work with the result it gave me because of it indxed the name column.
Basically what i wanted was for the name that was duplicated to be one and all thhe goods should be listed and the prices summed so it will look like a list or record. it worked but i could not tamper much with the
result so i discarded it and used the 'groupby' function to execute what i wanted to execute these are the two results
![Global Electronic Portfolio Project - Google Chrome 9_28_2024 6_58_16 PM](https://github.com/user-attachments/assets/d41aa295-71dc-4843-8b2f-559b4500de86)
![Global Electronic Portfolio Project - Google Chrome 9_27_2024 11_46_43 PM](https://github.com/user-attachments/assets/7f31f969-6443-4e0c-bf36-f5eec787897e)
The first on is the one that could not be worked on while the second one was a better choice.
The limitation of the first one was that it could only carry sales and maybe gender.

