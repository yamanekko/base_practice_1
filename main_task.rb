# main Task

class MainTask

  def log(msg)
    @logger.write(msg)
  end

  def initialize
    @logger = EV3RT::Serial.new(EV3RT::SIO_PORT_UART)
    msg = "main task new\r\n"
    log(msg)
  end

  def execute
    colorSensor = EV3RT::ColorSensor.new(EV3RT::PORT_1)
    ultrasonicSensor = EV3RT::SonarSensor.new(EV3RT::PORT_3)
    touchSensor0 = EV3RT::TouchSensor.new(EV3RT::PORT_3)
    touchSensor1 = EV3RT::TouchSensor.new(EV3RT::PORT_4)

    leftMotor = EV3RT::Motor.new(EV3RT::PORT_A, EV3RT::LARGE_MOTOR)
    rightMotor = EV3RT::Motor.new(EV3RT::PORT_B, EV3RT::LARGE_MOTOR)
    armMotor = EV3RT::TailMotor.new(EV3RT::PORT_C, EV3RT::LARGE_MOTOR)
    leftMotor.stop
    rightMotor.stop

    count = 0
    while true
#      log("count:#{count}")
      if count == 401
        leftMotor.stop
        rightMotor.stop
        break
      end
      case count
      when 0..200
        leftMotor.power = 10
        rightMotor.power = 10
      when 201..400
        leftMotor.power = -6
        rightMotor.power = -6
=begin
armがうまく動かなくて試行錯誤中・・・
      when 201..210
        leftMotor.stop
        rightMotor.stop
#        armMotor.power = 1
      when 211..220
        leftMotor.stop
        rightMotor.stop
#        armMotor.power = -1
=end
      when 401
        leftMotor.stop
        rightMotor.stop
#        armMotor.stop
#        log("count=401")
      else
      end
      count+=1
    end
    log("mruby end")
  end
end

MainTask.new.execute
