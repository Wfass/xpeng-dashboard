.class public Lcom/xiaopeng/speech/protocol/event/WakeupTestEvent;
.super Ljava/lang/Object;
.source "WakeupTestEvent.java"


# static fields
.field public static final VAD_BEGIN:Ljava/lang/String; = "wakeup.test.vad.begin"

.field public static final VAD_END:Ljava/lang/String; = "wakeup.test.vad.end"

.field public static final WAKEUP_FAILED:Ljava/lang/String; = "wakeup.test.wakeup.failed"

.field public static final WAKEUP_SUCC:Ljava/lang/String; = "wakeup.test.wakeup.succ"

.field public static final WAKEUP_WORD_MANUAL_INPUT:Ljava/lang/String; = "custom.wakeup.word.manual.input"

.field public static final WAKEUP_WORD_SETTING_DONE:Ljava/lang/String; = "custom.wakeup.word.setting.done"

.field public static final WAKEUP_WORD_SETTING_QUIT:Ljava/lang/String; = "custom.wakeup.word.setting.quit"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
