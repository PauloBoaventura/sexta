#!/usr/bin/env python
# -*- coding: utf-8 -*-

import sys
import os

# AIML
import aiml
from gtts import gTTS

#RECONHECIMENTO DE VOZ
import speech_recognition as sr
import pyaudio

#AUDIO
from playsound import playsound

reload(sys)
sys.setdefaultencoding('utf8')

def speak(mytext):
	language = 'pt'
	tts = gTTS(text=mytext, lang=language, slow=False)
	tts.save("fala.mp3")
	os.system("mpg321 fala.mp3 -quiet") 

kernel = aiml.Kernel()
#kernel.verbose(False)

kernel.setBotPredicate("name", "Sexta")
inicio = "verdadeiro"

kernel.bootstrap(learnFiles = os.path.abspath("/etc/sexta/std-startup.xml"), commands = "load aiml b")


# pega o audio do microfone
recognizer = sr.Recognizer()



while True:
    
	with sr.Microphone() as source:
	    playsound('/etc/sexta/wav/voice_start.wav')
	    print("Diga algo!")
	    mensagem = recognizer.listen(source)
	    try:
		print("Você falou: " + recognizer.recognize_google(mensagem, language="pt-BR" ))
		playsound('/etc/sexta/wav/voice_stop.wav')
	    except sr.UnknownValueError:
		print("Google Speech Recognition could not understand audio")
	    except sr.RequestError as e:
		print("Could not request results from Google Speech Recognition service")

	message = (recognizer.recognize_google(mensagem, language="pt-BR" )).decode('utf8')

	if message == "sair":
		exit()
	elif message == "salvar":
		kernel.saveBrain("bot_brain.brn")
	else:
		jarvis_responde = kernel.respond(message).decode('utf8')
		print "> ", (jarvis_responde)
		playsound('/etc/sexta/wav/voice_stop.wav')
		speak(jarvis_responde)








