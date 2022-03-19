// this script collects the list of leaders in fpl

py begin
from datetime import date
today = date.today()
print(today)
py finish
day = py_result
file = 'COMP-' + day + '.csv'
filedet = 'COMP-DTL-' + day + '.csv'

write `csv_row(['part', 'GW', 'P', 'rank', 'play', 'pteam', 'ppos', 'pts'])` to `filedet`
write `csv_row(['RANK', 'player', 'URL'])` to `file`

!tagui/src/tagui https://raw.githubusercontent.com/strategyideas/FPL/master/mainfplleaders.tag
!tagui/src/tagui https://raw.githubusercontent.com/strategyideas/FPL/master/nextfpllead.tag

tagui https://raw.githubusercontent.com/strategyideas/FPL/master/mainfplleaders.tag
tagui https://raw.githubusercontent.com/strategyideas/FPL/master/nextfpllead.tag
tagui https://raw.githubusercontent.com/strategyideas/FPL/master/nextfpllead.tag

tagui https://raw.githubusercontent.com/strategyideas/FPL/master/mainfplleaders.tag
tagui https://raw.githubusercontent.com/strategyideas/FPL/master/nextfpllead.tag
tagui https://raw.githubusercontent.com/strategyideas/FPL/master/nextfpllead.tag
tagui https://raw.githubusercontent.com/strategyideas/FPL/master/nextfpllead.tag

tagui https://raw.githubusercontent.com/strategyideas/FPL/master/mainfplleaders.tag
tagui https://raw.githubusercontent.com/strategyideas/FPL/master/nextfpllead.tag
tagui https://raw.githubusercontent.com/strategyideas/FPL/master/nextfpllead.tag
tagui https://raw.githubusercontent.com/strategyideas/FPL/master/nextfpllead.tag
tagui https://raw.githubusercontent.com/strategyideas/FPL/master/nextfpllead.tag

tagui https://raw.githubusercontent.com/strategyideas/FPL/master/mainfplleaders.tag
tagui https://raw.githubusercontent.com/strategyideas/FPL/master/nextfpllead.tag
tagui https://raw.githubusercontent.com/strategyideas/FPL/master/nextfpllead.tag
tagui https://raw.githubusercontent.com/strategyideas/FPL/master/nextfpllead.tag
tagui https://raw.githubusercontent.com/strategyideas/FPL/master/nextfpllead.tag
tagui https://raw.githubusercontent.com/strategyideas/FPL/master/nextfpllead.tag

