# NAME

DSD - a simple DNS Statistics collecting Daemon

# DESCRIPTION

DSD is a simple system for capturing and aggregating statistical information
about DNS servers. It is somewhat similar to DSC, but is a great deal simpler.

DSD consists of two parts: The `dsd` script runs on the DNS server, captures
packets using `Net::Pcap`, disassembles them using `NetPacket`, and analyses
them using `Net::DNS`. Every now and then, it will serialise its data into a
blob of JSON and copy it to a remote server.

A separate script (which does not currently exist) then imports the data in the
JSON files into a database. The data is then used by a number of Munin plugins
(which also do not currently exist) which present the data to the user.

# USAGE

        dsd [OPTIONS]

# OPTIONS

- --config=FILE

    Specify config file. Defaults to /etc/dsd/dsd.conf

- --foreground

    Don't daemonise.

- --debug

    Enable debugging. Implies --foreground

- --help

    Show help

# CONFIGURATION FILE

        [dsd]
        ; interface to capture packets on
        interface=eth0

        ; capture 1/sample packets
        sample=1

        ; submit data every interval seconds
        interval=300

        ; list of zones you're interested in
        zones="foo,bar"

        ; server to submit stats to
        ssh_server=example.com

        ; SSH username
        ssh_user=example

        ; SSH private key
        ssh_key=/home/example/.ssh/id_rsa

        ; directory (optional)
        ssh_directory=/var/tmp/dsd

# SEE ALSO

- [https://www.centralnic.com/](https://www.centralnic.com/)
- [http://www.net-dns.org/](http://www.net-dns.org/)
- [http://dns.measurement-factory.com/tools/dsc/](http://dns.measurement-factory.com/tools/dsc/)
- [http://munin-monitoring.org/](http://munin-monitoring.org/)

# COPYRIGHT

dsd is Copyright 2014 CentralNic Ltd. All rights reserved. This program is free
software; you can redistribute it and/or modify it under the same terms as Perl
itself.
