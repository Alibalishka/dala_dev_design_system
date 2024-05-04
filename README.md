# dala-dev-design-system

#### Требования

1. Названия компонентов и методов должны совпадать с Figma. Если вас не устраивает нейминг в дизайне, отработайте вопрос с дизайнером.

#### Генерация Figma токенов

1. Install figma2flutter package

```sh
dart pub global activate figma2flutter
```

2. Export your tokens from Figma and save the json file in ./token-sources folder
3. Merge main and components files in one JSON.
4. Run the command in the root of your project to generate color components

```sh
figma2flutter --input ./assets/token-sources/colors.json --output ./lib/src/tokens/color/
```

5. Run the command in the root of your project to generate dimensions components

```sh
figma2flutter --input ./assets/token-sources/dimensions.json --output ./lib/src/tokens/dimensions/
```

6. Run the command in the root of your project to generate components

```sh

```