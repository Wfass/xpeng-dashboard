.class public Lcom/amap/api/services/a/bz;
.super Ljava/lang/Object;
.source "SDKDBOperation.java"


# instance fields
.field private a:Lcom/amap/api/services/a/bp;

.field private b:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;Z)V
    .locals 0

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput-object p1, p0, Lcom/amap/api/services/a/bz;->b:Landroid/content/Context;

    .line 17
    iget-object p1, p0, Lcom/amap/api/services/a/bz;->b:Landroid/content/Context;

    invoke-direct {p0, p1, p2}, Lcom/amap/api/services/a/bz;->a(Landroid/content/Context;Z)Lcom/amap/api/services/a/bp;

    move-result-object p1

    iput-object p1, p0, Lcom/amap/api/services/a/bz;->a:Lcom/amap/api/services/a/bp;

    .line 18
    return-void
.end method

.method private a(Landroid/content/Context;Z)Lcom/amap/api/services/a/bp;
    .locals 2

    .line 22
    nop

    .line 26
    :try_start_0
    new-instance v0, Lcom/amap/api/services/a/bp;

    const-class v1, Lcom/amap/api/services/a/bw;

    invoke-static {v1}, Lcom/amap/api/services/a/bp;->a(Ljava/lang/Class;)Lcom/amap/api/services/a/bo;

    move-result-object v1

    invoke-direct {v0, p1, v1}, Lcom/amap/api/services/a/bp;-><init>(Landroid/content/Context;Lcom/amap/api/services/a/bo;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 33
    goto :goto_1

    .line 27
    :catch_0
    move-exception p1

    .line 28
    if-nez p2, :cond_0

    .line 29
    const-string p2, "SDKDB"

    const-string v0, "getDB"

    invoke-static {p1, p2, v0}, Lcom/amap/api/services/a/bg;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 31
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 34
    :goto_0
    const/4 v0, 0x0

    :goto_1
    return-object v0
.end method


# virtual methods
.method public a()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/amap/api/services/a/bd;",
            ">;"
        }
    .end annotation

    .line 67
    nop

    .line 70
    :try_start_0
    invoke-static {}, Lcom/amap/api/services/a/bd;->e()Ljava/lang/String;

    move-result-object v0

    .line 71
    iget-object v1, p0, Lcom/amap/api/services/a/bz;->a:Lcom/amap/api/services/a/bp;

    const-class v2, Lcom/amap/api/services/a/bd;

    const/4 v3, 0x1

    invoke-virtual {v1, v0, v2, v3}, Lcom/amap/api/services/a/bp;->a(Ljava/lang/String;Ljava/lang/Class;Z)Ljava/util/List;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 74
    goto :goto_0

    .line 72
    :catch_0
    move-exception v0

    .line 73
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 75
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public a(Lcom/amap/api/services/a/bd;)V
    .locals 3

    .line 40
    if-nez p1, :cond_0

    .line 41
    return-void

    .line 43
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/amap/api/services/a/bz;->a:Lcom/amap/api/services/a/bp;

    if-nez v0, :cond_1

    .line 44
    iget-object v0, p0, Lcom/amap/api/services/a/bz;->b:Landroid/content/Context;

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/amap/api/services/a/bz;->a(Landroid/content/Context;Z)Lcom/amap/api/services/a/bp;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/services/a/bz;->a:Lcom/amap/api/services/a/bp;

    .line 49
    :cond_1
    invoke-virtual {p1}, Lcom/amap/api/services/a/bd;->a()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/amap/api/services/a/bd;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 50
    iget-object v1, p0, Lcom/amap/api/services/a/bz;->a:Lcom/amap/api/services/a/bp;

    const-class v2, Lcom/amap/api/services/a/bd;

    invoke-virtual {v1, v0, v2}, Lcom/amap/api/services/a/bp;->b(Ljava/lang/String;Ljava/lang/Class;)Ljava/util/List;

    move-result-object v1

    .line 52
    if-eqz v1, :cond_3

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_2

    goto :goto_0

    .line 55
    :cond_2
    iget-object v1, p0, Lcom/amap/api/services/a/bz;->a:Lcom/amap/api/services/a/bp;

    invoke-virtual {v1, v0, p1}, Lcom/amap/api/services/a/bp;->a(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_1

    .line 53
    :cond_3
    :goto_0
    iget-object v0, p0, Lcom/amap/api/services/a/bz;->a:Lcom/amap/api/services/a/bp;

    invoke-virtual {v0, p1}, Lcom/amap/api/services/a/bp;->a(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 61
    :goto_1
    goto :goto_2

    .line 57
    :catch_0
    move-exception p1

    .line 59
    const-string v0, "SDKDB"

    const-string v1, "insert"

    invoke-static {p1, v0, v1}, Lcom/amap/api/services/a/bg;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    .line 60
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 63
    :goto_2
    return-void
.end method
