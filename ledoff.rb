  class Ledoff < ArduinoSketch
    
    # looking for hints?  check out the examples directory
    # example sketches can be uploaded to your arduino with
    # rake make:upload sketch=examples/hello_world
    # just replace hello_world with other examples
    output_pin 13, :as => :led
    
      def loop
         digitalWrite led, OFF
      end
      
  end
