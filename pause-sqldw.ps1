Import-Module Az.Accounts
Import-Module Az.Sql
Import-Module Az.Synapse
	
try
{
	"Logging in to Azure..."
	Connect-AzAccount -Identity
}
catch {
	Write-Error -Message $_.Exception
	throw $_.Exception
}
	
$SubscriptionId = "12345678-abcd-12ab-cd34-567897123abc"
	
Set-AzContext $SubscriptionId
	
Suspend-AzSqlDatabase –ResourceGroupName "rgsqldw" –ServerName "srvsqldwstandalone" –DatabaseName "dbsqldw"