mthregex="(POST|PUT|GET|OPTIONS|DELETE|PATCH)"
ipregex="^(([0-9]{1,3}\.){3}[0-9]{1,3})"

start="28\/Oct\/2024:06:25:05"
end="28\/Oct\/2024:12:08:51"

echo
echo 'Топ 10 IP адресов, делающих наибольшее кол-во запросов:'
echo
        sed -E -e "/${start}/,/${end}/ !d" $1 | rg -oe $ipregex | sort | uniq -c | sort -nr | head -n 10
echo
echo 'Топ HTTP методов, отправленных в запросах за указанный период:'
echo
        sed -E -e "/${start}/,/${end}/ !d" $1 | rg -oe $mthregex | sort | uniq -c | sort -nr
echo
echo ''
