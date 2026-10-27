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
    .locals 2

    .line 168
    :try_start_0
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/node/media/MediaNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {p1}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object p1

    .line 169
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 170
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p2, "value"

    .line 171
    invoke-virtual {v0, p2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result p2

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    .line 173
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_0

    .line 174
    aget-object v1, p1, v0

    check-cast v1, Lcom/xiaopeng/speech/protocol/node/media/MediaListener;

    invoke-interface {v1, p2}, Lcom/xiaopeng/speech/protocol/node/media/MediaListener;->onBackward(I)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :catch_0
    move-exception p1

    .line 179
    invoke-virtual {p1}, Lorg/json/JSONException;->printStackTrace()V

    :cond_0
    return-void
.end method

.method protected onCancelCollect(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 138
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/node/media/MediaNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {p1}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p2, 0x0

    .line 140
    :goto_0
    array-length v0, p1

    if-ge p2, v0, :cond_0

    .line 141
    aget-object v0, p1, p2

    check-cast v0, Lcom/xiaopeng/speech/protocol/node/media/MediaListener;

    invoke-interface {v0}, Lcom/xiaopeng/speech/protocol/node/media/MediaListener;->onCancelCollect()V

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected onControlCollect(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 128
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/node/media/MediaNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {p1}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p2, 0x0

    .line 130
    :goto_0
    array-length v0, p1

    if-ge p2, v0, :cond_0

    .line 131
    aget-object v0, p1, p2

    check-cast v0, Lcom/xiaopeng/speech/protocol/node/media/MediaListener;

    invoke-interface {v0}, Lcom/xiaopeng/speech/protocol/node/media/MediaListener;->onCollect()V

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onForward(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 150
    :try_start_0
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/node/media/MediaNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {p1}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object p1

    .line 151
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 152
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p2, "value"

    .line 153
    invoke-virtual {v0, p2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result p2

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    .line 155
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_0

    .line 156
    aget-object v1, p1, v0

    check-cast v1, Lcom/xiaopeng/speech/protocol/node/media/MediaListener;

    invoke-interface {v1, p2}, Lcom/xiaopeng/speech/protocol/node/media/MediaListener;->onForward(I)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :catch_0
    move-exception p1

    .line 161
    invoke-virtual {p1}, Lorg/json/JSONException;->printStackTrace()V

    :cond_0
    return-void
.end method

.method protected onNext(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 107
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/node/media/MediaNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {p1}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p2, 0x0

    .line 109
    :goto_0
    array-length v0, p1

    if-ge p2, v0, :cond_0

    .line 110
    aget-object v0, p1, p2

    check-cast v0, Lcom/xiaopeng/speech/protocol/node/media/MediaListener;

    invoke-interface {v0}, Lcom/xiaopeng/speech/protocol/node/media/MediaListener;->onNext()V

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected onPause(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 74
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/node/media/MediaNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {p1}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p2, 0x0

    .line 76
    :goto_0
    array-length v0, p1

    if-ge p2, v0, :cond_0

    .line 77
    aget-object v0, p1, p2

    check-cast v0, Lcom/xiaopeng/speech/protocol/node/media/MediaListener;

    invoke-interface {v0}, Lcom/xiaopeng/speech/protocol/node/media/MediaListener;->onPause()V

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected onPlay(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 23
    :try_start_0
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/node/media/MediaNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {p1}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object p1

    .line 24
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 25
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p2, "value"

    .line 26
    invoke-virtual {v0, p2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    .line 28
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_0

    .line 29
    aget-object v1, p1, v0

    check-cast v1, Lcom/xiaopeng/speech/protocol/node/media/MediaListener;

    invoke-interface {v1, p2}, Lcom/xiaopeng/speech/protocol/node/media/MediaListener;->onPlay(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :catch_0
    move-exception p1

    .line 35
    invoke-virtual {p1}, Lorg/json/JSONException;->printStackTrace()V

    :cond_0
    return-void
.end method

.method protected onPlayLoopAll(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 53
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/node/media/MediaNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {p1}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p2, 0x0

    .line 55
    :goto_0
    array-length v0, p1

    if-ge p2, v0, :cond_0

    .line 56
    aget-object v0, p1, p2

    check-cast v0, Lcom/xiaopeng/speech/protocol/node/media/MediaListener;

    const-string v1, "order"

    invoke-interface {v0, v1}, Lcom/xiaopeng/speech/protocol/node/media/MediaListener;->onPlayMode(Ljava/lang/String;)V

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected onPlayLoopRandom(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 63
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/node/media/MediaNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {p1}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p2, 0x0

    .line 65
    :goto_0
    array-length v0, p1

    if-ge p2, v0, :cond_0

    .line 66
    aget-object v0, p1, p2

    check-cast v0, Lcom/xiaopeng/speech/protocol/node/media/MediaListener;

    const-string v1, "random"

    invoke-interface {v0, v1}, Lcom/xiaopeng/speech/protocol/node/media/MediaListener;->onPlayMode(Ljava/lang/String;)V

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected onPlayLoopSingle(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 43
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/node/media/MediaNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {p1}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p2, 0x0

    .line 45
    :goto_0
    array-length v0, p1

    if-ge p2, v0, :cond_0

    .line 46
    aget-object v0, p1, p2

    check-cast v0, Lcom/xiaopeng/speech/protocol/node/media/MediaListener;

    const-string v1, "single"

    invoke-interface {v0, v1}, Lcom/xiaopeng/speech/protocol/node/media/MediaListener;->onPlayMode(Ljava/lang/String;)V

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected onPrev(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 96
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/node/media/MediaNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {p1}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p2, 0x0

    .line 98
    :goto_0
    array-length v0, p1

    if-ge p2, v0, :cond_0

    .line 99
    aget-object v0, p1, p2

    check-cast v0, Lcom/xiaopeng/speech/protocol/node/media/MediaListener;

    invoke-interface {v0}, Lcom/xiaopeng/speech/protocol/node/media/MediaListener;->onPrev()V

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected onResume(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 85
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/node/media/MediaNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {p1}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p2, 0x0

    .line 87
    :goto_0
    array-length v0, p1

    if-ge p2, v0, :cond_0

    .line 88
    aget-object v0, p1, p2

    check-cast v0, Lcom/xiaopeng/speech/protocol/node/media/MediaListener;

    invoke-interface {v0}, Lcom/xiaopeng/speech/protocol/node/media/MediaListener;->onResume()V

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onSettime(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 186
    :try_start_0
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/node/media/MediaNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {p1}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object p1

    .line 187
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 188
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p2, "value"

    .line 189
    invoke-virtual {v0, p2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result p2

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    .line 191
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_0

    .line 192
    aget-object v1, p1, v0

    check-cast v1, Lcom/xiaopeng/speech/protocol/node/media/MediaListener;

    invoke-interface {v1, p2}, Lcom/xiaopeng/speech/protocol/node/media/MediaListener;->onSetTime(I)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :catch_0
    move-exception p1

    .line 198
    invoke-virtual {p1}, Lorg/json/JSONException;->printStackTrace()V

    :cond_0
    return-void
.end method

.method protected onStop(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 118
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/node/media/MediaNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {p1}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p2, 0x0

    .line 120
    :goto_0
    array-length v0, p1

    if-ge p2, v0, :cond_0

    .line 121
    aget-object v0, p1, p2

    check-cast v0, Lcom/xiaopeng/speech/protocol/node/media/MediaListener;

    invoke-interface {v0}, Lcom/xiaopeng/speech/protocol/node/media/MediaListener;->onStop()V

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method
