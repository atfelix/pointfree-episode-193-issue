# pointfree-episode-193-issue

## Dependencies

I'm using Version 14.0 beta 2 (14A5229c) on a Mac M1 Max running macOS Monterey.

To see the issue run

```bash
$ swift run
```

without any changes to the code.  Here's the terminal output

```bash
Building for debugging...
Build complete! (0.06s)
```

If you just call `useInit` and comment the other top-level code, then the output is

```bash
Building for debugging...
[3/3] Linking pointfree-episode-193-issue
Build complete! (0.34s)
0
0
```
