.class final Lcom/xiaopeng/factory/model/factorytest/hardwaretest/gps/GPSModel$MyLocationListener;
.super Ljava/lang/Object;
.source "GPSModel.java"

# interfaces
.implements Landroid/location/LocationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/factory/model/factorytest/hardwaretest/gps/GPSModel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "MyLocationListener"
.end annotation


# instance fields
.field private mWeakReference:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/xiaopeng/factory/presenter/factorytest/hardwaretest/gps/GPSPresenter;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/xiaopeng/factory/model/factorytest/hardwaretest/gps/GPSModel;


# direct methods
.method public constructor <init>(Lcom/xiaopeng/factory/model/factorytest/hardwaretest/gps/GPSModel;)V
    .locals 0

    .line 320
    iput-object p1, p0, Lcom/xiaopeng/factory/model/factorytest/hardwaretest/gps/GPSModel$MyLocationListener;->this$0:Lcom/xiaopeng/factory/model/factorytest/hardwaretest/gps/GPSModel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 321
    return-void
.end method

.method public constructor <init>(Lcom/xiaopeng/factory/model/factorytest/hardwaretest/gps/GPSModel;Lcom/xiaopeng/factory/presenter/factorytest/hardwaretest/gps/GPSPresenter;)V
    .locals 0
    .param p2, "presenter"    # Lcom/xiaopeng/factory/presenter/factorytest/hardwaretest/gps/GPSPresenter;

    .line 316
    iput-object p1, p0, Lcom/xiaopeng/factory/model/factorytest/hardwaretest/gps/GPSModel$MyLocationListener;->this$0:Lcom/xiaopeng/factory/model/factorytest/hardwaretest/gps/GPSModel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 317
    new-instance p1, Ljava/lang/ref/WeakReference;

    invoke-direct {p1, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/xiaopeng/factory/model/factorytest/hardwaretest/gps/GPSModel$MyLocationListener;->mWeakReference:Ljava/lang/ref/WeakReference;

    .line 318
    return-void
.end method


# virtual methods
.method public onLocationChanged(Landroid/location/Location;)V
    .locals 1
    .param p1, "location"    # Landroid/location/Location;

    .line 325
    iget-object v0, p0, Lcom/xiaopeng/factory/model/factorytest/hardwaretest/gps/GPSModel$MyLocationListener;->this$0:Lcom/xiaopeng/factory/model/factorytest/hardwaretest/gps/GPSModel;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/factory/model/factorytest/hardwaretest/gps/GPSModel;->startSearchLocation(Landroid/location/Location;)V

    .line 326
    return-void
.end method

.method public onProviderDisabled(Ljava/lang/String;)V
    .locals 0
    .param p1, "provider"    # Ljava/lang/String;

    .line 331
    return-void
.end method

.method public onProviderEnabled(Ljava/lang/String;)V
    .locals 2
    .param p1, "provider"    # Ljava/lang/String;

    .line 335
    iget-object v0, p0, Lcom/xiaopeng/factory/model/factorytest/hardwaretest/gps/GPSModel$MyLocationListener;->mWeakReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 336
    iget-object v0, p0, Lcom/xiaopeng/factory/model/factorytest/hardwaretest/gps/GPSModel$MyLocationListener;->mWeakReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/factory/presenter/factorytest/hardwaretest/gps/GPSPresenter;

    invoke-virtual {v0}, Lcom/xiaopeng/factory/presenter/factorytest/hardwaretest/gps/GPSPresenter;->updateOnOffInfo()V

    .line 337
    iget-object v0, p0, Lcom/xiaopeng/factory/model/factorytest/hardwaretest/gps/GPSModel$MyLocationListener;->this$0:Lcom/xiaopeng/factory/model/factorytest/hardwaretest/gps/GPSModel;

    invoke-static {v0}, Lcom/xiaopeng/factory/model/factorytest/hardwaretest/gps/GPSModel;->access$300(Lcom/xiaopeng/factory/model/factorytest/hardwaretest/gps/GPSModel;)Landroid/location/LocationManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/location/LocationManager;->getLastKnownLocation(Ljava/lang/String;)Landroid/location/Location;

    move-result-object v0

    .line 338
    .local v0, "location":Landroid/location/Location;
    iget-object v1, p0, Lcom/xiaopeng/factory/model/factorytest/hardwaretest/gps/GPSModel$MyLocationListener;->this$0:Lcom/xiaopeng/factory/model/factorytest/hardwaretest/gps/GPSModel;

    invoke-virtual {v1, v0}, Lcom/xiaopeng/factory/model/factorytest/hardwaretest/gps/GPSModel;->startSearchLocation(Landroid/location/Location;)V

    .line 340
    .end local v0    # "location":Landroid/location/Location;
    :cond_0
    return-void
.end method

.method public onStatusChanged(Ljava/lang/String;ILandroid/os/Bundle;)V
    .locals 0
    .param p1, "provider"    # Ljava/lang/String;
    .param p2, "status"    # I
    .param p3, "extras"    # Landroid/os/Bundle;

    .line 345
    return-void
.end method
