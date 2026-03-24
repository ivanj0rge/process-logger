# DevOps Process Logger

A simple Bash-based logging tool.

## What it does

This script:

- Prints startup messages
- Runs continuously in a loop
- Writes the current date and time to a log file
- Waits a configurable number of seconds between log entries

## Script features

- Configurable refresh interval using variables
- Configurable log file name
- Simple Bash automation structure
- Suitable for running in the background with `nohup`

## Project files

- `process_logger.sh` → main Bash script
- `log.txt` → generated log output file

## How to run

Make the script executable:
```bash
chmod +x process_logger.sh

Run it normally:
./process_logger.sh

Run it in the background:  
nohup ./process_logger.sh &

Monitor logs:
tail -f log.txt

## How to stop it

Find the process:
ps aux | grep process_logger

Kill it using its PID:
kill <PID>

## Skills used

- Bash scripting 
- Variable in Bash 
- Linux processes  
- Logging
- Background processes
- Processes monitoring and control 

## Future improvements

- Accept command-line arguments
- Allow custom log file names at runtime
- Add stop/start options
- Improve log formatting 
