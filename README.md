# pointfree-episode-193-issue

## Dependencies

I'm using Xcode 14.0 beta (14A5228q) on a Mac M1 Max running macOS Monterey.

To see the issue run

```bash
$ swift run
```

without any changes to the code.  Here's the terminal output

```bash
Building for debugging...
Build complete! (0.06s)
```

If you change `Task { ... }` to `Task.detached` in the top-level code, the output is

```bash
Building for debugging...
[3/3] Linking pointfree-episode-193-issue
Build complete! (0.34s)
pointfree_episode_193_issue NSThread
pointfree_episode_193_issue NSThread
pointfree_episode_193_issue NSThread
pointfree_episode_193_issue NSThread
pointfree_episode_193_issue NSThread
pointfree_episode_193_issue NSThread
pointfree_episode_193_issue NSThread
pointfree_episode_193_issue NSThread
pointfree_episode_193_issue NSThread
pointfree_episode_193_issue NSThread
pointfree_episode_193_issue NSThread
pointfree_episode_193_issue NSThread
pointfree_episode_193_issue NSThread
pointfree_episode_193_issue NSThread
pointfree_episode_193_issue NSThread
pointfree_episode_193_issue NSThread
pointfree_episode_193_issue NSThread
pointfree_episode_193_issue NSThread
pointfree_episode_193_issue NSThread
pointfree_episode_193_issue NSThread
Task.init counterActor2.count   0
Task.init counterActor2.maximum 1

```

__Note__:  I didn't change the logging strings, hence the `Task.init`. 

If you just call `useInit`, then the output is

```bash
Building for debugging...
[3/3] Linking pointfree-episode-193-issue
Build complete! (0.34s)
useInit() NSThread
useInit() NSThread
useInit() NSThread
useInit() NSThread
useInit() NSThread
useInit() NSThread
useInit() NSThread
useInit() NSThread
useInit() NSThread
useInit() NSThread
useInit() NSThread
useInit() NSThread
useInit() NSThread
useInit() NSThread
useInit() NSThread
useInit() NSThread
useInit() NSThread
useInit() NSThread
useInit() NSThread
useInit() NSThread
Task.init counterActor2.count   0
Task.init counterActor2.maximum 1
```

If you just call `useDetached`,

```bash
Building for debugging...
[3/3] Linking pointfree-episode-193-issue
Build complete! (0.34s)
useDetached() NSThread
useDetached() NSThread
useDetached() NSThread
useDetached() NSThread
useDetached() NSThread
useDetached() NSThread
useDetached() NSThread
useDetached() NSThread
useDetached() NSThread
useDetached() NSThread
useDetached() NSThread
useDetached() NSThread
useDetached() NSThread
useDetached() NSThread
useDetached() NSThread
useDetached() NSThread
useDetached() NSThread
useDetached() NSThread
useDetached() NSThread
useDetached() NSThread
Task.detached counterActor.count   0
Task.detached counterActor.maximum 1
```
