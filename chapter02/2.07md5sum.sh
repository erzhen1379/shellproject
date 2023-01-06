#!/bin/bash
ls  |awk '{print $9}' |xargs -n 1   md5sum >md5.txt