# Homebrew Tap

Homebrew formulae for [sadopc](https://github.com/sadopc) projects.

## Usage

```bash
brew tap sadopc/tap
```

Then install any formula:

```bash
brew install sadopc/tap/<formula>
```

Or install directly without tapping first:

```bash
brew install sadopc/tap/<formula>
```

## Available Formulae

| Formula | Description |
|---------|-------------|
| [godu](https://github.com/sadopc/godu) | Fast, interactive disk usage analyzer for the terminal |
| [gottp](https://github.com/sadopc/gottp) | Postman/Insomnia-like TUI API client with multi-protocol support |
| [machscope](https://github.com/sadopc/machscope) | Native macOS binary analysis: Mach-O parsing, ARM64 disassembly, and debugging |

## Adding a New Formula

1. Create `Formula/<name>.rb` in this repo
2. For Go projects, use this template:

```ruby
class MyTool < Formula
  desc "Short description"
  homepage "https://github.com/sadopc/my-tool"
  license "MIT"
  head "https://github.com/sadopc/my-tool.git", branch: "main"

  depends_on "go" => :build

  def install
    ldflags = %W[
      -s -w
      -X main.version=#{version}
    ]
    system "go", "build", *std_go_args(ldflags:), "./cmd/my-tool"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/my-tool --version")
  end
end
```

3. For automated releases, add a `brews` section to `.goreleaser.yml` in the project repo:

```yaml
brews:
  - repository:
      owner: sadopc
      name: homebrew-tap
    directory: Formula
    homepage: "https://github.com/sadopc/<project>"
    description: "Short description"
    license: "MIT"
    install: |
      bin.install "<binary>"
    test: |
      assert_match version.to_s, shell_output("#{bin}/<binary> --version")
```

This auto-updates the formula on each tagged release.
