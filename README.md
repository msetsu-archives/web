## web

https://msetsu.com/company/

みんせつウェブサイト

## develop

    $ yarn
    $ gulp server
    # => http://localhost:8080

## deploy

    $ gulp clean
    $ gulp build
    $ gulp dist
    $ sync.sh --profile <AWS Profile>

## deploy: invalidate CloudFront cache

    $ ./invalidate.sh --profile <AWS Profile>
