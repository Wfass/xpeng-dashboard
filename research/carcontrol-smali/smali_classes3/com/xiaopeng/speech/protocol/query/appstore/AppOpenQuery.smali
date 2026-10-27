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

    return-void
.end method


# virtual methods
.method protected getAppOpenStatusSync(Ljava/lang/String;Ljava/lang/String;)I
    .locals 1

    .line 19
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p2, "pkg"

    .line 20
    invoke-virtual {v0, p2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p2

    .line 22
    invoke-virtual {p2}, Lorg/json/JSONException;->printStackTrace()V

    const-string p2, ""

    .line 24
    :goto_0
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/query/appstore/AppOpenQuery;->mQueryCaller:Ljava/lang/Object;

    check-cast v0, Lcom/xiaopeng/speech/protocol/query/appstore/IAppOpenCaller;

    invoke-interface {v0, p1, p2}, Lcom/xiaopeng/speech/protocol/query/appstore/IAppOpenCaller;->getAppOpenStatusSync(Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    return p1
.end method
