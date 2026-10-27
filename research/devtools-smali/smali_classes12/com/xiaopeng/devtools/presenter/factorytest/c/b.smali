.class public Lcom/xiaopeng/devtools/presenter/factorytest/c/b;
.super Ljava/lang/Object;
.source "UploadDevicesIdPresenter.java"

# interfaces
.implements Lcom/xiaopeng/devtools/presenter/factorytest/c/a;


# static fields
.field private static final yk:Ljava/lang/String;


# instance fields
.field private final mVin:Ljava/lang/String;

.field private final wb:Ljava/lang/String;

.field private wf:Ljava/lang/String;

.field private wh:Lcom/xiaopeng/devtools/bean/aftersales/BleList;

.field private final wk:[Ljava/lang/String;

.field private yl:Lcom/xiaopeng/devtools/view/factorytest/vehicle/a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 40
    const-string v0, "UPLOAD_BLEKEYS_MACADDR"

    invoke-static {v0}, Lcom/xiaopeng/a/a$f;->ef(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/xiaopeng/devtools/presenter/factorytest/c/b;->yk:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/xiaopeng/devtools/view/factorytest/vehicle/a;)V
    .locals 1

    .line 87
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 88
    iput-object p1, p0, Lcom/xiaopeng/devtools/presenter/factorytest/c/b;->yl:Lcom/xiaopeng/devtools/view/factorytest/vehicle/a;

    .line 89
    invoke-static {}, Lcom/xiaopeng/devtools/utils/r;->lh()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 90
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v0, Lcom/xiaopeng/lib/utils/a/a;->WZ:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v0, Lcom/xiaopeng/devtools/presenter/factorytest/c/b;->yk:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/xiaopeng/devtools/presenter/factorytest/c/b;->wb:Ljava/lang/String;

    goto :goto_0

    .line 92
    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "https://digital-key-upload.xiaopeng.com"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v0, Lcom/xiaopeng/devtools/presenter/factorytest/c/b;->yk:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/xiaopeng/devtools/presenter/factorytest/c/b;->wb:Ljava/lang/String;

    .line 94
    :goto_0
    const-string p1, ""

    iput-object p1, p0, Lcom/xiaopeng/devtools/presenter/factorytest/c/b;->wf:Ljava/lang/String;

    .line 95
    const/4 p1, 0x0

    iput-object p1, p0, Lcom/xiaopeng/devtools/presenter/factorytest/c/b;->wh:Lcom/xiaopeng/devtools/bean/aftersales/BleList;

    .line 96
    invoke-static {}, Lcom/xiaopeng/devtools/utils/r;->eG()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/xiaopeng/devtools/presenter/factorytest/c/b;->mVin:Ljava/lang/String;

    .line 97
    const-string p1, "BLE_POSITION_NAMES"

    invoke-static {p1}, Lcom/xiaopeng/a/a$a;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v0, ","

    .line 98
    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/xiaopeng/devtools/presenter/factorytest/c/b;->wk:[Ljava/lang/String;

    .line 99
    return-void
.end method

.method static synthetic a(Lcom/xiaopeng/devtools/presenter/factorytest/c/b;)Lcom/xiaopeng/devtools/view/factorytest/vehicle/a;
    .locals 0

    .line 36
    iget-object p0, p0, Lcom/xiaopeng/devtools/presenter/factorytest/c/b;->yl:Lcom/xiaopeng/devtools/view/factorytest/vehicle/a;

    return-object p0
.end method

.method private synthetic jF()V
    .locals 5

    .line 120
    const-string v0, "UploadDevicesIdPresenter"

    const-string v1, "uploadBleMac2Cloud"

    invoke-static {v0, v1}, Lcom/xiaopeng/lib/utils/c;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 121
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    .line 122
    iget-object v2, p0, Lcom/xiaopeng/devtools/presenter/factorytest/c/b;->mVin:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_1

    .line 124
    const-string v2, "SUPPORT_MULTI_BLE_KEY"

    invoke-static {v2}, Lcom/xiaopeng/a/a$b;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 125
    iget-object v2, p0, Lcom/xiaopeng/devtools/presenter/factorytest/c/b;->wh:Lcom/xiaopeng/devtools/bean/aftersales/BleList;

    invoke-virtual {v2, v0, v1}, Lcom/xiaopeng/devtools/bean/aftersales/BleList;->setTime(J)V

    .line 126
    iget-object v0, p0, Lcom/xiaopeng/devtools/presenter/factorytest/c/b;->wh:Lcom/xiaopeng/devtools/bean/aftersales/BleList;

    iget-object v1, p0, Lcom/xiaopeng/devtools/presenter/factorytest/c/b;->mVin:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/devtools/bean/aftersales/BleList;->setVin(Ljava/lang/String;)V

    .line 127
    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    iget-object v1, p0, Lcom/xiaopeng/devtools/presenter/factorytest/c/b;->wh:Lcom/xiaopeng/devtools/bean/aftersales/BleList;

    invoke-virtual {v0, v1}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 129
    :cond_0
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 130
    const-string v3, "vin"

    iget-object v4, p0, Lcom/xiaopeng/devtools/presenter/factorytest/c/b;->mVin:Ljava/lang/String;

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 131
    const-string v3, "time"

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 132
    const-string v0, "mac"

    iget-object v1, p0, Lcom/xiaopeng/devtools/presenter/factorytest/c/b;->wf:Ljava/lang/String;

    invoke-interface {v2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 133
    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    invoke-virtual {v0, v2}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 136
    :goto_0
    const-class v1, Lcom/xiaopeng/lib/framework/netchannelmodule/NetworkChannelsEntry;

    invoke-static {v1}, Lcom/xiaopeng/lib/framework/module/Module;->get(Ljava/lang/Class;)Lcom/xiaopeng/lib/framework/module/IModuleEntry;

    move-result-object v1

    const-class v2, Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IHttp;

    invoke-interface {v1, v2}, Lcom/xiaopeng/lib/framework/module/IModuleEntry;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IHttp;

    .line 137
    iget-object v2, p0, Lcom/xiaopeng/devtools/presenter/factorytest/c/b;->wb:Ljava/lang/String;

    invoke-interface {v1, v2}, Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IHttp;->cancelTag(Ljava/lang/Object;)V

    .line 138
    invoke-interface {v1}, Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IHttp;->bizHelper()Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IBizHelper;

    move-result-object v1

    iget-object v2, p0, Lcom/xiaopeng/devtools/presenter/factorytest/c/b;->wb:Ljava/lang/String;

    invoke-interface {v1, v2, v0}, Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IBizHelper;->post(Ljava/lang/String;Ljava/lang/String;)Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IBizHelper;

    move-result-object v0

    .line 139
    invoke-interface {v0}, Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IBizHelper;->needAuthorizationInfo()Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IBizHelper;

    move-result-object v0

    .line 140
    invoke-interface {v0}, Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IBizHelper;->enableSecurityEncoding()Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IBizHelper;

    move-result-object v0

    .line 141
    invoke-interface {v0}, Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IBizHelper;->build()Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IRequest;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaopeng/devtools/presenter/factorytest/c/b;->wb:Ljava/lang/String;

    .line 142
    invoke-interface {v0, v1}, Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IRequest;->tag(Ljava/lang/Object;)Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IRequest;

    move-result-object v0

    new-instance v1, Lcom/xiaopeng/devtools/presenter/factorytest/c/b$2;

    invoke-direct {v1, p0}, Lcom/xiaopeng/devtools/presenter/factorytest/c/b$2;-><init>(Lcom/xiaopeng/devtools/presenter/factorytest/c/b;)V

    .line 143
    invoke-interface {v0, v1}, Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IRequest;->execute(Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/Callback;)V

    .line 161
    goto :goto_1

    .line 162
    :cond_1
    const-string v0, "UploadDevicesIdPresenter"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "uploadBleMac2Cloud fail VIN = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/xiaopeng/devtools/presenter/factorytest/c/b;->mVin:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/lib/utils/c;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 164
    :goto_1
    return-void
.end method

.method public static synthetic lambda$4Dcjpd6zNQALjggxEsLnQKx_r9g(Lcom/xiaopeng/devtools/presenter/factorytest/c/b;)V
    .locals 0

    invoke-direct {p0}, Lcom/xiaopeng/devtools/presenter/factorytest/c/b;->jF()V

    return-void
.end method


# virtual methods
.method public it()V
    .locals 1

    .line 50
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/greenrobot/eventbus/EventBus;->isRegistered(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 51
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/greenrobot/eventbus/EventBus;->register(Ljava/lang/Object;)V

    .line 53
    :cond_0
    return-void
.end method

.method public iv()V
    .locals 5

    .line 105
    invoke-static {}, Lcom/xiaopeng/devtools/model/a/d;->fy()Lcom/xiaopeng/devtools/model/a/d;

    move-result-object v0

    const-string v1, "replace"

    invoke-virtual {v0, v1}, Lcom/xiaopeng/devtools/model/a/d;->sendRenewalPartsRequest(Ljava/lang/String;)V

    .line 106
    const-string v0, "SUPPORT_MULTI_BLE_KEY"

    invoke-static {v0}, Lcom/xiaopeng/a/a$b;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 107
    invoke-static {}, Lcom/xiaopeng/devtools/model/a/d;->fy()Lcom/xiaopeng/devtools/model/a/d;

    move-result-object v0

    new-instance v1, Lcom/google/gson/Gson;

    invoke-direct {v1}, Lcom/google/gson/Gson;-><init>()V

    new-instance v2, Lcom/xiaopeng/devtools/bean/car/CarBase;

    const-string v3, "ble_replace_req"

    const-string v4, ""

    invoke-direct {v2, v3, v4}, Lcom/xiaopeng/devtools/bean/car/CarBase;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v1, v2}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xiaopeng/devtools/model/a/d;->sendMultiBleRenewalRequest(Ljava/lang/String;)V

    .line 110
    :cond_0
    return-void
.end method

.method public ix()Ljava/lang/String;
    .locals 1

    .line 114
    iget-object v0, p0, Lcom/xiaopeng/devtools/presenter/factorytest/c/b;->wf:Ljava/lang/String;

    return-object v0
.end method

.method public jE()V
    .locals 1

    .line 119
    new-instance v0, Lcom/xiaopeng/devtools/presenter/factorytest/c/-$$Lambda$b$4Dcjpd6zNQALjggxEsLnQKx_r9g;

    invoke-direct {v0, p0}, Lcom/xiaopeng/devtools/presenter/factorytest/c/-$$Lambda$b$4Dcjpd6zNQALjggxEsLnQKx_r9g;-><init>(Lcom/xiaopeng/devtools/presenter/factorytest/c/b;)V

    invoke-static {v0}, Lcom/xiaopeng/lib/utils/j;->execute(Ljava/lang/Runnable;)V

    .line 165
    return-void
.end method

.method public onDestroy()V
    .locals 1

    .line 168
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/greenrobot/eventbus/EventBus;->isRegistered(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 169
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/greenrobot/eventbus/EventBus;->unregister(Ljava/lang/Object;)V

    .line 171
    :cond_0
    return-void
.end method

.method public onEvent(Landroid/car/hardware/CarPropertyValue;)V
    .locals 6
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->BACKGROUND:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 57
    invoke-virtual {p1}, Landroid/car/hardware/CarPropertyValue;->getPropertyId()I

    move-result v0

    const v1, 0x2110104f

    if-eq v0, v1, :cond_0

    goto/16 :goto_1

    .line 59
    :cond_0
    const-string v0, "UploadDevicesIdPresenter"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ID_TBOX_MUL_BLE_REPLACE : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/car/hardware/CarPropertyValue;->getValue()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/lib/utils/c;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 60
    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    invoke-virtual {p1}, Landroid/car/hardware/CarPropertyValue;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    new-instance v1, Lcom/xiaopeng/devtools/presenter/factorytest/c/b$1;

    invoke-direct {v1, p0}, Lcom/xiaopeng/devtools/presenter/factorytest/c/b$1;-><init>(Lcom/xiaopeng/devtools/presenter/factorytest/c/b;)V

    .line 62
    invoke-virtual {v1}, Lcom/xiaopeng/devtools/presenter/factorytest/c/b$1;->getType()Ljava/lang/reflect/Type;

    move-result-object v1

    .line 60
    invoke-virtual {v0, p1, v1}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/xiaopeng/devtools/bean/car/CarBase;

    .line 63
    invoke-virtual {p1}, Lcom/xiaopeng/devtools/bean/car/CarBase;->getContent()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 64
    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    const-class v1, Lcom/xiaopeng/devtools/bean/aftersales/BleList;

    invoke-virtual {v0, p1, v1}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/xiaopeng/devtools/bean/aftersales/BleList;

    iput-object p1, p0, Lcom/xiaopeng/devtools/presenter/factorytest/c/b;->wh:Lcom/xiaopeng/devtools/bean/aftersales/BleList;

    .line 65
    iget-object p1, p0, Lcom/xiaopeng/devtools/presenter/factorytest/c/b;->wk:[Ljava/lang/String;

    array-length p1, p1

    if-lez p1, :cond_2

    .line 66
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 67
    iget-object v0, p0, Lcom/xiaopeng/devtools/presenter/factorytest/c/b;->wk:[Ljava/lang/String;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 68
    const-string v0, "@"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 69
    iget-object v0, p0, Lcom/xiaopeng/devtools/presenter/factorytest/c/b;->wh:Lcom/xiaopeng/devtools/bean/aftersales/BleList;

    invoke-virtual {v0}, Lcom/xiaopeng/devtools/bean/aftersales/BleList;->getMainMac()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 71
    iget-object v0, p0, Lcom/xiaopeng/devtools/presenter/factorytest/c/b;->wh:Lcom/xiaopeng/devtools/bean/aftersales/BleList;

    invoke-virtual {v0}, Lcom/xiaopeng/devtools/bean/aftersales/BleList;->getSlaveList()[Lcom/xiaopeng/devtools/bean/aftersales/BleList$Ble;

    move-result-object v0

    array-length v2, v0

    :goto_0
    if-ge v1, v2, :cond_1

    aget-object v3, v0, v1

    .line 72
    const-string v4, "\r\n"

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 73
    iget-object v4, p0, Lcom/xiaopeng/devtools/presenter/factorytest/c/b;->wk:[Ljava/lang/String;

    invoke-virtual {v3}, Lcom/xiaopeng/devtools/bean/aftersales/BleList$Ble;->getPosition()I

    move-result v5

    aget-object v4, v4, v5

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 74
    const-string v4, "@"

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 75
    invoke-virtual {v3}, Lcom/xiaopeng/devtools/bean/aftersales/BleList$Ble;->getSlaveMac()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 71
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 77
    :cond_1
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/xiaopeng/devtools/presenter/factorytest/c/b;->wf:Ljava/lang/String;

    .line 78
    iget-object p1, p0, Lcom/xiaopeng/devtools/presenter/factorytest/c/b;->yl:Lcom/xiaopeng/devtools/view/factorytest/vehicle/a;

    iget-object v0, p0, Lcom/xiaopeng/devtools/presenter/factorytest/c/b;->wf:Ljava/lang/String;

    invoke-interface {p1, v0}, Lcom/xiaopeng/devtools/view/factorytest/vehicle/a;->cZ(Ljava/lang/String;)V

    .line 79
    nop

    .line 84
    :cond_2
    :goto_1
    return-void
.end method
