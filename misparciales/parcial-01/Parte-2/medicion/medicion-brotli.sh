
for archivo in index-grande.html styles.css styles-min.css app.js datos.json datos.xml imagen.svg texto.txt; do
    echo "===== $archivo ====="

    curl -s -H 'Accept-Encoding: identity' -o /dev/null \
    -w "SIN    size=%{size_download}B time=%{time_total}s\n" \
    http://parcial.empresa.local/$archivo

    curl -s -H 'Accept-Encoding: br' -o /dev/null \
    -w "BROTLI size=%{size_download}B time=%{time_total}s\n" \
    http://parcial.empresa.local/$archivo

    echo
done

    echo "Cambiar el nivel para realizar comparaciones"
