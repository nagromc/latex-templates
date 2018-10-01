# LaTeX templates

Here is some LaTeX templates I use.

## LaTeX environment installation

### Debian-based systems

Run

```shell-session
# apt install texlive texlive-lang-french texlive-latex-extra
```

### Configuration to compile on a distant machine (optional)

Because a TeX Live distribution can be quite big, you may want to install it on a distant machine, and compile your document on it. Then you can mount the distant directory of the project.

- Install `sshfs`

    ```shell-session
# apt install sshfs
    ```

- Mount the distant file system on your local machine

    ```shell-session
$ sshfs <hostname>:/path/to/distant/directory /path/to/local/mountpoint
    ```

    For example:

    ```shell-session
$ sshfs s:/home/morgan/dev/document ~/mnt/document
    ```

- You can unmount the distant file system

    ```shell-session
$ fusermount -u mnt/document
    ```

## Compile the document

Run the following command to output `document.pdf`:

```shell-session
$ pdflatex document.tex
```

As `document.pdf` is tracked, it will appear as _changed_ in Git. During changes, to not be bothered by Git, run `git update-index --assume-unchanged document.pdf`. You should always compile the document and commit it before tagging. To make Git aware of the changes, run `git update-index --no-assume-unchanged document.pdf`.

## Watch the source to compile the document automatically

Install dependencies:

```shell-session
# apt install inotify-tools
```

Run the *ad hoc* script:

```shell-session
$ ./watch-tex.sh
```
