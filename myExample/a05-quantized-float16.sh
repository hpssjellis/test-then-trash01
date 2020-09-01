#!/bin/bash

tensorflowjs_converter --input_format=tfjs_layers_model  --quantize_float16 --output_format=keras_saved_model ./model.json ./
tflite_convert --keras_model_file ./ --output_file ./model.tflite
xxd -i model.tflite model.h