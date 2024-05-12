# flutter_gg

## Null-Safety, Dart 3, with zero external dependencies

### IOS, Android, Linux, Mac, Web, Windows ready

An widget manager package which makes adding properties easy.

## Getting Started

This package is simple to use. Every single param can be sent within Style property.

## Properties Style class have:

| Property                | Type                    | Description                                                       |
| ----------------------- | ----------------------- | ----------------------------------------------------------------- |
| px                      | **double?**             | Sets the horizontal padding                                       |
| py                      | **double?**             | Sets the vertical padding                                         |
| pb                      | **double?**             | Sets the bottom padding                                           |
| pt                      | **double?**             | Sets the top padding                                              |
| pl                      | **double?**             | Sets the left padding                                             |
| pr                      | **double?**             | Sets the right padding                                            |
| p                       | **double?**             | Sets the padding on all sides                                     |
| mx                      | **double?**             | Sets the horizontal margin                                        |
| my                      | **double?**             | Sets the vertical margin                                          |
| mr                      | **double?**             | Sets the right margin                                             |
| ml                      | **double?**             | Sets the left margin                                              |
| mt                      | **double?**             | Sets the top margin                                               |
| mb                      | **double?**             | Sets the bottom margin                                            |
| m                       | **double?**             | Sets the margin on all sides                                      |
| bg                      | **Color?**              | Sets the background color                                         |
| left                    | **double?**             | Sets the left position                                            |
| right                   | **double?**             | Sets the right position                                           |
| top                     | **double?**             | Sets the top position                                             |
| bottom                  | **double?**             | Sets the bottom position                                          |
| boxShadow               | **BoxShadow?**          | Sets the box shadow                                               |
| gradient                | **Gradient?**           | Sets the gradient                                                 |
| border                  | **Border?**             | Sets the border                                                   |
| borderRadius            | **double?**             | Sets the border radius for all corners                            |
| borderRadiusTopLeft     | **double?**             | Sets the border radius for the top left corner                    |
| borderRadiusTopRight    | **double?**             | Sets the border radius for the top right corner                   |
| borderRadiusBottomLeft  | **double?**             | Sets the border radius for the bottom left corner                 |
| borderRadiusBottomRight | **double?**             | Sets the border radius for the bottom right corner                |
| height                  | **double?**             | Sets the height                                                   |
| width                   | **double?**             | Sets the width                                                    |
| mainAxisAlignment       | **MainAxisAlignment?**  | Sets the main axis alignment                                      |
| crossAxisAlignment      | **CrossAxisAlignment?** | Sets the cross axis alignment                                     |
| direction               | **EDirection?**         | Sets the flex direction                                           |
| isRounded               | **bool?**               | Sets whether the widget should have rounded corners               |
| isCenter                | **bool?**               | Sets whether the widget should be centered                        |
| isExpanded              | **bool?**               | Sets whether the widget should expand to fill the available space |
| alignment               | **Align?**              | Sets the alignment                                                |
| textStyle               | **TextStyle?**          | Sets the text style                                               |
| pressEffect             | **bool?**               | Sets whether the widget should have a press effect                |
| hoverColor              | **Color?**              | Sets the color when the widget is hovered                         |
| activeColor             | **Color?**              | Sets the color when the widget is active                          |

# Available **Properties gg widgets**

## gg

```
home: Scaffold(
    body:  gg(
              style: css.card(),
              children: [_card("Favourite", Icons.favorite,Favourites())]),
)

```

## ggtext

```
home: Scaffold(
    body:  ggtext(
                text: settingsGroupTitle!,
                style: css.cardtext(),
            ),
)

```

## ggbutton

```
home: Scaffold(
    body:  ggbutton(
                text: "test",
                rightChild: Icon(Icons.keyboard_arrow_right_outlined,
                    size: 24, color: Colors.white),
                onTap: () {
                  print("button pressed");
                },
                style: Style(
                    textStyle: TextStyle(color: Colors.white),
                    pressEffect: true,
                    hoverColor: Colors.blue,
                    bg: Colors.blue)),
)

```

# Using Multiple Styles

```
home: Scaffold(
    body:  gg(
              style: mixStyles([css.card(), css.bgred()]),
              children: [_card("Favourite", Icons.favorite,Favourites())]),
)

```

# Available **Properties with examples**

## Padding

- p
- px
- py
- pl
- pr
- pb
- pt

## Example: Padding

```
home: Scaffold(
    body: gg(children: [
              Icon(
                Icons.abc,
                size: 24,
                color: Colors.red,
              )
        ], style: Style(px: 5, py: 10)),
)

```

## Margin

- mx
- my
- ml
- mr
- mt
- mb
- m

```
home: Scaffold(
    body: gg(children: [
              Icon(
                Icons.abc,
                size: 24,
                color: Colors.red,
              )
        ], style: Style(mt: 5, mb: 10)),
)

```

## Button

- pressEffect
- hoverColor
- activeColor
- textStyle

```
home: Scaffold(
    body:   ggbutton(
                text: "test",
                leftChild:
                    Icon(Icons.arrow_back_ios, size: 24, color: Colors.white),
                onTap: () {
                  print("button pressed");
                },
                style: Style(
                    textStyle: TextStyle(color: Colors.white),
                    pressEffect: true,
                    hoverColor: Colors.blue,
                    bg: Colors.blue)),
)

```

## Position

- left
- right
- top
- bottom

```
home: Scaffold(
    body: gg(children: [
              Icon(
                Icons.abc,
                size: 24,
                color: Colors.red,
              )
        ], style: Style(left: 5, top: 10)),
)

```

## Flex

- direction
- crossAxisAlignment
- mainAxisAlignment

```
home: Scaffold(
    body: gg(children: [
              Icon(
                Icons.abc,
                size: 24,
                color: Colors.red,
              )
        ], style:  style: Style(
                    direction: FlexDirection.column,
                    crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceBetween)),
)

```

## Border

- border
- borderRadiusTopLeft
- borderRadiusTopRight
- borderRadiusBottomLeft
- borderRadiusBottomRight

```
home: Scaffold(
    body: gg(children: [
              Icon(
                Icons.abc,
                size: 24,
                color: Colors.red,
              )
        ], style:  style: Style(p: 15, border: Border.all(width: 1, color: Colors.red)),
)

```
