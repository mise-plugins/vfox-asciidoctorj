# vfox-asciidoctorj

[vfox](https://github.com/version-fox/vfox) plugin for [AsciidoctorJ](https://github.com/asciidoctor/asciidoctorj).

AsciidoctorJ is the official library for running Asciidoctor on the JVM. Using AsciidoctorJ, you can convert AsciiDoc content or analyze the structure of a parsed AsciiDoc document from Java and other JVM languages.

## Requirements

- Java 11 or later

## Usage with mise

```bash
# Install a specific version
mise install asciidoctorj@3.0.0

# Use in current shell
mise use asciidoctorj@3.0.0

# Run asciidoctorj
asciidoctorj --version
```

## Usage with vfox

```bash
# Add the plugin
vfox add asciidoctorj

# Install a version
vfox install asciidoctorj@3.0.0

# Use the version
vfox use asciidoctorj@3.0.0
```
