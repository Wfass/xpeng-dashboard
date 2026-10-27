.class Lcom/amap/api/services/a/o$a;
.super Landroid/os/Handler;
.source "ManifestConfig.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amap/api/services/a/o;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field a:Ljava/lang/String;

.field final synthetic b:Lcom/amap/api/services/a/o;


# direct methods
.method public constructor <init>(Lcom/amap/api/services/a/o;Landroid/os/Looper;)V
    .locals 0

    .line 98
    iput-object p1, p0, Lcom/amap/api/services/a/o$a;->b:Lcom/amap/api/services/a/o;

    .line 99
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 96
    const-string p1, "handleMessage"

    iput-object p1, p0, Lcom/amap/api/services/a/o$a;->a:Ljava/lang/String;

    .line 100
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    .line 103
    if-nez p1, :cond_0

    .line 104
    return-void

    .line 106
    :cond_0
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    goto :goto_0

    .line 109
    :cond_1
    :try_start_0
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/amap/api/services/a/p;

    .line 110
    if-nez p1, :cond_2

    .line 111
    new-instance p1, Lcom/amap/api/services/a/p;

    const/4 v0, 0x0

    invoke-direct {p1, v0, v0}, Lcom/amap/api/services/a/p;-><init>(ZZ)V

    .line 113
    :cond_2
    invoke-static {}, Lcom/amap/api/services/a/o;->a()Landroid/content/Context;

    move-result-object v0

    .line 114
    invoke-virtual {p1}, Lcom/amap/api/services/a/p;->a()Z

    move-result v1

    invoke-static {v1}, Lcom/amap/api/services/a/h;->a(Z)Lcom/amap/api/services/a/bd;

    move-result-object v1

    .line 113
    invoke-static {v0, v1}, Lcom/amap/api/services/a/bj;->a(Landroid/content/Context;Lcom/amap/api/services/a/bd;)Lcom/amap/api/services/a/bj;

    .line 115
    nop

    .line 116
    invoke-virtual {p1}, Lcom/amap/api/services/a/p;->a()Z

    move-result p1

    .line 115
    invoke-static {p1}, Lcom/amap/api/services/a/h;->a(Z)Lcom/amap/api/services/a/bd;

    move-result-object p1

    sput-object p1, Lcom/amap/api/services/a/o;->a:Lcom/amap/api/services/a/bd;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 119
    goto :goto_0

    .line 117
    :catch_0
    move-exception p1

    .line 118
    const-string v0, "ManifestConfig"

    iget-object v1, p0, Lcom/amap/api/services/a/o$a;->a:Ljava/lang/String;

    invoke-static {p1, v0, v1}, Lcom/amap/api/services/a/i;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    .line 120
    nop

    .line 125
    :goto_0
    return-void
.end method
