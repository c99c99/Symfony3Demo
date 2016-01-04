 for i in $(find ./vendor/symfony/symfony/src/Symfony/Bundle/FrameworkBundle/Command/ -type f -name '*.php' -exec grep -iq '127.0.0.1:8000' '{}' \; -print); 
do 
  sed -ir "s/'Address:port', '127\.0\.0\.1:8000'),/'Address:port', '0.0.0.0:8000'),/ig" ${i}; 
done

