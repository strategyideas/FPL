
// this script collects the list of leaders in fpl

py begin
from datetime import date
today = date.today()
print(today)
py finish
day = py_result
file = 'plyr-pts' + day + '.csv'

write `csv_row(['PLYR', 'TEAM', 'POS', 'PRICE', 'SELBY', 'FORM', 'POINTS'])` to `file`
https://fantasy.premierleague.com/statistics
wait 5
for page from 1 to 10
	wait 5
	for plyr from 1 to 30
		read //*[@id="root"]/div[2]/div/div[1]/table/tbody/tr[`plyr`]/td[2]/button/div/div[2]/div[1] to player
		read //*[@id="root"]/div[2]/div/div[1]/table/tbody/tr[`plyr`]/td[2]/button/div/div[2]/div[2]/span[1] to team
		read //*[@id="root"]/div[2]/div/div[1]/table/tbody/tr[`plyr`]/td[2]/button/div/div[2]/div[2]/span[2] to pos
		read //*[@id="root"]/div[2]/div/div[1]/table/tbody/tr[`plyr`]/td[3] to price
		read //*[@id="root"]/div[2]/div/div[1]/table/tbody/tr[`plyr`]/td[4]/text()[1] to selby
		read //*[@id="root"]/div[2]/div/div[1]/table/tbody/tr[`plyr`]/td[5] to form
		read //*[@id="root"]/div[2]/div/div[1]/table/tbody/tr[`plyr`]/td[6] to pts
		write `csv_row([player, team, pos, price, selby, form, pts])` to `file`
	wait 1
	click /html/body/main/div/div[2]/div/div[1]/div[3]/button[3]/svg
	read //*[@id="root"]/div[2]/div/div[1]/div[3]/div/strong to pageno
	echo `pageno`
	echo `page`
	wait 2