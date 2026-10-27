.class public Lcom/amap/api/services/a/m;
.super Lcom/amap/api/services/a/b;
.source "InputtipsHandler.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/amap/api/services/a/b<",
        "Lcom/amap/api/services/help/InputtipsQuery;",
        "Ljava/util/ArrayList<",
        "Lcom/amap/api/services/help/Tip;",
        ">;>;"
    }
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/amap/api/services/help/InputtipsQuery;)V
    .locals 0

    .line 19
    invoke-direct {p0, p1, p2}, Lcom/amap/api/services/a/b;-><init>(Landroid/content/Context;Ljava/lang/Object;)V

    .line 20
    return-void
.end method


# virtual methods
.method protected synthetic a(Ljava/lang/String;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amap/api/services/core/AMapException;
        }
    .end annotation

    .line 15
    invoke-virtual {p0, p1}, Lcom/amap/api/services/a/m;->d(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p1

    return-object p1
.end method

.method protected d(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList<",
            "Lcom/amap/api/services/help/Tip;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amap/api/services/core/AMapException;
        }
    .end annotation

    .line 24
    nop

    .line 26
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 27
    invoke-static {v0}, Lcom/amap/api/services/a/n;->m(Lorg/json/JSONObject;)Ljava/util/ArrayList;

    move-result-object p1
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 30
    goto :goto_0

    .line 28
    :catch_0
    move-exception p1

    .line 29
    const-string v0, "InputtipsHandler"

    const-string v1, "paseJSON"

    invoke-static {p1, v0, v1}, Lcom/amap/api/services/a/i;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    .line 31
    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method

.method protected e()Ljava/lang/String;
    .locals 3

    .line 41
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 42
    const-string v1, "output=json"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, "&keywords="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v1, p0, Lcom/amap/api/services/a/m;->a:Ljava/lang/Object;

    check-cast v1, Lcom/amap/api/services/help/InputtipsQuery;

    .line 43
    invoke-virtual {v1}, Lcom/amap/api/services/help/InputtipsQuery;->getKeyword()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/amap/api/services/a/m;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 44
    iget-object v1, p0, Lcom/amap/api/services/a/m;->a:Ljava/lang/Object;

    check-cast v1, Lcom/amap/api/services/help/InputtipsQuery;

    invoke-virtual {v1}, Lcom/amap/api/services/help/InputtipsQuery;->getCity()Ljava/lang/String;

    move-result-object v1

    .line 45
    invoke-static {v1}, Lcom/amap/api/services/a/n;->i(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 46
    invoke-virtual {p0, v1}, Lcom/amap/api/services/a/m;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 47
    const-string v2, "&city="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 49
    :cond_0
    iget-object v1, p0, Lcom/amap/api/services/a/m;->a:Ljava/lang/Object;

    check-cast v1, Lcom/amap/api/services/help/InputtipsQuery;

    invoke-virtual {v1}, Lcom/amap/api/services/help/InputtipsQuery;->getType()Ljava/lang/String;

    move-result-object v1

    .line 50
    invoke-static {v1}, Lcom/amap/api/services/a/n;->i(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 51
    invoke-virtual {p0, v1}, Lcom/amap/api/services/a/m;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 52
    const-string v2, "&type="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 54
    :cond_1
    iget-object v1, p0, Lcom/amap/api/services/a/m;->a:Ljava/lang/Object;

    check-cast v1, Lcom/amap/api/services/help/InputtipsQuery;

    invoke-virtual {v1}, Lcom/amap/api/services/help/InputtipsQuery;->getCityLimit()Z

    move-result v1

    .line 55
    if-eqz v1, :cond_2

    .line 56
    const-string v1, "&citylimit=true"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 58
    :cond_2
    const-string v1, "&citylimit=false"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 60
    :goto_0
    const-string v1, "&key="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v1, p0, Lcom/amap/api/services/a/m;->d:Landroid/content/Context;

    invoke-static {v1}, Lcom/amap/api/services/a/av;->f(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 61
    const-string v1, "&language="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-static {}, Lcom/amap/api/services/a/h;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 62
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public g()Ljava/lang/String;
    .locals 2

    .line 36
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/amap/api/services/a/h;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/assistant/inputtips?"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
