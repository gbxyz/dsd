# NAME

DSD - A Simple DNS Statistics Collecting Daemon

# DESCRIPTION

`dsd-icann` is a script which queries a DSD database and extracts the data
required by ICANN for gTLD monthly SRS Activity Reports.

# USAGE

        dsd-icann [OPTIONS]

# OPTIONS

- --config=FILE

    Specify config file. Defaults to /etc/dsd/dsd.conf

- --month=MONTH

    Month specification in YYYY-MM format.

- --help

    Show help.

# SEE ALSO

- `dsd`, the daemon which runs on a DNS server and generates statistical data.
- `dsd-db`, which processes DSD data files and writes the data to a database.
- `dsd-cp`, which copies DSD data files from the DNS server to a remote server.
- `dsd-munin`, a Munin plugin for displaying graphs based on the DSD database.
- [https://www.centralnic.com/](https://www.centralnic.com/)
- [http://www.net-dns.org/](http://www.net-dns.org/)
- [http://dns.measurement-factory.com/tools/dsc/](http://dns.measurement-factory.com/tools/dsc/)
- [http://munin-monitoring.org/](http://munin-monitoring.org/)

# COPYRIGHT

dsd is Copyright 2014 CentralNic Ltd. All rights reserved. This program is free
software; you can redistribute it and/or modify it under the same terms as Perl
itself.

# POD ERRORS

Hey! __The above document had some coding errors, which are explained below:__

- Around line 98:

    You forgot a '=back' before '=head1'
