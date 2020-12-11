# Uber Clone

From [Udemy](https://www.udemy.com/course/flutter-uber-clone-app-with-firebase)

## Google Fire Store Setup

1. Create a real time database in fire store.
2. Enable Email based authentication.
3. Add app - android app.
   1. Get the package name from android folder - app/build.gradle
   2. Follow the remaining process.
4. Install Packages
   1. Firebase Core
   2. Firebase Auth
   3. Firebase Database
5. Go to firebase database package and find the code for getting database initiated.
6. Copy example code and makes changes based on `google-services.json`.



**Test for Connection**

```dart
onPressed: (){
            // Adding test data to fire store
            DatabaseReference dbRef = FirebaseDatabase.instance.reference().child('Test');
            dbRef.set('IsConnected');
          },
```

Check the database in fire store. The data `Test:IsConnected` is inserted.



## Assets

1. Create folder assets in the project.
2. Create folder underneath assets named images and fonts.
3. Paste all your resources under it.
4. Go to `pubspec.yaml` and declare your assets.

`pubspec.yaml`

```yaml
  assets:
    - assets/images/

  fonts:
    - family: Bolt-Regular
      fonts:
        - asset: assets/fonts/bolt-regular.ttf
    - family: Bolt-Bold
      fonts:
        - asset: assets/fonts/bolt-semibold.ttf
```

