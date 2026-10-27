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

    .line 18
    return-void
.end method

.method private replaceAllstr(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p1, "pageUrl"    # Ljava/lang/String;

    .line 79
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 80
    const-string v0, "$"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 81
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 82
    .local v0, "sb":Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 83
    add-int/lit8 v2, v1, 0x1

    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 84
    .local v2, "str":Ljava/lang/String;
    const-string v3, "$"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 85
    const-string v3, "&"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 87
    :cond_0
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 82
    .end local v2    # "str":Ljava/lang/String;
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 90
    .end local v1    # "i":I
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 95
    .end local v0    # "sb":Ljava/lang/StringBuilder;
    :cond_2
    return-object p1
.end method


# virtual methods
.method protected onAiHomepageClose(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;
    .annotation build Lcom/xiaopeng/speech/annotation/SpeechAnnotation;
        event = "command://app.ai.homepage.close"
    .end annotation

    .line 180
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/app/AppNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {v0}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object v0

    .line 181
    .local v0, "listenerList":[Ljava/lang/Object;
    if-eqz v0, :cond_0

    .line 182
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_0

    .line 183
    aget-object v2, v0, v1

    check-cast v2, Lcom/xiaopeng/speech/protocol/node/app/AppListener;

    invoke-interface {v2}, Lcom/xiaopeng/speech/protocol/node/app/AppListener;->onAiHomepageClose()V

    .line 182
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 186
    .end local v1    # "i":I
    :cond_0
    return-void
.end method

.method protected onAiHomepageOpen(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;
    .annotation build Lcom/xiaopeng/speech/annotation/SpeechAnnotation;
        event = "command://app.ai.homepage.open"
    .end annotation

    .line 170
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/app/AppNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {v0}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object v0

    .line 171
    .local v0, "listenerList":[Ljava/lang/Object;
    if-eqz v0, :cond_0

    .line 172
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_0

    .line 173
    aget-object v2, v0, v1

    check-cast v2, Lcom/xiaopeng/speech/protocol/node/app/AppListener;

    invoke-interface {v2}, Lcom/xiaopeng/speech/protocol/node/app/AppListener;->onAiHomepageOpen()V

    .line 172
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 176
    .end local v1    # "i":I
    :cond_0
    return-void
.end method

.method protected onAppActive(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;
    .annotation build Lcom/xiaopeng/speech/annotation/SpeechAnnotation;
        event = "native://app.active"
    .end annotation

    .line 160
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/app/AppNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {v0}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object v0

    .line 161
    .local v0, "listenerList":[Ljava/lang/Object;
    if-eqz v0, :cond_0

    .line 162
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_0

    .line 163
    aget-object v2, v0, v1

    check-cast v2, Lcom/xiaopeng/speech/protocol/node/app/AppListener;

    invoke-interface {v2}, Lcom/xiaopeng/speech/protocol/node/app/AppListener;->onAppActive()V

    .line 162
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 166
    .end local v1    # "i":I
    :cond_0
    return-void
.end method

.method protected onAppForeground(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;
    .annotation build Lcom/xiaopeng/speech/annotation/SpeechAnnotation;
        event = "native://app.is.foreground"
    .end annotation

    .line 243
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/app/AppNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {v0}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object v0

    .line 244
    .local v0, "listenerList":[Ljava/lang/Object;
    const-string v1, ""

    .line 246
    .local v1, "pkg":Ljava/lang/String;
    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 247
    .local v2, "jsonObject":Lorg/json/JSONObject;
    const-string v3, "pkg"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v1, v3

    .line 250
    .end local v2    # "jsonObject":Lorg/json/JSONObject;
    goto :goto_0

    .line 248
    :catch_0
    move-exception v2

    .line 249
    .local v2, "e":Lorg/json/JSONException;
    invoke-virtual {v2}, Lorg/json/JSONException;->printStackTrace()V

    .line 251
    .end local v2    # "e":Lorg/json/JSONException;
    :goto_0
    if-eqz v0, :cond_0

    .line 252
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    array-length v3, v0

    if-ge v2, v3, :cond_0

    .line 253
    aget-object v3, v0, v2

    check-cast v3, Lcom/xiaopeng/speech/protocol/node/app/AppListener;

    invoke-interface {v3, p1, v1}, Lcom/xiaopeng/speech/protocol/node/app/AppListener;->onAppForeground(Ljava/lang/String;Ljava/lang/String;)V

    .line 252
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 256
    .end local v2    # "i":I
    :cond_0
    return-void
.end method

.method protected onAppLauncherExit(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;
    .annotation build Lcom/xiaopeng/speech/annotation/SpeechAnnotation;
        event = "command://app.launcher.exit"
    .end annotation

    .line 190
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/app/AppNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {v0}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object v0

    .line 191
    .local v0, "listenerList":[Ljava/lang/Object;
    if-eqz v0, :cond_0

    .line 192
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_0

    .line 193
    aget-object v2, v0, v1

    check-cast v2, Lcom/xiaopeng/speech/protocol/node/app/AppListener;

    invoke-interface {v2}, Lcom/xiaopeng/speech/protocol/node/app/AppListener;->onAppLauncherExit()V

    .line 192
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 196
    .end local v1    # "i":I
    :cond_0
    return-void
.end method

.method protected onAppOpen(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;
    .annotation build Lcom/xiaopeng/speech/annotation/SpeechAnnotation;
        event = "command://app.open"
    .end annotation

    .line 40
    const-string v0, ""

    .line 42
    .local v0, "appName":Ljava/lang/String;
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 43
    .local v1, "jsonObject":Lorg/json/JSONObject;
    const-string v2, "appName"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v2

    .line 46
    .end local v1    # "jsonObject":Lorg/json/JSONObject;
    goto :goto_0

    .line 44
    :catch_0
    move-exception v1

    .line 45
    .local v1, "e":Lorg/json/JSONException;
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    .line 47
    .end local v1    # "e":Lorg/json/JSONException;
    :goto_0
    iget-object v1, p0, Lcom/xiaopeng/speech/protocol/node/app/AppNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {v1}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object v1

    .line 48
    .local v1, "listenerList":[Ljava/lang/Object;
    if-eqz v1, :cond_0

    .line 49
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    array-length v3, v1

    if-ge v2, v3, :cond_0

    .line 50
    aget-object v3, v1, v2

    check-cast v3, Lcom/xiaopeng/speech/protocol/node/app/AppListener;

    invoke-interface {v3, p1, v0}, Lcom/xiaopeng/speech/protocol/node/app/AppListener;->onAppOpen(Ljava/lang/String;Ljava/lang/String;)V

    .line 49
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 53
    .end local v2    # "i":I
    :cond_0
    return-void
.end method

.method protected onAppPageOpen(Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;
    .annotation build Lcom/xiaopeng/speech/annotation/SpeechAnnotation;
        event = "command://app.page.open"
    .end annotation

    .line 56
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/app/AppNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {v0}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object v0

    .line 57
    .local v0, "listenerList":[Ljava/lang/Object;
    const-string v1, ""

    .line 58
    .local v1, "pageUrl":Ljava/lang/String;
    const/4 v2, 0x0

    .line 60
    .local v2, "jsonObject":Lorg/json/JSONObject;
    const/4 v3, 0x0

    :try_start_0
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    move-object v2, v4

    .line 61
    const-string v4, "pageUrl"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    move-object v1, v4

    .line 62
    const-string v4, "isDui"

    invoke-virtual {v2, v4, v3}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 63
    invoke-direct {p0, v1}, Lcom/xiaopeng/speech/protocol/node/app/AppNode;->replaceAllstr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "utf-8"

    invoke-static {v4, v5}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    move-object v1, v4

    .line 65
    :cond_0
    const-string v4, "pageUrl"

    invoke-virtual {v2, v4, v1}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 68
    :catch_0
    move-exception v4

    .line 69
    .local v4, "e":Ljava/io/UnsupportedEncodingException;
    invoke-virtual {v4}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    .end local v4    # "e":Ljava/io/UnsupportedEncodingException;
    goto :goto_1

    .line 66
    :catch_1
    move-exception v4

    .line 67
    .local v4, "e":Lorg/json/JSONException;
    invoke-virtual {v4}, Lorg/json/JSONException;->printStackTrace()V

    .line 70
    .end local v4    # "e":Lorg/json/JSONException;
    :goto_0
    nop

    .line 71
    :goto_1
    if-eqz v0, :cond_1

    .line 72
    nop

    .local v3, "i":I
    :goto_2
    array-length v4, v0

    if-ge v3, v4, :cond_1

    .line 73
    aget-object v4, v0, v3

    check-cast v4, Lcom/xiaopeng/speech/protocol/node/app/AppListener;

    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Lcom/xiaopeng/speech/protocol/node/app/AppListener;->onAppPageOpen(Ljava/lang/String;)V

    .line 72
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 76
    .end local v3    # "i":I
    :cond_1
    return-void
.end method

.method protected onAppStoreOpen(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;
    .annotation build Lcom/xiaopeng/speech/annotation/SpeechAnnotation;
        event = "command://appstore.open"
    .end annotation

    .line 110
    const-string v0, ""

    .line 112
    .local v0, "appName":Ljava/lang/String;
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 113
    .local v1, "jsonObject":Lorg/json/JSONObject;
    const-string v2, "appName"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v2

    .line 116
    .end local v1    # "jsonObject":Lorg/json/JSONObject;
    goto :goto_0

    .line 114
    :catch_0
    move-exception v1

    .line 115
    .local v1, "e":Lorg/json/JSONException;
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    .line 117
    .end local v1    # "e":Lorg/json/JSONException;
    :goto_0
    iget-object v1, p0, Lcom/xiaopeng/speech/protocol/node/app/AppNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {v1}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object v1

    .line 118
    .local v1, "listenerList":[Ljava/lang/Object;
    if-eqz v1, :cond_0

    .line 119
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    array-length v3, v1

    if-ge v2, v3, :cond_0

    .line 120
    aget-object v3, v1, v2

    check-cast v3, Lcom/xiaopeng/speech/protocol/node/app/AppListener;

    invoke-interface {v3, p1, v0}, Lcom/xiaopeng/speech/protocol/node/app/AppListener;->onAppStoreOpen(Ljava/lang/String;Ljava/lang/String;)V

    .line 119
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 123
    .end local v2    # "i":I
    :cond_0
    return-void
.end method

.method protected onDebugOpen(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;
    .annotation build Lcom/xiaopeng/speech/annotation/SpeechAnnotation;
        event = "command://system.debug.open"
    .end annotation

    .line 150
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/app/AppNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {v0}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object v0

    .line 151
    .local v0, "listenerList":[Ljava/lang/Object;
    if-eqz v0, :cond_0

    .line 152
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_0

    .line 153
    aget-object v2, v0, v1

    check-cast v2, Lcom/xiaopeng/speech/protocol/node/app/AppListener;

    invoke-interface {v2}, Lcom/xiaopeng/speech/protocol/node/app/AppListener;->onDebugOpen()V

    .line 152
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 156
    .end local v1    # "i":I
    :cond_0
    return-void
.end method

.method protected onGuiSpeechDebugPage(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;
    .annotation build Lcom/xiaopeng/speech/annotation/SpeechAnnotation;
        event = "command://gui.carspeech.debug.open"
    .end annotation

    .line 221
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/app/AppNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {v0}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object v0

    .line 223
    .local v0, "listenerList":[Ljava/lang/Object;
    if-eqz v0, :cond_0

    .line 224
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_0

    .line 225
    aget-object v2, v0, v1

    check-cast v2, Lcom/xiaopeng/speech/protocol/node/app/AppListener;

    invoke-interface {v2}, Lcom/xiaopeng/speech/protocol/node/app/AppListener;->onGuiSpeechDebugPage()V

    .line 224
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 228
    .end local v1    # "i":I
    :cond_0
    return-void
.end method

.method protected onKeyeventBack(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;
    .annotation build Lcom/xiaopeng/speech/annotation/SpeechAnnotation;
        event = "command://system.keyevent.back"
    .end annotation

    .line 100
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/app/AppNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {v0}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object v0

    .line 101
    .local v0, "listenerList":[Ljava/lang/Object;
    if-eqz v0, :cond_0

    .line 102
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_0

    .line 103
    aget-object v2, v0, v1

    check-cast v2, Lcom/xiaopeng/speech/protocol/node/app/AppListener;

    invoke-interface {v2}, Lcom/xiaopeng/speech/protocol/node/app/AppListener;->onKeyeventBack()V

    .line 102
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 106
    .end local v1    # "i":I
    :cond_0
    return-void
.end method

.method protected onOpenYoukuSearch(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;
    .annotation build Lcom/xiaopeng/speech/annotation/SpeechAnnotation;
        event = "command://youku.search.result"
    .end annotation

    .line 233
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/app/AppNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {v0}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object v0

    .line 234
    .local v0, "listenerList":[Ljava/lang/Object;
    if-eqz v0, :cond_0

    .line 235
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_0

    .line 236
    aget-object v2, v0, v1

    check-cast v2, Lcom/xiaopeng/speech/protocol/node/app/AppListener;

    invoke-interface {v2, p2}, Lcom/xiaopeng/speech/protocol/node/app/AppListener;->onOpenYoukuSearch(Ljava/lang/String;)V

    .line 235
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 239
    .end local v1    # "i":I
    :cond_0
    return-void
.end method

.method protected onQuery(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;
    .annotation build Lcom/xiaopeng/speech/annotation/SpeechAnnotation;
        event = "native://app.query"
    .end annotation

    .line 23
    const-string v0, ""

    .line 25
    .local v0, "appName":Ljava/lang/String;
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 26
    .local v1, "jsonObject":Lorg/json/JSONObject;
    const-string v2, "appName"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v2

    .line 29
    .end local v1    # "jsonObject":Lorg/json/JSONObject;
    goto :goto_0

    .line 27
    :catch_0
    move-exception v1

    .line 28
    .local v1, "e":Lorg/json/JSONException;
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    .line 30
    .end local v1    # "e":Lorg/json/JSONException;
    :goto_0
    iget-object v1, p0, Lcom/xiaopeng/speech/protocol/node/app/AppNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {v1}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object v1

    .line 31
    .local v1, "listenerList":[Ljava/lang/Object;
    if-eqz v1, :cond_0

    .line 32
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    array-length v3, v1

    if-ge v2, v3, :cond_0

    .line 33
    aget-object v3, v1, v2

    check-cast v3, Lcom/xiaopeng/speech/protocol/node/app/AppListener;

    invoke-interface {v3, p1, v0}, Lcom/xiaopeng/speech/protocol/node/app/AppListener;->onQuery(Ljava/lang/String;Ljava/lang/String;)V

    .line 32
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 36
    .end local v2    # "i":I
    :cond_0
    return-void
.end method

.method protected onStartPage(Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;
    .annotation build Lcom/xiaopeng/speech/annotation/SpeechAnnotation;
        event = "command://start.page"
    .end annotation

    .line 200
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/node/app/AppNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {v0}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object v0

    .line 201
    .local v0, "listenerList":[Ljava/lang/Object;
    const-string v1, ""

    .line 202
    .local v1, "packageName":Ljava/lang/String;
    const-string v2, ""

    .line 203
    .local v2, "action":Ljava/lang/String;
    const-string v3, ""

    .line 205
    .local v3, "extraData":Ljava/lang/String;
    :try_start_0
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 206
    .local v4, "jsonObject":Lorg/json/JSONObject;
    const-string v5, "packageName"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    move-object v1, v5

    .line 207
    const-string v5, "action"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    move-object v2, v5

    .line 208
    const-string v5, "extraData"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v3, v5

    .line 211
    .end local v4    # "jsonObject":Lorg/json/JSONObject;
    goto :goto_0

    .line 209
    :catch_0
    move-exception v4

    .line 210
    .local v4, "e":Lorg/json/JSONException;
    invoke-virtual {v4}, Lorg/json/JSONException;->printStackTrace()V

    .line 212
    .end local v4    # "e":Lorg/json/JSONException;
    :goto_0
    if-eqz v0, :cond_0

    .line 213
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_1
    array-length v5, v0

    if-ge v4, v5, :cond_0

    .line 214
    aget-object v5, v0, v4

    check-cast v5, Lcom/xiaopeng/speech/protocol/node/app/AppListener;

    invoke-interface {v5, v1, v2, v3}, Lcom/xiaopeng/speech/protocol/node/app/AppListener;->onStartPage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 213
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 217
    .end local v4    # "i":I
    :cond_0
    return-void
.end method

.method protected onTriggerIntent(Ljava/lang/String;Ljava/lang/String;)V
    .locals 7
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;
    .annotation build Lcom/xiaopeng/speech/annotation/SpeechAnnotation;
        event = "command://trigger.intent"
    .end annotation

    .line 127
    const-string v0, ""

    .line 128
    .local v0, "skill":Ljava/lang/String;
    const-string v1, ""

    .line 129
    .local v1, "task":Ljava/lang/String;
    const-string v2, ""

    .line 130
    .local v2, "intent":Ljava/lang/String;
    const-string v3, ""

    .line 132
    .local v3, "slots":Ljava/lang/String;
    :try_start_0
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 133
    .local v4, "jsonObject":Lorg/json/JSONObject;
    const-string v5, "skill"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    move-object v0, v5

    .line 134
    const-string v5, "task"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    move-object v1, v5

    .line 135
    const-string v5, "intent"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    move-object v2, v5

    .line 136
    const-string v5, "slots"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v3, v5

    .line 139
    .end local v4    # "jsonObject":Lorg/json/JSONObject;
    goto :goto_0

    .line 137
    :catch_0
    move-exception v4

    .line 138
    .local v4, "e":Lorg/json/JSONException;
    invoke-virtual {v4}, Lorg/json/JSONException;->printStackTrace()V

    .line 140
    .end local v4    # "e":Lorg/json/JSONException;
    :goto_0
    iget-object v4, p0, Lcom/xiaopeng/speech/protocol/node/app/AppNode;->mListenerList:Lcom/xiaopeng/speech/common/util/SimpleCallbackList;

    invoke-virtual {v4}, Lcom/xiaopeng/speech/common/util/SimpleCallbackList;->collectCallbacks()[Ljava/lang/Object;

    move-result-object v4

    .line 141
    .local v4, "listenerList":[Ljava/lang/Object;
    if-eqz v4, :cond_0

    .line 142
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_1
    array-length v6, v4

    if-ge v5, v6, :cond_0

    .line 143
    aget-object v6, v4, v5

    check-cast v6, Lcom/xiaopeng/speech/protocol/node/app/AppListener;

    invoke-interface {v6, v0, v1, v2, v3}, Lcom/xiaopeng/speech/protocol/node/app/AppListener;->onTriggerIntent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 142
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 146
    .end local v5    # "i":I
    :cond_0
    return-void
.end method
