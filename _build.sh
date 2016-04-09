cd source
for js_file in *.js
do
	java -jar ../compiler.jar --language_in=ECMASCRIPT5 --compilation_level SIMPLE --js_output_file=../builds/firefox/scripts/$js_file $js_file
done
cd ..

cp builds/firefox/scripts/* builds/chrome/scripts
cp builds/firefox/scripts/* builds/vkopt.safariextension/scripts
cp builds/firefox/scripts/* builds/opera.extension/scripts
cp builds/firefox/scripts/* builds/firefoxJetpack/resources/vkopt/data/scripts

cp background.js builds/chrome/background.js
cp background.js builds/firefox/resources/vkopt/lib/background.js
cp background.js builds/maxthon/background.js
cp background.js builds/opera.extension/background.js
cp background.js builds/vkopt.safariextension/background.js
cp background.js builds/firefoxJetpack/resources/vkopt/data/background.js

cp content_script.js builds/chrome/content_script.js
cp content_script.js builds/firefox/resources/vkopt/data/content_script.js
cp content_script.js builds/maxthon/content_script.js
cp content_script.js builds/opera.extension/includes/content_script.js
cp content_script.js builds/vkopt.safariextension/content_script.js
cp content_script.js builds/firefoxJetpack/resources/vkopt/data/content_script.js
