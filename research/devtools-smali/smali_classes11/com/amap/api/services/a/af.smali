.class public Lcom/amap/api/services/a/af;
.super Ljava/lang/Object;
.source "LogDBOperation.java"


# instance fields
.field private eW:Lcom/amap/api/services/a/x;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    :try_start_0
    new-instance v0, Lcom/amap/api/services/a/x;

    const-class v1, Lcom/amap/api/services/a/ae;

    invoke-static {v1}, Lcom/amap/api/services/a/x;->b(Ljava/lang/Class;)Lcom/amap/api/services/a/w;

    move-result-object v1

    invoke-direct {v0, p1, v1}, Lcom/amap/api/services/a/x;-><init>(Landroid/content/Context;Lcom/amap/api/services/a/w;)V

    iput-object v0, p0, Lcom/amap/api/services/a/af;->eW:Lcom/amap/api/services/a/x;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 17
    goto :goto_0

    .line 15
    :catch_0
    move-exception p1

    .line 16
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 18
    :goto_0
    return-void
.end method

.method private d(Ljava/lang/String;Ljava/lang/Class;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "+",
            "Lcom/amap/api/services/a/ag;",
            ">;)V"
        }
    .end annotation

    .line 41
    invoke-static {p1}, Lcom/amap/api/services/a/ag;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 42
    iget-object v0, p0, Lcom/amap/api/services/a/af;->eW:Lcom/amap/api/services/a/x;

    invoke-virtual {v0, p1, p2}, Lcom/amap/api/services/a/x;->a(Ljava/lang/String;Ljava/lang/Class;)V

    .line 45
    return-void
.end method


# virtual methods
.method public a(ILjava/lang/Class;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/Class<",
            "+",
            "Lcom/amap/api/services/a/ag;",
            ">;)",
            "Ljava/util/List<",
            "+",
            "Lcom/amap/api/services/a/ag;",
            ">;"
        }
    .end annotation

    .line 52
    nop

    .line 55
    :try_start_0
    invoke-static {p1}, Lcom/amap/api/services/a/ag;->I(I)Ljava/lang/String;

    move-result-object p1

    .line 56
    iget-object v0, p0, Lcom/amap/api/services/a/af;->eW:Lcom/amap/api/services/a/x;

    invoke-virtual {v0, p1, p2}, Lcom/amap/api/services/a/x;->b(Ljava/lang/String;Ljava/lang/Class;)Ljava/util/List;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 61
    goto :goto_0

    .line 57
    :catch_0
    move-exception p1

    .line 59
    const-string p2, "LogDB"

    const-string v0, "ByState"

    invoke-static {p1, p2, v0}, Lcom/amap/api/services/a/o;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    .line 62
    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method

.method public a(Lcom/amap/api/services/a/ag;)V
    .locals 4

    .line 88
    if-nez p1, :cond_0

    .line 89
    return-void

    .line 91
    :cond_0
    nop

    .line 92
    invoke-virtual {p1}, Lcom/amap/api/services/a/ag;->b()Ljava/lang/String;

    move-result-object v0

    .line 91
    invoke-static {v0}, Lcom/amap/api/services/a/ag;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 94
    iget-object v1, p0, Lcom/amap/api/services/a/af;->eW:Lcom/amap/api/services/a/x;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v1, v0, v2, v3}, Lcom/amap/api/services/a/x;->a(Ljava/lang/String;Ljava/lang/Class;Z)Ljava/util/List;

    move-result-object v1

    .line 95
    if-eqz v1, :cond_3

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    if-nez v2, :cond_1

    goto :goto_1

    .line 99
    :cond_1
    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amap/api/services/a/ag;

    .line 100
    invoke-virtual {p1}, Lcom/amap/api/services/a/ag;->a()I

    move-result p1

    if-nez p1, :cond_2

    .line 101
    invoke-virtual {v1}, Lcom/amap/api/services/a/ag;->v()I

    move-result p1

    .line 102
    add-int/2addr p1, v3

    .line 103
    invoke-virtual {v1, p1}, Lcom/amap/api/services/a/ag;->b(I)V

    .line 104
    goto :goto_0

    .line 105
    :cond_2
    invoke-virtual {v1, v2}, Lcom/amap/api/services/a/ag;->b(I)V

    .line 107
    :goto_0
    iget-object p1, p0, Lcom/amap/api/services/a/af;->eW:Lcom/amap/api/services/a/x;

    invoke-virtual {p1, v0, v1, v3}, Lcom/amap/api/services/a/x;->a(Ljava/lang/String;Ljava/lang/Object;Z)V

    goto :goto_2

    .line 97
    :cond_3
    :goto_1
    iget-object v0, p0, Lcom/amap/api/services/a/af;->eW:Lcom/amap/api/services/a/x;

    invoke-virtual {v0, p1, v3}, Lcom/amap/api/services/a/x;->a(Ljava/lang/Object;Z)V

    .line 109
    :goto_2
    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/Class;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "+",
            "Lcom/amap/api/services/a/ag;",
            ">;)V"
        }
    .end annotation

    .line 23
    :try_start_0
    invoke-direct {p0, p1, p2}, Lcom/amap/api/services/a/af;->d(Ljava/lang/String;Ljava/lang/Class;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 28
    goto :goto_0

    .line 24
    :catch_0
    move-exception p1

    .line 26
    const-string p2, "LogDB"

    const-string v0, "delLog"

    invoke-static {p1, p2, v0}, Lcom/amap/api/services/a/o;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    .line 29
    :goto_0
    return-void
.end method

.method public b(Lcom/amap/api/services/a/ag;)V
    .locals 2

    .line 119
    :try_start_0
    invoke-virtual {p1}, Lcom/amap/api/services/a/ag;->b()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/amap/api/services/a/ag;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 120
    iget-object v1, p0, Lcom/amap/api/services/a/af;->eW:Lcom/amap/api/services/a/x;

    invoke-virtual {v1, v0, p1}, Lcom/amap/api/services/a/x;->a(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 126
    goto :goto_0

    .line 122
    :catch_0
    move-exception p1

    .line 124
    const-string v0, "LogDB"

    const-string v1, "updateLogInfo"

    invoke-static {p1, v0, v1}, Lcom/amap/api/services/a/o;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    .line 128
    :goto_0
    return-void
.end method

.method public c(Ljava/lang/String;Ljava/lang/Class;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "+",
            "Lcom/amap/api/services/a/ag;",
            ">;)V"
        }
    .end annotation

    .line 33
    :try_start_0
    invoke-direct {p0, p1, p2}, Lcom/amap/api/services/a/af;->d(Ljava/lang/String;Ljava/lang/Class;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 37
    goto :goto_0

    .line 34
    :catch_0
    move-exception p1

    .line 36
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 38
    :goto_0
    return-void
.end method
