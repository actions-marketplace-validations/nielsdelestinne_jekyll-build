#!/bin/sh

# Interrupt execution on error
set -e

echo "Setting required workspace permissions"
chmod -R a+w /github/workspace

echo "Starting to build"
echo -e "->\tUsing jekyll's build command"
IS_VERBOSE_ENABLED=$1
if [ $IS_VERBOSE_ENABLED = 'true' ]
then
  echo -e "->\tVerbose enabled"
   jekyll build --trace --verbose
else
  echo -e "->\tVerbose disabled"
   jekyll build --trace
fi

echo "Finished building"
