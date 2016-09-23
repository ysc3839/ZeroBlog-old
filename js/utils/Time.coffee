class Time
	since: (time) ->
		now = +(new Date)/1000
		secs = now - time
		if secs < 60
			back = "刚刚"
		else if secs < 60*60
			back = "#{Math.round(secs/60)} 分钟前"
		else if secs < 60*60*24
			back = "#{Math.round(secs/60/60)} 小时前"
		else if secs < 60*60*24*3
			back = "#{Math.round(secs/60/60/24)} 天前"
		else
			back = "于 "+@date(time)
		back = back.replace(/1 ([a-z]+)s/, "1 $1") # 1 days ago fix
		return back


	date: (timestamp, format="short") ->
		date = new Date(timestamp*1000)
		display = [date.getFullYear(), date.getMonth()+1, date.getDate()].join("-")
		if format != "short"
			display = display + " " + date.toTimeString().split(" ")[0]
		return display


	timestamp: (date="") ->
		if date == "now" or date == ""
			return parseInt(+(new Date)/1000)
		else
			return parseInt(Date.parse(date)/1000)


	# Get elistamated read time for post
	readtime: (text) ->
		chars = text.length
		if chars > 1500
			return parseInt(chars/1500)+" min read"
		else
			return "less than 1 min read"


window.Time = new Time