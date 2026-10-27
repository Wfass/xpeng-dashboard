.class public abstract Lcom/xiaopeng/xuimanager/iot/BaseDevice;
.super Ljava/lang/Object;
.source "BaseDevice.java"


# static fields
.field public static final CMD_ADD_DEVICE:Ljava/lang/String; = "cmd_add_device"

.field public static final CMD_ONOFF:Ljava/lang/String; = "cmd_base_onoff"

.field public static final CMD_REMOVE_DEVICE:Ljava/lang/String; = "cmd_remove_device"

.field public static final CMD_SCAN_DEVICE_START:Ljava/lang/String; = "cmd_scan_device_start"

.field public static final CMD_SCAN_DEVICE_STOP:Ljava/lang/String; = "cmd_scan_device_stop"

.field public static final GET_BY_DEVICE_CLASS:Ljava/lang/String; = "by_dev_class"

.field public static final GET_BY_DEVICE_TYPE:Ljava/lang/String; = "by_dev_type"

.field public static final PROP_CONNECT_STATE:Ljava/lang/String; = "connect_state"

.field public static final PROP_ERROR_CODE:Ljava/lang/String; = "errorCode"

.field public static final PROP_POWER_STATE:Ljava/lang/String; = "power_state"

.field public static final PROP_STOP_COMMAND:Ljava/lang/String; = "XpStopCmd"

.field public static final PROP_SWITCH_STATE:Ljava/lang/String; = "switch_state"

.field public static final SCAN_TYPE_BLE:Ljava/lang/String; = "scan_type_ble"

.field private static final TAG:Ljava/lang/String;

.field public static final VAL_CONNECTED:Ljava/lang/String; = "1"

.field public static final VAL_CONNECTING:Ljava/lang/String; = "2"

.field public static final VAL_DISCONNECTED:Ljava/lang/String; = "0"

.field public static final VAL_INVALID_INT:I = -0x80000000

.field public static final VAL_INVALID_STR:Ljava/lang/String; = "-2147483648"

.field public static final VAL_OFF:Ljava/lang/String; = "0"

.field public static final VAL_ON:Ljava/lang/String; = "1"

.field public static final VAL_SERVICE_AVAILABLE:Ljava/lang/String; = "100"

.field public static final VAL_UNINIT:Ljava/lang/String; = "-1"

.field public static final VAL_UNINIT_INT:I = -0x1

.field public static final VAL_UNKNOWN_DEVICE_ID:Ljava/lang/String; = "unknown_device_id"

.field public static final VAL_UNKNOWN_DEVICE_NAME:Ljava/lang/String; = "unknown_device_name"

.field private static mMaxPropertyLogLength:I


# instance fields
.field protected final deviceClass:Ljava/lang/String;

.field protected deviceId:Ljava/lang/String;

.field protected deviceName:Ljava/lang/String;

.field protected deviceType:Ljava/lang/String;

.field protected propertyMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 170
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-class v1, Lcom/xiaopeng/xuimanager/iot/BaseDevice;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "##"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/xiaopeng/xuimanager/iot/BaseDevice;->TAG:Ljava/lang/String;

    const/16 v0, 0x80

    .line 172
    sput v0, Lcom/xiaopeng/xuimanager/iot/BaseDevice;->mMaxPropertyLogLength:I

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 177
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 163
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/xuimanager/iot/BaseDevice;->deviceClass:Ljava/lang/String;

    return-void
.end method

.method public static setMaxPropertyLogLength(I)V
    .locals 1

    const/16 v0, 0x10

    if-lt p0, v0, :cond_0

    .line 279
    sput p0, Lcom/xiaopeng/xuimanager/iot/BaseDevice;->mMaxPropertyLogLength:I

    :cond_0
    return-void
.end method


# virtual methods
.method public getDeviceClass()Ljava/lang/String;
    .locals 1

    .line 210
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/iot/BaseDevice;->deviceClass:Ljava/lang/String;

    return-object v0
.end method

.method public getDeviceId()Ljava/lang/String;
    .locals 1

    .line 194
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/iot/BaseDevice;->deviceId:Ljava/lang/String;

    return-object v0
.end method

.method public getDeviceName()Ljava/lang/String;
    .locals 1

    .line 186
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/iot/BaseDevice;->deviceName:Ljava/lang/String;

    return-object v0
.end method

.method public getDeviceType()Ljava/lang/String;
    .locals 1

    .line 202
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/iot/BaseDevice;->deviceType:Ljava/lang/String;

    return-object v0
.end method

.method public getPropertyMap()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 218
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/iot/BaseDevice;->propertyMap:Ljava/util/Map;

    return-object v0
.end method

.method public setDeviceClass(Ljava/lang/String;)Lcom/xiaopeng/xuimanager/iot/BaseDevice;
    .locals 0

    return-object p0
.end method

.method public setDeviceId(Ljava/lang/String;)Lcom/xiaopeng/xuimanager/iot/BaseDevice;
    .locals 0

    .line 237
    iput-object p1, p0, Lcom/xiaopeng/xuimanager/iot/BaseDevice;->deviceId:Ljava/lang/String;

    return-object p0
.end method

.method public setDeviceName(Ljava/lang/String;)Lcom/xiaopeng/xuimanager/iot/BaseDevice;
    .locals 0

    .line 227
    iput-object p1, p0, Lcom/xiaopeng/xuimanager/iot/BaseDevice;->deviceName:Ljava/lang/String;

    return-object p0
.end method

.method public setDeviceType(Ljava/lang/String;)Lcom/xiaopeng/xuimanager/iot/BaseDevice;
    .locals 0

    .line 247
    iput-object p1, p0, Lcom/xiaopeng/xuimanager/iot/BaseDevice;->deviceType:Ljava/lang/String;

    return-object p0
.end method

.method public setPropertyMap(Ljava/util/Map;)Lcom/xiaopeng/xuimanager/iot/BaseDevice;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/xiaopeng/xuimanager/iot/BaseDevice;"
        }
    .end annotation

    .line 268
    iput-object p1, p0, Lcom/xiaopeng/xuimanager/iot/BaseDevice;->propertyMap:Ljava/util/Map;

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 6

    .line 290
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "deviceClass["

    .line 291
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 292
    iget-object v1, p0, Lcom/xiaopeng/xuimanager/iot/BaseDevice;->deviceClass:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "],deviceName["

    .line 293
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 294
    iget-object v1, p0, Lcom/xiaopeng/xuimanager/iot/BaseDevice;->deviceName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "],deviceId["

    .line 295
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 296
    iget-object v1, p0, Lcom/xiaopeng/xuimanager/iot/BaseDevice;->deviceId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "],deviceType["

    .line 297
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 298
    iget-object v1, p0, Lcom/xiaopeng/xuimanager/iot/BaseDevice;->deviceType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "]"

    .line 299
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 300
    iget-object v1, p0, Lcom/xiaopeng/xuimanager/iot/BaseDevice;->propertyMap:Ljava/util/Map;

    if-eqz v1, :cond_1

    const-string v1, ",props:"

    .line 301
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 302
    iget-object v1, p0, Lcom/xiaopeng/xuimanager/iot/BaseDevice;->propertyMap:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 303
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    if-eqz v3, :cond_0

    .line 304
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    sget v5, Lcom/xiaopeng/xuimanager/iot/BaseDevice;->mMaxPropertyLogLength:I

    if-le v4, v5, :cond_0

    const/4 v4, 0x0

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 305
    :cond_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_1
    const-string v1, "@"

    .line 308
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 309
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 310
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
