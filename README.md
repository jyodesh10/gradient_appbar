# chromaflow_appbar
A wrapper for AppBar() to get Gradient effect appbar.

## Features
- gradient effect
## Getting started
```yaml
dependencies:
  gradient_appbar: <latest_version>
```

```dart
import 'package:gradient_appbar/chromaflow_appbar.dart';
```

## Usage
```dart
    Scaffold(
      backgroundColor: Colors.black45,
      appBar: GradientAppbar(
        title: const Text("Title"), 
        gradientColors: const [Colors.blue, Colors.teal], 
        stops: const [0.3, 0.6],
        leading: IconButton(onPressed: () {}, icon: const Icon(Icons.arrow_back_ios_new_rounded)),
        trailing: IconButton(onPressed: () {}, icon: const Icon(Icons.filter)),
        elevation: 10,
        shadowColor: Colors.purple,
        borderRadius: BorderRadius.circular(20),
        centerTitle: true,
        height: 56
      )
    );
```