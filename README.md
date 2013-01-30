# stepper-instrument

## Overview

**Stepper**, Transaction Tracker - 여러개의 모듈로 나누어진 시스템에 걸쳐 있는 transaction을 추적해주는 어플, EventMachine + MongoDB + Rails로 개발됨.  

이 라이브러리는 stepper에 쉽게 테이터를 전달하기 위한 라이브러리입니다. 
- 간단한 executable를 제공합니다.

## Requirements
- Ruby 1.9.2 이상 

## Install
    $ gem install stepper-instrument

## Example
    require 'stepper-instrument'

    Stepper.daemon_hostport = "127.0.0.1:8889"
    Stepper.step("STEPPER.UUID", "20")
    Stepper.stepup("STEPPER.UUID")

    # write metric to a file
    # and send them to stepper by [remote_syslog](https://github.com/papertrail/remote_syslog)
    Stepper.step("STEPPER.UUID", 20, "/var/opt/stepper.log")
    Stepper.stepup("STEPPER.UUID", 1, "/var/opt/stepper.log")

## Executable

스텝 등록하기

    $ step -h 
    Usage: Stepper [options]
    == Step ==

    Register Step => Step을 등록합니다.
    -s COLLECTIONSNAME.STEP_ID,      DETERMINE COLLECTION NAME AND STEP ID
        --step-id
    -m, --max-step MAX_STEP          DETERMINE MAX STEP
    -H, --host HOST                  HOST eg)localhost:8082
    -f, --file PATH                  File path to store actions. The host will be ignored. eg)~/log/stepper.log
    -h, --help                       I WANT MOAR HALP

스텝 올리기 

    $ stepup -h
    Usage: Steppup [options]
    == Stepup ==

    Step up => 이미 등록한  Step을 올립니다.
    -s, --step-id STEP_ID            DETERMINE STEP ID
    -u, --step-up STEP_UP            HOW MANY STEPS ARE YOU CLIMB?
    -H, --host HOST                  HOST eg)localhost:8082
    -f, --file PATH                  File path to store actions. The host will be ignored. eg)~/log/stepper.log
    -h, --help                       I WANT MOAR HALP
