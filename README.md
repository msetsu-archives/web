web
---------

https://msetsu.com

みんせつウェブサイト


develop
----------

    $ npm install
    $ gulp server
    # => http://localhost:8080

deploy
------------

    $ gulp clean
    $ gulp build
    $ gulp dist
    $ sync.sh --profile <AWS Profile>

deploy: invalidate CloudFront cache
-------------------------------------

    $ ./invalidate.sh --profile <AWS Profile>
