.class public Lcom/xiaopeng/xuiservice/opensdk/manager/FragranceServer;
.super Lcom/xiaopeng/xuiservice/opensdk/manager/BaseManager;
.source "FragranceServer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaopeng/xuiservice/opensdk/manager/FragranceServer$SingletonHolder;
    }
.end annotation


# static fields
.field private static final MODULE_NAME:Ljava/lang/String; = "SmartFragrance"

.field private static final TAG:Ljava/lang/String; = "OSDKFragranceS"


# instance fields
.field private mDebug:Z

.field private mDebugTypes:Ljava/lang/String;

.field private mDevice:Lcom/xiaopeng/xuimanager/iot/BaseDevice;

.field private final mIoTManager:Lcom/xiaopeng/xuimanager/iot/IoTManager;

.field private final mTypeEffectMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 2

    .line 55
    invoke-direct {p0}, Lcom/xiaopeng/xuiservice/opensdk/manager/BaseManager;-><init>()V

    .line 36
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/xuiservice/opensdk/manager/FragranceServer;->mTypeEffectMap:Ljava/util/HashMap;

    .line 37
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/xiaopeng/xuiservice/opensdk/manager/FragranceServer;->mDebug:Z

    .line 39
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/xiaopeng/xuiservice/opensdk/manager/FragranceServer;->mDevice:Lcom/xiaopeng/xuimanager/iot/BaseDevice;

    .line 56
    invoke-static {}, Lcom/xiaopeng/xuimanager/iot/IoTManager;->getInstance()Lcom/xiaopeng/xuimanager/iot/IoTManager;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/xuiservice/opensdk/manager/FragranceServer;->mIoTManager:Lcom/xiaopeng/xuimanager/iot/IoTManager;

    .line 57
    invoke-direct {p0}, Lcom/xiaopeng/xuiservice/opensdk/manager/FragranceServer;->effectMapInit()V

    .line 58
    const-string v0, "fragrance"

    new-instance v1, Lcom/xiaopeng/xuiservice/opensdk/manager/-$$Lambda$FragranceServer$OtDLQzFIQodmb8teja83kLXic4o;

    invoke-direct {v1, p0}, Lcom/xiaopeng/xuiservice/opensdk/manager/-$$Lambda$FragranceServer$OtDLQzFIQodmb8teja83kLXic4o;-><init>(Lcom/xiaopeng/xuiservice/opensdk/manager/FragranceServer;)V

    invoke-static {v0, v1}, Lcom/xiaopeng/xuiservice/debug/DumpDispatcher;->registerDump(Ljava/lang/String;Lcom/xiaopeng/xuiservice/debug/DumpDispatcher$DebugDumper;)V

    .line 61
    return-void
.end method

.method synthetic constructor <init>(Lcom/xiaopeng/xuiservice/opensdk/manager/FragranceServer$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/xiaopeng/xuiservice/opensdk/manager/FragranceServer$1;

    .line 21
    invoke-direct {p0}, Lcom/xiaopeng/xuiservice/opensdk/manager/FragranceServer;-><init>()V

    return-void
.end method

.method private close()V
    .locals 2

    .line 290
    const-string v0, "OSDKFragranceS"

    const-string v1, "close"

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 291
    const-string v0, "switch_state"

    const-string v1, "0"

    invoke-direct {p0, v0, v1}, Lcom/xiaopeng/xuiservice/opensdk/manager/FragranceServer;->setDeviceProperties(Ljava/lang/String;Ljava/lang/String;)V

    .line 292
    return-void
.end method

.method private effectMapInit()V
    .locals 9

    .line 42
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/opensdk/manager/FragranceServer;->mTypeEffectMap:Ljava/util/HashMap;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/16 v3, 0xa

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v2, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 43
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/opensdk/manager/FragranceServer;->mTypeEffectMap:Ljava/util/HashMap;

    const/4 v2, 0x2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v5, 0x5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v0, v4, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 44
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/opensdk/manager/FragranceServer;->mTypeEffectMap:Ljava/util/HashMap;

    const/4 v4, 0x3

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v6, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 45
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/opensdk/manager/FragranceServer;->mTypeEffectMap:Ljava/util/HashMap;

    const/4 v2, 0x4

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const/16 v7, 0xb

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v0, v6, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 46
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/opensdk/manager/FragranceServer;->mTypeEffectMap:Ljava/util/HashMap;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/4 v6, 0x6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v0, v5, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 47
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/opensdk/manager/FragranceServer;->mTypeEffectMap:Ljava/util/HashMap;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v5, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 48
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/opensdk/manager/FragranceServer;->mTypeEffectMap:Ljava/util/HashMap;

    const/4 v4, 0x7

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/16 v6, 0x8

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v0, v5, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 49
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/opensdk/manager/FragranceServer;->mTypeEffectMap:Ljava/util/HashMap;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 50
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/opensdk/manager/FragranceServer;->mTypeEffectMap:Ljava/util/HashMap;

    const/16 v1, 0x9

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v5, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 51
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/opensdk/manager/FragranceServer;->mTypeEffectMap:Ljava/util/HashMap;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 52
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/opensdk/manager/FragranceServer;->mTypeEffectMap:Ljava/util/HashMap;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 53
    return-void
.end method

.method private getAvailableEffect([Ljava/lang/String;)V
    .locals 8
    .param p1, "results"    # [Ljava/lang/String;

    .line 171
    if-eqz p1, :cond_6

    array-length v0, p1

    if-nez v0, :cond_0

    goto :goto_1

    .line 174
    :cond_0
    invoke-direct {p0}, Lcom/xiaopeng/xuiservice/opensdk/manager/FragranceServer;->getDeviceProperties()Ljava/util/Map;

    move-result-object v0

    .line 175
    .local v0, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v1, "OSDKFragranceS"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getAvailableEffect "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " , effect: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/xiaopeng/xuiservice/opensdk/manager/FragranceServer;->mTypeEffectMap:Ljava/util/HashMap;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 176
    if-nez v0, :cond_1

    .line 177
    return-void

    .line 180
    :cond_1
    invoke-direct {p0, v0}, Lcom/xiaopeng/xuiservice/opensdk/manager/FragranceServer;->getTypes(Ljava/util/Map;)[I

    move-result-object v1

    .line 181
    .local v1, "types":[I
    if-eqz v1, :cond_5

    array-length v2, v1

    if-eqz v2, :cond_5

    .line 182
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 183
    .local v2, "sb":Ljava/lang/StringBuilder;
    const/4 v3, 0x0

    move v4, v3

    .local v4, "i":I
    :goto_0
    array-length v5, v1

    if-ge v4, v5, :cond_4

    .line 184
    aget v5, v1, v4

    .line 185
    .local v5, "type":I
    const/4 v6, 0x1

    if-lt v5, v6, :cond_3

    const/16 v6, 0x64

    if-ge v5, v6, :cond_3

    iget-object v6, p0, Lcom/xiaopeng/xuiservice/opensdk/manager/FragranceServer;->mTypeEffectMap:Ljava/util/HashMap;

    .line 186
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    if-eqz v6, :cond_3

    .line 187
    iget-object v6, p0, Lcom/xiaopeng/xuiservice/opensdk/manager/FragranceServer;->mTypeEffectMap:Ljava/util/HashMap;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    .line 188
    .local v6, "value":Ljava/lang/Integer;
    if-lez v4, :cond_2

    .line 189
    const-string v7, ";"

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 191
    :cond_2
    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 183
    .end local v5    # "type":I
    .end local v6    # "value":Ljava/lang/Integer;
    :cond_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 194
    .end local v4    # "i":I
    :cond_4
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, p1, v3

    .line 196
    .end local v2    # "sb":Ljava/lang/StringBuilder;
    :cond_5
    return-void

    .line 172
    .end local v0    # "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v1    # "types":[I
    :cond_6
    :goto_1
    return-void
.end method

.method private getDeviceProperties()Ljava/util/Map;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 312
    invoke-direct {p0}, Lcom/xiaopeng/xuiservice/opensdk/manager/FragranceServer;->getFragranceDevice()Lcom/xiaopeng/xuimanager/iot/BaseDevice;

    move-result-object v0

    .line 313
    .local v0, "device":Lcom/xiaopeng/xuimanager/iot/BaseDevice;
    if-nez v0, :cond_0

    .line 314
    const/4 v1, 0x0

    return-object v1

    .line 316
    :cond_0
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/opensdk/manager/FragranceServer;->mIoTManager:Lcom/xiaopeng/xuimanager/iot/IoTManager;

    invoke-virtual {v1, v0}, Lcom/xiaopeng/xuimanager/iot/IoTManager;->getDeviceProperties(Lcom/xiaopeng/xuimanager/iot/BaseDevice;)Ljava/util/Map;

    move-result-object v1

    return-object v1
.end method

.method private getFragranceDevice()Lcom/xiaopeng/xuimanager/iot/BaseDevice;
    .locals 4

    .line 296
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/opensdk/manager/FragranceServer;->mDevice:Lcom/xiaopeng/xuimanager/iot/BaseDevice;

    if-eqz v0, :cond_0

    .line 297
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/opensdk/manager/FragranceServer;->mDevice:Lcom/xiaopeng/xuimanager/iot/BaseDevice;

    return-object v0

    .line 299
    :cond_0
    const/4 v0, 0x0

    .line 300
    .local v0, "device":Lcom/xiaopeng/xuimanager/iot/BaseDevice;
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/opensdk/manager/FragranceServer;->mIoTManager:Lcom/xiaopeng/xuimanager/iot/IoTManager;

    const-string v2, "by_dev_type"

    const-string v3, "Fragrance"

    invoke-virtual {v1, v2, v3}, Lcom/xiaopeng/xuimanager/iot/IoTManager;->getDevice(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    .line 302
    .local v1, "devices":Ljava/util/List;, "Ljava/util/List<Lcom/xiaopeng/xuimanager/iot/BaseDevice;>;"
    if-eqz v1, :cond_1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_1

    .line 303
    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    check-cast v0, Lcom/xiaopeng/xuimanager/iot/BaseDevice;

    .line 304
    iput-object v0, p0, Lcom/xiaopeng/xuiservice/opensdk/manager/FragranceServer;->mDevice:Lcom/xiaopeng/xuimanager/iot/BaseDevice;

    .line 307
    :cond_1
    return-object v0
.end method

.method public static getInstance()Lcom/xiaopeng/xuiservice/opensdk/manager/FragranceServer;
    .locals 1

    .line 32
    invoke-static {}, Lcom/xiaopeng/xuiservice/opensdk/manager/FragranceServer$SingletonHolder;->access$100()Lcom/xiaopeng/xuiservice/opensdk/manager/FragranceServer;

    move-result-object v0

    return-object v0
.end method

.method private getSwitchState([Ljava/lang/String;)V
    .locals 10
    .param p1, "results"    # [Ljava/lang/String;

    .line 204
    if-eqz p1, :cond_7

    array-length v0, p1

    if-nez v0, :cond_0

    goto/16 :goto_4

    .line 207
    :cond_0
    invoke-direct {p0}, Lcom/xiaopeng/xuiservice/opensdk/manager/FragranceServer;->getDeviceProperties()Ljava/util/Map;

    move-result-object v0

    .line 208
    .local v0, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v1, "OSDKFragranceS"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getSwitchState "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 209
    if-nez v0, :cond_1

    .line 210
    return-void

    .line 212
    :cond_1
    const-string v1, "active"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 213
    .local v1, "channel":Ljava/lang/String;
    const-string v2, "switch_state"

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 214
    .local v2, "enable":Ljava/lang/String;
    invoke-direct {p0, v0}, Lcom/xiaopeng/xuiservice/opensdk/manager/FragranceServer;->getTypes(Ljava/util/Map;)[I

    move-result-object v3

    .line 215
    .local v3, "types":[I
    const/4 v4, 0x0

    if-eqz v1, :cond_6

    const-string v5, "1"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    if-eqz v3, :cond_6

    array-length v5, v3

    if-nez v5, :cond_2

    goto :goto_2

    .line 220
    :cond_2
    const/4 v5, 0x0

    .line 221
    .local v5, "activityType":I
    const/4 v6, -0x1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v7

    const/4 v8, 0x1

    const/4 v9, 0x2

    packed-switch v7, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    const-string v7, "2"

    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    move v6, v9

    goto :goto_0

    :pswitch_1
    const-string v7, "1"

    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    move v6, v8

    goto :goto_0

    :pswitch_2
    const-string v7, "0"

    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    move v6, v4

    :cond_3
    :goto_0
    packed-switch v6, :pswitch_data_1

    goto :goto_1

    .line 231
    :pswitch_3
    array-length v6, v3

    if-le v6, v9, :cond_4

    .line 232
    aget v5, v3, v9

    goto :goto_1

    .line 226
    :pswitch_4
    array-length v6, v3

    if-le v6, v8, :cond_4

    .line 227
    aget v5, v3, v8

    goto :goto_1

    .line 223
    :pswitch_5
    aget v5, v3, v4

    .line 224
    nop

    .line 236
    :cond_4
    :goto_1
    iget-object v6, p0, Lcom/xiaopeng/xuiservice/opensdk/manager/FragranceServer;->mTypeEffectMap:Ljava/util/HashMap;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    .line 237
    .local v6, "effect":Ljava/lang/Integer;
    if-nez v6, :cond_5

    .line 238
    const-string v7, "0"

    aput-object v7, p1, v4

    goto :goto_3

    .line 240
    :cond_5
    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    aput-object v7, p1, v4

    .end local v5    # "activityType":I
    .end local v6    # "effect":Ljava/lang/Integer;
    goto :goto_3

    .line 217
    :cond_6
    :goto_2
    const-string v5, "0"

    aput-object v5, p1, v4

    .line 243
    :goto_3
    return-void

    .line 205
    .end local v0    # "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v1    # "channel":Ljava/lang/String;
    .end local v2    # "enable":Ljava/lang/String;
    .end local v3    # "types":[I
    :cond_7
    :goto_4
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x30
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_5
        :pswitch_4
        :pswitch_3
    .end packed-switch
.end method

.method private getTypes(Ljava/util/Map;)[I
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)[I"
        }
    .end annotation

    .line 321
    .local p1, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v0, "channel_types"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 322
    .local v0, "typeString":Ljava/lang/String;
    iget-boolean v1, p0, Lcom/xiaopeng/xuiservice/opensdk/manager/FragranceServer;->mDebug:Z

    if-eqz v1, :cond_0

    .line 323
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/opensdk/manager/FragranceServer;->mDebugTypes:Ljava/lang/String;

    .line 325
    :cond_0
    invoke-static {v0}, Lcom/xiaopeng/xuimanager/iot/devices/FragranceDevice;->readChannelTypes(Ljava/lang/String;)[I

    move-result-object v1

    return-object v1
.end method

.method private handleIoControlWithPocket(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)I
    .locals 3
    .param p1, "cmd"    # Ljava/lang/String;
    .param p2, "params"    # [Ljava/lang/String;
    .param p3, "results"    # [Ljava/lang/String;

    .line 143
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const v1, -0x1bdbf87c

    const/4 v2, 0x0

    if-eq v0, v1, :cond_3

    const v1, -0x3e79385

    if-eq v0, v1, :cond_2

    const v1, 0x5a5ddf8

    if-eq v0, v1, :cond_1

    const v1, 0x5818c487

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "getSwitchState"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    const/4 v0, 0x1

    goto :goto_1

    :cond_1
    const-string v0, "close"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    const/4 v0, 0x3

    goto :goto_1

    :cond_2
    const-string v0, "openEffect"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    const/4 v0, 0x2

    goto :goto_1

    :cond_3
    const-string v0, "getAvailableEffect"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    move v0, v2

    goto :goto_1

    :cond_4
    :goto_0
    const/4 v0, -0x1

    :goto_1
    packed-switch v0, :pswitch_data_0

    goto :goto_2

    .line 157
    :pswitch_0
    invoke-direct {p0}, Lcom/xiaopeng/xuiservice/opensdk/manager/FragranceServer;->close()V

    .line 158
    goto :goto_2

    .line 153
    :pswitch_1
    invoke-direct {p0, p2, p3}, Lcom/xiaopeng/xuiservice/opensdk/manager/FragranceServer;->openEffect([Ljava/lang/String;[Ljava/lang/String;)V

    .line 154
    goto :goto_2

    .line 149
    :pswitch_2
    invoke-direct {p0, p3}, Lcom/xiaopeng/xuiservice/opensdk/manager/FragranceServer;->getSwitchState([Ljava/lang/String;)V

    .line 150
    goto :goto_2

    .line 145
    :pswitch_3
    invoke-direct {p0, p3}, Lcom/xiaopeng/xuiservice/opensdk/manager/FragranceServer;->getAvailableEffect([Ljava/lang/String;)V

    .line 146
    nop

    .line 163
    :goto_2
    return v2

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static synthetic lambda$new$0(Lcom/xiaopeng/xuiservice/opensdk/manager/FragranceServer;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 0
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "args"    # [Ljava/lang/String;

    .line 59
    invoke-virtual {p0, p1, p2}, Lcom/xiaopeng/xuiservice/opensdk/manager/FragranceServer;->dump(Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 60
    return-void
.end method

.method private openEffect([Ljava/lang/String;[Ljava/lang/String;)V
    .locals 8
    .param p1, "params"    # [Ljava/lang/String;
    .param p2, "results"    # [Ljava/lang/String;

    .line 253
    if-eqz p1, :cond_8

    array-length v0, p1

    if-eqz v0, :cond_8

    if-eqz p2, :cond_8

    array-length v0, p2

    if-nez v0, :cond_0

    goto/16 :goto_3

    .line 256
    :cond_0
    invoke-direct {p0}, Lcom/xiaopeng/xuiservice/opensdk/manager/FragranceServer;->getDeviceProperties()Ljava/util/Map;

    move-result-object v0

    .line 257
    .local v0, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v1, "OSDKFragranceS"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "openEffect "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ",mDebug="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/xiaopeng/xuiservice/opensdk/manager/FragranceServer;->mDebug:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 259
    if-nez v0, :cond_1

    .line 260
    return-void

    .line 262
    :cond_1
    invoke-direct {p0, v0}, Lcom/xiaopeng/xuiservice/opensdk/manager/FragranceServer;->getTypes(Ljava/util/Map;)[I

    move-result-object v1

    .line 263
    .local v1, "types":[I
    if-eqz v1, :cond_7

    array-length v2, v1

    if-nez v2, :cond_2

    goto :goto_2

    .line 266
    :cond_2
    const/4 v2, 0x0

    aget-object v3, p1, v2

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    .line 267
    .local v3, "effect":I
    const/4 v4, -0x1

    .line 268
    .local v4, "channel":I
    move v5, v2

    .local v5, "i":I
    :goto_0
    array-length v6, v1

    if-ge v5, v6, :cond_4

    .line 269
    iget-object v6, p0, Lcom/xiaopeng/xuiservice/opensdk/manager/FragranceServer;->mTypeEffectMap:Ljava/util/HashMap;

    aget v7, v1, v5

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    .line 270
    .local v6, "value":Ljava/lang/Integer;
    if-eqz v6, :cond_3

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v7

    if-ne v7, v3, :cond_3

    .line 271
    move v4, v5

    .line 272
    goto :goto_1

    .line 268
    .end local v6    # "value":Ljava/lang/Integer;
    :cond_3
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 275
    .end local v5    # "i":I
    :cond_4
    :goto_1
    if-ltz v4, :cond_6

    .line 276
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    .line 277
    .local v5, "opMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v6, "active"

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-interface {v5, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 278
    invoke-static {}, Lcom/xiaopeng/xuiservice/XUIConfig;->isFragranceNewProtocol()Z

    move-result v6

    if-eqz v6, :cond_5

    .line 279
    const-string v6, "switch_state"

    const-string v7, "1"

    invoke-interface {v5, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 281
    :cond_5
    invoke-direct {p0, v5}, Lcom/xiaopeng/xuiservice/opensdk/manager/FragranceServer;->setDeviceProperties(Ljava/util/Map;)V

    .line 282
    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, p2, v2

    .line 284
    .end local v5    # "opMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_6
    return-void

    .line 264
    .end local v3    # "effect":I
    .end local v4    # "channel":I
    :cond_7
    :goto_2
    return-void

    .line 254
    .end local v0    # "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v1    # "types":[I
    :cond_8
    :goto_3
    return-void
.end method

.method private setDeviceProperties(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .line 330
    invoke-direct {p0}, Lcom/xiaopeng/xuiservice/opensdk/manager/FragranceServer;->getFragranceDevice()Lcom/xiaopeng/xuimanager/iot/BaseDevice;

    move-result-object v0

    .line 331
    .local v0, "device":Lcom/xiaopeng/xuimanager/iot/BaseDevice;
    if-nez v0, :cond_0

    .line 332
    return-void

    .line 334
    :cond_0
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 335
    .local v1, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v1, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 336
    iget-object v2, p0, Lcom/xiaopeng/xuiservice/opensdk/manager/FragranceServer;->mIoTManager:Lcom/xiaopeng/xuimanager/iot/IoTManager;

    invoke-virtual {v2, v0, v1}, Lcom/xiaopeng/xuimanager/iot/IoTManager;->setDeviceProperties(Lcom/xiaopeng/xuimanager/iot/BaseDevice;Ljava/util/Map;)V

    .line 337
    return-void
.end method

.method private setDeviceProperties(Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 344
    .local p1, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-direct {p0}, Lcom/xiaopeng/xuiservice/opensdk/manager/FragranceServer;->getFragranceDevice()Lcom/xiaopeng/xuimanager/iot/BaseDevice;

    move-result-object v0

    .line 345
    .local v0, "device":Lcom/xiaopeng/xuimanager/iot/BaseDevice;
    if-nez v0, :cond_0

    .line 346
    return-void

    .line 348
    :cond_0
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/opensdk/manager/FragranceServer;->mIoTManager:Lcom/xiaopeng/xuimanager/iot/IoTManager;

    invoke-virtual {v1, v0, p1}, Lcom/xiaopeng/xuimanager/iot/IoTManager;->setDeviceProperties(Lcom/xiaopeng/xuimanager/iot/BaseDevice;Ljava/util/Map;)V

    .line 349
    return-void
.end method


# virtual methods
.method public addListener(Lcom/xiaopeng/xuiservice/opensdk/manager/IPipeListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/xiaopeng/xuiservice/opensdk/manager/IPipeListener;

    .line 83
    return-void
.end method

.method public dump(Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 7
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "args"    # [Ljava/lang/String;

    .line 98
    const-string v0, "dump:OSDKFragranceS"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 99
    if-eqz p2, :cond_c

    array-length v0, p2

    if-nez v0, :cond_0

    goto/16 :goto_7

    .line 103
    :cond_0
    const/4 v0, 0x0

    move v1, v0

    .local v1, "i":I
    :goto_0
    array-length v2, p2

    if-ge v1, v2, :cond_b

    .line 104
    aget-object v2, p2, v1

    const/4 v3, -0x1

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v4

    const/16 v5, 0x5d7

    const/4 v6, 0x1

    if-eq v4, v5, :cond_5

    const/16 v5, 0x5db

    if-eq v4, v5, :cond_4

    const/16 v5, 0x5e7

    if-eq v4, v5, :cond_3

    const v5, 0x2b0b0e7

    if-eq v4, v5, :cond_2

    const v5, 0x527aaa46

    if-eq v4, v5, :cond_1

    goto :goto_1

    :cond_1
    const-string v4, "-debug"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    move v2, v0

    goto :goto_2

    :cond_2
    const-string v4, "-type"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    const/4 v2, 0x2

    goto :goto_2

    :cond_3
    const-string v4, "-t"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    const/4 v2, 0x3

    goto :goto_2

    :cond_4
    const-string v4, "-h"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    const/4 v2, 0x4

    goto :goto_2

    :cond_5
    const-string v4, "-d"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    move v2, v6

    goto :goto_2

    :cond_6
    :goto_1
    move v2, v3

    :goto_2
    packed-switch v2, :pswitch_data_0

    .line 103
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 130
    :pswitch_0
    const-string v0, "support cmd:"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 131
    const-string v0, "-d/-debug [1/0 or true/false],enable/disable debug mode"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 132
    const-string v0, "-t/-type [1,2,3],simulate plugin channel types,note:type should among[1,12],this only works when debug mode enable"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 134
    return-void

    .line 121
    :pswitch_1
    array-length v0, p2

    if-le v0, v6, :cond_7

    .line 122
    add-int/lit8 v0, v1, 0x1

    aget-object v0, p2, v0

    iput-object v0, p0, Lcom/xiaopeng/xuiservice/opensdk/manager/FragranceServer;->mDebugTypes:Ljava/lang/String;

    .line 123
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "set types:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/xiaopeng/xuiservice/opensdk/manager/FragranceServer;->mDebugTypes:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_3

    .line 125
    :cond_7
    const-string v0, "lack of params,please check -h cmd"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 127
    :goto_3
    return-void

    .line 107
    :pswitch_2
    add-int/lit8 v2, v1, 0x1

    array-length v3, p2

    if-ge v2, v3, :cond_a

    .line 108
    const-string v2, "1"

    add-int/lit8 v3, v1, 0x1

    aget-object v3, p2, v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_9

    const-string v2, "true"

    add-int/lit8 v3, v1, 0x1

    aget-object v3, p2, v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    goto :goto_4

    .line 111
    :cond_8
    iput-boolean v0, p0, Lcom/xiaopeng/xuiservice/opensdk/manager/FragranceServer;->mDebug:Z

    goto :goto_5

    .line 109
    :cond_9
    :goto_4
    iput-boolean v6, p0, Lcom/xiaopeng/xuiservice/opensdk/manager/FragranceServer;->mDebug:Z

    .line 113
    :goto_5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "set debug mode:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/xiaopeng/xuiservice/opensdk/manager/FragranceServer;->mDebug:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_6

    .line 115
    :cond_a
    const-string v0, "lack of params,please check -h cmd"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 117
    :goto_6
    return-void

    .line 140
    .end local v1    # "i":I
    :cond_b
    return-void

    .line 100
    :cond_c
    :goto_7
    const-string v0, "please input params!"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 101
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public getModuleName()Ljava/lang/String;
    .locals 2

    .line 92
    const-string v0, "OSDKFragranceS"

    const-string v1, "MODULE_NAME=SmartFragrance"

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 93
    const-string v0, "SmartFragrance"

    return-object v0
.end method

.method public init()V
    .locals 0

    .line 65
    return-void
.end method

.method public ioControl(Ljava/lang/String;[Ljava/lang/String;II)I
    .locals 3
    .param p1, "cmd"    # Ljava/lang/String;
    .param p2, "params"    # [Ljava/lang/String;
    .param p3, "pid"    # I
    .param p4, "uid"    # I

    .line 69
    const-string v0, "OSDKFragranceS"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ioControl, cmd="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ",params="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Lcom/xiaopeng/xuiservice/opensdk/manager/FragranceServer;->arrayToString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 70
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/xiaopeng/xuiservice/opensdk/manager/FragranceServer;->handleIoControlWithPocket(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public ioControlWithPocket(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;II)I
    .locals 3
    .param p1, "cmd"    # Ljava/lang/String;
    .param p2, "params"    # [Ljava/lang/String;
    .param p3, "results"    # [Ljava/lang/String;
    .param p4, "pid"    # I
    .param p5, "uid"    # I

    .line 75
    const-string v0, "OSDKFragranceS"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ioControlWithPocket, cmd="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ",params="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Lcom/xiaopeng/xuiservice/opensdk/manager/FragranceServer;->arrayToString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " ,results="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 76
    invoke-virtual {p0, p3}, Lcom/xiaopeng/xuiservice/opensdk/manager/FragranceServer;->arrayToString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 75
    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 77
    invoke-direct {p0, p1, p2, p3}, Lcom/xiaopeng/xuiservice/opensdk/manager/FragranceServer;->handleIoControlWithPocket(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public removeListener()V
    .locals 0

    .line 88
    return-void
.end method
