# DSA Distributions

A Collection of DSA Distribution Files.

# Changelog
All notable changes to this project will be documented here.

The format is based on [Keep a Changelog](https://keepachangelog.com/en/1.0.0/).

## [Unreleased]
- OpenID Connect: "Back-Channel Logout" support.

## [1488] - 2020-04-30
### Added
- New set of all-purpose gauges for the standard widgets **Dashboard** library.

## [1486] - 2020-04-07
### Added
- Added "defaultLocale" parameter to server.json config. This parameter sets the default language for the designer.

### Changed
- DGLux updated to v1.1.9198.
- Security updates.
- Improved OpenID Connect authentication.
- Exposed "formatDg5" config parameter under /sys/config node to change it in run-time.

### Fixed
- Fixed minor UI issue with 2FA authentication on mobile.
- Fixed a memory leak when working with large files, like PDF or video formats.
- Fixed an issue with some mobile browsers not accepted as supporting TLS 1.2.

## [1461] - 2019-09-16
### Changed
- Minor UI fixes.

## [1460] - 2019-09-13
### Changed
- DGLux updated to v1.1.9012.

## [1454] - 2019-08-23
### Changed
- DGLux updated to v1.1.8997.

## [1450] - 2019-08-23
### Added
- Added accepting the full well-known/openidConfiguration as issuer for OpenID Connect.

### Changed
- Updated [Dart DSLink SDK](https://github.com/IOT-DSA/sdk-dslink-dart) to 1.0.3.
- DGLux now requires browser that supports TLS 1.2.
- DGLux updated to v1.1.8992.
- Minor improvements.

### Fixed
- Fixed the issue when couldn't find OpenSSL on `C:\` and correctly joined path for Windows.
- When creating a project from a template, the new project saves category from the template.

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

## [1415] - 2019-03-27
### Changed
- Updated DGLux to version 1.1.8750.
