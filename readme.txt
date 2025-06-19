Manual discovery checklist
-=-=-=-=-=-=-=-=-=-=-=-=-=-
Most of the configuration settings in SharePoint Online and OneDrive for Business can be discovered programmatically through PowerShell. Some configuration items however, must we walked to through the admin center.

Usage
-=-=-
The checklist consists of the following items:
	1. Items that require you to walk to the Admin center to view the setting
	2. Items that are configured via PowerShell that need setting verification.


Link
-=-=-
URL: https://goplanet.sharepoint.com/:w:/s/PlanetEastCollaboration-CollabDelivery/EToEY28ZWT1ClkzTblHemowB1ucfIURplMVa2u9hOn69Ig?e=E1TTBx

Note: The initial draft of this document occurred during standardization of the CoPilot for M365 Apps Tenant POC White Glove offering in May 2024.  This location specified in the link above will no doubt change and the link specified will break.

Manual Discovery Checklist 

1. SharePoint Online 

	REF URL: Admin center - https://tenant-admin.sharepoint.us 

	Policies - > Sharing 

	- Navigate to the bottom the settings, and ensure that the follow items are set to their default values below: 

		- Show owners the names of people who viewed their files in OneDrive: Enabled 

		- Let site owners choose to display names of people who viewed their sites or pages: Enabled 

	- Use short links for sharing files and folders: Enabled 

All other settings are configured programmatically via PowerShell. 

2. Settings 

Navigate to the bottom the settings, and ensure that the following items are set to the values below: 

	- SharePoint notifications: Allow notifications 

	- Site Creation: 
		- User can create SharePoint sites: Unchecked 
		- Create sites under: /sites 
		- Set default rime zone selected by customer, if none is specified then use (UTC-08:00) Pacific Time (US & Canada) 
		- OneDrive notifications: Allow notifications 
		- OneDrive sync / Show the sync button: Enabled 

All other settings are configured programmatically via PowerShell. 

3. Classic settings 

	REF URL: https://tenant-admin.sharepoint.us/_layouts/15/online/tenantsettings.aspx 

	Traverse to the bottom of the settings and ensure the following items are set: 

Site collection storage management: Automatic 
	- OneDrive for Business Experience: New experience 
	- Admin center experience: Use advanced 
	- Delve: Enabled 
	- Enterprise social collaboration: Use SharePoint Newsfeed 
	- Personal blogs: Disabled 
	- Site pages: Verify set to Allow* 
	- Site creation: Verify set to Allow* 
	- Subsite creation: Hide the Create Site Command 
	- Connections from sites to M365 Groups: Prevent site collection admins from connecting sites to new M365 groups 
	- Custom scripts:
		- Prevent users from running scripts on personal sites: Checked
		- Prevent users from running custom scripts on self-service created sites: Checked 
	- Preview features: Disabled 
	- Mobile push notifications – OneDrive: Allow notifications 
	- Mobile push notifications – SharePoint: Allow notifications 
	- Enable comments on site pages: Verify disabled* 

* Setting is configured via script, verify script correctly configured this setting. 

All other settings are configured programmatically via PowerShell. 

4. More features 

	REF URL: https://tenant-admin.sharepoint.us/_layouts/15/TenantProfileAdmin/ManageUserProfileServiceApplication.aspx 

- User profiles -> Setup MySites 
	- MySite cleanup: Enable access delegation 
	- Secondary Owner: No secondary owner 

5. Apps 

Navigation here for the first time should create the app catalog, flashing the screen a few times, ensure the URL created ends up: 

https://tenant-admin.sharepoint.us_layouts/15/tenantAppCatalog.aspx 

Then, navigate to:  

https://tenant-admin.sharepoint.us/sites/appcatalog/_layouts/15/tenantAppCatalog.aspx/manageapps  

	- Configure store settings 
		- Allow users to browser enable form templates: Unchecked / Disabled 
		- Render form templates that are browser-enabled by users: Unchecked / Disabled 
		- Customize the list of exempt user agents: Unchanged 
		- Set default rime zone selected by customer, if none is specified then use (UTC-08:00) Pacific Time (US & Canada) 
		- OneDrive notifications: Allow notifications 
		- OneDrive sync / Show the sync button: Enabled 

All other settings are configured programmatically via PowerShell. 
