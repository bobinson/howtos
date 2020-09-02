#!/bin/bash

# Run as root or sudo the commands that need it as you go.

# brew version 0.9.5
# Mac OS X 10.10.1

# A little bit changed version of this:
# http://stackoverflow.com/questions/19538118/osx-mavericks-bind-no-longer-installed-how-to-get-local-dns-server-working

# 1) USE HOMEBREW TO INSTALL BIND

brew install bind

# 2) CONFIGURE BIND

# Create a custom launch key for BIND

/usr/local/sbin/rndc-confgen > /etc/rndc.conf
head -n 6 /etc/rndc.conf > /etc/rndc.key

# Set up a basic named.conf file.
# Brew directory could be slightly different mine is this /usr/local/Cellar/bind/9.10.1-P1/

cd /usr/local/Cellar/bind/*/etc
cat > named.conf  <<END
//
// Include keys file
//
include "/etc/rndc.key";

// Declares control channels to be used by the rndc utility.
//
// It is recommended that 127.0.0.1 be the only address used.
// This also allows non-privileged users on the local host to manage
// your name server.

//
// Default controls
//
controls {
        inet 127.0.0.1 port 54 allow {any;}
        keys { "rndc-key"; };
};

options {
        directory "/var/named";
};

//
// a caching only nameserver config
//
zone "." IN {
    type hint;
    file "named.ca";
};

zone "localhost" IN {
    type master;
    file "localhost.zone";
    allow-update { none; };
};

zone "0.0.127.in-addr.arpa" IN {
    type master;
    file "named.local";
    allow-update { none; };
};

logging {
        category default {
                _default_log;
        };

        channel _default_log  {
                file "/Library/Logs/named.log";
                severity info;
                print-time yes;
        };
};

END

# Symlink Homebrew's named.conf to the typical /etc/ location.
ln -s /usr/local/Cellar/bind/*/etc/named.conf /etc/named.conf


# Create directory that bind expects to store zone files

mkdir /var/named

curl http://www.internic.net/domain/named.root > /var/named/named.ca

# If you are using some third party DNS you should add: nameserver 127.0.0.1 in /etc/resolv.conf
# If your resolv.conf file is automaticaly generated you should change it on startup in order to work properly

# Start bind
sudo /usr/local/sbin/named

# Check if it is working
dig google.com
