.class public Lcom/xiaopeng/speech/protocol/query/appstore/AppOpenQuery;
.super Lbuu;
.source "AppOpenQuery.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lbuu<",
        "Lcom/xiaopeng/speech/protocol/query/appstore/b;",
        ">;"
    }
.end annotation


# virtual methods
.method protected b(Ljava/lang/String;Ljava/lang/String;)I
    .locals 1
    .annotation build Lcom/xiaopeng/speech/annotation/QueryAnnotation;
    .end annotation

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
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/query/appstore/AppOpenQuery;->b:Ljava/lang/Object;

    check-cast v0, Lcom/xiaopeng/speech/protocol/query/appstore/b;

    invoke-interface {v0, p1, p2}, Lcom/xiaopeng/speech/protocol/query/appstore/b;->a(Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    return p1
.end method
