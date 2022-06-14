if [ -z $UPSTREAM_REPO ]
then
  echo "Cloning main Repository"
  git clone https://github.com/DHANANJAY4532/autofilterbot_v3 .git /autofilterbot_v3
else
  echo "Cloning Custom Repo from $UPSTREAM_REPO "
  git clone $UPSTREAM_REPO /autofilterbot_v3
fi
cd /autofilterbot_v3
pip3 install -U -r requirements.txt
echo "STARTING.......🔥"
python3 bot.py
