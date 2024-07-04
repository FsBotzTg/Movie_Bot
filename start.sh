echo "Cloning Repo...."

git clone https://github.com/FsBotzTg/Movie_Bot /Movie_Bot

cd /Movie_Bot

pip3 install -r requirements.txt

echo "Starting Bot...."

python3 bot.py
