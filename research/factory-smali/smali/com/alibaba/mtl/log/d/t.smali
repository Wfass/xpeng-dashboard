.class public Lcom/alibaba/mtl/log/d/t;
.super Ljava/lang/Object;
.source "UTAdapter.java"


# direct methods
.method public static send(Ljava/util/Map;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 10
    .local p0, "args":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :try_start_0
    const-string v0, "com.ut.mini.UTAnalytics"

    const-string v1, "getInstance"

    invoke-static {v0, v1}, Lcom/alibaba/mtl/log/d/o;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 11
    if-eqz v0, :cond_0

    .line 12
    const-string v1, "getDefaultTracker"

    invoke-static {v0, v1}, Lcom/alibaba/mtl/log/d/o;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 13
    if-eqz v0, :cond_0

    .line 14
    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/Object;

    .line 15
    const/4 v3, 0x0

    aput-object p0, v2, v3

    .line 16
    const-string v4, "send"

    new-array v1, v1, [Ljava/lang/Class;

    const-class v5, Ljava/util/Map;

    aput-object v5, v1, v3

    invoke-static {v0, v4, v2, v1}, Lcom/alibaba/mtl/log/d/o;->a(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;[Ljava/lang/Class;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 20
    :cond_0
    goto :goto_0

    .line 19
    :catch_0
    move-exception v0

    .line 22
    :goto_0
    return-void
.end method
