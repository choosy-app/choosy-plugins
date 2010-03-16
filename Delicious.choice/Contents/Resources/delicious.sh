#!/bin/bash
escaped=${1/&/%26}
escaped=${escaped/\#/%23}
open "x-choosy://best.running/http://del.icio.us/post?v=2&url=$escaped"
