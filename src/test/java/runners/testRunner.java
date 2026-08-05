package runners;

import com.intuit.karate.junit5.Karate;

public class testRunner {

    private Karate karate;

    @Karate.Test
    Karate testAll(){
        return Karate.run("classpath:/features");
    }
    
}
