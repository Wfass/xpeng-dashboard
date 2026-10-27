.class public Lcom/xiaopeng/speech/protocol/node/social/SocialNode;
.super Lcom/xiaopeng/speech/SpeechNode;
.source "SocialNode.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/xiaopeng/speech/SpeechNode<",
        "Lcom/xiaopeng/speech/protocol/node/social/SocialListener;",
        ">;"
    }
.end annotation


# static fields
.field public static final GROUP_MESSAGE_INTENT:Ljava/lang/String; = "\u64ad\u653e\u7fa4\u5185\u5bb9"

.field public static final JOIN_GROUP_INTENT:Ljava/lang/String; = "\u52a0\u5165\u9e4f\u7a9d"

.field private static final LBS_SOCAIL_TASK:Ljava/lang/String; = "LBS\u793e\u4ea4"

.field private static final OFFLINE_SKILL:Ljava/lang/String; = "\u547d\u4ee4\u8bcd"

.field public static final QUERY_SEND_MESSAGE:Ljava/lang/String; = "\u53d1\u9001\u6d88\u606f"

.field public static final QUERY_SET_VOICE_BUTTON:Ljava/lang/String; = "\u8bbe\u7f6e\u65b9\u5411\u76d8\u6309\u94ae"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 26
    invoke-direct {p0}, Lcom/xiaopeng/speech/SpeechNode;-><init>()V

    return-void
.end method


# virtual methods
.method public broadcastGroupMessage(Ljava/lang/String;)V
    .locals 4

    const-string/jumbo v0, "\u64ad\u653e\u7fa4\u5185\u5bb9"

    .line 163
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    const-string v2, "tts"

    invoke-virtual {v1, v2, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object p1

    const-string v1, "intent"

    invoke-virtual {p1, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object p1

    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 165
    invoke-virtual {p1}, Lorg/json/JSONException;->printStackTrace()V

    const-string p1, ""

    .line 167
    :goto_0
    invoke-static {}, Lcom/xiaopeng/speech/SpeechClient;->instance()Lcom/xiaopeng/speech/SpeechClient;

    move-result-object v1

    invoke-virtual {v1}, Lcom/xiaopeng/speech/SpeechClient;->getAgent()Lcom/xiaopeng/speech/proxy/AgentProxy;

    move-result-object v1

    const-string/jumbo v2, "\u547d\u4ee4\u8bcd"

    const-string v3, "LBS\u793e\u4ea4"

    invoke-virtual {v1, v2, v3, v0, p1}, Lcom/xiaopeng/speech/proxy/AgentProxy;->triggerIntent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public joinGroup(Ljava/lang/String;)V
    .locals 4

    const-string/jumbo v0, "\u52a0\u5165\u9e4f\u7a9d"

    .line 178
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    const-string v2, "tts"

    invoke-virtual {v1, v2, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object p1

    const-string v1, "intent"

    invoke-virtual {p1, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object p1

    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 180
    invoke-virtual {p1}, Lorg/json/JSONException;->printStackTrace()V

    const-string p1, ""

    .line 182
    :goto_0
    invoke-static {}, Lcom/xiaopeng/speech/SpeechClient;->instance()Lcom/xiaopeng/speech/SpeechClient;

    move-result-object v1

    invoke-virtual {v1}, Lcom/xiaopeng/speech/SpeechClient;->getAgent()Lcom/xiaopeng/speech/proxy/AgentProxy;

    move-result-object v1

    const-string/jumbo v2, "\u547d\u4ee4\u8bcd"

    const-string v3, "LBS\u793e\u4ea4"

    invoke-virtual {v1, v2, v3, v0, p1}, Lcom/xiaopeng/speech/proxy/AgentProxy;->triggerIntent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onBackButtonClick(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 147
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/node/social/SocialNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {p1}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p2, 0x0

    .line 149
    :goto_0
    array-length v0, p1

    if-ge p2, v0, :cond_0

    .line 150
    aget-object v0, p1, p2

    check-cast v0, Lcom/xiaopeng/speech/protocol/node/social/SocialListener;

    invoke-interface {v0}, Lcom/xiaopeng/speech/protocol/node/social/SocialListener;->onBackButtonClick()V

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onSocialCancel(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 119
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/node/social/SocialNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {p1}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object p1

    .line 122
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p2, "intent"

    .line 123
    invoke-virtual {v0, p2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p2

    .line 125
    invoke-virtual {p2}, Lorg/json/JSONException;->printStackTrace()V

    const-string p2, ""

    :goto_0
    if-eqz p1, :cond_0

    const/4 v0, 0x0

    .line 129
    :goto_1
    array-length v1, p1

    if-ge v0, v1, :cond_0

    .line 130
    aget-object v1, p1, v0

    check-cast v1, Lcom/xiaopeng/speech/protocol/node/social/SocialListener;

    invoke-interface {v1, p2}, Lcom/xiaopeng/speech/protocol/node/social/SocialListener;->onSocialCancel(Ljava/lang/String;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_0
    return-void
.end method

.method public onSocialConfirm(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 101
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/node/social/SocialNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {p1}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object p1

    .line 104
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p2, "intent"

    .line 105
    invoke-virtual {v0, p2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p2

    .line 107
    invoke-virtual {p2}, Lorg/json/JSONException;->printStackTrace()V

    const-string p2, ""

    :goto_0
    if-eqz p1, :cond_0

    const/4 v0, 0x0

    .line 111
    :goto_1
    array-length v1, p1

    if-ge v0, v1, :cond_0

    .line 112
    aget-object v1, p1, v0

    check-cast v1, Lcom/xiaopeng/speech/protocol/node/social/SocialListener;

    invoke-interface {v1, p2}, Lcom/xiaopeng/speech/protocol/node/social/SocialListener;->onSocialConfirm(Ljava/lang/String;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_0
    return-void
.end method

.method public onSocialCreateTopic(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 71
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/node/social/SocialNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {p1}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p2, 0x0

    .line 73
    :goto_0
    array-length v0, p1

    if-ge p2, v0, :cond_0

    .line 74
    aget-object v0, p1, p2

    check-cast v0, Lcom/xiaopeng/speech/protocol/node/social/SocialListener;

    invoke-interface {v0}, Lcom/xiaopeng/speech/protocol/node/social/SocialListener;->onSocialCreateTopic()V

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onSocialGrabMic(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 51
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/node/social/SocialNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {p1}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p2, 0x0

    .line 53
    :goto_0
    array-length v0, p1

    if-ge p2, v0, :cond_0

    .line 54
    aget-object v0, p1, p2

    check-cast v0, Lcom/xiaopeng/speech/protocol/node/social/SocialListener;

    invoke-interface {v0}, Lcom/xiaopeng/speech/protocol/node/social/SocialListener;->onSocialGrabMic()V

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onSocialGrabMicCancel(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 61
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/node/social/SocialNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {p1}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p2, 0x0

    .line 63
    :goto_0
    array-length v0, p1

    if-ge p2, v0, :cond_0

    .line 64
    aget-object v0, p1, p2

    check-cast v0, Lcom/xiaopeng/speech/protocol/node/social/SocialListener;

    invoke-interface {v0}, Lcom/xiaopeng/speech/protocol/node/social/SocialListener;->onSocialGrabMicCancel()V

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onSocialMotorcadeClose(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 41
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/node/social/SocialNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {p1}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p2, 0x0

    .line 43
    :goto_0
    array-length v0, p1

    if-ge p2, v0, :cond_0

    .line 44
    aget-object v0, p1, p2

    check-cast v0, Lcom/xiaopeng/speech/protocol/node/social/SocialListener;

    invoke-interface {v0}, Lcom/xiaopeng/speech/protocol/node/social/SocialListener;->onSocialMotorcadeClose()V

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onSocialMotorcadeOpen(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 31
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/node/social/SocialNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {p1}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p2, 0x0

    .line 33
    :goto_0
    array-length v0, p1

    if-ge p2, v0, :cond_0

    .line 34
    aget-object v0, p1, p2

    check-cast v0, Lcom/xiaopeng/speech/protocol/node/social/SocialListener;

    invoke-interface {v0}, Lcom/xiaopeng/speech/protocol/node/social/SocialListener;->onSocialMotorcadeOpen()V

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onSocialQuitChat(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 91
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/node/social/SocialNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {p1}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p2, 0x0

    .line 93
    :goto_0
    array-length v0, p1

    if-ge p2, v0, :cond_0

    .line 94
    aget-object v0, p1, p2

    check-cast v0, Lcom/xiaopeng/speech/protocol/node/social/SocialListener;

    invoke-interface {v0}, Lcom/xiaopeng/speech/protocol/node/social/SocialListener;->onSocialQuitChat()V

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onSocialReplyTopic(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 81
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/node/social/SocialNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {p1}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p2, 0x0

    .line 83
    :goto_0
    array-length v0, p1

    if-ge p2, v0, :cond_0

    .line 84
    aget-object v0, p1, p2

    check-cast v0, Lcom/xiaopeng/speech/protocol/node/social/SocialListener;

    invoke-interface {v0}, Lcom/xiaopeng/speech/protocol/node/social/SocialListener;->onSocialReplyTopic()V

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onVoiceButtonClick(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 137
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/node/social/SocialNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {p1}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p2, 0x0

    .line 139
    :goto_0
    array-length v0, p1

    if-ge p2, v0, :cond_0

    .line 140
    aget-object v0, p1, p2

    check-cast v0, Lcom/xiaopeng/speech/protocol/node/social/SocialListener;

    invoke-interface {v0}, Lcom/xiaopeng/speech/protocol/node/social/SocialListener;->onVoiceButtonClick()V

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public querySendMessage(Ljava/lang/String;)V
    .locals 4

    const-string/jumbo v0, "\u53d1\u9001\u6d88\u606f"

    .line 192
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    const-string v2, "tts"

    invoke-virtual {v1, v2, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object p1

    const-string v1, "intent"

    invoke-virtual {p1, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object p1

    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 194
    invoke-virtual {p1}, Lorg/json/JSONException;->printStackTrace()V

    const-string p1, ""

    .line 196
    :goto_0
    invoke-static {}, Lcom/xiaopeng/speech/SpeechClient;->instance()Lcom/xiaopeng/speech/SpeechClient;

    move-result-object v1

    invoke-virtual {v1}, Lcom/xiaopeng/speech/SpeechClient;->getAgent()Lcom/xiaopeng/speech/proxy/AgentProxy;

    move-result-object v1

    const-string/jumbo v2, "\u547d\u4ee4\u8bcd"

    const-string v3, "LBS\u793e\u4ea4"

    invoke-virtual {v1, v2, v3, v0, p1}, Lcom/xiaopeng/speech/proxy/AgentProxy;->triggerIntent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public querySetVoiceButton(Ljava/lang/String;)V
    .locals 4

    const-string/jumbo v0, "\u8bbe\u7f6e\u65b9\u5411\u76d8\u6309\u94ae"

    .line 206
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    const-string v2, "tts"

    invoke-virtual {v1, v2, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object p1

    const-string v1, "intent"

    invoke-virtual {p1, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object p1

    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 208
    invoke-virtual {p1}, Lorg/json/JSONException;->printStackTrace()V

    const-string p1, ""

    .line 210
    :goto_0
    invoke-static {}, Lcom/xiaopeng/speech/SpeechClient;->instance()Lcom/xiaopeng/speech/SpeechClient;

    move-result-object v1

    invoke-virtual {v1}, Lcom/xiaopeng/speech/SpeechClient;->getAgent()Lcom/xiaopeng/speech/proxy/AgentProxy;

    move-result-object v1

    const-string/jumbo v2, "\u547d\u4ee4\u8bcd"

    const-string v3, "LBS\u793e\u4ea4"

    invoke-virtual {v1, v2, v3, v0, p1}, Lcom/xiaopeng/speech/proxy/AgentProxy;->triggerIntent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public stopDialog()V
    .locals 1

    .line 217
    invoke-static {}, Lcom/xiaopeng/speech/SpeechClient;->instance()Lcom/xiaopeng/speech/SpeechClient;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/speech/SpeechClient;->getWakeupEngine()Lcom/xiaopeng/speech/proxy/WakeupEngineProxy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/speech/proxy/WakeupEngineProxy;->stopDialog()V

    return-void
.end method
