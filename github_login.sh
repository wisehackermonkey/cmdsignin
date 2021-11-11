if  test -f  ~/.ssh/id_rsa.pub; then
echo "key exists"
else
echo "key doesnt exist"
echo "what is your email?"
read email

ssh-keygen -t rsa -C $email -f ~/.ssh/id_rsa -P ""

fi
KEY=$( cat ~/.ssh/id_rsa.pub )
TITLE=${KEY/* }
# the '/* ' above deletes every character in $KEY up to and including the last
# space.

JSON=$( printf '{"title": "%s", "key": "%s"}' "$TITLE" "$KEY" )

TOKEN=$( cat ./tokenfile.txt )

echo "adding your ssh key to github.com"
curl  -d "$JSON" "https://api.github.com/user/keys?access_token=$TOKEN"
