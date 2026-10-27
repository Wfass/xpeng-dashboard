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

    .line 111
    invoke-static {}, Lcom/xiaopeng/speech/overall/OverallManager;->instance()Lcom/xiaopeng/speech/overall/OverallManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/xiaopeng/speech/overall/OverallManager;->destroyRecord(Lcom/xiaopeng/speech/overall/listener/IXpRecordListener;)V

    return-void
.end method

.method public static initRecord(Landroid/content/Context;Lcom/xiaopeng/speech/overall/listener/IXpRecordListener;)V
    .locals 2

    .line 95
    invoke-static {}, Lcom/xiaopeng/speech/overall/OverallManager;->instance()Lcom/xiaopeng/speech/overall/OverallManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1, p1}, Lcom/xiaopeng/speech/overall/OverallManager;->initRecord(Landroid/content/Context;Ljava/lang/String;Lcom/xiaopeng/speech/overall/listener/IXpRecordListener;)V

    return-void
.end method

.method public static initRecord(Landroid/content/Context;Ljava/lang/String;Lcom/xiaopeng/speech/overall/listener/IXpRecordListener;)V
    .locals 1

    .line 91
    invoke-static {}, Lcom/xiaopeng/speech/overall/OverallManager;->instance()Lcom/xiaopeng/speech/overall/OverallManager;

    move-result-object v0

    invoke-virtual {v0, p0, p1, p2}, Lcom/xiaopeng/speech/overall/OverallManager;->initRecord(Landroid/content/Context;Ljava/lang/String;Lcom/xiaopeng/speech/overall/listener/IXpRecordListener;)V

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

    .line 87
    invoke-static {}, Lcom/xiaopeng/speech/overall/OverallManager;->instance()Lcom/xiaopeng/speech/overall/OverallManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/xiaopeng/speech/overall/OverallManager;->speak(Ljava/lang/String;)V

    return-void
.end method

.method public static starRecord()V
    .locals 2

    .line 104
    invoke-static {}, Lcom/xiaopeng/speech/overall/OverallManager;->instance()Lcom/xiaopeng/speech/overall/OverallManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/xiaopeng/speech/overall/OverallManager;->startRecord(Ljava/lang/String;)V

    return-void
.end method

.method public static startRecord(Ljava/lang/String;)V
    .locals 1

    .line 99
    invoke-static {}, Lcom/xiaopeng/speech/overall/OverallManager;->instance()Lcom/xiaopeng/speech/overall/OverallManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/xiaopeng/speech/overall/OverallManager;->startRecord(Ljava/lang/String;)V

    return-void
.end method

.method public static stopRecord()V
    .locals 1

    .line 108
    invoke-static {}, Lcom/xiaopeng/speech/overall/OverallManager;->instance()Lcom/xiaopeng/speech/overall/OverallManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/speech/overall/OverallManager;->stopRecord()V

    return-void
.end method

.method public static subscribeOverall(Landroid/content/Context;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V
    .locals 3

    if-nez p2, :cond_1

    if-eqz p3, :cond_0

    goto :goto_0

    .line 15
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "no events and querys"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    :goto_0
    const/4 v0, 0x0

    if-nez p2, :cond_2

    move v1, v0

    goto :goto_1

    .line 17
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

    if-eqz p2, :cond_4

    .line 19
    array-length v2, p2

    invoke-static {p2, v0, v1, v0, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_4
    if-eqz p3, :cond_6

    if-nez p2, :cond_5

    move p2, v0

    goto :goto_3

    .line 21
    :cond_5
    array-length p2, p2

    :goto_3
    array-length v2, p3

    invoke-static {p3, v0, v1, p2, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 22
    :cond_6
    invoke-static {}, Lcom/xiaopeng/speech/overall/OverallManager;->instance()Lcom/xiaopeng/speech/overall/OverallManager;

    move-result-object p2

    invoke-virtual {p2, p0, p1, v1}, Lcom/xiaopeng/speech/overall/OverallManager;->subscribe(Landroid/content/Context;Ljava/lang/String;[Ljava/lang/String;)V

    return-void
.end method

.method public static triggerIntent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 39
    invoke-static {}, Lcom/xiaopeng/speech/overall/OverallManager;->instance()Lcom/xiaopeng/speech/overall/OverallManager;

    move-result-object v0

    invoke-virtual {v0, p0, p1, p2, p3}, Lcom/xiaopeng/speech/overall/OverallManager;->triggerIntent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static unsubscribeOverall(Ljava/lang/String;)V
    .locals 1

    .line 26
    invoke-static {}, Lcom/xiaopeng/speech/overall/OverallManager;->instance()Lcom/xiaopeng/speech/overall/OverallManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/xiaopeng/speech/overall/OverallManager;->unsubscribe(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public feedbackResult(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 72
    invoke-static {}, Lcom/xiaopeng/speech/overall/OverallManager;->instance()Lcom/xiaopeng/speech/overall/OverallManager;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/speech/overall/OverallManager;->feedbackResult(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public replySupport(Ljava/lang/String;Z)V
    .locals 1

    const-string v0, ""

    .line 83
    invoke-virtual {p0, p1, p2, v0}, Lcom/xiaopeng/speech/SpeechEngine;->replySupport(Ljava/lang/String;ZLjava/lang/String;)V

    return-void
.end method

.method public replySupport(Ljava/lang/String;ZLjava/lang/String;)V
    .locals 1

    .line 79
    invoke-static {}, Lcom/xiaopeng/speech/overall/OverallManager;->instance()Lcom/xiaopeng/speech/overall/OverallManager;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lcom/xiaopeng/speech/overall/OverallManager;->replySupport(Ljava/lang/String;ZLjava/lang/String;)V

    return-void
.end method

.method public sendEvent(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 58
    invoke-static {}, Lcom/xiaopeng/speech/overall/OverallManager;->instance()Lcom/xiaopeng/speech/overall/OverallManager;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/speech/overall/OverallManager;->sendEvent(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public startDialogFrom(Ljava/lang/String;)V
    .locals 1

    .line 65
    invoke-static {}, Lcom/xiaopeng/speech/overall/OverallManager;->instance()Lcom/xiaopeng/speech/overall/OverallManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/xiaopeng/speech/overall/OverallManager;->startDialogFrom(Ljava/lang/String;)V

    return-void
.end method

.method public stopDialog()V
    .locals 1

    .line 51
    invoke-static {}, Lcom/xiaopeng/speech/overall/OverallManager;->instance()Lcom/xiaopeng/speech/overall/OverallManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/speech/overall/OverallManager;->stopDialog()V

    return-void
.end method

.method public triggerEvent(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 45
    invoke-static {}, Lcom/xiaopeng/speech/overall/OverallManager;->instance()Lcom/xiaopeng/speech/overall/OverallManager;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/speech/overall/OverallManager;->triggerEvent(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
