# NAME

DSD - A Simple DNS Statistics Collecting Daemon

# DESCRIPTION

`dsd` is a DNS statistics system written in Perl. It is inspired by DSC, but tries to
be a lot simpler.

# USAGE

- Use `dsd` on your DNS server(s) to capture DNS query packets and analyse them

- Use `dsd-cp` to copy the data files produced by `dsd` to your central database server

- Use `dsd-db` to import the data files into your preferred RDBMS

- Use the `dsd-munin` plugin to generate graphs, or just query the database yourself for the reports you want

# SEE ALSO

- `dsd`, the daemon which runs on a DNS server and generates statistical data.
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
