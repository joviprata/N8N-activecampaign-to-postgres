![N8N ActiveCampaign to Postgres Automation](https://github.com/user-attachments/assets/b93a0228-8700-40e2-ac69-6eb094af15c7)
# N8N Automation - ActiveCampaign Leads Archiving in Postgres
This project was created to display information about upcoming leads of publicity campaigns. It aimed to break down several aspects of these leads to enable targeted strategies and adapt campaigns to better match the profiles of potential customers. I automated the process of retrieving new data from ActiveCampaign using N8N, created Postgres relational tables and materialized views, and connected the data to a LookerStudio dashboard, as seen below. The dashboard also includes a custom date range filter.<br/>

![Leads Mapping - Leads Dashboard Looker Studio](https://github.com/user-attachments/assets/1f95b488-b069-4f54-b5c7-1aab652a8f07)
This part of the dashboard has an interactive map highlighting lead concentrations worldwide. Important for geographical and social analysis, as well as helping to determine the most relevant time zones for scheduling ads and other content.

![Devices Breakdown - Leads Dashboard Looker Studio](https://github.com/user-attachments/assets/6c322259-d204-48d6-a32e-33c35181c800)
Distribution of devices, browsers and operating system used by leads. This helps with profiling the leads economic traits, as well as other factors.

![Organic Leads - Leads Dashboard Looker Studio](https://github.com/user-attachments/assets/a8e6b140-64ef-42ae-9ea7-6b4901414cf1)
Breakdown of organic leads (potential customers who come through non-paid channels such as search engines or social media) by UTM Source, UTM Medium, and distribution of organic leads per day.

![Cost Per Leads and Audience Breakdown - Leads Dashboard LookerStudio](https://github.com/user-attachments/assets/d60bc948-21d4-4c37-ad37-c0aec30bf678)
Distribution of leads and their average cost per day, distribution of leads per source, social media, audience and traffic type. The cost per lead takes into account costs for Facebook Ads, Google Ads and TikTok Ads.
