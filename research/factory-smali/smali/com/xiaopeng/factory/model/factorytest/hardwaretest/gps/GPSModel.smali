.class public Lcom/xiaopeng/factory/model/factorytest/hardwaretest/gps/GPSModel;
.super Ljava/lang/Object;
.source "GPSModel.java"

# interfaces
.implements Lcom/amap/api/services/geocoder/GeocodeSearch$OnGeocodeSearchListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaopeng/factory/model/factorytest/hardwaretest/gps/GPSModel$MyLocationListener;,
        Lcom/xiaopeng/factory/model/factorytest/hardwaretest/gps/GPSModel$MyGpsStatusListener;,
        Lcom/xiaopeng/factory/model/factorytest/hardwaretest/gps/GPSModel$GPSLooperThread;
    }
.end annotation


# static fields
.field public static final SENSOR_TYPE_GPS_ACC:I = 0x1

.field public static final SENSOR_TYPE_GPS_GYRO:I = 0x4

.field private static final TAG:Ljava/lang/String; = "GPSModel"


# instance fields
.field private currentMode:I

.field private format:Ljava/text/SimpleDateFormat;

.field private geocoderSearch:Lcom/amap/api/services/geocoder/GeocodeSearch;

.field private gpsLooperThread:Lcom/xiaopeng/factory/model/factorytest/hardwaretest/gps/GPSModel$GPSLooperThread;

.field private mContext:Landroid/content/Context;

.field private mGPSCNRGpsSatellites:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/location/GpsSatellite;",
            ">;"
        }
    .end annotation
.end field

.field private mGPSPresenter:Lcom/xiaopeng/factory/presenter/factorytest/hardwaretest/gps/GPSPresenter;

.field private mGpsStatusListener:Lcom/xiaopeng/factory/model/factorytest/hardwaretest/gps/GPSModel$MyGpsStatusListener;

.field private mLocBuilder:Ljava/lang/StringBuilder;

.field private mLocation:Landroid/location/Location;

.field private mLocationListener:Lcom/xiaopeng/factory/model/factorytest/hardwaretest/gps/GPSModel$MyLocationListener;

.field private mLocationManager:Landroid/location/LocationManager;

.field private mUDPClient:Lcom/xiaopeng/factory/model/factorytest/hardwaretest/gps/UDPClient;

.field private mUDPClientListener:Lcom/xiaopeng/factory/model/factorytest/hardwaretest/gps/UDPClient$UDPClientListener;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 87
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    const/4 v0, -0x1

    iput v0, p0, Lcom/xiaopeng/factory/model/factorytest/hardwaretest/gps/GPSModel;->currentMode:I

    .line 49
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/factory/model/factorytest/hardwaretest/gps/GPSModel;->mLocBuilder:Ljava/lang/StringBuilder;

    .line 257
    new-instance v0, Lcom/xiaopeng/factory/model/factorytest/hardwaretest/gps/GPSModel$1;

    invoke-direct {v0, p0}, Lcom/xiaopeng/factory/model/factorytest/hardwaretest/gps/GPSModel$1;-><init>(Lcom/xiaopeng/factory/model/factorytest/hardwaretest/gps/GPSModel;)V

    iput-object v0, p0, Lcom/xiaopeng/factory/model/factorytest/hardwaretest/gps/GPSModel;->mUDPClientListener:Lcom/xiaopeng/factory/model/factorytest/hardwaretest/gps/UDPClient$UDPClientListener;

    .line 88
    invoke-static {}, Lcom/xiaopeng/factory/MyApplication;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/factory/model/factorytest/hardwaretest/gps/GPSModel;->mContext:Landroid/content/Context;

    .line 89
    iget-object v0, p0, Lcom/xiaopeng/factory/model/factorytest/hardwaretest/gps/GPSModel;->mContext:Landroid/content/Context;

    const-string v1, "location"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/LocationManager;

    iput-object v0, p0, Lcom/xiaopeng/factory/model/factorytest/hardwaretest/gps/GPSModel;->mLocationManager:Landroid/location/LocationManager;

    .line 91
    invoke-virtual {p0}, Lcom/xiaopeng/factory/model/factorytest/hardwaretest/gps/GPSModel;->getCurrentGPSmode()I

    move-result v0

    iput v0, p0, Lcom/xiaopeng/factory/model/factorytest/hardwaretest/gps/GPSModel;->currentMode:I

    .line 93
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/factory/model/factorytest/hardwaretest/gps/GPSModel;->mGPSCNRGpsSatellites:Ljava/util/List;

    .line 94
    iget-object v0, p0, Lcom/xiaopeng/factory/model/factorytest/hardwaretest/gps/GPSModel;->gpsLooperThread:Lcom/xiaopeng/factory/model/factorytest/hardwaretest/gps/GPSModel$GPSLooperThread;

    if-nez v0, :cond_0

    .line 95
    new-instance v0, Lcom/xiaopeng/factory/model/factorytest/hardwaretest/gps/GPSModel$GPSLooperThread;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/xiaopeng/factory/model/factorytest/hardwaretest/gps/GPSModel$GPSLooperThread;-><init>(Lcom/xiaopeng/factory/model/factorytest/hardwaretest/gps/GPSModel;Lcom/xiaopeng/factory/model/factorytest/hardwaretest/gps/GPSModel$1;)V

    iput-object v0, p0, Lcom/xiaopeng/factory/model/factorytest/hardwaretest/gps/GPSModel;->gpsLooperThread:Lcom/xiaopeng/factory/model/factorytest/hardwaretest/gps/GPSModel$GPSLooperThread;

    .line 96
    iget-object v0, p0, Lcom/xiaopeng/factory/model/factorytest/hardwaretest/gps/GPSModel;->gpsLooperThread:Lcom/xiaopeng/factory/model/factorytest/hardwaretest/gps/GPSModel$GPSLooperThread;

    invoke-virtual {v0}, Lcom/xiaopeng/factory/model/factorytest/hardwaretest/gps/GPSModel$GPSLooperThread;->start()V

    .line 98
    :cond_0
    return-void
.end method

.method public constructor <init>(Lcom/xiaopeng/factory/presenter/factorytest/hardwaretest/gps/GPSPresenter;)V
    .locals 8
    .param p1, "presenter"    # Lcom/xiaopeng/factory/presenter/factorytest/hardwaretest/gps/GPSPresenter;

    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    const/4 v0, -0x1

    iput v0, p0, Lcom/xiaopeng/factory/model/factorytest/hardwaretest/gps/GPSModel;->currentMode:I

    .line 49
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/factory/model/factorytest/hardwaretest/gps/GPSModel;->mLocBuilder:Ljava/lang/StringBuilder;

    .line 257
    new-instance v0, Lcom/xiaopeng/factory/model/factorytest/hardwaretest/gps/GPSModel$1;

    invoke-direct {v0, p0}, Lcom/xiaopeng/factory/model/factorytest/hardwaretest/gps/GPSModel$1;-><init>(Lcom/xiaopeng/factory/model/factorytest/hardwaretest/gps/GPSModel;)V

    iput-object v0, p0, Lcom/xiaopeng/factory/model/factorytest/hardwaretest/gps/GPSModel;->mUDPClientListener:Lcom/xiaopeng/factory/model/factorytest/hardwaretest/gps/UDPClient$UDPClientListener;

    .line 58
    invoke-static {}, Lcom/xiaopeng/factory/MyApplication;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/factory/model/factorytest/hardwaretest/gps/GPSModel;->mContext:Landroid/content/Context;

    .line 59
    iput-object p1, p0, Lcom/xiaopeng/factory/model/factorytest/hardwaretest/gps/GPSModel;->mGPSPresenter:Lcom/xiaopeng/factory/presenter/factorytest/hardwaretest/gps/GPSPresenter;

    .line 60
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyy-MM-dd HH:mm:ss"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/xiaopeng/factory/model/factorytest/hardwaretest/gps/GPSModel;->format:Ljava/text/SimpleDateFormat;

    .line 61
    iget-object v0, p0, Lcom/xiaopeng/factory/model/factorytest/hardwaretest/gps/GPSModel;->mContext:Landroid/content/Context;

    const-string v1, "location"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/LocationManager;

    iput-object v0, p0, Lcom/xiaopeng/factory/model/factorytest/hardwaretest/gps/GPSModel;->mLocationManager:Landroid/location/LocationManager;

    .line 62
    new-instance v0, Lcom/amap/api/services/geocoder/GeocodeSearch;

    iget-object v1, p0, Lcom/xiaopeng/factory/model/factorytest/hardwaretest/gps/GPSModel;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/amap/api/services/geocoder/GeocodeSearch;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/xiaopeng/factory/model/factorytest/hardwaretest/gps/GPSModel;->geocoderSearch:Lcom/amap/api/services/geocoder/GeocodeSearch;

    .line 63
    iget-object v0, p0, Lcom/xiaopeng/factory/model/factorytest/hardwaretest/gps/GPSModel;->geocoderSearch:Lcom/amap/api/services/geocoder/GeocodeSearch;

    invoke-virtual {v0, p0}, Lcom/amap/api/services/geocoder/GeocodeSearch;->setOnGeocodeSearchListener(Lcom/amap/api/services/geocoder/GeocodeSearch$OnGeocodeSearchListener;)V

    .line 65
    invoke-virtual {p0}, Lcom/xiaopeng/factory/model/factorytest/hardwaretest/gps/GPSModel;->getCurrentGPSmode()I

    move-result v0

    iput v0, p0, Lcom/xiaopeng/factory/model/factorytest/hardwaretest/gps/GPSModel;->currentMode:I

    .line 66
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/xiaopeng/factory/model/factorytest/hardwaretest/gps/GPSModel;->setGPSmode(I)Z

    .line 67
    invoke-virtual {p0}, Lcom/xiaopeng/factory/model/factorytest/hardwaretest/gps/GPSModel;->getCurrentGPSmode()I

    .line 69
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/factory/model/factorytest/hardwaretest/gps/GPSModel;->mGPSCNRGpsSatellites:Ljava/util/List;

    .line 70
    new-instance v0, Lcom/xiaopeng/factory/model/factorytest/hardwaretest/gps/GPSModel$MyLocationListener;

    iget-object v1, p0, Lcom/xiaopeng/factory/model/factorytest/hardwaretest/gps/GPSModel;->mGPSPresenter:Lcom/xiaopeng/factory/presenter/factorytest/hardwaretest/gps/GPSPresenter;

    invoke-direct {v0, p0, v1}, Lcom/xiaopeng/factory/model/factorytest/hardwaretest/gps/GPSModel$MyLocationListener;-><init>(Lcom/xiaopeng/factory/model/factorytest/hardwaretest/gps/GPSModel;Lcom/xiaopeng/factory/presenter/factorytest/hardwaretest/gps/GPSPresenter;)V

    iput-object v0, p0, Lcom/xiaopeng/factory/model/factorytest/hardwaretest/gps/GPSModel;->mLocationListener:Lcom/xiaopeng/factory/model/factorytest/hardwaretest/gps/GPSModel$MyLocationListener;

    .line 79
    iget-object v2, p0, Lcom/xiaopeng/factory/model/factorytest/hardwaretest/gps/GPSModel;->mLocationManager:Landroid/location/LocationManager;

    const-string v3, "gps"

    iget-object v7, p0, Lcom/xiaopeng/factory/model/factorytest/hardwaretest/gps/GPSModel;->mLocationListener:Lcom/xiaopeng/factory/model/factorytest/hardwaretest/gps/GPSModel$MyLocationListener;

    const-wide/16 v4, 0x3e8

    const/high16 v6, 0x3f800000    # 1.0f

    invoke-virtual/range {v2 .. v7}, Landroid/location/LocationManager;->requestLocationUpdates(Ljava/lang/String;JFLandroid/location/LocationListener;)V

    .line 81
    new-instance v0, Lcom/xiaopeng/factory/model/factorytest/hardwaretest/gps/GPSModel$MyGpsStatusListener;

    iget-object v1, p0, Lcom/xiaopeng/factory/model/factorytest/hardwaretest/gps/GPSModel;->mGPSPresenter:Lcom/xiaopeng/factory/presenter/factorytest/hardwaretest/gps/GPSPresenter;

    invoke-direct {v0, p0, v1}, Lcom/xiaopeng/factory/model/factorytest/hardwaretest/gps/GPSModel$MyGpsStatusListener;-><init>(Lcom/xiaopeng/factory/model/factorytest/hardwaretest/gps/GPSModel;Lcom/xiaopeng/factory/presenter/factorytest/hardwaretest/gps/GPSPresenter;)V

    iput-object v0, p0, Lcom/xiaopeng/factory/model/factorytest/hardwaretest/gps/GPSModel;->mGpsStatusListener:Lcom/xiaopeng/factory/model/factorytest/hardwaretest/gps/GPSModel$MyGpsStatusListener;

    .line 82
    iget-object v0, p0, Lcom/xiaopeng/factory/model/factorytest/hardwaretest/gps/GPSModel;->mLocationManager:Landroid/location/LocationManager;

    iget-object v1, p0, Lcom/xiaopeng/factory/model/factorytest/hardwaretest/gps/GPSModel;->mGpsStatusListener:Lcom/xiaopeng/factory/model/factorytest/hardwaretest/gps/GPSModel$MyGpsStatusListener;

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->addGpsStatusListener(Landroid/location/GpsStatus$Listener;)Z

    .line 84
    invoke-static {}, Lcom/xiaopeng/factory/model/factorytest/hardwaretest/gps/UDPClient;->getInstance()Lcom/xiaopeng/factory/model/factorytest/hardwaretest/gps/UDPClient;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/factory/model/factorytest/hardwaretest/gps/GPSModel;->mUDPClient:Lcom/xiaopeng/factory/model/factorytest/hardwaretest/gps/UDPClient;

    .line 85
    return-void
.end method

.method static synthetic access$100(Lcom/xiaopeng/factory/model/factorytest/hardwaretest/gps/GPSModel;)Lcom/xiaopeng/factory/presenter/factorytest/hardwaretest/gps/GPSPresenter;
    .locals 1
    .param p0, "x0"    # Lcom/xiaopeng/factory/model/factorytest/hardwaretest/gps/GPSModel;

    .line 37
    iget-object v0, p0, Lcom/xiaopeng/factory/model/factorytest/hardwaretest/gps/GPSModel;->mGPSPresenter:Lcom/xiaopeng/factory/presenter/factorytest/hardwaretest/gps/GPSPresenter;

    return-object v0
.end method

.method static synthetic access$200(Lcom/xiaopeng/factory/model/factorytest/hardwaretest/gps/GPSModel;)Lcom/xiaopeng/factory/model/factorytest/hardwaretest/gps/GPSModel$MyGpsStatusListener;
    .locals 1
    .param p0, "x0"    # Lcom/xiaopeng/factory/model/factorytest/hardwaretest/gps/GPSModel;

    .line 37
    iget-object v0, p0, Lcom/xiaopeng/factory/model/factorytest/hardwaretest/gps/GPSModel;->mGpsStatusListener:Lcom/xiaopeng/factory/model/factorytest/hardwaretest/gps/GPSModel$MyGpsStatusListener;

    return-object v0
.end method

.method static synthetic access$202(Lcom/xiaopeng/factory/model/factorytest/hardwaretest/gps/GPSModel;Lcom/xiaopeng/factory/model/factorytest/hardwaretest/gps/GPSModel$MyGpsStatusListener;)Lcom/xiaopeng/factory/model/factorytest/hardwaretest/gps/GPSModel$MyGpsStatusListener;
    .locals 0
    .param p0, "x0"    # Lcom/xiaopeng/factory/model/factorytest/hardwaretest/gps/GPSModel;
    .param p1, "x1"    # Lcom/xiaopeng/factory/model/factorytest/hardwaretest/gps/GPSModel$MyGpsStatusListener;

    .line 37
    iput-object p1, p0, Lcom/xiaopeng/factory/model/factorytest/hardwaretest/gps/GPSModel;->mGpsStatusListener:Lcom/xiaopeng/factory/model/factorytest/hardwaretest/gps/GPSModel$MyGpsStatusListener;

    return-object p1
.end method

.method static synthetic access$300(Lcom/xiaopeng/factory/model/factorytest/hardwaretest/gps/GPSModel;)Landroid/location/LocationManager;
    .locals 1
    .param p0, "x0"    # Lcom/xiaopeng/factory/model/factorytest/hardwaretest/gps/GPSModel;

    .line 37
    iget-object v0, p0, Lcom/xiaopeng/factory/model/factorytest/hardwaretest/gps/GPSModel;->mLocationManager:Landroid/location/LocationManager;

    return-object v0
.end method

.method static synthetic access$400(Lcom/xiaopeng/factory/model/factorytest/hardwaretest/gps/GPSModel;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/xiaopeng/factory/model/factorytest/hardwaretest/gps/GPSModel;

    .line 37
    iget-object v0, p0, Lcom/xiaopeng/factory/model/factorytest/hardwaretest/gps/GPSModel;->mGPSCNRGpsSatellites:Ljava/util/List;

    return-object v0
.end method

.method private getCriteria()Landroid/location/Criteria;
    .locals 2

    .line 201
    new-instance v0, Landroid/location/Criteria;

    invoke-direct {v0}, Landroid/location/Criteria;-><init>()V

    .line 203
    .local v0, "criteria":Landroid/location/Criteria;
    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/location/Criteria;->setAccuracy(I)V

    .line 205
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/location/Criteria;->setSpeedRequired(Z)V

    .line 207
    invoke-virtual {v0, v1}, Landroid/location/Criteria;->setCostAllowed(Z)V

    .line 209
    invoke-virtual {v0, v1}, Landroid/location/Criteria;->setBearingRequired(Z)V

    .line 211
    invoke-virtual {v0, v1}, Landroid/location/Criteria;->setAltitudeRequired(Z)V

    .line 213
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/location/Criteria;->setPowerRequirement(I)V

    .line 214
    return-object v0
.end method

.method private startSearchDetailAddr(Landroid/location/Location;)V
    .locals 5
    .param p1, "location"    # Landroid/location/Location;

    .line 189
    new-instance v0, Lcom/amap/api/services/core/LatLonPoint;

    invoke-virtual {p1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v1

    invoke-virtual {p1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v3

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/amap/api/services/core/LatLonPoint;-><init>(DD)V

    .line 190
    .local v0, "latLonPoint":Lcom/amap/api/services/core/LatLonPoint;
    new-instance v1, Lcom/amap/api/services/geocoder/RegeocodeQuery;

    const-string v2, "gps"

    const/high16 v3, 0x43480000    # 200.0f

    invoke-direct {v1, v0, v3, v2}, Lcom/amap/api/services/geocoder/RegeocodeQuery;-><init>(Lcom/amap/api/services/core/LatLonPoint;FLjava/lang/String;)V

    .line 192
    .local v1, "query":Lcom/amap/api/services/geocoder/RegeocodeQuery;
    iget-object v2, p0, Lcom/xiaopeng/factory/model/factorytest/hardwaretest/gps/GPSModel;->geocoderSearch:Lcom/amap/api/services/geocoder/GeocodeSearch;

    invoke-virtual {v2, v1}, Lcom/amap/api/services/geocoder/GeocodeSearch;->getFromLocationAsyn(Lcom/amap/api/services/geocoder/RegeocodeQuery;)V

    .line 193
    return-void
.end method


# virtual methods
.method public closeUDPClient()V
    .locals 1

    .line 222
    iget-object v0, p0, Lcom/xiaopeng/factory/model/factorytest/hardwaretest/gps/GPSModel;->mUDPClient:Lcom/xiaopeng/factory/model/factorytest/hardwaretest/gps/UDPClient;

    invoke-virtual {v0}, Lcom/xiaopeng/factory/model/factorytest/hardwaretest/gps/UDPClient;->close()V

    .line 223
    return-void
.end method

.method public destory()V
    .locals 3

    .line 159
    const-string v0, "GPSModel"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "destory , currentMode = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/xiaopeng/factory/model/factorytest/hardwaretest/gps/GPSModel;->currentMode:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/lib/utils/LogUtils;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 160
    iget v0, p0, Lcom/xiaopeng/factory/model/factorytest/hardwaretest/gps/GPSModel;->currentMode:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 161
    iget-object v0, p0, Lcom/xiaopeng/factory/model/factorytest/hardwaretest/gps/GPSModel;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "location_mode"

    iget v2, p0, Lcom/xiaopeng/factory/model/factorytest/hardwaretest/gps/GPSModel;->currentMode:I

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 163
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/factory/model/factorytest/hardwaretest/gps/GPSModel;->mLocationListener:Lcom/xiaopeng/factory/model/factorytest/hardwaretest/gps/GPSModel$MyLocationListener;

    if-eqz v0, :cond_1

    .line 164
    iget-object v0, p0, Lcom/xiaopeng/factory/model/factorytest/hardwaretest/gps/GPSModel;->mLocationManager:Landroid/location/LocationManager;

    iget-object v1, p0, Lcom/xiaopeng/factory/model/factorytest/hardwaretest/gps/GPSModel;->mLocationListener:Lcom/xiaopeng/factory/model/factorytest/hardwaretest/gps/GPSModel$MyLocationListener;

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->removeUpdates(Landroid/location/LocationListener;)V

    .line 167
    :cond_1
    iget-object v0, p0, Lcom/xiaopeng/factory/model/factorytest/hardwaretest/gps/GPSModel;->gpsLooperThread:Lcom/xiaopeng/factory/model/factorytest/hardwaretest/gps/GPSModel$GPSLooperThread;

    if-eqz v0, :cond_2

    .line 168
    iget-object v0, p0, Lcom/xiaopeng/factory/model/factorytest/hardwaretest/gps/GPSModel;->gpsLooperThread:Lcom/xiaopeng/factory/model/factorytest/hardwaretest/gps/GPSModel$GPSLooperThread;

    invoke-virtual {v0}, Lcom/xiaopeng/factory/model/factorytest/hardwaretest/gps/GPSModel$GPSLooperThread;->interrupt()V

    .line 169
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/xiaopeng/factory/model/factorytest/hardwaretest/gps/GPSModel;->gpsLooperThread:Lcom/xiaopeng/factory/model/factorytest/hardwaretest/gps/GPSModel$GPSLooperThread;

    .line 171
    :cond_2
    return-void
.end method

.method public getCurrentGPSmode()I
    .locals 4

    .line 132
    const/4 v0, 0x0

    .line 134
    .local v0, "mode":I
    :try_start_0
    iget-object v1, p0, Lcom/xiaopeng/factory/model/factorytest/hardwaretest/gps/GPSModel;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "location_mode"

    invoke-static {v1, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v1
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v1

    .line 137
    goto :goto_0

    .line 135
    :catch_0
    move-exception v1

    .line 136
    .local v1, "e":Landroid/provider/Settings$SettingNotFoundException;
    invoke-virtual {v1}, Landroid/provider/Settings$SettingNotFoundException;->printStackTrace()V

    .line 138
    .end local v1    # "e":Landroid/provider/Settings$SettingNotFoundException;
    :goto_0
    const-string v1, "GPSModel"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getCurrentGPSmode mode = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/xiaopeng/lib/utils/LogUtils;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 139
    return v0
.end method

.method public getGPSCNR()Ljava/lang/String;
    .locals 5

    .line 120
    const-string v0, ""

    .line 121
    .local v0, "CNRvalue":Ljava/lang/String;
    iget-object v1, p0, Lcom/xiaopeng/factory/model/factorytest/hardwaretest/gps/GPSModel;->mGPSCNRGpsSatellites:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    .line 122
    .local v1, "satellitesSize":I
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 123
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_0

    .line 124
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/xiaopeng/factory/model/factorytest/hardwaretest/gps/GPSModel;->mGPSCNRGpsSatellites:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/location/GpsSatellite;

    invoke-virtual {v4}, Landroid/location/GpsSatellite;->getPrn()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 125
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/xiaopeng/factory/model/factorytest/hardwaretest/gps/GPSModel;->mGPSCNRGpsSatellites:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/location/GpsSatellite;

    invoke-virtual {v4}, Landroid/location/GpsSatellite;->getSnr()F

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 123
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 127
    .end local v2    # "i":I
    :cond_0
    const-string v2, "GPSModel"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getGPSCNR CNRvalue = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/xiaopeng/lib/utils/LogUtils;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 128
    return-object v0
.end method

.method public getLastKnownLocation()Landroid/location/Location;
    .locals 2

    .line 147
    iget-object v0, p0, Lcom/xiaopeng/factory/model/factorytest/hardwaretest/gps/GPSModel;->mLocationManager:Landroid/location/LocationManager;

    const-string v1, "gps"

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->getLastKnownLocation(Ljava/lang/String;)Landroid/location/Location;

    move-result-object v0

    .line 148
    .local v0, "location":Landroid/location/Location;
    return-object v0
.end method

.method public hasGPSFeature()Z
    .locals 4

    .line 183
    iget-object v0, p0, Lcom/xiaopeng/factory/model/factorytest/hardwaretest/gps/GPSModel;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "android.hardware.location.gps"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    .line 184
    .local v0, "withFeature":Z
    const-string v1, "GPSModel"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "hasGPSFeature withFeature = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/xiaopeng/lib/utils/LogUtils;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 185
    return v0
.end method

.method public isGPSEnabled()Z
    .locals 4

    .line 174
    const/4 v0, 0x0

    .line 175
    .local v0, "isGpsEnabled":Z
    invoke-virtual {p0}, Lcom/xiaopeng/factory/model/factorytest/hardwaretest/gps/GPSModel;->hasGPSFeature()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 176
    iget-object v1, p0, Lcom/xiaopeng/factory/model/factorytest/hardwaretest/gps/GPSModel;->mLocationManager:Landroid/location/LocationManager;

    const-string v2, "gps"

    invoke-virtual {v1, v2}, Landroid/location/LocationManager;->isProviderEnabled(Ljava/lang/String;)Z

    move-result v0

    .line 178
    :cond_0
    const-string v1, "GPSModel"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isGPSEnabled = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/xiaopeng/lib/utils/LogUtils;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 179
    return v0
.end method

.method public onGeocodeSearched(Lcom/amap/api/services/geocoder/GeocodeResult;I)V
    .locals 0
    .param p1, "geocodeResult"    # Lcom/amap/api/services/geocoder/GeocodeResult;
    .param p2, "i"    # I

    .line 255
    return-void
.end method

.method public onRegeocodeSearched(Lcom/amap/api/services/geocoder/RegeocodeResult;I)V
    .locals 6
    .param p1, "regeocodeResult"    # Lcom/amap/api/services/geocoder/RegeocodeResult;
    .param p2, "i"    # I

    .line 231
    iget-object v0, p0, Lcom/xiaopeng/factory/model/factorytest/hardwaretest/gps/GPSModel;->mLocBuilder:Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 232
    iget-object v0, p0, Lcom/xiaopeng/factory/model/factorytest/hardwaretest/gps/GPSModel;->mLocation:Landroid/location/Location;

    if-eqz v0, :cond_0

    .line 233
    iget-object v0, p0, Lcom/xiaopeng/factory/model/factorytest/hardwaretest/gps/GPSModel;->mLocation:Landroid/location/Location;

    invoke-virtual {v0}, Landroid/location/Location;->getTime()J

    move-result-wide v0

    .line 234
    .local v0, "time":J
    const-string v2, "yyyy-MM-dd HH:mm:ss"

    invoke-static {v2}, Lcom/xiaopeng/factory/utils/TimeUtil;->getDate(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 235
    .local v2, "locationTime":Ljava/lang/String;
    iget-object v3, p0, Lcom/xiaopeng/factory/model/factorytest/hardwaretest/gps/GPSModel;->mLocBuilder:Ljava/lang/StringBuilder;

    const-string v4, "\u7ecf\u5ea6: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/xiaopeng/factory/model/factorytest/hardwaretest/gps/GPSModel;->mLocation:Landroid/location/Location;

    invoke-virtual {v4}, Landroid/location/Location;->getLongitude()D

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v4, "\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "\u7eac\u5ea6: "

    .line 236
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/xiaopeng/factory/model/factorytest/hardwaretest/gps/GPSModel;->mLocation:Landroid/location/Location;

    invoke-virtual {v4}, Landroid/location/Location;->getLatitude()D

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v4, "\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "\u6d77\u62d4\u9ad8\u5ea6: "

    .line 237
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/xiaopeng/factory/model/factorytest/hardwaretest/gps/GPSModel;->mLocation:Landroid/location/Location;

    invoke-virtual {v4}, Landroid/location/Location;->getAltitude()D

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v4, "\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "\u65f6\u95f4: "

    .line 238
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 240
    .end local v0    # "time":J
    .end local v2    # "locationTime":Ljava/lang/String;
    :cond_0
    const/16 v0, 0x3e8

    if-ne p2, v0, :cond_1

    .line 241
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/amap/api/services/geocoder/RegeocodeResult;->getRegeocodeAddress()Lcom/amap/api/services/geocoder/RegeocodeAddress;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 242
    invoke-virtual {p1}, Lcom/amap/api/services/geocoder/RegeocodeResult;->getRegeocodeAddress()Lcom/amap/api/services/geocoder/RegeocodeAddress;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amap/api/services/geocoder/RegeocodeAddress;->getFormatAddress()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 243
    invoke-virtual {p1}, Lcom/amap/api/services/geocoder/RegeocodeResult;->getRegeocodeAddress()Lcom/amap/api/services/geocoder/RegeocodeAddress;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amap/api/services/geocoder/RegeocodeAddress;->getFormatAddress()Ljava/lang/String;

    move-result-object v0

    .line 244
    .local v0, "addressName":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 245
    iget-object v1, p0, Lcom/xiaopeng/factory/model/factorytest/hardwaretest/gps/GPSModel;->mLocBuilder:Ljava/lang/StringBuilder;

    const-string v2, "\u8be6\u7ec6\u5730\u5740: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 249
    .end local v0    # "addressName":Ljava/lang/String;
    :cond_1
    iget-object v0, p0, Lcom/xiaopeng/factory/model/factorytest/hardwaretest/gps/GPSModel;->mGPSPresenter:Lcom/xiaopeng/factory/presenter/factorytest/hardwaretest/gps/GPSPresenter;

    iget-object v1, p0, Lcom/xiaopeng/factory/model/factorytest/hardwaretest/gps/GPSModel;->mLocBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xiaopeng/factory/presenter/factorytest/hardwaretest/gps/GPSPresenter;->updateLocation(Ljava/lang/String;)V

    .line 250
    return-void
.end method

.method public openUDPClient()V
    .locals 1

    .line 218
    iget-object v0, p0, Lcom/xiaopeng/factory/model/factorytest/hardwaretest/gps/GPSModel;->mUDPClient:Lcom/xiaopeng/factory/model/factorytest/hardwaretest/gps/UDPClient;

    invoke-virtual {v0}, Lcom/xiaopeng/factory/model/factorytest/hardwaretest/gps/UDPClient;->open()V

    .line 219
    return-void
.end method

.method public setGPSEnable()V
    .locals 3

    .line 101
    const-string v0, "GPSModel"

    const-string v1, "setGPSEnable "

    invoke-static {v0, v1}, Lcom/xiaopeng/lib/utils/LogUtils;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 102
    iget-object v0, p0, Lcom/xiaopeng/factory/model/factorytest/hardwaretest/gps/GPSModel;->mLocationManager:Landroid/location/LocationManager;

    const-string v1, "gps"

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->isProviderEnabled(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/xiaopeng/factory/model/factorytest/hardwaretest/gps/GPSModel;->hasGPSFeature()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 103
    iget v0, p0, Lcom/xiaopeng/factory/model/factorytest/hardwaretest/gps/GPSModel;->currentMode:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    .line 104
    iget-object v0, p0, Lcom/xiaopeng/factory/model/factorytest/hardwaretest/gps/GPSModel;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v2, "location_mode"

    invoke-static {v0, v2, v1}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 108
    :cond_0
    return-void
.end method

.method public setGPSmode(I)Z
    .locals 3
    .param p1, "mode"    # I

    .line 111
    const-string v0, "GPSModel"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setGPSmode mode = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/lib/utils/LogUtils;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 112
    const/4 v0, -0x1

    if-eq p1, v0, :cond_0

    invoke-virtual {p0}, Lcom/xiaopeng/factory/model/factorytest/hardwaretest/gps/GPSModel;->getCurrentGPSmode()I

    move-result v0

    if-eq p1, v0, :cond_0

    .line 113
    iget-object v0, p0, Lcom/xiaopeng/factory/model/factorytest/hardwaretest/gps/GPSModel;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "location_mode"

    invoke-static {v0, v1, p1}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 114
    const/4 v0, 0x1

    return v0

    .line 116
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public setUDPClientListener()V
    .locals 2

    .line 226
    iget-object v0, p0, Lcom/xiaopeng/factory/model/factorytest/hardwaretest/gps/GPSModel;->mUDPClient:Lcom/xiaopeng/factory/model/factorytest/hardwaretest/gps/UDPClient;

    iget-object v1, p0, Lcom/xiaopeng/factory/model/factorytest/hardwaretest/gps/GPSModel;->mUDPClientListener:Lcom/xiaopeng/factory/model/factorytest/hardwaretest/gps/UDPClient$UDPClientListener;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/factory/model/factorytest/hardwaretest/gps/UDPClient;->setUDPClientListener(Lcom/xiaopeng/factory/model/factorytest/hardwaretest/gps/UDPClient$UDPClientListener;)V

    .line 227
    return-void
.end method

.method public startSearchLocation(Landroid/location/Location;)V
    .locals 0
    .param p1, "location"    # Landroid/location/Location;

    .line 152
    if-eqz p1, :cond_0

    .line 153
    iput-object p1, p0, Lcom/xiaopeng/factory/model/factorytest/hardwaretest/gps/GPSModel;->mLocation:Landroid/location/Location;

    .line 154
    invoke-direct {p0, p1}, Lcom/xiaopeng/factory/model/factorytest/hardwaretest/gps/GPSModel;->startSearchDetailAddr(Landroid/location/Location;)V

    .line 156
    :cond_0
    return-void
.end method
