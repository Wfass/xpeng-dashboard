.class public Lcom/xiaopeng/speech/protocol/node/bugreport/BugReportNode;
.super Lcom/xiaopeng/speech/SpeechNode;
.source "BugReportNode.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/xiaopeng/speech/SpeechNode<",
        "Lcom/xiaopeng/speech/protocol/node/bugreport/BugReportListener;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 16
    invoke-direct {p0}, Lcom/xiaopeng/speech/SpeechNode;-><init>()V

    .line 17
    return-void
.end method


# virtual methods
.method protected onBugReportBegin(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;
    .annotation build Lcom/xiaopeng/speech/annotation/SpeechAnnotation;
        event = "command://bugreport.start.bug"
    .end annotation

    .line 22
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/bugreport/BugReportNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {v0}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object v0

    .line 23
    .local v0, "listenerList":[Ljava/lang/Object;
    const/4 v1, 0x0

    .line 24
    .local v1, "channel":Ljava/lang/String;
    invoke-static {p2}, Lcom/xiaopeng/speech/protocol/SpeechUtils;->isJson(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 26
    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 27
    .local v2, "json":Lorg/json/JSONObject;
    const-string v3, "from"

    const-string v4, ""

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v1, v3

    .line 30
    .end local v2    # "json":Lorg/json/JSONObject;
    goto :goto_0

    .line 28
    :catch_0
    move-exception v2

    .line 29
    .local v2, "e":Lorg/json/JSONException;
    invoke-virtual {v2}, Lorg/json/JSONException;->printStackTrace()V

    .line 32
    .end local v2    # "e":Lorg/json/JSONException;
    :cond_0
    :goto_0
    if-eqz v0, :cond_2

    .line 33
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    array-length v3, v0

    if-ge v2, v3, :cond_2

    .line 34
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 35
    aget-object v3, v0, v2

    check-cast v3, Lcom/xiaopeng/speech/protocol/node/bugreport/BugReportListener;

    invoke-interface {v3}, Lcom/xiaopeng/speech/protocol/node/bugreport/BugReportListener;->onBugReportBegin()V

    goto :goto_2

    .line 37
    :cond_1
    aget-object v3, v0, v2

    check-cast v3, Lcom/xiaopeng/speech/protocol/node/bugreport/BugReportListener;

    invoke-interface {v3, v1}, Lcom/xiaopeng/speech/protocol/node/bugreport/BugReportListener;->onBugReportBegin(Ljava/lang/String;)V

    .line 33
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 41
    .end local v2    # "i":I
    :cond_2
    return-void
.end method

.method protected onBugReportCancel(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;
    .annotation build Lcom/xiaopeng/speech/annotation/SpeechAnnotation;
        event = "command://bugreport.cancel.bug"
    .end annotation

    .line 67
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/bugreport/BugReportNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {v0}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object v0

    .line 68
    .local v0, "listenerList":[Ljava/lang/Object;
    if-eqz v0, :cond_0

    .line 69
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_0

    .line 70
    aget-object v2, v0, v1

    check-cast v2, Lcom/xiaopeng/speech/protocol/node/bugreport/BugReportListener;

    invoke-interface {v2}, Lcom/xiaopeng/speech/protocol/node/bugreport/BugReportListener;->onBugReportCancel()V

    .line 69
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 73
    .end local v1    # "i":I
    :cond_0
    return-void
.end method

.method protected onBugReportEnd(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;
    .annotation build Lcom/xiaopeng/speech/annotation/SpeechAnnotation;
        event = "command://bugreport.end.bug"
    .end annotation

    .line 45
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/bugreport/BugReportNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {v0}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object v0

    .line 46
    .local v0, "listenerList":[Ljava/lang/Object;
    invoke-static {p2}, Lcom/xiaopeng/speech/protocol/node/bugreport/BugReportEndValue;->fromJson(Ljava/lang/String;)Lcom/xiaopeng/speech/protocol/node/bugreport/BugReportEndValue;

    move-result-object v1

    .line 47
    .local v1, "bugReportEndValue":Lcom/xiaopeng/speech/protocol/node/bugreport/BugReportEndValue;
    if-eqz v0, :cond_0

    .line 48
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v3, v0

    if-ge v2, v3, :cond_0

    .line 49
    aget-object v3, v0, v2

    check-cast v3, Lcom/xiaopeng/speech/protocol/node/bugreport/BugReportListener;

    invoke-interface {v3, v1}, Lcom/xiaopeng/speech/protocol/node/bugreport/BugReportListener;->onBugReportEnd(Lcom/xiaopeng/speech/protocol/node/bugreport/BugReportEndValue;)V

    .line 48
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 52
    .end local v2    # "i":I
    :cond_0
    return-void
.end method

.method protected onBugReportEndtts(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;
    .annotation build Lcom/xiaopeng/speech/annotation/SpeechAnnotation;
        event = "command://bugreport.end.tts"
    .end annotation

    .line 87
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/bugreport/BugReportNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {v0}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object v0

    .line 88
    .local v0, "listenerList":[Ljava/lang/Object;
    if-eqz v0, :cond_0

    .line 89
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_0

    .line 90
    aget-object v2, v0, v1

    check-cast v2, Lcom/xiaopeng/speech/protocol/node/bugreport/BugReportListener;

    invoke-interface {v2}, Lcom/xiaopeng/speech/protocol/node/bugreport/BugReportListener;->onBugReportEndtts()V

    .line 89
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 93
    .end local v1    # "i":I
    :cond_0
    return-void
.end method

.method protected onBugReportSubmit(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;
    .annotation build Lcom/xiaopeng/speech/annotation/SpeechAnnotation;
        event = "command://bugreport.submit.bug"
    .end annotation

    .line 57
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/bugreport/BugReportNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {v0}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object v0

    .line 58
    .local v0, "listenerList":[Ljava/lang/Object;
    if-eqz v0, :cond_0

    .line 59
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_0

    .line 60
    aget-object v2, v0, v1

    check-cast v2, Lcom/xiaopeng/speech/protocol/node/bugreport/BugReportListener;

    invoke-interface {v2}, Lcom/xiaopeng/speech/protocol/node/bugreport/BugReportListener;->onBugReportSubmit()V

    .line 59
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 63
    .end local v1    # "i":I
    :cond_0
    return-void
.end method

.method protected onBugReportVolume(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;
    .annotation build Lcom/xiaopeng/speech/annotation/SpeechAnnotation;
        event = "command://bugreport.volume.bug"
    .end annotation

    .line 77
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/bugreport/BugReportNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {v0}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object v0

    .line 78
    .local v0, "listenerList":[Ljava/lang/Object;
    if-eqz v0, :cond_0

    .line 79
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_0

    .line 80
    aget-object v2, v0, v1

    check-cast v2, Lcom/xiaopeng/speech/protocol/node/bugreport/BugReportListener;

    invoke-interface {v2, p2}, Lcom/xiaopeng/speech/protocol/node/bugreport/BugReportListener;->onBugReportVolume(Ljava/lang/String;)V

    .line 79
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 83
    .end local v1    # "i":I
    :cond_0
    return-void
.end method
