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

## deploy: invalidate CloudFront cache

    $ ./invalidate.sh --profile <AWS Profile>
