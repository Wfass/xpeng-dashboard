.class final Lcom/xiaopeng/devtools/model/f/b$b;
.super Ljava/lang/Object;
.source "GpsPerformanceModel.java"

# interfaces
.implements Landroid/location/LocationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/devtools/model/f/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "b"
.end annotation


# instance fields
.field final synthetic ug:Lcom/xiaopeng/devtools/model/f/b;


# direct methods
.method private constructor <init>(Lcom/xiaopeng/devtools/model/f/b;)V
    .locals 0

    .line 162
    iput-object p1, p0, Lcom/xiaopeng/devtools/model/f/b$b;->ug:Lcom/xiaopeng/devtools/model/f/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/xiaopeng/devtools/model/f/b;Lcom/xiaopeng/devtools/model/f/b$1;)V
    .locals 0

    .line 162
    invoke-direct {p0, p1}, Lcom/xiaopeng/devtools/model/f/b$b;-><init>(Lcom/xiaopeng/devtools/model/f/b;)V

    return-void
.end method


# virtual methods
.method public onLocationChanged(Landroid/location/Location;)V
    .locals 2

    .line 167
    iget-object v0, p0, Lcom/xiaopeng/devtools/model/f/b$b;->ug:Lcom/xiaopeng/devtools/model/f/b;

    invoke-static {v0}, Lcom/xiaopeng/devtools/model/f/b;->c(Lcom/xiaopeng/devtools/model/f/b;)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    new-instance v1, Lcom/xiaopeng/devtools/model/f/b$b$1;

    invoke-direct {v1, p0, p1}, Lcom/xiaopeng/devtools/model/f/b$b$1;-><init>(Lcom/xiaopeng/devtools/model/f/b$b;Landroid/location/Location;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    .line 173
    return-void
.end method

.method public onProviderDisabled(Ljava/lang/String;)V
    .locals 0

    .line 178
    return-void
.end method

.method public onProviderEnabled(Ljava/lang/String;)V
    .locals 2

    .line 182
    iget-object v0, p0, Lcom/xiaopeng/devtools/model/f/b$b;->ug:Lcom/xiaopeng/devtools/model/f/b;

    invoke-static {v0}, Lcom/xiaopeng/devtools/model/f/b;->c(Lcom/xiaopeng/devtools/model/f/b;)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    new-instance v1, Lcom/xiaopeng/devtools/model/f/b$b$2;

    invoke-direct {v1, p0, p1}, Lcom/xiaopeng/devtools/model/f/b$b$2;-><init>(Lcom/xiaopeng/devtools/model/f/b$b;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    .line 190
    return-void
.end method

.method public onStatusChanged(Ljava/lang/String;ILandroid/os/Bundle;)V
    .locals 0

    .line 195
    return-void
.end method
