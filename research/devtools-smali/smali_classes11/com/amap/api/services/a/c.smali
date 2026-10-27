.class public final Lcom/amap/api/services/a/c;
.super Ljava/lang/Object;
.source "GeocodeSearchCore.java"

# interfaces
.implements Lcom/amap/api/services/b/a;


# instance fields
.field private a:Landroid/content/Context;

.field private ej:Lcom/amap/api/services/geocoder/b$a;

.field private ek:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/amap/api/services/a/c;->a:Landroid/content/Context;

    .line 66
    invoke-static {}, Lcom/amap/api/services/a/bv;->bD()Lcom/amap/api/services/a/bv;

    move-result-object p1

    iput-object p1, p0, Lcom/amap/api/services/a/c;->ek:Landroid/os/Handler;

    .line 67
    return-void
.end method

.method static synthetic a(Lcom/amap/api/services/a/c;)Lcom/amap/api/services/geocoder/b$a;
    .locals 0

    .line 38
    iget-object p0, p0, Lcom/amap/api/services/a/c;->ej:Lcom/amap/api/services/geocoder/b$a;

    return-object p0
.end method

.method static synthetic b(Lcom/amap/api/services/a/c;)Landroid/os/Handler;
    .locals 0

    .line 38
    iget-object p0, p0, Lcom/amap/api/services/a/c;->ek:Landroid/os/Handler;

    return-object p0
.end method


# virtual methods
.method public a(Lcom/amap/api/services/geocoder/c;)Lcom/amap/api/services/geocoder/RegeocodeAddress;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amap/api/services/core/AMapException;
        }
    .end annotation

    .line 79
    :try_start_0
    iget-object v0, p0, Lcom/amap/api/services/a/c;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/amap/api/services/a/bt;->R(Landroid/content/Context;)Lcom/amap/api/services/a/bt;

    .line 80
    if-eqz p1, :cond_0

    .line 83
    new-instance v0, Lcom/amap/api/services/a/b;

    iget-object v1, p0, Lcom/amap/api/services/a/c;->a:Landroid/content/Context;

    invoke-direct {v0, v1, p1}, Lcom/amap/api/services/a/b;-><init>(Landroid/content/Context;Lcom/amap/api/services/geocoder/c;)V

    .line 85
    invoke-virtual {v0}, Lcom/amap/api/services/a/b;->a()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/amap/api/services/geocoder/RegeocodeAddress;

    return-object p1

    .line 81
    :cond_0
    new-instance p1, Lcom/amap/api/services/core/AMapException;

    const-string v0, "\u65e0\u6548\u7684\u53c2\u6570 - IllegalArgumentException"

    invoke-direct {p1, v0}, Lcom/amap/api/services/core/AMapException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_0
    .catch Lcom/amap/api/services/core/AMapException; {:try_start_0 .. :try_end_0} :catch_0

    .line 86
    :catch_0
    move-exception p1

    .line 87
    const-string v0, "GeocodeSearch"

    const-string v1, "getFromLocationAsyn"

    invoke-static {p1, v0, v1}, Lcom/amap/api/services/a/br;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    .line 88
    throw p1
.end method

.method public a(Lcom/amap/api/services/geocoder/b$a;)V
    .locals 0

    .line 121
    iput-object p1, p0, Lcom/amap/api/services/a/c;->ej:Lcom/amap/api/services/geocoder/b$a;

    .line 122
    return-void
.end method

.method public b(Lcom/amap/api/services/geocoder/c;)V
    .locals 2

    .line 131
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/amap/api/services/a/c$1;

    invoke-direct {v1, p0, p1}, Lcom/amap/api/services/a/c$1;-><init>(Lcom/amap/api/services/a/c;Lcom/amap/api/services/geocoder/c;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 153
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 155
    return-void
.end method
