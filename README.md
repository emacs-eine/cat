[![License: GPL v3](https://img.shields.io/badge/License-GPL%20v3-blue.svg)](https://www.gnu.org/licenses/gpl-3.0)
[![EINE Elpa](https://raw.githubusercontent.com/emacs-eine/badges/main/elpa/v/cat.svg)](https://emacs-eine.github.io/elpa/#/cat)

# cat
> View files with syntax highlighting

[![CI](https://github.com/emacs-eine/cat/actions/workflows/test.yml/badge.svg)](https://github.com/emacs-eine/cat/actions/workflows/test.yml)

Here is the basic usage of this tool:

```console
USAGE: cat [COMMAND] [OPTIONS]

View files with syntax highlighting

OPTIONS:

 --help, -h            Show usage information and exit
 --number, -n          Display with line numbers.
```

## 💾 Installation

You need to add this line to your Eask file (global recommanded).

```elisp
(source 'gnu)
(source 'melpa)
(source 'jcs-elpa)
(source 'eine)
```

Then, install it:

```console
eask install -g cat
```

## 🔧 Usage

```console
eask -g exec cat [FILES..] [OPTIONS..]
```

## 🛠️ Contribute

[![PRs Welcome](https://img.shields.io/badge/PRs-welcome-brightgreen.svg)](http://makeapullrequest.com)
[![Elisp styleguide](https://img.shields.io/badge/elisp-style%20guide-purple?logo=gnuemacs&logoColor=white)](https://github.com/bbatsov/emacs-lisp-style-guide)
[![Donate on paypal](https://img.shields.io/badge/paypal-donate-1?logo=paypal&color=blue)](https://www.paypal.me/jcs090218)
[![Become a patron](https://img.shields.io/badge/patreon-become%20a%20patron-orange.svg?logo=patreon)](https://www.patreon.com/jcs090218)

If you would like to contribute to this project, you may either
clone and make pull requests to this repository. Or you can
clone the project and establish your own branch of this tool.
Any methods are welcome!

### 🔬 Development

To run the test locally, you will need the following tools:

- [Eask](https://emacs-eask.github.io/)
- [Make](https://www.gnu.org/software/make/) (optional)

Link this package as a global dependency:

```sh
eask -g link add cat </path/to/project/dir/>
```

Then execute the command:

```sh
eask -g exec cat --help
```

*📝 P.S. For more information, find the Eask manual at https://emacs-eask.github.io/.*

## ⚜️ License

This program is free software; you can redistribute it and/or modify
it under the terms of the GNU General Public License as published by
the Free Software Foundation, either version 3 of the License, or
(at your option) any later version.

This program is distributed in the hope that it will be useful,
but WITHOUT ANY WARRANTY; without even the implied warranty of
MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
GNU General Public License for more details.

You should have received a copy of the GNU General Public License
along with this program.  If not, see <https://www.gnu.org/licenses/>.

See [`LICENSE`](./LICENSE) for details.


<!-- Links -->

[e2ansi]: https://github.com/Lindydancer/e2ansi
