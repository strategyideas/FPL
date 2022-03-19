py begin
from datetime import date
today = date.today()
print(today)
py finish
day = py_result
file = 'COMP-' + day + '.csv'
filedet = 'COMP-DTL-' + day + '.csv'

for loop from 1 to 10
	https://fantasy.premierleague.com/leagues/314/standings/c?phase=1&page_new_entries=1&page_standings=`loop`
	if exist('/html/body/div[2]/div/div/div[1]/div[5]/button[1]')
		click /html/body/div[2]/div/div/div[1]/div[5]/button[1]
			for row from 1 to 49 
				wait 1.0
				echo `row`
				click /html/body/main/div/div[2]/div[2]/div[1]/div/table/tbody/tr[`row`]/td[2]/a 
				click /html/body/main/div/div[2]/div[2]/div[2]/div/div[1]/div[1]/div[3]/a

				for gw from 1 to 2
					echo `gw`
					if exist('/html/body/main/div/div[2]/div/div[1]/div[2]/div[2]/table/tbody/tr[`gw`]/td[1]/a')
						click /html/body/main/div/div[2]/div/div[1]/div[2]/div[2]/table/tbody/tr[`gw`]/td[1]/a
						URL = url()
						click /html/body/main/div/div[2]/div[2]/div[1]/div[4]/div/div/ul/li[2]/a
						read /html/body/main/div/div[2]/div[2]/div[2]/div/div[1]/div[1]/div[1]/h4 to fplplayer
						read /html/body/main/div/div[2]/div[2]/div[1]/div[3]/div/div[2]/div[2]/div[1]/div to gwrank
						read /html/body/main/div/div[2]/div[2]/div[2]/div/div[1]/div[1]/div[2]/ul/li[2]/div to overallrank
						for p from 1 to 11
							read /html/body/main/div/div[2]/div[2]/div[1]/div[4]/div/div/div/div/div[1]/table/tbody/tr[`p`]/td[3]/button/div/div[2]/div[1] to play
							read /html/body/main/div/div[2]/div[2]/div[1]/div[4]/div/div/div/div/div[1]/table/tbody/tr[`p`]/td[3]/button/div/div[2]/div[2]/span[1] to pteam
							read /html/body/main/div/div[2]/div[2]/div[1]/div[4]/div/div/div/div/div[1]/table/tbody/tr[`p`]/td[3]/button/div/div[2]/div[2]/span[2] to ppos
							read /html/body/main/div/div[2]/div[2]/div[1]/div[4]/div/div/div/div/div[1]/table/tbody/tr[`p`]/td[4] to pts
							write `csv_row([fplplayer, gw, 'P', gwrank, play, pteam, ppos, pts])` to `filedet`
						for s from 1 to 4
							read /html/body/main/div/div[2]/div[2]/div[1]/div[4]/div/div/div/div/div[2]/table/tbody/tr[`s`]/td[3]/button/div/div[2]/div[1] to play
							read /html/body/main/div/div[2]/div[2]/div[1]/div[4]/div/div/div/div/div[2]/table/tbody/tr[`s`]/td[3]/button/div/div[2]/div[2]/span[1] to pteam
							read /html/body/main/div/div[2]/div[2]/div[1]/div[4]/div/div/div/div/div[2]/table/tbody/tr[`s`]/td[3]/button/div/div[2]/div[2]/span[2] to ppos
							read /html/body/main/div/div[2]/div[2]/div[1]/div[4]/div/div/div/div/div[2]/table/tbody/tr[1]/td[4] to pts
							write `csv_row([fplplayer, gw, 'S', gwrank, play, pteam, ppos, pts])` to `filedet`

						write `csv_row([gw,overallrank, fplplayer, URL, gwrank, overallrank])` to `file`
					click /html/body/main/div/div[2]/div[2]/div[2]/div/div[1]/div[1]/div[3]/a
				https://fantasy.premierleague.com/leagues/314/standings/c?phase=1&page_new_entries=1&page_standings=`loop`
