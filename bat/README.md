##### Useful flags and stuff you can do

```
-l, --language <language>         
            Explicitly set the language for syntax highlighting. The language can be specified as a
            name (like 'C++' or 'LaTeX') or possible file extension (like 'cpp', 'hpp' or 'md'). Use
            '--list-languages' to show all supported language names and file extensions.
-L, --list-languages              
            Display a list of supported languages for syntax highlighting.

-m, --map-syntax <from:to>...     
            Map a file extension or file name to an existing syntax. For example, to highlight
            *.conf files with the INI syntax, use '-m conf:ini'. To highlight files named
            '.myignore' with the Git Ignore syntax, use '-m .myignore:gitignore'.

```
```
# Incase desired languauge is not found automatically
bat -L | grep <insert-expected-language-extension>
```
 
edit ```--map-syntax``` in ```bat.conf``` to add the found language for future uses
