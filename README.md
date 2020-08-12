# DSA Distributions

A Collection of DSA Distribution Files.

# Changelog
All notable changes to this project will be documented here.

The format is based on [Keep a Changelog](https://keepachangelog.com/en/1.0.0/).

## [Unreleased]
- Flexible default password requirements management.

## [1514] - 2020-07-31
### Added
- OpenID Connect: "Back-Channel Logout" support.
- When using OpenID Connect authentication, server stores page URL in browser on logout. Later user returns to the same project when logs back in.

### Changed
- Updated dsbroker dependency to 1.1.3.

## [1506] - 2020-07-08
### Changed
- Improved large file handling on the server-side to prevent timeout on a slow connection.
- Improved Azure AD B2C authentication over OpenID Connect.

### Fixed
- Fixed a directory traversal vulnerability within the REST API component. The vulnerability impacts DGLux Server builds 1494 and prior. It can be exploited by an authenticated, remote attacker with sufficient privileges to access the file upload, move, and copy features of the server. Unauthenticated, and default user level privileges are insufficient to exploit the issue. This issue only impacts installations configured to utilize the DGLux Server, no other configurations are impacted. 
  - DGLux Server, also known as DSA Server is one of multiple backends that can be configured to support the DGLux5 web application.  This issue only impacts installations configured to utilize the DGLux Server, no other configurations are impacted.
  - The extended impact of the vulnerability will depend on the particular installation that was performed. Best practices advise to install DGLux Server under a limited service account. However, there are no technical controls to prevent the product from being installed under a privileged account such as root. An attacker who successfully exploits the vulnerability could upload, and then move or copy an arbitrary file to any location that the DGLux Server account can access. If this is a privileged account the attacker may be able to write to any arbitrary directory on the system.
  - DGLux Server can be configured to perform up and downstream configuration management to similar DGLux Server instances. The vulnerable REST API methods are limited to impacting the local file system of an impacted server and cannot be utilized to impact associated server instances.

## [1494] - 2020-05-22
### Fixed
- Fixed issue with dslink name not accepting dash "-".

## [1493] - 2020-05-20
### Changed
- DGLux updated to version 1.1.9238.
- Dataflow DSLink updated to version 1.1.9238.

### Fixed
- Fixed issues with the server-side dataflow.

## [1489] - 2020-05-18
### Changed
- DGLux updated to version [1.1.9235](http://wiki.dglogik.com/dglux5_wiki:releases:9235).

## [1488] - 2020-04-30
### Added
- New set of all-purpose gauges for the standard widgets **Dashboard** library.

## [1486] - 2020-04-07
### Added
- Added "defaultLocale" parameter to server.json config. This parameter sets the default language for the designer.

### Changed
- DGLux updated to version [1.1.9198](http://wiki.dglogik.com/dglux5_wiki:releases:9198).
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
- DGLux updated to verions [1.1.9012](http://wiki.dglogik.com/dglux5_wiki:releases:9012).

## [1454] - 2019-08-23
### Changed
- DGLux updated to version 1.1.8997.

## [1450] - 2019-08-23
### Added
- Added accepting the full well-known/openidConfiguration as issuer for OpenID Connect.

### Changed
- Updated [Dart DSLink SDK](https://github.com/IOT-DSA/sdk-dslink-dart) to 1.0.3.
- DGLux now requires browser that supports TLS 1.2.
- DGLux updated to version 1.1.8992.
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
- Updated DGLux to version [1.1.8750](http://wiki.dglogik.com/dglux5_wiki:releases:1415).
