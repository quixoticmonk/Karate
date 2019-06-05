import com.intuit.karate.KarateOptions;
import com.intuit.karate.junit4.Karate;
import org.junit.BeforeClass;
import org.junit.runner.RunWith;

@RunWith(Karate.class)
@KarateOptions(features = "testFeature.feature")
public class KarateRunner {
    @BeforeClass
    public static void before() {
    }
}
