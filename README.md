# Log-Archive-Tool
a tool to archive logs on a set schedule by compressing them and storing them in a new directory, this is especially useful for removing old logs and keeping the system clean while maintaining the logs in a compressed format for future reference.  The tool should run from the command line, accept the log directory as an argument, compress the logs, and store them in a new directory. 

## project URL
https://roadmap.sh/projects/log-archive-tool

The most common location for logs on a unix based system is /var/log.

## Requirements
The user should be able to:
Provide the log directory as an argument when running the tool. (e.g. ./log-archive.sh /var/log)

## Output
The tool should compress the logs in a tar.gz file and store them in a new directory.
The tool should log the date and time of the archive to a file.

### Installation

1. Clone the repository:

   ```bash
   git clone https://github.com/alrakhami/Log-Archive-Tool.git
   cd Log-Archive-Tool
   ./log-archive.sh /var/log
