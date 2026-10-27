.class public Lcom/xiaopeng/speech/protocol/query/speech/combo/ComboQuery;
.super Lcom/xiaopeng/speech/SpeechQuery;
.source "ComboQuery.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/xiaopeng/speech/SpeechQuery<",
        "Lcom/xiaopeng/speech/protocol/query/speech/combo/IComboQueryCaller;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 14
    invoke-direct {p0}, Lcom/xiaopeng/speech/SpeechQuery;-><init>()V

    .line 16
    return-void
.end method

.method private getModeFromJson(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "data"    # Ljava/lang/String;

    .line 52
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 53
    const-string v0, ""

    return-object v0

    .line 56
    :cond_0
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 57
    .local v0, "modeJson":Lorg/json/JSONObject;
    const-string v1, "mode"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 58
    const-string v1, "mode"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 60
    :cond_1
    const-string v1, ""
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 61
    .end local v0    # "modeJson":Lorg/json/JSONObject;
    :catch_0
    move-exception v0

    .line 62
    .local v0, "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    .line 63
    const-string v1, ""

    return-object v1
.end method


# virtual methods
.method protected checkEnterUserMode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;
    .annotation build Lcom/xiaopeng/speech/annotation/QueryAnnotation;
        event = "combo.check.user.mode"
    .end annotation

    .line 47
    invoke-direct {p0, p2}, Lcom/xiaopeng/speech/protocol/query/speech/combo/ComboQuery;->getModeFromJson(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 48
    .local v0, "modeType":Ljava/lang/String;
    iget-object v1, p0, Lcom/xiaopeng/speech/protocol/query/speech/combo/ComboQuery;->mQueryCaller:Ljava/lang/Object;

    check-cast v1, Lcom/xiaopeng/speech/protocol/query/speech/combo/IComboQueryCaller;

    invoke-interface {v1, v0}, Lcom/xiaopeng/speech/protocol/query/speech/combo/IComboQueryCaller;->checkEnterUserMode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method protected enterMode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;
    .annotation build Lcom/xiaopeng/speech/annotation/QueryAnnotation;
        event = "combo.enter.user.mode"
    .end annotation

    .line 20
    invoke-direct {p0, p2}, Lcom/xiaopeng/speech/protocol/query/speech/combo/ComboQuery;->getModeFromJson(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 21
    .local v0, "modeType":Ljava/lang/String;
    iget-object v1, p0, Lcom/xiaopeng/speech/protocol/query/speech/combo/ComboQuery;->mQueryCaller:Ljava/lang/Object;

    check-cast v1, Lcom/xiaopeng/speech/protocol/query/speech/combo/IComboQueryCaller;

    invoke-interface {v1, v0}, Lcom/xiaopeng/speech/protocol/query/speech/combo/IComboQueryCaller;->enterUserMode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method protected exitMode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;
    .annotation build Lcom/xiaopeng/speech/annotation/QueryAnnotation;
        event = "combo.exit.user.mode"
    .end annotation

    .line 26
    const/4 v0, -0x1

    .line 27
    .local v0, "sound_location":I
    invoke-static {p2}, Lcom/xiaopeng/speech/protocol/SpeechUtils;->isJson(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, -0x1

    if-eqz v1, :cond_1

    .line 29
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 30
    .local v1, "json":Lorg/json/JSONObject;
    const-string v3, "sound_location"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 31
    const-string v3, "sound_location"

    invoke-virtual {v1, v3, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v3
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v3

    .line 35
    .end local v1    # "json":Lorg/json/JSONObject;
    :cond_0
    goto :goto_0

    .line 33
    :catch_0
    move-exception v1

    .line 34
    .local v1, "e":Lorg/json/JSONException;
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2

    .line 38
    .end local v1    # "e":Lorg/json/JSONException;
    :cond_1
    :goto_0
    invoke-direct {p0, p2}, Lcom/xiaopeng/speech/protocol/query/speech/combo/ComboQuery;->getModeFromJson(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 39
    .local v1, "modeType":Ljava/lang/String;
    if-eq v0, v2, :cond_2

    .line 40
    iget-object v2, p0, Lcom/xiaopeng/speech/protocol/query/speech/combo/ComboQuery;->mQueryCaller:Ljava/lang/Object;

    check-cast v2, Lcom/xiaopeng/speech/protocol/query/speech/combo/IComboQueryCaller;

    invoke-interface {v2, v1, v0}, Lcom/xiaopeng/speech/protocol/query/speech/combo/IComboQueryCaller;->exitUserMode(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 42
    :cond_2
    iget-object v2, p0, Lcom/xiaopeng/speech/protocol/query/speech/combo/ComboQuery;->mQueryCaller:Ljava/lang/Object;

    check-cast v2, Lcom/xiaopeng/speech/protocol/query/speech/combo/IComboQueryCaller;

    invoke-interface {v2, v1}, Lcom/xiaopeng/speech/protocol/query/speech/combo/IComboQueryCaller;->exitUserMode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method protected getCurrentUserMode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;
    .annotation build Lcom/xiaopeng/speech/annotation/QueryAnnotation;
        event = "combo.get.current.user.mode"
    .end annotation

    .line 69
    const/4 v0, -0x1

    .line 70
    .local v0, "displayLocation":I
    invoke-static {p2}, Lcom/xiaopeng/speech/protocol/SpeechUtils;->isJson(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 72
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 73
    .local v1, "json":Lorg/json/JSONObject;
    const-string v2, "display_location"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 74
    const-string v2, "display_location"

    const/4 v3, -0x1

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v2
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v2

    .line 78
    .end local v1    # "json":Lorg/json/JSONObject;
    :cond_0
    goto :goto_0

    .line 76
    :catch_0
    move-exception v1

    .line 77
    .local v1, "e":Lorg/json/JSONException;
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2

    .line 80
    .end local v1    # "e":Lorg/json/JSONException;
    :cond_1
    :goto_0
    iget-object v1, p0, Lcom/xiaopeng/speech/protocol/query/speech/combo/ComboQuery;->mQueryCaller:Ljava/lang/Object;

    check-cast v1, Lcom/xiaopeng/speech/protocol/query/speech/combo/IComboQueryCaller;

    invoke-interface {v1, v0}, Lcom/xiaopeng/speech/protocol/query/speech/combo/IComboQueryCaller;->getCurrentUserModeWithScreen(I)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method protected getCurrentUserModeWithScreen(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;
    .annotation build Lcom/xiaopeng/speech/annotation/QueryAnnotation;
        event = "combo.screen.get.current.user.mode"
    .end annotation

    .line 85
    const/4 v0, -0x1

    .line 86
    .local v0, "display_location":I
    invoke-static {p2}, Lcom/xiaopeng/speech/protocol/SpeechUtils;->isJson(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 88
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 89
    .local v1, "json":Lorg/json/JSONObject;
    const-string v2, "display_location"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 90
    const-string v2, "display_location"

    const/4 v3, -0x1

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v2
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v2

    .line 94
    .end local v1    # "json":Lorg/json/JSONObject;
    :cond_0
    goto :goto_0

    .line 92
    :catch_0
    move-exception v1

    .line 93
    .local v1, "e":Lorg/json/JSONException;
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2

    .line 96
    .end local v1    # "e":Lorg/json/JSONException;
    :cond_1
    :goto_0
    iget-object v1, p0, Lcom/xiaopeng/speech/protocol/query/speech/combo/ComboQuery;->mQueryCaller:Ljava/lang/Object;

    check-cast v1, Lcom/xiaopeng/speech/protocol/query/speech/combo/IComboQueryCaller;

    invoke-interface {v1, v0}, Lcom/xiaopeng/speech/protocol/query/speech/combo/IComboQueryCaller;->getCurrentUserModeWithScreen(I)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method protected guiPagecheckForbidden(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 5
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;
    .annotation build Lcom/xiaopeng/speech/annotation/QueryAnnotation;
        event = "combo.gui.page.checkforbidden"
    .end annotation

    .line 101
    const/4 v0, 0x0

    .line 102
    .local v0, "display_location":I
    const/4 v1, 0x0

    .line 104
    .local v1, "page_id":Ljava/lang/String;
    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 105
    .local v2, "json":Lorg/json/JSONObject;
    const-string v3, "display_location"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v3

    move v0, v3

    .line 106
    const-string v3, "page_id"

    const-string v4, ""

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v1, v3

    .line 110
    .end local v2    # "json":Lorg/json/JSONObject;
    goto :goto_0

    .line 108
    :catch_0
    move-exception v2

    .line 109
    .local v2, "e":Lorg/json/JSONException;
    invoke-virtual {v2}, Lorg/json/JSONException;->printStackTrace()V

    .line 112
    .end local v2    # "e":Lorg/json/JSONException;
    :goto_0
    iget-object v2, p0, Lcom/xiaopeng/speech/protocol/query/speech/combo/ComboQuery;->mQueryCaller:Ljava/lang/Object;

    check-cast v2, Lcom/xiaopeng/speech/protocol/query/speech/combo/IComboQueryCaller;

    invoke-interface {v2, v0, v1}, Lcom/xiaopeng/speech/protocol/query/speech/combo/IComboQueryCaller;->guiPagecheckForbidden(ILjava/lang/String;)Z

    move-result v2

    return v2
.end method
