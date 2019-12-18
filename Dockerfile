FROM php:7.3-cli

LABEL "com.github.actions.name"="PHP Lint"
LABEL "com.github.actions.description"="Run Lint Against Pull Request"
LABEL "com.github.actions.icon"="eye"
LABEL "com.github.actions.color"="gray-dark"

LABEL version="1.0.0"
LABEL repository="http://github.com/michaelw90/php-lint"
LABEL homepage="http://github.com/michaelw90/php-lint"
LABEL maintainer="Michael Wright <php-lint@wserver.co.uk>"

RUN mv composer.phar /usr/local/bin/composer

RUN mkdir /phplint && cd /phplint && composer require overtrue/phplint && ln -s /phplint/vendor/bin/phplint /usr/local/bin/phplint

COPY "entrypoint.sh" "/entrypoint.sh"
RUN chmod +x /entrypoint.sh
ENTRYPOINT ["/entrypoint.sh"]
