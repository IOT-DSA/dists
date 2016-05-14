# DGLux Server Changelog

## 677

- Fix an issue where failing to fetch dependencies could prevent other DSLinks from starting.

## 676

- Track revisions of links from the repository.
- Only update links that have an update.

## 674

- Use the `gzip` command if it is available to compress log files.

## 671

- Solve a potential leak of sockets in the Server Watcher's uptime checking functionality.

## 643

- IPv6 Support.

## 638

- First cut of User Management.
- Cleanup Log Output.
- Improve Performance.

## 574

- Add `path` metric to links in /sys/links which provides the node path to the link.
- Implement `connected` state for runtime manager.

## 567

- Add a `Start All Link` action that will start all links that are enabled if they are not already started.

## 566

- Reimplement results of the `Update All Components` action so that it has a nicer output.

## 565

- Implement an `Update All Components` action that streams a basic table of results from updating the server and all DSLinks.

## 560

- Fix problems with partial content responses.

## 556

- Use a more efficient way to compress and decompress files.
