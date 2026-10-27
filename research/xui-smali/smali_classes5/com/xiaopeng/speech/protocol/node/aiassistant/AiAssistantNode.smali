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

    .line 30
    return-void
.end method


# virtual methods
.method public declared-synchronized disableSoftWakeupWithInfo(Ljava/lang/String;II)V
    .locals 7
    .param p1, "model"    # Ljava/lang/String;
    .param p2, "disableType"    # I
    .param p3, "notifyType"    # I

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
    .local v5, "tips":Ljava/lang/String;
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

    .line 130
    .end local v5    # "tips":Ljava/lang/String;
    .end local p1    # "model":Ljava/lang/String;
    .end local p2    # "disableType":I
    .end local p3    # "notifyType":I
    :catchall_0
    move-exception p1

    monitor-exit p0

    .end local p0    # "this":Lcom/xiaopeng/speech/protocol/node/aiassistant/AiAssistantNode;
    throw p1
.end method

.method public declared-synchronized disableSpeechWakeupWithInfo(Ljava/lang/String;II)V
    .locals 7
    .param p1, "model"    # Ljava/lang/String;
    .param p2, "disableType"    # I
    .param p3, "notifyType"    # I

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

    .line 159
    const-string v0, ""

    .line 160
    .local v0, "tips":Ljava/lang/String;
    sget-object v1, Lcom/xiaopeng/speech/protocol/Model;->CARPLAY:Lcom/xiaopeng/speech/protocol/Model;

    invoke-virtual {v1}, Lcom/xiaopeng/speech/protocol/Model;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 161
    sget v1, Lcom/xiaopeng/speech/protocol/R$string;->siri_wakeup_toast:I

    invoke-static {v1}, Lcom/xiaopeng/speech/common/util/ResourceUtils;->getString(I)Ljava/lang/String;

    move-result-object v1

    move-object v0, v1

    .line 165
    .end local v0    # "tips":Ljava/lang/String;
    .local v6, "tips":Ljava/lang/String;
    :cond_0
    :goto_0
    move-object v6, v0

    goto :goto_1

    .line 162
    .end local v6    # "tips":Ljava/lang/String;
    .restart local v0    # "tips":Ljava/lang/String;
    :cond_1
    sget-object v1, Lcom/xiaopeng/speech/protocol/Model;->ANDROID_AUTO:Lcom/xiaopeng/speech/protocol/Model;

    invoke-virtual {v1}, Lcom/xiaopeng/speech/protocol/Model;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 163
    sget v1, Lcom/xiaopeng/speech/protocol/R$string;->google_wakeup_toast:I

    invoke-static {v1}, Lcom/xiaopeng/speech/common/util/ResourceUtils;->getString(I)Ljava/lang/String;

    move-result-object v1

    move-object v0, v1

    goto :goto_0

    .line 165
    .end local v0    # "tips":Ljava/lang/String;
    .restart local v6    # "tips":Ljava/lang/String;
    :goto_1
    invoke-static {}, Lcom/xiaopeng/speech/SpeechClient;->instance()Lcom/xiaopeng/speech/SpeechClient;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/speech/SpeechClient;->getWakeupEngine()Lcom/xiaopeng/speech/proxy/WakeupEngineProxy;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaopeng/speech/protocol/node/aiassistant/AiAssistantNode;->mBinder:Landroid/os/IBinder;

    move v2, p2

    move-object v3, p1

    move-object v4, v6

    move v5, p3

    invoke-virtual/range {v0 .. v5}, Lcom/xiaopeng/speech/proxy/WakeupEngineProxy;->disableSpeechWakeupWithInfo(Landroid/os/IBinder;ILjava/lang/String;Ljava/lang/String;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 166
    monitor-exit p0

    return-void

    .line 157
    .end local v6    # "tips":Ljava/lang/String;
    .end local p1    # "model":Ljava/lang/String;
    .end local p2    # "disableType":I
    .end local p3    # "notifyType":I
    :catchall_0
    move-exception p1

    monitor-exit p0

    .end local p0    # "this":Lcom/xiaopeng/speech/protocol/node/aiassistant/AiAssistantNode;
    throw p1
.end method

.method public declared-synchronized enableSoftWakeupWithInfo(Ljava/lang/String;II)V
    .locals 4
    .param p1, "model"    # Ljava/lang/String;
    .param p2, "disableType"    # I
    .param p3, "notifyType"    # I

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

    .line 144
    .end local p1    # "model":Ljava/lang/String;
    .end local p2    # "disableType":I
    .end local p3    # "notifyType":I
    :catchall_0
    move-exception p1

    monitor-exit p0

    .end local p0    # "this":Lcom/xiaopeng/speech/protocol/node/aiassistant/AiAssistantNode;
    throw p1
.end method

.method public declared-synchronized enableSpeechWakeupWithInfo(Ljava/lang/String;II)V
    .locals 4
    .param p1, "model"    # Ljava/lang/String;
    .param p2, "disableType"    # I
    .param p3, "notifyType"    # I

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

    .line 176
    .end local p1    # "model":Ljava/lang/String;
    .end local p2    # "disableType":I
    .end local p3    # "notifyType":I
    :catchall_0
    move-exception p1

    monitor-exit p0

    .end local p0    # "this":Lcom/xiaopeng/speech/protocol/node/aiassistant/AiAssistantNode;
    throw p1
.end method

.method protected onMessageClose(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;
    .annotation build Lcom/xiaopeng/speech/annotation/SpeechAnnotation;
        event = "command://ai.message.close"
    .end annotation

    .line 64
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/aiassistant/AiAssistantNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {v0}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object v0

    .line 65
    .local v0, "listenerList":[Ljava/lang/Object;
    if-eqz v0, :cond_0

    .line 66
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_0

    .line 67
    aget-object v2, v0, v1

    check-cast v2, Lcom/xiaopeng/speech/protocol/node/aiassistant/AiAssistantListener;

    invoke-interface {v2}, Lcom/xiaopeng/speech/protocol/node/aiassistant/AiAssistantListener;->onMessageClose()V

    .line 66
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 70
    .end local v1    # "i":I
    :cond_0
    return-void
.end method

.method protected onMessageOpen(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;
    .annotation build Lcom/xiaopeng/speech/annotation/SpeechAnnotation;
        event = "command://ai.message.open"
    .end annotation

    .line 54
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/aiassistant/AiAssistantNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {v0}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object v0

    .line 55
    .local v0, "listenerList":[Ljava/lang/Object;
    if-eqz v0, :cond_0

    .line 56
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_0

    .line 57
    aget-object v2, v0, v1

    check-cast v2, Lcom/xiaopeng/speech/protocol/node/aiassistant/AiAssistantListener;

    invoke-interface {v2}, Lcom/xiaopeng/speech/protocol/node/aiassistant/AiAssistantListener;->onMessageOpen()V

    .line 56
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 60
    .end local v1    # "i":I
    :cond_0
    return-void
.end method

.method protected onOpenVideo(Ljava/lang/String;Ljava/lang/String;)V
    .locals 7
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;
    .annotation build Lcom/xiaopeng/speech/annotation/SpeechAnnotation;
        event = "command://ai.open.video"
    .end annotation

    .line 75
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 76
    .local v0, "jsonData":Lorg/json/JSONObject;
    const-string v1, "video_name"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 77
    .local v1, "videoName":Ljava/lang/String;
    const-string v2, "video_tag"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 78
    .local v2, "videoTag":Ljava/lang/String;
    const-string v3, "video_category"

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 79
    .local v3, "videoCategory":Ljava/lang/String;
    iget-object v4, p0, Lcom/xiaopeng/speech/protocol/node/aiassistant/AiAssistantNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {v4}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object v4

    .line 80
    .local v4, "listenerList":[Ljava/lang/Object;
    if-eqz v4, :cond_0

    .line 81
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_0
    array-length v6, v4

    if-ge v5, v6, :cond_0

    .line 82
    aget-object v6, v4, v5

    check-cast v6, Lcom/xiaopeng/speech/protocol/node/aiassistant/AiAssistantListener;

    invoke-interface {v6, v1, v2, v3}, Lcom/xiaopeng/speech/protocol/node/aiassistant/AiAssistantListener;->onOpenVideo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 81
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 87
    .end local v0    # "jsonData":Lorg/json/JSONObject;
    .end local v1    # "videoName":Ljava/lang/String;
    .end local v2    # "videoTag":Ljava/lang/String;
    .end local v3    # "videoCategory":Ljava/lang/String;
    .end local v4    # "listenerList":[Ljava/lang/Object;
    .end local v5    # "i":I
    :cond_0
    goto :goto_1

    .line 85
    :catch_0
    move-exception v0

    .line 86
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 88
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_1
    return-void
.end method

.method protected onPlayVideo(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;
    .annotation build Lcom/xiaopeng/speech/annotation/SpeechAnnotation;
        event = "native://ai.play.video"
    .end annotation

    .line 34
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/aiassistant/AiAssistantNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {v0}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object v0

    .line 35
    .local v0, "listenerList":[Ljava/lang/Object;
    if-eqz v0, :cond_0

    .line 36
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_0

    .line 37
    aget-object v2, v0, v1

    check-cast v2, Lcom/xiaopeng/speech/protocol/node/aiassistant/AiAssistantListener;

    invoke-interface {v2}, Lcom/xiaopeng/speech/protocol/node/aiassistant/AiAssistantListener;->onPlayVideo()V

    .line 36
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 40
    .end local v1    # "i":I
    :cond_0
    return-void
.end method

.method protected onPlayVideoTtsend(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;
    .annotation build Lcom/xiaopeng/speech/annotation/SpeechAnnotation;
        event = "command://ai.play.video.ttsend"
    .end annotation

    .line 44
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/aiassistant/AiAssistantNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {v0}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object v0

    .line 45
    .local v0, "listenerList":[Ljava/lang/Object;
    if-eqz v0, :cond_0

    .line 46
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_0

    .line 47
    aget-object v2, v0, v1

    check-cast v2, Lcom/xiaopeng/speech/protocol/node/aiassistant/AiAssistantListener;

    invoke-interface {v2}, Lcom/xiaopeng/speech/protocol/node/aiassistant/AiAssistantListener;->onPlayVideoTtsend()V

    .line 46
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 50
    .end local v1    # "i":I
    :cond_0
    return-void
.end method

.method protected onXiaoPChangeClothe(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;
    .annotation build Lcom/xiaopeng/speech/annotation/SpeechAnnotation;
        event = "command://system.avatar.changeclothes"
    .end annotation

    .line 103
    const/4 v0, 0x0

    .line 104
    .local v0, "type":I
    :try_start_0
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 105
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 106
    .local v1, "json":Lorg/json/JSONObject;
    const-string v2, "skin"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v2

    move v0, v2

    .line 108
    .end local v1    # "json":Lorg/json/JSONObject;
    :cond_0
    iget-object v1, p0, Lcom/xiaopeng/speech/protocol/node/aiassistant/AiAssistantNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {v1}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object v1

    .line 109
    .local v1, "listenerList":[Ljava/lang/Object;
    if-eqz v1, :cond_1

    .line 110
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v3, v1

    if-ge v2, v3, :cond_1

    .line 111
    aget-object v3, v1, v2

    check-cast v3, Lcom/xiaopeng/speech/protocol/node/aiassistant/AiAssistantListener;

    invoke-interface {v3, v0}, Lcom/xiaopeng/speech/protocol/node/aiassistant/AiAssistantListener;->onXiaoPChangeClothe(I)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 110
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 116
    .end local v0    # "type":I
    .end local v1    # "listenerList":[Ljava/lang/Object;
    .end local v2    # "i":I
    :cond_1
    goto :goto_1

    .line 114
    :catch_0
    move-exception v0

    .line 115
    .local v0, "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    .line 118
    .end local v0    # "e":Lorg/json/JSONException;
    :goto_1
    return-void
.end method

.method protected onXiaoPDance(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;
    .annotation build Lcom/xiaopeng/speech/annotation/SpeechAnnotation;
        event = "command://system.avatar.dance"
    .end annotation

    .line 92
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/aiassistant/AiAssistantNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {v0}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object v0

    .line 93
    .local v0, "listenerList":[Ljava/lang/Object;
    if-eqz v0, :cond_0

    .line 94
    const/4 v1, 0x0

    move v2, v1

    .local v2, "i":I
    :goto_0
    array-length v3, v0

    if-ge v2, v3, :cond_0

    .line 95
    aget-object v3, v0, v2

    check-cast v3, Lcom/xiaopeng/speech/protocol/node/aiassistant/AiAssistantListener;

    invoke-interface {v3, v1}, Lcom/xiaopeng/speech/protocol/node/aiassistant/AiAssistantListener;->onXiaoPDance(I)V

    .line 94
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 98
    .end local v2    # "i":I
    :cond_0
    return-void
.end method
