#!/bin/bash
# Some useful audio functions:
# spk: modify default speaker volume or mute/unmute the speaker and/or display the current setting
# mic: modify default microphone volume or mute/unmute the speaker and/or display the current setting
# vol: mute/unmute speaker and microphone and/or display the current setting

# Copyright 2024 Bernd Finger, Red Hat
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
# 
# http://www.apache.org/licenses/LICENSE-2.0
# 
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

function spk {
   _ARG=$1
   if [[ ${_ARG}. == "+." ]]; then
      pactl set-sink-volume @DEFAULT_SINK@ +5%
   elif [[ ${_ARG}. == "++." ]]; then
      pactl set-sink-volume @DEFAULT_SINK@ +10%
   elif [[ ${_ARG}. == "+++." ]]; then
      pactl set-sink-volume @DEFAULT_SINK@ +20%
   elif [[ ${_ARG}. == "-." ]]; then
      pactl set-sink-volume @DEFAULT_SINK@ -5%
   elif [[ ${_ARG}. == "--." ]]; then
      pactl set-sink-volume @DEFAULT_SINK@ -10%
   elif [[ ${_ARG}. == "---." ]]; then
      pactl set-sink-volume @DEFAULT_SINK@ -20%
   elif [[ ${_ARG}. == "off." || ${_ARG}. == "mute." ]]; then
      pactl set-sink-mute @DEFAULT_SINK@ 1
   elif [[ ${_ARG}. == "on." || ${_ARG}. == "unmute." ]]; then
      pactl set-sink-mute @DEFAULT_SINK@ 0
   elif [[ ${_ARG}. == ".." ]]; then
      pactl set-sink-mute @DEFAULT_SINK@ toggle
   elif [[ ${_ARG}. != "." ]]; then
      pactl set-sink-volume @DEFAULT_SINK@ ${_ARG}%
   fi
   pactl get-sink-volume @DEFAULT_SINK@ | \
   awk '/^Volume:/{
      if(NF==15){total_sink_vol=($5+$12)/2};
      if(NF==29){total_sink_vol=($5+$12+$19+$26)/4}
   }
   END{printf ("%s% - ", total_sink_vol)}'
   pactl get-sink-mute @DEFAULT_SINK@ | \
   awk '/Mute: no/{print "\033[32munmuted(ON)\033[0m"}
     /Mute: yes/{print "\033[31mmuted(OFF)\033[0m"}'
}

function mic {
   _DEFAULT_SOURCE=$(pactl get-default-source)
   _ARG=$1
   if [[ ${_ARG}. == "+." ]]; then
      pactl set-source-volume ${_DEFAULT_SOURCE} +5%
   elif [[ ${_ARG}. == "++." ]]; then
      pactl set-source-volume ${_DEFAULT_SOURCE} +10%
   elif [[ ${_ARG}. == "+++." ]]; then
      pactl set-source-volume ${_DEFAULT_SOURCE} +20%
   elif [[ ${_ARG}. == "-." ]]; then
      pactl set-source-volume ${_DEFAULT_SOURCE} -5%
   elif [[ ${_ARG}. == "--." ]]; then
      pactl set-source-volume ${_DEFAULT_SOURCE} -10%
   elif [[ ${_ARG}. == "---." ]]; then
      pactl set-source-volume ${_DEFAULT_SOURCE} -20%
   elif [[ ${_ARG}. == "off." || ${_ARG}. == "mute." ]]; then
      pactl set-source-mute ${_DEFAULT_SOURCE} 1
   elif [[ ${_ARG}. == "on." || ${_ARG}. == "unmute." ]]; then
      pactl set-source-mute ${_DEFAULT_SOURCE} 0
   elif [[ ${_ARG}. == ".." ]]; then
      pactl set-source-mute ${_DEFAULT_SOURCE} toggle
   elif [[ ${_ARG}. != "." ]]; then
      pactl set-source-volume ${_DEFAULT_SOURCE} ${_ARG}%
   fi
   pactl get-source-volume ${_DEFAULT_SOURCE} | \
   awk '/^Volume:/{
      if(NF==15){total_src_vol=($5+$12)/2}
      if(NF==29){total_src_vol=($5+$12+$19+$26)/4}
   }
   END{printf ("%s% - ", total_src_vol)}'
   pactl get-source-mute ${_DEFAULT_SOURCE} | \
   awk '/Mute: no/{print "\033[32munmuted(ON)\033[0m"}
     /Mute: yes/{print "\033[31mmuted(OFF)\033[0m"}'
}

function vol {
   _ARG=$1
   if [[ ${_ARG}. == "off." || ${_ARG}. == "mute." ]]; then
      printf "spk: "; spk off
      printf "mic: "; mic off
   elif [[ ${_ARG}. == "on." || ${_ARG}. == "unmute." ]]; then
      printf "spk: "; spk on
      printf "mic: "; mic on
   elif [[ ${_ARG}. == ".." ]]; then
      printf "spk: "; spk .
      printf "mic: "; mic .
   elif [[ ${_ARG}. == "." ]]; then
      printf "spk: "; spk
      printf "mic: "; mic
   fi
}
