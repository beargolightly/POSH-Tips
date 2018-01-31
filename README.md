# What's this?
POSH-Tips is an educational module designed to be added to your Powershell profile, to display a random Powershell tip and code snippet with each new Powershell session.

# Getting Started

Unpack or clone the module to a working directory:

> git clone https://github.com/wrapsbear/POSH-Tips.git
> cd POSH-Tips

Import the module:

> Import-Module POSH-Tips

Get a tip:

> Get-POSHTip

Get a specific tip by tip number:

> Get-POSHTip 3

# Adding to your Powershell profile

Display a nice banner and tip at each shell startup by adding the following lines near the bottom of your Powershell profile:

> Import-Module C:\MyModules\POSH-Tips
>
> Get-POSHTip -MOTD $true
