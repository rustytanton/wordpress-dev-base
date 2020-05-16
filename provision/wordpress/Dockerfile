FROM wordpress:5.4.1

# Adjust PHP upload settings
COPY uploads.ini /usr/local/etc/php/conf.d/uploads.ini

# Remove unneeded plugins and themes
RUN rm /usr/src/wordpress/wp-content/plugins/hello.php && \
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