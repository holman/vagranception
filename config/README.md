# Config

This is where all of the config files go. No, I didn't just put my Twilio
credentials in the repo or all of GitHub's personal numbers just chillin around
here. All the crap from `/config` is kept locally and is pulled into scripts
as they need them.

## Necessary Files

These files should be in `/config`:

- `facetime-number` - the number to FaceTime
- `numbers-to-call` - the numbers we'll bomb over Twilio
- `twilio-credentials` - a YAML file for Twilio: `sid` line, then a line for your `token`.
