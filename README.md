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

7. Run the command in the root of your project to generate typography components

```sh
figma2flutter --input ./assets/token-sources/typography.json --output ./lib/src/tokens/typography/
```

8. Run the command in the root of your project to generate components components

1. dart path-folder-generate_assets.dart path-folder-components.json AppComponents

```sh
dart /Users/alitokhtarbay/Desktop/projects/dala_dev_design_system/lib/src/extensions/generate_assets.dart /Users/alitokhtarbay/Desktop/projects/dala_dev_design_system/assets/token-sources/components.json AppComponents
```