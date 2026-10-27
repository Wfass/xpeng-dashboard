.class final Lcom/xiaopeng/devtools/model/c/a/d/a$c;
.super Ljava/lang/Object;
.source "GPSModel.java"

# interfaces
.implements Landroid/location/LocationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/devtools/model/c/a/d/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "c"
.end annotation


# instance fields
.field private sv:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/d/a;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic tj:Lcom/xiaopeng/devtools/model/c/a/d/a;


# direct methods
.method public constructor <init>(Lcom/xiaopeng/devtools/model/c/a/d/a;Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/d/a;)V
    .locals 0

    .line 332
    iput-object p1, p0, Lcom/xiaopeng/devtools/model/c/a/d/a$c;->tj:Lcom/xiaopeng/devtools/model/c/a/d/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 333
    new-instance p1, Ljava/lang/ref/WeakReference;

    invoke-direct {p1, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/xiaopeng/devtools/model/c/a/d/a$c;->sv:Ljava/lang/ref/WeakReference;

    .line 334
    return-void
.end method


# virtual methods
.method public onLocationChanged(Landroid/location/Location;)V
    .locals 1

    .line 341
    iget-object v0, p0, Lcom/xiaopeng/devtools/model/c/a/d/a$c;->tj:Lcom/xiaopeng/devtools/model/c/a/d/a;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/devtools/model/c/a/d/a;->a(Landroid/location/Location;)V

    .line 342
    return-void
.end method

.method public onProviderDisabled(Ljava/lang/String;)V
    .locals 0

    .line 347
    return-void
.end method

.method public onProviderEnabled(Ljava/lang/String;)V
    .locals 1

    .line 351
    iget-object v0, p0, Lcom/xiaopeng/devtools/model/c/a/d/a$c;->sv:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 352
    iget-object v0, p0, Lcom/xiaopeng/devtools/model/c/a/d/a$c;->sv:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/d/a;

    invoke-virtual {v0}, Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/d/a;->iV()V

    .line 353
    iget-object v0, p0, Lcom/xiaopeng/devtools/model/c/a/d/a$c;->tj:Lcom/xiaopeng/devtools/model/c/a/d/a;

    invoke-static {v0}, Lcom/xiaopeng/devtools/model/c/a/d/a;->c(Lcom/xiaopeng/devtools/model/c/a/d/a;)Landroid/location/LocationManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/location/LocationManager;->getLastKnownLocation(Ljava/lang/String;)Landroid/location/Location;

    move-result-object p1

    .line 354
    iget-object v0, p0, Lcom/xiaopeng/devtools/model/c/a/d/a$c;->tj:Lcom/xiaopeng/devtools/model/c/a/d/a;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/devtools/model/c/a/d/a;->a(Landroid/location/Location;)V

    .line 356
    :cond_0
    return-void
.end method

.method public onStatusChanged(Ljava/lang/String;ILandroid/os/Bundle;)V
    .locals 0

    .line 361
    return-void
.end method
