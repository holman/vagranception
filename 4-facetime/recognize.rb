#
# Modified from: https://gist.github.com/402759
#
# Mr. Aimonetti also gave a more expanded version of this during his 2010
# RubyConf talk, which maybe my subconscious drummed up enough to give me the
# idea for parts of this segment.

framework 'AppKit'

app = NSApplication.sharedApplication

class AppDelegate
  def speechRecognizer(sender, didRecognizeCommand:command)
    puts "command: #{command}"
    exit!(0)
  end
end

recognizer = NSSpeechRecognizer.alloc.init
recognizer.commands = ["ellen", "page", "ellen page"]
recognizer.delegate = AppDelegate.new
recognizer.ListensInForegroundOnly = false
recognizer.startListening

app.run
