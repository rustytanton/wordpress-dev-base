FROM wordpress:5.4.1

# Adjust PHP upload settings
COPY uploads.ini /usr/local/etc/php/conf.d/uploads.ini

RUN \
    # install needed packages for downloading/extracting themes/plugins
    # apt-get update && apt-get install -y \
    # wget \
    # unzip && \
    # add new plugins (example)
    # wget https://downloads.wordpress.org/plugin/classic-editor.1.5.zip && \
    # unzip classic-editor.1.5.zip -d /usr/src/wordpress/wp-content/plugins/ && \
    # rm classic-editor.1.5.zip && \
    # add new themes (example)
    # wget https://downloads.wordpress.org/theme/wp-bootstrap-starter.3.3.3.zip && \
    # unzip wp-bootstrap-starter.3.3.3.zip -d /usr/src/wordpress/wp-content/themes/ && \
    # rm wp-bootstrap-starter.3.3.3.zip && \
    # remove unneeded plugins and themes
    rm /usr/src/wordpress/wp-content/plugins/hello.php && \
    rm -rf /usr/src/wordpress/wp-content/themes/twentyten && \
    rm -rf /usr/src/wordpress/wp-content/themes/twentyeleven && \
    rm -rf /usr/src/wordpress/wp-content/themes/twentytwelve && \
    rm -rf /usr/src/wordpress/wp-content/themes/twentythirteen && \
    rm -rf /usr/src/wordpress/wp-content/themes/twentyfourteen && \
    rm -rf /usr/src/wordpress/wp-content/themes/twentyfifteen && \
    rm -rf /usr/src/wordpress/wp-content/themes/twentysixteen && \
    rm -rf /usr/src/wordpress/wp-content/themes/twentyseventeen && \
    rm -rf /usr/src/wordpress/wp-content/themes/twentyeightteen && \
    rm -rf /usr/src/wordpress/wp-content/themes/twentynineteen