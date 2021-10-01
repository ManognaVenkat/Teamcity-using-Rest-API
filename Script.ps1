$body = "<build><buildType id='<insert the buildid-value here>'/></build>"
Write-Host "Trying to retrive data from Teamcity"
$headers = @{
        "Authorization"="Bearer <insert the token-value here >"
        "Accept" = "application/json"
        "Content-Type" = "application/json"
}
$api = "https://<teamcity url>/app/rest/buildQueue"
Invoke-RestMethod -Uri "https://<teamcity url>/app/rest/buildQueue" -Method Get -Headers $headers
Invoke-RestMethod -Uri "https://<teamcity url>/app/rest/buildQueue" -Method 'Post' -Body $body -Headers $headers
