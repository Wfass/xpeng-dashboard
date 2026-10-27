.class public Lcom/amap/api/services/a/bq;
.super Ljava/lang/Object;
.source "ConfigableConst.java"


# static fields
.field public static final a:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 43
    const-string v0, "com.amap.api.services"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/amap/api/services/a/bq;->a:[Ljava/lang/String;

    return-void
.end method

.method public static a()Ljava/lang/String;
    .locals 2

    .line 53
    invoke-static {}, Lcom/amap/api/services/core/a;->bH()Lcom/amap/api/services/core/a;

    move-result-object v0

    .line 54
    invoke-virtual {v0}, Lcom/amap/api/services/core/a;->getProtocol()I

    move-result v0

    .line 55
    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 56
    const-string v0, "http://restapi.amap.com/v3"

    return-object v0

    .line 58
    :cond_0
    const-string v0, "https://restapi.amap.com/v3"

    return-object v0
.end method

.method public static c()Ljava/lang/String;
    .locals 1

    .line 73
    invoke-static {}, Lcom/amap/api/services/core/a;->bH()Lcom/amap/api/services/core/a;

    move-result-object v0

    .line 74
    invoke-virtual {v0}, Lcom/amap/api/services/core/a;->getLanguage()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static l(Z)Lcom/amap/api/services/a/l;
    .locals 5

    .line 79
    const-string v0, "getSDKInfo"

    .line 80
    nop

    .line 82
    :try_start_0
    new-instance v1, Lcom/amap/api/services/a/l$a;

    const-string v2, "sea"

    const-string v3, "3.5.0"

    const-string v4, "AMAP SDK Android Search 3.5.0"

    invoke-direct {v1, v2, v3, v4}, Lcom/amap/api/services/a/l$a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sget-object v2, Lcom/amap/api/services/a/bq;->a:[Ljava/lang/String;

    .line 83
    invoke-virtual {v1, v2}, Lcom/amap/api/services/a/l$a;->b([Ljava/lang/String;)Lcom/amap/api/services/a/l$a;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/amap/api/services/a/l$a;->h(Z)Lcom/amap/api/services/a/l$a;

    move-result-object p0

    invoke-virtual {p0}, Lcom/amap/api/services/a/l$a;->bm()Lcom/amap/api/services/a/l;

    move-result-object p0
    :try_end_0
    .catch Lcom/amap/api/services/a/au; {:try_start_0 .. :try_end_0} :catch_0

    .line 86
    goto :goto_0

    .line 84
    :catch_0
    move-exception p0

    .line 85
    const-string v1, "ConfigableConst"

    invoke-static {p0, v1, v0}, Lcom/amap/api/services/a/br;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    .line 87
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method
