package vip.frendy.kncommon

import androidx.appcompat.app.AppCompatActivity
import android.os.Bundle
import kotlinx.android.synthetic.main.activity_main.*
import vip.frendy.common.createApplicationScreenMessage
import vip.frendy.common.talkWithCallback

class MainActivity : AppCompatActivity() {

    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)
        setContentView(R.layout.activity_main)

        tv_tips.text = createApplicationScreenMessage("hehe")
        tv_tips.setOnClickListener {
            talkWithCallback("android", say = {
                tv_tips.text = "$it come on"
            })
        }
    }
}
