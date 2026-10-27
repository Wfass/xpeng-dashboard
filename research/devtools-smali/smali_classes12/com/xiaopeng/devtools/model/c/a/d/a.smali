.class public Lcom/xiaopeng/devtools/model/c/a/d/a;
.super Ljava/lang/Object;
.source "GPSModel.java"

# interfaces
.implements Lcom/amap/api/services/geocoder/b$a;
.implements Lcom/xiaopeng/devtools/model/c/a/d/b;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaopeng/devtools/model/c/a/d/a$c;,
        Lcom/xiaopeng/devtools/model/c/a/d/a$b;,
        Lcom/xiaopeng/devtools/model/c/a/d/a$a;
    }
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field private mLocationManager:Landroid/location/LocationManager;

.field private sY:I

.field private sZ:Lcom/xiaopeng/devtools/model/c/a/d/a$c;

.field private ta:Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/d/a;

.field private tb:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/location/GpsSatellite;",
            ">;"
        }
    .end annotation
.end field

.field private tc:Lcom/xiaopeng/devtools/model/c/a/d/a$b;

.field private td:Lcom/amap/api/services/geocoder/b;

.field private te:Ljava/lang/StringBuilder;

.field private tf:Landroid/location/Location;

.field private tg:Lcom/xiaopeng/devtools/model/c/a/d/a$a;

.field private th:Lcom/xiaopeng/devtools/model/c/a/d/c;

.field private ti:Lcom/xiaopeng/devtools/model/c/a/d/c$a;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 81
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    const/4 v0, -0x1

    iput v0, p0, Lcom/xiaopeng/devtools/model/c/a/d/a;->sY:I

    .line 47
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/devtools/model/c/a/d/a;->te:Ljava/lang/StringBuilder;

    .line 263
    new-instance v0, Lcom/xiaopeng/devtools/model/c/a/d/a$1;

    invoke-direct {v0, p0}, Lcom/xiaopeng/devtools/model/c/a/d/a$1;-><init>(Lcom/xiaopeng/devtools/model/c/a/d/a;)V

    iput-object v0, p0, Lcom/xiaopeng/devtools/model/c/a/d/a;->ti:Lcom/xiaopeng/devtools/model/c/a/d/c$a;

    .line 82
    invoke-static {}, Lcom/xiaopeng/devtools/MyApplication;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/devtools/model/c/a/d/a;->mContext:Landroid/content/Context;

    .line 83
    iget-object v0, p0, Lcom/xiaopeng/devtools/model/c/a/d/a;->mContext:Landroid/content/Context;

    const-string v1, "location"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/LocationManager;

    iput-object v0, p0, Lcom/xiaopeng/devtools/model/c/a/d/a;->mLocationManager:Landroid/location/LocationManager;

    .line 85
    invoke-virtual {p0}, Lcom/xiaopeng/devtools/model/c/a/d/a;->gw()I

    move-result v0

    iput v0, p0, Lcom/xiaopeng/devtools/model/c/a/d/a;->sY:I

    .line 87
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/devtools/model/c/a/d/a;->tb:Ljava/util/List;

    .line 88
    iget-object v0, p0, Lcom/xiaopeng/devtools/model/c/a/d/a;->tg:Lcom/xiaopeng/devtools/model/c/a/d/a$a;

    if-nez v0, :cond_0

    .line 89
    new-instance v0, Lcom/xiaopeng/devtools/model/c/a/d/a$a;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/xiaopeng/devtools/model/c/a/d/a$a;-><init>(Lcom/xiaopeng/devtools/model/c/a/d/a;Lcom/xiaopeng/devtools/model/c/a/d/a$1;)V

    iput-object v0, p0, Lcom/xiaopeng/devtools/model/c/a/d/a;->tg:Lcom/xiaopeng/devtools/model/c/a/d/a$a;

    .line 90
    iget-object v0, p0, Lcom/xiaopeng/devtools/model/c/a/d/a;->tg:Lcom/xiaopeng/devtools/model/c/a/d/a$a;

    invoke-virtual {v0}, Lcom/xiaopeng/devtools/model/c/a/d/a$a;->start()V

    .line 92
    :cond_0
    return-void
.end method

.method public constructor <init>(Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/d/a;)V
    .locals 7

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    const/4 v0, -0x1

    iput v0, p0, Lcom/xiaopeng/devtools/model/c/a/d/a;->sY:I

    .line 47
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/devtools/model/c/a/d/a;->te:Ljava/lang/StringBuilder;

    .line 263
    new-instance v0, Lcom/xiaopeng/devtools/model/c/a/d/a$1;

    invoke-direct {v0, p0}, Lcom/xiaopeng/devtools/model/c/a/d/a$1;-><init>(Lcom/xiaopeng/devtools/model/c/a/d/a;)V

    iput-object v0, p0, Lcom/xiaopeng/devtools/model/c/a/d/a;->ti:Lcom/xiaopeng/devtools/model/c/a/d/c$a;

    .line 53
    invoke-static {}, Lcom/xiaopeng/devtools/MyApplication;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/devtools/model/c/a/d/a;->mContext:Landroid/content/Context;

    .line 54
    iput-object p1, p0, Lcom/xiaopeng/devtools/model/c/a/d/a;->ta:Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/d/a;

    .line 55
    iget-object p1, p0, Lcom/xiaopeng/devtools/model/c/a/d/a;->mContext:Landroid/content/Context;

    const-string v0, "location"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/location/LocationManager;

    iput-object p1, p0, Lcom/xiaopeng/devtools/model/c/a/d/a;->mLocationManager:Landroid/location/LocationManager;

    .line 56
    new-instance p1, Lcom/amap/api/services/geocoder/b;

    iget-object v0, p0, Lcom/xiaopeng/devtools/model/c/a/d/a;->mContext:Landroid/content/Context;

    invoke-direct {p1, v0}, Lcom/amap/api/services/geocoder/b;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/xiaopeng/devtools/model/c/a/d/a;->td:Lcom/amap/api/services/geocoder/b;

    .line 57
    iget-object p1, p0, Lcom/xiaopeng/devtools/model/c/a/d/a;->td:Lcom/amap/api/services/geocoder/b;

    invoke-virtual {p1, p0}, Lcom/amap/api/services/geocoder/b;->a(Lcom/amap/api/services/geocoder/b$a;)V

    .line 59
    invoke-virtual {p0}, Lcom/xiaopeng/devtools/model/c/a/d/a;->gw()I

    move-result p1

    iput p1, p0, Lcom/xiaopeng/devtools/model/c/a/d/a;->sY:I

    .line 60
    const/4 p1, 0x3

    invoke-virtual {p0, p1}, Lcom/xiaopeng/devtools/model/c/a/d/a;->ce(I)Z

    .line 61
    invoke-virtual {p0}, Lcom/xiaopeng/devtools/model/c/a/d/a;->gw()I

    .line 63
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/xiaopeng/devtools/model/c/a/d/a;->tb:Ljava/util/List;

    .line 64
    new-instance p1, Lcom/xiaopeng/devtools/model/c/a/d/a$c;

    iget-object v0, p0, Lcom/xiaopeng/devtools/model/c/a/d/a;->ta:Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/d/a;

    invoke-direct {p1, p0, v0}, Lcom/xiaopeng/devtools/model/c/a/d/a$c;-><init>(Lcom/xiaopeng/devtools/model/c/a/d/a;Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/d/a;)V

    iput-object p1, p0, Lcom/xiaopeng/devtools/model/c/a/d/a;->sZ:Lcom/xiaopeng/devtools/model/c/a/d/a$c;

    .line 73
    iget-object v1, p0, Lcom/xiaopeng/devtools/model/c/a/d/a;->mLocationManager:Landroid/location/LocationManager;

    const-string v2, "gps"

    iget-object v6, p0, Lcom/xiaopeng/devtools/model/c/a/d/a;->sZ:Lcom/xiaopeng/devtools/model/c/a/d/a$c;

    const-wide/16 v3, 0x3e8

    const/high16 v5, 0x3f800000    # 1.0f

    invoke-virtual/range {v1 .. v6}, Landroid/location/LocationManager;->requestLocationUpdates(Ljava/lang/String;JFLandroid/location/LocationListener;)V

    .line 75
    new-instance p1, Lcom/xiaopeng/devtools/model/c/a/d/a$b;

    iget-object v0, p0, Lcom/xiaopeng/devtools/model/c/a/d/a;->ta:Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/d/a;

    invoke-direct {p1, p0, v0}, Lcom/xiaopeng/devtools/model/c/a/d/a$b;-><init>(Lcom/xiaopeng/devtools/model/c/a/d/a;Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/d/a;)V

    iput-object p1, p0, Lcom/xiaopeng/devtools/model/c/a/d/a;->tc:Lcom/xiaopeng/devtools/model/c/a/d/a$b;

    .line 76
    iget-object p1, p0, Lcom/xiaopeng/devtools/model/c/a/d/a;->mLocationManager:Landroid/location/LocationManager;

    iget-object v0, p0, Lcom/xiaopeng/devtools/model/c/a/d/a;->tc:Lcom/xiaopeng/devtools/model/c/a/d/a$b;

    invoke-virtual {p1, v0}, Landroid/location/LocationManager;->addGpsStatusListener(Landroid/location/GpsStatus$Listener;)Z

    .line 78
    invoke-static {}, Lcom/xiaopeng/devtools/model/c/a/d/c;->gD()Lcom/xiaopeng/devtools/model/c/a/d/c;

    move-result-object p1

    iput-object p1, p0, Lcom/xiaopeng/devtools/model/c/a/d/a;->th:Lcom/xiaopeng/devtools/model/c/a/d/c;

    .line 79
    return-void
.end method

.method static synthetic a(Lcom/xiaopeng/devtools/model/c/a/d/a;Lcom/xiaopeng/devtools/model/c/a/d/a$b;)Lcom/xiaopeng/devtools/model/c/a/d/a$b;
    .locals 0

    .line 36
    iput-object p1, p0, Lcom/xiaopeng/devtools/model/c/a/d/a;->tc:Lcom/xiaopeng/devtools/model/c/a/d/a$b;

    return-object p1
.end method

.method static synthetic a(Lcom/xiaopeng/devtools/model/c/a/d/a;)Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/d/a;
    .locals 0

    .line 36
    iget-object p0, p0, Lcom/xiaopeng/devtools/model/c/a/d/a;->ta:Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/d/a;

    return-object p0
.end method

.method static synthetic b(Lcom/xiaopeng/devtools/model/c/a/d/a;)Lcom/xiaopeng/devtools/model/c/a/d/a$b;
    .locals 0

    .line 36
    iget-object p0, p0, Lcom/xiaopeng/devtools/model/c/a/d/a;->tc:Lcom/xiaopeng/devtools/model/c/a/d/a$b;

    return-object p0
.end method

.method private b(Landroid/location/Location;)V
    .locals 5

    .line 192
    new-instance v0, Lcom/amap/api/services/core/LatLonPoint;

    invoke-virtual {p1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v1

    invoke-virtual {p1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v3

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/amap/api/services/core/LatLonPoint;-><init>(DD)V

    .line 193
    new-instance p1, Lcom/amap/api/services/geocoder/c;

    const-string v1, "gps"

    const/high16 v2, 0x43480000    # 200.0f

    invoke-direct {p1, v0, v2, v1}, Lcom/amap/api/services/geocoder/c;-><init>(Lcom/amap/api/services/core/LatLonPoint;FLjava/lang/String;)V

    .line 195
    iget-object v0, p0, Lcom/xiaopeng/devtools/model/c/a/d/a;->td:Lcom/amap/api/services/geocoder/b;

    invoke-virtual {v0, p1}, Lcom/amap/api/services/geocoder/b;->b(Lcom/amap/api/services/geocoder/c;)V

    .line 196
    return-void
.end method

.method static synthetic c(Lcom/xiaopeng/devtools/model/c/a/d/a;)Landroid/location/LocationManager;
    .locals 0

    .line 36
    iget-object p0, p0, Lcom/xiaopeng/devtools/model/c/a/d/a;->mLocationManager:Landroid/location/LocationManager;

    return-object p0
.end method

.method static synthetic d(Lcom/xiaopeng/devtools/model/c/a/d/a;)Ljava/util/List;
    .locals 0

    .line 36
    iget-object p0, p0, Lcom/xiaopeng/devtools/model/c/a/d/a;->tb:Ljava/util/List;

    return-object p0
.end method


# virtual methods
.method public a(Landroid/location/Location;)V
    .locals 0

    .line 152
    if-eqz p1, :cond_0

    .line 153
    iput-object p1, p0, Lcom/xiaopeng/devtools/model/c/a/d/a;->tf:Landroid/location/Location;

    .line 154
    invoke-direct {p0, p1}, Lcom/xiaopeng/devtools/model/c/a/d/a;->b(Landroid/location/Location;)V

    .line 156
    :cond_0
    return-void
.end method

.method public a(Lcom/amap/api/services/geocoder/a;I)V
    .locals 0

    .line 261
    return-void
.end method

.method public a(Lcom/amap/api/services/geocoder/d;I)V
    .locals 4

    .line 237
    iget-object v0, p0, Lcom/xiaopeng/devtools/model/c/a/d/a;->te:Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 238
    iget-object v0, p0, Lcom/xiaopeng/devtools/model/c/a/d/a;->tf:Landroid/location/Location;

    if-eqz v0, :cond_0

    .line 239
    iget-object v0, p0, Lcom/xiaopeng/devtools/model/c/a/d/a;->tf:Landroid/location/Location;

    invoke-virtual {v0}, Landroid/location/Location;->getTime()J

    .line 240
    const-string v0, "yyyy-MM-dd HH:mm:ss"

    invoke-static {v0}, Lcom/xiaopeng/devtools/utils/t;->cN(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 241
    iget-object v1, p0, Lcom/xiaopeng/devtools/model/c/a/d/a;->te:Ljava/lang/StringBuilder;

    const-string v2, "\u7ecf\u5ea6: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/xiaopeng/devtools/model/c/a/d/a;->tf:Landroid/location/Location;

    invoke-virtual {v2}, Landroid/location/Location;->getLongitude()D

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\u7eac\u5ea6: "

    .line 242
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/xiaopeng/devtools/model/c/a/d/a;->tf:Landroid/location/Location;

    invoke-virtual {v2}, Landroid/location/Location;->getLatitude()D

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\u6d77\u62d4\u9ad8\u5ea6: "

    .line 243
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/xiaopeng/devtools/model/c/a/d/a;->tf:Landroid/location/Location;

    invoke-virtual {v2}, Landroid/location/Location;->getAltitude()D

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\u65f6\u95f4: "

    .line 244
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\n"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 246
    :cond_0
    const/16 v0, 0x3e8

    if-ne p2, v0, :cond_1

    .line 247
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/amap/api/services/geocoder/d;->bM()Lcom/amap/api/services/geocoder/RegeocodeAddress;

    move-result-object p2

    if-eqz p2, :cond_1

    .line 248
    invoke-virtual {p1}, Lcom/amap/api/services/geocoder/d;->bM()Lcom/amap/api/services/geocoder/RegeocodeAddress;

    move-result-object p2

    invoke-virtual {p2}, Lcom/amap/api/services/geocoder/RegeocodeAddress;->bJ()Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_1

    .line 249
    invoke-virtual {p1}, Lcom/amap/api/services/geocoder/d;->bM()Lcom/amap/api/services/geocoder/RegeocodeAddress;

    move-result-object p1

    invoke-virtual {p1}, Lcom/amap/api/services/geocoder/RegeocodeAddress;->bJ()Ljava/lang/String;

    move-result-object p1

    .line 250
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_1

    .line 251
    iget-object p2, p0, Lcom/xiaopeng/devtools/model/c/a/d/a;->te:Ljava/lang/StringBuilder;

    const-string v0, "\u8be6\u7ec6\u5730\u5740: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 255
    :cond_1
    iget-object p1, p0, Lcom/xiaopeng/devtools/model/c/a/d/a;->ta:Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/d/a;

    iget-object p2, p0, Lcom/xiaopeng/devtools/model/c/a/d/a;->te:Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/d/a;->bZ(Ljava/lang/String;)V

    .line 256
    return-void
.end method

.method public ce(I)Z
    .locals 3

    .line 107
    const-string v0, "GPSModel"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setGPSmode mode = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/lib/utils/c;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 108
    const/4 v0, -0x1

    if-eq p1, v0, :cond_0

    invoke-virtual {p0}, Lcom/xiaopeng/devtools/model/c/a/d/a;->gw()I

    move-result v0

    if-eq p1, v0, :cond_0

    .line 109
    iget-object v0, p0, Lcom/xiaopeng/devtools/model/c/a/d/a;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "location_mode"

    invoke-static {v0, v1, p1}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 110
    const/4 p1, 0x1

    return p1

    .line 112
    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public gA()V
    .locals 1

    .line 222
    iget-object v0, p0, Lcom/xiaopeng/devtools/model/c/a/d/a;->th:Lcom/xiaopeng/devtools/model/c/a/d/c;

    invoke-virtual {v0}, Lcom/xiaopeng/devtools/model/c/a/d/c;->open()V

    .line 223
    return-void
.end method

.method public gB()V
    .locals 1

    .line 227
    iget-object v0, p0, Lcom/xiaopeng/devtools/model/c/a/d/a;->th:Lcom/xiaopeng/devtools/model/c/a/d/c;

    invoke-virtual {v0}, Lcom/xiaopeng/devtools/model/c/a/d/c;->close()V

    .line 228
    return-void
.end method

.method public gC()V
    .locals 2

    .line 232
    iget-object v0, p0, Lcom/xiaopeng/devtools/model/c/a/d/a;->th:Lcom/xiaopeng/devtools/model/c/a/d/c;

    iget-object v1, p0, Lcom/xiaopeng/devtools/model/c/a/d/a;->ti:Lcom/xiaopeng/devtools/model/c/a/d/c$a;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/devtools/model/c/a/d/c;->a(Lcom/xiaopeng/devtools/model/c/a/d/c$a;)V

    .line 233
    return-void
.end method

.method public getLastKnownLocation()Landroid/location/Location;
    .locals 2

    .line 146
    iget-object v0, p0, Lcom/xiaopeng/devtools/model/c/a/d/a;->mLocationManager:Landroid/location/LocationManager;

    const-string v1, "gps"

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->getLastKnownLocation(Ljava/lang/String;)Landroid/location/Location;

    move-result-object v0

    .line 147
    return-object v0
.end method

.method public gv()V
    .locals 3

    .line 96
    const-string v0, "GPSModel"

    const-string v1, "setGPSEnable "

    invoke-static {v0, v1}, Lcom/xiaopeng/lib/utils/c;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 97
    iget-object v0, p0, Lcom/xiaopeng/devtools/model/c/a/d/a;->mLocationManager:Landroid/location/LocationManager;

    const-string v1, "gps"

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->isProviderEnabled(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/xiaopeng/devtools/model/c/a/d/a;->gz()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 98
    iget v0, p0, Lcom/xiaopeng/devtools/model/c/a/d/a;->sY:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    .line 99
    iget-object v0, p0, Lcom/xiaopeng/devtools/model/c/a/d/a;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v2, "location_mode"

    invoke-static {v0, v2, v1}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 103
    :cond_0
    return-void
.end method

.method public gw()I
    .locals 4

    .line 130
    nop

    .line 132
    :try_start_0
    iget-object v0, p0, Lcom/xiaopeng/devtools/model/c/a/d/a;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "location_mode"

    invoke-static {v0, v1}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v0
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 135
    goto :goto_0

    .line 133
    :catch_0
    move-exception v0

    .line 134
    invoke-virtual {v0}, Landroid/provider/Settings$SettingNotFoundException;->printStackTrace()V

    .line 136
    const/4 v0, 0x0

    :goto_0
    const-string v1, "GPSModel"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getCurrentGPSmode mode = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/xiaopeng/lib/utils/c;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 137
    return v0
.end method

.method public gx()V
    .locals 3

    .line 160
    const-string v0, "GPSModel"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "destory , currentMode = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/xiaopeng/devtools/model/c/a/d/a;->sY:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/lib/utils/c;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 161
    iget v0, p0, Lcom/xiaopeng/devtools/model/c/a/d/a;->sY:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 162
    iget-object v0, p0, Lcom/xiaopeng/devtools/model/c/a/d/a;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "location_mode"

    iget v2, p0, Lcom/xiaopeng/devtools/model/c/a/d/a;->sY:I

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 164
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/devtools/model/c/a/d/a;->sZ:Lcom/xiaopeng/devtools/model/c/a/d/a$c;

    if-eqz v0, :cond_1

    .line 165
    iget-object v0, p0, Lcom/xiaopeng/devtools/model/c/a/d/a;->mLocationManager:Landroid/location/LocationManager;

    iget-object v1, p0, Lcom/xiaopeng/devtools/model/c/a/d/a;->sZ:Lcom/xiaopeng/devtools/model/c/a/d/a$c;

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->removeUpdates(Landroid/location/LocationListener;)V

    .line 168
    :cond_1
    iget-object v0, p0, Lcom/xiaopeng/devtools/model/c/a/d/a;->tg:Lcom/xiaopeng/devtools/model/c/a/d/a$a;

    if-eqz v0, :cond_2

    .line 169
    iget-object v0, p0, Lcom/xiaopeng/devtools/model/c/a/d/a;->tg:Lcom/xiaopeng/devtools/model/c/a/d/a$a;

    invoke-virtual {v0}, Lcom/xiaopeng/devtools/model/c/a/d/a$a;->interrupt()V

    .line 170
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/xiaopeng/devtools/model/c/a/d/a;->tg:Lcom/xiaopeng/devtools/model/c/a/d/a$a;

    .line 172
    :cond_2
    return-void
.end method

.method public gy()Z
    .locals 4

    .line 176
    nop

    .line 177
    invoke-virtual {p0}, Lcom/xiaopeng/devtools/model/c/a/d/a;->gz()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 178
    iget-object v0, p0, Lcom/xiaopeng/devtools/model/c/a/d/a;->mLocationManager:Landroid/location/LocationManager;

    const-string v1, "gps"

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->isProviderEnabled(Ljava/lang/String;)Z

    move-result v0

    goto :goto_0

    .line 180
    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v1, "GPSModel"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isGPSEnabled = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/xiaopeng/lib/utils/c;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 181
    return v0
.end method

.method public gz()Z
    .locals 4

    .line 186
    iget-object v0, p0, Lcom/xiaopeng/devtools/model/c/a/d/a;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "android.hardware.location.gps"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    .line 187
    const-string v1, "GPSModel"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "hasGPSFeature withFeature = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/xiaopeng/lib/utils/c;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 188
    return v0
.end method
