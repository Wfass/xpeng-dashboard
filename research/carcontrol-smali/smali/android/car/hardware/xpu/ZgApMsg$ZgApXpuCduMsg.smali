.class public final Landroid/car/hardware/xpu/ZgApMsg$ZgApXpuCduMsg;
.super Lcom/android/carsdk/protobuf/GeneratedMessageLite;
.source "ZgApMsg.java"

# interfaces
.implements Landroid/car/hardware/xpu/ZgApMsg$ZgApXpuCduMsgOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/car/hardware/xpu/ZgApMsg;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ZgApXpuCduMsg"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/car/hardware/xpu/ZgApMsg$ZgApXpuCduMsg$Builder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/carsdk/protobuf/GeneratedMessageLite<",
        "Landroid/car/hardware/xpu/ZgApMsg$ZgApXpuCduMsg;",
        "Landroid/car/hardware/xpu/ZgApMsg$ZgApXpuCduMsg$Builder;",
        ">;",
        "Landroid/car/hardware/xpu/ZgApMsg$ZgApXpuCduMsgOrBuilder;"
    }
.end annotation


# static fields
.field private static final DEFAULT_INSTANCE:Landroid/car/hardware/xpu/ZgApMsg$ZgApXpuCduMsg;

.field private static volatile PARSER:Lcom/android/carsdk/protobuf/Parser; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/carsdk/protobuf/Parser<",
            "Landroid/car/hardware/xpu/ZgApMsg$ZgApXpuCduMsg;",
            ">;"
        }
    .end annotation
.end field

.field public static final XPU_CDU_REMOTEAP_ENTERFAILREASON_FIELD_NUMBER:I = 0x2

.field public static final XPU_CDU_REMOTEAP_GEARLEV_FIELD_NUMBER:I = 0x4

.field public static final XPU_CDU_REMOTEAP_PARKINGGIF_FIELD_NUMBER:I = 0x7

.field public static final XPU_CDU_REMOTEAP_PROGRESSRATE_FIELD_NUMBER:I = 0x6

.field public static final XPU_CDU_REMOTEAP_REST_DIST_FIELD_NUMBER:I = 0x8

.field public static final XPU_CDU_REMOTEAP_STATE_FIELD_NUMBER:I = 0x1

.field public static final XPU_CDU_REMOTEAP_TIPS_FIELD_NUMBER:I = 0x3

.field public static final XPU_CDU_REMOTEAP_VEHSPD_FIELD_NUMBER:I = 0x5

.field public static final XPU_CDU_SMARTPKOUTMSG_FIELD_NUMBER:I = 0x9


# instance fields
.field private xPUCDURemoteAPEnterfailReason_:I

.field private xPUCDURemoteAPGearLev_:I

.field private xPUCDURemoteAPParkingGif_:I

.field private xPUCDURemoteAPProgressRate_:I

.field private xPUCDURemoteAPRestDist_:I

.field private xPUCDURemoteAPState_:I

.field private xPUCDURemoteAPTips_:I

.field private xPUCDURemoteAPVehSpd_:F

.field private xPUCDUSmartPkoutMsg_:Landroid/car/hardware/xpu/ZgApMsg$SmartPkoutMsg;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1249
    new-instance v0, Landroid/car/hardware/xpu/ZgApMsg$ZgApXpuCduMsg;

    invoke-direct {v0}, Landroid/car/hardware/xpu/ZgApMsg$ZgApXpuCduMsg;-><init>()V

    sput-object v0, Landroid/car/hardware/xpu/ZgApMsg$ZgApXpuCduMsg;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/ZgApMsg$ZgApXpuCduMsg;

    .line 1250
    invoke-virtual {v0}, Landroid/car/hardware/xpu/ZgApMsg$ZgApXpuCduMsg;->makeImmutable()V

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .line 470
    invoke-direct {p0}, Lcom/android/carsdk/protobuf/GeneratedMessageLite;-><init>()V

    const/4 v0, 0x0

    .line 471
    iput v0, p0, Landroid/car/hardware/xpu/ZgApMsg$ZgApXpuCduMsg;->xPUCDURemoteAPState_:I

    .line 472
    iput v0, p0, Landroid/car/hardware/xpu/ZgApMsg$ZgApXpuCduMsg;->xPUCDURemoteAPEnterfailReason_:I

    .line 473
    iput v0, p0, Landroid/car/hardware/xpu/ZgApMsg$ZgApXpuCduMsg;->xPUCDURemoteAPTips_:I

    .line 474
    iput v0, p0, Landroid/car/hardware/xpu/ZgApMsg$ZgApXpuCduMsg;->xPUCDURemoteAPGearLev_:I

    const/4 v1, 0x0

    .line 475
    iput v1, p0, Landroid/car/hardware/xpu/ZgApMsg$ZgApXpuCduMsg;->xPUCDURemoteAPVehSpd_:F

    .line 476
    iput v0, p0, Landroid/car/hardware/xpu/ZgApMsg$ZgApXpuCduMsg;->xPUCDURemoteAPProgressRate_:I

    .line 477
    iput v0, p0, Landroid/car/hardware/xpu/ZgApMsg$ZgApXpuCduMsg;->xPUCDURemoteAPParkingGif_:I

    .line 478
    iput v0, p0, Landroid/car/hardware/xpu/ZgApMsg$ZgApXpuCduMsg;->xPUCDURemoteAPRestDist_:I

    return-void
.end method

.method static synthetic access$1000(Landroid/car/hardware/xpu/ZgApMsg$ZgApXpuCduMsg;)V
    .locals 0

    .line 465
    invoke-direct {p0}, Landroid/car/hardware/xpu/ZgApMsg$ZgApXpuCduMsg;->clearXPUCDURemoteAPState()V

    return-void
.end method

.method static synthetic access$1100(Landroid/car/hardware/xpu/ZgApMsg$ZgApXpuCduMsg;I)V
    .locals 0

    .line 465
    invoke-direct {p0, p1}, Landroid/car/hardware/xpu/ZgApMsg$ZgApXpuCduMsg;->setXPUCDURemoteAPEnterfailReason(I)V

    return-void
.end method

.method static synthetic access$1200(Landroid/car/hardware/xpu/ZgApMsg$ZgApXpuCduMsg;)V
    .locals 0

    .line 465
    invoke-direct {p0}, Landroid/car/hardware/xpu/ZgApMsg$ZgApXpuCduMsg;->clearXPUCDURemoteAPEnterfailReason()V

    return-void
.end method

.method static synthetic access$1300(Landroid/car/hardware/xpu/ZgApMsg$ZgApXpuCduMsg;I)V
    .locals 0

    .line 465
    invoke-direct {p0, p1}, Landroid/car/hardware/xpu/ZgApMsg$ZgApXpuCduMsg;->setXPUCDURemoteAPTips(I)V

    return-void
.end method

.method static synthetic access$1400(Landroid/car/hardware/xpu/ZgApMsg$ZgApXpuCduMsg;)V
    .locals 0

    .line 465
    invoke-direct {p0}, Landroid/car/hardware/xpu/ZgApMsg$ZgApXpuCduMsg;->clearXPUCDURemoteAPTips()V

    return-void
.end method

.method static synthetic access$1500(Landroid/car/hardware/xpu/ZgApMsg$ZgApXpuCduMsg;I)V
    .locals 0

    .line 465
    invoke-direct {p0, p1}, Landroid/car/hardware/xpu/ZgApMsg$ZgApXpuCduMsg;->setXPUCDURemoteAPGearLev(I)V

    return-void
.end method

.method static synthetic access$1600(Landroid/car/hardware/xpu/ZgApMsg$ZgApXpuCduMsg;)V
    .locals 0

    .line 465
    invoke-direct {p0}, Landroid/car/hardware/xpu/ZgApMsg$ZgApXpuCduMsg;->clearXPUCDURemoteAPGearLev()V

    return-void
.end method

.method static synthetic access$1700(Landroid/car/hardware/xpu/ZgApMsg$ZgApXpuCduMsg;F)V
    .locals 0

    .line 465
    invoke-direct {p0, p1}, Landroid/car/hardware/xpu/ZgApMsg$ZgApXpuCduMsg;->setXPUCDURemoteAPVehSpd(F)V

    return-void
.end method

.method static synthetic access$1800(Landroid/car/hardware/xpu/ZgApMsg$ZgApXpuCduMsg;)V
    .locals 0

    .line 465
    invoke-direct {p0}, Landroid/car/hardware/xpu/ZgApMsg$ZgApXpuCduMsg;->clearXPUCDURemoteAPVehSpd()V

    return-void
.end method

.method static synthetic access$1900(Landroid/car/hardware/xpu/ZgApMsg$ZgApXpuCduMsg;I)V
    .locals 0

    .line 465
    invoke-direct {p0, p1}, Landroid/car/hardware/xpu/ZgApMsg$ZgApXpuCduMsg;->setXPUCDURemoteAPProgressRate(I)V

    return-void
.end method

.method static synthetic access$2000(Landroid/car/hardware/xpu/ZgApMsg$ZgApXpuCduMsg;)V
    .locals 0

    .line 465
    invoke-direct {p0}, Landroid/car/hardware/xpu/ZgApMsg$ZgApXpuCduMsg;->clearXPUCDURemoteAPProgressRate()V

    return-void
.end method

.method static synthetic access$2100(Landroid/car/hardware/xpu/ZgApMsg$ZgApXpuCduMsg;I)V
    .locals 0

    .line 465
    invoke-direct {p0, p1}, Landroid/car/hardware/xpu/ZgApMsg$ZgApXpuCduMsg;->setXPUCDURemoteAPParkingGif(I)V

    return-void
.end method

.method static synthetic access$2200(Landroid/car/hardware/xpu/ZgApMsg$ZgApXpuCduMsg;)V
    .locals 0

    .line 465
    invoke-direct {p0}, Landroid/car/hardware/xpu/ZgApMsg$ZgApXpuCduMsg;->clearXPUCDURemoteAPParkingGif()V

    return-void
.end method

.method static synthetic access$2300(Landroid/car/hardware/xpu/ZgApMsg$ZgApXpuCduMsg;I)V
    .locals 0

    .line 465
    invoke-direct {p0, p1}, Landroid/car/hardware/xpu/ZgApMsg$ZgApXpuCduMsg;->setXPUCDURemoteAPRestDist(I)V

    return-void
.end method

.method static synthetic access$2400(Landroid/car/hardware/xpu/ZgApMsg$ZgApXpuCduMsg;)V
    .locals 0

    .line 465
    invoke-direct {p0}, Landroid/car/hardware/xpu/ZgApMsg$ZgApXpuCduMsg;->clearXPUCDURemoteAPRestDist()V

    return-void
.end method

.method static synthetic access$2500(Landroid/car/hardware/xpu/ZgApMsg$ZgApXpuCduMsg;Landroid/car/hardware/xpu/ZgApMsg$SmartPkoutMsg;)V
    .locals 0

    .line 465
    invoke-direct {p0, p1}, Landroid/car/hardware/xpu/ZgApMsg$ZgApXpuCduMsg;->setXPUCDUSmartPkoutMsg(Landroid/car/hardware/xpu/ZgApMsg$SmartPkoutMsg;)V

    return-void
.end method

.method static synthetic access$2600(Landroid/car/hardware/xpu/ZgApMsg$ZgApXpuCduMsg;Landroid/car/hardware/xpu/ZgApMsg$SmartPkoutMsg$Builder;)V
    .locals 0

    .line 465
    invoke-direct {p0, p1}, Landroid/car/hardware/xpu/ZgApMsg$ZgApXpuCduMsg;->setXPUCDUSmartPkoutMsg(Landroid/car/hardware/xpu/ZgApMsg$SmartPkoutMsg$Builder;)V

    return-void
.end method

.method static synthetic access$2700(Landroid/car/hardware/xpu/ZgApMsg$ZgApXpuCduMsg;Landroid/car/hardware/xpu/ZgApMsg$SmartPkoutMsg;)V
    .locals 0

    .line 465
    invoke-direct {p0, p1}, Landroid/car/hardware/xpu/ZgApMsg$ZgApXpuCduMsg;->mergeXPUCDUSmartPkoutMsg(Landroid/car/hardware/xpu/ZgApMsg$SmartPkoutMsg;)V

    return-void
.end method

.method static synthetic access$2800(Landroid/car/hardware/xpu/ZgApMsg$ZgApXpuCduMsg;)V
    .locals 0

    .line 465
    invoke-direct {p0}, Landroid/car/hardware/xpu/ZgApMsg$ZgApXpuCduMsg;->clearXPUCDUSmartPkoutMsg()V

    return-void
.end method

.method static synthetic access$800()Landroid/car/hardware/xpu/ZgApMsg$ZgApXpuCduMsg;
    .locals 1

    .line 465
    sget-object v0, Landroid/car/hardware/xpu/ZgApMsg$ZgApXpuCduMsg;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/ZgApMsg$ZgApXpuCduMsg;

    return-object v0
.end method

.method static synthetic access$900(Landroid/car/hardware/xpu/ZgApMsg$ZgApXpuCduMsg;I)V
    .locals 0

    .line 465
    invoke-direct {p0, p1}, Landroid/car/hardware/xpu/ZgApMsg$ZgApXpuCduMsg;->setXPUCDURemoteAPState(I)V

    return-void
.end method

.method private clearXPUCDURemoteAPEnterfailReason()V
    .locals 1

    const/4 v0, 0x0

    .line 523
    iput v0, p0, Landroid/car/hardware/xpu/ZgApMsg$ZgApXpuCduMsg;->xPUCDURemoteAPEnterfailReason_:I

    return-void
.end method

.method private clearXPUCDURemoteAPGearLev()V
    .locals 1

    const/4 v0, 0x0

    .line 569
    iput v0, p0, Landroid/car/hardware/xpu/ZgApMsg$ZgApXpuCduMsg;->xPUCDURemoteAPGearLev_:I

    return-void
.end method

.method private clearXPUCDURemoteAPParkingGif()V
    .locals 1

    const/4 v0, 0x0

    .line 638
    iput v0, p0, Landroid/car/hardware/xpu/ZgApMsg$ZgApXpuCduMsg;->xPUCDURemoteAPParkingGif_:I

    return-void
.end method

.method private clearXPUCDURemoteAPProgressRate()V
    .locals 1

    const/4 v0, 0x0

    .line 615
    iput v0, p0, Landroid/car/hardware/xpu/ZgApMsg$ZgApXpuCduMsg;->xPUCDURemoteAPProgressRate_:I

    return-void
.end method

.method private clearXPUCDURemoteAPRestDist()V
    .locals 1

    const/4 v0, 0x0

    .line 661
    iput v0, p0, Landroid/car/hardware/xpu/ZgApMsg$ZgApXpuCduMsg;->xPUCDURemoteAPRestDist_:I

    return-void
.end method

.method private clearXPUCDURemoteAPState()V
    .locals 1

    const/4 v0, 0x0

    .line 500
    iput v0, p0, Landroid/car/hardware/xpu/ZgApMsg$ZgApXpuCduMsg;->xPUCDURemoteAPState_:I

    return-void
.end method

.method private clearXPUCDURemoteAPTips()V
    .locals 1

    const/4 v0, 0x0

    .line 546
    iput v0, p0, Landroid/car/hardware/xpu/ZgApMsg$ZgApXpuCduMsg;->xPUCDURemoteAPTips_:I

    return-void
.end method

.method private clearXPUCDURemoteAPVehSpd()V
    .locals 1

    const/4 v0, 0x0

    .line 592
    iput v0, p0, Landroid/car/hardware/xpu/ZgApMsg$ZgApXpuCduMsg;->xPUCDURemoteAPVehSpd_:F

    return-void
.end method

.method private clearXPUCDUSmartPkoutMsg()V
    .locals 1

    const/4 v0, 0x0

    .line 712
    iput-object v0, p0, Landroid/car/hardware/xpu/ZgApMsg$ZgApXpuCduMsg;->xPUCDUSmartPkoutMsg_:Landroid/car/hardware/xpu/ZgApMsg$SmartPkoutMsg;

    return-void
.end method

.method public static getDefaultInstance()Landroid/car/hardware/xpu/ZgApMsg$ZgApXpuCduMsg;
    .locals 1

    .line 1254
    sget-object v0, Landroid/car/hardware/xpu/ZgApMsg$ZgApXpuCduMsg;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/ZgApMsg$ZgApXpuCduMsg;

    return-object v0
.end method

.method private mergeXPUCDUSmartPkoutMsg(Landroid/car/hardware/xpu/ZgApMsg$SmartPkoutMsg;)V
    .locals 2

    .line 700
    iget-object v0, p0, Landroid/car/hardware/xpu/ZgApMsg$ZgApXpuCduMsg;->xPUCDUSmartPkoutMsg_:Landroid/car/hardware/xpu/ZgApMsg$SmartPkoutMsg;

    if-eqz v0, :cond_0

    .line 701
    invoke-static {}, Landroid/car/hardware/xpu/ZgApMsg$SmartPkoutMsg;->getDefaultInstance()Landroid/car/hardware/xpu/ZgApMsg$SmartPkoutMsg;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 702
    iget-object v0, p0, Landroid/car/hardware/xpu/ZgApMsg$ZgApXpuCduMsg;->xPUCDUSmartPkoutMsg_:Landroid/car/hardware/xpu/ZgApMsg$SmartPkoutMsg;

    .line 703
    invoke-static {v0}, Landroid/car/hardware/xpu/ZgApMsg$SmartPkoutMsg;->newBuilder(Landroid/car/hardware/xpu/ZgApMsg$SmartPkoutMsg;)Landroid/car/hardware/xpu/ZgApMsg$SmartPkoutMsg$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/car/hardware/xpu/ZgApMsg$SmartPkoutMsg$Builder;->mergeFrom(Lcom/android/carsdk/protobuf/GeneratedMessageLite;)Lcom/android/carsdk/protobuf/GeneratedMessageLite$Builder;

    move-result-object p1

    check-cast p1, Landroid/car/hardware/xpu/ZgApMsg$SmartPkoutMsg$Builder;

    invoke-virtual {p1}, Landroid/car/hardware/xpu/ZgApMsg$SmartPkoutMsg$Builder;->buildPartial()Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Landroid/car/hardware/xpu/ZgApMsg$SmartPkoutMsg;

    iput-object p1, p0, Landroid/car/hardware/xpu/ZgApMsg$ZgApXpuCduMsg;->xPUCDUSmartPkoutMsg_:Landroid/car/hardware/xpu/ZgApMsg$SmartPkoutMsg;

    goto :goto_0

    .line 705
    :cond_0
    iput-object p1, p0, Landroid/car/hardware/xpu/ZgApMsg$ZgApXpuCduMsg;->xPUCDUSmartPkoutMsg_:Landroid/car/hardware/xpu/ZgApMsg$SmartPkoutMsg;

    :goto_0
    return-void
.end method

.method public static newBuilder()Landroid/car/hardware/xpu/ZgApMsg$ZgApXpuCduMsg$Builder;
    .locals 1

    .line 854
    sget-object v0, Landroid/car/hardware/xpu/ZgApMsg$ZgApXpuCduMsg;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/ZgApMsg$ZgApXpuCduMsg;

    invoke-virtual {v0}, Landroid/car/hardware/xpu/ZgApMsg$ZgApXpuCduMsg;->toBuilder()Lcom/android/carsdk/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Landroid/car/hardware/xpu/ZgApMsg$ZgApXpuCduMsg$Builder;

    return-object v0
.end method

.method public static newBuilder(Landroid/car/hardware/xpu/ZgApMsg$ZgApXpuCduMsg;)Landroid/car/hardware/xpu/ZgApMsg$ZgApXpuCduMsg$Builder;
    .locals 1

    .line 857
    sget-object v0, Landroid/car/hardware/xpu/ZgApMsg$ZgApXpuCduMsg;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/ZgApMsg$ZgApXpuCduMsg;

    invoke-virtual {v0}, Landroid/car/hardware/xpu/ZgApMsg$ZgApXpuCduMsg;->toBuilder()Lcom/android/carsdk/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Landroid/car/hardware/xpu/ZgApMsg$ZgApXpuCduMsg$Builder;

    invoke-virtual {v0, p0}, Landroid/car/hardware/xpu/ZgApMsg$ZgApXpuCduMsg$Builder;->mergeFrom(Lcom/android/carsdk/protobuf/GeneratedMessageLite;)Lcom/android/carsdk/protobuf/GeneratedMessageLite$Builder;

    move-result-object p0

    check-cast p0, Landroid/car/hardware/xpu/ZgApMsg$ZgApXpuCduMsg$Builder;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Landroid/car/hardware/xpu/ZgApMsg$ZgApXpuCduMsg;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 831
    sget-object v0, Landroid/car/hardware/xpu/ZgApMsg$ZgApXpuCduMsg;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/ZgApMsg$ZgApXpuCduMsg;

    invoke-static {v0, p0}, Landroid/car/hardware/xpu/ZgApMsg$ZgApXpuCduMsg;->parseDelimitedFrom(Lcom/android/carsdk/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Landroid/car/hardware/xpu/ZgApMsg$ZgApXpuCduMsg;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/android/carsdk/protobuf/ExtensionRegistryLite;)Landroid/car/hardware/xpu/ZgApMsg$ZgApXpuCduMsg;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 837
    sget-object v0, Landroid/car/hardware/xpu/ZgApMsg$ZgApXpuCduMsg;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/ZgApMsg$ZgApXpuCduMsg;

    invoke-static {v0, p0, p1}, Landroid/car/hardware/xpu/ZgApMsg$ZgApXpuCduMsg;->parseDelimitedFrom(Lcom/android/carsdk/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/android/carsdk/protobuf/ExtensionRegistryLite;)Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Landroid/car/hardware/xpu/ZgApMsg$ZgApXpuCduMsg;

    return-object p0
.end method

.method public static parseFrom(Lcom/android/carsdk/protobuf/ByteString;)Landroid/car/hardware/xpu/ZgApMsg$ZgApXpuCduMsg;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/carsdk/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 795
    sget-object v0, Landroid/car/hardware/xpu/ZgApMsg$ZgApXpuCduMsg;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/ZgApMsg$ZgApXpuCduMsg;

    invoke-static {v0, p0}, Lcom/android/carsdk/protobuf/GeneratedMessageLite;->parseFrom(Lcom/android/carsdk/protobuf/GeneratedMessageLite;Lcom/android/carsdk/protobuf/ByteString;)Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Landroid/car/hardware/xpu/ZgApMsg$ZgApXpuCduMsg;

    return-object p0
.end method

.method public static parseFrom(Lcom/android/carsdk/protobuf/ByteString;Lcom/android/carsdk/protobuf/ExtensionRegistryLite;)Landroid/car/hardware/xpu/ZgApMsg$ZgApXpuCduMsg;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/carsdk/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 802
    sget-object v0, Landroid/car/hardware/xpu/ZgApMsg$ZgApXpuCduMsg;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/ZgApMsg$ZgApXpuCduMsg;

    invoke-static {v0, p0, p1}, Lcom/android/carsdk/protobuf/GeneratedMessageLite;->parseFrom(Lcom/android/carsdk/protobuf/GeneratedMessageLite;Lcom/android/carsdk/protobuf/ByteString;Lcom/android/carsdk/protobuf/ExtensionRegistryLite;)Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Landroid/car/hardware/xpu/ZgApMsg$ZgApXpuCduMsg;

    return-object p0
.end method

.method public static parseFrom(Lcom/android/carsdk/protobuf/CodedInputStream;)Landroid/car/hardware/xpu/ZgApMsg$ZgApXpuCduMsg;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 842
    sget-object v0, Landroid/car/hardware/xpu/ZgApMsg$ZgApXpuCduMsg;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/ZgApMsg$ZgApXpuCduMsg;

    invoke-static {v0, p0}, Lcom/android/carsdk/protobuf/GeneratedMessageLite;->parseFrom(Lcom/android/carsdk/protobuf/GeneratedMessageLite;Lcom/android/carsdk/protobuf/CodedInputStream;)Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Landroid/car/hardware/xpu/ZgApMsg$ZgApXpuCduMsg;

    return-object p0
.end method

.method public static parseFrom(Lcom/android/carsdk/protobuf/CodedInputStream;Lcom/android/carsdk/protobuf/ExtensionRegistryLite;)Landroid/car/hardware/xpu/ZgApMsg$ZgApXpuCduMsg;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 849
    sget-object v0, Landroid/car/hardware/xpu/ZgApMsg$ZgApXpuCduMsg;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/ZgApMsg$ZgApXpuCduMsg;

    invoke-static {v0, p0, p1}, Lcom/android/carsdk/protobuf/GeneratedMessageLite;->parseFrom(Lcom/android/carsdk/protobuf/GeneratedMessageLite;Lcom/android/carsdk/protobuf/CodedInputStream;Lcom/android/carsdk/protobuf/ExtensionRegistryLite;)Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Landroid/car/hardware/xpu/ZgApMsg$ZgApXpuCduMsg;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Landroid/car/hardware/xpu/ZgApMsg$ZgApXpuCduMsg;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 819
    sget-object v0, Landroid/car/hardware/xpu/ZgApMsg$ZgApXpuCduMsg;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/ZgApMsg$ZgApXpuCduMsg;

    invoke-static {v0, p0}, Lcom/android/carsdk/protobuf/GeneratedMessageLite;->parseFrom(Lcom/android/carsdk/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Landroid/car/hardware/xpu/ZgApMsg$ZgApXpuCduMsg;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/android/carsdk/protobuf/ExtensionRegistryLite;)Landroid/car/hardware/xpu/ZgApMsg$ZgApXpuCduMsg;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 826
    sget-object v0, Landroid/car/hardware/xpu/ZgApMsg$ZgApXpuCduMsg;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/ZgApMsg$ZgApXpuCduMsg;

    invoke-static {v0, p0, p1}, Lcom/android/carsdk/protobuf/GeneratedMessageLite;->parseFrom(Lcom/android/carsdk/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/android/carsdk/protobuf/ExtensionRegistryLite;)Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Landroid/car/hardware/xpu/ZgApMsg$ZgApXpuCduMsg;

    return-object p0
.end method

.method public static parseFrom([B)Landroid/car/hardware/xpu/ZgApMsg$ZgApXpuCduMsg;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/carsdk/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 807
    sget-object v0, Landroid/car/hardware/xpu/ZgApMsg$ZgApXpuCduMsg;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/ZgApMsg$ZgApXpuCduMsg;

    invoke-static {v0, p0}, Lcom/android/carsdk/protobuf/GeneratedMessageLite;->parseFrom(Lcom/android/carsdk/protobuf/GeneratedMessageLite;[B)Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Landroid/car/hardware/xpu/ZgApMsg$ZgApXpuCduMsg;

    return-object p0
.end method

.method public static parseFrom([BLcom/android/carsdk/protobuf/ExtensionRegistryLite;)Landroid/car/hardware/xpu/ZgApMsg$ZgApXpuCduMsg;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/carsdk/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 814
    sget-object v0, Landroid/car/hardware/xpu/ZgApMsg$ZgApXpuCduMsg;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/ZgApMsg$ZgApXpuCduMsg;

    invoke-static {v0, p0, p1}, Lcom/android/carsdk/protobuf/GeneratedMessageLite;->parseFrom(Lcom/android/carsdk/protobuf/GeneratedMessageLite;[BLcom/android/carsdk/protobuf/ExtensionRegistryLite;)Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Landroid/car/hardware/xpu/ZgApMsg$ZgApXpuCduMsg;

    return-object p0
.end method

.method public static parser()Lcom/android/carsdk/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/android/carsdk/protobuf/Parser<",
            "Landroid/car/hardware/xpu/ZgApMsg$ZgApXpuCduMsg;",
            ">;"
        }
    .end annotation

    .line 1260
    sget-object v0, Landroid/car/hardware/xpu/ZgApMsg$ZgApXpuCduMsg;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/ZgApMsg$ZgApXpuCduMsg;

    invoke-virtual {v0}, Landroid/car/hardware/xpu/ZgApMsg$ZgApXpuCduMsg;->getParserForType()Lcom/android/carsdk/protobuf/Parser;

    move-result-object v0

    return-object v0
.end method

.method private setXPUCDURemoteAPEnterfailReason(I)V
    .locals 0

    .line 516
    iput p1, p0, Landroid/car/hardware/xpu/ZgApMsg$ZgApXpuCduMsg;->xPUCDURemoteAPEnterfailReason_:I

    return-void
.end method

.method private setXPUCDURemoteAPGearLev(I)V
    .locals 0

    .line 562
    iput p1, p0, Landroid/car/hardware/xpu/ZgApMsg$ZgApXpuCduMsg;->xPUCDURemoteAPGearLev_:I

    return-void
.end method

.method private setXPUCDURemoteAPParkingGif(I)V
    .locals 0

    .line 631
    iput p1, p0, Landroid/car/hardware/xpu/ZgApMsg$ZgApXpuCduMsg;->xPUCDURemoteAPParkingGif_:I

    return-void
.end method

.method private setXPUCDURemoteAPProgressRate(I)V
    .locals 0

    .line 608
    iput p1, p0, Landroid/car/hardware/xpu/ZgApMsg$ZgApXpuCduMsg;->xPUCDURemoteAPProgressRate_:I

    return-void
.end method

.method private setXPUCDURemoteAPRestDist(I)V
    .locals 0

    .line 654
    iput p1, p0, Landroid/car/hardware/xpu/ZgApMsg$ZgApXpuCduMsg;->xPUCDURemoteAPRestDist_:I

    return-void
.end method

.method private setXPUCDURemoteAPState(I)V
    .locals 0

    .line 493
    iput p1, p0, Landroid/car/hardware/xpu/ZgApMsg$ZgApXpuCduMsg;->xPUCDURemoteAPState_:I

    return-void
.end method

.method private setXPUCDURemoteAPTips(I)V
    .locals 0

    .line 539
    iput p1, p0, Landroid/car/hardware/xpu/ZgApMsg$ZgApXpuCduMsg;->xPUCDURemoteAPTips_:I

    return-void
.end method

.method private setXPUCDURemoteAPVehSpd(F)V
    .locals 0

    .line 585
    iput p1, p0, Landroid/car/hardware/xpu/ZgApMsg$ZgApXpuCduMsg;->xPUCDURemoteAPVehSpd_:F

    return-void
.end method

.method private setXPUCDUSmartPkoutMsg(Landroid/car/hardware/xpu/ZgApMsg$SmartPkoutMsg$Builder;)V
    .locals 0

    .line 693
    invoke-virtual {p1}, Landroid/car/hardware/xpu/ZgApMsg$SmartPkoutMsg$Builder;->build()Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Landroid/car/hardware/xpu/ZgApMsg$SmartPkoutMsg;

    iput-object p1, p0, Landroid/car/hardware/xpu/ZgApMsg$ZgApXpuCduMsg;->xPUCDUSmartPkoutMsg_:Landroid/car/hardware/xpu/ZgApMsg$SmartPkoutMsg;

    return-void
.end method

.method private setXPUCDUSmartPkoutMsg(Landroid/car/hardware/xpu/ZgApMsg$SmartPkoutMsg;)V
    .locals 0

    .line 683
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 685
    iput-object p1, p0, Landroid/car/hardware/xpu/ZgApMsg$ZgApXpuCduMsg;->xPUCDUSmartPkoutMsg_:Landroid/car/hardware/xpu/ZgApMsg$SmartPkoutMsg;

    return-void
.end method


# virtual methods
.method protected final dynamicMethod(Lcom/android/carsdk/protobuf/GeneratedMessageLite$MethodToInvoke;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5

    .line 1108
    sget-object v0, Landroid/car/hardware/xpu/ZgApMsg$1;->$SwitchMap$com$google$protobuf$GeneratedMessageLite$MethodToInvoke:[I

    invoke-virtual {p1}, Lcom/android/carsdk/protobuf/GeneratedMessageLite$MethodToInvoke;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x1

    packed-switch p1, :pswitch_data_0

    .line 1242
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1

    .line 1233
    :pswitch_0
    sget-object p1, Landroid/car/hardware/xpu/ZgApMsg$ZgApXpuCduMsg;->PARSER:Lcom/android/carsdk/protobuf/Parser;

    if-nez p1, :cond_1

    const-class p1, Landroid/car/hardware/xpu/ZgApMsg$ZgApXpuCduMsg;

    monitor-enter p1

    .line 1234
    :try_start_0
    sget-object p2, Landroid/car/hardware/xpu/ZgApMsg$ZgApXpuCduMsg;->PARSER:Lcom/android/carsdk/protobuf/Parser;

    if-nez p2, :cond_0

    .line 1235
    new-instance p2, Lcom/android/carsdk/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;

    sget-object p3, Landroid/car/hardware/xpu/ZgApMsg$ZgApXpuCduMsg;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/ZgApMsg$ZgApXpuCduMsg;

    invoke-direct {p2, p3}, Lcom/android/carsdk/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;-><init>(Lcom/android/carsdk/protobuf/GeneratedMessageLite;)V

    sput-object p2, Landroid/car/hardware/xpu/ZgApMsg$ZgApXpuCduMsg;->PARSER:Lcom/android/carsdk/protobuf/Parser;

    .line 1237
    :cond_0
    monitor-exit p1

    goto :goto_0

    :catchall_0
    move-exception p2

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p2

    .line 1239
    :cond_1
    :goto_0
    sget-object p1, Landroid/car/hardware/xpu/ZgApMsg$ZgApXpuCduMsg;->PARSER:Lcom/android/carsdk/protobuf/Parser;

    return-object p1

    .line 1147
    :pswitch_1
    check-cast p2, Lcom/android/carsdk/protobuf/CodedInputStream;

    .line 1149
    check-cast p3, Lcom/android/carsdk/protobuf/ExtensionRegistryLite;

    :cond_2
    :goto_1
    if-nez v1, :cond_e

    .line 1154
    :try_start_1
    invoke-virtual {p2}, Lcom/android/carsdk/protobuf/CodedInputStream;->readTag()I

    move-result p1

    if-eqz p1, :cond_d

    const/16 v3, 0x8

    if-eq p1, v3, :cond_c

    const/16 v3, 0x10

    if-eq p1, v3, :cond_b

    const/16 v3, 0x18

    if-eq p1, v3, :cond_a

    const/16 v3, 0x20

    if-eq p1, v3, :cond_9

    const/16 v3, 0x2d

    if-eq p1, v3, :cond_8

    const/16 v3, 0x30

    if-eq p1, v3, :cond_7

    const/16 v3, 0x38

    if-eq p1, v3, :cond_6

    const/16 v3, 0x40

    if-eq p1, v3, :cond_5

    const/16 v3, 0x4a

    if-eq p1, v3, :cond_3

    .line 1160
    invoke-virtual {p2, p1}, Lcom/android/carsdk/protobuf/CodedInputStream;->skipField(I)Z

    move-result p1

    if-nez p1, :cond_2

    goto :goto_3

    .line 1207
    :cond_3
    iget-object p1, p0, Landroid/car/hardware/xpu/ZgApMsg$ZgApXpuCduMsg;->xPUCDUSmartPkoutMsg_:Landroid/car/hardware/xpu/ZgApMsg$SmartPkoutMsg;

    if-eqz p1, :cond_4

    .line 1208
    invoke-virtual {p1}, Landroid/car/hardware/xpu/ZgApMsg$SmartPkoutMsg;->toBuilder()Lcom/android/carsdk/protobuf/GeneratedMessageLite$Builder;

    move-result-object p1

    check-cast p1, Landroid/car/hardware/xpu/ZgApMsg$SmartPkoutMsg$Builder;

    goto :goto_2

    :cond_4
    move-object p1, v0

    .line 1210
    :goto_2
    invoke-static {}, Landroid/car/hardware/xpu/ZgApMsg$SmartPkoutMsg;->parser()Lcom/android/carsdk/protobuf/Parser;

    move-result-object v3

    invoke-virtual {p2, v3, p3}, Lcom/android/carsdk/protobuf/CodedInputStream;->readMessage(Lcom/android/carsdk/protobuf/Parser;Lcom/android/carsdk/protobuf/ExtensionRegistryLite;)Lcom/android/carsdk/protobuf/MessageLite;

    move-result-object v3

    check-cast v3, Landroid/car/hardware/xpu/ZgApMsg$SmartPkoutMsg;

    iput-object v3, p0, Landroid/car/hardware/xpu/ZgApMsg$ZgApXpuCduMsg;->xPUCDUSmartPkoutMsg_:Landroid/car/hardware/xpu/ZgApMsg$SmartPkoutMsg;

    if-eqz p1, :cond_2

    .line 1212
    invoke-virtual {p1, v3}, Landroid/car/hardware/xpu/ZgApMsg$SmartPkoutMsg$Builder;->mergeFrom(Lcom/android/carsdk/protobuf/GeneratedMessageLite;)Lcom/android/carsdk/protobuf/GeneratedMessageLite$Builder;

    .line 1213
    invoke-virtual {p1}, Landroid/car/hardware/xpu/ZgApMsg$SmartPkoutMsg$Builder;->buildPartial()Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Landroid/car/hardware/xpu/ZgApMsg$SmartPkoutMsg;

    iput-object p1, p0, Landroid/car/hardware/xpu/ZgApMsg$ZgApXpuCduMsg;->xPUCDUSmartPkoutMsg_:Landroid/car/hardware/xpu/ZgApMsg$SmartPkoutMsg;

    goto :goto_1

    .line 1202
    :cond_5
    invoke-virtual {p2}, Lcom/android/carsdk/protobuf/CodedInputStream;->readUInt32()I

    move-result p1

    iput p1, p0, Landroid/car/hardware/xpu/ZgApMsg$ZgApXpuCduMsg;->xPUCDURemoteAPRestDist_:I

    goto :goto_1

    .line 1197
    :cond_6
    invoke-virtual {p2}, Lcom/android/carsdk/protobuf/CodedInputStream;->readUInt32()I

    move-result p1

    iput p1, p0, Landroid/car/hardware/xpu/ZgApMsg$ZgApXpuCduMsg;->xPUCDURemoteAPParkingGif_:I

    goto :goto_1

    .line 1192
    :cond_7
    invoke-virtual {p2}, Lcom/android/carsdk/protobuf/CodedInputStream;->readUInt32()I

    move-result p1

    iput p1, p0, Landroid/car/hardware/xpu/ZgApMsg$ZgApXpuCduMsg;->xPUCDURemoteAPProgressRate_:I

    goto :goto_1

    .line 1187
    :cond_8
    invoke-virtual {p2}, Lcom/android/carsdk/protobuf/CodedInputStream;->readFloat()F

    move-result p1

    iput p1, p0, Landroid/car/hardware/xpu/ZgApMsg$ZgApXpuCduMsg;->xPUCDURemoteAPVehSpd_:F

    goto :goto_1

    .line 1182
    :cond_9
    invoke-virtual {p2}, Lcom/android/carsdk/protobuf/CodedInputStream;->readUInt32()I

    move-result p1

    iput p1, p0, Landroid/car/hardware/xpu/ZgApMsg$ZgApXpuCduMsg;->xPUCDURemoteAPGearLev_:I

    goto :goto_1

    .line 1177
    :cond_a
    invoke-virtual {p2}, Lcom/android/carsdk/protobuf/CodedInputStream;->readUInt32()I

    move-result p1

    iput p1, p0, Landroid/car/hardware/xpu/ZgApMsg$ZgApXpuCduMsg;->xPUCDURemoteAPTips_:I

    goto/16 :goto_1

    .line 1172
    :cond_b
    invoke-virtual {p2}, Lcom/android/carsdk/protobuf/CodedInputStream;->readUInt32()I

    move-result p1

    iput p1, p0, Landroid/car/hardware/xpu/ZgApMsg$ZgApXpuCduMsg;->xPUCDURemoteAPEnterfailReason_:I

    goto/16 :goto_1

    .line 1167
    :cond_c
    invoke-virtual {p2}, Lcom/android/carsdk/protobuf/CodedInputStream;->readUInt32()I

    move-result p1

    iput p1, p0, Landroid/car/hardware/xpu/ZgApMsg$ZgApXpuCduMsg;->xPUCDURemoteAPState_:I
    :try_end_1
    .catch Lcom/android/carsdk/protobuf/InvalidProtocolBufferException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto/16 :goto_1

    :cond_d
    :goto_3
    move v1, v2

    goto/16 :goto_1

    :catchall_1
    move-exception p1

    goto :goto_4

    :catch_0
    move-exception p1

    .line 1223
    :try_start_2
    new-instance p2, Ljava/lang/RuntimeException;

    new-instance p3, Lcom/android/carsdk/protobuf/InvalidProtocolBufferException;

    .line 1225
    invoke-virtual {p1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p3, p1}, Lcom/android/carsdk/protobuf/InvalidProtocolBufferException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, p0}, Lcom/android/carsdk/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/android/carsdk/protobuf/MessageLite;)Lcom/android/carsdk/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p2

    :catch_1
    move-exception p1

    .line 1221
    new-instance p2, Ljava/lang/RuntimeException;

    invoke-virtual {p1, p0}, Lcom/android/carsdk/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/android/carsdk/protobuf/MessageLite;)Lcom/android/carsdk/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 1226
    :goto_4
    throw p1

    .line 1230
    :cond_e
    :pswitch_2
    sget-object p1, Landroid/car/hardware/xpu/ZgApMsg$ZgApXpuCduMsg;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/ZgApMsg$ZgApXpuCduMsg;

    return-object p1

    .line 1122
    :pswitch_3
    check-cast p2, Lcom/android/carsdk/protobuf/GeneratedMessageLite$Visitor;

    .line 1123
    check-cast p3, Landroid/car/hardware/xpu/ZgApMsg$ZgApXpuCduMsg;

    .line 1124
    iget p1, p0, Landroid/car/hardware/xpu/ZgApMsg$ZgApXpuCduMsg;->xPUCDURemoteAPState_:I

    if-eqz p1, :cond_f

    move v0, v2

    goto :goto_5

    :cond_f
    move v0, v1

    :goto_5
    iget v3, p3, Landroid/car/hardware/xpu/ZgApMsg$ZgApXpuCduMsg;->xPUCDURemoteAPState_:I

    if-eqz v3, :cond_10

    move v4, v2

    goto :goto_6

    :cond_10
    move v4, v1

    :goto_6
    invoke-interface {p2, v0, p1, v4, v3}, Lcom/android/carsdk/protobuf/GeneratedMessageLite$Visitor;->visitInt(ZIZI)I

    move-result p1

    iput p1, p0, Landroid/car/hardware/xpu/ZgApMsg$ZgApXpuCduMsg;->xPUCDURemoteAPState_:I

    .line 1126
    iget p1, p0, Landroid/car/hardware/xpu/ZgApMsg$ZgApXpuCduMsg;->xPUCDURemoteAPEnterfailReason_:I

    if-eqz p1, :cond_11

    move v0, v2

    goto :goto_7

    :cond_11
    move v0, v1

    :goto_7
    iget v3, p3, Landroid/car/hardware/xpu/ZgApMsg$ZgApXpuCduMsg;->xPUCDURemoteAPEnterfailReason_:I

    if-eqz v3, :cond_12

    move v4, v2

    goto :goto_8

    :cond_12
    move v4, v1

    :goto_8
    invoke-interface {p2, v0, p1, v4, v3}, Lcom/android/carsdk/protobuf/GeneratedMessageLite$Visitor;->visitInt(ZIZI)I

    move-result p1

    iput p1, p0, Landroid/car/hardware/xpu/ZgApMsg$ZgApXpuCduMsg;->xPUCDURemoteAPEnterfailReason_:I

    .line 1128
    iget p1, p0, Landroid/car/hardware/xpu/ZgApMsg$ZgApXpuCduMsg;->xPUCDURemoteAPTips_:I

    if-eqz p1, :cond_13

    move v0, v2

    goto :goto_9

    :cond_13
    move v0, v1

    :goto_9
    iget v3, p3, Landroid/car/hardware/xpu/ZgApMsg$ZgApXpuCduMsg;->xPUCDURemoteAPTips_:I

    if-eqz v3, :cond_14

    move v4, v2

    goto :goto_a

    :cond_14
    move v4, v1

    :goto_a
    invoke-interface {p2, v0, p1, v4, v3}, Lcom/android/carsdk/protobuf/GeneratedMessageLite$Visitor;->visitInt(ZIZI)I

    move-result p1

    iput p1, p0, Landroid/car/hardware/xpu/ZgApMsg$ZgApXpuCduMsg;->xPUCDURemoteAPTips_:I

    .line 1130
    iget p1, p0, Landroid/car/hardware/xpu/ZgApMsg$ZgApXpuCduMsg;->xPUCDURemoteAPGearLev_:I

    if-eqz p1, :cond_15

    move v0, v2

    goto :goto_b

    :cond_15
    move v0, v1

    :goto_b
    iget v3, p3, Landroid/car/hardware/xpu/ZgApMsg$ZgApXpuCduMsg;->xPUCDURemoteAPGearLev_:I

    if-eqz v3, :cond_16

    move v4, v2

    goto :goto_c

    :cond_16
    move v4, v1

    :goto_c
    invoke-interface {p2, v0, p1, v4, v3}, Lcom/android/carsdk/protobuf/GeneratedMessageLite$Visitor;->visitInt(ZIZI)I

    move-result p1

    iput p1, p0, Landroid/car/hardware/xpu/ZgApMsg$ZgApXpuCduMsg;->xPUCDURemoteAPGearLev_:I

    .line 1132
    iget p1, p0, Landroid/car/hardware/xpu/ZgApMsg$ZgApXpuCduMsg;->xPUCDURemoteAPVehSpd_:F

    const/4 v0, 0x0

    cmpl-float v3, p1, v0

    if-eqz v3, :cond_17

    move v3, v2

    goto :goto_d

    :cond_17
    move v3, v1

    :goto_d
    iget v4, p3, Landroid/car/hardware/xpu/ZgApMsg$ZgApXpuCduMsg;->xPUCDURemoteAPVehSpd_:F

    cmpl-float v0, v4, v0

    if-eqz v0, :cond_18

    move v0, v2

    goto :goto_e

    :cond_18
    move v0, v1

    :goto_e
    invoke-interface {p2, v3, p1, v0, v4}, Lcom/android/carsdk/protobuf/GeneratedMessageLite$Visitor;->visitFloat(ZFZF)F

    move-result p1

    iput p1, p0, Landroid/car/hardware/xpu/ZgApMsg$ZgApXpuCduMsg;->xPUCDURemoteAPVehSpd_:F

    .line 1134
    iget p1, p0, Landroid/car/hardware/xpu/ZgApMsg$ZgApXpuCduMsg;->xPUCDURemoteAPProgressRate_:I

    if-eqz p1, :cond_19

    move v0, v2

    goto :goto_f

    :cond_19
    move v0, v1

    :goto_f
    iget v3, p3, Landroid/car/hardware/xpu/ZgApMsg$ZgApXpuCduMsg;->xPUCDURemoteAPProgressRate_:I

    if-eqz v3, :cond_1a

    move v4, v2

    goto :goto_10

    :cond_1a
    move v4, v1

    :goto_10
    invoke-interface {p2, v0, p1, v4, v3}, Lcom/android/carsdk/protobuf/GeneratedMessageLite$Visitor;->visitInt(ZIZI)I

    move-result p1

    iput p1, p0, Landroid/car/hardware/xpu/ZgApMsg$ZgApXpuCduMsg;->xPUCDURemoteAPProgressRate_:I

    .line 1136
    iget p1, p0, Landroid/car/hardware/xpu/ZgApMsg$ZgApXpuCduMsg;->xPUCDURemoteAPParkingGif_:I

    if-eqz p1, :cond_1b

    move v0, v2

    goto :goto_11

    :cond_1b
    move v0, v1

    :goto_11
    iget v3, p3, Landroid/car/hardware/xpu/ZgApMsg$ZgApXpuCduMsg;->xPUCDURemoteAPParkingGif_:I

    if-eqz v3, :cond_1c

    move v4, v2

    goto :goto_12

    :cond_1c
    move v4, v1

    :goto_12
    invoke-interface {p2, v0, p1, v4, v3}, Lcom/android/carsdk/protobuf/GeneratedMessageLite$Visitor;->visitInt(ZIZI)I

    move-result p1

    iput p1, p0, Landroid/car/hardware/xpu/ZgApMsg$ZgApXpuCduMsg;->xPUCDURemoteAPParkingGif_:I

    .line 1138
    iget p1, p0, Landroid/car/hardware/xpu/ZgApMsg$ZgApXpuCduMsg;->xPUCDURemoteAPRestDist_:I

    if-eqz p1, :cond_1d

    move v0, v2

    goto :goto_13

    :cond_1d
    move v0, v1

    :goto_13
    iget v3, p3, Landroid/car/hardware/xpu/ZgApMsg$ZgApXpuCduMsg;->xPUCDURemoteAPRestDist_:I

    if-eqz v3, :cond_1e

    move v1, v2

    :cond_1e
    invoke-interface {p2, v0, p1, v1, v3}, Lcom/android/carsdk/protobuf/GeneratedMessageLite$Visitor;->visitInt(ZIZI)I

    move-result p1

    iput p1, p0, Landroid/car/hardware/xpu/ZgApMsg$ZgApXpuCduMsg;->xPUCDURemoteAPRestDist_:I

    .line 1140
    iget-object p1, p0, Landroid/car/hardware/xpu/ZgApMsg$ZgApXpuCduMsg;->xPUCDUSmartPkoutMsg_:Landroid/car/hardware/xpu/ZgApMsg$SmartPkoutMsg;

    iget-object p3, p3, Landroid/car/hardware/xpu/ZgApMsg$ZgApXpuCduMsg;->xPUCDUSmartPkoutMsg_:Landroid/car/hardware/xpu/ZgApMsg$SmartPkoutMsg;

    invoke-interface {p2, p1, p3}, Lcom/android/carsdk/protobuf/GeneratedMessageLite$Visitor;->visitMessage(Lcom/android/carsdk/protobuf/MessageLite;Lcom/android/carsdk/protobuf/MessageLite;)Lcom/android/carsdk/protobuf/MessageLite;

    move-result-object p1

    check-cast p1, Landroid/car/hardware/xpu/ZgApMsg$SmartPkoutMsg;

    iput-object p1, p0, Landroid/car/hardware/xpu/ZgApMsg$ZgApXpuCduMsg;->xPUCDUSmartPkoutMsg_:Landroid/car/hardware/xpu/ZgApMsg$SmartPkoutMsg;

    .line 1141
    sget-object p1, Lcom/android/carsdk/protobuf/GeneratedMessageLite$MergeFromVisitor;->INSTANCE:Lcom/android/carsdk/protobuf/GeneratedMessageLite$MergeFromVisitor;

    return-object p0

    .line 1119
    :pswitch_4
    new-instance p1, Landroid/car/hardware/xpu/ZgApMsg$ZgApXpuCduMsg$Builder;

    invoke-direct {p1, v0}, Landroid/car/hardware/xpu/ZgApMsg$ZgApXpuCduMsg$Builder;-><init>(Landroid/car/hardware/xpu/ZgApMsg$1;)V

    return-object p1

    :pswitch_5
    return-object v0

    .line 1113
    :pswitch_6
    sget-object p1, Landroid/car/hardware/xpu/ZgApMsg$ZgApXpuCduMsg;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/ZgApMsg$ZgApXpuCduMsg;

    return-object p1

    .line 1110
    :pswitch_7
    new-instance p1, Landroid/car/hardware/xpu/ZgApMsg$ZgApXpuCduMsg;

    invoke-direct {p1}, Landroid/car/hardware/xpu/ZgApMsg$ZgApXpuCduMsg;-><init>()V

    return-object p1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_1
        :pswitch_2
        :pswitch_0
    .end packed-switch
.end method

.method public getSerializedSize()I
    .locals 3

    .line 748
    iget v0, p0, Landroid/car/hardware/xpu/ZgApMsg$ZgApXpuCduMsg;->memoizedSerializedSize:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    return v0

    :cond_0
    const/4 v0, 0x0

    .line 752
    iget v1, p0, Landroid/car/hardware/xpu/ZgApMsg$ZgApXpuCduMsg;->xPUCDURemoteAPState_:I

    if-eqz v1, :cond_1

    const/4 v2, 0x1

    .line 754
    invoke-static {v2, v1}, Lcom/android/carsdk/protobuf/CodedOutputStream;->computeUInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 756
    :cond_1
    iget v1, p0, Landroid/car/hardware/xpu/ZgApMsg$ZgApXpuCduMsg;->xPUCDURemoteAPEnterfailReason_:I

    if-eqz v1, :cond_2

    const/4 v2, 0x2

    .line 758
    invoke-static {v2, v1}, Lcom/android/carsdk/protobuf/CodedOutputStream;->computeUInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 760
    :cond_2
    iget v1, p0, Landroid/car/hardware/xpu/ZgApMsg$ZgApXpuCduMsg;->xPUCDURemoteAPTips_:I

    if-eqz v1, :cond_3

    const/4 v2, 0x3

    .line 762
    invoke-static {v2, v1}, Lcom/android/carsdk/protobuf/CodedOutputStream;->computeUInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 764
    :cond_3
    iget v1, p0, Landroid/car/hardware/xpu/ZgApMsg$ZgApXpuCduMsg;->xPUCDURemoteAPGearLev_:I

    if-eqz v1, :cond_4

    const/4 v2, 0x4

    .line 766
    invoke-static {v2, v1}, Lcom/android/carsdk/protobuf/CodedOutputStream;->computeUInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 768
    :cond_4
    iget v1, p0, Landroid/car/hardware/xpu/ZgApMsg$ZgApXpuCduMsg;->xPUCDURemoteAPVehSpd_:F

    const/4 v2, 0x0

    cmpl-float v2, v1, v2

    if-eqz v2, :cond_5

    const/4 v2, 0x5

    .line 770
    invoke-static {v2, v1}, Lcom/android/carsdk/protobuf/CodedOutputStream;->computeFloatSize(IF)I

    move-result v1

    add-int/2addr v0, v1

    .line 772
    :cond_5
    iget v1, p0, Landroid/car/hardware/xpu/ZgApMsg$ZgApXpuCduMsg;->xPUCDURemoteAPProgressRate_:I

    if-eqz v1, :cond_6

    const/4 v2, 0x6

    .line 774
    invoke-static {v2, v1}, Lcom/android/carsdk/protobuf/CodedOutputStream;->computeUInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 776
    :cond_6
    iget v1, p0, Landroid/car/hardware/xpu/ZgApMsg$ZgApXpuCduMsg;->xPUCDURemoteAPParkingGif_:I

    if-eqz v1, :cond_7

    const/4 v2, 0x7

    .line 778
    invoke-static {v2, v1}, Lcom/android/carsdk/protobuf/CodedOutputStream;->computeUInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 780
    :cond_7
    iget v1, p0, Landroid/car/hardware/xpu/ZgApMsg$ZgApXpuCduMsg;->xPUCDURemoteAPRestDist_:I

    if-eqz v1, :cond_8

    const/16 v2, 0x8

    .line 782
    invoke-static {v2, v1}, Lcom/android/carsdk/protobuf/CodedOutputStream;->computeUInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 784
    :cond_8
    iget-object v1, p0, Landroid/car/hardware/xpu/ZgApMsg$ZgApXpuCduMsg;->xPUCDUSmartPkoutMsg_:Landroid/car/hardware/xpu/ZgApMsg$SmartPkoutMsg;

    if-eqz v1, :cond_9

    const/16 v1, 0x9

    .line 786
    invoke-virtual {p0}, Landroid/car/hardware/xpu/ZgApMsg$ZgApXpuCduMsg;->getXPUCDUSmartPkoutMsg()Landroid/car/hardware/xpu/ZgApMsg$SmartPkoutMsg;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/carsdk/protobuf/CodedOutputStream;->computeMessageSize(ILcom/android/carsdk/protobuf/MessageLite;)I

    move-result v1

    add-int/2addr v0, v1

    .line 788
    :cond_9
    iput v0, p0, Landroid/car/hardware/xpu/ZgApMsg$ZgApXpuCduMsg;->memoizedSerializedSize:I

    return v0
.end method

.method public getXPUCDURemoteAPEnterfailReason()I
    .locals 1

    .line 509
    iget v0, p0, Landroid/car/hardware/xpu/ZgApMsg$ZgApXpuCduMsg;->xPUCDURemoteAPEnterfailReason_:I

    return v0
.end method

.method public getXPUCDURemoteAPGearLev()I
    .locals 1

    .line 555
    iget v0, p0, Landroid/car/hardware/xpu/ZgApMsg$ZgApXpuCduMsg;->xPUCDURemoteAPGearLev_:I

    return v0
.end method

.method public getXPUCDURemoteAPParkingGif()I
    .locals 1

    .line 624
    iget v0, p0, Landroid/car/hardware/xpu/ZgApMsg$ZgApXpuCduMsg;->xPUCDURemoteAPParkingGif_:I

    return v0
.end method

.method public getXPUCDURemoteAPProgressRate()I
    .locals 1

    .line 601
    iget v0, p0, Landroid/car/hardware/xpu/ZgApMsg$ZgApXpuCduMsg;->xPUCDURemoteAPProgressRate_:I

    return v0
.end method

.method public getXPUCDURemoteAPRestDist()I
    .locals 1

    .line 647
    iget v0, p0, Landroid/car/hardware/xpu/ZgApMsg$ZgApXpuCduMsg;->xPUCDURemoteAPRestDist_:I

    return v0
.end method

.method public getXPUCDURemoteAPState()I
    .locals 1

    .line 486
    iget v0, p0, Landroid/car/hardware/xpu/ZgApMsg$ZgApXpuCduMsg;->xPUCDURemoteAPState_:I

    return v0
.end method

.method public getXPUCDURemoteAPTips()I
    .locals 1

    .line 532
    iget v0, p0, Landroid/car/hardware/xpu/ZgApMsg$ZgApXpuCduMsg;->xPUCDURemoteAPTips_:I

    return v0
.end method

.method public getXPUCDURemoteAPVehSpd()F
    .locals 1

    .line 578
    iget v0, p0, Landroid/car/hardware/xpu/ZgApMsg$ZgApXpuCduMsg;->xPUCDURemoteAPVehSpd_:F

    return v0
.end method

.method public getXPUCDUSmartPkoutMsg()Landroid/car/hardware/xpu/ZgApMsg$SmartPkoutMsg;
    .locals 1

    .line 676
    iget-object v0, p0, Landroid/car/hardware/xpu/ZgApMsg$ZgApXpuCduMsg;->xPUCDUSmartPkoutMsg_:Landroid/car/hardware/xpu/ZgApMsg$SmartPkoutMsg;

    if-nez v0, :cond_0

    invoke-static {}, Landroid/car/hardware/xpu/ZgApMsg$SmartPkoutMsg;->getDefaultInstance()Landroid/car/hardware/xpu/ZgApMsg$SmartPkoutMsg;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public hasXPUCDUSmartPkoutMsg()Z
    .locals 1

    .line 670
    iget-object v0, p0, Landroid/car/hardware/xpu/ZgApMsg$ZgApXpuCduMsg;->xPUCDUSmartPkoutMsg_:Landroid/car/hardware/xpu/ZgApMsg$SmartPkoutMsg;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public writeTo(Lcom/android/carsdk/protobuf/CodedOutputStream;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 718
    iget v0, p0, Landroid/car/hardware/xpu/ZgApMsg$ZgApXpuCduMsg;->xPUCDURemoteAPState_:I

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    .line 719
    invoke-virtual {p1, v1, v0}, Lcom/android/carsdk/protobuf/CodedOutputStream;->writeUInt32(II)V

    .line 721
    :cond_0
    iget v0, p0, Landroid/car/hardware/xpu/ZgApMsg$ZgApXpuCduMsg;->xPUCDURemoteAPEnterfailReason_:I

    if-eqz v0, :cond_1

    const/4 v1, 0x2

    .line 722
    invoke-virtual {p1, v1, v0}, Lcom/android/carsdk/protobuf/CodedOutputStream;->writeUInt32(II)V

    .line 724
    :cond_1
    iget v0, p0, Landroid/car/hardware/xpu/ZgApMsg$ZgApXpuCduMsg;->xPUCDURemoteAPTips_:I

    if-eqz v0, :cond_2

    const/4 v1, 0x3

    .line 725
    invoke-virtual {p1, v1, v0}, Lcom/android/carsdk/protobuf/CodedOutputStream;->writeUInt32(II)V

    .line 727
    :cond_2
    iget v0, p0, Landroid/car/hardware/xpu/ZgApMsg$ZgApXpuCduMsg;->xPUCDURemoteAPGearLev_:I

    if-eqz v0, :cond_3

    const/4 v1, 0x4

    .line 728
    invoke-virtual {p1, v1, v0}, Lcom/android/carsdk/protobuf/CodedOutputStream;->writeUInt32(II)V

    .line 730
    :cond_3
    iget v0, p0, Landroid/car/hardware/xpu/ZgApMsg$ZgApXpuCduMsg;->xPUCDURemoteAPVehSpd_:F

    const/4 v1, 0x0

    cmpl-float v1, v0, v1

    if-eqz v1, :cond_4

    const/4 v1, 0x5

    .line 731
    invoke-virtual {p1, v1, v0}, Lcom/android/carsdk/protobuf/CodedOutputStream;->writeFloat(IF)V

    .line 733
    :cond_4
    iget v0, p0, Landroid/car/hardware/xpu/ZgApMsg$ZgApXpuCduMsg;->xPUCDURemoteAPProgressRate_:I

    if-eqz v0, :cond_5

    const/4 v1, 0x6

    .line 734
    invoke-virtual {p1, v1, v0}, Lcom/android/carsdk/protobuf/CodedOutputStream;->writeUInt32(II)V

    .line 736
    :cond_5
    iget v0, p0, Landroid/car/hardware/xpu/ZgApMsg$ZgApXpuCduMsg;->xPUCDURemoteAPParkingGif_:I

    if-eqz v0, :cond_6

    const/4 v1, 0x7

    .line 737
    invoke-virtual {p1, v1, v0}, Lcom/android/carsdk/protobuf/CodedOutputStream;->writeUInt32(II)V

    .line 739
    :cond_6
    iget v0, p0, Landroid/car/hardware/xpu/ZgApMsg$ZgApXpuCduMsg;->xPUCDURemoteAPRestDist_:I

    if-eqz v0, :cond_7

    const/16 v1, 0x8

    .line 740
    invoke-virtual {p1, v1, v0}, Lcom/android/carsdk/protobuf/CodedOutputStream;->writeUInt32(II)V

    .line 742
    :cond_7
    iget-object v0, p0, Landroid/car/hardware/xpu/ZgApMsg$ZgApXpuCduMsg;->xPUCDUSmartPkoutMsg_:Landroid/car/hardware/xpu/ZgApMsg$SmartPkoutMsg;

    if-eqz v0, :cond_8

    const/16 v0, 0x9

    .line 743
    invoke-virtual {p0}, Landroid/car/hardware/xpu/ZgApMsg$ZgApXpuCduMsg;->getXPUCDUSmartPkoutMsg()Landroid/car/hardware/xpu/ZgApMsg$SmartPkoutMsg;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/android/carsdk/protobuf/CodedOutputStream;->writeMessage(ILcom/android/carsdk/protobuf/MessageLite;)V

    :cond_8
    return-void
.end method
