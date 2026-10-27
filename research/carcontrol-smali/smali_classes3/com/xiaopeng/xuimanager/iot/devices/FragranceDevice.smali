.class public Lcom/xiaopeng/xuimanager/iot/devices/FragranceDevice;
.super Lcom/xiaopeng/xuimanager/iot/BaseDevice;
.source "FragranceDevice.java"


# static fields
.field public static final CHANNEL_COUNT:I = 0x3

.field public static final CMD_RESET_LEFTOVER:Ljava/lang/String; = "resetLeftover"

.field public static final CMD_SET_CHANNEL:Ljava/lang/String; = "setActiveChannel"

.field public static final CMD_SET_CONCENTRATION:Ljava/lang/String; = "setConcentration"

.field public static final CMD_SET_SWITCH:Ljava/lang/String; = "setSwitch"

.field public static final DEVICE_TYPE:Ljava/lang/String; = "Fragrance"

.field public static final PROP_ACTIVE_CHANNEL:Ljava/lang/String; = "active"

.field public static final PROP_CH1_EXPIRED:Ljava/lang/String; = "ch1_expired"

.field public static final PROP_CH1_LEFTOVER:Ljava/lang/String; = "ch1_leftover"

.field public static final PROP_CH2_EXPIRED:Ljava/lang/String; = "ch2_expired"

.field public static final PROP_CH2_LEFTOVER:Ljava/lang/String; = "ch2_leftover"

.field public static final PROP_CH3_EXPIRED:Ljava/lang/String; = "ch3_expired"

.field public static final PROP_CH3_LEFTOVER:Ljava/lang/String; = "ch3_leftover"

.field public static final PROP_CHANNEL_TYPES:Ljava/lang/String; = "channel_types"

.field public static final PROP_CONCENTRATION:Ljava/lang/String; = "concentration"

.field public static final PROP_CO_CONCENTRATION:Ljava/lang/String; = "co_concentration"

.field public static final PROP_SFS_BROKEN_DOWN:Ljava/lang/String; = "sfs_broken_down"

.field private static final TAG:Ljava/lang/String;

.field public static final VAL_CHANNEL_1:Ljava/lang/String; = "0"

.field public static final VAL_CHANNEL_2:Ljava/lang/String; = "1"

.field public static final VAL_CHANNEL_3:Ljava/lang/String; = "2"

.field public static final VAL_CHANNEL_4:Ljava/lang/String; = "3"

.field public static final VAL_COMMON_ERROR:Ljava/lang/String; = "1"

.field public static final VAL_CONCENTRATION_HIGH:Ljava/lang/String; = "2"

.field public static final VAL_CONCENTRATION_LOW:Ljava/lang/String; = "1"

.field public static final VAL_CONCENTRATION_MID:Ljava/lang/String; = "3"

.field public static final VAL_CO_CONCENTRATION_HIGH:Ljava/lang/String; = "2"

.field public static final VAL_CO_CONCENTRATION_LOW:Ljava/lang/String; = "1"

.field public static final VAL_CO_CONCENTRATION_NONE:Ljava/lang/String; = "0"

.field public static final VAL_EXPIRY_ACTIVE:Ljava/lang/String; = "1"

.field public static final VAL_EXPIRY_NONE:Ljava/lang/String; = "0"

.field public static final VAL_NORMAL:Ljava/lang/String; = "0"

.field public static final VAL_OFF:Ljava/lang/String; = "0"

.field public static final VAL_ON:Ljava/lang/String; = "1"

.field public static final VAL_TYPE_1:I = 0x1

.field public static final VAL_TYPE_2:I = 0x2

.field public static final VAL_TYPE_3:I = 0x3

.field public static final VAL_TYPE_4:I = 0x4

.field public static final VAL_TYPE_MAX:I = 0x64

.field public static final VAL_TYPE_UNINIT:I = -0x1

.field public static final VAL_TYPE_UNPLUG:I

.field private static final cmdList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const-string v0, "setSwitch"

    const-string v1, "setActiveChannel"

    const-string v2, "setConcentration"

    const-string v3, "resetLeftover"

    .line 150
    filled-new-array {v0, v1, v2, v3}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/xiaopeng/xuimanager/iot/devices/FragranceDevice;->cmdList:Ljava/util/List;

    .line 157
    const-class v0, Lcom/xiaopeng/xuimanager/iot/devices/FragranceDevice;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/xiaopeng/xuimanager/iot/devices/FragranceDevice;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 162
    invoke-direct {p0}, Lcom/xiaopeng/xuimanager/iot/BaseDevice;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 172
    invoke-direct {p0}, Lcom/xiaopeng/xuimanager/iot/BaseDevice;-><init>()V

    .line 173
    iput-object p1, p0, Lcom/xiaopeng/xuimanager/iot/devices/FragranceDevice;->deviceName:Ljava/lang/String;

    .line 174
    iput-object p2, p0, Lcom/xiaopeng/xuimanager/iot/devices/FragranceDevice;->deviceId:Ljava/lang/String;

    .line 175
    iput-object p3, p0, Lcom/xiaopeng/xuimanager/iot/devices/FragranceDevice;->deviceType:Ljava/lang/String;

    return-void
.end method

.method public static readChannelTypes(Ljava/lang/String;)[I
    .locals 3

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const-string v0, ","

    .line 187
    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    .line 188
    array-length v0, p0

    new-array v0, v0, [I

    const/4 v1, 0x0

    .line 189
    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_1

    .line 190
    aget-object v2, p0, v1

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    aput v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-object v0
.end method
