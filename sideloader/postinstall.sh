cd "${INSTALLDIR}/${NAME}/FreebasicsPublic/"
manage="${VENV}/bin/python ${INSTALLDIR}/${NAME}/FreebasicsPublic/manage.py"

$manage migrate --settings=FreebasicsPublic.settings.production

# process static files
$manage compress --settings=FreebasicsPublic.settings.production
$manage collectstatic --noinput --settings=FreebasicsPublic.settings.production

# compile i18n strings
$manage compilemessages --settings=FreebasicsPublic.settings.production
