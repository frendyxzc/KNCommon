package vip.frendy.kncommon

import androidx.appcompat.app.AppCompatActivity
import android.os.Bundle
import kotlinx.android.synthetic.main.activity_main.*
import vip.frendy.common.*

class MainActivity : AppCompatActivity(), IHelper {

    val helper = Helper()

    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)
        setContentView(R.layout.activity_main)

        tv_tips.text = createApplicationScreenMessage("hehe")
        tv_tips.setOnClickListener {
            talkWithCallback("android", say = {
                tv_tips.text = "$it come on"
            })
        }

        helper.init(this)
        tv_tips_2.setOnClickListener {
            helper.add(2, 3)
        }
    }

    override fun handle(i: Int, j: Int): Int {
        return (i + j)
    }

    override fun result(i: Int) {
        tv_tips_2.text = "get result : $i"

        Manager.log("thank you")
    }

}
