#!/bin/bash

# Switch to Google DNS server.

{
  echo "nameserver 8.8.8.8";
  echo "nameserver 8.8.4.4";
} | sudo tee -a /etc/resolv.conf
