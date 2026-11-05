set -e
mkdir -p app/src/main/assets app/src/main/java/com/example/skullcalc
mv app-build.gradle app/build.gradle
mv AndroidManifest.xml app/src/main/
mv MainActivity.java app/src/main/java/com/example/skullcalc/
mv index.html app/src/main/assets/
for d in mdpi hdpi xhdpi xxhdpi xxxhdpi; do
  mkdir -p app/src/main/res/mipmap-$d
  mv ic_$d.png app/src/main/res/mipmap-$d/ic_launcher.png
done
