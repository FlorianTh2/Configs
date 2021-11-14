# Extension settings

- export setting:

```
    code --list-extensions | % { "code --install-extension $_" } > C:\Users\Florian\Desktop\vscode_extensions.txt
```

- import settings (for each line in output file):

```
    code --install-extension one_single_output_line
```
