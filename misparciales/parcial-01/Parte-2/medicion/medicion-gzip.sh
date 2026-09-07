for archivo in index-grande.html styles.css styles-min.css app.js datos.json datos.xml imagen.svg texto.txt; do
    echo "===== $archivo ====="

    curl -s -H 'Accept-Encoding: identity' -o /dev/null \
    -w "SIN    size=%{size_download}B time=%{time_total}s\n" \
    http://parcial.empresa.local/$archivo

    curl -s -H 'Accept-Encoding: gzip' -o /dev/null \
    -w "GZIP  size=%{size_download}B time=%{time_total}s\n" \
    http://parcial.empresa.local/$archivo 

    echo

done

    echo "Cambiar el nivel para hacer las comparaciones"

