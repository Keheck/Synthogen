Synthogen
=========

This project is part of an adventure into audio synthesizers. It was built
using SDL2 to play back the audio and (in the future) display the graphics.

## Todo
- [ ] Implement the 4 basic wave types (sine, square, triangle, saw)
- [ ] Let the user define the envelope of the note
- [ ] Keyboard implementation of a musical keyboard
- [ ] Create a GUI with SDL (maybe GTK?)
- [ ] Add more to the TODO List

## Running the Program

As of the most recent build, the program must be run in the terminal. Synthogen
supports any of the following command line arguments, all of which are
optional:
* `--attack -a time`: Gives the attack time in milliseconds. Default is `1000` (1 second)
* `--decay -d time`: Gives the decay time in milliseconds. Default is `1000` (1 second)
* `--sustain -s amp`: Gives the sustain amplitude as a percentage of the maximum amplitude. Should be between 0.0 and 1.0. Default is `0.5`
* `--release -r time`: Gives the release time in milliseconds. Default is `1000` (1 second)
* `--amplitude -p amp`: Gives the maximum amplitude of the sound as a percentage. Should be between 0.0 and 1.0. Default is `1.0`
* `--clipping -c`: If set, the audio is not clamped to the maximum volume of 0dB. Disabling this may result in a heavily distorted sound.
* `--format -f format`: Select the output format. Currently unused, only `wav` is supported
* `--output -o file`: Gives the file to write the output to. If only a directory is given, the name `sound.wav` is chosen. If only the name is given, the directory will be the current working directory. Defaults to `sound.wav`
* `--sustain-time -t time`: Gives the amount of time that the sound will be sustained for in milliseconds. Default is `1000` (1 second)
* `--sample-rate -m rate`: Gives the number of samples per second of audio. Lower numbers generally mean lower quality audio. Default is `44100`
* `--frequency -n frequency|name`: Gives the note frequency to play. Can be either a number in Hertz, or a note's [Scientific pitch name](https://en.wikipedia.org/wiki/Piano_key_frequencies#List)
