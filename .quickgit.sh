git add .
if [ $# -eq 0 ]; then
    echo "No commit message provided. Using default message"
    git commit -a -m "quickcommit"
elif [ $# -eq 1 ]; then
    echo "Commit message recieved, committing with message"
    git commit -a -m "$1"
else
    echo "Invalid number of arguments. Please provide a single commit message"
    exit 1
fi
git push
