#### STEPS TO BUILD

### WINDOWS/ANDROID 

- Create a keystore:
Run the following command -
`C:/'Program Files'/Android/'Android Studio'/jre/bin/keytool -genkey -v -keystore c:/Users/<USER_NAME>/key.jks -storetype JKS -keyalg RSA -keysize 2048 -validity 10000 -alias key`

location of the `keytool` might vary. You can run `flutter doctor -v` to determine location of `Java binary at:`. Just replace the `java` with `keytool`.

- Reference the keystore from the app:

Create a file named `<app dir>/android/key.properties` that contains a reference to your keystore:

```
storePassword=<password from previous step>
keyPassword=<password from previous step>
keyAlias=key
storeFile=<location of the key store file, such as /Users/<user name>/key.jks>
```

Ensure this file is ignored in the gitignore file.

- Configure signing in gradle

Copy the `build.gradle` file located in this project, ie `<app dir>/android/app/build.gradle` file.

- Review the app manifest

You need to allow internet access on the new flutter app you just built. See `<app dir>/android/app/src/main`.

- Run `flutter build apk --split-per-abi` to release the apk.
