# Notification Shade

A plug-in to open and close the notification shade on Android.

## Installing
![A test image](https://img.shields.io/github/stars/RoundedInfinity/notification_shade)

 First add `notification_shade` as a [dependency in your pubspec.yaml file](https://flutter.dev/docs/development/packages-and-plugins/using-packages)

```yaml
notification_shade: <Newest Version>
```

Then import it.

```dart
import 'package:notification_shade/notification_shade.dart';
```

Now you have to add this permission to your _AndroidManifext.xml_.

```xml
<uses-permission android:name="android.permission.EXPAND_STATUS_BAR" />
```

## Usage

To open the notification shade

```dart
NotificationShade.openNotificationShade;
```

And to close it

```dart
NotificationShade.closeNotificationShade;
```

Have a nice day and stay hydrated.
