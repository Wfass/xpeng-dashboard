.class public Lcom/xiaopeng/factory/model/factorytest/hardwaretest/FactoryTestModel;
.super Ljava/lang/Object;
.source "FactoryTestModel.java"


# static fields
.field private static final AUDIO_DTS_VER_PREFIX:Ljava/lang/String; = "DTS VER="

.field private static final AUDIO_PARAM_DTS_VER:Ljava/lang/String; = "DTS VER"

.field private static final PARAMETER_FTM_OFF:Ljava/lang/String; = "ftm_mode=false"

.field private static final PARAMETER_FTM_ON:Ljava/lang/String; = "ftm_mode=true"

.field private static final TAG:Ljava/lang/String; = "FactoryTestModel"

.field private static final URL_MCU_CHECK:Ljava/lang/String;


# instance fields
.field private mAudioManager:Landroid/media/AudioManager;

.field private mResponseWriter:Lcom/xiaopeng/factory/atcommand/ResponseWriter;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 34
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/xiaopeng/lib/utils/config/CommonConfig;->HTTP_HOST:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/biz/v3/vehicle/factoryMcuCheck"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/xiaopeng/factory/model/factorytest/hardwaretest/FactoryTestModel;->URL_MCU_CHECK:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    invoke-static {}, Lcom/xiaopeng/factory/MyApplication;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "audio"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, p0, Lcom/xiaopeng/factory/model/factorytest/hardwaretest/FactoryTestModel;->mAudioManager:Landroid/media/AudioManager;

    .line 44
    return-void
.end method

.method public constructor <init>(Lcom/xiaopeng/factory/atcommand/ResponseWriter;)V
    .locals 2
    .param p1, "responseWriter"    # Lcom/xiaopeng/factory/atcommand/ResponseWriter;

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    iput-object p1, p0, Lcom/xiaopeng/factory/model/factorytest/hardwaretest/FactoryTestModel;->mResponseWriter:Lcom/xiaopeng/factory/atcommand/ResponseWriter;

    .line 48
    invoke-static {}, Lcom/xiaopeng/factory/MyApplication;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "audio"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, p0, Lcom/xiaopeng/factory/model/factorytest/hardwaretest/FactoryTestModel;->mAudioManager:Landroid/media/AudioManager;

    .line 49
    return-void
.end method

.method static synthetic access$000(Lcom/xiaopeng/factory/model/factorytest/hardwaretest/FactoryTestModel;)Lcom/xiaopeng/factory/atcommand/ResponseWriter;
    .locals 1
    .param p0, "x0"    # Lcom/xiaopeng/factory/model/factorytest/hardwaretest/FactoryTestModel;

    .line 31
    iget-object v0, p0, Lcom/xiaopeng/factory/model/factorytest/hardwaretest/FactoryTestModel;->mResponseWriter:Lcom/xiaopeng/factory/atcommand/ResponseWriter;

    return-object v0
.end method


# virtual methods
.method public enterAudioTestMode()V
    .locals 2

    .line 96
    const-string v0, "FactoryTestModel"

    const-string v1, "enterAudioTestMode"

    invoke-static {v0, v1}, Lcom/xiaopeng/lib/utils/LogUtils;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 97
    iget-object v0, p0, Lcom/xiaopeng/factory/model/factorytest/hardwaretest/FactoryTestModel;->mAudioManager:Landroid/media/AudioManager;

    const-string v1, "ftm_mode=true"

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->setParameters(Ljava/lang/String;)V

    .line 98
    return-void
.end method

.method public enterPowerTest()Z
    .locals 3

    .line 111
    new-instance v0, Lcom/xiaopeng/factory/bean/car/AndroidDugReq;

    invoke-direct {v0}, Lcom/xiaopeng/factory/bean/car/AndroidDugReq;-><init>()V

    .line 112
    .local v0, "androidDugReq":Lcom/xiaopeng/factory/bean/car/AndroidDugReq;
    const/4 v1, 0x2

    iput v1, v0, Lcom/xiaopeng/factory/bean/car/AndroidDugReq;->dugSt:I

    .line 113
    const-string v1, "enterMcuTestMode"

    invoke-virtual {v0}, Lcom/xiaopeng/factory/bean/car/AndroidDugReq;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/xiaopeng/lib/utils/LogUtils;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 114
    invoke-static {}, Lcom/xiaopeng/factory/model/car/McuModel;->getInstance()Lcom/xiaopeng/factory/model/car/McuModel;

    move-result-object v1

    invoke-virtual {v0}, Lcom/xiaopeng/factory/bean/car/AndroidDugReq;->packToIntArray()[I

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/xiaopeng/factory/model/car/McuModel;->sendFactoryDugReqMsgToMcu([I)V

    .line 115
    const/4 v1, 0x1

    return v1
.end method

.method public exitAudioTestMode()V
    .locals 2

    .line 101
    const-string v0, "FactoryTestModel"

    const-string v1, "enterAudioTestMode"

    invoke-static {v0, v1}, Lcom/xiaopeng/lib/utils/LogUtils;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 102
    iget-object v0, p0, Lcom/xiaopeng/factory/model/factorytest/hardwaretest/FactoryTestModel;->mAudioManager:Landroid/media/AudioManager;

    const-string v1, "ftm_mode=false"

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->setParameters(Ljava/lang/String;)V

    .line 103
    return-void
.end method

.method public exitPowerTest()Z
    .locals 4

    .line 120
    new-instance v0, Lcom/xiaopeng/factory/bean/car/AndroidDugReq;

    invoke-direct {v0}, Lcom/xiaopeng/factory/bean/car/AndroidDugReq;-><init>()V

    .line 121
    .local v0, "androidDugReq":Lcom/xiaopeng/factory/bean/car/AndroidDugReq;
    const/4 v1, 0x1

    iput v1, v0, Lcom/xiaopeng/factory/bean/car/AndroidDugReq;->dugSt:I

    .line 122
    const-string v2, "enterMcuTestMode"

    invoke-virtual {v0}, Lcom/xiaopeng/factory/bean/car/AndroidDugReq;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/xiaopeng/lib/utils/LogUtils;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 123
    invoke-static {}, Lcom/xiaopeng/factory/model/car/McuModel;->getInstance()Lcom/xiaopeng/factory/model/car/McuModel;

    move-result-object v2

    invoke-virtual {v0}, Lcom/xiaopeng/factory/bean/car/AndroidDugReq;->packToIntArray()[I

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/xiaopeng/factory/model/car/McuModel;->sendFactoryDugReqMsgToMcu([I)V

    .line 124
    return v1
.end method

.method public getDtsVer()Ljava/lang/String;
    .locals 3

    .line 106
    iget-object v0, p0, Lcom/xiaopeng/factory/model/factorytest/hardwaretest/FactoryTestModel;->mAudioManager:Landroid/media/AudioManager;

    const-string v1, "DTS VER"

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->getParameters(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "DTS VER="

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public requestMcuCheck()V
    .locals 4

    .line 52
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 53
    .local v0, "param":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v1, "vid"

    invoke-static {}, Lcom/xiaopeng/lib/utils/SystemPropertyUtil;->getVehicleId()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 54
    const-string v1, "FactoryTestModel"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "requestMcuCheck"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/xiaopeng/lib/utils/LogUtils;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 56
    invoke-static {}, Lcom/lzy/okgo/OkGo;->getInstance()Lcom/lzy/okgo/OkGo;

    move-result-object v1

    sget-object v2, Lcom/xiaopeng/factory/model/factorytest/hardwaretest/FactoryTestModel;->URL_MCU_CHECK:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/lzy/okgo/OkGo;->cancelTag(Ljava/lang/Object;)V

    .line 57
    sget-object v1, Lcom/xiaopeng/factory/model/factorytest/hardwaretest/FactoryTestModel;->URL_MCU_CHECK:Ljava/lang/String;

    invoke-static {v1}, Lcom/lzy/okgo/OkGo;->post(Ljava/lang/String;)Lcom/lzy/okgo/request/PostRequest;

    move-result-object v1

    const-string v2, "Client"

    sget-object v3, Lcom/xiaopeng/lib/utils/config/CommonConfig;->CAR_CLIENT_DEFAULT:Ljava/lang/String;

    .line 58
    invoke-virtual {v1, v2, v3}, Lcom/lzy/okgo/request/PostRequest;->headers(Ljava/lang/String;Ljava/lang/String;)Lcom/lzy/okgo/request/base/Request;

    move-result-object v1

    check-cast v1, Lcom/lzy/okgo/request/PostRequest;

    .line 59
    invoke-static {v0}, Lcom/xiaopeng/lib/http/HttpsUtils;->buildBody(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/lzy/okgo/request/PostRequest;->upJson(Ljava/lang/String;)Lcom/lzy/okgo/request/base/BodyRequest;

    move-result-object v1

    check-cast v1, Lcom/lzy/okgo/request/PostRequest;

    sget-object v2, Lcom/xiaopeng/factory/model/factorytest/hardwaretest/FactoryTestModel;->URL_MCU_CHECK:Ljava/lang/String;

    .line 60
    invoke-virtual {v1, v2}, Lcom/lzy/okgo/request/PostRequest;->tag(Ljava/lang/Object;)Lcom/lzy/okgo/request/base/Request;

    move-result-object v1

    check-cast v1, Lcom/lzy/okgo/request/PostRequest;

    new-instance v2, Lcom/xiaopeng/factory/model/factorytest/hardwaretest/FactoryTestModel$1;

    invoke-direct {v2, p0}, Lcom/xiaopeng/factory/model/factorytest/hardwaretest/FactoryTestModel$1;-><init>(Lcom/xiaopeng/factory/model/factorytest/hardwaretest/FactoryTestModel;)V

    .line 61
    invoke-virtual {v1, v2}, Lcom/lzy/okgo/request/PostRequest;->execute(Lcom/lzy/okgo/callback/Callback;)V

    .line 93
    return-void
.end method
