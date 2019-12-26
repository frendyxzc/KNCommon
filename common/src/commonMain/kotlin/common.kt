package vip.frendy.common

expect fun platformName(): String

fun createApplicationScreenMessage(tips: String): String {
    return "KN $tips on ${platformName()}"
}

fun talkWithCallback(say: () -> Unit) {
    say()
}

