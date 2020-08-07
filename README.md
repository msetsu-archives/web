## web

https://msetsu.com/company/

みんせつウェブサイト

## develop

    $ yarn
    $ yarn gulp server
    # => http://localhost:8080

## deploy

    $ yarn gulp build
    $ yarn gulp dist
    $ ./sync.sh --profile <AWS Profile>
    
※AWS Profileの設定は、aws-cliをインストールして各自行ってください
<br>
参考：https://docs.aws.amazon.com/cli/latest/userguide/cli-configure-quickstart.html

## deploy: invalidate CloudFront cache

    $ ./invalidate.sh --profile <AWS Profile>
