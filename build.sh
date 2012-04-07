clear 


/workspace/AdobeAIRSDK/bin/adt -package -storetype PKCS12 -keystore <your pfx certificate> -storepass password -target ane ./ANE/ext/URLLauncher.ane ./ANE/extension.xml -swc ./ANE/URLLauncher.swc -platform iPhone-ARM ./ANE/library.swf ./ANE/libUrlLauncher.a 

/workspace/AdobeAIRSDK/bin/adt -package -target ipa-test-interpreter -provisioning-profile <your profile> -storetype pkcs12 -keystore <your certificate> -storepass <certificate password> ./URLLauncherTest.ipa ./TestApp/URLLauncherTest-app.xml ./TestApp/URLLauncherTest.swf -extdir ./ANE/ext/