.class public Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/UuidInfo;
.super Ljava/lang/Object;
.source "UuidInfo.java"


# static fields
.field public static final BATTERY_LEVEL_CHARACTERISTIC_UUID:Ljava/util/UUID;

.field public static final BATTERY_SERVICE_UUID:Ljava/util/UUID;

.field public static final CFG_DESCRIPTOR_UUID:Ljava/util/UUID;

.field public static final OTA_CHARACTERISTIC_UUID:Ljava/util/UUID;

.field public static final OTA_SERVICE_UUID:Ljava/util/UUID;

.field public static final VERSION_CHARACTERISTIC_UUID:Ljava/util/UUID;

.field public static final VERSION_SERVICE_UUID:Ljava/util/UUID;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 6
    const-string v0, "00010203-0405-0607-0809-0a0b0c0d1912"

    invoke-static {v0}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v0

    sput-object v0, Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/UuidInfo;->OTA_SERVICE_UUID:Ljava/util/UUID;

    .line 7
    const-string v0, "00010203-0405-0607-0809-0a0b0c0d2b12"

    invoke-static {v0}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v0

    sput-object v0, Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/UuidInfo;->OTA_CHARACTERISTIC_UUID:Ljava/util/UUID;

    .line 8
    const-string v0, "0000d0ff-3c17-d293-8e48-14fe2e4da212"

    invoke-static {v0}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v0

    sput-object v0, Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/UuidInfo;->VERSION_SERVICE_UUID:Ljava/util/UUID;

    .line 9
    const-string v0, "0000ffd4-0000-1000-8000-00805f9b34fb"

    invoke-static {v0}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v0

    sput-object v0, Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/UuidInfo;->VERSION_CHARACTERISTIC_UUID:Ljava/util/UUID;

    .line 10
    const-string v0, "0000180f-0000-1000-8000-00805f9b34fb"

    invoke-static {v0}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v0

    sput-object v0, Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/UuidInfo;->BATTERY_SERVICE_UUID:Ljava/util/UUID;

    .line 11
    const-string v0, "00002A19-0000-1000-8000-00805f9b34fb"

    invoke-static {v0}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v0

    sput-object v0, Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/UuidInfo;->BATTERY_LEVEL_CHARACTERISTIC_UUID:Ljava/util/UUID;

    .line 12
    const-string v0, "00002902-0000-1000-8000-00805f9b34fb"

    invoke-static {v0}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v0

    sput-object v0, Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/UuidInfo;->CFG_DESCRIPTOR_UUID:Ljava/util/UUID;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
