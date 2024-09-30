<h1 align="center">Global Electronics Sales and Customer Analysis</h1><br/>

# [__THE DASHBOARD__](https://app.powerbi.com/groups/me/dashboards/7b38209c-a448-45fb-92d5-fffe93321f1d?experience=power-bi) AND [__REPORTS__](https://app.powerbi.com/groups/me/reports/61843c23-8805-4809-ae9b-dfbcddc212c2/0fb0979e00043bec61ed?experience=power-bi)
># Table of Content
>>- [General Overview](#general-overview)
  >>>- [Journey to The Dashboard](#journey-to-the-dashboard)
>>- [Technologies Adopted](#technologies-adopted)
>>- [Insight into Data Structure](#insight-into-data-structure)
>>- [Data Wrangling and Cleaning with Python and SQL](#data-wrangling-and-cleaning-with-python-and-sql)
>>- [Grouped Data Analysis](#grouped-data-analysis)
  >>>- [Brand Grouped Analysis](#brand-grouped-analysis)
  >>>- [Country and Continent Grouped Analysis](#country-and-continent-grouped-analysis)
>>- [Hypothetical Analysis](#hypothetical-analysis)
  >>>- [Univariate Analysis](#univariate-analysis)
  >>>- [Bivariate Analysis](#bivariate-analysis)
>>- [Machine Learning Algorithm](#machine-learning-algorithm)
  >>>- [KMeans](#kmeans)
>>- [Dashboard and Reports](#dashboard-and-reports)
  >>>- [Sales Impact](#sales-impact)
>>- [Conclusion](#conclusion)
## General Overview
### Journey to the Dashboard
This Project was named as __'Journey to the Dashboard'__ When i saw how large the data was i decided to make the whole stuff to be as simplle as possible see to understand
i adopted visualization as my means of relay the information and my findings from this project. the market is an ideal market affected by the forces of demand and supply<br/>
## Technologies Adopted
> * Jupyter<br/>
>> * Python

> * Sql Workbench<br/>
>> * Structured Query Language

>* Microsoft Excel<br/>
>* Power BI<br/>
## Insight into Data Structure
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

##  Data Wrangling and Cleaning with Python and SQL
I had to wrangle with the use of SQL(SQL Workbench).it was a task but by leveraging the use of Primary Key and Foreign Keys the four tables made more sense as one table.
the Table looked like this. it contained all rows from all four tables.![Global Electronic Portfolio Project - Google Chrome 9_28_2024 6_44_48 PM](https://github.com/user-attachments/assets/1ef8e1d9-e692-4b50-9e5f-e988eda130d3)<br/>
>You can access this code from the repo List as 👉 ___Data Wrangled___<br/>

>__While going through 🚶 the wrangled data i realized there were a lot of duplicates like this__

![Global Electronic Portfolio Project - Google Chrome 9_27_2024 11_50_35 PM](https://github.com/user-attachments/assets/e29f2770-d8ad-4d51-923f-34d44a03391d)<br>

It made no sense but I realized it was due to difference in products bought and date it was bought and other related factors.
Grouped analysis was carried out with this Table because the grouped analysis was mostly about summing so I left it like that.
But when it came to hypothetical analysis i need to remove the duplicates. At this point i had to adopt the ```groupby``` keyword to execute this and it workd. WHen you check the code,
you will see failed codes when i was trying to use pivot table to eliminate the dupilicates. the code finally formed sth reasonable but i could not work with the result it gave me because of it indxed the name column.<br/>
Basically what i wanted was for the name that was duplicated to be one and all thhe goods should be listed and the prices summed so it will look like a list or record. it worked but i could not tamper much with the
result so i discarded it and used the 'groupby' function to execute what i wanted to execute these are the two results<br/>
![Global Electronic Portfolio Project - Google Chrome 9_28_2024 6_58_16 PM](https://github.com/user-attachments/assets/2fad127d-a63b-4f89-a246-3032290d34c0)
![Global Electronic Portfolio Project - Google Chrome 9_27_2024 11_46_43 PM](https://github.com/user-attachments/assets/4f1689ab-e113-41e7-b767-144a3359b742)

The first on is the one that could not be worked on while the second one was a better choice.
The limitation of the first one was that it could only carry sales and maybe gender.<br/>
## Grouped Data Analysis
  In this Grouped Data Analysis we had to break down complexity of the data by grouping the data by thier columns using the pivot table method. ```groupby``` was still adopted but a few times. 
### Brand Grouped Analysis
  In this section of this project we grouped brand by gender to know Male and Female prefernces on the basis of __BRAND__. the count was almost 1:1 ratio. Next we group __Brand__ by __Category__, I wanted to understand the brand dominace from the record to get clarity we went further to group __Brand__ with __Sales and Profit__. the __CONTOSO__ brand was the outstanding brand both in Brand Dominace and Sales Dominance.<br/>
### Country and Continent Grouped Analysis
Furthermore, another grouped analysis was carried out to check spending score of male and female in the market. The result was also on aratio of Approx. 1:1. We went went further to check Country Participation. This market is a global market but it has a range of participation. it participated in North America, Australia and Europe. The grouping gave results that The __US__ had the largest participation int the market and Netherland and France had a smaller share. the impact the __US__ made cause the profit generated in North America to sky-rocket. THis Analysis Bore three Visuals to give a better understandng
## Hypothetical Analysis
  My Understanding of hypothesis is a reasonable guess and this reasonable guess was being continously practiced from the onset of this project, from the viewing of the Data,to the Cleaning to the grouping and even here where we will relate columns. It continues even after this section.<br/>
 ### Univariate Analysis
 In this exercice we did Univariate and Bivariate analysis. Its different from grouped analysis. here we plot columns against columns to view trends and behaviour of these plots. Density plots was carried out for the __Ages__, __Profits__,and __Sales__. The Ages is Unimodal and the modes are almosts equally distributed the age range was from (20-80)yrs bracket. Both the Profit and Sales Distribution was skewd most people got to buy products that are cheap and Profits were more products that were mostly cheap also. this is a regular market structure. The correlation of the sales and profit was postive.<br/>
 ### Bivariate Analysis
 During the Bivariate analysis we just had to do the relationship between Age and Sales. We did a scattered plot. people at all age groups bought at all price points. But, the unique stuff about this analysis was that the plots were getting loose as the price went high and was getting more Jam-Packed as the price got lower. This event made me to adopt the Kmeans algorithm to carefully demarcate these sections. The image gave an image of molecules difusing through a rectangular jar.
 ## Machine Learning Algorithm
 ### KMeans
 During Diffusion there are layer that form so i ahd to demarcate this layers using KMeans clustering. KMeans Clustering is a Machine learning algorithm that learns the Data fed into it and clusters the data even giving us mean postions for these clusters.<br/>
 Bivariate Clustering was Carried out. One very interesting stuff about this analysis is that as the analysis goes further we begin to specialize on very few columns on this Data.
 quickly we used a ```for``` loop to get the amount of clusters.<br/>
 ![Global Electronic Portfolio Project - Google Chrome 9_28_2024 11_36_41 PM](https://github.com/user-attachments/assets/4c3500cd-38f6-4c4e-af46-d97258db9299)<br/>
 From this it is clear that the spread has 3 cluster. The clusters looked like thia.<br/>
 ![Global Electronic Portfolio Project - Google Chrome 9_28_2024 11_41_12 PM](https://github.com/user-attachments/assets/a0577ddd-1326-4b81-afee-8fe6644275a1)<br/>
This process helped us to show the layers of the concentration of customers in each price zone. This process helped me map out what is called the Price zones.
## Dashboard and Reports
When we say data analysis we dig into Data to get facts but the aim of getting this fact is to relay the information to the people who need them. Here we adopted Power BI Visualization to create our [__Dashboard__](https://app.powerbi.com/groups/me/dashboards/7b38209c-a448-45fb-92d5-fffe93321f1d?experience=power-bi). We also have our Reports on [Sales Impact](https://app.powerbi.com/groups/me/reports/61843c23-8805-4809-ae9b-dfbcddc212c2/0fb0979e00043bec61ed?experience=power-bi).
### Sales impact
The aim of this report is to explain the whole dataset in simple terms. It indicates the impact points on the market in terms of Country Participation and Brand Competition
[![Power BI Desktop 9_27_2024 12_50_39 AM](https://github.com/user-attachments/assets/bf818e1b-8897-4bfd-ab28-0fd3c0824189)](https://app.powerbi.com/groups/me/reports/61843c23-8805-4809-ae9b-dfbcddc212c2/0fb0979e00043bec61ed?experience=power-bi)
## Conclusion
It was a very Interesting journey on thi s said analysis. My Deductions are as follows:<br/>

### - There should be more Emphasis placed on Netherlands and france ie. More Branches should be pitched there.

### - Also Next Purchases should be Focused on __'CONTOSO'__ brand it is in High Demand price can also be raised for goods with these brand so as to conform with the __Market Forces__.

### - The Us Market is rapidly growing there will be need for more Empoyees in that area.

### - The other Country are on stable market condition.
 
 
 
 
