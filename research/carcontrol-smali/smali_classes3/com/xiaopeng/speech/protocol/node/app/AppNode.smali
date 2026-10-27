.class public Lcom/xiaopeng/speech/protocol/node/app/AppNode;
.super Lcom/xiaopeng/speech/SpeechNode;
.source "AppNode.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/xiaopeng/speech/SpeechNode<",
        "Lcom/xiaopeng/speech/protocol/node/app/AppListener;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 17
    invoke-direct {p0}, Lcom/xiaopeng/speech/SpeechNode;-><init>()V

    return-void
.end method

.method private replaceAllstr(Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    .line 79
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "$"

    .line 80
    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 81
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v2, 0x0

    .line 82
    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v2, v3, :cond_1

    add-int/lit8 v3, v2, 0x1

    .line 83
    invoke-virtual {p1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 84
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const-string v2, "&"

    .line 85
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 87
    :cond_0
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_1
    move v2, v3

    goto :goto_0

    .line 90
    :cond_1
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :cond_2
    return-object p1
.end method


# virtual methods
.method protected onAiHomepageClose(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 180
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/node/app/AppNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {p1}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p2, 0x0

    .line 182
    :goto_0
    array-length v0, p1

    if-ge p2, v0, :cond_0

    .line 183
    aget-object v0, p1, p2

    check-cast v0, Lcom/xiaopeng/speech/protocol/node/app/AppListener;

    invoke-interface {v0}, Lcom/xiaopeng/speech/protocol/node/app/AppListener;->onAiHomepageClose()V

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected onAiHomepageOpen(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 170
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/node/app/AppNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {p1}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p2, 0x0

    .line 172
    :goto_0
    array-length v0, p1

    if-ge p2, v0, :cond_0

    .line 173
    aget-object v0, p1, p2

    check-cast v0, Lcom/xiaopeng/speech/protocol/node/app/AppListener;

    invoke-interface {v0}, Lcom/xiaopeng/speech/protocol/node/app/AppListener;->onAiHomepageOpen()V

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected onAppActive(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 160
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/node/app/AppNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {p1}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p2, 0x0

    .line 162
    :goto_0
    array-length v0, p1

    if-ge p2, v0, :cond_0

    .line 163
    aget-object v0, p1, p2

    check-cast v0, Lcom/xiaopeng/speech/protocol/node/app/AppListener;

    invoke-interface {v0}, Lcom/xiaopeng/speech/protocol/node/app/AppListener;->onAppActive()V

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected onAppForeground(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .line 243
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/app/AppNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {v0}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object v0

    .line 246
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p2, "pkg"

    .line 247
    invoke-virtual {v1, p2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p2

    .line 249
    invoke-virtual {p2}, Lorg/json/JSONException;->printStackTrace()V

    const-string p2, ""

    :goto_0
    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 252
    :goto_1
    array-length v2, v0

    if-ge v1, v2, :cond_0

    .line 253
    aget-object v2, v0, v1

    check-cast v2, Lcom/xiaopeng/speech/protocol/node/app/AppListener;

    invoke-interface {v2, p1, p2}, Lcom/xiaopeng/speech/protocol/node/app/AppListener;->onAppForeground(Ljava/lang/String;Ljava/lang/String;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_0
    return-void
.end method

.method protected onAppLauncherExit(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 190
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/node/app/AppNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {p1}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p2, 0x0

    .line 192
    :goto_0
    array-length v0, p1

    if-ge p2, v0, :cond_0

    .line 193
    aget-object v0, p1, p2

    check-cast v0, Lcom/xiaopeng/speech/protocol/node/app/AppListener;

    invoke-interface {v0}, Lcom/xiaopeng/speech/protocol/node/app/AppListener;->onAppLauncherExit()V

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected onAppOpen(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .line 42
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p2, "appName"

    .line 43
    invoke-virtual {v0, p2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p2

    .line 45
    invoke-virtual {p2}, Lorg/json/JSONException;->printStackTrace()V

    const-string p2, ""

    .line 47
    :goto_0
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/app/AppNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {v0}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 49
    :goto_1
    array-length v2, v0

    if-ge v1, v2, :cond_0

    .line 50
    aget-object v2, v0, v1

    check-cast v2, Lcom/xiaopeng/speech/protocol/node/app/AppListener;

    invoke-interface {v2, p1, p2}, Lcom/xiaopeng/speech/protocol/node/app/AppListener;->onAppOpen(Ljava/lang/String;Ljava/lang/String;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_0
    return-void
.end method

.method protected onAppPageOpen(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    const-string p1, "pageUrl"

    .line 56
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/app/AppNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {v0}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 60
    :try_start_0
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_2

    .line 61
    :try_start_1
    invoke-virtual {v3, p1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    const-string v2, "isDui"

    .line 62
    invoke-virtual {v3, v2, v1}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 63
    invoke-direct {p0, p2}, Lcom/xiaopeng/speech/protocol/node/app/AppNode;->replaceAllstr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    const-string v2, "utf-8"

    invoke-static {p2, v2}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 65
    :cond_0
    invoke-virtual {v3, p1, p2}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_3

    :catch_0
    move-exception p1

    move-object v2, v3

    goto :goto_0

    :catch_1
    move-exception p1

    move-object v2, v3

    goto :goto_1

    :catch_2
    move-exception p1

    .line 69
    :goto_0
    invoke-virtual {p1}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    goto :goto_2

    :catch_3
    move-exception p1

    .line 67
    :goto_1
    invoke-virtual {p1}, Lorg/json/JSONException;->printStackTrace()V

    :goto_2
    move-object v3, v2

    :goto_3
    if-eqz v0, :cond_1

    .line 72
    :goto_4
    array-length p1, v0

    if-ge v1, p1, :cond_1

    .line 73
    aget-object p1, v0, v1

    check-cast p1, Lcom/xiaopeng/speech/protocol/node/app/AppListener;

    invoke-virtual {v3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, p2}, Lcom/xiaopeng/speech/protocol/node/app/AppListener;->onAppPageOpen(Ljava/lang/String;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    :cond_1
    return-void
.end method

.method protected onAppStoreOpen(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .line 112
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p2, "appName"

    .line 113
    invoke-virtual {v0, p2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p2

    .line 115
    invoke-virtual {p2}, Lorg/json/JSONException;->printStackTrace()V

    const-string p2, ""

    .line 117
    :goto_0
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/app/AppNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {v0}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 119
    :goto_1
    array-length v2, v0

    if-ge v1, v2, :cond_0

    .line 120
    aget-object v2, v0, v1

    check-cast v2, Lcom/xiaopeng/speech/protocol/node/app/AppListener;

    invoke-interface {v2, p1, p2}, Lcom/xiaopeng/speech/protocol/node/app/AppListener;->onAppStoreOpen(Ljava/lang/String;Ljava/lang/String;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_0
    return-void
.end method

.method protected onDebugOpen(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 150
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/node/app/AppNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {p1}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p2, 0x0

    .line 152
    :goto_0
    array-length v0, p1

    if-ge p2, v0, :cond_0

    .line 153
    aget-object v0, p1, p2

    check-cast v0, Lcom/xiaopeng/speech/protocol/node/app/AppListener;

    invoke-interface {v0}, Lcom/xiaopeng/speech/protocol/node/app/AppListener;->onDebugOpen()V

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected onGuiSpeechDebugPage(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 221
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/node/app/AppNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {p1}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p2, 0x0

    .line 224
    :goto_0
    array-length v0, p1

    if-ge p2, v0, :cond_0

    .line 225
    aget-object v0, p1, p2

    check-cast v0, Lcom/xiaopeng/speech/protocol/node/app/AppListener;

    invoke-interface {v0}, Lcom/xiaopeng/speech/protocol/node/app/AppListener;->onGuiSpeechDebugPage()V

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected onKeyeventBack(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 100
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/node/app/AppNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {p1}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p2, 0x0

    .line 102
    :goto_0
    array-length v0, p1

    if-ge p2, v0, :cond_0

    .line 103
    aget-object v0, p1, p2

    check-cast v0, Lcom/xiaopeng/speech/protocol/node/app/AppListener;

    invoke-interface {v0}, Lcom/xiaopeng/speech/protocol/node/app/AppListener;->onKeyeventBack()V

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected onOpenYoukuSearch(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 233
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/node/app/AppNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {p1}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    .line 235
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_0

    .line 236
    aget-object v1, p1, v0

    check-cast v1, Lcom/xiaopeng/speech/protocol/node/app/AppListener;

    invoke-interface {v1, p2}, Lcom/xiaopeng/speech/protocol/node/app/AppListener;->onOpenYoukuSearch(Ljava/lang/String;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected onQuery(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .line 25
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p2, "appName"

    .line 26
    invoke-virtual {v0, p2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p2

    .line 28
    invoke-virtual {p2}, Lorg/json/JSONException;->printStackTrace()V

    const-string p2, ""

    .line 30
    :goto_0
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/app/AppNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {v0}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 32
    :goto_1
    array-length v2, v0

    if-ge v1, v2, :cond_0

    .line 33
    aget-object v2, v0, v1

    check-cast v2, Lcom/xiaopeng/speech/protocol/node/app/AppListener;

    invoke-interface {v2, p1, p2}, Lcom/xiaopeng/speech/protocol/node/app/AppListener;->onQuery(Ljava/lang/String;Ljava/lang/String;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_0
    return-void
.end method

.method protected onStartPage(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    const-string p1, ""

    .line 200
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/app/AppNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {v0}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object v0

    .line 205
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p2, "packageName"

    .line 206
    invoke-virtual {v1, p2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_2

    :try_start_1
    const-string v2, "action"

    .line 207
    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    :try_start_2
    const-string v3, "extraData"

    .line 208
    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_1

    :catch_0
    move-exception v1

    goto :goto_0

    :catch_1
    move-exception v1

    move-object v2, p1

    goto :goto_0

    :catch_2
    move-exception v1

    move-object p2, p1

    move-object v2, p2

    .line 210
    :goto_0
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    :goto_1
    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 213
    :goto_2
    array-length v3, v0

    if-ge v1, v3, :cond_0

    .line 214
    aget-object v3, v0, v1

    check-cast v3, Lcom/xiaopeng/speech/protocol/node/app/AppListener;

    invoke-interface {v3, p2, v2, p1}, Lcom/xiaopeng/speech/protocol/node/app/AppListener;->onStartPage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_0
    return-void
.end method

.method protected onTriggerIntent(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5

    const-string p1, ""

    .line 132
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p2, "skill"

    .line 133
    invoke-virtual {v0, p2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_3

    :try_start_1
    const-string v1, "task"

    .line 134
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_2

    :try_start_2
    const-string v2, "intent"

    .line 135
    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_1

    :try_start_3
    const-string v3, "slots"

    .line 136
    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1
    :try_end_3
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_2

    :catch_0
    move-exception v0

    goto :goto_1

    :catch_1
    move-exception v0

    move-object v2, p1

    goto :goto_1

    :catch_2
    move-exception v0

    move-object v1, p1

    goto :goto_0

    :catch_3
    move-exception v0

    move-object p2, p1

    move-object v1, p2

    :goto_0
    move-object v2, v1

    .line 138
    :goto_1
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    .line 140
    :goto_2
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/app/AppNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {v0}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v3, 0x0

    .line 142
    :goto_3
    array-length v4, v0

    if-ge v3, v4, :cond_0

    .line 143
    aget-object v4, v0, v3

    check-cast v4, Lcom/xiaopeng/speech/protocol/node/app/AppListener;

    invoke-interface {v4, p2, v1, v2, p1}, Lcom/xiaopeng/speech/protocol/node/app/AppListener;->onTriggerIntent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    :cond_0
    return-void
.end method
