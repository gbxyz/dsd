# NAME

DSD - A Simple DNS Statistics Collecting Daemon

# DESCRIPTION

# USAGE

        dsd [OPTIONS]

# OPTIONS

- --config=FILE

    Specify config file. Defaults to /etc/dsd/dsd.conf

- --help

    Show help.

# CONFIGURATION OPTIONS

        [dsd]

        ; location to where files are written:
        directory="/var/lib/dsd"

        [cp]

        ; SSH key to use:
        key=/path/to/id_rsa

        ; username on remote host
        user=dsd

        ; server to copy to
        host=hostname

        ; directory on remote host
        directory=/home/dsd/data

# SEE ALSO

- `dsd`, the daemon which runs on a DNS server and generates statistical data.
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
