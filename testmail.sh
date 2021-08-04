#!/bin/bash

echo -e "Subject: E-mail de teste" | exim -r root@$HOSTNAME -v -odf testehostdime@hotmail.com hostdimeteste@gmail.com



