#!/bin/bash

sh gradlew assembleDebug

cp ./app/build/outputs/apk/debug/app-debug.apk ./LoanCalc.apk
