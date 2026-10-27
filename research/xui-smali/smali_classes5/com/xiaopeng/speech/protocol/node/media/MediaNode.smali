.class public Lcom/xiaopeng/speech/protocol/node/media/MediaNode;
.super Lcom/xiaopeng/speech/SpeechNode;
.source "MediaNode.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/xiaopeng/speech/SpeechNode<",
        "Lcom/xiaopeng/speech/protocol/node/media/MediaListener;",
        ">;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "MediaNode"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 17
    invoke-direct {p0}, Lcom/xiaopeng/speech/SpeechNode;-><init>()V

    return-void
.end method


# virtual methods
.method public onBackward(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;
    .annotation build Lcom/xiaopeng/speech/annotation/SpeechAnnotation;
        event = "command://media.backward"
    .end annotation

    .line 168
    :try_start_0
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/media/MediaNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {v0}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object v0

    .line 169
    .local v0, "listenerList":[Ljava/lang/Object;
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 170
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 171
    .local v1, "json":Lorg/json/JSONObject;
    const-string v2, "value"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v2

    .line 172
    .local v2, "second":I
    if-eqz v0, :cond_0

    .line 173
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    array-length v4, v0

    if-ge v3, v4, :cond_0

    .line 174
    aget-object v4, v0, v3

    check-cast v4, Lcom/xiaopeng/speech/protocol/node/media/MediaListener;

    invoke-interface {v4, v2}, Lcom/xiaopeng/speech/protocol/node/media/MediaListener;->onBackward(I)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 173
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 180
    .end local v0    # "listenerList":[Ljava/lang/Object;
    .end local v1    # "json":Lorg/json/JSONObject;
    .end local v2    # "second":I
    .end local v3    # "i":I
    :cond_0
    goto :goto_1

    .line 178
    :catch_0
    move-exception v0

    .line 179
    .local v0, "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    .line 181
    .end local v0    # "e":Lorg/json/JSONException;
    :goto_1
    return-void
.end method

.method protected onCancelCollect(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;
    .annotation build Lcom/xiaopeng/speech/annotation/SpeechAnnotation;
        event = "command://media.control.collect.cancel"
    .end annotation

    .line 138
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/media/MediaNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {v0}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object v0

    .line 139
    .local v0, "listenerList":[Ljava/lang/Object;
    if-eqz v0, :cond_0

    .line 140
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_0

    .line 141
    aget-object v2, v0, v1

    check-cast v2, Lcom/xiaopeng/speech/protocol/node/media/MediaListener;

    invoke-interface {v2}, Lcom/xiaopeng/speech/protocol/node/media/MediaListener;->onCancelCollect()V

    .line 140
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 144
    .end local v1    # "i":I
    :cond_0
    return-void
.end method

.method protected onControlCollect(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;
    .annotation build Lcom/xiaopeng/speech/annotation/SpeechAnnotation;
        event = "command://media.control.collect"
    .end annotation

    .line 128
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/media/MediaNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {v0}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object v0

    .line 129
    .local v0, "listenerList":[Ljava/lang/Object;
    if-eqz v0, :cond_0

    .line 130
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_0

    .line 131
    aget-object v2, v0, v1

    check-cast v2, Lcom/xiaopeng/speech/protocol/node/media/MediaListener;

    invoke-interface {v2}, Lcom/xiaopeng/speech/protocol/node/media/MediaListener;->onCollect()V

    .line 130
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 134
    .end local v1    # "i":I
    :cond_0
    return-void
.end method

.method public onForward(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;
    .annotation build Lcom/xiaopeng/speech/annotation/SpeechAnnotation;
        event = "command://media.forward"
    .end annotation

    .line 150
    :try_start_0
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/media/MediaNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {v0}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object v0

    .line 151
    .local v0, "listenerList":[Ljava/lang/Object;
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 152
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 153
    .local v1, "json":Lorg/json/JSONObject;
    const-string v2, "value"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v2

    .line 154
    .local v2, "second":I
    if-eqz v0, :cond_0

    .line 155
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    array-length v4, v0

    if-ge v3, v4, :cond_0

    .line 156
    aget-object v4, v0, v3

    check-cast v4, Lcom/xiaopeng/speech/protocol/node/media/MediaListener;

    invoke-interface {v4, v2}, Lcom/xiaopeng/speech/protocol/node/media/MediaListener;->onForward(I)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 155
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 162
    .end local v0    # "listenerList":[Ljava/lang/Object;
    .end local v1    # "json":Lorg/json/JSONObject;
    .end local v2    # "second":I
    .end local v3    # "i":I
    :cond_0
    goto :goto_1

    .line 160
    :catch_0
    move-exception v0

    .line 161
    .local v0, "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    .line 163
    .end local v0    # "e":Lorg/json/JSONException;
    :goto_1
    return-void
.end method

.method protected onNext(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;
    .annotation build Lcom/xiaopeng/speech/annotation/SpeechAnnotation;
        event = "command://media.control.next"
    .end annotation

    .line 107
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/media/MediaNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {v0}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object v0

    .line 108
    .local v0, "listenerList":[Ljava/lang/Object;
    if-eqz v0, :cond_0

    .line 109
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_0

    .line 110
    aget-object v2, v0, v1

    check-cast v2, Lcom/xiaopeng/speech/protocol/node/media/MediaListener;

    invoke-interface {v2}, Lcom/xiaopeng/speech/protocol/node/media/MediaListener;->onNext()V

    .line 109
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 113
    .end local v1    # "i":I
    :cond_0
    return-void
.end method

.method protected onPause(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;
    .annotation build Lcom/xiaopeng/speech/annotation/SpeechAnnotation;
        event = "command://media.control.pause"
    .end annotation

    .line 74
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/media/MediaNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {v0}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object v0

    .line 75
    .local v0, "listenerList":[Ljava/lang/Object;
    if-eqz v0, :cond_0

    .line 76
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_0

    .line 77
    aget-object v2, v0, v1

    check-cast v2, Lcom/xiaopeng/speech/protocol/node/media/MediaListener;

    invoke-interface {v2}, Lcom/xiaopeng/speech/protocol/node/media/MediaListener;->onPause()V

    .line 76
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 80
    .end local v1    # "i":I
    :cond_0
    return-void
.end method

.method protected onPlay(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;
    .annotation build Lcom/xiaopeng/speech/annotation/SpeechAnnotation;
        event = "command://media.control.play"
    .end annotation

    .line 23
    :try_start_0
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/media/MediaNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {v0}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object v0

    .line 24
    .local v0, "listenerList":[Ljava/lang/Object;
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 25
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 26
    .local v1, "json":Lorg/json/JSONObject;
    const-string v2, "value"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 27
    .local v2, "appName":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 28
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    array-length v4, v0

    if-ge v3, v4, :cond_0

    .line 29
    aget-object v4, v0, v3

    check-cast v4, Lcom/xiaopeng/speech/protocol/node/media/MediaListener;

    invoke-interface {v4, v2}, Lcom/xiaopeng/speech/protocol/node/media/MediaListener;->onPlay(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 28
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 36
    .end local v0    # "listenerList":[Ljava/lang/Object;
    .end local v1    # "json":Lorg/json/JSONObject;
    .end local v2    # "appName":Ljava/lang/String;
    .end local v3    # "i":I
    :cond_0
    goto :goto_1

    .line 34
    :catch_0
    move-exception v0

    .line 35
    .local v0, "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    .line 38
    .end local v0    # "e":Lorg/json/JSONException;
    :goto_1
    return-void
.end method

.method protected onPlayLoopAll(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;
    .annotation build Lcom/xiaopeng/speech/annotation/SpeechAnnotation;
        event = "command://media.control.loop.all"
    .end annotation

    .line 53
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/media/MediaNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {v0}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object v0

    .line 54
    .local v0, "listenerList":[Ljava/lang/Object;
    if-eqz v0, :cond_0

    .line 55
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_0

    .line 56
    aget-object v2, v0, v1

    check-cast v2, Lcom/xiaopeng/speech/protocol/node/media/MediaListener;

    const-string v3, "order"

    invoke-interface {v2, v3}, Lcom/xiaopeng/speech/protocol/node/media/MediaListener;->onPlayMode(Ljava/lang/String;)V

    .line 55
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 59
    .end local v1    # "i":I
    :cond_0
    return-void
.end method

.method protected onPlayLoopRandom(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;
    .annotation build Lcom/xiaopeng/speech/annotation/SpeechAnnotation;
        event = "command://media.control.random"
    .end annotation

    .line 63
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/media/MediaNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {v0}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object v0

    .line 64
    .local v0, "listenerList":[Ljava/lang/Object;
    if-eqz v0, :cond_0

    .line 65
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_0

    .line 66
    aget-object v2, v0, v1

    check-cast v2, Lcom/xiaopeng/speech/protocol/node/media/MediaListener;

    const-string v3, "random"

    invoke-interface {v2, v3}, Lcom/xiaopeng/speech/protocol/node/media/MediaListener;->onPlayMode(Ljava/lang/String;)V

    .line 65
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 69
    .end local v1    # "i":I
    :cond_0
    return-void
.end method

.method protected onPlayLoopSingle(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;
    .annotation build Lcom/xiaopeng/speech/annotation/SpeechAnnotation;
        event = "command://media.control.loop.single"
    .end annotation

    .line 43
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/media/MediaNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {v0}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object v0

    .line 44
    .local v0, "listenerList":[Ljava/lang/Object;
    if-eqz v0, :cond_0

    .line 45
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_0

    .line 46
    aget-object v2, v0, v1

    check-cast v2, Lcom/xiaopeng/speech/protocol/node/media/MediaListener;

    const-string v3, "single"

    invoke-interface {v2, v3}, Lcom/xiaopeng/speech/protocol/node/media/MediaListener;->onPlayMode(Ljava/lang/String;)V

    .line 45
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 49
    .end local v1    # "i":I
    :cond_0
    return-void
.end method

.method protected onPrev(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;
    .annotation build Lcom/xiaopeng/speech/annotation/SpeechAnnotation;
        event = "command://media.control.prev"
    .end annotation

    .line 96
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/media/MediaNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {v0}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object v0

    .line 97
    .local v0, "listenerList":[Ljava/lang/Object;
    if-eqz v0, :cond_0

    .line 98
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_0

    .line 99
    aget-object v2, v0, v1

    check-cast v2, Lcom/xiaopeng/speech/protocol/node/media/MediaListener;

    invoke-interface {v2}, Lcom/xiaopeng/speech/protocol/node/media/MediaListener;->onPrev()V

    .line 98
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 102
    .end local v1    # "i":I
    :cond_0
    return-void
.end method

.method protected onResume(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;
    .annotation build Lcom/xiaopeng/speech/annotation/SpeechAnnotation;
        event = "command://media.control.resume"
    .end annotation

    .line 85
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/media/MediaNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {v0}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object v0

    .line 86
    .local v0, "listenerList":[Ljava/lang/Object;
    if-eqz v0, :cond_0

    .line 87
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_0

    .line 88
    aget-object v2, v0, v1

    check-cast v2, Lcom/xiaopeng/speech/protocol/node/media/MediaListener;

    invoke-interface {v2}, Lcom/xiaopeng/speech/protocol/node/media/MediaListener;->onResume()V

    .line 87
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 91
    .end local v1    # "i":I
    :cond_0
    return-void
.end method

.method public onSettime(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;
    .annotation build Lcom/xiaopeng/speech/annotation/SpeechAnnotation;
        event = "command://media.settime"
    .end annotation

    .line 186
    :try_start_0
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/media/MediaNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {v0}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object v0

    .line 187
    .local v0, "listenerList":[Ljava/lang/Object;
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 188
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 189
    .local v1, "json":Lorg/json/JSONObject;
    const-string v2, "value"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v2

    .line 190
    .local v2, "second":I
    if-eqz v0, :cond_0

    .line 191
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    array-length v4, v0

    if-ge v3, v4, :cond_0

    .line 192
    aget-object v4, v0, v3

    check-cast v4, Lcom/xiaopeng/speech/protocol/node/media/MediaListener;

    invoke-interface {v4, v2}, Lcom/xiaopeng/speech/protocol/node/media/MediaListener;->onSetTime(I)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 191
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 199
    .end local v0    # "listenerList":[Ljava/lang/Object;
    .end local v1    # "json":Lorg/json/JSONObject;
    .end local v2    # "second":I
    .end local v3    # "i":I
    :cond_0
    goto :goto_1

    .line 197
    :catch_0
    move-exception v0

    .line 198
    .local v0, "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    .line 201
    .end local v0    # "e":Lorg/json/JSONException;
    :goto_1
    return-void
.end method

.method protected onStop(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;
    .annotation build Lcom/xiaopeng/speech/annotation/SpeechAnnotation;
        event = "command://media.control.stop"
    .end annotation

    .line 118
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/media/MediaNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {v0}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object v0

    .line 119
    .local v0, "listenerList":[Ljava/lang/Object;
    if-eqz v0, :cond_0

    .line 120
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_0

    .line 121
    aget-object v2, v0, v1

    check-cast v2, Lcom/xiaopeng/speech/protocol/node/media/MediaListener;

    invoke-interface {v2}, Lcom/xiaopeng/speech/protocol/node/media/MediaListener;->onStop()V

    .line 120
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 124
    .end local v1    # "i":I
    :cond_0
    return-void
.end method
