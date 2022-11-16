echo "custom_icloud=https://raw.githubusercontent.com/Loyalsoldier/domain-list-custom/release/icloud.txt" >> $GITHUB_ENV

# no need
echo "payload:" > baha_domain.txt

#download source grep=search -E=use regex ^排除 (full或domain)+:
curl -sSL ${custom_icloud} | grep -E "^(full|domain):" | awk -F ':' '{printf "  - |+.%s|\n", $2}' | sed "s/|/'/g" >> icloud.txt


curl -sSL ${lan_cidr} | perl -ne '/(.+\/\d+)/ && print "  - |$1|\n"' | sed "s/|/'/g" >> lancidr.txt

#########################################################################################################################################

#cp paste original | insert '' after - and end |search for keywords IP/PROCESS/user-agent | insert # at the front of the line >> icloud.txt

#cp paste original
curl -sSL ${the given name of the file}

