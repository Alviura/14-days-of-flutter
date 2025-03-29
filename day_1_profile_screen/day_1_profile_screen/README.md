# day_1_profile_screen - Stateless Vs Stateful Widgets

## Stateless Widgets

Stateless widget is a widget that does not change once it is built. This means:
1. It does not hold any state(no variables that change during runtime)
2. It only renders once and rebuilds only if its parent widget updates
3. The widget's appearance depends on the data it receives (through the constructor parameter)

code example
```dart 
import 'package:flutter/material.dart';
class Profile extends StatelessWidget {
    final String name; // This value is set once and never changes
    const Profile({super.key, required this.name});

    @override
    Widget build(BuildContext context) {
        return Center(
            child: Text("Hello $name!")
        );
    }
}
void main(){
    runApp(MaterialApp(
        home: Scaffold(
            body: Profile(name: "Alvin") // constructor
        )
    ));
}
```

### When to use a stateless widget
1. When the UI does not change over time (eg, a static profile card)
2. When all data comes from the constructor parameters and doesn't need to be updated
3. For UI components that don't need User interaction. eg; icons, text etc.
4. When performance is a priority; Stateless widgets reduce unnecessary rebuilds and improves performance

## Stateful Widgets
A Stateful Widget is a widget that can change over time. This means that the widget can rebuild whenever its internal state updates,

### Key concept of stateful widgets
A stateful widget has two classes
1. The **Widget class** (which extends StatefulWidget) -> Defines the widget itself
2. The **state class** (which extends State<>) -> Manages and updates the widget's state

### When to use a stateful Widget
1. The UI needs to change dynamically
2. The widget responds to user interaction(eg clicking a button)
3. You fetch data from an API and want to display updates
4. You are using animations or form inputs

code example
```dart
import 'package:flutter/material.dart';

class CounterApp extends StatefulWidget {
    @override
    _CounterAppState createState() => _CounterAppState(); //creates the state object

    class _CounterAppState extends State<CounterApp>{
        int _counter = 0; // state variable

        void _incrementCounter(){ // tells flutter to rebuild the UI
            setState((){
                _counter++;
            });
        }

    }
    @override 
    Widget build(BuildContext context) {
        return Scaffold(
            appbar: AppBar(title: Text("Stateful Vs Stateless widget"),
            body: Center(
                child: Column(
                    children[
                        Text("You pressed the button this times: $_counter"),
                        ElevatedButton(onpressed: _incrementCounter, child: Text("Increase Counter"))
                    ]
                )
            ))
        );

    }
}
```

## Advanced Layout Widgets
### Stack 
Allows you to place Widgets on top of each other, similar to absolute positioning in CSS

### Flex(Row & Column customization)
Allows you to control the behavior of Row and Column widget precisely

### Wrap(Handling Overflow in Rows & Columns)
The wrap widget automatically moves overflowing widgets to the next line instead of throwing an error

### FractionallySizedBox (Percentage-based Sizing)
The FractionallySizedBox widget allows you to size a widget as fraction of its parents 
