@echo off
setlocal
echo =========================================================================
echo   Disaster Relief Management Odoo Server
echo =========================================================================
echo.
echo   Direct App Links:
echo   - Web Interface:   http://localhost:8069/web
echo   - App Dashboard:   http://localhost:8069/web#action=disaster_relief.action_dr_dashboard
echo   - Incidents View:  http://localhost:8069/web#action=disaster_relief.action_dr_incident
echo   - Requests View:   http://localhost:8069/web#action=disaster_relief.action_dr_request
echo.
echo =========================================================================

set ODOO_PY=S:\ODOO_Software\python\python.exe
set ODOO_BIN=S:\ODOO_Software\server\odoo-bin
set ODOO_CONF=S:\ODOO_Software\server\odoo.conf
set PROJECT_ADDONS=%~dp0odoo-main

"%ODOO_PY%" "%ODOO_BIN%" -c "%ODOO_CONF%" --addons-path="S:\ODOO_Software\server\odoo\addons,S:\ODOO_Software\server\workshop,%PROJECT_ADDONS%" -d disaster_db -i disaster_relief -u disaster_relief --dev=all %*
