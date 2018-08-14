#!/bin/bash

APPAPK=./app/build/outputs/apk/debug/app-debug.apk
TESTAPK=./app/build/outputs/apk/androidTest/debug/app-debug-androidTest.apk
# DEVICE=Google_Pixel_8_real_us

#runner.sh config --path runner.yml --apikey ${LOANCALC_ANDROID_APIKEY} $*
runner.sh espresso --test ${TESTAPK} --app ${APPAPK} --apikey ${LOANCALC_ANDROID_APIKEY} --datacenter US --e class io.billmeyer.loancalc.LoanCalcTest#calcLoanViaAPI --e class io.billmeyer.loancalc.LoanCalcTest#calcLoanViaUI $*