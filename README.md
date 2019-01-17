# ipTool
This tool let you know full information about any IP address or domain in Linux Terminal.

Also works with Chrome OS Linux (Beta) and Mac OS.

## Installation

Now open Terminal.
To install application download it and extract to your ```/home``` directory.

Or clone it via command

```sh
git clone https://github.com/artgonatiacool/ipTool
```

Now go to downloaded directory (```ipTool-master``` or ```ipTool``` by default) via command

```sh
cd YOURDIRECTORY
```

Now you need to start installation via command

```sh
sudo bash install.sh
```

Installation can ask for ```sudo``` password or ```Yes/No``` questions, everywhere answer ```yes```

After programm installation you can run it from ```/home``` directory by command

```sh
aboutip [ip or domain]
```

And do not delete ```ip.pl``` file from ```/home``` directory.

### Fixing command

If this command gives you an error, download [fix_command file](https://github.com/artgonatiacool/ipTool/releases/download/1.0/fix_command.sh) to your ```/home``` repository.

Now run without ```sudo```!

```sh
bash fix_command.sh
```
Now it shall work. If not working even now, use old command:

```sh
perl ip.pl [ip or domain]
```

## Example

```sh
aboutip github.com
```

```sh
------------------------------------
        IP Geolocation Tool  
------------------------------------


        IP: 140.82.118.3
------------------------------------
  [+] Organization: AS36459 GitHub, Inc.
      Provider: GitHub

  [+] Country: United States (US)
      Region: California (CA)
      City: San Francisco

  [+] Geolocation: Latitude: 37.7823
                   Longitude: -122.391

  [+] Timezone: America/Los_Angeles
  
```
