.class final Lcom/xiaopeng/factory/model/factorytest/hardwaretest/gps/GPSModel$MyGpsStatusListener;
.super Ljava/lang/Object;
.source "GPSModel.java"

# interfaces
.implements Landroid/location/GpsStatus$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/factory/model/factorytest/hardwaretest/gps/GPSModel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "MyGpsStatusListener"
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

    .line 285
    iput-object p1, p0, Lcom/xiaopeng/factory/model/factorytest/hardwaretest/gps/GPSModel$MyGpsStatusListener;->this$0:Lcom/xiaopeng/factory/model/factorytest/hardwaretest/gps/GPSModel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 286
    return-void
.end method

.method public constructor <init>(Lcom/xiaopeng/factory/model/factorytest/hardwaretest/gps/GPSModel;Lcom/xiaopeng/factory/presenter/factorytest/hardwaretest/gps/GPSPresenter;)V
    .locals 0
    .param p2, "presenter"    # Lcom/xiaopeng/factory/presenter/factorytest/hardwaretest/gps/GPSPresenter;

    .line 281
    iput-object p1, p0, Lcom/xiaopeng/factory/model/factorytest/hardwaretest/gps/GPSModel$MyGpsStatusListener;->this$0:Lcom/xiaopeng/factory/model/factorytest/hardwaretest/gps/GPSModel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 282
    new-instance p1, Ljava/lang/ref/WeakReference;

    invoke-direct {p1, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/xiaopeng/factory/model/factorytest/hardwaretest/gps/GPSModel$MyGpsStatusListener;->mWeakReference:Ljava/lang/ref/WeakReference;

    .line 283
    return-void
.end method

.method private updateGpsStatus(ILandroid/location/GpsStatus;)V
    .locals 5
    .param p1, "event"    # I
    .param p2, "status"    # Landroid/location/GpsStatus;

    .line 295
    const/4 v0, 0x4

    if-ne p1, v0, :cond_1

    .line 296
    invoke-virtual {p2}, Landroid/location/GpsStatus;->getMaxSatellites()I

    move-result v0

    .line 297
    .local v0, "maxSatellites":I
    invoke-virtual {p2}, Landroid/location/GpsStatus;->getSatellites()Ljava/lang/Iterable;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 298
    .local v1, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/location/GpsSatellite;>;"
    iget-object v2, p0, Lcom/xiaopeng/factory/model/factorytest/hardwaretest/gps/GPSModel$MyGpsStatusListener;->this$0:Lcom/xiaopeng/factory/model/factorytest/hardwaretest/gps/GPSModel;

    invoke-static {v2}, Lcom/xiaopeng/factory/model/factorytest/hardwaretest/gps/GPSModel;->access$400(Lcom/xiaopeng/factory/model/factorytest/hardwaretest/gps/GPSModel;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 299
    const/4 v2, 0x0

    .line 300
    .local v2, "count":I
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    if-gt v2, v0, :cond_0

    .line 301
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/location/GpsSatellite;

    .line 302
    .local v3, "s":Landroid/location/GpsSatellite;
    iget-object v4, p0, Lcom/xiaopeng/factory/model/factorytest/hardwaretest/gps/GPSModel$MyGpsStatusListener;->this$0:Lcom/xiaopeng/factory/model/factorytest/hardwaretest/gps/GPSModel;

    invoke-static {v4}, Lcom/xiaopeng/factory/model/factorytest/hardwaretest/gps/GPSModel;->access$400(Lcom/xiaopeng/factory/model/factorytest/hardwaretest/gps/GPSModel;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 303
    add-int/lit8 v2, v2, 0x1

    .line 304
    .end local v3    # "s":Landroid/location/GpsSatellite;
    goto :goto_0

    .line 305
    :cond_0
    iget-object v3, p0, Lcom/xiaopeng/factory/model/factorytest/hardwaretest/gps/GPSModel$MyGpsStatusListener;->mWeakReference:Ljava/lang/ref/WeakReference;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/xiaopeng/factory/model/factorytest/hardwaretest/gps/GPSModel$MyGpsStatusListener;->mWeakReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 306
    iget-object v3, p0, Lcom/xiaopeng/factory/model/factorytest/hardwaretest/gps/GPSModel$MyGpsStatusListener;->mWeakReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/xiaopeng/factory/presenter/factorytest/hardwaretest/gps/GPSPresenter;

    iget-object v4, p0, Lcom/xiaopeng/factory/model/factorytest/hardwaretest/gps/GPSModel$MyGpsStatusListener;->this$0:Lcom/xiaopeng/factory/model/factorytest/hardwaretest/gps/GPSModel;

    invoke-static {v4}, Lcom/xiaopeng/factory/model/factorytest/hardwaretest/gps/GPSModel;->access$400(Lcom/xiaopeng/factory/model/factorytest/hardwaretest/gps/GPSModel;)Ljava/util/List;

    move-result-object v4

    invoke-virtual {v3, v2, v4}, Lcom/xiaopeng/factory/presenter/factorytest/hardwaretest/gps/GPSPresenter;->updateGPSStatus(ILjava/util/List;)V

    .line 309
    .end local v0    # "maxSatellites":I
    .end local v1    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/location/GpsSatellite;>;"
    .end local v2    # "count":I
    :cond_1
    return-void
.end method


# virtual methods
.method public onGpsStatusChanged(I)V
    .locals 2
    .param p1, "event"    # I

    .line 290
    iget-object v0, p0, Lcom/xiaopeng/factory/model/factorytest/hardwaretest/gps/GPSModel$MyGpsStatusListener;->this$0:Lcom/xiaopeng/factory/model/factorytest/hardwaretest/gps/GPSModel;

    invoke-static {v0}, Lcom/xiaopeng/factory/model/factorytest/hardwaretest/gps/GPSModel;->access$300(Lcom/xiaopeng/factory/model/factorytest/hardwaretest/gps/GPSModel;)Landroid/location/LocationManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->getGpsStatus(Landroid/location/GpsStatus;)Landroid/location/GpsStatus;

    move-result-object v0

    .line 291
    .local v0, "status":Landroid/location/GpsStatus;
    invoke-direct {p0, p1, v0}, Lcom/xiaopeng/factory/model/factorytest/hardwaretest/gps/GPSModel$MyGpsStatusListener;->updateGpsStatus(ILandroid/location/GpsStatus;)V

    .line 292
    return-void
.end method
