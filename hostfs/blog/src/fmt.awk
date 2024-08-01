BEGIN {line = 1;
	print "<table><tbody>"
}

/0000/ && NF > 1 && !/OPT pass/{
        mc = substr($0,11,8)

        i = match($0, /\.[a-z0-9]+/)
        label = substr($0, RSTART, RLENGTH)

        instr = substr($0, 30)
        sub(/;.*$/, "", instr)
        sub(/ +$/, "", instr)

        i = match($0, /;.*$/)
        comment = substr($0, RSTART, RLENGTH)
        sub(/^; */, "", comment)

        i = index(instr, " ")
        args = substr(instr, i+1)
        instr = substr(instr, 0, i-1)
             
        #printf "|`%s`|*%02d*|%s|`%s`|`%s`|%s|\n", mc, line, label, instr, args, comment
	print "  <tr>"
        printf "    <td><code>%s</code></td><td><em>%02d</em></td><td><code>%s</code></td><td><code>%s</code></td><td><code>%s</code></td><td>%s</td>\n", mc, line, label, instr, args, comment
	print "  </tr>"
        line += 1
}
END {
	print "</tbody></table>"
}
