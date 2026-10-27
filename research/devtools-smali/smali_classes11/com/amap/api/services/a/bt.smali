.class public Lcom/amap/api/services/a/bt;
.super Ljava/lang/Object;
.source "ManifestConfig.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amap/api/services/a/bt$a;
    }
.end annotation


# static fields
.field public static eN:Lcom/amap/api/services/a/l;

.field private static fX:Lcom/amap/api/services/a/bt;

.field private static fh:Landroid/content/Context;


# instance fields
.field private fY:Lcom/amap/api/services/a/bt$a;

.field private fZ:Landroid/os/HandlerThread;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    new-instance v0, Lcom/amap/api/services/a/bt$1;

    const-string v1, "manifestThread"

    invoke-direct {v0, p0, v1}, Lcom/amap/api/services/a/bt$1;-><init>(Lcom/amap/api/services/a/bt;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/amap/api/services/a/bt;->fZ:Landroid/os/HandlerThread;

    .line 27
    sput-object p1, Lcom/amap/api/services/a/bt;->fh:Landroid/content/Context;

    .line 28
    const/4 p1, 0x0

    invoke-static {p1}, Lcom/amap/api/services/a/bq;->l(Z)Lcom/amap/api/services/a/l;

    move-result-object p1

    sput-object p1, Lcom/amap/api/services/a/bt;->eN:Lcom/amap/api/services/a/l;

    .line 30
    :try_start_0
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p1

    .line 31
    new-instance v0, Lcom/amap/api/services/a/bt$a;

    invoke-direct {v0, p0, p1}, Lcom/amap/api/services/a/bt$a;-><init>(Lcom/amap/api/services/a/bt;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/amap/api/services/a/bt;->fY:Lcom/amap/api/services/a/bt$a;

    .line 32
    iget-object p1, p0, Lcom/amap/api/services/a/bt;->fZ:Landroid/os/HandlerThread;

    invoke-virtual {p1}, Landroid/os/HandlerThread;->start()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 35
    goto :goto_0

    .line 33
    :catch_0
    move-exception p1

    .line 34
    const-string v0, "ManifestConfig"

    const-string v1, "ManifestConfig"

    invoke-static {p1, v0, v1}, Lcom/amap/api/services/a/br;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    .line 36
    :goto_0
    return-void
.end method

.method public static R(Landroid/content/Context;)Lcom/amap/api/services/a/bt;
    .locals 1

    .line 39
    sget-object v0, Lcom/amap/api/services/a/bt;->fX:Lcom/amap/api/services/a/bt;

    if-nez v0, :cond_0

    .line 40
    new-instance v0, Lcom/amap/api/services/a/bt;

    invoke-direct {v0, p0}, Lcom/amap/api/services/a/bt;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/amap/api/services/a/bt;->fX:Lcom/amap/api/services/a/bt;

    .line 42
    :cond_0
    sget-object p0, Lcom/amap/api/services/a/bt;->fX:Lcom/amap/api/services/a/bt;

    return-object p0
.end method

.method static synthetic a(Lcom/amap/api/services/a/bt;)Lcom/amap/api/services/a/bt$a;
    .locals 0

    .line 17
    iget-object p0, p0, Lcom/amap/api/services/a/bt;->fY:Lcom/amap/api/services/a/bt$a;

    return-object p0
.end method

.method static synthetic bC()Landroid/content/Context;
    .locals 1

    .line 17
    sget-object v0, Lcom/amap/api/services/a/bt;->fh:Landroid/content/Context;

    return-object v0
.end method
