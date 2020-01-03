package vip.frendy.common

import java.util.logging.Level
import java.util.logging.Logger

actual fun platformName(): String {
    return "Android"
}

actual fun clog(msg: String) {
    Logger.getAnonymousLogger().log(Level.INFO, msg)
}
