# V A G R A N C E P T I O N

This is the convoluted source code to my screencast about Vagrant. You should
probably [watch it first][screencast]. You may want to sit down for this.

## This

Just to point this out: most of this code is just for illustrative purposes.
It's not great code, but it is, well, code. There is some cool stuff in there
though.

## The Process

As a recap from the screencast:

- Mac #1 runs [`quake`][quake], a small shell script to monitor earthquakes
- Once a quake happens, that kicks off a Vagrant build
- That Vagrant build creates a VM that curls a URL running on Mac #2
- Mac #2 routes the request to a tiny Sinatra app that builds a new meme using
  [memegen][memegen]
- The meme, when loaded, kicks off a [FaceTime call][facetime]
- Mac #2's FaceTime process uses MacRuby to monitor for the keywords "Ellen" or
  "Page". When that happens, it (should) curl a URL to Mac #1 (although this
  didn't, well, happen).
- Mac #1 gets the request and [spins up a fresh Heroku instance][heroku]
- That Heroku instance talks to Twilio and dials everyone in the world ever

## Config

There's a decent amount API keys, phone numbers, and stuff like that to set up;
that's (mostly) all in the [config README][readme].

## lol

Don't take this too seriously; I didn't. It's fun to hack around sometimes
though, no?

[screencast]: http://zachholman.com/screencast/vagranception
[quake]: https://github.com/holman/vagranception/blob/master/1-earthquake/quake
[vagrant]: https://github.com/holman/vagranception/tree/master/2-vagrant
[meme]: https://github.com/holman/vagranception/blob/master/3-meme/meme.rb
[memegen]: https://github.com/cmdrkeene/memegen
[facetime]: https://github.com/holman/vagranception/tree/master/4-facetime
[heroku]: https://github.com/holman/vagranception/blob/master/5-twilio/heroku-spawn
[readme]: https://github.com/holman/vagranception/tree/master/config
