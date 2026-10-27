.class public Lcom/xiaopeng/factory/presenter/factorytest/hardwaretest/gps/GPSPresenter;
.super Ljava/lang/Object;
.source "GPSPresenter.java"


# instance fields
.field private mGPSModel:Lcom/xiaopeng/factory/model/factorytest/hardwaretest/gps/GPSModel;

.field private mGPSView:Lcom/xiaopeng/factory/view/factorytest/hardwaretest/gps/IGPSView;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    new-instance v0, Lcom/xiaopeng/factory/model/factorytest/hardwaretest/gps/GPSModel;

    invoke-direct {v0}, Lcom/xiaopeng/factory/model/factorytest/hardwaretest/gps/GPSModel;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/factory/presenter/factorytest/hardwaretest/gps/GPSPresenter;->mGPSModel:Lcom/xiaopeng/factory/model/factorytest/hardwaretest/gps/GPSModel;

    .line 27
    return-void
.end method

.method public constructor <init>(Lcom/xiaopeng/factory/view/factorytest/hardwaretest/gps/IGPSView;)V
    .locals 1
    .param p1, "view"    # Lcom/xiaopeng/factory/view/factorytest/hardwaretest/gps/IGPSView;

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    new-instance v0, Lcom/xiaopeng/factory/model/factorytest/hardwaretest/gps/GPSModel;

    invoke-direct {v0, p0}, Lcom/xiaopeng/factory/model/factorytest/hardwaretest/gps/GPSModel;-><init>(Lcom/xiaopeng/factory/presenter/factorytest/hardwaretest/gps/GPSPresenter;)V

    iput-object v0, p0, Lcom/xiaopeng/factory/presenter/factorytest/hardwaretest/gps/GPSPresenter;->mGPSModel:Lcom/xiaopeng/factory/model/factorytest/hardwaretest/gps/GPSModel;

    .line 22
    iput-object p1, p0, Lcom/xiaopeng/factory/presenter/factorytest/hardwaretest/gps/GPSPresenter;->mGPSView:Lcom/xiaopeng/factory/view/factorytest/hardwaretest/gps/IGPSView;

    .line 23
    return-void
.end method


# virtual methods
.method public closeUDPClient()V
    .locals 1

    .line 82
    iget-object v0, p0, Lcom/xiaopeng/factory/presenter/factorytest/hardwaretest/gps/GPSPresenter;->mGPSModel:Lcom/xiaopeng/factory/model/factorytest/hardwaretest/gps/GPSModel;

    invoke-virtual {v0}, Lcom/xiaopeng/factory/model/factorytest/hardwaretest/gps/GPSModel;->closeUDPClient()V

    .line 83
    return-void
.end method

.method public destory()V
    .locals 1

    .line 70
    iget-object v0, p0, Lcom/xiaopeng/factory/presenter/factorytest/hardwaretest/gps/GPSPresenter;->mGPSModel:Lcom/xiaopeng/factory/model/factorytest/hardwaretest/gps/GPSModel;

    invoke-virtual {v0}, Lcom/xiaopeng/factory/model/factorytest/hardwaretest/gps/GPSModel;->destory()V

    .line 71
    return-void
.end method

.method public getCurrentGPSmode()I
    .locals 1

    .line 38
    iget-object v0, p0, Lcom/xiaopeng/factory/presenter/factorytest/hardwaretest/gps/GPSPresenter;->mGPSModel:Lcom/xiaopeng/factory/model/factorytest/hardwaretest/gps/GPSModel;

    invoke-virtual {v0}, Lcom/xiaopeng/factory/model/factorytest/hardwaretest/gps/GPSModel;->getCurrentGPSmode()I

    move-result v0

    return v0
.end method

.method public getGPSCNR()Ljava/lang/String;
    .locals 1

    .line 42
    iget-object v0, p0, Lcom/xiaopeng/factory/presenter/factorytest/hardwaretest/gps/GPSPresenter;->mGPSModel:Lcom/xiaopeng/factory/model/factorytest/hardwaretest/gps/GPSModel;

    invoke-virtual {v0}, Lcom/xiaopeng/factory/model/factorytest/hardwaretest/gps/GPSModel;->getGPSCNR()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getLastKnownLocation()Landroid/location/Location;
    .locals 1

    .line 46
    iget-object v0, p0, Lcom/xiaopeng/factory/presenter/factorytest/hardwaretest/gps/GPSPresenter;->mGPSModel:Lcom/xiaopeng/factory/model/factorytest/hardwaretest/gps/GPSModel;

    invoke-virtual {v0}, Lcom/xiaopeng/factory/model/factorytest/hardwaretest/gps/GPSModel;->getLastKnownLocation()Landroid/location/Location;

    move-result-object v0

    return-object v0
.end method

.method public hasGPSFeature()Z
    .locals 1

    .line 58
    iget-object v0, p0, Lcom/xiaopeng/factory/presenter/factorytest/hardwaretest/gps/GPSPresenter;->mGPSModel:Lcom/xiaopeng/factory/model/factorytest/hardwaretest/gps/GPSModel;

    invoke-virtual {v0}, Lcom/xiaopeng/factory/model/factorytest/hardwaretest/gps/GPSModel;->hasGPSFeature()Z

    move-result v0

    return v0
.end method

.method public isGPSEnabled()Z
    .locals 1

    .line 54
    iget-object v0, p0, Lcom/xiaopeng/factory/presenter/factorytest/hardwaretest/gps/GPSPresenter;->mGPSModel:Lcom/xiaopeng/factory/model/factorytest/hardwaretest/gps/GPSModel;

    invoke-virtual {v0}, Lcom/xiaopeng/factory/model/factorytest/hardwaretest/gps/GPSModel;->isGPSEnabled()Z

    move-result v0

    return v0
.end method

.method public onSensorChanged(I[FJF)V
    .locals 6
    .param p1, "sensorType"    # I
    .param p2, "values"    # [F
    .param p3, "timestamp"    # J
    .param p5, "temperature"    # F

    .line 90
    iget-object v0, p0, Lcom/xiaopeng/factory/presenter/factorytest/hardwaretest/gps/GPSPresenter;->mGPSView:Lcom/xiaopeng/factory/view/factorytest/hardwaretest/gps/IGPSView;

    move v1, p1

    move-object v2, p2

    move-wide v3, p3

    move v5, p5

    invoke-interface/range {v0 .. v5}, Lcom/xiaopeng/factory/view/factorytest/hardwaretest/gps/IGPSView;->onSensorChanged(I[FJF)V

    .line 91
    return-void
.end method

.method public openUDPClient()V
    .locals 1

    .line 78
    iget-object v0, p0, Lcom/xiaopeng/factory/presenter/factorytest/hardwaretest/gps/GPSPresenter;->mGPSModel:Lcom/xiaopeng/factory/model/factorytest/hardwaretest/gps/GPSModel;

    invoke-virtual {v0}, Lcom/xiaopeng/factory/model/factorytest/hardwaretest/gps/GPSModel;->openUDPClient()V

    .line 79
    return-void
.end method

.method public setGPSEnable()V
    .locals 1

    .line 30
    iget-object v0, p0, Lcom/xiaopeng/factory/presenter/factorytest/hardwaretest/gps/GPSPresenter;->mGPSModel:Lcom/xiaopeng/factory/model/factorytest/hardwaretest/gps/GPSModel;

    invoke-virtual {v0}, Lcom/xiaopeng/factory/model/factorytest/hardwaretest/gps/GPSModel;->setGPSEnable()V

    .line 31
    return-void
.end method

.method public setGPSmode(I)Z
    .locals 1
    .param p1, "mode"    # I

    .line 34
    iget-object v0, p0, Lcom/xiaopeng/factory/presenter/factorytest/hardwaretest/gps/GPSPresenter;->mGPSModel:Lcom/xiaopeng/factory/model/factorytest/hardwaretest/gps/GPSModel;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/factory/model/factorytest/hardwaretest/gps/GPSModel;->setGPSmode(I)Z

    move-result v0

    return v0
.end method

.method public setUDPClientListener()V
    .locals 1

    .line 86
    iget-object v0, p0, Lcom/xiaopeng/factory/presenter/factorytest/hardwaretest/gps/GPSPresenter;->mGPSModel:Lcom/xiaopeng/factory/model/factorytest/hardwaretest/gps/GPSModel;

    invoke-virtual {v0}, Lcom/xiaopeng/factory/model/factorytest/hardwaretest/gps/GPSModel;->setUDPClientListener()V

    .line 87
    return-void
.end method

.method public startSearchLocation(Landroid/location/Location;)V
    .locals 1
    .param p1, "location"    # Landroid/location/Location;

    .line 50
    iget-object v0, p0, Lcom/xiaopeng/factory/presenter/factorytest/hardwaretest/gps/GPSPresenter;->mGPSModel:Lcom/xiaopeng/factory/model/factorytest/hardwaretest/gps/GPSModel;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/factory/model/factorytest/hardwaretest/gps/GPSModel;->startSearchLocation(Landroid/location/Location;)V

    .line 51
    return-void
.end method

.method public updateGPSStatus(ILjava/util/List;)V
    .locals 1
    .param p1, "counts"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Landroid/location/GpsSatellite;",
            ">;)V"
        }
    .end annotation

    .line 74
    .local p2, "gpsSatellites":Ljava/util/List;, "Ljava/util/List<Landroid/location/GpsSatellite;>;"
    iget-object v0, p0, Lcom/xiaopeng/factory/presenter/factorytest/hardwaretest/gps/GPSPresenter;->mGPSView:Lcom/xiaopeng/factory/view/factorytest/hardwaretest/gps/IGPSView;

    invoke-interface {v0, p1, p2}, Lcom/xiaopeng/factory/view/factorytest/hardwaretest/gps/IGPSView;->updateGPSStatus(ILjava/util/List;)V

    .line 75
    return-void
.end method

.method public updateLocation(Ljava/lang/String;)V
    .locals 1
    .param p1, "location"    # Ljava/lang/String;

    .line 66
    iget-object v0, p0, Lcom/xiaopeng/factory/presenter/factorytest/hardwaretest/gps/GPSPresenter;->mGPSView:Lcom/xiaopeng/factory/view/factorytest/hardwaretest/gps/IGPSView;

    invoke-interface {v0, p1}, Lcom/xiaopeng/factory/view/factorytest/hardwaretest/gps/IGPSView;->updateLocation(Ljava/lang/String;)V

    .line 67
    return-void
.end method

.method public updateOnOffInfo()V
    .locals 1

    .line 62
    iget-object v0, p0, Lcom/xiaopeng/factory/presenter/factorytest/hardwaretest/gps/GPSPresenter;->mGPSView:Lcom/xiaopeng/factory/view/factorytest/hardwaretest/gps/IGPSView;

    invoke-interface {v0}, Lcom/xiaopeng/factory/view/factorytest/hardwaretest/gps/IGPSView;->updateOnOffInfo()V

    .line 63
    return-void
.end method
