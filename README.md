# lpGodotOggExportIssue
Project created to show off an issue in Godot Game Engine  
https://github.com/godotengine/godot/issues/70266

Run from the editor the game load the .ogg correctly.  
But if you run the exported .exe the .ogg path is broken.

## Issue description
With gdscript you can load an .ogg file by its path like this one :

```gdscript
var music_path = 'res://Symphony-Nr-5-in-C-Minor-(1st-Movement).ogg'
```

But when you export the game, without telling you, Godot change the path inside the .pck from .ogg to .oggstr with some md5 hash

```gdscript
var exported_path_in_pck = 'res://.import/Symphony-Nr-5-in-C-Minor-(1st-Movement).ogg-ddee16cf28ebd776db9cd88d611ab1f8.oggstr'
```

I had to load the .pck with GodotPckExplorer to notice the change.
