.class public Lcom/xiaopeng/speech/protocol/node/aiassistant/AiAssistantNode;
.super Lcom/xiaopeng/speech/SpeechNode;
.source "AiAssistantNode.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/xiaopeng/speech/SpeechNode<",
        "Lcom/xiaopeng/speech/protocol/node/aiassistant/AiAssistantListener;",
        ">;"
    }
.end annotation


# instance fields
.field private final TAG:Ljava/lang/String;

.field private final mBinder:Landroid/os/IBinder;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 29
    invoke-direct {p0}, Lcom/xiaopeng/speech/SpeechNode;-><init>()V

    .line 120
    new-instance v0, Landroid/os/Binder;

    invoke-direct {v0}, Landroid/os/Binder;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/speech/protocol/node/aiassistant/AiAssistantNode;->mBinder:Landroid/os/IBinder;

    .line 121
    const-class v0, Lcom/xiaopeng/speech/protocol/node/aiassistant/AiAssistantNode;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/speech/protocol/node/aiassistant/AiAssistantNode;->TAG:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public declared-synchronized disableSoftWakeupWithInfo(Ljava/lang/String;II)V
    .locals 7

    monitor-enter p0

    .line 131
    :try_start_0
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/aiassistant/AiAssistantNode;->TAG:Ljava/lang/String;

    const-string v1, "disableSoftWakeupWithInfo model:%s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-static {v0, v1, v2}, Lcom/xiaopeng/speech/common/util/LogUtils;->i(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 132
    sget v0, Lcom/xiaopeng/speech/protocol/R$string;->phonenode_disable_speech_calling_ex:I

    invoke-static {v0}, Lcom/xiaopeng/speech/common/util/ResourceUtils;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 133
    invoke-static {}, Lcom/xiaopeng/speech/SpeechClient;->instance()Lcom/xiaopeng/speech/SpeechClient;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/speech/SpeechClient;->getWakeupEngine()Lcom/xiaopeng/speech/proxy/WakeupEngineProxy;

    move-result-object v1

    iget-object v2, p0, Lcom/xiaopeng/speech/protocol/node/aiassistant/AiAssistantNode;->mBinder:Landroid/os/IBinder;

    move v3, p2

    move-object v4, p1

    move v6, p3

    invoke-virtual/range {v1 .. v6}, Lcom/xiaopeng/speech/proxy/WakeupEngineProxy;->disableWakeupWithInfo(Landroid/os/IBinder;ILjava/lang/String;Ljava/lang/String;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 134
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized disableSpeechWakeupWithInfo(Ljava/lang/String;II)V
    .locals 6

    monitor-enter p0

    .line 158
    :try_start_0
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/aiassistant/AiAssistantNode;->TAG:Ljava/lang/String;

    const-string v1, "disableSpeechWakeupWithInfo model:%s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-static {v0, v1, v2}, Lcom/xiaopeng/speech/common/util/LogUtils;->i(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    const-string v0, ""

    .line 160
    sget-object v1, Lcom/xiaopeng/speech/protocol/Model;->CARPLAY:Lcom/xiaopeng/speech/protocol/Model;

    invoke-virtual {v1}, Lcom/xiaopeng/speech/protocol/Model;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 161
    sget v0, Lcom/xiaopeng/speech/protocol/R$string;->siri_wakeup_toast:I

    invoke-static {v0}, Lcom/xiaopeng/speech/common/util/ResourceUtils;->getString(I)Ljava/lang/String;

    move-result-object v0

    :cond_0
    :goto_0
    move-object v4, v0

    goto :goto_1

    .line 162
    :cond_1
    sget-object v1, Lcom/xiaopeng/speech/protocol/Model;->ANDROID_AUTO:Lcom/xiaopeng/speech/protocol/Model;

    invoke-virtual {v1}, Lcom/xiaopeng/speech/protocol/Model;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 163
    sget v0, Lcom/xiaopeng/speech/protocol/R$string;->google_wakeup_toast:I

    invoke-static {v0}, Lcom/xiaopeng/speech/common/util/ResourceUtils;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 165
    :goto_1
    invoke-static {}, Lcom/xiaopeng/speech/SpeechClient;->instance()Lcom/xiaopeng/speech/SpeechClient;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/speech/SpeechClient;->getWakeupEngine()Lcom/xiaopeng/speech/proxy/WakeupEngineProxy;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaopeng/speech/protocol/node/aiassistant/AiAssistantNode;->mBinder:Landroid/os/IBinder;

    move v2, p2

    move-object v3, p1

    move v5, p3

    invoke-virtual/range {v0 .. v5}, Lcom/xiaopeng/speech/proxy/WakeupEngineProxy;->disableSpeechWakeupWithInfo(Landroid/os/IBinder;ILjava/lang/String;Ljava/lang/String;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 166
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized enableSoftWakeupWithInfo(Ljava/lang/String;II)V
    .locals 4

    monitor-enter p0

    .line 145
    :try_start_0
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/aiassistant/AiAssistantNode;->TAG:Ljava/lang/String;

    const-string v1, "enableSoftWakeupWithInfo model:%s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-static {v0, v1, v2}, Lcom/xiaopeng/speech/common/util/LogUtils;->i(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 146
    invoke-static {}, Lcom/xiaopeng/speech/SpeechClient;->instance()Lcom/xiaopeng/speech/SpeechClient;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/speech/SpeechClient;->getWakeupEngine()Lcom/xiaopeng/speech/proxy/WakeupEngineProxy;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaopeng/speech/protocol/node/aiassistant/AiAssistantNode;->mBinder:Landroid/os/IBinder;

    invoke-virtual {v0, v1, p2, p1, p3}, Lcom/xiaopeng/speech/proxy/WakeupEngineProxy;->enableWakeupWithInfo(Landroid/os/IBinder;ILjava/lang/String;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 147
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized enableSpeechWakeupWithInfo(Ljava/lang/String;II)V
    .locals 4

    monitor-enter p0

    .line 177
    :try_start_0
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/aiassistant/AiAssistantNode;->TAG:Ljava/lang/String;

    const-string v1, "enableSpeechWakeupWithInfo model:%s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-static {v0, v1, v2}, Lcom/xiaopeng/speech/common/util/LogUtils;->i(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 178
    invoke-static {}, Lcom/xiaopeng/speech/SpeechClient;->instance()Lcom/xiaopeng/speech/SpeechClient;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/speech/SpeechClient;->getWakeupEngine()Lcom/xiaopeng/speech/proxy/WakeupEngineProxy;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaopeng/speech/protocol/node/aiassistant/AiAssistantNode;->mBinder:Landroid/os/IBinder;

    invoke-virtual {v0, v1, p2, p1, p3}, Lcom/xiaopeng/speech/proxy/WakeupEngineProxy;->enableSpeechWakeupWithInfo(Landroid/os/IBinder;ILjava/lang/String;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 179
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method protected onMessageClose(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 64
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/node/aiassistant/AiAssistantNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {p1}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p2, 0x0

    .line 66
    :goto_0
    array-length v0, p1

    if-ge p2, v0, :cond_0

    .line 67
    aget-object v0, p1, p2

    check-cast v0, Lcom/xiaopeng/speech/protocol/node/aiassistant/AiAssistantListener;

    invoke-interface {v0}, Lcom/xiaopeng/speech/protocol/node/aiassistant/AiAssistantListener;->onMessageClose()V

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected onMessageOpen(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 54
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/node/aiassistant/AiAssistantNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {p1}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p2, 0x0

    .line 56
    :goto_0
    array-length v0, p1

    if-ge p2, v0, :cond_0

    .line 57
    aget-object v0, p1, p2

    check-cast v0, Lcom/xiaopeng/speech/protocol/node/aiassistant/AiAssistantListener;

    invoke-interface {v0}, Lcom/xiaopeng/speech/protocol/node/aiassistant/AiAssistantListener;->onMessageOpen()V

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected onOpenVideo(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    .line 75
    :try_start_0
    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p2, "video_name"

    .line 76
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    const-string v0, "video_tag"

    .line 77
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "video_category"

    .line 78
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 79
    iget-object v1, p0, Lcom/xiaopeng/speech/protocol/node/aiassistant/AiAssistantNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {v1}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    const/4 v2, 0x0

    .line 81
    :goto_0
    array-length v3, v1

    if-ge v2, v3, :cond_0

    .line 82
    aget-object v3, v1, v2

    check-cast v3, Lcom/xiaopeng/speech/protocol/node/aiassistant/AiAssistantListener;

    invoke-interface {v3, p2, v0, p1}, Lcom/xiaopeng/speech/protocol/node/aiassistant/AiAssistantListener;->onOpenVideo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :catch_0
    move-exception p1

    .line 86
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    return-void
.end method

.method protected onPlayVideo(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 34
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/node/aiassistant/AiAssistantNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {p1}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p2, 0x0

    .line 36
    :goto_0
    array-length v0, p1

    if-ge p2, v0, :cond_0

    .line 37
    aget-object v0, p1, p2

    check-cast v0, Lcom/xiaopeng/speech/protocol/node/aiassistant/AiAssistantListener;

    invoke-interface {v0}, Lcom/xiaopeng/speech/protocol/node/aiassistant/AiAssistantListener;->onPlayVideo()V

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected onPlayVideoTtsend(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 44
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/node/aiassistant/AiAssistantNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {p1}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p2, 0x0

    .line 46
    :goto_0
    array-length v0, p1

    if-ge p2, v0, :cond_0

    .line 47
    aget-object v0, p1, p2

    check-cast v0, Lcom/xiaopeng/speech/protocol/node/aiassistant/AiAssistantListener;

    invoke-interface {v0}, Lcom/xiaopeng/speech/protocol/node/aiassistant/AiAssistantListener;->onPlayVideoTtsend()V

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected onXiaoPChangeClothe(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 104
    :try_start_0
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 105
    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p2, "skin"

    .line 106
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result p1

    goto :goto_0

    :cond_0
    move p1, v0

    .line 108
    :goto_0
    iget-object p2, p0, Lcom/xiaopeng/speech/protocol/node/aiassistant/AiAssistantNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {p2}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object p2

    if-eqz p2, :cond_1

    .line 110
    :goto_1
    array-length v1, p2

    if-ge v0, v1, :cond_1

    .line 111
    aget-object v1, p2, v0

    check-cast v1, Lcom/xiaopeng/speech/protocol/node/aiassistant/AiAssistantListener;

    invoke-interface {v1, p1}, Lcom/xiaopeng/speech/protocol/node/aiassistant/AiAssistantListener;->onXiaoPChangeClothe(I)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :catch_0
    move-exception p1

    .line 115
    invoke-virtual {p1}, Lorg/json/JSONException;->printStackTrace()V

    :cond_1
    return-void
.end method

.method protected onXiaoPDance(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 92
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/node/aiassistant/AiAssistantNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {p1}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p2, 0x0

    move v0, p2

    .line 94
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_0

    .line 95
    aget-object v1, p1, v0

    check-cast v1, Lcom/xiaopeng/speech/protocol/node/aiassistant/AiAssistantListener;

    invoke-interface {v1, p2}, Lcom/xiaopeng/speech/protocol/node/aiassistant/AiAssistantListener;->onXiaoPDance(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method
