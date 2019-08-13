# DSA Distributions

A Collection of DSA Distribution Files.

# Changelog
All notable changes to this project will be documented here.

The format is based on [Keep a Changelog](https://keepachangelog.com/en/1.0.0/).

## [Unreleased]
- OpenID Connect: "Back-Channel Logout" support.

## [1436] - 2019-07-19
### Added
- Extracted KeyCloak roles (realm and client) to "dsaGroups" to expose on the front end.
- Added 256-bit encryption to "server.json" for proxy and SSL certificate passwords at rest.
- Checking for login loop with OpenID Connect logins. Prevent DGSession from getting expiry date with OpenID Connect.
- Added check for null client roles config.
- Added missing logging statements.

### Changed
- Removed heap limit of the watcher process.
- Removed `pathlib.normalize`.

### Fixed
- Prevented guest sessions from LDAP.
- Fixed issues with checking permissions.
- Fixed logging statement that would fail if a response was already closed.
