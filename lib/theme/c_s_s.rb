module Theme
  class CSS
    def self.retrieve(theme, with_directive: true, format: :css)
      theme_hash = send(theme)

      case format
      when :css
        css = hash_to_css(theme_hash)
        with_directive ? wrap_with_directive(css) : css
      when :hash
        theme_hash
      else
        raise ArgumentError, "Invalid format: #{format}"
      end
    end

    def self.all_themes
      {
        default: default,
        neutral: neutral,
        red: red,
        orange: orange,
        amber: amber,
        yellow: yellow,
        lime: lime,
        green: green,
        emerald: emerald,
        teal: teal,
        cyan: cyan,
        sky: sky,
        blue: blue,
        indigo: indigo,
        violet: violet,
        purple: purple,
        fuchsia: fuchsia,
        pink: pink,
        rose: rose
      }
    end

    def self.default
      neutral
    end

    def self.neutral
      {
        root: {
          'background': '0 0% 100%',
          'foreground': '0 0% 3.9%',
          'primary': '0 0% 9%',
          'primary-foreground': '0 0% 98%',
          'secondary': '0 0% 96.1%',
          'secondary-foreground': '0 0% 9%',
          'muted': '0 0% 96.1%',
          'muted-foreground': '0 0% 45.1%',
          'accent': '0 0% 96.1%',
          'accent-foreground': '0 0% 9%',
          'destructive': '350 89% 60%',
          'destructive-foreground': '0 0% 100%',
          'warning': '38 92% 50%',
          'warning-foreground': '0 0% 100%',
          'success': '87 100% 37%',
          'success-foreground': '0 0% 100%',
          'border': '0 0% 89.8%',
          'input': '0 0% 89.8%',
          'ring': '0 0% 3.9%',
          'radius': '0.5rem'
        },
        dark: {
          'background': '0 0% 3.9%',
          'foreground': '0 0% 98%',
          'primary': '0 0% 98%',
          'primary-foreground': '0 0% 9%',
          'secondary': '0 0% 18%',
          'secondary-foreground': '0 0% 98%',
          'muted': '0 0% 18%',
          'muted-foreground': '0 0% 63.9%',
          'accent': '0 0% 18%',
          'accent-foreground': '0 0% 98%',
          'destructive': '350 89% 60%',
          'destructive-foreground': '0 0% 100%',
          'warning': '38 92% 50%',
          'warning-foreground': '0 0% 100%',
          'success': '84 81% 44%',
          'success-foreground': '0 0% 100%',
          'border': '0 0% 18%',
          'input': '0 0% 18%',
          'ring': '0 0% 83.1%'
        }
      }
    end

    def self.red
      {
        root: {
          **default_root,
          'primary': '0 84% 60%',
          'primary-foreground': '0 0% 98%',
          'ring': '0 84% 60%'
        },
        dark: {
          **default_dark,
          'primary': '0 84% 60%',
          'primary-foreground': '0 0% 100%',
          'ring': '0 84% 60%'
        }
      }
    end

    def self.orange
      {
        root: {
          **default_root,
          'primary': '24 100% 54%',
          'primary-foreground': '0 0% 98%',
          'ring': '24 100% 54%'
        },
        dark: {
          **default_dark,
          'primary': '24 100% 54%',
          'primary-foreground': '0 0% 100%',
          'ring': '24 100% 54%'
        }
      }
    end

    def self.amber
      {
        root: {
          **default_root,
          'primary': '38 95% 56%',
          'primary-foreground': '0 0% 98%',
          'ring': '38 95% 56%'
        },
        dark: {
          **default_dark,
          'primary': '38 95% 56%',
          'primary-foreground': '0 0% 100%',
          'ring': '38 95% 56%'
        }
      }
    end

    def self.yellow
      {
        root: {
          **default_root,
          'primary': '42 89% 53%',
          'primary-foreground': '0 0% 98%',
          'ring': '42 89% 53%'
        },
        dark: {
          **default_dark,
          'primary': '42 89% 53%',
          'primary-foreground': '0 0% 100%',
          'ring': '42 89% 53%'
        }
      }
    end

    def self.lime
      {
        root: {
          **default_root,
          'primary': '80 73% 45%',
          'primary-foreground': '0 0% 98%',
          'ring': '80 73% 45%'
        },
        dark: {
          **default_dark,
          'primary': '80 73% 45%',
          'primary-foreground': '0 0% 100%',
          'ring': '80 73% 45%'
        }
      }
    end

    def self.green
      {
        root: {
          **default_root,
          'primary': '145 68% 45%',
          'primary-foreground': '0 0% 98%',
          'ring': '145 68% 45%'
        },
        dark: {
          **default_dark,
          'primary': '145 68% 45%',
          'primary-foreground': '0 0% 100%',
          'ring': '145 68% 45%'
        }
      }
    end

    def self.emerald
      {
        root: {
          **default_root,
          'primary': '164 71% 45%',
          'primary-foreground': '0 0% 98%',
          'ring': '164 71% 45%'
        },
        dark: {
          **default_dark,
          'primary': '164 71% 45%',
          'primary-foreground': '0 0% 100%',
          'ring': '164 71% 45%'
        }
      }
    end

    def self.teal
      {
        root: {
          **default_root,
          'primary': '180 76% 45%',
          'primary-foreground': '0 0% 98%',
          'ring': '180 76% 45%'
        },
        dark: {
          **default_dark,
          'primary': '180 76% 45%',
          'primary-foreground': '0 0% 100%',
          'ring': '180 76% 45%'
        }
      }
    end

    def self.cyan
      {
        root: {
          **default_root,
          'primary': '188 80% 45%',
          'primary-foreground': '0 0% 98%',
          'ring': '188 80% 45%'
        },
        dark: {
          **default_dark,
          'primary': '188 80% 45%',
          'primary-foreground': '0 0% 100%',
          'ring': '188 80% 45%'
        }
      }
    end

    def self.sky
      {
        root: {
          **default_root,
          'primary': '197 90% 45%',
          'primary-foreground': '0 0% 98%',
          'ring': '197 90% 45%'
        },
        dark: {
          **default_dark,
          'primary': '197 90% 45%',
          'primary-foreground': '0 0% 100%',
          'ring': '197 90% 45%'
        }
      }
    end

    def self.blue
      {
        root: {
          **default_root,
          'primary': '187 90% 45%',
          'primary-foreground': '0 0% 98%',
          'ring': '187 90% 45%'
        },
        dark: {
          **default_dark,
          'primary': '187 90% 45%',
          'primary-foreground': '0 0% 100%',
          'ring': '187 90% 45%'
        }
      }
    end

    def self.indigo
      {
        root: {
          **default_root,
          'primary': '218 90% 45%',
          'primary-foreground': '0 0% 100%',
          'ring': '218 90% 45%'
        },
        dark: {
          **default_dark,
          'primary': '218 90% 45%',
          'primary-foreground': '0 0% 100%',
          'ring': '218 90% 45%'
        }
      }
    end

    def self.violet
      {
        root: {
          **default_root,
          'primary': '250 90% 45%',
          'primary-foreground': '0 0% 100%',
          'ring': '250 90% 45%'
        },
        dark: {
          **default_dark,
          'primary': '250 90% 45%',
          'primary-foreground': '0 0% 100%',
          'ring': '250 90% 45%'
        }
      }
    end

    def self.purple
      {
        root: {
          **default_root,
          'primary': '260 90% 45%',
          'primary-foreground': '0 0% 100%',
          'ring': '260 90% 45%'
        },
        dark: {
          **default_dark,
          'primary': '260 90% 45%',
          'primary-foreground': '0 0% 100%',
          'ring': '260 90% 45%'
        }
      }
    end

    def self.fuchsia
      {
        root: {
          **default_root,
          'primary': '280 90% 45%',
          'primary-foreground': '0 0% 100%',
          'ring': '280 90% 45%'
        },
        dark: {
          **default_dark,
          'primary': '280 90% 45%',
          'primary-foreground': '0 0% 100%',
          'ring': '280 90% 45%'
        }
      }
    end

    def self.pink
      {
        root: {
          **default_root,
          'primary': '300 90% 45%',
          'primary-foreground': '0 0% 100%',
          'ring': '300 90% 45%'
        },
        dark: {
          **default_dark,
          'primary': '300 90% 45%',
          'primary-foreground': '0 0% 100%',
          'ring': '300 90% 45%'
        }
      }
    end

    def self.rose
      {
        root: {
          **default_root,
          'primary': '318 90% 45%',
          'primary-foreground': '0 0% 100%',
          'ring': '318 90% 45%'
        },
        dark: {
          **default_dark,
          'primary': '318 90% 45%',
          'primary-foreground': '0 0% 100%',
          'ring': '318 90% 45%'
        }
      }
    end

    private

    def self.default_root
      {
        'background': '0 0% 100%',
        'foreground': '0 0% 3.9%',
        'secondary': '0 0% 96.1%',
        'secondary-foreground': '0 0% 9%',
        'muted': '0 0% 96.1%',
        'muted-foreground': '0 0% 45.1%',
        'accent': '0 0% 96.1%',
        'accent-foreground': '0 0% 9%',
        'destructive': '350 89% 60%',
        'destructive-foreground': '0 0% 100%',
        'warning': '38 92% 50%',
        'warning-foreground': '0 0% 100%',
        'success': '87 100% 37%',
        'success-foreground': '0 0% 100%',
        'border': '0 0% 89.8%',
        'input': '0 0% 89.8%',
        'ring': '0 0% 3.9%',
        'radius': '0.5rem'
      }
    end

    def self.default_dark
      {
        'background': '0 0% 3.9%',
        'foreground': '0 0% 98%',
        'primary': '0 84% 60%',
        'primary-foreground': '0 0% 100%',
        'secondary': '0 0% 18%',
        'secondary-foreground': '0 0% 98%',
        'muted': '0 0% 18%',
        'muted-foreground': '0 0% 63.9%',
        'accent': '0 0% 18%',
        'accent-foreground': '0 0% 98%',
        'destructive': '350 89% 60%',
        'destructive-foreground': '0 0% 100%',
        'warning': '38 92% 50%',
        'warning-foreground': '0 0% 100%',
        'success': '84 81% 44%',
        'success-foreground': '0 0% 100%',
        'border': '0 0% 18%',
        'input': '0 0% 18%',
        'ring': '0 0% 83.1%'
      }
    end

    def self.hash_to_css(hash)
      hash.map do |selector, properties|
        "#{format_selector(selector)} {\n" + properties.map { |property, value| "    --#{property}: #{value};" }.join("\n") + "\n  }"
      end.join("\n")
    end

    def self.format_selector(selector)
      case selector
      when :root then ':root'
      when :dark then '  .dark' # Indentation is important here
      else
        raise ArgumentError, "Invalid selector: #{selector}"
      end
    end

    def self.wrap_with_directive(css)
      <<~CSS
        @layer base {
          #{css}
        }
      CSS
    end
  end
end