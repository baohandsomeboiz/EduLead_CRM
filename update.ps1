cd C:\Users\tonth\EduLead_CRM
$headers = @{ "X-N8N-API-KEY" = "eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJzdWIiOiJkYzU4MmNlMS03MDI5LTRkY2ItOTNjYS1kYzI5M2M4OTFlN2MiLCJpc3MiOiJuOG4iLCJhdWQiOiJwdWJsaWMtYXBpIiwianRpIjoiMTI2ZTBiNTQtNzZkZC00ZDE5LTgzN2QtOTM3MjhiOTE0NGJiIiwiaWF0IjoxNzkwMDI1MDk4LCJleHAiOjE3OTI1NTUyMDB9.WxwG4v7_eVsGKII8YivHJBNjttX1cjGz3mLLJKSYxiw" }
\(workflow = Invoke-RestMethod -Uri "http://localhost:5678/api/v1/workflows/9aBrGO47aaauJFf5" -Headers\)headers
$workflow | ConvertTo-Json -Depth 10 | Set-Content -Encoding UTF8 workflow.json
git add .
git commit -m "Auto update workflow from n8n API"
git push origin main
