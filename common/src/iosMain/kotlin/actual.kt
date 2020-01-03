package vip.frendy.common

import platform.Foundation.NSLog
import platform.UIKit.UIDevice

actual fun platformName(): String {
    return UIDevice.currentDevice.systemName() +
            " " +
            UIDevice.currentDevice.systemVersion
}

actual fun clog(msg: String) {
    NSLog(msg)
}
