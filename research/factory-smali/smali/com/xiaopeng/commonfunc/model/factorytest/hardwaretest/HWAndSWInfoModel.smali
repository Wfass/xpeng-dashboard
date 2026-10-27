.class public Lcom/xiaopeng/commonfunc/model/factorytest/hardwaretest/HWAndSWInfoModel;
.super Ljava/lang/Object;
.source "HWAndSWInfoModel.java"

# interfaces
.implements Lcom/xiaopeng/commonfunc/model/factorytest/hardwaretest/IHWAndSWInfoModel;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaopeng/commonfunc/model/factorytest/hardwaretest/HWAndSWInfoModel$GenerateRunnable;
    }
.end annotation


# static fields
.field private static final MAX_TIMEOUT:I = 0xbb8

.field private static final MESSAGE_GENERATE_CAR_CODE:I = 0x3

.field private static final MESSAGE_GENERATE_DEVICE_CODE:I = 0x1

.field private static final MESSAGE_GENERATE_DEVICE_NUM:I = 0x2

.field private static final SEPARATE_UPLOAD_TBOX:Ljava/lang/Boolean;

.field private static final TAG:Ljava/lang/String; = "HWAndSWInfoModel"

.field private static final URL_CAR_CODE:Ljava/lang/String;


# instance fields
.field private mHWAndSWInfoCallBack:Lcom/xiaopeng/commonfunc/callback/HWAndSWInfoCallBack;

.field private final mHandler:Landroid/os/Handler;

.field private final mLock:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 47
    const-string v0, "SEPARATE_UPLOAD_TBOX"

    invoke-static {v0}, Lcom/xiaopeng/xmlconfig/Support$Feature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/xiaopeng/commonfunc/model/factorytest/hardwaretest/HWAndSWInfoModel;->SEPARATE_UPLOAD_TBOX:Ljava/lang/Boolean;

    .line 48
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/xiaopeng/lib/utils/config/CommonConfig;->HTTP_HOST:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "CAR_CODE"

    invoke-static {v1}, Lcom/xiaopeng/xmlconfig/Support$Url;->getUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/xiaopeng/commonfunc/model/factorytest/hardwaretest/HWAndSWInfoModel;->URL_CAR_CODE:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 87
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/commonfunc/model/factorytest/hardwaretest/HWAndSWInfoModel;->mLock:Ljava/lang/Object;

    .line 52
    new-instance v0, Lcom/xiaopeng/commonfunc/model/factorytest/hardwaretest/HWAndSWInfoModel$1;

    invoke-direct {v0, p0}, Lcom/xiaopeng/commonfunc/model/factorytest/hardwaretest/HWAndSWInfoModel$1;-><init>(Lcom/xiaopeng/commonfunc/model/factorytest/hardwaretest/HWAndSWInfoModel;)V

    iput-object v0, p0, Lcom/xiaopeng/commonfunc/model/factorytest/hardwaretest/HWAndSWInfoModel;->mHandler:Landroid/os/Handler;

    .line 89
    return-void
.end method

.method public constructor <init>(Lcom/xiaopeng/commonfunc/callback/HWAndSWInfoCallBack;)V
    .locals 1
    .param p1, "callBack"    # Lcom/xiaopeng/commonfunc/callback/HWAndSWInfoCallBack;

    .line 83
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/commonfunc/model/factorytest/hardwaretest/HWAndSWInfoModel;->mLock:Ljava/lang/Object;

    .line 52
    new-instance v0, Lcom/xiaopeng/commonfunc/model/factorytest/hardwaretest/HWAndSWInfoModel$1;

    invoke-direct {v0, p0}, Lcom/xiaopeng/commonfunc/model/factorytest/hardwaretest/HWAndSWInfoModel$1;-><init>(Lcom/xiaopeng/commonfunc/model/factorytest/hardwaretest/HWAndSWInfoModel;)V

    iput-object v0, p0, Lcom/xiaopeng/commonfunc/model/factorytest/hardwaretest/HWAndSWInfoModel;->mHandler:Landroid/os/Handler;

    .line 84
    iput-object p1, p0, Lcom/xiaopeng/commonfunc/model/factorytest/hardwaretest/HWAndSWInfoModel;->mHWAndSWInfoCallBack:Lcom/xiaopeng/commonfunc/callback/HWAndSWInfoCallBack;

    .line 85
    return-void
.end method

.method static synthetic access$000(Lcom/xiaopeng/commonfunc/model/factorytest/hardwaretest/HWAndSWInfoModel;Landroid/graphics/Bitmap;)V
    .locals 0
    .param p0, "x0"    # Lcom/xiaopeng/commonfunc/model/factorytest/hardwaretest/HWAndSWInfoModel;
    .param p1, "x1"    # Landroid/graphics/Bitmap;

    .line 40
    invoke-direct {p0, p1}, Lcom/xiaopeng/commonfunc/model/factorytest/hardwaretest/HWAndSWInfoModel;->updateDeviceCodeBitmap(Landroid/graphics/Bitmap;)V

    return-void
.end method

.method static synthetic access$100(Lcom/xiaopeng/commonfunc/model/factorytest/hardwaretest/HWAndSWInfoModel;Landroid/graphics/Bitmap;)V
    .locals 0
    .param p0, "x0"    # Lcom/xiaopeng/commonfunc/model/factorytest/hardwaretest/HWAndSWInfoModel;
    .param p1, "x1"    # Landroid/graphics/Bitmap;

    .line 40
    invoke-direct {p0, p1}, Lcom/xiaopeng/commonfunc/model/factorytest/hardwaretest/HWAndSWInfoModel;->updateDeviceNumBitmap(Landroid/graphics/Bitmap;)V

    return-void
.end method

.method static synthetic access$200(Lcom/xiaopeng/commonfunc/model/factorytest/hardwaretest/HWAndSWInfoModel;Landroid/graphics/Bitmap;)V
    .locals 0
    .param p0, "x0"    # Lcom/xiaopeng/commonfunc/model/factorytest/hardwaretest/HWAndSWInfoModel;
    .param p1, "x1"    # Landroid/graphics/Bitmap;

    .line 40
    invoke-direct {p0, p1}, Lcom/xiaopeng/commonfunc/model/factorytest/hardwaretest/HWAndSWInfoModel;->updateCarCodeBitmap(Landroid/graphics/Bitmap;)V

    return-void
.end method

.method static synthetic access$300(Lcom/xiaopeng/commonfunc/model/factorytest/hardwaretest/HWAndSWInfoModel;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/xiaopeng/commonfunc/model/factorytest/hardwaretest/HWAndSWInfoModel;

    .line 40
    iget-object v0, p0, Lcom/xiaopeng/commonfunc/model/factorytest/hardwaretest/HWAndSWInfoModel;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method private asyncGetPartCode(Lcom/xiaopeng/lib/http/ICallback;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/xiaopeng/lib/http/ICallback<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 223
    .local p1, "callback":Lcom/xiaopeng/lib/http/ICallback;, "Lcom/xiaopeng/lib/http/ICallback<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v0, p0, Lcom/xiaopeng/commonfunc/model/factorytest/hardwaretest/HWAndSWInfoModel;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 224
    :try_start_0
    new-instance v1, Lcom/xiaopeng/commonfunc/model/car/McuModel;

    const-string v2, "HWAndSWInfoModel"

    invoke-direct {v1, v2}, Lcom/xiaopeng/commonfunc/model/car/McuModel;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/xiaopeng/commonfunc/model/car/McuModel;->getFactoryDisplayTypeMsgToMcu()Ljava/lang/String;

    move-result-object v1

    .line 225
    .local v1, "data":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 226
    if-eqz p1, :cond_1

    .line 227
    invoke-interface {p1, v1}, Lcom/xiaopeng/lib/http/ICallback;->onSuccess(Ljava/lang/Object;)V

    goto :goto_0

    .line 230
    :cond_0
    if-eqz p1, :cond_1

    .line 231
    const/4 v2, 0x0

    invoke-interface {p1, v2}, Lcom/xiaopeng/lib/http/ICallback;->onError(Ljava/lang/Object;)V

    .line 233
    .end local v1    # "data":Ljava/lang/String;
    :cond_1
    :goto_0
    monitor-exit v0

    .line 234
    return-void

    .line 233
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private updateCarCodeBitmap(Landroid/graphics/Bitmap;)V
    .locals 1
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;

    .line 298
    iget-object v0, p0, Lcom/xiaopeng/commonfunc/model/factorytest/hardwaretest/HWAndSWInfoModel;->mHWAndSWInfoCallBack:Lcom/xiaopeng/commonfunc/callback/HWAndSWInfoCallBack;

    if-eqz v0, :cond_0

    .line 299
    iget-object v0, p0, Lcom/xiaopeng/commonfunc/model/factorytest/hardwaretest/HWAndSWInfoModel;->mHWAndSWInfoCallBack:Lcom/xiaopeng/commonfunc/callback/HWAndSWInfoCallBack;

    invoke-interface {v0, p1}, Lcom/xiaopeng/commonfunc/callback/HWAndSWInfoCallBack;->updateCarCodeBitmap(Landroid/graphics/Bitmap;)V

    .line 301
    :cond_0
    return-void
.end method

.method private updateDeviceCodeBitmap(Landroid/graphics/Bitmap;)V
    .locals 1
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;

    .line 286
    iget-object v0, p0, Lcom/xiaopeng/commonfunc/model/factorytest/hardwaretest/HWAndSWInfoModel;->mHWAndSWInfoCallBack:Lcom/xiaopeng/commonfunc/callback/HWAndSWInfoCallBack;

    if-eqz v0, :cond_0

    .line 287
    iget-object v0, p0, Lcom/xiaopeng/commonfunc/model/factorytest/hardwaretest/HWAndSWInfoModel;->mHWAndSWInfoCallBack:Lcom/xiaopeng/commonfunc/callback/HWAndSWInfoCallBack;

    invoke-interface {v0, p1}, Lcom/xiaopeng/commonfunc/callback/HWAndSWInfoCallBack;->updateDeviceCodeBitmap(Landroid/graphics/Bitmap;)V

    .line 289
    :cond_0
    return-void
.end method

.method private updateDeviceNumBitmap(Landroid/graphics/Bitmap;)V
    .locals 1
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;

    .line 292
    iget-object v0, p0, Lcom/xiaopeng/commonfunc/model/factorytest/hardwaretest/HWAndSWInfoModel;->mHWAndSWInfoCallBack:Lcom/xiaopeng/commonfunc/callback/HWAndSWInfoCallBack;

    if-eqz v0, :cond_0

    .line 293
    iget-object v0, p0, Lcom/xiaopeng/commonfunc/model/factorytest/hardwaretest/HWAndSWInfoModel;->mHWAndSWInfoCallBack:Lcom/xiaopeng/commonfunc/callback/HWAndSWInfoCallBack;

    invoke-interface {v0, p1}, Lcom/xiaopeng/commonfunc/callback/HWAndSWInfoCallBack;->updateDeviceNumBitmap(Landroid/graphics/Bitmap;)V

    .line 295
    :cond_0
    return-void
.end method


# virtual methods
.method public generateCarCodeBitmap(I)V
    .locals 1
    .param p1, "width"    # I

    .line 131
    new-instance v0, Lcom/xiaopeng/commonfunc/model/factorytest/hardwaretest/HWAndSWInfoModel$2;

    invoke-direct {v0, p0, p1}, Lcom/xiaopeng/commonfunc/model/factorytest/hardwaretest/HWAndSWInfoModel$2;-><init>(Lcom/xiaopeng/commonfunc/model/factorytest/hardwaretest/HWAndSWInfoModel;I)V

    invoke-virtual {p0, v0}, Lcom/xiaopeng/commonfunc/model/factorytest/hardwaretest/HWAndSWInfoModel;->requestCarCode(Lcom/xiaopeng/lib/http/ICallback;)V

    .line 142
    return-void
.end method

.method public generateCodeBitmap(I)V
    .locals 4
    .param p1, "width"    # I

    .line 115
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/xiaopeng/commonfunc/model/factorytest/hardwaretest/HWAndSWInfoModel$GenerateRunnable;

    iget-object v2, p0, Lcom/xiaopeng/commonfunc/model/factorytest/hardwaretest/HWAndSWInfoModel;->mHandler:Landroid/os/Handler;

    const/4 v3, 0x1

    invoke-direct {v1, p0, v3, p1, v2}, Lcom/xiaopeng/commonfunc/model/factorytest/hardwaretest/HWAndSWInfoModel$GenerateRunnable;-><init>(Lcom/xiaopeng/commonfunc/model/factorytest/hardwaretest/HWAndSWInfoModel;IILandroid/os/Handler;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 116
    return-void
.end method

.method public generateNumBitmap(I)V
    .locals 4
    .param p1, "width"    # I

    .line 120
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/xiaopeng/commonfunc/model/factorytest/hardwaretest/HWAndSWInfoModel$GenerateRunnable;

    iget-object v2, p0, Lcom/xiaopeng/commonfunc/model/factorytest/hardwaretest/HWAndSWInfoModel;->mHandler:Landroid/os/Handler;

    const/4 v3, 0x2

    invoke-direct {v1, p0, v3, p1, v2}, Lcom/xiaopeng/commonfunc/model/factorytest/hardwaretest/HWAndSWInfoModel$GenerateRunnable;-><init>(Lcom/xiaopeng/commonfunc/model/factorytest/hardwaretest/HWAndSWInfoModel;IILandroid/os/Handler;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 121
    return-void
.end method

.method public getDeviceCode()Ljava/lang/String;
    .locals 2

    .line 109
    invoke-static {}, Lcom/xiaopeng/commonfunc/utils/SystemPropertyUtil;->getHardwareId()Ljava/lang/String;

    move-result-object v0

    .line 110
    .local v0, "hardwareId":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "Unknown"

    goto :goto_0

    :cond_0
    move-object v1, v0

    :goto_0
    return-object v1
.end method

.method public getHWInfo()Ljava/lang/String;
    .locals 1

    .line 99
    invoke-static {}, Lcom/xiaopeng/commonfunc/utils/SystemPropertyUtil;->getHwVersion()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPsuVersion()V
    .locals 0

    .line 162
    return-void
.end method

.method public getSWInfo()Ljava/lang/String;
    .locals 1

    .line 104
    invoke-static {}, Lcom/xiaopeng/commonfunc/utils/SystemPropertyUtil;->getSwVersion()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getVehicleId()Ljava/lang/String;
    .locals 2

    .line 125
    invoke-static {}, Lcom/xiaopeng/commonfunc/utils/SystemPropertyUtil;->getVehicleId()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    .line 126
    .local v0, "vehicleId":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "Unknown"

    goto :goto_0

    :cond_0
    move-object v1, v0

    :goto_0
    return-object v1
.end method

.method public init(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .line 95
    return-void
.end method

.method public onDestroy()V
    .locals 0

    .line 239
    return-void
.end method

.method public requestCarCode(Lcom/xiaopeng/lib/http/ICallback;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/xiaopeng/lib/http/ICallback<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 167
    .local p1, "callback":Lcom/xiaopeng/lib/http/ICallback;, "Lcom/xiaopeng/lib/http/ICallback<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 168
    .local v0, "param":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    sget-object v1, Lcom/xiaopeng/commonfunc/model/factorytest/hardwaretest/HWAndSWInfoModel;->SEPARATE_UPLOAD_TBOX:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_0

    .line 169
    const-string v1, "iccid"

    invoke-static {}, Lcom/xiaopeng/commonfunc/utils/SystemPropertyUtil;->getIccid()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 171
    :cond_0
    const-string v1, "cduId"

    invoke-static {}, Lcom/xiaopeng/commonfunc/utils/SystemPropertyUtil;->getHardwareId()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 172
    const-string v1, "partsNo"

    invoke-static {}, Lcom/xiaopeng/commonfunc/utils/SystemPropertyUtil;->getPartNumber()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 173
    const-string v1, "hVer"

    invoke-static {}, Lcom/xiaopeng/commonfunc/utils/SystemPropertyUtil;->getHwVersion()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 174
    const-string v1, "sVer"

    invoke-static {}, Lcom/xiaopeng/lib/utils/info/BuildInfoUtils;->getSystemVersion()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 175
    const-string v1, "HWAndSWInfoModel"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "requestCarCode param = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/xiaopeng/lib/utils/LogUtils;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 177
    const-class v1, Lcom/xiaopeng/lib/framework/netchannelmodule/NetworkChannelsEntry;

    invoke-static {v1}, Lcom/xiaopeng/lib/framework/module/Module;->get(Ljava/lang/Class;)Lcom/xiaopeng/lib/framework/module/IModuleEntry;

    move-result-object v1

    const-class v2, Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IHttp;

    invoke-interface {v1, v2}, Lcom/xiaopeng/lib/framework/module/IModuleEntry;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IHttp;

    .line 178
    .local v1, "http":Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IHttp;
    sget-object v2, Lcom/xiaopeng/commonfunc/model/factorytest/hardwaretest/HWAndSWInfoModel;->URL_CAR_CODE:Ljava/lang/String;

    invoke-interface {v1, v2}, Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IHttp;->cancelTag(Ljava/lang/Object;)V

    .line 179
    invoke-interface {v1}, Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IHttp;->bizHelper()Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IBizHelper;

    move-result-object v2

    sget-object v3, Lcom/xiaopeng/commonfunc/model/factorytest/hardwaretest/HWAndSWInfoModel;->URL_CAR_CODE:Ljava/lang/String;

    new-instance v4, Lcom/google/gson/Gson;

    invoke-direct {v4}, Lcom/google/gson/Gson;-><init>()V

    invoke-virtual {v4, v0}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IBizHelper;->post(Ljava/lang/String;Ljava/lang/String;)Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IBizHelper;

    move-result-object v2

    invoke-interface {v2}, Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IBizHelper;->build()Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IRequest;

    move-result-object v2

    sget-object v3, Lcom/xiaopeng/commonfunc/model/factorytest/hardwaretest/HWAndSWInfoModel;->URL_CAR_CODE:Ljava/lang/String;

    invoke-interface {v2, v3}, Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IRequest;->tag(Ljava/lang/Object;)Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IRequest;

    move-result-object v2

    new-instance v3, Lcom/xiaopeng/commonfunc/model/factorytest/hardwaretest/HWAndSWInfoModel$3;

    invoke-direct {v3, p0, p1}, Lcom/xiaopeng/commonfunc/model/factorytest/hardwaretest/HWAndSWInfoModel$3;-><init>(Lcom/xiaopeng/commonfunc/model/factorytest/hardwaretest/HWAndSWInfoModel;Lcom/xiaopeng/lib/http/ICallback;)V

    .line 180
    invoke-interface {v2, v3}, Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IRequest;->execute(Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/Callback;)V

    .line 215
    return-void
.end method
