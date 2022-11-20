// This script collects the list of leading players in FPL and saves their current points
// py begin
// from datetime import date
// today = date.today()
// print(today)
// py finish
// echo `py_result`
// day = py_result
// echo `day`
file = 'plyr-pts-2011'  + '.csv'

write `csv_row(['PLYR', 'TEAM', 'POS', 'PRICE', 'SELBY', 'FORM', 'POINTS'])` to `file`
https://fantasy.premierleague.com/statistics
wait 5
valid_msg = "Accept All Crokies" 
read /html/body/div[2]/div/div/div[1]/div[5]/button[1] to msg
echo `msg`
echo `valid_msg`
if msg equals to valid_msg
	click /html/body/div[2]/div/div/div[1]/div[5]/button[1]
wait 5
snap page to fplcurrpts.jpg
curr_page = 1
for page from 1 to 5
	wait 1
	if page equals to curr_page
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
		for tabber from 1 to 8
			keyboard [tab]
		keyboard [pagedown]
		keyboard [pagedown]	
		keyboard [pagedown]
		if !exist('//*[@id="root"]/div[2]/div/div[1]/div[3]/button[3]')
			echo "Error in moving to next page"
		click //*[@id="root"]/div[2]/div/div[1]/div[3]/button[3]
		read //*[@id="root"]/div[2]/div/div[1]/div[3]/div/strong to curr_page						
		echo `curr_page`
		echo `page`
		wait 1
