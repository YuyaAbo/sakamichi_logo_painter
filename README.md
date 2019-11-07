# sakamichi_logo_painter

<image src="https://github.com/YuyaAbo/sakamichi_logo_painter/blob/master/sample_image.png" width=500>

## Usage

```dart
class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Flutter Demo Home Page'),
      ),
      body: Center(
        child: SakamichiLogo(
          size: 40,
          foregroundColor: Colors.blue,
          backgroundColor: Colors.purple,
          text: '46',
        ),
      ),
    );
  }
}
```

## Getting Started

This project is a starting point for a Dart
[package](https://flutter.dev/developing-packages/),
a library module containing code that can be shared easily across
multiple Flutter or Dart projects.

For help getting started with Flutter, view our 
[online documentation](https://flutter.dev/docs), which offers tutorials, 
samples, guidance on mobile development, and a full API reference.

