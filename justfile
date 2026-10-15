default:
    echo 'Hello, world!'

open:
    open https://headstraight4life.com
alias o := open

deploy:
    aws s3 sync . s3://headstraight4life.com --delete --exclude ".*" --exclude "*/.*" --exclude justfile --exclude README.md
    aws cloudfront create-invalidation --distribution-id EA4WZ5LTPNXIH --paths "/*"
alias d := deploy
