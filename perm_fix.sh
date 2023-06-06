echo "Starting"

# BEGIN Fix Laravel Permissions Script

# Adding owner to web server group
usermod -a -G ${LARAVEL_WS_GROUP} ${LARAVEL_OWNER}

# Set files owner/group
chown -R ${LARAVEL_OWNER}:${LARAVEL_WS_GROUP} ${LARAVEL_ROOT}

# Set correct permissions for directories 
find ${LARAVEL_ROOT} -type f -exec chmod 644 {} \;

# Set correct permissions for files 
find ${LARAVEL_ROOT} -type d -exec chmod 755 {} \;

# Set webserver group for storage + cache folders
chgrp -R ${LARAVEL_WS_GROUP} ${LARAVEL_ROOT}/storage ${LARAVEL_ROOT}/bootstrap/cache

# Set correct permissions for storage + cache folders
chmod -R ug+rwx ${LARAVEL_ROOT}/storage ${LARAVEL_ROOT}/bootstrap/cache

# END Fix Laravel Permissions Script
echo "Finished"
