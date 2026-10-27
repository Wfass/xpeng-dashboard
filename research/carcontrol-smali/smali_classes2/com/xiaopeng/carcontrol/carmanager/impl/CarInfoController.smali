.class public Lcom/xiaopeng/carcontrol/carmanager/impl/CarInfoController;
.super Lcom/xiaopeng/carcontrol/carmanager/BaseCarController;
.source "CarInfoController.java"

# interfaces
.implements Lcom/xiaopeng/carcontrol/carmanager/controller/ICarInfoController;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/xiaopeng/carcontrol/carmanager/BaseCarController<",
        "Landroid/car/hardware/atl/CarAtlManager;",
        "Lcom/xiaopeng/carcontrol/carmanager/controller/ICarInfoController$Callback;",
        ">;",
        "Lcom/xiaopeng/carcontrol/carmanager/controller/ICarInfoController;"
    }
.end annotation


# static fields
.field private static final REQUEST_CARE_LICENSE_PLATE_INTERVAL:J = 0x1d4c0L

.field private static final TAG:Ljava/lang/String; = "CarInfoController"


# instance fields
.field private mCarLicensePlate:Ljava/lang/String;

.field private mContentObserver:Landroid/database/ContentObserver;

.field private mLastRequestTimeStamp:J


# direct methods
.method public constructor <init>(Landroid/car/Car;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "carClient"
        }
    .end annotation

    .line 44
    invoke-direct {p0}, Lcom/xiaopeng/carcontrol/carmanager/BaseCarController;-><init>()V

    const/4 p1, 0x0

    .line 40
    iput-object p1, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/CarInfoController;->mCarLicensePlate:Ljava/lang/String;

    const-wide/16 v0, 0x0

    .line 42
    iput-wide v0, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/CarInfoController;->mLastRequestTimeStamp:J

    .line 45
    iget-boolean p1, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/CarInfoController;->mIsMainProcess:Z

    if-nez p1, :cond_0

    .line 47
    new-instance p1, Lcom/xiaopeng/carcontrol/carmanager/impl/-$$Lambda$CarInfoController$8UdS9Bq3kXuHIy-r9Ph9Ttgfrzc;

    invoke-direct {p1, p0}, Lcom/xiaopeng/carcontrol/carmanager/impl/-$$Lambda$CarInfoController$8UdS9Bq3kXuHIy-r9Ph9Ttgfrzc;-><init>(Lcom/xiaopeng/carcontrol/carmanager/impl/CarInfoController;)V

    invoke-static {p1}, Lcom/xiaopeng/carcontrol/util/ThreadUtils;->execute(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method static synthetic access$000(Lcom/xiaopeng/carcontrol/carmanager/impl/CarInfoController;)Ljava/lang/String;
    .locals 0

    .line 33
    iget-object p0, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/CarInfoController;->mCarLicensePlate:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$002(Lcom/xiaopeng/carcontrol/carmanager/impl/CarInfoController;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 33
    iput-object p1, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/CarInfoController;->mCarLicensePlate:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$100(Lcom/xiaopeng/carcontrol/carmanager/impl/CarInfoController;Ljava/lang/String;)V
    .locals 0

    .line 33
    invoke-direct {p0, p1}, Lcom/xiaopeng/carcontrol/carmanager/impl/CarInfoController;->handleCarLicensePlateChanged(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$200(Lcom/xiaopeng/carcontrol/carmanager/impl/CarInfoController;)J
    .locals 2

    .line 33
    iget-wide v0, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/CarInfoController;->mLastRequestTimeStamp:J

    return-wide v0
.end method

.method static synthetic access$202(Lcom/xiaopeng/carcontrol/carmanager/impl/CarInfoController;J)J
    .locals 0

    .line 33
    iput-wide p1, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/CarInfoController;->mLastRequestTimeStamp:J

    return-wide p1
.end method

.method static synthetic access$300(Lcom/xiaopeng/carcontrol/carmanager/impl/CarInfoController;Ljava/lang/String;)V
    .locals 0

    .line 33
    invoke-direct {p0, p1}, Lcom/xiaopeng/carcontrol/carmanager/impl/CarInfoController;->parseCarLicensePlate(Ljava/lang/String;)V

    return-void
.end method

.method private handleCarLicensePlateChanged(Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "licensePlate"
        }
    .end annotation

    .line 240
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/CarInfoController;->mCallbackLock:Ljava/lang/Object;

    monitor-enter v0

    .line 241
    :try_start_0
    iget-object v1, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/CarInfoController;->mCallbacks:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/xiaopeng/carcontrol/carmanager/controller/ICarInfoController$Callback;

    .line 242
    invoke-interface {v2, p1}, Lcom/xiaopeng/carcontrol/carmanager/controller/ICarInfoController$Callback;->onCarLicensePlateChanged(Ljava/lang/String;)V

    goto :goto_0

    .line 244
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public static synthetic lambda$eMCBpEbqO1ynIy6NU9VE_3aQ9GE(Lcom/xiaopeng/carcontrol/carmanager/impl/CarInfoController;)V
    .locals 0

    invoke-direct {p0}, Lcom/xiaopeng/carcontrol/carmanager/impl/CarInfoController;->requestCarLicensePlateImpl()V

    return-void
.end method

.method static synthetic lambda$setCarLicensePlate$1(Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            "licensePlate"
        }
    .end annotation

    .line 83
    invoke-static {}, Lcom/xiaopeng/carcontrol/App;->getInstance()Lcom/xiaopeng/carcontrol/App;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/App;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "car_license_plate"

    invoke-static {v0, v1, p0}, Lcom/xiaopeng/carcontrol/provider/CarControl$PrivateControl;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    return-void
.end method

.method private parseCarLicensePlate(Ljava/lang/String;)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "response"
        }
    .end annotation

    .line 214
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p1, "code"

    .line 215
    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/16 v1, 0xc8

    const-string v2, "CarInfoController"

    if-eq p1, v1, :cond_0

    .line 217
    :try_start_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "response error, code: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Lcom/xiaopeng/carcontrol/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    const-string p1, "data"

    .line 220
    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    const-string v0, "plateNo"

    .line 221
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "vin"

    .line 222
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 229
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "parseCarLicensePlate carPlateNo: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ", vin: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x0

    invoke-static {v2, p1, v1}, Lcom/xiaopeng/carcontrol/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;Z)V

    if-eqz v0, :cond_1

    .line 230
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result p1

    const/16 v1, 0x8

    if-lt p1, v1, :cond_1

    .line 232
    invoke-virtual {p0, v0}, Lcom/xiaopeng/carcontrol/carmanager/impl/CarInfoController;->setCarLicensePlate(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 235
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_1
    :goto_0
    return-void
.end method

.method private requestCarLicensePlateImpl()V
    .locals 5

    const-string v0, "CarInfoController"

    const-string v1, "Start to request car license plate"

    const/4 v2, 0x0

    .line 159
    invoke-static {v0, v1, v2}, Lcom/xiaopeng/carcontrol/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 161
    sget-object v1, Lcom/xiaopeng/carcontrol/GlobalConstant$URL;->GET_PLATE:Ljava/lang/String;

    .line 162
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Request car plate url: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3, v2}, Lcom/xiaopeng/carcontrol/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 164
    invoke-static {}, Lcom/xiaopeng/carcontrol/util/ModuleUtils;->getHttp()Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IHttp;

    move-result-object v3

    if-nez v3, :cond_0

    const-string v1, "Http module is null"

    .line 166
    invoke-static {v0, v1, v2}, Lcom/xiaopeng/carcontrol/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;Z)V

    return-void

    .line 169
    :cond_0
    invoke-interface {v3}, Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IHttp;->bizHelper()Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IBizHelper;

    move-result-object v0

    .line 170
    invoke-interface {v0, v1}, Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IBizHelper;->get(Ljava/lang/String;)Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IBizHelper;

    move-result-object v0

    .line 171
    invoke-interface {v0}, Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IBizHelper;->needAuthorizationInfo()Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IBizHelper;

    move-result-object v0

    .line 172
    invoke-interface {v0}, Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IBizHelper;->enableSecurityEncoding()Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IBizHelper;

    move-result-object v0

    .line 173
    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IBizHelper;->uid(Ljava/lang/String;)Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IBizHelper;

    move-result-object v0

    .line 174
    invoke-interface {v0}, Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IBizHelper;->build()Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IRequest;

    move-result-object v0

    new-instance v1, Lcom/xiaopeng/carcontrol/carmanager/impl/CarInfoController$2;

    invoke-direct {v1, p0}, Lcom/xiaopeng/carcontrol/carmanager/impl/CarInfoController$2;-><init>(Lcom/xiaopeng/carcontrol/carmanager/impl/CarInfoController;)V

    .line 175
    invoke-interface {v0, v1}, Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IRequest;->execute(Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/Callback;)V

    return-void
.end method


# virtual methods
.method protected disconnect()V
    .locals 0

    return-void
.end method

.method public getCarLicensePlate()Ljava/lang/String;
    .locals 1

    .line 90
    iget-boolean v0, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/CarInfoController;->mIsMainProcess:Z

    if-eqz v0, :cond_0

    .line 91
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/CarInfoController;->mDataSync:Lcom/xiaopeng/carcontrol/model/DataSyncModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/model/DataSyncModel;->getCarLicensePlate()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 93
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/CarInfoController;->mCarLicensePlate:Ljava/lang/String;

    return-object v0
.end method

.method protected getRegisterPropertyIds()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    return-object v0
.end method

.method protected handleEventsUpdate(Landroid/car/hardware/CarPropertyValue;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/car/hardware/CarPropertyValue<",
            "*>;)V"
        }
    .end annotation

    return-void
.end method

.method protected initCarManager(Landroid/car/Car;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "carClient"
        }
    .end annotation

    return-void
.end method

.method protected initXuiManager()V
    .locals 0

    return-void
.end method

.method public synthetic lambda$new$0$CarInfoController()V
    .locals 2

    .line 48
    invoke-static {}, Lcom/xiaopeng/carcontrol/App;->getInstance()Lcom/xiaopeng/carcontrol/App;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/App;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "car_license_plate"

    .line 49
    invoke-static {v0, v1}, Lcom/xiaopeng/carcontrol/provider/CarControl$PrivateControl;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/CarInfoController;->mCarLicensePlate:Ljava/lang/String;

    .line 50
    invoke-direct {p0, v0}, Lcom/xiaopeng/carcontrol/carmanager/impl/CarInfoController;->handleCarLicensePlateChanged(Ljava/lang/String;)V

    .line 52
    invoke-virtual {p0}, Lcom/xiaopeng/carcontrol/carmanager/impl/CarInfoController;->registerContentObserver()V

    return-void
.end method

.method protected registerContentObserver()V
    .locals 4

    .line 121
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/CarInfoController;->mContentObserver:Landroid/database/ContentObserver;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 122
    new-instance v0, Lcom/xiaopeng/carcontrol/carmanager/impl/CarInfoController$1;

    invoke-static {v1}, Lcom/xiaopeng/carcontrol/util/ThreadUtils;->getHandler(I)Landroid/os/Handler;

    move-result-object v2

    invoke-direct {v0, p0, v2}, Lcom/xiaopeng/carcontrol/carmanager/impl/CarInfoController$1;-><init>(Lcom/xiaopeng/carcontrol/carmanager/impl/CarInfoController;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/CarInfoController;->mContentObserver:Landroid/database/ContentObserver;

    .line 137
    :cond_0
    invoke-static {}, Lcom/xiaopeng/carcontrol/App;->getInstance()Lcom/xiaopeng/carcontrol/App;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/App;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v2, "car_license_plate"

    .line 138
    invoke-static {v2}, Lcom/xiaopeng/carcontrol/provider/CarControl$PrivateControl;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    iget-object v3, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/CarInfoController;->mContentObserver:Landroid/database/ContentObserver;

    .line 137
    invoke-virtual {v0, v2, v1, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    return-void
.end method

.method public requestCarLicensePlate()V
    .locals 6

    const-string v0, "isSupportCarLicensePlate"

    .line 99
    invoke-static {v0}, Lcom/xiaopeng/lib/feature/XpFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 102
    :cond_0
    iget-boolean v0, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/CarInfoController;->mIsMainProcess:Z

    if-eqz v0, :cond_4

    .line 104
    invoke-static {}, Lcom/xiaopeng/carcontrol/model/FunctionModel;->getInstance()Lcom/xiaopeng/carcontrol/model/FunctionModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/model/FunctionModel;->isRequestCarPlateAllowed()Z

    move-result v0

    const-string v1, "CarInfoController"

    if-eqz v0, :cond_3

    .line 106
    iget-wide v2, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/CarInfoController;->mLastRequestTimeStamp:J

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-eqz v0, :cond_2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/CarInfoController;->mLastRequestTimeStamp:J

    sub-long/2addr v2, v4

    const-wide/32 v4, 0x1d4c0

    cmp-long v0, v2, v4

    if-lez v0, :cond_1

    goto :goto_0

    :cond_1
    const-string v0, "Request car license plate within 2 minutes, ignore request"

    .line 109
    invoke-static {v1, v0}, Lcom/xiaopeng/carcontrol/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    :goto_0
    const/4 v0, 0x0

    .line 107
    new-instance v1, Lcom/xiaopeng/carcontrol/carmanager/impl/-$$Lambda$CarInfoController$eMCBpEbqO1ynIy6NU9VE_3aQ9GE;

    invoke-direct {v1, p0}, Lcom/xiaopeng/carcontrol/carmanager/impl/-$$Lambda$CarInfoController$eMCBpEbqO1ynIy6NU9VE_3aQ9GE;-><init>(Lcom/xiaopeng/carcontrol/carmanager/impl/CarInfoController;)V

    const-wide/16 v2, 0x32

    invoke-static {v0, v1, v2, v3}, Lcom/xiaopeng/carcontrol/util/ThreadUtils;->postDelayed(ILjava/lang/Runnable;J)V

    goto :goto_1

    :cond_3
    const-string v0, "Car license plate has been retrieved in this local igon cycle, ignore further request"

    .line 112
    invoke-static {v1, v0}, Lcom/xiaopeng/carcontrol/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 115
    :cond_4
    invoke-static {}, Lcom/xiaopeng/carcontrol/App;->getInstance()Lcom/xiaopeng/carcontrol/App;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/App;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v1, 0x1

    const-string v2, "request_car_license_plate"

    invoke-static {v0, v2, v1}, Lcom/xiaopeng/carcontrol/provider/CarControl$PrivateControl;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :goto_1
    return-void
.end method

.method public setCarLicensePlate(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "licensePlate"
        }
    .end annotation

    .line 80
    iget-boolean v0, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/CarInfoController;->mIsMainProcess:Z

    if-eqz v0, :cond_0

    .line 81
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/CarInfoController;->mDataSync:Lcom/xiaopeng/carcontrol/model/DataSyncModel;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/carcontrol/model/DataSyncModel;->setCarLicensePlate(Ljava/lang/String;)V

    .line 83
    new-instance v0, Lcom/xiaopeng/carcontrol/carmanager/impl/-$$Lambda$CarInfoController$xAtTZTJNdNSLd5gg0pmsiQFSSlk;

    invoke-direct {v0, p1}, Lcom/xiaopeng/carcontrol/carmanager/impl/-$$Lambda$CarInfoController$xAtTZTJNdNSLd5gg0pmsiQFSSlk;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/xiaopeng/carcontrol/util/ThreadUtils;->execute(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method
