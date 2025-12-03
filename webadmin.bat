@echo off
cd /d "C:\Program Files\IIS Express"

start "" "http://localhost:8082/asp.netwebadminfiles/default.aspx?applicationPhysicalPath=C:\Users\fabio\source\repos\WebApplication1\WebApplication1\&applicationUrl=/"

iisexpress.exe /path:C:\Windows\Microsoft.NET\Framework\v4.0.30319\ASP.NETWebAdminFiles ^
  /vpath:"/ASP.NETWebAdminFiles" /port:8082 /clr:4.0 /ntlm

start "" "http://localhost:8082/asp.netwebadminfiles/default.aspx?applicationPhysicalPath=C:\Users\fabio\source\repos\WebApplication1\WebApplication1\&applicationUrl=/"
