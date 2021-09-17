# WakeMe

With the rapid development in ML and mobile devices, speech related technologies are booming.

Our team is interested in wake word detection which is a subfield of speech technologies:

WakeWord detection is the task of recognizing a predefined keyword for activating a speech assistant. In other words Alexa is always listening to you and it needs to be waked up to start talking.

There were three questions motivating this project:

1.How do we train a model detecting a wake word?

2.What are the qualities of a good wake word?  Short vs Long? Hey vs Hi?

3.Can we train a model for any wake word, i.e. “Hey FourthBrain”?

In order to answer these questions:

*We created a wake word model engine:WakeME

*Provided methods and metrics for model eval

*Addressed questions on quality of good wake word

*Demonstrated the model capabilities with a web app.


Our study showed that:

*Longer words are less sensitive to model types

*Model type is more important than the length of the word

*There is a significant advantage of using "Hey" or "Hello" in the wake phrase
