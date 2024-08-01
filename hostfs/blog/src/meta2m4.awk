BEGIN{
	FS=": "
	macro["title"]= "__POST_TITLE"
	macro["description"] = "__POST_DESC"
	macro["date"] = "__POST_DATE"
	macro["url"] = "__POST_URL"
	macro["html"] = "__POST_HTML"
}
/:/ {
	if ($1 == "date")
		print "define(" macro[$1] ",`" $2 "T00:00:00+00:00')dnl"
	else
		print "define(" macro[$1] ",`" $2 "')dnl"
}
