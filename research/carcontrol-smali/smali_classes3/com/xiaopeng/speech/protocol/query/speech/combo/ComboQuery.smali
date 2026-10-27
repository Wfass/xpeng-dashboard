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

    return-void
.end method

.method private getModeFromJson(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    const-string v0, "mode"

    .line 52
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const-string v2, ""

    if-eqz v1, :cond_0

    return-object v2

    .line 56
    :cond_0
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 57
    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 58
    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :cond_1
    return-object v2

    :catch_0
    move-exception p1

    .line 62
    invoke-virtual {p1}, Lorg/json/JSONException;->printStackTrace()V

    return-object v2
.end method


# virtual methods
.method protected checkEnterUserMode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 47
    invoke-direct {p0, p2}, Lcom/xiaopeng/speech/protocol/query/speech/combo/ComboQuery;->getModeFromJson(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 48
    iget-object p2, p0, Lcom/xiaopeng/speech/protocol/query/speech/combo/ComboQuery;->mQueryCaller:Ljava/lang/Object;

    check-cast p2, Lcom/xiaopeng/speech/protocol/query/speech/combo/IComboQueryCaller;

    invoke-interface {p2, p1}, Lcom/xiaopeng/speech/protocol/query/speech/combo/IComboQueryCaller;->checkEnterUserMode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method protected enterMode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 20
    invoke-direct {p0, p2}, Lcom/xiaopeng/speech/protocol/query/speech/combo/ComboQuery;->getModeFromJson(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 21
    iget-object p2, p0, Lcom/xiaopeng/speech/protocol/query/speech/combo/ComboQuery;->mQueryCaller:Ljava/lang/Object;

    check-cast p2, Lcom/xiaopeng/speech/protocol/query/speech/combo/IComboQueryCaller;

    invoke-interface {p2, p1}, Lcom/xiaopeng/speech/protocol/query/speech/combo/IComboQueryCaller;->enterUserMode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method protected exitMode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    const-string p1, "sound_location"

    .line 27
    invoke-static {p2}, Lcom/xiaopeng/speech/protocol/SpeechUtils;->isJson(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, -0x1

    if-eqz v0, :cond_0

    .line 29
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 30
    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 31
    invoke-virtual {v0, p1, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result p1
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 34
    new-instance p2, Ljava/lang/RuntimeException;

    invoke-direct {p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p2

    :cond_0
    move p1, v1

    .line 38
    :goto_0
    invoke-direct {p0, p2}, Lcom/xiaopeng/speech/protocol/query/speech/combo/ComboQuery;->getModeFromJson(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    if-eq p1, v1, :cond_1

    .line 40
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/query/speech/combo/ComboQuery;->mQueryCaller:Ljava/lang/Object;

    check-cast v0, Lcom/xiaopeng/speech/protocol/query/speech/combo/IComboQueryCaller;

    invoke-interface {v0, p2, p1}, Lcom/xiaopeng/speech/protocol/query/speech/combo/IComboQueryCaller;->exitUserMode(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 42
    :cond_1
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/query/speech/combo/ComboQuery;->mQueryCaller:Ljava/lang/Object;

    check-cast p1, Lcom/xiaopeng/speech/protocol/query/speech/combo/IComboQueryCaller;

    invoke-interface {p1, p2}, Lcom/xiaopeng/speech/protocol/query/speech/combo/IComboQueryCaller;->exitUserMode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method protected getCurrentUserMode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    const-string p1, "display_location"

    .line 70
    invoke-static {p2}, Lcom/xiaopeng/speech/protocol/SpeechUtils;->isJson(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, -0x1

    if-eqz v0, :cond_0

    .line 72
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 73
    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 74
    invoke-virtual {v0, p1, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result p1
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move v1, p1

    goto :goto_0

    :catch_0
    move-exception p1

    .line 77
    new-instance p2, Ljava/lang/RuntimeException;

    invoke-direct {p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p2

    .line 80
    :cond_0
    :goto_0
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/query/speech/combo/ComboQuery;->mQueryCaller:Ljava/lang/Object;

    check-cast p1, Lcom/xiaopeng/speech/protocol/query/speech/combo/IComboQueryCaller;

    invoke-interface {p1, v1}, Lcom/xiaopeng/speech/protocol/query/speech/combo/IComboQueryCaller;->getCurrentUserModeWithScreen(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method protected getCurrentUserModeWithScreen(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    const-string p1, "display_location"

    .line 86
    invoke-static {p2}, Lcom/xiaopeng/speech/protocol/SpeechUtils;->isJson(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, -0x1

    if-eqz v0, :cond_0

    .line 88
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 89
    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 90
    invoke-virtual {v0, p1, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result p1
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move v1, p1

    goto :goto_0

    :catch_0
    move-exception p1

    .line 93
    new-instance p2, Ljava/lang/RuntimeException;

    invoke-direct {p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p2

    .line 96
    :cond_0
    :goto_0
    iget-object p1, p0, Lcom/xiaopeng/speech/protocol/query/speech/combo/ComboQuery;->mQueryCaller:Ljava/lang/Object;

    check-cast p1, Lcom/xiaopeng/speech/protocol/query/speech/combo/IComboQueryCaller;

    invoke-interface {p1, v1}, Lcom/xiaopeng/speech/protocol/query/speech/combo/IComboQueryCaller;->getCurrentUserModeWithScreen(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method protected guiPagecheckForbidden(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2

    const/4 p1, 0x0

    .line 104
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p2, "display_location"

    .line 105
    invoke-virtual {v0, p2, p1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result p1

    const-string p2, "page_id"

    const-string v1, ""

    .line 106
    invoke-virtual {v0, p2, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p2

    .line 109
    invoke-virtual {p2}, Lorg/json/JSONException;->printStackTrace()V

    const/4 p2, 0x0

    .line 112
    :goto_0
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/query/speech/combo/ComboQuery;->mQueryCaller:Ljava/lang/Object;

    check-cast v0, Lcom/xiaopeng/speech/protocol/query/speech/combo/IComboQueryCaller;

    invoke-interface {v0, p1, p2}, Lcom/xiaopeng/speech/protocol/query/speech/combo/IComboQueryCaller;->guiPagecheckForbidden(ILjava/lang/String;)Z

    move-result p1

    return p1
.end method
