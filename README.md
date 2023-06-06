# Laravel Permissions Fix Script

A simple bash shell script to update Laravel files and folders permission and owner

## IMPORTANT: Set LARAVEL_OWNER, LARAVEL_WS_GROUP and LARAVEL_ROOT before running

## TO RUN (after logging in to your server using SSH):

### 1. Navigate to desired directory (outside your root directory)

```sh
cd /var/www/
```

### 2. Download the script

```sh
wget https://raw.githubusercontent.com/tjsturos-vincit/laravel-permissions-fix/dev/perm_fix.sh
```

### 3. Configure default variables as per your server configuration:

```
#Set variables here
LARAVEL_OWNER=user # <-- owner (user)
LARAVEL_WS_GROUP=www-data # <-- WebServer group
LARAVEL_ROOT=/var/www/html # <-- Laravel root directory
```

### 4. Set execute permission to it:

```sh
chmod +x perm_fix.sh
```

### 5. Run the script:

```sh
./perm_fix.sh
```

```sh
export LARAVEL_OWNER=vincit 
export LARAVEL_WS_GROUP=www-data 
export LARAVEL_ROOT=./
wget -qO - https://raw.githubusercontent.com/tjsturos-vincit/laravel-permissions-fix.git/dev/perm_fix.sh | bash

```
