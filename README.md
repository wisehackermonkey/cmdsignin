useage 
curl https://raw.githubusercontent.com/wisehackermonkey/cmdsignin/master/github_login.sh > cmdsignin.sh && bash cmdsignin.sh && rm cmdsignin.sh


bash github_login.sh


```sh
TOKEN=$( cat ./tokenfile.txt )
git clone "https://$TOKEN@github.com/wisehackermonkey/happenings-events-test-automation.git"
``

curl https://raw.githubusercontent.com/wisehackermonkey/cmdsignin/master/github_login.sh | bash
