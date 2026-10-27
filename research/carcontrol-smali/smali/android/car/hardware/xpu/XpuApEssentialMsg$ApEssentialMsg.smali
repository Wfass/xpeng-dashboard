.class public final Landroid/car/hardware/xpu/XpuApEssentialMsg$ApEssentialMsg;
.super Lcom/android/carsdk/protobuf/GeneratedMessageLite;
.source "XpuApEssentialMsg.java"

# interfaces
.implements Landroid/car/hardware/xpu/XpuApEssentialMsg$ApEssentialMsgOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/car/hardware/xpu/XpuApEssentialMsg;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ApEssentialMsg"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/car/hardware/xpu/XpuApEssentialMsg$ApEssentialMsg$Builder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/carsdk/protobuf/GeneratedMessageLite<",
        "Landroid/car/hardware/xpu/XpuApEssentialMsg$ApEssentialMsg;",
        "Landroid/car/hardware/xpu/XpuApEssentialMsg$ApEssentialMsg$Builder;",
        ">;",
        "Landroid/car/hardware/xpu/XpuApEssentialMsg$ApEssentialMsgOrBuilder;"
    }
.end annotation


# static fields
.field public static final ARROW_FIELD_NUMBER:I = 0x5

.field public static final BDISTANCEPERCENT_FIELD_NUMBER:I = 0x8

.field private static final DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuApEssentialMsg$ApEssentialMsg;

.field public static final FAILREASON_FIELD_NUMBER:I = 0x4

.field public static final FAVORITESLOTREADY_FIELD_NUMBER:I = 0xe

.field public static final GLOBALTRAJECTORYINDEX_FIELD_NUMBER:I = 0xa

.field public static final HDMAPID_FIELD_NUMBER:I = 0xd

.field public static final IS_HDMAP_FIELD_NUMBER:I = 0xf

.field public static final MAPPOSESTATE_FIELD_NUMBER:I = 0xb

.field public static final MAP_TIME_FIELD_NUMBER:I = 0x15

.field public static final PARKSTATE_FIELD_NUMBER:I = 0x9

.field private static volatile PARSER:Lcom/android/carsdk/protobuf/Parser; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/carsdk/protobuf/Parser<",
            "Landroid/car/hardware/xpu/XpuApEssentialMsg$ApEssentialMsg;",
            ">;"
        }
    .end annotation
.end field

.field public static final REMAINDISTANCE_FIELD_NUMBER:I = 0x7

.field public static final SILENTFAVORITESTATE_FIELD_NUMBER:I = 0xc

.field public static final STATUSINDICATE_FIELD_NUMBER:I = 0x3

.field public static final TERMINAL_ATTR_FIELD_NUMBER:I = 0x13

.field public static final TERMINAL_FLOOR_FIELD_NUMBER:I = 0x14

.field public static final TRAININGFAIL_FIELD_NUMBER:I = 0x12

.field public static final TRAININGST_FIELD_NUMBER:I = 0x11

.field public static final TRAININGTIPS_FIELD_NUMBER:I = 0x10

.field public static final VOICE_FIELD_NUMBER:I = 0x6

.field public static final XPUABNORMAL_FIELD_NUMBER:I = 0x2

.field public static final XPUTIPS_FIELD_NUMBER:I = 0x1


# instance fields
.field private arrow_:I

.field private bdistancepercent_:Landroid/car/hardware/xpu/XpuApEssentialMsg$BDistancePercent;

.field private bitField0_:I

.field private failReason_:I

.field private favoriteSlotReady_:I

.field private globalTrajectoryIndex_:I

.field private hdmapId_:J

.field private isHdmap_:I

.field private mapPoseState_:I

.field private mapTime_:J

.field private parkState_:I

.field private remainDistance_:F

.field private silentFavoriteState_:I

.field private statusIndicate_:I

.field private terminalAttr_:I

.field private terminalFloor_:I

.field private trainingTips_:I

.field private trainingfail_:Lcom/android/carsdk/protobuf/Internal$IntList;

.field private trainingst_:I

.field private voice_:I

.field private xpuAbnormal_:I

.field private xputips_:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 10247
    new-instance v0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApEssentialMsg;

    invoke-direct {v0}, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApEssentialMsg;-><init>()V

    sput-object v0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApEssentialMsg;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuApEssentialMsg$ApEssentialMsg;

    .line 10248
    invoke-virtual {v0}, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApEssentialMsg;->makeImmutable()V

    return-void
.end method

.method private constructor <init>()V
    .locals 4

    .line 8645
    invoke-direct {p0}, Lcom/android/carsdk/protobuf/GeneratedMessageLite;-><init>()V

    const/4 v0, 0x0

    .line 8646
    iput v0, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApEssentialMsg;->xputips_:I

    .line 8647
    iput v0, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApEssentialMsg;->xpuAbnormal_:I

    .line 8648
    iput v0, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApEssentialMsg;->statusIndicate_:I

    .line 8649
    iput v0, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApEssentialMsg;->failReason_:I

    .line 8650
    iput v0, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApEssentialMsg;->arrow_:I

    .line 8651
    iput v0, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApEssentialMsg;->voice_:I

    const/4 v1, 0x0

    .line 8652
    iput v1, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApEssentialMsg;->remainDistance_:F

    .line 8653
    iput v0, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApEssentialMsg;->parkState_:I

    .line 8654
    iput v0, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApEssentialMsg;->globalTrajectoryIndex_:I

    .line 8655
    iput v0, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApEssentialMsg;->mapPoseState_:I

    .line 8656
    iput v0, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApEssentialMsg;->silentFavoriteState_:I

    const-wide/16 v1, 0x0

    .line 8657
    iput-wide v1, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApEssentialMsg;->hdmapId_:J

    .line 8658
    iput v0, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApEssentialMsg;->favoriteSlotReady_:I

    .line 8659
    iput v0, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApEssentialMsg;->isHdmap_:I

    .line 8660
    iput v0, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApEssentialMsg;->trainingTips_:I

    .line 8661
    iput v0, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApEssentialMsg;->trainingst_:I

    .line 8662
    invoke-static {}, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApEssentialMsg;->emptyIntList()Lcom/android/carsdk/protobuf/Internal$IntList;

    move-result-object v3

    iput-object v3, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApEssentialMsg;->trainingfail_:Lcom/android/carsdk/protobuf/Internal$IntList;

    .line 8663
    iput v0, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApEssentialMsg;->terminalAttr_:I

    .line 8664
    iput v0, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApEssentialMsg;->terminalFloor_:I

    .line 8665
    iput-wide v1, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApEssentialMsg;->mapTime_:J

    return-void
.end method

.method static synthetic access$19200()Landroid/car/hardware/xpu/XpuApEssentialMsg$ApEssentialMsg;
    .locals 1

    .line 8640
    sget-object v0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApEssentialMsg;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuApEssentialMsg$ApEssentialMsg;

    return-object v0
.end method

.method static synthetic access$19300(Landroid/car/hardware/xpu/XpuApEssentialMsg$ApEssentialMsg;I)V
    .locals 0

    .line 8640
    invoke-direct {p0, p1}, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApEssentialMsg;->setXputips(I)V

    return-void
.end method

.method static synthetic access$19400(Landroid/car/hardware/xpu/XpuApEssentialMsg$ApEssentialMsg;)V
    .locals 0

    .line 8640
    invoke-direct {p0}, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApEssentialMsg;->clearXputips()V

    return-void
.end method

.method static synthetic access$19500(Landroid/car/hardware/xpu/XpuApEssentialMsg$ApEssentialMsg;I)V
    .locals 0

    .line 8640
    invoke-direct {p0, p1}, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApEssentialMsg;->setXpuAbnormal(I)V

    return-void
.end method

.method static synthetic access$19600(Landroid/car/hardware/xpu/XpuApEssentialMsg$ApEssentialMsg;)V
    .locals 0

    .line 8640
    invoke-direct {p0}, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApEssentialMsg;->clearXpuAbnormal()V

    return-void
.end method

.method static synthetic access$19700(Landroid/car/hardware/xpu/XpuApEssentialMsg$ApEssentialMsg;I)V
    .locals 0

    .line 8640
    invoke-direct {p0, p1}, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApEssentialMsg;->setStatusIndicate(I)V

    return-void
.end method

.method static synthetic access$19800(Landroid/car/hardware/xpu/XpuApEssentialMsg$ApEssentialMsg;)V
    .locals 0

    .line 8640
    invoke-direct {p0}, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApEssentialMsg;->clearStatusIndicate()V

    return-void
.end method

.method static synthetic access$19900(Landroid/car/hardware/xpu/XpuApEssentialMsg$ApEssentialMsg;I)V
    .locals 0

    .line 8640
    invoke-direct {p0, p1}, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApEssentialMsg;->setFailReason(I)V

    return-void
.end method

.method static synthetic access$20000(Landroid/car/hardware/xpu/XpuApEssentialMsg$ApEssentialMsg;)V
    .locals 0

    .line 8640
    invoke-direct {p0}, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApEssentialMsg;->clearFailReason()V

    return-void
.end method

.method static synthetic access$20100(Landroid/car/hardware/xpu/XpuApEssentialMsg$ApEssentialMsg;I)V
    .locals 0

    .line 8640
    invoke-direct {p0, p1}, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApEssentialMsg;->setArrow(I)V

    return-void
.end method

.method static synthetic access$20200(Landroid/car/hardware/xpu/XpuApEssentialMsg$ApEssentialMsg;)V
    .locals 0

    .line 8640
    invoke-direct {p0}, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApEssentialMsg;->clearArrow()V

    return-void
.end method

.method static synthetic access$20300(Landroid/car/hardware/xpu/XpuApEssentialMsg$ApEssentialMsg;I)V
    .locals 0

    .line 8640
    invoke-direct {p0, p1}, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApEssentialMsg;->setVoice(I)V

    return-void
.end method

.method static synthetic access$20400(Landroid/car/hardware/xpu/XpuApEssentialMsg$ApEssentialMsg;)V
    .locals 0

    .line 8640
    invoke-direct {p0}, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApEssentialMsg;->clearVoice()V

    return-void
.end method

.method static synthetic access$20500(Landroid/car/hardware/xpu/XpuApEssentialMsg$ApEssentialMsg;F)V
    .locals 0

    .line 8640
    invoke-direct {p0, p1}, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApEssentialMsg;->setRemainDistance(F)V

    return-void
.end method

.method static synthetic access$20600(Landroid/car/hardware/xpu/XpuApEssentialMsg$ApEssentialMsg;)V
    .locals 0

    .line 8640
    invoke-direct {p0}, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApEssentialMsg;->clearRemainDistance()V

    return-void
.end method

.method static synthetic access$20700(Landroid/car/hardware/xpu/XpuApEssentialMsg$ApEssentialMsg;Landroid/car/hardware/xpu/XpuApEssentialMsg$BDistancePercent;)V
    .locals 0

    .line 8640
    invoke-direct {p0, p1}, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApEssentialMsg;->setBdistancepercent(Landroid/car/hardware/xpu/XpuApEssentialMsg$BDistancePercent;)V

    return-void
.end method

.method static synthetic access$20800(Landroid/car/hardware/xpu/XpuApEssentialMsg$ApEssentialMsg;Landroid/car/hardware/xpu/XpuApEssentialMsg$BDistancePercent$Builder;)V
    .locals 0

    .line 8640
    invoke-direct {p0, p1}, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApEssentialMsg;->setBdistancepercent(Landroid/car/hardware/xpu/XpuApEssentialMsg$BDistancePercent$Builder;)V

    return-void
.end method

.method static synthetic access$20900(Landroid/car/hardware/xpu/XpuApEssentialMsg$ApEssentialMsg;Landroid/car/hardware/xpu/XpuApEssentialMsg$BDistancePercent;)V
    .locals 0

    .line 8640
    invoke-direct {p0, p1}, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApEssentialMsg;->mergeBdistancepercent(Landroid/car/hardware/xpu/XpuApEssentialMsg$BDistancePercent;)V

    return-void
.end method

.method static synthetic access$21000(Landroid/car/hardware/xpu/XpuApEssentialMsg$ApEssentialMsg;)V
    .locals 0

    .line 8640
    invoke-direct {p0}, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApEssentialMsg;->clearBdistancepercent()V

    return-void
.end method

.method static synthetic access$21100(Landroid/car/hardware/xpu/XpuApEssentialMsg$ApEssentialMsg;I)V
    .locals 0

    .line 8640
    invoke-direct {p0, p1}, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApEssentialMsg;->setParkState(I)V

    return-void
.end method

.method static synthetic access$21200(Landroid/car/hardware/xpu/XpuApEssentialMsg$ApEssentialMsg;)V
    .locals 0

    .line 8640
    invoke-direct {p0}, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApEssentialMsg;->clearParkState()V

    return-void
.end method

.method static synthetic access$21300(Landroid/car/hardware/xpu/XpuApEssentialMsg$ApEssentialMsg;I)V
    .locals 0

    .line 8640
    invoke-direct {p0, p1}, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApEssentialMsg;->setGlobalTrajectoryIndex(I)V

    return-void
.end method

.method static synthetic access$21400(Landroid/car/hardware/xpu/XpuApEssentialMsg$ApEssentialMsg;)V
    .locals 0

    .line 8640
    invoke-direct {p0}, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApEssentialMsg;->clearGlobalTrajectoryIndex()V

    return-void
.end method

.method static synthetic access$21500(Landroid/car/hardware/xpu/XpuApEssentialMsg$ApEssentialMsg;I)V
    .locals 0

    .line 8640
    invoke-direct {p0, p1}, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApEssentialMsg;->setMapPoseState(I)V

    return-void
.end method

.method static synthetic access$21600(Landroid/car/hardware/xpu/XpuApEssentialMsg$ApEssentialMsg;)V
    .locals 0

    .line 8640
    invoke-direct {p0}, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApEssentialMsg;->clearMapPoseState()V

    return-void
.end method

.method static synthetic access$21700(Landroid/car/hardware/xpu/XpuApEssentialMsg$ApEssentialMsg;I)V
    .locals 0

    .line 8640
    invoke-direct {p0, p1}, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApEssentialMsg;->setSilentFavoriteState(I)V

    return-void
.end method

.method static synthetic access$21800(Landroid/car/hardware/xpu/XpuApEssentialMsg$ApEssentialMsg;)V
    .locals 0

    .line 8640
    invoke-direct {p0}, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApEssentialMsg;->clearSilentFavoriteState()V

    return-void
.end method

.method static synthetic access$21900(Landroid/car/hardware/xpu/XpuApEssentialMsg$ApEssentialMsg;J)V
    .locals 0

    .line 8640
    invoke-direct {p0, p1, p2}, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApEssentialMsg;->setHdmapId(J)V

    return-void
.end method

.method static synthetic access$22000(Landroid/car/hardware/xpu/XpuApEssentialMsg$ApEssentialMsg;)V
    .locals 0

    .line 8640
    invoke-direct {p0}, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApEssentialMsg;->clearHdmapId()V

    return-void
.end method

.method static synthetic access$22100(Landroid/car/hardware/xpu/XpuApEssentialMsg$ApEssentialMsg;I)V
    .locals 0

    .line 8640
    invoke-direct {p0, p1}, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApEssentialMsg;->setFavoriteSlotReady(I)V

    return-void
.end method

.method static synthetic access$22200(Landroid/car/hardware/xpu/XpuApEssentialMsg$ApEssentialMsg;)V
    .locals 0

    .line 8640
    invoke-direct {p0}, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApEssentialMsg;->clearFavoriteSlotReady()V

    return-void
.end method

.method static synthetic access$22300(Landroid/car/hardware/xpu/XpuApEssentialMsg$ApEssentialMsg;I)V
    .locals 0

    .line 8640
    invoke-direct {p0, p1}, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApEssentialMsg;->setIsHdmap(I)V

    return-void
.end method

.method static synthetic access$22400(Landroid/car/hardware/xpu/XpuApEssentialMsg$ApEssentialMsg;)V
    .locals 0

    .line 8640
    invoke-direct {p0}, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApEssentialMsg;->clearIsHdmap()V

    return-void
.end method

.method static synthetic access$22500(Landroid/car/hardware/xpu/XpuApEssentialMsg$ApEssentialMsg;I)V
    .locals 0

    .line 8640
    invoke-direct {p0, p1}, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApEssentialMsg;->setTrainingTips(I)V

    return-void
.end method

.method static synthetic access$22600(Landroid/car/hardware/xpu/XpuApEssentialMsg$ApEssentialMsg;)V
    .locals 0

    .line 8640
    invoke-direct {p0}, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApEssentialMsg;->clearTrainingTips()V

    return-void
.end method

.method static synthetic access$22700(Landroid/car/hardware/xpu/XpuApEssentialMsg$ApEssentialMsg;I)V
    .locals 0

    .line 8640
    invoke-direct {p0, p1}, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApEssentialMsg;->setTrainingst(I)V

    return-void
.end method

.method static synthetic access$22800(Landroid/car/hardware/xpu/XpuApEssentialMsg$ApEssentialMsg;)V
    .locals 0

    .line 8640
    invoke-direct {p0}, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApEssentialMsg;->clearTrainingst()V

    return-void
.end method

.method static synthetic access$22900(Landroid/car/hardware/xpu/XpuApEssentialMsg$ApEssentialMsg;II)V
    .locals 0

    .line 8640
    invoke-direct {p0, p1, p2}, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApEssentialMsg;->setTrainingfail(II)V

    return-void
.end method

.method static synthetic access$23000(Landroid/car/hardware/xpu/XpuApEssentialMsg$ApEssentialMsg;I)V
    .locals 0

    .line 8640
    invoke-direct {p0, p1}, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApEssentialMsg;->addTrainingfail(I)V

    return-void
.end method

.method static synthetic access$23100(Landroid/car/hardware/xpu/XpuApEssentialMsg$ApEssentialMsg;Ljava/lang/Iterable;)V
    .locals 0

    .line 8640
    invoke-direct {p0, p1}, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApEssentialMsg;->addAllTrainingfail(Ljava/lang/Iterable;)V

    return-void
.end method

.method static synthetic access$23200(Landroid/car/hardware/xpu/XpuApEssentialMsg$ApEssentialMsg;)V
    .locals 0

    .line 8640
    invoke-direct {p0}, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApEssentialMsg;->clearTrainingfail()V

    return-void
.end method

.method static synthetic access$23300(Landroid/car/hardware/xpu/XpuApEssentialMsg$ApEssentialMsg;I)V
    .locals 0

    .line 8640
    invoke-direct {p0, p1}, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApEssentialMsg;->setTerminalAttr(I)V

    return-void
.end method

.method static synthetic access$23400(Landroid/car/hardware/xpu/XpuApEssentialMsg$ApEssentialMsg;)V
    .locals 0

    .line 8640
    invoke-direct {p0}, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApEssentialMsg;->clearTerminalAttr()V

    return-void
.end method

.method static synthetic access$23500(Landroid/car/hardware/xpu/XpuApEssentialMsg$ApEssentialMsg;I)V
    .locals 0

    .line 8640
    invoke-direct {p0, p1}, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApEssentialMsg;->setTerminalFloor(I)V

    return-void
.end method

.method static synthetic access$23600(Landroid/car/hardware/xpu/XpuApEssentialMsg$ApEssentialMsg;)V
    .locals 0

    .line 8640
    invoke-direct {p0}, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApEssentialMsg;->clearTerminalFloor()V

    return-void
.end method

.method static synthetic access$23700(Landroid/car/hardware/xpu/XpuApEssentialMsg$ApEssentialMsg;J)V
    .locals 0

    .line 8640
    invoke-direct {p0, p1, p2}, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApEssentialMsg;->setMapTime(J)V

    return-void
.end method

.method static synthetic access$23800(Landroid/car/hardware/xpu/XpuApEssentialMsg$ApEssentialMsg;)V
    .locals 0

    .line 8640
    invoke-direct {p0}, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApEssentialMsg;->clearMapTime()V

    return-void
.end method

.method private addAllTrainingfail(Ljava/lang/Iterable;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 9135
    invoke-direct {p0}, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApEssentialMsg;->ensureTrainingfailIsMutable()V

    .line 9136
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApEssentialMsg;->trainingfail_:Lcom/android/carsdk/protobuf/Internal$IntList;

    invoke-static {p1, v0}, Lcom/android/carsdk/protobuf/AbstractMessageLite;->addAll(Ljava/lang/Iterable;Ljava/util/Collection;)V

    return-void
.end method

.method private addTrainingfail(I)V
    .locals 1

    .line 9127
    invoke-direct {p0}, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApEssentialMsg;->ensureTrainingfailIsMutable()V

    .line 9128
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApEssentialMsg;->trainingfail_:Lcom/android/carsdk/protobuf/Internal$IntList;

    invoke-interface {v0, p1}, Lcom/android/carsdk/protobuf/Internal$IntList;->addInt(I)V

    return-void
.end method

.method private clearArrow()V
    .locals 1

    const/4 v0, 0x0

    .line 8780
    iput v0, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApEssentialMsg;->arrow_:I

    return-void
.end method

.method private clearBdistancepercent()V
    .locals 1

    const/4 v0, 0x0

    .line 8877
    iput-object v0, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApEssentialMsg;->bdistancepercent_:Landroid/car/hardware/xpu/XpuApEssentialMsg$BDistancePercent;

    return-void
.end method

.method private clearFailReason()V
    .locals 1

    const/4 v0, 0x0

    .line 8757
    iput v0, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApEssentialMsg;->failReason_:I

    return-void
.end method

.method private clearFavoriteSlotReady()V
    .locals 1

    const/4 v0, 0x0

    .line 9016
    iput v0, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApEssentialMsg;->favoriteSlotReady_:I

    return-void
.end method

.method private clearGlobalTrajectoryIndex()V
    .locals 1

    const/4 v0, 0x0

    .line 8924
    iput v0, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApEssentialMsg;->globalTrajectoryIndex_:I

    return-void
.end method

.method private clearHdmapId()V
    .locals 2

    const-wide/16 v0, 0x0

    .line 8993
    iput-wide v0, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApEssentialMsg;->hdmapId_:J

    return-void
.end method

.method private clearIsHdmap()V
    .locals 1

    const/4 v0, 0x0

    .line 9039
    iput v0, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApEssentialMsg;->isHdmap_:I

    return-void
.end method

.method private clearMapPoseState()V
    .locals 1

    const/4 v0, 0x0

    .line 8947
    iput v0, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApEssentialMsg;->mapPoseState_:I

    return-void
.end method

.method private clearMapTime()V
    .locals 2

    const-wide/16 v0, 0x0

    .line 9212
    iput-wide v0, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApEssentialMsg;->mapTime_:J

    return-void
.end method

.method private clearParkState()V
    .locals 1

    const/4 v0, 0x0

    .line 8901
    iput v0, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApEssentialMsg;->parkState_:I

    return-void
.end method

.method private clearRemainDistance()V
    .locals 1

    const/4 v0, 0x0

    .line 8826
    iput v0, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApEssentialMsg;->remainDistance_:F

    return-void
.end method

.method private clearSilentFavoriteState()V
    .locals 1

    const/4 v0, 0x0

    .line 8970
    iput v0, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApEssentialMsg;->silentFavoriteState_:I

    return-void
.end method

.method private clearStatusIndicate()V
    .locals 1

    const/4 v0, 0x0

    .line 8734
    iput v0, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApEssentialMsg;->statusIndicate_:I

    return-void
.end method

.method private clearTerminalAttr()V
    .locals 1

    const/4 v0, 0x0

    .line 9166
    iput v0, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApEssentialMsg;->terminalAttr_:I

    return-void
.end method

.method private clearTerminalFloor()V
    .locals 1

    const/4 v0, 0x0

    .line 9189
    iput v0, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApEssentialMsg;->terminalFloor_:I

    return-void
.end method

.method private clearTrainingTips()V
    .locals 1

    const/4 v0, 0x0

    .line 9062
    iput v0, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApEssentialMsg;->trainingTips_:I

    return-void
.end method

.method private clearTrainingfail()V
    .locals 1

    .line 9143
    invoke-static {}, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApEssentialMsg;->emptyIntList()Lcom/android/carsdk/protobuf/Internal$IntList;

    move-result-object v0

    iput-object v0, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApEssentialMsg;->trainingfail_:Lcom/android/carsdk/protobuf/Internal$IntList;

    return-void
.end method

.method private clearTrainingst()V
    .locals 1

    const/4 v0, 0x0

    .line 9085
    iput v0, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApEssentialMsg;->trainingst_:I

    return-void
.end method

.method private clearVoice()V
    .locals 1

    const/4 v0, 0x0

    .line 8803
    iput v0, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApEssentialMsg;->voice_:I

    return-void
.end method

.method private clearXpuAbnormal()V
    .locals 1

    const/4 v0, 0x0

    .line 8711
    iput v0, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApEssentialMsg;->xpuAbnormal_:I

    return-void
.end method

.method private clearXputips()V
    .locals 1

    const/4 v0, 0x0

    .line 8688
    iput v0, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApEssentialMsg;->xputips_:I

    return-void
.end method

.method private ensureTrainingfailIsMutable()V
    .locals 1

    .line 9110
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApEssentialMsg;->trainingfail_:Lcom/android/carsdk/protobuf/Internal$IntList;

    invoke-interface {v0}, Lcom/android/carsdk/protobuf/Internal$IntList;->isModifiable()Z

    move-result v0

    if-nez v0, :cond_0

    .line 9111
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApEssentialMsg;->trainingfail_:Lcom/android/carsdk/protobuf/Internal$IntList;

    .line 9112
    invoke-static {v0}, Lcom/android/carsdk/protobuf/GeneratedMessageLite;->mutableCopy(Lcom/android/carsdk/protobuf/Internal$IntList;)Lcom/android/carsdk/protobuf/Internal$IntList;

    move-result-object v0

    iput-object v0, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApEssentialMsg;->trainingfail_:Lcom/android/carsdk/protobuf/Internal$IntList;

    :cond_0
    return-void
.end method

.method public static getDefaultInstance()Landroid/car/hardware/xpu/XpuApEssentialMsg$ApEssentialMsg;
    .locals 1

    .line 10252
    sget-object v0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApEssentialMsg;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuApEssentialMsg$ApEssentialMsg;

    return-object v0
.end method

.method private mergeBdistancepercent(Landroid/car/hardware/xpu/XpuApEssentialMsg$BDistancePercent;)V
    .locals 2

    .line 8865
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApEssentialMsg;->bdistancepercent_:Landroid/car/hardware/xpu/XpuApEssentialMsg$BDistancePercent;

    if-eqz v0, :cond_0

    .line 8866
    invoke-static {}, Landroid/car/hardware/xpu/XpuApEssentialMsg$BDistancePercent;->getDefaultInstance()Landroid/car/hardware/xpu/XpuApEssentialMsg$BDistancePercent;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 8867
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApEssentialMsg;->bdistancepercent_:Landroid/car/hardware/xpu/XpuApEssentialMsg$BDistancePercent;

    .line 8868
    invoke-static {v0}, Landroid/car/hardware/xpu/XpuApEssentialMsg$BDistancePercent;->newBuilder(Landroid/car/hardware/xpu/XpuApEssentialMsg$BDistancePercent;)Landroid/car/hardware/xpu/XpuApEssentialMsg$BDistancePercent$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/car/hardware/xpu/XpuApEssentialMsg$BDistancePercent$Builder;->mergeFrom(Lcom/android/carsdk/protobuf/GeneratedMessageLite;)Lcom/android/carsdk/protobuf/GeneratedMessageLite$Builder;

    move-result-object p1

    check-cast p1, Landroid/car/hardware/xpu/XpuApEssentialMsg$BDistancePercent$Builder;

    invoke-virtual {p1}, Landroid/car/hardware/xpu/XpuApEssentialMsg$BDistancePercent$Builder;->buildPartial()Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Landroid/car/hardware/xpu/XpuApEssentialMsg$BDistancePercent;

    iput-object p1, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApEssentialMsg;->bdistancepercent_:Landroid/car/hardware/xpu/XpuApEssentialMsg$BDistancePercent;

    goto :goto_0

    .line 8870
    :cond_0
    iput-object p1, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApEssentialMsg;->bdistancepercent_:Landroid/car/hardware/xpu/XpuApEssentialMsg$BDistancePercent;

    :goto_0
    return-void
.end method

.method public static newBuilder()Landroid/car/hardware/xpu/XpuApEssentialMsg$ApEssentialMsg$Builder;
    .locals 1

    .line 9443
    sget-object v0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApEssentialMsg;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuApEssentialMsg$ApEssentialMsg;

    invoke-virtual {v0}, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApEssentialMsg;->toBuilder()Lcom/android/carsdk/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApEssentialMsg$Builder;

    return-object v0
.end method

.method public static newBuilder(Landroid/car/hardware/xpu/XpuApEssentialMsg$ApEssentialMsg;)Landroid/car/hardware/xpu/XpuApEssentialMsg$ApEssentialMsg$Builder;
    .locals 1

    .line 9446
    sget-object v0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApEssentialMsg;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuApEssentialMsg$ApEssentialMsg;

    invoke-virtual {v0}, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApEssentialMsg;->toBuilder()Lcom/android/carsdk/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApEssentialMsg$Builder;

    invoke-virtual {v0, p0}, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApEssentialMsg$Builder;->mergeFrom(Lcom/android/carsdk/protobuf/GeneratedMessageLite;)Lcom/android/carsdk/protobuf/GeneratedMessageLite$Builder;

    move-result-object p0

    check-cast p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApEssentialMsg$Builder;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Landroid/car/hardware/xpu/XpuApEssentialMsg$ApEssentialMsg;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 9420
    sget-object v0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApEssentialMsg;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuApEssentialMsg$ApEssentialMsg;

    invoke-static {v0, p0}, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApEssentialMsg;->parseDelimitedFrom(Lcom/android/carsdk/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApEssentialMsg;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/android/carsdk/protobuf/ExtensionRegistryLite;)Landroid/car/hardware/xpu/XpuApEssentialMsg$ApEssentialMsg;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 9426
    sget-object v0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApEssentialMsg;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuApEssentialMsg$ApEssentialMsg;

    invoke-static {v0, p0, p1}, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApEssentialMsg;->parseDelimitedFrom(Lcom/android/carsdk/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/android/carsdk/protobuf/ExtensionRegistryLite;)Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApEssentialMsg;

    return-object p0
.end method

.method public static parseFrom(Lcom/android/carsdk/protobuf/ByteString;)Landroid/car/hardware/xpu/XpuApEssentialMsg$ApEssentialMsg;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/carsdk/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 9384
    sget-object v0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApEssentialMsg;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuApEssentialMsg$ApEssentialMsg;

    invoke-static {v0, p0}, Lcom/android/carsdk/protobuf/GeneratedMessageLite;->parseFrom(Lcom/android/carsdk/protobuf/GeneratedMessageLite;Lcom/android/carsdk/protobuf/ByteString;)Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApEssentialMsg;

    return-object p0
.end method

.method public static parseFrom(Lcom/android/carsdk/protobuf/ByteString;Lcom/android/carsdk/protobuf/ExtensionRegistryLite;)Landroid/car/hardware/xpu/XpuApEssentialMsg$ApEssentialMsg;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/carsdk/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 9391
    sget-object v0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApEssentialMsg;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuApEssentialMsg$ApEssentialMsg;

    invoke-static {v0, p0, p1}, Lcom/android/carsdk/protobuf/GeneratedMessageLite;->parseFrom(Lcom/android/carsdk/protobuf/GeneratedMessageLite;Lcom/android/carsdk/protobuf/ByteString;Lcom/android/carsdk/protobuf/ExtensionRegistryLite;)Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApEssentialMsg;

    return-object p0
.end method

.method public static parseFrom(Lcom/android/carsdk/protobuf/CodedInputStream;)Landroid/car/hardware/xpu/XpuApEssentialMsg$ApEssentialMsg;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 9431
    sget-object v0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApEssentialMsg;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuApEssentialMsg$ApEssentialMsg;

    invoke-static {v0, p0}, Lcom/android/carsdk/protobuf/GeneratedMessageLite;->parseFrom(Lcom/android/carsdk/protobuf/GeneratedMessageLite;Lcom/android/carsdk/protobuf/CodedInputStream;)Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApEssentialMsg;

    return-object p0
.end method

.method public static parseFrom(Lcom/android/carsdk/protobuf/CodedInputStream;Lcom/android/carsdk/protobuf/ExtensionRegistryLite;)Landroid/car/hardware/xpu/XpuApEssentialMsg$ApEssentialMsg;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 9438
    sget-object v0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApEssentialMsg;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuApEssentialMsg$ApEssentialMsg;

    invoke-static {v0, p0, p1}, Lcom/android/carsdk/protobuf/GeneratedMessageLite;->parseFrom(Lcom/android/carsdk/protobuf/GeneratedMessageLite;Lcom/android/carsdk/protobuf/CodedInputStream;Lcom/android/carsdk/protobuf/ExtensionRegistryLite;)Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApEssentialMsg;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Landroid/car/hardware/xpu/XpuApEssentialMsg$ApEssentialMsg;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 9408
    sget-object v0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApEssentialMsg;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuApEssentialMsg$ApEssentialMsg;

    invoke-static {v0, p0}, Lcom/android/carsdk/protobuf/GeneratedMessageLite;->parseFrom(Lcom/android/carsdk/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApEssentialMsg;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/android/carsdk/protobuf/ExtensionRegistryLite;)Landroid/car/hardware/xpu/XpuApEssentialMsg$ApEssentialMsg;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 9415
    sget-object v0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApEssentialMsg;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuApEssentialMsg$ApEssentialMsg;

    invoke-static {v0, p0, p1}, Lcom/android/carsdk/protobuf/GeneratedMessageLite;->parseFrom(Lcom/android/carsdk/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/android/carsdk/protobuf/ExtensionRegistryLite;)Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApEssentialMsg;

    return-object p0
.end method

.method public static parseFrom([B)Landroid/car/hardware/xpu/XpuApEssentialMsg$ApEssentialMsg;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/carsdk/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 9396
    sget-object v0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApEssentialMsg;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuApEssentialMsg$ApEssentialMsg;

    invoke-static {v0, p0}, Lcom/android/carsdk/protobuf/GeneratedMessageLite;->parseFrom(Lcom/android/carsdk/protobuf/GeneratedMessageLite;[B)Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApEssentialMsg;

    return-object p0
.end method

.method public static parseFrom([BLcom/android/carsdk/protobuf/ExtensionRegistryLite;)Landroid/car/hardware/xpu/XpuApEssentialMsg$ApEssentialMsg;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/carsdk/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 9403
    sget-object v0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApEssentialMsg;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuApEssentialMsg$ApEssentialMsg;

    invoke-static {v0, p0, p1}, Lcom/android/carsdk/protobuf/GeneratedMessageLite;->parseFrom(Lcom/android/carsdk/protobuf/GeneratedMessageLite;[BLcom/android/carsdk/protobuf/ExtensionRegistryLite;)Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApEssentialMsg;

    return-object p0
.end method

.method public static parser()Lcom/android/carsdk/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/android/carsdk/protobuf/Parser<",
            "Landroid/car/hardware/xpu/XpuApEssentialMsg$ApEssentialMsg;",
            ">;"
        }
    .end annotation

    .line 10258
    sget-object v0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApEssentialMsg;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuApEssentialMsg$ApEssentialMsg;

    invoke-virtual {v0}, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApEssentialMsg;->getParserForType()Lcom/android/carsdk/protobuf/Parser;

    move-result-object v0

    return-object v0
.end method

.method private setArrow(I)V
    .locals 0

    .line 8773
    iput p1, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApEssentialMsg;->arrow_:I

    return-void
.end method

.method private setBdistancepercent(Landroid/car/hardware/xpu/XpuApEssentialMsg$BDistancePercent$Builder;)V
    .locals 0

    .line 8858
    invoke-virtual {p1}, Landroid/car/hardware/xpu/XpuApEssentialMsg$BDistancePercent$Builder;->build()Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Landroid/car/hardware/xpu/XpuApEssentialMsg$BDistancePercent;

    iput-object p1, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApEssentialMsg;->bdistancepercent_:Landroid/car/hardware/xpu/XpuApEssentialMsg$BDistancePercent;

    return-void
.end method

.method private setBdistancepercent(Landroid/car/hardware/xpu/XpuApEssentialMsg$BDistancePercent;)V
    .locals 0

    .line 8848
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 8850
    iput-object p1, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApEssentialMsg;->bdistancepercent_:Landroid/car/hardware/xpu/XpuApEssentialMsg$BDistancePercent;

    return-void
.end method

.method private setFailReason(I)V
    .locals 0

    .line 8750
    iput p1, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApEssentialMsg;->failReason_:I

    return-void
.end method

.method private setFavoriteSlotReady(I)V
    .locals 0

    .line 9009
    iput p1, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApEssentialMsg;->favoriteSlotReady_:I

    return-void
.end method

.method private setGlobalTrajectoryIndex(I)V
    .locals 0

    .line 8917
    iput p1, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApEssentialMsg;->globalTrajectoryIndex_:I

    return-void
.end method

.method private setHdmapId(J)V
    .locals 0

    .line 8986
    iput-wide p1, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApEssentialMsg;->hdmapId_:J

    return-void
.end method

.method private setIsHdmap(I)V
    .locals 0

    .line 9032
    iput p1, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApEssentialMsg;->isHdmap_:I

    return-void
.end method

.method private setMapPoseState(I)V
    .locals 0

    .line 8940
    iput p1, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApEssentialMsg;->mapPoseState_:I

    return-void
.end method

.method private setMapTime(J)V
    .locals 0

    .line 9205
    iput-wide p1, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApEssentialMsg;->mapTime_:J

    return-void
.end method

.method private setParkState(I)V
    .locals 0

    .line 8894
    iput p1, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApEssentialMsg;->parkState_:I

    return-void
.end method

.method private setRemainDistance(F)V
    .locals 0

    .line 8819
    iput p1, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApEssentialMsg;->remainDistance_:F

    return-void
.end method

.method private setSilentFavoriteState(I)V
    .locals 0

    .line 8963
    iput p1, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApEssentialMsg;->silentFavoriteState_:I

    return-void
.end method

.method private setStatusIndicate(I)V
    .locals 0

    .line 8727
    iput p1, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApEssentialMsg;->statusIndicate_:I

    return-void
.end method

.method private setTerminalAttr(I)V
    .locals 0

    .line 9159
    iput p1, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApEssentialMsg;->terminalAttr_:I

    return-void
.end method

.method private setTerminalFloor(I)V
    .locals 0

    .line 9182
    iput p1, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApEssentialMsg;->terminalFloor_:I

    return-void
.end method

.method private setTrainingTips(I)V
    .locals 0

    .line 9055
    iput p1, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApEssentialMsg;->trainingTips_:I

    return-void
.end method

.method private setTrainingfail(II)V
    .locals 1

    .line 9120
    invoke-direct {p0}, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApEssentialMsg;->ensureTrainingfailIsMutable()V

    .line 9121
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApEssentialMsg;->trainingfail_:Lcom/android/carsdk/protobuf/Internal$IntList;

    invoke-interface {v0, p1, p2}, Lcom/android/carsdk/protobuf/Internal$IntList;->setInt(II)I

    return-void
.end method

.method private setTrainingst(I)V
    .locals 0

    .line 9078
    iput p1, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApEssentialMsg;->trainingst_:I

    return-void
.end method

.method private setVoice(I)V
    .locals 0

    .line 8796
    iput p1, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApEssentialMsg;->voice_:I

    return-void
.end method

.method private setXpuAbnormal(I)V
    .locals 0

    .line 8704
    iput p1, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApEssentialMsg;->xpuAbnormal_:I

    return-void
.end method

.method private setXputips(I)V
    .locals 0

    .line 8681
    iput p1, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApEssentialMsg;->xputips_:I

    return-void
.end method


# virtual methods
.method protected final dynamicMethod(Lcom/android/carsdk/protobuf/GeneratedMessageLite$MethodToInvoke;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 12

    .line 10005
    sget-object v0, Landroid/car/hardware/xpu/XpuApEssentialMsg$1;->$SwitchMap$com$google$protobuf$GeneratedMessageLite$MethodToInvoke:[I

    invoke-virtual {p1}, Lcom/android/carsdk/protobuf/GeneratedMessageLite$MethodToInvoke;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x1

    packed-switch p1, :pswitch_data_0

    .line 10240
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1

    .line 10231
    :pswitch_0
    sget-object p1, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApEssentialMsg;->PARSER:Lcom/android/carsdk/protobuf/Parser;

    if-nez p1, :cond_1

    const-class p1, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApEssentialMsg;

    monitor-enter p1

    .line 10232
    :try_start_0
    sget-object p2, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApEssentialMsg;->PARSER:Lcom/android/carsdk/protobuf/Parser;

    if-nez p2, :cond_0

    .line 10233
    new-instance p2, Lcom/android/carsdk/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;

    sget-object p3, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApEssentialMsg;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuApEssentialMsg$ApEssentialMsg;

    invoke-direct {p2, p3}, Lcom/android/carsdk/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;-><init>(Lcom/android/carsdk/protobuf/GeneratedMessageLite;)V

    sput-object p2, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApEssentialMsg;->PARSER:Lcom/android/carsdk/protobuf/Parser;

    .line 10235
    :cond_0
    monitor-exit p1

    goto :goto_0

    :catchall_0
    move-exception p2

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p2

    .line 10237
    :cond_1
    :goto_0
    sget-object p1, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApEssentialMsg;->PARSER:Lcom/android/carsdk/protobuf/Parser;

    return-object p1

    .line 10069
    :pswitch_1
    check-cast p2, Lcom/android/carsdk/protobuf/CodedInputStream;

    .line 10071
    check-cast p3, Lcom/android/carsdk/protobuf/ExtensionRegistryLite;

    :cond_2
    :goto_1
    if-nez v1, :cond_7

    .line 10076
    :try_start_1
    invoke-virtual {p2}, Lcom/android/carsdk/protobuf/CodedInputStream;->readTag()I

    move-result p1

    sparse-switch p1, :sswitch_data_0

    .line 10082
    invoke-virtual {p2, p1}, Lcom/android/carsdk/protobuf/CodedInputStream;->skipField(I)Z

    move-result p1

    goto/16 :goto_5

    .line 10213
    :sswitch_0
    invoke-virtual {p2}, Lcom/android/carsdk/protobuf/CodedInputStream;->readUInt64()J

    move-result-wide v3

    iput-wide v3, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApEssentialMsg;->mapTime_:J

    goto :goto_1

    .line 10208
    :sswitch_1
    invoke-virtual {p2}, Lcom/android/carsdk/protobuf/CodedInputStream;->readInt32()I

    move-result p1

    iput p1, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApEssentialMsg;->terminalFloor_:I

    goto :goto_1

    .line 10203
    :sswitch_2
    invoke-virtual {p2}, Lcom/android/carsdk/protobuf/CodedInputStream;->readInt32()I

    move-result p1

    iput p1, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApEssentialMsg;->terminalAttr_:I

    goto :goto_1

    .line 10189
    :sswitch_3
    invoke-virtual {p2}, Lcom/android/carsdk/protobuf/CodedInputStream;->readRawVarint32()I

    move-result p1

    .line 10190
    invoke-virtual {p2, p1}, Lcom/android/carsdk/protobuf/CodedInputStream;->pushLimit(I)I

    move-result p1

    .line 10191
    iget-object v3, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApEssentialMsg;->trainingfail_:Lcom/android/carsdk/protobuf/Internal$IntList;

    invoke-interface {v3}, Lcom/android/carsdk/protobuf/Internal$IntList;->isModifiable()Z

    move-result v3

    if-nez v3, :cond_3

    invoke-virtual {p2}, Lcom/android/carsdk/protobuf/CodedInputStream;->getBytesUntilLimit()I

    move-result v3

    if-lez v3, :cond_3

    .line 10192
    iget-object v3, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApEssentialMsg;->trainingfail_:Lcom/android/carsdk/protobuf/Internal$IntList;

    .line 10193
    invoke-static {v3}, Lcom/android/carsdk/protobuf/GeneratedMessageLite;->mutableCopy(Lcom/android/carsdk/protobuf/Internal$IntList;)Lcom/android/carsdk/protobuf/Internal$IntList;

    move-result-object v3

    iput-object v3, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApEssentialMsg;->trainingfail_:Lcom/android/carsdk/protobuf/Internal$IntList;

    .line 10195
    :cond_3
    :goto_2
    invoke-virtual {p2}, Lcom/android/carsdk/protobuf/CodedInputStream;->getBytesUntilLimit()I

    move-result v3

    if-lez v3, :cond_4

    .line 10196
    iget-object v3, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApEssentialMsg;->trainingfail_:Lcom/android/carsdk/protobuf/Internal$IntList;

    invoke-virtual {p2}, Lcom/android/carsdk/protobuf/CodedInputStream;->readInt32()I

    move-result v4

    invoke-interface {v3, v4}, Lcom/android/carsdk/protobuf/Internal$IntList;->addInt(I)V

    goto :goto_2

    .line 10198
    :cond_4
    invoke-virtual {p2, p1}, Lcom/android/carsdk/protobuf/CodedInputStream;->popLimit(I)V

    goto :goto_1

    .line 10181
    :sswitch_4
    iget-object p1, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApEssentialMsg;->trainingfail_:Lcom/android/carsdk/protobuf/Internal$IntList;

    invoke-interface {p1}, Lcom/android/carsdk/protobuf/Internal$IntList;->isModifiable()Z

    move-result p1

    if-nez p1, :cond_5

    .line 10182
    iget-object p1, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApEssentialMsg;->trainingfail_:Lcom/android/carsdk/protobuf/Internal$IntList;

    .line 10183
    invoke-static {p1}, Lcom/android/carsdk/protobuf/GeneratedMessageLite;->mutableCopy(Lcom/android/carsdk/protobuf/Internal$IntList;)Lcom/android/carsdk/protobuf/Internal$IntList;

    move-result-object p1

    iput-object p1, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApEssentialMsg;->trainingfail_:Lcom/android/carsdk/protobuf/Internal$IntList;

    .line 10185
    :cond_5
    iget-object p1, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApEssentialMsg;->trainingfail_:Lcom/android/carsdk/protobuf/Internal$IntList;

    invoke-virtual {p2}, Lcom/android/carsdk/protobuf/CodedInputStream;->readInt32()I

    move-result v3

    invoke-interface {p1, v3}, Lcom/android/carsdk/protobuf/Internal$IntList;->addInt(I)V

    goto :goto_1

    .line 10177
    :sswitch_5
    invoke-virtual {p2}, Lcom/android/carsdk/protobuf/CodedInputStream;->readInt32()I

    move-result p1

    iput p1, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApEssentialMsg;->trainingst_:I

    goto :goto_1

    .line 10172
    :sswitch_6
    invoke-virtual {p2}, Lcom/android/carsdk/protobuf/CodedInputStream;->readInt32()I

    move-result p1

    iput p1, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApEssentialMsg;->trainingTips_:I

    goto :goto_1

    .line 10167
    :sswitch_7
    invoke-virtual {p2}, Lcom/android/carsdk/protobuf/CodedInputStream;->readInt32()I

    move-result p1

    iput p1, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApEssentialMsg;->isHdmap_:I

    goto/16 :goto_1

    .line 10162
    :sswitch_8
    invoke-virtual {p2}, Lcom/android/carsdk/protobuf/CodedInputStream;->readInt32()I

    move-result p1

    iput p1, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApEssentialMsg;->favoriteSlotReady_:I

    goto/16 :goto_1

    .line 10157
    :sswitch_9
    invoke-virtual {p2}, Lcom/android/carsdk/protobuf/CodedInputStream;->readUInt64()J

    move-result-wide v3

    iput-wide v3, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApEssentialMsg;->hdmapId_:J

    goto/16 :goto_1

    .line 10152
    :sswitch_a
    invoke-virtual {p2}, Lcom/android/carsdk/protobuf/CodedInputStream;->readInt32()I

    move-result p1

    iput p1, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApEssentialMsg;->silentFavoriteState_:I

    goto/16 :goto_1

    .line 10147
    :sswitch_b
    invoke-virtual {p2}, Lcom/android/carsdk/protobuf/CodedInputStream;->readInt32()I

    move-result p1

    iput p1, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApEssentialMsg;->mapPoseState_:I

    goto/16 :goto_1

    .line 10142
    :sswitch_c
    invoke-virtual {p2}, Lcom/android/carsdk/protobuf/CodedInputStream;->readInt32()I

    move-result p1

    iput p1, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApEssentialMsg;->globalTrajectoryIndex_:I

    goto/16 :goto_1

    .line 10137
    :sswitch_d
    invoke-virtual {p2}, Lcom/android/carsdk/protobuf/CodedInputStream;->readInt32()I

    move-result p1

    iput p1, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApEssentialMsg;->parkState_:I

    goto/16 :goto_1

    .line 10124
    :sswitch_e
    iget-object p1, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApEssentialMsg;->bdistancepercent_:Landroid/car/hardware/xpu/XpuApEssentialMsg$BDistancePercent;

    if-eqz p1, :cond_6

    .line 10125
    invoke-virtual {p1}, Landroid/car/hardware/xpu/XpuApEssentialMsg$BDistancePercent;->toBuilder()Lcom/android/carsdk/protobuf/GeneratedMessageLite$Builder;

    move-result-object p1

    check-cast p1, Landroid/car/hardware/xpu/XpuApEssentialMsg$BDistancePercent$Builder;

    goto :goto_3

    :cond_6
    move-object p1, v0

    .line 10127
    :goto_3
    invoke-static {}, Landroid/car/hardware/xpu/XpuApEssentialMsg$BDistancePercent;->parser()Lcom/android/carsdk/protobuf/Parser;

    move-result-object v3

    invoke-virtual {p2, v3, p3}, Lcom/android/carsdk/protobuf/CodedInputStream;->readMessage(Lcom/android/carsdk/protobuf/Parser;Lcom/android/carsdk/protobuf/ExtensionRegistryLite;)Lcom/android/carsdk/protobuf/MessageLite;

    move-result-object v3

    check-cast v3, Landroid/car/hardware/xpu/XpuApEssentialMsg$BDistancePercent;

    iput-object v3, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApEssentialMsg;->bdistancepercent_:Landroid/car/hardware/xpu/XpuApEssentialMsg$BDistancePercent;

    if-eqz p1, :cond_2

    .line 10129
    invoke-virtual {p1, v3}, Landroid/car/hardware/xpu/XpuApEssentialMsg$BDistancePercent$Builder;->mergeFrom(Lcom/android/carsdk/protobuf/GeneratedMessageLite;)Lcom/android/carsdk/protobuf/GeneratedMessageLite$Builder;

    .line 10130
    invoke-virtual {p1}, Landroid/car/hardware/xpu/XpuApEssentialMsg$BDistancePercent$Builder;->buildPartial()Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Landroid/car/hardware/xpu/XpuApEssentialMsg$BDistancePercent;

    iput-object p1, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApEssentialMsg;->bdistancepercent_:Landroid/car/hardware/xpu/XpuApEssentialMsg$BDistancePercent;

    goto/16 :goto_1

    .line 10119
    :sswitch_f
    invoke-virtual {p2}, Lcom/android/carsdk/protobuf/CodedInputStream;->readFloat()F

    move-result p1

    iput p1, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApEssentialMsg;->remainDistance_:F

    goto/16 :goto_1

    .line 10114
    :sswitch_10
    invoke-virtual {p2}, Lcom/android/carsdk/protobuf/CodedInputStream;->readInt32()I

    move-result p1

    iput p1, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApEssentialMsg;->voice_:I

    goto/16 :goto_1

    .line 10109
    :sswitch_11
    invoke-virtual {p2}, Lcom/android/carsdk/protobuf/CodedInputStream;->readInt32()I

    move-result p1

    iput p1, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApEssentialMsg;->arrow_:I

    goto/16 :goto_1

    .line 10104
    :sswitch_12
    invoke-virtual {p2}, Lcom/android/carsdk/protobuf/CodedInputStream;->readInt32()I

    move-result p1

    iput p1, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApEssentialMsg;->failReason_:I

    goto/16 :goto_1

    .line 10099
    :sswitch_13
    invoke-virtual {p2}, Lcom/android/carsdk/protobuf/CodedInputStream;->readInt32()I

    move-result p1

    iput p1, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApEssentialMsg;->statusIndicate_:I

    goto/16 :goto_1

    .line 10094
    :sswitch_14
    invoke-virtual {p2}, Lcom/android/carsdk/protobuf/CodedInputStream;->readInt32()I

    move-result p1

    iput p1, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApEssentialMsg;->xpuAbnormal_:I

    goto/16 :goto_1

    .line 10089
    :sswitch_15
    invoke-virtual {p2}, Lcom/android/carsdk/protobuf/CodedInputStream;->readInt32()I

    move-result p1

    iput p1, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApEssentialMsg;->xputips_:I
    :try_end_1
    .catch Lcom/android/carsdk/protobuf/InvalidProtocolBufferException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto/16 :goto_1

    :goto_4
    :sswitch_16
    move v1, v2

    goto/16 :goto_1

    :goto_5
    if-nez p1, :cond_2

    goto :goto_4

    :catchall_1
    move-exception p1

    goto :goto_6

    :catch_0
    move-exception p1

    .line 10221
    :try_start_2
    new-instance p2, Ljava/lang/RuntimeException;

    new-instance p3, Lcom/android/carsdk/protobuf/InvalidProtocolBufferException;

    .line 10223
    invoke-virtual {p1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p3, p1}, Lcom/android/carsdk/protobuf/InvalidProtocolBufferException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, p0}, Lcom/android/carsdk/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/android/carsdk/protobuf/MessageLite;)Lcom/android/carsdk/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p2

    :catch_1
    move-exception p1

    .line 10219
    new-instance p2, Ljava/lang/RuntimeException;

    invoke-virtual {p1, p0}, Lcom/android/carsdk/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/android/carsdk/protobuf/MessageLite;)Lcom/android/carsdk/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 10224
    :goto_6
    throw p1

    .line 10228
    :cond_7
    :pswitch_2
    sget-object p1, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApEssentialMsg;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuApEssentialMsg$ApEssentialMsg;

    return-object p1

    .line 10020
    :pswitch_3
    check-cast p2, Lcom/android/carsdk/protobuf/GeneratedMessageLite$Visitor;

    .line 10021
    check-cast p3, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApEssentialMsg;

    .line 10022
    iget p1, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApEssentialMsg;->xputips_:I

    if-eqz p1, :cond_8

    move v0, v2

    goto :goto_7

    :cond_8
    move v0, v1

    :goto_7
    iget v3, p3, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApEssentialMsg;->xputips_:I

    if-eqz v3, :cond_9

    move v4, v2

    goto :goto_8

    :cond_9
    move v4, v1

    :goto_8
    invoke-interface {p2, v0, p1, v4, v3}, Lcom/android/carsdk/protobuf/GeneratedMessageLite$Visitor;->visitInt(ZIZI)I

    move-result p1

    iput p1, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApEssentialMsg;->xputips_:I

    .line 10024
    iget p1, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApEssentialMsg;->xpuAbnormal_:I

    if-eqz p1, :cond_a

    move v0, v2

    goto :goto_9

    :cond_a
    move v0, v1

    :goto_9
    iget v3, p3, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApEssentialMsg;->xpuAbnormal_:I

    if-eqz v3, :cond_b

    move v4, v2

    goto :goto_a

    :cond_b
    move v4, v1

    :goto_a
    invoke-interface {p2, v0, p1, v4, v3}, Lcom/android/carsdk/protobuf/GeneratedMessageLite$Visitor;->visitInt(ZIZI)I

    move-result p1

    iput p1, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApEssentialMsg;->xpuAbnormal_:I

    .line 10026
    iget p1, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApEssentialMsg;->statusIndicate_:I

    if-eqz p1, :cond_c

    move v0, v2

    goto :goto_b

    :cond_c
    move v0, v1

    :goto_b
    iget v3, p3, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApEssentialMsg;->statusIndicate_:I

    if-eqz v3, :cond_d

    move v4, v2

    goto :goto_c

    :cond_d
    move v4, v1

    :goto_c
    invoke-interface {p2, v0, p1, v4, v3}, Lcom/android/carsdk/protobuf/GeneratedMessageLite$Visitor;->visitInt(ZIZI)I

    move-result p1

    iput p1, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApEssentialMsg;->statusIndicate_:I

    .line 10028
    iget p1, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApEssentialMsg;->failReason_:I

    if-eqz p1, :cond_e

    move v0, v2

    goto :goto_d

    :cond_e
    move v0, v1

    :goto_d
    iget v3, p3, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApEssentialMsg;->failReason_:I

    if-eqz v3, :cond_f

    move v4, v2

    goto :goto_e

    :cond_f
    move v4, v1

    :goto_e
    invoke-interface {p2, v0, p1, v4, v3}, Lcom/android/carsdk/protobuf/GeneratedMessageLite$Visitor;->visitInt(ZIZI)I

    move-result p1

    iput p1, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApEssentialMsg;->failReason_:I

    .line 10030
    iget p1, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApEssentialMsg;->arrow_:I

    if-eqz p1, :cond_10

    move v0, v2

    goto :goto_f

    :cond_10
    move v0, v1

    :goto_f
    iget v3, p3, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApEssentialMsg;->arrow_:I

    if-eqz v3, :cond_11

    move v4, v2

    goto :goto_10

    :cond_11
    move v4, v1

    :goto_10
    invoke-interface {p2, v0, p1, v4, v3}, Lcom/android/carsdk/protobuf/GeneratedMessageLite$Visitor;->visitInt(ZIZI)I

    move-result p1

    iput p1, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApEssentialMsg;->arrow_:I

    .line 10032
    iget p1, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApEssentialMsg;->voice_:I

    if-eqz p1, :cond_12

    move v0, v2

    goto :goto_11

    :cond_12
    move v0, v1

    :goto_11
    iget v3, p3, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApEssentialMsg;->voice_:I

    if-eqz v3, :cond_13

    move v4, v2

    goto :goto_12

    :cond_13
    move v4, v1

    :goto_12
    invoke-interface {p2, v0, p1, v4, v3}, Lcom/android/carsdk/protobuf/GeneratedMessageLite$Visitor;->visitInt(ZIZI)I

    move-result p1

    iput p1, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApEssentialMsg;->voice_:I

    .line 10034
    iget p1, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApEssentialMsg;->remainDistance_:F

    const/4 v0, 0x0

    cmpl-float v3, p1, v0

    if-eqz v3, :cond_14

    move v3, v2

    goto :goto_13

    :cond_14
    move v3, v1

    :goto_13
    iget v4, p3, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApEssentialMsg;->remainDistance_:F

    cmpl-float v0, v4, v0

    if-eqz v0, :cond_15

    move v0, v2

    goto :goto_14

    :cond_15
    move v0, v1

    :goto_14
    invoke-interface {p2, v3, p1, v0, v4}, Lcom/android/carsdk/protobuf/GeneratedMessageLite$Visitor;->visitFloat(ZFZF)F

    move-result p1

    iput p1, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApEssentialMsg;->remainDistance_:F

    .line 10036
    iget-object p1, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApEssentialMsg;->bdistancepercent_:Landroid/car/hardware/xpu/XpuApEssentialMsg$BDistancePercent;

    iget-object v0, p3, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApEssentialMsg;->bdistancepercent_:Landroid/car/hardware/xpu/XpuApEssentialMsg$BDistancePercent;

    invoke-interface {p2, p1, v0}, Lcom/android/carsdk/protobuf/GeneratedMessageLite$Visitor;->visitMessage(Lcom/android/carsdk/protobuf/MessageLite;Lcom/android/carsdk/protobuf/MessageLite;)Lcom/android/carsdk/protobuf/MessageLite;

    move-result-object p1

    check-cast p1, Landroid/car/hardware/xpu/XpuApEssentialMsg$BDistancePercent;

    iput-object p1, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApEssentialMsg;->bdistancepercent_:Landroid/car/hardware/xpu/XpuApEssentialMsg$BDistancePercent;

    .line 10037
    iget p1, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApEssentialMsg;->parkState_:I

    if-eqz p1, :cond_16

    move v0, v2

    goto :goto_15

    :cond_16
    move v0, v1

    :goto_15
    iget v3, p3, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApEssentialMsg;->parkState_:I

    if-eqz v3, :cond_17

    move v4, v2

    goto :goto_16

    :cond_17
    move v4, v1

    :goto_16
    invoke-interface {p2, v0, p1, v4, v3}, Lcom/android/carsdk/protobuf/GeneratedMessageLite$Visitor;->visitInt(ZIZI)I

    move-result p1

    iput p1, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApEssentialMsg;->parkState_:I

    .line 10039
    iget p1, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApEssentialMsg;->globalTrajectoryIndex_:I

    if-eqz p1, :cond_18

    move v0, v2

    goto :goto_17

    :cond_18
    move v0, v1

    :goto_17
    iget v3, p3, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApEssentialMsg;->globalTrajectoryIndex_:I

    if-eqz v3, :cond_19

    move v4, v2

    goto :goto_18

    :cond_19
    move v4, v1

    :goto_18
    invoke-interface {p2, v0, p1, v4, v3}, Lcom/android/carsdk/protobuf/GeneratedMessageLite$Visitor;->visitInt(ZIZI)I

    move-result p1

    iput p1, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApEssentialMsg;->globalTrajectoryIndex_:I

    .line 10041
    iget p1, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApEssentialMsg;->mapPoseState_:I

    if-eqz p1, :cond_1a

    move v0, v2

    goto :goto_19

    :cond_1a
    move v0, v1

    :goto_19
    iget v3, p3, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApEssentialMsg;->mapPoseState_:I

    if-eqz v3, :cond_1b

    move v4, v2

    goto :goto_1a

    :cond_1b
    move v4, v1

    :goto_1a
    invoke-interface {p2, v0, p1, v4, v3}, Lcom/android/carsdk/protobuf/GeneratedMessageLite$Visitor;->visitInt(ZIZI)I

    move-result p1

    iput p1, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApEssentialMsg;->mapPoseState_:I

    .line 10043
    iget p1, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApEssentialMsg;->silentFavoriteState_:I

    if-eqz p1, :cond_1c

    move v0, v2

    goto :goto_1b

    :cond_1c
    move v0, v1

    :goto_1b
    iget v3, p3, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApEssentialMsg;->silentFavoriteState_:I

    if-eqz v3, :cond_1d

    move v4, v2

    goto :goto_1c

    :cond_1d
    move v4, v1

    :goto_1c
    invoke-interface {p2, v0, p1, v4, v3}, Lcom/android/carsdk/protobuf/GeneratedMessageLite$Visitor;->visitInt(ZIZI)I

    move-result p1

    iput p1, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApEssentialMsg;->silentFavoriteState_:I

    .line 10045
    iget-wide v5, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApEssentialMsg;->hdmapId_:J

    const-wide/16 v10, 0x0

    cmp-long p1, v5, v10

    if-eqz p1, :cond_1e

    move v4, v2

    goto :goto_1d

    :cond_1e
    move v4, v1

    :goto_1d
    iget-wide v8, p3, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApEssentialMsg;->hdmapId_:J

    cmp-long p1, v8, v10

    if-eqz p1, :cond_1f

    move v7, v2

    goto :goto_1e

    :cond_1f
    move v7, v1

    :goto_1e
    move-object v3, p2

    invoke-interface/range {v3 .. v9}, Lcom/android/carsdk/protobuf/GeneratedMessageLite$Visitor;->visitLong(ZJZJ)J

    move-result-wide v3

    iput-wide v3, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApEssentialMsg;->hdmapId_:J

    .line 10047
    iget p1, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApEssentialMsg;->favoriteSlotReady_:I

    if-eqz p1, :cond_20

    move v0, v2

    goto :goto_1f

    :cond_20
    move v0, v1

    :goto_1f
    iget v3, p3, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApEssentialMsg;->favoriteSlotReady_:I

    if-eqz v3, :cond_21

    move v4, v2

    goto :goto_20

    :cond_21
    move v4, v1

    :goto_20
    invoke-interface {p2, v0, p1, v4, v3}, Lcom/android/carsdk/protobuf/GeneratedMessageLite$Visitor;->visitInt(ZIZI)I

    move-result p1

    iput p1, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApEssentialMsg;->favoriteSlotReady_:I

    .line 10049
    iget p1, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApEssentialMsg;->isHdmap_:I

    if-eqz p1, :cond_22

    move v0, v2

    goto :goto_21

    :cond_22
    move v0, v1

    :goto_21
    iget v3, p3, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApEssentialMsg;->isHdmap_:I

    if-eqz v3, :cond_23

    move v4, v2

    goto :goto_22

    :cond_23
    move v4, v1

    :goto_22
    invoke-interface {p2, v0, p1, v4, v3}, Lcom/android/carsdk/protobuf/GeneratedMessageLite$Visitor;->visitInt(ZIZI)I

    move-result p1

    iput p1, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApEssentialMsg;->isHdmap_:I

    .line 10051
    iget p1, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApEssentialMsg;->trainingTips_:I

    if-eqz p1, :cond_24

    move v0, v2

    goto :goto_23

    :cond_24
    move v0, v1

    :goto_23
    iget v3, p3, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApEssentialMsg;->trainingTips_:I

    if-eqz v3, :cond_25

    move v4, v2

    goto :goto_24

    :cond_25
    move v4, v1

    :goto_24
    invoke-interface {p2, v0, p1, v4, v3}, Lcom/android/carsdk/protobuf/GeneratedMessageLite$Visitor;->visitInt(ZIZI)I

    move-result p1

    iput p1, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApEssentialMsg;->trainingTips_:I

    .line 10053
    iget p1, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApEssentialMsg;->trainingst_:I

    if-eqz p1, :cond_26

    move v0, v2

    goto :goto_25

    :cond_26
    move v0, v1

    :goto_25
    iget v3, p3, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApEssentialMsg;->trainingst_:I

    if-eqz v3, :cond_27

    move v4, v2

    goto :goto_26

    :cond_27
    move v4, v1

    :goto_26
    invoke-interface {p2, v0, p1, v4, v3}, Lcom/android/carsdk/protobuf/GeneratedMessageLite$Visitor;->visitInt(ZIZI)I

    move-result p1

    iput p1, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApEssentialMsg;->trainingst_:I

    .line 10055
    iget-object p1, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApEssentialMsg;->trainingfail_:Lcom/android/carsdk/protobuf/Internal$IntList;

    iget-object v0, p3, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApEssentialMsg;->trainingfail_:Lcom/android/carsdk/protobuf/Internal$IntList;

    invoke-interface {p2, p1, v0}, Lcom/android/carsdk/protobuf/GeneratedMessageLite$Visitor;->visitIntList(Lcom/android/carsdk/protobuf/Internal$IntList;Lcom/android/carsdk/protobuf/Internal$IntList;)Lcom/android/carsdk/protobuf/Internal$IntList;

    move-result-object p1

    iput-object p1, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApEssentialMsg;->trainingfail_:Lcom/android/carsdk/protobuf/Internal$IntList;

    .line 10056
    iget p1, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApEssentialMsg;->terminalAttr_:I

    if-eqz p1, :cond_28

    move v0, v2

    goto :goto_27

    :cond_28
    move v0, v1

    :goto_27
    iget v3, p3, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApEssentialMsg;->terminalAttr_:I

    if-eqz v3, :cond_29

    move v4, v2

    goto :goto_28

    :cond_29
    move v4, v1

    :goto_28
    invoke-interface {p2, v0, p1, v4, v3}, Lcom/android/carsdk/protobuf/GeneratedMessageLite$Visitor;->visitInt(ZIZI)I

    move-result p1

    iput p1, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApEssentialMsg;->terminalAttr_:I

    .line 10058
    iget p1, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApEssentialMsg;->terminalFloor_:I

    if-eqz p1, :cond_2a

    move v0, v2

    goto :goto_29

    :cond_2a
    move v0, v1

    :goto_29
    iget v3, p3, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApEssentialMsg;->terminalFloor_:I

    if-eqz v3, :cond_2b

    move v4, v2

    goto :goto_2a

    :cond_2b
    move v4, v1

    :goto_2a
    invoke-interface {p2, v0, p1, v4, v3}, Lcom/android/carsdk/protobuf/GeneratedMessageLite$Visitor;->visitInt(ZIZI)I

    move-result p1

    iput p1, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApEssentialMsg;->terminalFloor_:I

    .line 10060
    iget-wide v3, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApEssentialMsg;->mapTime_:J

    cmp-long p1, v3, v10

    if-eqz p1, :cond_2c

    move p1, v2

    goto :goto_2b

    :cond_2c
    move p1, v1

    :goto_2b
    iget-wide v5, p3, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApEssentialMsg;->mapTime_:J

    cmp-long v0, v5, v10

    if-eqz v0, :cond_2d

    move v7, v2

    goto :goto_2c

    :cond_2d
    move v7, v1

    :goto_2c
    move-object v0, p2

    move v1, p1

    move-wide v2, v3

    move v4, v7

    invoke-interface/range {v0 .. v6}, Lcom/android/carsdk/protobuf/GeneratedMessageLite$Visitor;->visitLong(ZJZJ)J

    move-result-wide v0

    iput-wide v0, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApEssentialMsg;->mapTime_:J

    .line 10062
    sget-object p1, Lcom/android/carsdk/protobuf/GeneratedMessageLite$MergeFromVisitor;->INSTANCE:Lcom/android/carsdk/protobuf/GeneratedMessageLite$MergeFromVisitor;

    if-ne p2, p1, :cond_2e

    .line 10064
    iget p1, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApEssentialMsg;->bitField0_:I

    iget p2, p3, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApEssentialMsg;->bitField0_:I

    or-int/2addr p1, p2

    iput p1, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApEssentialMsg;->bitField0_:I

    :cond_2e
    return-object p0

    .line 10017
    :pswitch_4
    new-instance p1, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApEssentialMsg$Builder;

    invoke-direct {p1, v0}, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApEssentialMsg$Builder;-><init>(Landroid/car/hardware/xpu/XpuApEssentialMsg$1;)V

    return-object p1

    .line 10013
    :pswitch_5
    iget-object p1, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApEssentialMsg;->trainingfail_:Lcom/android/carsdk/protobuf/Internal$IntList;

    invoke-interface {p1}, Lcom/android/carsdk/protobuf/Internal$IntList;->makeImmutable()V

    return-object v0

    .line 10010
    :pswitch_6
    sget-object p1, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApEssentialMsg;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuApEssentialMsg$ApEssentialMsg;

    return-object p1

    .line 10007
    :pswitch_7
    new-instance p1, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApEssentialMsg;

    invoke-direct {p1}, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApEssentialMsg;-><init>()V

    return-object p1

    nop

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

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_16
        0x8 -> :sswitch_15
        0x10 -> :sswitch_14
        0x18 -> :sswitch_13
        0x20 -> :sswitch_12
        0x28 -> :sswitch_11
        0x30 -> :sswitch_10
        0x3d -> :sswitch_f
        0x42 -> :sswitch_e
        0x48 -> :sswitch_d
        0x50 -> :sswitch_c
        0x58 -> :sswitch_b
        0x60 -> :sswitch_a
        0x68 -> :sswitch_9
        0x70 -> :sswitch_8
        0x78 -> :sswitch_7
        0x80 -> :sswitch_6
        0x88 -> :sswitch_5
        0x90 -> :sswitch_4
        0x92 -> :sswitch_3
        0x98 -> :sswitch_2
        0xa0 -> :sswitch_1
        0xa8 -> :sswitch_0
    .end sparse-switch
.end method

.method public getArrow()I
    .locals 1

    .line 8766
    iget v0, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApEssentialMsg;->arrow_:I

    return v0
.end method

.method public getBdistancepercent()Landroid/car/hardware/xpu/XpuApEssentialMsg$BDistancePercent;
    .locals 1

    .line 8841
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApEssentialMsg;->bdistancepercent_:Landroid/car/hardware/xpu/XpuApEssentialMsg$BDistancePercent;

    if-nez v0, :cond_0

    invoke-static {}, Landroid/car/hardware/xpu/XpuApEssentialMsg$BDistancePercent;->getDefaultInstance()Landroid/car/hardware/xpu/XpuApEssentialMsg$BDistancePercent;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public getFailReason()I
    .locals 1

    .line 8743
    iget v0, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApEssentialMsg;->failReason_:I

    return v0
.end method

.method public getFavoriteSlotReady()I
    .locals 1

    .line 9002
    iget v0, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApEssentialMsg;->favoriteSlotReady_:I

    return v0
.end method

.method public getGlobalTrajectoryIndex()I
    .locals 1

    .line 8910
    iget v0, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApEssentialMsg;->globalTrajectoryIndex_:I

    return v0
.end method

.method public getHdmapId()J
    .locals 2

    .line 8979
    iget-wide v0, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApEssentialMsg;->hdmapId_:J

    return-wide v0
.end method

.method public getIsHdmap()I
    .locals 1

    .line 9025
    iget v0, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApEssentialMsg;->isHdmap_:I

    return v0
.end method

.method public getMapPoseState()I
    .locals 1

    .line 8933
    iget v0, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApEssentialMsg;->mapPoseState_:I

    return v0
.end method

.method public getMapTime()J
    .locals 2

    .line 9198
    iget-wide v0, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApEssentialMsg;->mapTime_:J

    return-wide v0
.end method

.method public getParkState()I
    .locals 1

    .line 8887
    iget v0, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApEssentialMsg;->parkState_:I

    return v0
.end method

.method public getRemainDistance()F
    .locals 1

    .line 8812
    iget v0, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApEssentialMsg;->remainDistance_:F

    return v0
.end method

.method public getSerializedSize()I
    .locals 8

    .line 9284
    iget v0, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApEssentialMsg;->memoizedSerializedSize:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    return v0

    .line 9288
    :cond_0
    iget v0, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApEssentialMsg;->xputips_:I

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    const/4 v2, 0x1

    .line 9290
    invoke-static {v2, v0}, Lcom/android/carsdk/protobuf/CodedOutputStream;->computeInt32Size(II)I

    move-result v0

    add-int/2addr v0, v1

    goto :goto_0

    :cond_1
    move v0, v1

    .line 9292
    :goto_0
    iget v2, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApEssentialMsg;->xpuAbnormal_:I

    const/4 v3, 0x2

    if-eqz v2, :cond_2

    .line 9294
    invoke-static {v3, v2}, Lcom/android/carsdk/protobuf/CodedOutputStream;->computeInt32Size(II)I

    move-result v2

    add-int/2addr v0, v2

    .line 9296
    :cond_2
    iget v2, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApEssentialMsg;->statusIndicate_:I

    if-eqz v2, :cond_3

    const/4 v4, 0x3

    .line 9298
    invoke-static {v4, v2}, Lcom/android/carsdk/protobuf/CodedOutputStream;->computeInt32Size(II)I

    move-result v2

    add-int/2addr v0, v2

    .line 9300
    :cond_3
    iget v2, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApEssentialMsg;->failReason_:I

    if-eqz v2, :cond_4

    const/4 v4, 0x4

    .line 9302
    invoke-static {v4, v2}, Lcom/android/carsdk/protobuf/CodedOutputStream;->computeInt32Size(II)I

    move-result v2

    add-int/2addr v0, v2

    .line 9304
    :cond_4
    iget v2, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApEssentialMsg;->arrow_:I

    if-eqz v2, :cond_5

    const/4 v4, 0x5

    .line 9306
    invoke-static {v4, v2}, Lcom/android/carsdk/protobuf/CodedOutputStream;->computeInt32Size(II)I

    move-result v2

    add-int/2addr v0, v2

    .line 9308
    :cond_5
    iget v2, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApEssentialMsg;->voice_:I

    if-eqz v2, :cond_6

    const/4 v4, 0x6

    .line 9310
    invoke-static {v4, v2}, Lcom/android/carsdk/protobuf/CodedOutputStream;->computeInt32Size(II)I

    move-result v2

    add-int/2addr v0, v2

    .line 9312
    :cond_6
    iget v2, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApEssentialMsg;->remainDistance_:F

    const/4 v4, 0x0

    cmpl-float v4, v2, v4

    if-eqz v4, :cond_7

    const/4 v4, 0x7

    .line 9314
    invoke-static {v4, v2}, Lcom/android/carsdk/protobuf/CodedOutputStream;->computeFloatSize(IF)I

    move-result v2

    add-int/2addr v0, v2

    .line 9316
    :cond_7
    iget-object v2, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApEssentialMsg;->bdistancepercent_:Landroid/car/hardware/xpu/XpuApEssentialMsg$BDistancePercent;

    if-eqz v2, :cond_8

    const/16 v2, 0x8

    .line 9318
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApEssentialMsg;->getBdistancepercent()Landroid/car/hardware/xpu/XpuApEssentialMsg$BDistancePercent;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/android/carsdk/protobuf/CodedOutputStream;->computeMessageSize(ILcom/android/carsdk/protobuf/MessageLite;)I

    move-result v2

    add-int/2addr v0, v2

    .line 9320
    :cond_8
    iget v2, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApEssentialMsg;->parkState_:I

    if-eqz v2, :cond_9

    const/16 v4, 0x9

    .line 9322
    invoke-static {v4, v2}, Lcom/android/carsdk/protobuf/CodedOutputStream;->computeInt32Size(II)I

    move-result v2

    add-int/2addr v0, v2

    .line 9324
    :cond_9
    iget v2, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApEssentialMsg;->globalTrajectoryIndex_:I

    if-eqz v2, :cond_a

    const/16 v4, 0xa

    .line 9326
    invoke-static {v4, v2}, Lcom/android/carsdk/protobuf/CodedOutputStream;->computeInt32Size(II)I

    move-result v2

    add-int/2addr v0, v2

    .line 9328
    :cond_a
    iget v2, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApEssentialMsg;->mapPoseState_:I

    if-eqz v2, :cond_b

    const/16 v4, 0xb

    .line 9330
    invoke-static {v4, v2}, Lcom/android/carsdk/protobuf/CodedOutputStream;->computeInt32Size(II)I

    move-result v2

    add-int/2addr v0, v2

    .line 9332
    :cond_b
    iget v2, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApEssentialMsg;->silentFavoriteState_:I

    if-eqz v2, :cond_c

    const/16 v4, 0xc

    .line 9334
    invoke-static {v4, v2}, Lcom/android/carsdk/protobuf/CodedOutputStream;->computeInt32Size(II)I

    move-result v2

    add-int/2addr v0, v2

    .line 9336
    :cond_c
    iget-wide v4, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApEssentialMsg;->hdmapId_:J

    const-wide/16 v6, 0x0

    cmp-long v2, v4, v6

    if-eqz v2, :cond_d

    const/16 v2, 0xd

    .line 9338
    invoke-static {v2, v4, v5}, Lcom/android/carsdk/protobuf/CodedOutputStream;->computeUInt64Size(IJ)I

    move-result v2

    add-int/2addr v0, v2

    .line 9340
    :cond_d
    iget v2, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApEssentialMsg;->favoriteSlotReady_:I

    if-eqz v2, :cond_e

    const/16 v4, 0xe

    .line 9342
    invoke-static {v4, v2}, Lcom/android/carsdk/protobuf/CodedOutputStream;->computeInt32Size(II)I

    move-result v2

    add-int/2addr v0, v2

    .line 9344
    :cond_e
    iget v2, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApEssentialMsg;->isHdmap_:I

    if-eqz v2, :cond_f

    const/16 v4, 0xf

    .line 9346
    invoke-static {v4, v2}, Lcom/android/carsdk/protobuf/CodedOutputStream;->computeInt32Size(II)I

    move-result v2

    add-int/2addr v0, v2

    .line 9348
    :cond_f
    iget v2, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApEssentialMsg;->trainingTips_:I

    if-eqz v2, :cond_10

    const/16 v4, 0x10

    .line 9350
    invoke-static {v4, v2}, Lcom/android/carsdk/protobuf/CodedOutputStream;->computeInt32Size(II)I

    move-result v2

    add-int/2addr v0, v2

    .line 9352
    :cond_10
    iget v2, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApEssentialMsg;->trainingst_:I

    if-eqz v2, :cond_11

    const/16 v4, 0x11

    .line 9354
    invoke-static {v4, v2}, Lcom/android/carsdk/protobuf/CodedOutputStream;->computeInt32Size(II)I

    move-result v2

    add-int/2addr v0, v2

    :cond_11
    move v2, v1

    .line 9358
    :goto_1
    iget-object v4, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApEssentialMsg;->trainingfail_:Lcom/android/carsdk/protobuf/Internal$IntList;

    invoke-interface {v4}, Lcom/android/carsdk/protobuf/Internal$IntList;->size()I

    move-result v4

    if-ge v1, v4, :cond_12

    .line 9359
    iget-object v4, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApEssentialMsg;->trainingfail_:Lcom/android/carsdk/protobuf/Internal$IntList;

    .line 9360
    invoke-interface {v4, v1}, Lcom/android/carsdk/protobuf/Internal$IntList;->getInt(I)I

    move-result v4

    invoke-static {v4}, Lcom/android/carsdk/protobuf/CodedOutputStream;->computeInt32SizeNoTag(I)I

    move-result v4

    add-int/2addr v2, v4

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_12
    add-int/2addr v0, v2

    .line 9363
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApEssentialMsg;->getTrainingfailList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    mul-int/2addr v1, v3

    add-int/2addr v0, v1

    .line 9365
    iget v1, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApEssentialMsg;->terminalAttr_:I

    if-eqz v1, :cond_13

    const/16 v2, 0x13

    .line 9367
    invoke-static {v2, v1}, Lcom/android/carsdk/protobuf/CodedOutputStream;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 9369
    :cond_13
    iget v1, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApEssentialMsg;->terminalFloor_:I

    if-eqz v1, :cond_14

    const/16 v2, 0x14

    .line 9371
    invoke-static {v2, v1}, Lcom/android/carsdk/protobuf/CodedOutputStream;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 9373
    :cond_14
    iget-wide v1, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApEssentialMsg;->mapTime_:J

    cmp-long v3, v1, v6

    if-eqz v3, :cond_15

    const/16 v3, 0x15

    .line 9375
    invoke-static {v3, v1, v2}, Lcom/android/carsdk/protobuf/CodedOutputStream;->computeUInt64Size(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 9377
    :cond_15
    iput v0, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApEssentialMsg;->memoizedSerializedSize:I

    return v0
.end method

.method public getSilentFavoriteState()I
    .locals 1

    .line 8956
    iget v0, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApEssentialMsg;->silentFavoriteState_:I

    return v0
.end method

.method public getStatusIndicate()I
    .locals 1

    .line 8720
    iget v0, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApEssentialMsg;->statusIndicate_:I

    return v0
.end method

.method public getTerminalAttr()I
    .locals 1

    .line 9152
    iget v0, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApEssentialMsg;->terminalAttr_:I

    return v0
.end method

.method public getTerminalFloor()I
    .locals 1

    .line 9175
    iget v0, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApEssentialMsg;->terminalFloor_:I

    return v0
.end method

.method public getTrainingTips()I
    .locals 1

    .line 9048
    iget v0, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApEssentialMsg;->trainingTips_:I

    return v0
.end method

.method public getTrainingfail(I)I
    .locals 1

    .line 9107
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApEssentialMsg;->trainingfail_:Lcom/android/carsdk/protobuf/Internal$IntList;

    invoke-interface {v0, p1}, Lcom/android/carsdk/protobuf/Internal$IntList;->getInt(I)I

    move-result p1

    return p1
.end method

.method public getTrainingfailCount()I
    .locals 1

    .line 9101
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApEssentialMsg;->trainingfail_:Lcom/android/carsdk/protobuf/Internal$IntList;

    invoke-interface {v0}, Lcom/android/carsdk/protobuf/Internal$IntList;->size()I

    move-result v0

    return v0
.end method

.method public getTrainingfailList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 9095
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApEssentialMsg;->trainingfail_:Lcom/android/carsdk/protobuf/Internal$IntList;

    return-object v0
.end method

.method public getTrainingst()I
    .locals 1

    .line 9071
    iget v0, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApEssentialMsg;->trainingst_:I

    return v0
.end method

.method public getVoice()I
    .locals 1

    .line 8789
    iget v0, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApEssentialMsg;->voice_:I

    return v0
.end method

.method public getXpuAbnormal()I
    .locals 1

    .line 8697
    iget v0, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApEssentialMsg;->xpuAbnormal_:I

    return v0
.end method

.method public getXputips()I
    .locals 1

    .line 8674
    iget v0, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApEssentialMsg;->xputips_:I

    return v0
.end method

.method public hasBdistancepercent()Z
    .locals 1

    .line 8835
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApEssentialMsg;->bdistancepercent_:Landroid/car/hardware/xpu/XpuApEssentialMsg$BDistancePercent;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public writeTo(Lcom/android/carsdk/protobuf/CodedOutputStream;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 9217
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApEssentialMsg;->getSerializedSize()I

    .line 9218
    iget v0, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApEssentialMsg;->xputips_:I

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    .line 9219
    invoke-virtual {p1, v1, v0}, Lcom/android/carsdk/protobuf/CodedOutputStream;->writeInt32(II)V

    .line 9221
    :cond_0
    iget v0, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApEssentialMsg;->xpuAbnormal_:I

    if-eqz v0, :cond_1

    const/4 v1, 0x2

    .line 9222
    invoke-virtual {p1, v1, v0}, Lcom/android/carsdk/protobuf/CodedOutputStream;->writeInt32(II)V

    .line 9224
    :cond_1
    iget v0, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApEssentialMsg;->statusIndicate_:I

    if-eqz v0, :cond_2

    const/4 v1, 0x3

    .line 9225
    invoke-virtual {p1, v1, v0}, Lcom/android/carsdk/protobuf/CodedOutputStream;->writeInt32(II)V

    .line 9227
    :cond_2
    iget v0, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApEssentialMsg;->failReason_:I

    if-eqz v0, :cond_3

    const/4 v1, 0x4

    .line 9228
    invoke-virtual {p1, v1, v0}, Lcom/android/carsdk/protobuf/CodedOutputStream;->writeInt32(II)V

    .line 9230
    :cond_3
    iget v0, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApEssentialMsg;->arrow_:I

    if-eqz v0, :cond_4

    const/4 v1, 0x5

    .line 9231
    invoke-virtual {p1, v1, v0}, Lcom/android/carsdk/protobuf/CodedOutputStream;->writeInt32(II)V

    .line 9233
    :cond_4
    iget v0, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApEssentialMsg;->voice_:I

    if-eqz v0, :cond_5

    const/4 v1, 0x6

    .line 9234
    invoke-virtual {p1, v1, v0}, Lcom/android/carsdk/protobuf/CodedOutputStream;->writeInt32(II)V

    .line 9236
    :cond_5
    iget v0, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApEssentialMsg;->remainDistance_:F

    const/4 v1, 0x0

    cmpl-float v1, v0, v1

    if-eqz v1, :cond_6

    const/4 v1, 0x7

    .line 9237
    invoke-virtual {p1, v1, v0}, Lcom/android/carsdk/protobuf/CodedOutputStream;->writeFloat(IF)V

    .line 9239
    :cond_6
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApEssentialMsg;->bdistancepercent_:Landroid/car/hardware/xpu/XpuApEssentialMsg$BDistancePercent;

    if-eqz v0, :cond_7

    const/16 v0, 0x8

    .line 9240
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApEssentialMsg;->getBdistancepercent()Landroid/car/hardware/xpu/XpuApEssentialMsg$BDistancePercent;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/android/carsdk/protobuf/CodedOutputStream;->writeMessage(ILcom/android/carsdk/protobuf/MessageLite;)V

    .line 9242
    :cond_7
    iget v0, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApEssentialMsg;->parkState_:I

    if-eqz v0, :cond_8

    const/16 v1, 0x9

    .line 9243
    invoke-virtual {p1, v1, v0}, Lcom/android/carsdk/protobuf/CodedOutputStream;->writeInt32(II)V

    .line 9245
    :cond_8
    iget v0, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApEssentialMsg;->globalTrajectoryIndex_:I

    if-eqz v0, :cond_9

    const/16 v1, 0xa

    .line 9246
    invoke-virtual {p1, v1, v0}, Lcom/android/carsdk/protobuf/CodedOutputStream;->writeInt32(II)V

    .line 9248
    :cond_9
    iget v0, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApEssentialMsg;->mapPoseState_:I

    if-eqz v0, :cond_a

    const/16 v1, 0xb

    .line 9249
    invoke-virtual {p1, v1, v0}, Lcom/android/carsdk/protobuf/CodedOutputStream;->writeInt32(II)V

    .line 9251
    :cond_a
    iget v0, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApEssentialMsg;->silentFavoriteState_:I

    if-eqz v0, :cond_b

    const/16 v1, 0xc

    .line 9252
    invoke-virtual {p1, v1, v0}, Lcom/android/carsdk/protobuf/CodedOutputStream;->writeInt32(II)V

    .line 9254
    :cond_b
    iget-wide v0, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApEssentialMsg;->hdmapId_:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_c

    const/16 v4, 0xd

    .line 9255
    invoke-virtual {p1, v4, v0, v1}, Lcom/android/carsdk/protobuf/CodedOutputStream;->writeUInt64(IJ)V

    .line 9257
    :cond_c
    iget v0, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApEssentialMsg;->favoriteSlotReady_:I

    if-eqz v0, :cond_d

    const/16 v1, 0xe

    .line 9258
    invoke-virtual {p1, v1, v0}, Lcom/android/carsdk/protobuf/CodedOutputStream;->writeInt32(II)V

    .line 9260
    :cond_d
    iget v0, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApEssentialMsg;->isHdmap_:I

    if-eqz v0, :cond_e

    const/16 v1, 0xf

    .line 9261
    invoke-virtual {p1, v1, v0}, Lcom/android/carsdk/protobuf/CodedOutputStream;->writeInt32(II)V

    .line 9263
    :cond_e
    iget v0, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApEssentialMsg;->trainingTips_:I

    if-eqz v0, :cond_f

    const/16 v1, 0x10

    .line 9264
    invoke-virtual {p1, v1, v0}, Lcom/android/carsdk/protobuf/CodedOutputStream;->writeInt32(II)V

    .line 9266
    :cond_f
    iget v0, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApEssentialMsg;->trainingst_:I

    if-eqz v0, :cond_10

    const/16 v1, 0x11

    .line 9267
    invoke-virtual {p1, v1, v0}, Lcom/android/carsdk/protobuf/CodedOutputStream;->writeInt32(II)V

    :cond_10
    const/4 v0, 0x0

    .line 9269
    :goto_0
    iget-object v1, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApEssentialMsg;->trainingfail_:Lcom/android/carsdk/protobuf/Internal$IntList;

    invoke-interface {v1}, Lcom/android/carsdk/protobuf/Internal$IntList;->size()I

    move-result v1

    if-ge v0, v1, :cond_11

    const/16 v1, 0x12

    .line 9270
    iget-object v4, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApEssentialMsg;->trainingfail_:Lcom/android/carsdk/protobuf/Internal$IntList;

    invoke-interface {v4, v0}, Lcom/android/carsdk/protobuf/Internal$IntList;->getInt(I)I

    move-result v4

    invoke-virtual {p1, v1, v4}, Lcom/android/carsdk/protobuf/CodedOutputStream;->writeInt32(II)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 9272
    :cond_11
    iget v0, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApEssentialMsg;->terminalAttr_:I

    if-eqz v0, :cond_12

    const/16 v1, 0x13

    .line 9273
    invoke-virtual {p1, v1, v0}, Lcom/android/carsdk/protobuf/CodedOutputStream;->writeInt32(II)V

    .line 9275
    :cond_12
    iget v0, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApEssentialMsg;->terminalFloor_:I

    if-eqz v0, :cond_13

    const/16 v1, 0x14

    .line 9276
    invoke-virtual {p1, v1, v0}, Lcom/android/carsdk/protobuf/CodedOutputStream;->writeInt32(II)V

    .line 9278
    :cond_13
    iget-wide v0, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApEssentialMsg;->mapTime_:J

    cmp-long v2, v0, v2

    if-eqz v2, :cond_14

    const/16 v2, 0x15

    .line 9279
    invoke-virtual {p1, v2, v0, v1}, Lcom/android/carsdk/protobuf/CodedOutputStream;->writeUInt64(IJ)V

    :cond_14
    return-void
.end method
