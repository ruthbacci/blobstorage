#Declare variables
$accountname="xyz"
$accountkey="xyz"
$cont="xyz"
$ctx = New-AzStorageContext -StorageAccountName $accountname -StorageAccountKey $accountkey
$myblobs = Get-AzStorageBlob -Container $cont -Context $ctx
$outpath = "xyz"

$i=0

foreach($b in $myblobs)
{
$i++

if($i -eq 1)
#Set header values
{
$obj = New-Object psobject
 $obj | add-member -membertype NoteProperty -name "Blob Name" -value $b.name

#The length unit is byte(s)
$obj | add-member -membertype NoteProperty -name "Length (Bytes)" -value $b.length
 $obj | Export-Csv $outpath -NoTypeInformation
 
$obj | add-member -membertype NoteProperty -name "Last Modified" -value $b.LastModified
 $obj | Export-Csv $outpath -NoTypeInformation

#Last Access Property is only available in some regions in preview : https://azure.microsoft.com/en-us/updates/azure-blob-access-time-tracking-and-access-timebased-lifecycle-management-preview/ Uncomment lines below if LastAccessed is available in region
 #$obj | add-member -membertype NoteProperty -name "Last Accessed" -value $b.LastAccessed
 #$obj | Export-Csv $outpath -NoTypeInformation

$obj | add-member -membertype NoteProperty -name "Container Name" -value $cont
 $obj | Export-Csv $outpath -NoTypeInformation

$obj | add-member -membertype NoteProperty -name "Storage Account Name" -value $accountname
 $obj | Export-Csv $outpath -NoTypeInformation
}

else
#Output blob properties
{
$obj = New-Object psobject
$obj | add-member -membertype NoteProperty -name "Blob Name" -value $b.name
$obj | add-member -membertype NoteProperty -name "Length (Bytes)" -value $b.length
$obj | add-member -membertype NoteProperty -name "Last Modified" -value $b.LastModified
#$obj | add-member -membertype NoteProperty -name "Last Accessed" -value $b.LastAccessed
$obj | add-member -membertype NoteProperty -name "Container Name" -value $cont
$obj | add-member -membertype NoteProperty -name "Storage Account Name" -value $accountname
$obj | Export-Csv $outpath -NoTypeInformation -Append
}

}