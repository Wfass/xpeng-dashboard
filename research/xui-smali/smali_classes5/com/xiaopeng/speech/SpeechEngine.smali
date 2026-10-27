.class public Lcom/xiaopeng/speech/SpeechEngine;
.super Ljava/lang/Object;
.source "SpeechEngine.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static destroyRecord(Lcom/xiaopeng/speech/overall/listener/IXpRecordListener;)V
    .locals 1
    .param p0, "listener"    # Lcom/xiaopeng/speech/overall/listener/IXpRecordListener;

    .line 111
    invoke-static {}, Lcom/xiaopeng/speech/overall/OverallManager;->instance()Lcom/xiaopeng/speech/overall/OverallManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/xiaopeng/speech/overall/OverallManager;->destroyRecord(Lcom/xiaopeng/speech/overall/listener/IXpRecordListener;)V

    .line 112
    return-void
.end method

.method public static initRecord(Landroid/content/Context;Lcom/xiaopeng/speech/overall/listener/IXpRecordListener;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "listener"    # Lcom/xiaopeng/speech/overall/listener/IXpRecordListener;

    .line 95
    invoke-static {}, Lcom/xiaopeng/speech/overall/OverallManager;->instance()Lcom/xiaopeng/speech/overall/OverallManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1, p1}, Lcom/xiaopeng/speech/overall/OverallManager;->initRecord(Landroid/content/Context;Ljava/lang/String;Lcom/xiaopeng/speech/overall/listener/IXpRecordListener;)V

    .line 96
    return-void
.end method

.method public static initRecord(Landroid/content/Context;Ljava/lang/String;Lcom/xiaopeng/speech/overall/listener/IXpRecordListener;)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "param"    # Ljava/lang/String;
    .param p2, "listener"    # Lcom/xiaopeng/speech/overall/listener/IXpRecordListener;

    .line 91
    invoke-static {}, Lcom/xiaopeng/speech/overall/OverallManager;->instance()Lcom/xiaopeng/speech/overall/OverallManager;

    move-result-object v0

    invoke-virtual {v0, p0, p1, p2}, Lcom/xiaopeng/speech/overall/OverallManager;->initRecord(Landroid/content/Context;Ljava/lang/String;Lcom/xiaopeng/speech/overall/listener/IXpRecordListener;)V

    .line 92
    return-void
.end method

.method public static isSupportRecord()Z
    .locals 1

    .line 115
    invoke-static {}, Lcom/xiaopeng/speech/overall/OverallManager;->instance()Lcom/xiaopeng/speech/overall/OverallManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/speech/overall/OverallManager;->isSupportRecord()Z

    move-result v0

    return v0
.end method

.method public static speak(Ljava/lang/String;)V
    .locals 1
    .param p0, "tts"    # Ljava/lang/String;

    .line 87
    invoke-static {}, Lcom/xiaopeng/speech/overall/OverallManager;->instance()Lcom/xiaopeng/speech/overall/OverallManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/xiaopeng/speech/overall/OverallManager;->speak(Ljava/lang/String;)V

    .line 88
    return-void
.end method

.method public static starRecord()V
    .locals 2

    .line 104
    invoke-static {}, Lcom/xiaopeng/speech/overall/OverallManager;->instance()Lcom/xiaopeng/speech/overall/OverallManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/xiaopeng/speech/overall/OverallManager;->startRecord(Ljava/lang/String;)V

    .line 105
    return-void
.end method

.method public static startRecord(Ljava/lang/String;)V
    .locals 1
    .param p0, "param"    # Ljava/lang/String;

    .line 99
    invoke-static {}, Lcom/xiaopeng/speech/overall/OverallManager;->instance()Lcom/xiaopeng/speech/overall/OverallManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/xiaopeng/speech/overall/OverallManager;->startRecord(Ljava/lang/String;)V

    .line 100
    return-void
.end method

.method public static stopRecord()V
    .locals 1

    .line 108
    invoke-static {}, Lcom/xiaopeng/speech/overall/OverallManager;->instance()Lcom/xiaopeng/speech/overall/OverallManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/speech/overall/OverallManager;->stopRecord()V

    .line 109
    return-void
.end method

.method public static subscribeOverall(Landroid/content/Context;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "observer"    # Ljava/lang/String;
    .param p2, "events"    # [Ljava/lang/String;
    .param p3, "querys"    # [Ljava/lang/String;

    .line 14
    if-nez p2, :cond_1

    if-eqz p3, :cond_0

    goto :goto_0

    .line 15
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "no events and querys"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 17
    :cond_1
    :goto_0
    const/4 v0, 0x0

    if-nez p2, :cond_2

    move v1, v0

    goto :goto_1

    :cond_2
    array-length v1, p2

    :goto_1
    if-nez p3, :cond_3

    move v2, v0

    goto :goto_2

    :cond_3
    array-length v2, p3

    :goto_2
    add-int/2addr v1, v2

    new-array v1, v1, [Ljava/lang/String;

    .line 18
    .local v1, "returnEvents":[Ljava/lang/String;
    if-eqz p2, :cond_4

    .line 19
    array-length v2, p2

    invoke-static {p2, v0, v1, v0, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 20
    :cond_4
    if-eqz p3, :cond_6

    .line 21
    if-nez p2, :cond_5

    move v2, v0

    goto :goto_3

    :cond_5
    array-length v2, p2

    :goto_3
    array-length v3, p3

    invoke-static {p3, v0, v1, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 22
    :cond_6
    invoke-static {}, Lcom/xiaopeng/speech/overall/OverallManager;->instance()Lcom/xiaopeng/speech/overall/OverallManager;

    move-result-object v0

    invoke-virtual {v0, p0, p1, v1}, Lcom/xiaopeng/speech/overall/OverallManager;->subscribe(Landroid/content/Context;Ljava/lang/String;[Ljava/lang/String;)V

    .line 23
    return-void
.end method

.method public static triggerIntent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p0, "skill"    # Ljava/lang/String;
    .param p1, "task"    # Ljava/lang/String;
    .param p2, "intent"    # Ljava/lang/String;
    .param p3, "slots"    # Ljava/lang/String;

    .line 39
    invoke-static {}, Lcom/xiaopeng/speech/overall/OverallManager;->instance()Lcom/xiaopeng/speech/overall/OverallManager;

    move-result-object v0

    invoke-virtual {v0, p0, p1, p2, p3}, Lcom/xiaopeng/speech/overall/OverallManager;->triggerIntent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 40
    return-void
.end method

.method public static unsubscribeOverall(Ljava/lang/String;)V
    .locals 1
    .param p0, "observer"    # Ljava/lang/String;

    .line 26
    invoke-static {}, Lcom/xiaopeng/speech/overall/OverallManager;->instance()Lcom/xiaopeng/speech/overall/OverallManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/xiaopeng/speech/overall/OverallManager;->unsubscribe(Ljava/lang/String;)V

    .line 27
    return-void
.end method


# virtual methods
.method public feedbackResult(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;

    .line 72
    invoke-static {}, Lcom/xiaopeng/speech/overall/OverallManager;->instance()Lcom/xiaopeng/speech/overall/OverallManager;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/speech/overall/OverallManager;->feedbackResult(Ljava/lang/String;Ljava/lang/String;)V

    .line 73
    return-void
.end method

.method public replySupport(Ljava/lang/String;Z)V
    .locals 1
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "isSupport"    # Z

    .line 83
    const-string v0, ""

    invoke-virtual {p0, p1, p2, v0}, Lcom/xiaopeng/speech/SpeechEngine;->replySupport(Ljava/lang/String;ZLjava/lang/String;)V

    .line 84
    return-void
.end method

.method public replySupport(Ljava/lang/String;ZLjava/lang/String;)V
    .locals 1
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "isSupport"    # Z
    .param p3, "text"    # Ljava/lang/String;

    .line 79
    invoke-static {}, Lcom/xiaopeng/speech/overall/OverallManager;->instance()Lcom/xiaopeng/speech/overall/OverallManager;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lcom/xiaopeng/speech/overall/OverallManager;->replySupport(Ljava/lang/String;ZLjava/lang/String;)V

    .line 80
    return-void
.end method

.method public sendEvent(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;

    .line 58
    invoke-static {}, Lcom/xiaopeng/speech/overall/OverallManager;->instance()Lcom/xiaopeng/speech/overall/OverallManager;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/speech/overall/OverallManager;->sendEvent(Ljava/lang/String;Ljava/lang/String;)V

    .line 59
    return-void
.end method

.method public startDialogFrom(Ljava/lang/String;)V
    .locals 1
    .param p1, "type"    # Ljava/lang/String;

    .line 65
    invoke-static {}, Lcom/xiaopeng/speech/overall/OverallManager;->instance()Lcom/xiaopeng/speech/overall/OverallManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/xiaopeng/speech/overall/OverallManager;->startDialogFrom(Ljava/lang/String;)V

    .line 66
    return-void
.end method

.method public stopDialog()V
    .locals 1

    .line 51
    invoke-static {}, Lcom/xiaopeng/speech/overall/OverallManager;->instance()Lcom/xiaopeng/speech/overall/OverallManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/speech/overall/OverallManager;->stopDialog()V

    .line 52
    return-void
.end method

.method public triggerEvent(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;

    .line 45
    invoke-static {}, Lcom/xiaopeng/speech/overall/OverallManager;->instance()Lcom/xiaopeng/speech/overall/OverallManager;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/speech/overall/OverallManager;->triggerEvent(Ljava/lang/String;Ljava/lang/String;)V

    .line 46
    return-void
.end method
