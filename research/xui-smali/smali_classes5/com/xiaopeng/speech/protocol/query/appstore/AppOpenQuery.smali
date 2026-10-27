.class public Lcom/xiaopeng/speech/protocol/query/appstore/AppOpenQuery;
.super Lcom/xiaopeng/speech/SpeechQuery;
.source "AppOpenQuery.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/xiaopeng/speech/SpeechQuery<",
        "Lcom/xiaopeng/speech/protocol/query/appstore/IAppOpenCaller;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 12
    invoke-direct {p0}, Lcom/xiaopeng/speech/SpeechQuery;-><init>()V

    .line 13
    return-void
.end method


# virtual methods
.method protected getAppOpenStatusSync(Ljava/lang/String;Ljava/lang/String;)I
    .locals 3
    .param p1, "event"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/lang/String;
    .annotation build Lcom/xiaopeng/speech/annotation/QueryAnnotation;
        event = "get.app.open.status.sync"
    .end annotation

    .line 17
    const-string v0, ""

    .line 19
    .local v0, "pkg":Ljava/lang/String;
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 20
    .local v1, "jsonObject":Lorg/json/JSONObject;
    const-string v2, "pkg"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v2

    .line 23
    .end local v1    # "jsonObject":Lorg/json/JSONObject;
    goto :goto_0

    .line 21
    :catch_0
    move-exception v1

    .line 22
    .local v1, "e":Lorg/json/JSONException;
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    .line 24
    .end local v1    # "e":Lorg/json/JSONException;
    :goto_0
    iget-object v1, p0, Lcom/xiaopeng/speech/protocol/query/appstore/AppOpenQuery;->mQueryCaller:Ljava/lang/Object;

    check-cast v1, Lcom/xiaopeng/speech/protocol/query/appstore/IAppOpenCaller;

    invoke-interface {v1, p1, v0}, Lcom/xiaopeng/speech/protocol/query/appstore/IAppOpenCaller;->getAppOpenStatusSync(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    return v1
.end method
