# NAME

DSD - A Simple DNS Statistics Collecting Daemon

# DESCRIPTION

`dsd-munin` is an all-in-one Munin plugin for DSD. Different plugins can be
activated by creating symbolic links to `dsd-munin` with the appropriate
names.

# USAGE

        dsd-munin [--help] [PLUGIN] [config]

# OPTIONS

- --help

    Show help.

- \[PLUGIN\]

    By default, `dsd-munin` determines the plugin function to run based on the
    name of the symbolic link, but this behaviour can be overwritten by providing
    the name as an argument. See [PLUGINS](https://metacpan.org/pod/PLUGINS) for further details.

- \[config\]

    Munin plugins accept a single argument, which, if it contains the value
    "config", causes the plugin to output configuration metadata used by Munin
    to generate graphs.

# PLUGINS

- total\_qps

    Generates a single-series graph showing the total query rate.

- qps\_per\_host

    Generates a graph showing the query rate for each host across every zone.

- qps\_per\_zone

    Generates a graph showing the query rate for each zone across every host.

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
