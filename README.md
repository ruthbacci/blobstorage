# Get Blob Properties - Including Last Modified and Last Accessed

This Powersehll script, retrieves the properties of a blob and writes the output to an Excel Spreadsheet. 

The following blob properties are retrieved 

1) Blob Name
2) Blob Size (Bytes)
3) Last Modified Date
4) *Last Accessed Date (If this is available in the region where the Storage Account resides.  See : https://azure.microsoft.com/en-us/updates/azure-blob-access-time-tracking-and-access-timebased-lifecycle-management-preview/)
5) Container Name
6) Storage Account Name


* To report on Last Accessed date you must enable this on the Storage Account. Also see https://docs.microsoft.com/en-gb/azure/storage/blobs/storage-lifecycle-management-concepts?tabs=azure-portal#move-data-based-on-last-accessed-date-preview  for further information.



![GitHub Logo](/images/LastAccessed.png)

# Pre-Requisties

1) Powershell 5.1.18362 or greater is installed (https://docs.microsoft.com/en-us/powershell/azure/install-az-ps?view=azps-4.8.0)
2) Connect to Azure Account by running the command 'Connect-AzAccount'  (https://docs.microsoft.com/en-us/powershell/azure/authenticate-azureps?view=azps-4.8.0)
3) Select the Azure Subscription you want to run the script on by running the command 'Set-AzContext -SubscriptionId "xxxx-xxxx-xxxx-xxxx"'

