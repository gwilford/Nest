#!/bin/bash
rrdtool create thermostat.rrd --step 600 \
DS:Target_temp:GAUGE:1800:0:30 \
DS:Ambient_temp:GAUGE:1800:0:30 \
DS:Humidity:GAUGE:1800:0:100 \
DS:Away:GAUGE:1800:0:1 \
RRA:AVERAGE:0.5:1:52560 \
RRA:MIN:0.5:144:1825 \
RRA:MAX:0.5:144:1825 \
RRA:AVERAGE:0.5:144:1825
