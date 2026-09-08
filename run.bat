@echo off
setlocal
echo ===================================================
echo   Starting Disaster Relief Management Odoo Server
echo ===================================================

set ODOO_PY=S:\ODOO_Software\python\python.exe
set ODOO_BIN=S:\ODOO_Software\server\odoo-bin
set ODOO_CONF=S:\ODOO_Software\server\odoo.conf
set PROJECT_ADDONS=%~dp0odoo-main

echo Python:       %ODOO_PY%
echo Server:       %ODOO_BIN%
echo Custom Addon: %PROJECT_ADDONS%
echo URL:          http://localhost:8069
echo.
echo Press Ctrl+C to stop the server anytime.
echo ===================================================

"%ODOO_PY%" "%ODOO_BIN%" -c "%ODOO_CONF%" --addons-path="S:\ODOO_Software\server\odoo\addons,S:\ODOO_Software\server\workshop,%PROJECT_ADDONS%" --dev=all %*
