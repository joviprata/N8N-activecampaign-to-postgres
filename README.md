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

## Files description:
- [N8N Postgres Leads Active Campaign.json](https://github.com/joviprata/N8N-activecampaign-to-postgres/blob/main/N8N%20Postgres%20Leads%20Active%20Campaign.json)
The JSON file for the N8N Project. It checks the upcoming lead's landing page or campaign name in Postgres to find the matching campaign ID in the campaigns table. If found, the lead information is saved in the leads table with the corresponding ID; if not, it's saved on Sheets to identify any missing campaigns in the campaigns table.
- [leads_activecampaign.sql](https://github.com/joviprata/N8N-activecampaign-to-postgres/blob/main/leads_activecampaign.sql)
This table contains specific information about the lead: e-mail, UTM parameters, the date it got registered, demographics, device and operational system used, browser and source. To determine the lead's campaign name and details, a foreign key was added, referencing the ID of the primary key found in the Campaigns table.
- [campaigns_activecampaign.sql](https://github.com/joviprata/N8N-activecampaign-to-postgres/blob/main/campaigns_activecampaign.sql)
This table contains information about the campaigns: what expert in the digital marketing does it belong to, the ad campaign's name, the link to the landing page, the version of the launch campaign, and an auto-incrementing primary key ID.
- [mat_view_leads_activecampaign.sql](https://github.com/joviprata/N8N-activecampaign-to-postgres/blob/main/mat_view_leads_activecampaign.sql)
A Materialized View for ActiveCampaign leads data in Postgres. It consists of joining the two tables above and getting only relevant information about those two for Looker Studio dashboards, such as: the publicity campaign name and it's expert, the source the lead came from (Facebook, Instagram, etc), e-mail, UTM parameters, the date the lead was registered, the device, operating system and browser used, city, state, country and address information.
