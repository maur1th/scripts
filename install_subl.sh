#!/bin/bash
sudo mv sublime_text_3_build* /opt
cd /opt
sudo rm -r sublime_text
sudo tar xvjf sublime_text_3_build*
sudo mv sublime_text_3 sublime_text
sudo rm sublime_text_3_build*
exit 0
