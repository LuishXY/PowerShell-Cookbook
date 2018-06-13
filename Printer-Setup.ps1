# Look up specific printer 
Get-printer -ComputerName 03s08print01 -name 'z29*' | select name, DriverName, portname
#Create Printer Port 
Add-PrinterPort -Name "GV-cpname" -PrinterHostAddress "zgr"
#Install Printer Drivers 
Add-PrinterDriver -Computername -Name
#Creating a printer 
Add-Printer -Name 'GV-700Corep1' -Computername 66sp-radiapp02 -DriverName 'ZDesigner 105SL 300DPI' -PortName '700core1p'
