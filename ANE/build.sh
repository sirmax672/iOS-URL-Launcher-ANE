clear 


/workspace/AdobeAIRSDK/bin/adt -package -storetype PKCS12 -keystore cert.pfx -storepass password -target ane ./ext/URLLauncher.ane extension.xml -swc URLLauncher.swc -platform iPhone-ARM library.swf libUrlLauncher.a 

/workspace/AdobeAIRSDK/bin/adt -package -target ipa-test-interpreter -provisioning-profile <your profile> -storetype pkcs12 -keystore <your certificate> -storepass <certificate password> ./URLLauncherTest.ipa URLLauncherTest-app.xml URLLauncherTest.swf -extdir ./ext/