# blobstorage

This Powersehll script, retrieves the properties of a blob and writes the output to an Excel Spreadsheet. 

The following blob properties are retrieved 

1) Blob Name
2) Blob Size (Bytes)
3) Last Modified Date
4) Last Accessed Date (If this is available in the region where the Storage Account resides.  See : https://azure.microsoft.com/en-us/updates/azure-blob-access-time-tracking-and-access-timebased-lifecycle-management-preview/)
5) Container Name
6) Storage Account Name

Sample Output: 

