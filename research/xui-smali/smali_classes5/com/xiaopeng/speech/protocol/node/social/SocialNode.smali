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

    .line 27
    return-void
.end method


# virtual methods
.method public broadcastGroupMessage(Ljava/lang/String;)V
    .locals 5
    .param p1, "tts"    # Ljava/lang/String;

    .line 161
    const-string v0, ""

    .line 163
    .local v0, "slots":Ljava/lang/String;
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    const-string v2, "tts"

    invoke-virtual {v1, v2, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v1

    const-string v2, "intent"

    const-string v3, "\u64ad\u653e\u7fa4\u5185\u5bb9"

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v1

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    .line 166
    goto :goto_0

    .line 164
    :catch_0
    move-exception v1

    .line 165
    .local v1, "e":Lorg/json/JSONException;
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    .line 167
    .end local v1    # "e":Lorg/json/JSONException;
    :goto_0
    invoke-static {}, Lcom/xiaopeng/speech/SpeechClient;->instance()Lcom/xiaopeng/speech/SpeechClient;

    move-result-object v1

    invoke-virtual {v1}, Lcom/xiaopeng/speech/SpeechClient;->getAgent()Lcom/xiaopeng/speech/proxy/AgentProxy;

    move-result-object v1

    const-string v2, "\u547d\u4ee4\u8bcd"

    const-string v3, "LBS\u793e\u4ea4"

    const-string v4, "\u64ad\u653e\u7fa4\u5185\u5bb9"

    invoke-virtual {v1, v2, v3, v4, v0}, Lcom/xiaopeng/speech/proxy/AgentProxy;->triggerIntent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 168
    return-void
.end method

.method public joinGroup(Ljava/lang/String;)V
    .locals 5
    .param p1, "tts"    # Ljava/lang/String;

    .line 176
    const-string v0, ""

    .line 178
    .local v0, "slots":Ljava/lang/String;
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    const-string v2, "tts"

    invoke-virtual {v1, v2, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v1

    const-string v2, "intent"

    const-string v3, "\u52a0\u5165\u9e4f\u7a9d"

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v1

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    .line 181
    goto :goto_0

    .line 179
    :catch_0
    move-exception v1

    .line 180
    .local v1, "e":Lorg/json/JSONException;
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    .line 182
    .end local v1    # "e":Lorg/json/JSONException;
    :goto_0
    invoke-static {}, Lcom/xiaopeng/speech/SpeechClient;->instance()Lcom/xiaopeng/speech/SpeechClient;

    move-result-object v1

    invoke-virtual {v1}, Lcom/xiaopeng/speech/SpeechClient;->getAgent()Lcom/xiaopeng/speech/proxy/AgentProxy;

    move-result-object v1

    const-string v2, "\u547d\u4ee4\u8bcd"

    const-string v3, "LBS\u793e\u4ea4"

    const-string v4, "\u52a0\u5165\u9e4f\u7a9d"

    invoke-virtual {v1, v2, v3, v4, v0}, Lcom/xiaopeng/speech/proxy/AgentProxy;->triggerIntent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 183
    return-void
.end method

.method public onBackButtonClick(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;
    .annotation build Lcom/xiaopeng/speech/annotation/SpeechAnnotation;
        event = "jarvis.back.click"
    .end annotation

    .line 147
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/social/SocialNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {v0}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object v0

    .line 148
    .local v0, "listenerList":[Ljava/lang/Object;
    if-eqz v0, :cond_0

    .line 149
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_0

    .line 150
    aget-object v2, v0, v1

    check-cast v2, Lcom/xiaopeng/speech/protocol/node/social/SocialListener;

    invoke-interface {v2}, Lcom/xiaopeng/speech/protocol/node/social/SocialListener;->onBackButtonClick()V

    .line 149
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 153
    .end local v1    # "i":I
    :cond_0
    return-void
.end method

.method public onSocialCancel(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;
    .annotation build Lcom/xiaopeng/speech/annotation/SpeechAnnotation;
        event = "command://social.cancel"
    .end annotation

    .line 119
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/social/SocialNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {v0}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object v0

    .line 120
    .local v0, "listenerList":[Ljava/lang/Object;
    const-string v1, ""

    .line 122
    .local v1, "intent":Ljava/lang/String;
    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 123
    .local v2, "obj":Lorg/json/JSONObject;
    const-string v3, "intent"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v1, v3

    .line 126
    .end local v2    # "obj":Lorg/json/JSONObject;
    goto :goto_0

    .line 124
    :catch_0
    move-exception v2

    .line 125
    .local v2, "e":Lorg/json/JSONException;
    invoke-virtual {v2}, Lorg/json/JSONException;->printStackTrace()V

    .line 128
    .end local v2    # "e":Lorg/json/JSONException;
    :goto_0
    if-eqz v0, :cond_0

    .line 129
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    array-length v3, v0

    if-ge v2, v3, :cond_0

    .line 130
    aget-object v3, v0, v2

    check-cast v3, Lcom/xiaopeng/speech/protocol/node/social/SocialListener;

    invoke-interface {v3, v1}, Lcom/xiaopeng/speech/protocol/node/social/SocialListener;->onSocialCancel(Ljava/lang/String;)V

    .line 129
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 133
    .end local v2    # "i":I
    :cond_0
    return-void
.end method

.method public onSocialConfirm(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;
    .annotation build Lcom/xiaopeng/speech/annotation/SpeechAnnotation;
        event = "command://social.confirm"
    .end annotation

    .line 101
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/social/SocialNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {v0}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object v0

    .line 102
    .local v0, "listenerList":[Ljava/lang/Object;
    const-string v1, ""

    .line 104
    .local v1, "intent":Ljava/lang/String;
    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 105
    .local v2, "obj":Lorg/json/JSONObject;
    const-string v3, "intent"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v1, v3

    .line 108
    .end local v2    # "obj":Lorg/json/JSONObject;
    goto :goto_0

    .line 106
    :catch_0
    move-exception v2

    .line 107
    .local v2, "e":Lorg/json/JSONException;
    invoke-virtual {v2}, Lorg/json/JSONException;->printStackTrace()V

    .line 110
    .end local v2    # "e":Lorg/json/JSONException;
    :goto_0
    if-eqz v0, :cond_0

    .line 111
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    array-length v3, v0

    if-ge v2, v3, :cond_0

    .line 112
    aget-object v3, v0, v2

    check-cast v3, Lcom/xiaopeng/speech/protocol/node/social/SocialListener;

    invoke-interface {v3, v1}, Lcom/xiaopeng/speech/protocol/node/social/SocialListener;->onSocialConfirm(Ljava/lang/String;)V

    .line 111
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 115
    .end local v2    # "i":I
    :cond_0
    return-void
.end method

.method public onSocialCreateTopic(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;
    .annotation build Lcom/xiaopeng/speech/annotation/SpeechAnnotation;
        event = "command://social.create.topic"
    .end annotation

    .line 71
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/social/SocialNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {v0}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object v0

    .line 72
    .local v0, "listenerList":[Ljava/lang/Object;
    if-eqz v0, :cond_0

    .line 73
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_0

    .line 74
    aget-object v2, v0, v1

    check-cast v2, Lcom/xiaopeng/speech/protocol/node/social/SocialListener;

    invoke-interface {v2}, Lcom/xiaopeng/speech/protocol/node/social/SocialListener;->onSocialCreateTopic()V

    .line 73
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 77
    .end local v1    # "i":I
    :cond_0
    return-void
.end method

.method public onSocialGrabMic(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;
    .annotation build Lcom/xiaopeng/speech/annotation/SpeechAnnotation;
        event = "command://social.grab.mic"
    .end annotation

    .line 51
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/social/SocialNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {v0}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object v0

    .line 52
    .local v0, "listenerList":[Ljava/lang/Object;
    if-eqz v0, :cond_0

    .line 53
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_0

    .line 54
    aget-object v2, v0, v1

    check-cast v2, Lcom/xiaopeng/speech/protocol/node/social/SocialListener;

    invoke-interface {v2}, Lcom/xiaopeng/speech/protocol/node/social/SocialListener;->onSocialGrabMic()V

    .line 53
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 57
    .end local v1    # "i":I
    :cond_0
    return-void
.end method

.method public onSocialGrabMicCancel(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;
    .annotation build Lcom/xiaopeng/speech/annotation/SpeechAnnotation;
        event = "command://social.grab.mic.cancel"
    .end annotation

    .line 61
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/social/SocialNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {v0}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object v0

    .line 62
    .local v0, "listenerList":[Ljava/lang/Object;
    if-eqz v0, :cond_0

    .line 63
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_0

    .line 64
    aget-object v2, v0, v1

    check-cast v2, Lcom/xiaopeng/speech/protocol/node/social/SocialListener;

    invoke-interface {v2}, Lcom/xiaopeng/speech/protocol/node/social/SocialListener;->onSocialGrabMicCancel()V

    .line 63
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 67
    .end local v1    # "i":I
    :cond_0
    return-void
.end method

.method public onSocialMotorcadeClose(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;
    .annotation build Lcom/xiaopeng/speech/annotation/SpeechAnnotation;
        event = "command://social.motorcade.close"
    .end annotation

    .line 41
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/social/SocialNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {v0}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object v0

    .line 42
    .local v0, "listenerList":[Ljava/lang/Object;
    if-eqz v0, :cond_0

    .line 43
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_0

    .line 44
    aget-object v2, v0, v1

    check-cast v2, Lcom/xiaopeng/speech/protocol/node/social/SocialListener;

    invoke-interface {v2}, Lcom/xiaopeng/speech/protocol/node/social/SocialListener;->onSocialMotorcadeClose()V

    .line 43
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 47
    .end local v1    # "i":I
    :cond_0
    return-void
.end method

.method public onSocialMotorcadeOpen(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;
    .annotation build Lcom/xiaopeng/speech/annotation/SpeechAnnotation;
        event = "command://social.motorcade.open"
    .end annotation

    .line 31
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/social/SocialNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {v0}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object v0

    .line 32
    .local v0, "listenerList":[Ljava/lang/Object;
    if-eqz v0, :cond_0

    .line 33
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_0

    .line 34
    aget-object v2, v0, v1

    check-cast v2, Lcom/xiaopeng/speech/protocol/node/social/SocialListener;

    invoke-interface {v2}, Lcom/xiaopeng/speech/protocol/node/social/SocialListener;->onSocialMotorcadeOpen()V

    .line 33
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 37
    .end local v1    # "i":I
    :cond_0
    return-void
.end method

.method public onSocialQuitChat(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;
    .annotation build Lcom/xiaopeng/speech/annotation/SpeechAnnotation;
        event = "command://social.quit.chat"
    .end annotation

    .line 91
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/social/SocialNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {v0}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object v0

    .line 92
    .local v0, "listenerList":[Ljava/lang/Object;
    if-eqz v0, :cond_0

    .line 93
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_0

    .line 94
    aget-object v2, v0, v1

    check-cast v2, Lcom/xiaopeng/speech/protocol/node/social/SocialListener;

    invoke-interface {v2}, Lcom/xiaopeng/speech/protocol/node/social/SocialListener;->onSocialQuitChat()V

    .line 93
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 97
    .end local v1    # "i":I
    :cond_0
    return-void
.end method

.method public onSocialReplyTopic(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;
    .annotation build Lcom/xiaopeng/speech/annotation/SpeechAnnotation;
        event = "command://social.reply.topic"
    .end annotation

    .line 81
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/social/SocialNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {v0}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object v0

    .line 82
    .local v0, "listenerList":[Ljava/lang/Object;
    if-eqz v0, :cond_0

    .line 83
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_0

    .line 84
    aget-object v2, v0, v1

    check-cast v2, Lcom/xiaopeng/speech/protocol/node/social/SocialListener;

    invoke-interface {v2}, Lcom/xiaopeng/speech/protocol/node/social/SocialListener;->onSocialReplyTopic()V

    .line 83
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 87
    .end local v1    # "i":I
    :cond_0
    return-void
.end method

.method public onVoiceButtonClick(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;
    .annotation build Lcom/xiaopeng/speech/annotation/SpeechAnnotation;
        event = "jarvis.voice.click"
    .end annotation

    .line 137
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/social/SocialNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {v0}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object v0

    .line 138
    .local v0, "listenerList":[Ljava/lang/Object;
    if-eqz v0, :cond_0

    .line 139
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_0

    .line 140
    aget-object v2, v0, v1

    check-cast v2, Lcom/xiaopeng/speech/protocol/node/social/SocialListener;

    invoke-interface {v2}, Lcom/xiaopeng/speech/protocol/node/social/SocialListener;->onVoiceButtonClick()V

    .line 139
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 143
    .end local v1    # "i":I
    :cond_0
    return-void
.end method

.method public querySendMessage(Ljava/lang/String;)V
    .locals 5
    .param p1, "tts"    # Ljava/lang/String;

    .line 190
    const-string v0, ""

    .line 192
    .local v0, "slots":Ljava/lang/String;
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    const-string v2, "tts"

    invoke-virtual {v1, v2, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v1

    const-string v2, "intent"

    const-string v3, "\u53d1\u9001\u6d88\u606f"

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v1

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    .line 195
    goto :goto_0

    .line 193
    :catch_0
    move-exception v1

    .line 194
    .local v1, "e":Lorg/json/JSONException;
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    .line 196
    .end local v1    # "e":Lorg/json/JSONException;
    :goto_0
    invoke-static {}, Lcom/xiaopeng/speech/SpeechClient;->instance()Lcom/xiaopeng/speech/SpeechClient;

    move-result-object v1

    invoke-virtual {v1}, Lcom/xiaopeng/speech/SpeechClient;->getAgent()Lcom/xiaopeng/speech/proxy/AgentProxy;

    move-result-object v1

    const-string v2, "\u547d\u4ee4\u8bcd"

    const-string v3, "LBS\u793e\u4ea4"

    const-string v4, "\u53d1\u9001\u6d88\u606f"

    invoke-virtual {v1, v2, v3, v4, v0}, Lcom/xiaopeng/speech/proxy/AgentProxy;->triggerIntent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 197
    return-void
.end method

.method public querySetVoiceButton(Ljava/lang/String;)V
    .locals 5
    .param p1, "tts"    # Ljava/lang/String;

    .line 204
    const-string v0, ""

    .line 206
    .local v0, "slots":Ljava/lang/String;
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    const-string v2, "tts"

    invoke-virtual {v1, v2, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v1

    const-string v2, "intent"

    const-string v3, "\u8bbe\u7f6e\u65b9\u5411\u76d8\u6309\u94ae"

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v1

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    .line 209
    goto :goto_0

    .line 207
    :catch_0
    move-exception v1

    .line 208
    .local v1, "e":Lorg/json/JSONException;
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    .line 210
    .end local v1    # "e":Lorg/json/JSONException;
    :goto_0
    invoke-static {}, Lcom/xiaopeng/speech/SpeechClient;->instance()Lcom/xiaopeng/speech/SpeechClient;

    move-result-object v1

    invoke-virtual {v1}, Lcom/xiaopeng/speech/SpeechClient;->getAgent()Lcom/xiaopeng/speech/proxy/AgentProxy;

    move-result-object v1

    const-string v2, "\u547d\u4ee4\u8bcd"

    const-string v3, "LBS\u793e\u4ea4"

    const-string v4, "\u8bbe\u7f6e\u65b9\u5411\u76d8\u6309\u94ae"

    invoke-virtual {v1, v2, v3, v4, v0}, Lcom/xiaopeng/speech/proxy/AgentProxy;->triggerIntent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 211
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

    .line 218
    return-void
.end method
