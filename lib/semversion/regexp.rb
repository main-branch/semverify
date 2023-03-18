# frozen_string_literal: true

module Semversion
  # Match a semver within a string
  SEMVER_REGEXP = /
    (?<semver>
      (?<major>0|[1-9]\d*)
      \.
      (?<minor>0|[1-9]\d*)
      \.
      (?<patch>0|[1-9]\d*)
      (?:-
        (?<pre_release>
          (?:
            0|[1-9]\d*|\d*[a-zA-Z-][0-9a-zA-Z-]*
          )
          (?:
            \.
            (?:0|[1-9]\d*|\d*[a-zA-Z-][0-9a-zA-Z-]*)
          )*
        )
      )?
      (?:
        \+
        (?<build_metadata>
          [0-9a-zA-Z-]+
          (?:
            \.
            [0-9a-zA-Z-]+
          )*
        )
      )?
    )
  /x

  # Match a semver to the full string
  SEMVER_REGEXP_FULL = /\A#{SEMVER_REGEXP.source}\z/x
end