#!/usr/bin/env ijconsole

NB. measurements
echo 'freads time:'
echo timex 'm =: _2]\ (m e. '';'',LF) <;.2 m [ m=:freads<''measurements.txt'''

NB. cities and values
c=: {."1 m
v=: ".@:-.&LF &> {:"1 m

NB. groupby c
echo 'groupby time:'
echo timex 'v=: (v{~]) &.> I.&.> <"1 =c'

NB. results: min/mean/max 
echo 'min/mean/max time:'
echo timex 'r=: {{(<./y),((+/%#)y),(>./y)}} &.> v'

NB. columns: cities,results
r=: (~.c) ,. r

echo r

exit''
