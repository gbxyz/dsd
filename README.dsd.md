# NAME

DSD - A Simple DNS Statistics Collecting Daemon

# DESCRIPTION

`dsd` is a daemon which runs on a DNS server and uses libpcap, [Net::DNS](https://metacpan.org/pod/Net::DNS) and
[NetPacket](https://metacpan.org/pod/NetPacket) to analyse incoming DNS queries. It will periodically write data
files to disk.

# USAGE

        dsd [OPTIONS]

# OPTIONS

- --config=FILE

    Specify config file. Defaults to /etc/dsd/dsd.conf.

- --foreground

    Don't daemonise.

- --debug

    Enable debugging. Implies --foreground.

- --debug-queries

    Include DNS queries observed in debugging output. Ignored unless --debug is
    used.

- --help

    Show help.

# CONFIGURATION OPTIONS

        [dsd]

        ; interface to capture packets on
        interface=eth0

        ; capture 1/sample packets
        sample=1

        ; dump data every interval seconds
        interval=300

        ; list of zones you're interested in
        zones="foo,bar.com"

        ; location to where files are written:
        directory="/var/lib/dsd"

# SEE ALSO

- `dsd-cp`, which copies DSD data files from the DNS server to a remote server.
- `dsd-db`, which processes DSD data files and writes the data to a database.
- `dsd-munin`, a Munin plugin for displaying graphs based on the DSD database.
- [https://www.centralnic.com/](https://www.centralnic.com/)
- [http://www.net-dns.org/](http://www.net-dns.org/)
- [http://dns.measurement-factory.com/tools/dsc/](http://dns.measurement-factory.com/tools/dsc/)
- [http://munin-monitoring.org/](http://munin-monitoring.org/)

# COPYRIGHT

dsd is Copyright 2014 CentralNic Ltd. All rights reserved. This program is free
software; you can redistribute it and/or modify it under the same terms as Perl
itself.
