package vip.frendy.common

class Helper() {

    private var iHelper: IHelper? = null

    fun init(helper: IHelper) {
        clog("===> init")
        iHelper = helper
        clog("===> init 2")
    }

    fun add(i: Int, j: Int) {
        clog("===> add")
        val ret = iHelper?.handle(i, j)

        ret?.plus(1)?.let {
            iHelper?.result(it)
        }
    }

}