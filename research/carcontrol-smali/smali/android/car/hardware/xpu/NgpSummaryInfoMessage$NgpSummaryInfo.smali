.class public final Landroid/car/hardware/xpu/NgpSummaryInfoMessage$NgpSummaryInfo;
.super Lcom/android/carsdk/protobuf/GeneratedMessageLite;
.source "NgpSummaryInfoMessage.java"

# interfaces
.implements Landroid/car/hardware/xpu/NgpSummaryInfoMessage$NgpSummaryInfoOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/car/hardware/xpu/NgpSummaryInfoMessage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "NgpSummaryInfo"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/car/hardware/xpu/NgpSummaryInfoMessage$NgpSummaryInfo$Builder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/carsdk/protobuf/GeneratedMessageLite<",
        "Landroid/car/hardware/xpu/NgpSummaryInfoMessage$NgpSummaryInfo;",
        "Landroid/car/hardware/xpu/NgpSummaryInfoMessage$NgpSummaryInfo$Builder;",
        ">;",
        "Landroid/car/hardware/xpu/NgpSummaryInfoMessage$NgpSummaryInfoOrBuilder;"
    }
.end annotation


# static fields
.field public static final ACC_MILEAGE_TOTAL_FIELD_NUMBER:I = 0x11

.field private static final DEFAULT_INSTANCE:Landroid/car/hardware/xpu/NgpSummaryInfoMessage$NgpSummaryInfo;

.field public static final DETOUR_COUNT_FIELD_NUMBER:I = 0x8

.field public static final ETC_COUNT_FIELD_NUMBER:I = 0xe

.field public static final INTERSECTION_PASS_COUNT_FIELD_NUMBER:I = 0x7

.field public static final LANE_CHANGE_COUNT_FIELD_NUMBER:I = 0x6

.field public static final LCC_MILEAGE_TOTAL_FIELD_NUMBER:I = 0x12

.field public static final MAIN_AND_SIDE_ROADS_COUNT_FIELD_NUMBER:I = 0xc

.field public static final NARROW_MILEAGE_FIELD_NUMBER:I = 0xf

.field public static final NGP_DISPLAY_FLAG_FIELD_NUMBER:I = 0x2

.field public static final NGP_MILEAGE_FIELD_NUMBER:I = 0x3

.field public static final NGP_MILEAGE_RATIO_FIELD_NUMBER:I = 0x4

.field public static final NGP_MILEAGE_TOTAL_FIELD_NUMBER:I = 0x13

.field public static final PARK_MILEAGE_FIELD_NUMBER:I = 0x10

.field private static volatile PARSER:Lcom/android/carsdk/protobuf/Parser; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/carsdk/protobuf/Parser<",
            "Landroid/car/hardware/xpu/NgpSummaryInfoMessage$NgpSummaryInfo;",
            ">;"
        }
    .end annotation
.end field

.field public static final RAMP_COUNT_FIELD_NUMBER:I = 0x9

.field public static final ROUNDABOUT_COUNT_FIELD_NUMBER:I = 0xb

.field public static final TRAJECTORY_DURATION_FIELD_NUMBER:I = 0x5

.field public static final TRAJECTORY_ID_FIELD_NUMBER:I = 0x1

.field public static final U_TURN_COUNT_FIELD_NUMBER:I = 0xa

.field public static final ZERO_TAKE_OVER_FLAG_FIELD_NUMBER:I = 0xd


# instance fields
.field private accMileageTotal_:F

.field private detourCount_:I

.field private etcCount_:I

.field private intersectionPassCount_:I

.field private laneChangeCount_:I

.field private lccMileageTotal_:F

.field private mainAndSideRoadsCount_:I

.field private narrowMileage_:F

.field private ngpDisplayFlag_:I

.field private ngpMileageRatio_:F

.field private ngpMileageTotal_:F

.field private ngpMileage_:F

.field private parkMileage_:F

.field private rampCount_:I

.field private roundaboutCount_:I

.field private trajectoryDuration_:F

.field private trajectoryId_:I

.field private uTurnCount_:I

.field private zeroTakeOverFlag_:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 2164
    new-instance v0, Landroid/car/hardware/xpu/NgpSummaryInfoMessage$NgpSummaryInfo;

    invoke-direct {v0}, Landroid/car/hardware/xpu/NgpSummaryInfoMessage$NgpSummaryInfo;-><init>()V

    sput-object v0, Landroid/car/hardware/xpu/NgpSummaryInfoMessage$NgpSummaryInfo;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/NgpSummaryInfoMessage$NgpSummaryInfo;

    .line 2165
    invoke-virtual {v0}, Landroid/car/hardware/xpu/NgpSummaryInfoMessage$NgpSummaryInfo;->makeImmutable()V

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .line 324
    invoke-direct {p0}, Lcom/android/carsdk/protobuf/GeneratedMessageLite;-><init>()V

    const/4 v0, 0x0

    .line 325
    iput v0, p0, Landroid/car/hardware/xpu/NgpSummaryInfoMessage$NgpSummaryInfo;->trajectoryId_:I

    .line 326
    iput v0, p0, Landroid/car/hardware/xpu/NgpSummaryInfoMessage$NgpSummaryInfo;->ngpDisplayFlag_:I

    const/4 v1, 0x0

    .line 327
    iput v1, p0, Landroid/car/hardware/xpu/NgpSummaryInfoMessage$NgpSummaryInfo;->ngpMileage_:F

    .line 328
    iput v1, p0, Landroid/car/hardware/xpu/NgpSummaryInfoMessage$NgpSummaryInfo;->ngpMileageRatio_:F

    .line 329
    iput v1, p0, Landroid/car/hardware/xpu/NgpSummaryInfoMessage$NgpSummaryInfo;->trajectoryDuration_:F

    .line 330
    iput v0, p0, Landroid/car/hardware/xpu/NgpSummaryInfoMessage$NgpSummaryInfo;->laneChangeCount_:I

    .line 331
    iput v0, p0, Landroid/car/hardware/xpu/NgpSummaryInfoMessage$NgpSummaryInfo;->intersectionPassCount_:I

    .line 332
    iput v0, p0, Landroid/car/hardware/xpu/NgpSummaryInfoMessage$NgpSummaryInfo;->detourCount_:I

    .line 333
    iput v0, p0, Landroid/car/hardware/xpu/NgpSummaryInfoMessage$NgpSummaryInfo;->rampCount_:I

    .line 334
    iput v0, p0, Landroid/car/hardware/xpu/NgpSummaryInfoMessage$NgpSummaryInfo;->uTurnCount_:I

    .line 335
    iput v0, p0, Landroid/car/hardware/xpu/NgpSummaryInfoMessage$NgpSummaryInfo;->roundaboutCount_:I

    .line 336
    iput v0, p0, Landroid/car/hardware/xpu/NgpSummaryInfoMessage$NgpSummaryInfo;->mainAndSideRoadsCount_:I

    .line 337
    iput-boolean v0, p0, Landroid/car/hardware/xpu/NgpSummaryInfoMessage$NgpSummaryInfo;->zeroTakeOverFlag_:Z

    .line 338
    iput v0, p0, Landroid/car/hardware/xpu/NgpSummaryInfoMessage$NgpSummaryInfo;->etcCount_:I

    .line 339
    iput v1, p0, Landroid/car/hardware/xpu/NgpSummaryInfoMessage$NgpSummaryInfo;->narrowMileage_:F

    .line 340
    iput v1, p0, Landroid/car/hardware/xpu/NgpSummaryInfoMessage$NgpSummaryInfo;->parkMileage_:F

    .line 341
    iput v1, p0, Landroid/car/hardware/xpu/NgpSummaryInfoMessage$NgpSummaryInfo;->accMileageTotal_:F

    .line 342
    iput v1, p0, Landroid/car/hardware/xpu/NgpSummaryInfoMessage$NgpSummaryInfo;->lccMileageTotal_:F

    .line 343
    iput v1, p0, Landroid/car/hardware/xpu/NgpSummaryInfoMessage$NgpSummaryInfo;->ngpMileageTotal_:F

    return-void
.end method

.method static synthetic access$000()Landroid/car/hardware/xpu/NgpSummaryInfoMessage$NgpSummaryInfo;
    .locals 1

    .line 319
    sget-object v0, Landroid/car/hardware/xpu/NgpSummaryInfoMessage$NgpSummaryInfo;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/NgpSummaryInfoMessage$NgpSummaryInfo;

    return-object v0
.end method

.method static synthetic access$100(Landroid/car/hardware/xpu/NgpSummaryInfoMessage$NgpSummaryInfo;I)V
    .locals 0

    .line 319
    invoke-direct {p0, p1}, Landroid/car/hardware/xpu/NgpSummaryInfoMessage$NgpSummaryInfo;->setTrajectoryId(I)V

    return-void
.end method

.method static synthetic access$1000(Landroid/car/hardware/xpu/NgpSummaryInfoMessage$NgpSummaryInfo;F)V
    .locals 0

    .line 319
    invoke-direct {p0, p1}, Landroid/car/hardware/xpu/NgpSummaryInfoMessage$NgpSummaryInfo;->setTrajectoryDuration(F)V

    return-void
.end method

.method static synthetic access$1100(Landroid/car/hardware/xpu/NgpSummaryInfoMessage$NgpSummaryInfo;)V
    .locals 0

    .line 319
    invoke-direct {p0}, Landroid/car/hardware/xpu/NgpSummaryInfoMessage$NgpSummaryInfo;->clearTrajectoryDuration()V

    return-void
.end method

.method static synthetic access$1200(Landroid/car/hardware/xpu/NgpSummaryInfoMessage$NgpSummaryInfo;I)V
    .locals 0

    .line 319
    invoke-direct {p0, p1}, Landroid/car/hardware/xpu/NgpSummaryInfoMessage$NgpSummaryInfo;->setLaneChangeCount(I)V

    return-void
.end method

.method static synthetic access$1300(Landroid/car/hardware/xpu/NgpSummaryInfoMessage$NgpSummaryInfo;)V
    .locals 0

    .line 319
    invoke-direct {p0}, Landroid/car/hardware/xpu/NgpSummaryInfoMessage$NgpSummaryInfo;->clearLaneChangeCount()V

    return-void
.end method

.method static synthetic access$1400(Landroid/car/hardware/xpu/NgpSummaryInfoMessage$NgpSummaryInfo;I)V
    .locals 0

    .line 319
    invoke-direct {p0, p1}, Landroid/car/hardware/xpu/NgpSummaryInfoMessage$NgpSummaryInfo;->setIntersectionPassCount(I)V

    return-void
.end method

.method static synthetic access$1500(Landroid/car/hardware/xpu/NgpSummaryInfoMessage$NgpSummaryInfo;)V
    .locals 0

    .line 319
    invoke-direct {p0}, Landroid/car/hardware/xpu/NgpSummaryInfoMessage$NgpSummaryInfo;->clearIntersectionPassCount()V

    return-void
.end method

.method static synthetic access$1600(Landroid/car/hardware/xpu/NgpSummaryInfoMessage$NgpSummaryInfo;I)V
    .locals 0

    .line 319
    invoke-direct {p0, p1}, Landroid/car/hardware/xpu/NgpSummaryInfoMessage$NgpSummaryInfo;->setDetourCount(I)V

    return-void
.end method

.method static synthetic access$1700(Landroid/car/hardware/xpu/NgpSummaryInfoMessage$NgpSummaryInfo;)V
    .locals 0

    .line 319
    invoke-direct {p0}, Landroid/car/hardware/xpu/NgpSummaryInfoMessage$NgpSummaryInfo;->clearDetourCount()V

    return-void
.end method

.method static synthetic access$1800(Landroid/car/hardware/xpu/NgpSummaryInfoMessage$NgpSummaryInfo;I)V
    .locals 0

    .line 319
    invoke-direct {p0, p1}, Landroid/car/hardware/xpu/NgpSummaryInfoMessage$NgpSummaryInfo;->setRampCount(I)V

    return-void
.end method

.method static synthetic access$1900(Landroid/car/hardware/xpu/NgpSummaryInfoMessage$NgpSummaryInfo;)V
    .locals 0

    .line 319
    invoke-direct {p0}, Landroid/car/hardware/xpu/NgpSummaryInfoMessage$NgpSummaryInfo;->clearRampCount()V

    return-void
.end method

.method static synthetic access$200(Landroid/car/hardware/xpu/NgpSummaryInfoMessage$NgpSummaryInfo;)V
    .locals 0

    .line 319
    invoke-direct {p0}, Landroid/car/hardware/xpu/NgpSummaryInfoMessage$NgpSummaryInfo;->clearTrajectoryId()V

    return-void
.end method

.method static synthetic access$2000(Landroid/car/hardware/xpu/NgpSummaryInfoMessage$NgpSummaryInfo;I)V
    .locals 0

    .line 319
    invoke-direct {p0, p1}, Landroid/car/hardware/xpu/NgpSummaryInfoMessage$NgpSummaryInfo;->setUTurnCount(I)V

    return-void
.end method

.method static synthetic access$2100(Landroid/car/hardware/xpu/NgpSummaryInfoMessage$NgpSummaryInfo;)V
    .locals 0

    .line 319
    invoke-direct {p0}, Landroid/car/hardware/xpu/NgpSummaryInfoMessage$NgpSummaryInfo;->clearUTurnCount()V

    return-void
.end method

.method static synthetic access$2200(Landroid/car/hardware/xpu/NgpSummaryInfoMessage$NgpSummaryInfo;I)V
    .locals 0

    .line 319
    invoke-direct {p0, p1}, Landroid/car/hardware/xpu/NgpSummaryInfoMessage$NgpSummaryInfo;->setRoundaboutCount(I)V

    return-void
.end method

.method static synthetic access$2300(Landroid/car/hardware/xpu/NgpSummaryInfoMessage$NgpSummaryInfo;)V
    .locals 0

    .line 319
    invoke-direct {p0}, Landroid/car/hardware/xpu/NgpSummaryInfoMessage$NgpSummaryInfo;->clearRoundaboutCount()V

    return-void
.end method

.method static synthetic access$2400(Landroid/car/hardware/xpu/NgpSummaryInfoMessage$NgpSummaryInfo;I)V
    .locals 0

    .line 319
    invoke-direct {p0, p1}, Landroid/car/hardware/xpu/NgpSummaryInfoMessage$NgpSummaryInfo;->setMainAndSideRoadsCount(I)V

    return-void
.end method

.method static synthetic access$2500(Landroid/car/hardware/xpu/NgpSummaryInfoMessage$NgpSummaryInfo;)V
    .locals 0

    .line 319
    invoke-direct {p0}, Landroid/car/hardware/xpu/NgpSummaryInfoMessage$NgpSummaryInfo;->clearMainAndSideRoadsCount()V

    return-void
.end method

.method static synthetic access$2600(Landroid/car/hardware/xpu/NgpSummaryInfoMessage$NgpSummaryInfo;Z)V
    .locals 0

    .line 319
    invoke-direct {p0, p1}, Landroid/car/hardware/xpu/NgpSummaryInfoMessage$NgpSummaryInfo;->setZeroTakeOverFlag(Z)V

    return-void
.end method

.method static synthetic access$2700(Landroid/car/hardware/xpu/NgpSummaryInfoMessage$NgpSummaryInfo;)V
    .locals 0

    .line 319
    invoke-direct {p0}, Landroid/car/hardware/xpu/NgpSummaryInfoMessage$NgpSummaryInfo;->clearZeroTakeOverFlag()V

    return-void
.end method

.method static synthetic access$2800(Landroid/car/hardware/xpu/NgpSummaryInfoMessage$NgpSummaryInfo;I)V
    .locals 0

    .line 319
    invoke-direct {p0, p1}, Landroid/car/hardware/xpu/NgpSummaryInfoMessage$NgpSummaryInfo;->setEtcCount(I)V

    return-void
.end method

.method static synthetic access$2900(Landroid/car/hardware/xpu/NgpSummaryInfoMessage$NgpSummaryInfo;)V
    .locals 0

    .line 319
    invoke-direct {p0}, Landroid/car/hardware/xpu/NgpSummaryInfoMessage$NgpSummaryInfo;->clearEtcCount()V

    return-void
.end method

.method static synthetic access$300(Landroid/car/hardware/xpu/NgpSummaryInfoMessage$NgpSummaryInfo;I)V
    .locals 0

    .line 319
    invoke-direct {p0, p1}, Landroid/car/hardware/xpu/NgpSummaryInfoMessage$NgpSummaryInfo;->setNgpDisplayFlagValue(I)V

    return-void
.end method

.method static synthetic access$3000(Landroid/car/hardware/xpu/NgpSummaryInfoMessage$NgpSummaryInfo;F)V
    .locals 0

    .line 319
    invoke-direct {p0, p1}, Landroid/car/hardware/xpu/NgpSummaryInfoMessage$NgpSummaryInfo;->setNarrowMileage(F)V

    return-void
.end method

.method static synthetic access$3100(Landroid/car/hardware/xpu/NgpSummaryInfoMessage$NgpSummaryInfo;)V
    .locals 0

    .line 319
    invoke-direct {p0}, Landroid/car/hardware/xpu/NgpSummaryInfoMessage$NgpSummaryInfo;->clearNarrowMileage()V

    return-void
.end method

.method static synthetic access$3200(Landroid/car/hardware/xpu/NgpSummaryInfoMessage$NgpSummaryInfo;F)V
    .locals 0

    .line 319
    invoke-direct {p0, p1}, Landroid/car/hardware/xpu/NgpSummaryInfoMessage$NgpSummaryInfo;->setParkMileage(F)V

    return-void
.end method

.method static synthetic access$3300(Landroid/car/hardware/xpu/NgpSummaryInfoMessage$NgpSummaryInfo;)V
    .locals 0

    .line 319
    invoke-direct {p0}, Landroid/car/hardware/xpu/NgpSummaryInfoMessage$NgpSummaryInfo;->clearParkMileage()V

    return-void
.end method

.method static synthetic access$3400(Landroid/car/hardware/xpu/NgpSummaryInfoMessage$NgpSummaryInfo;F)V
    .locals 0

    .line 319
    invoke-direct {p0, p1}, Landroid/car/hardware/xpu/NgpSummaryInfoMessage$NgpSummaryInfo;->setAccMileageTotal(F)V

    return-void
.end method

.method static synthetic access$3500(Landroid/car/hardware/xpu/NgpSummaryInfoMessage$NgpSummaryInfo;)V
    .locals 0

    .line 319
    invoke-direct {p0}, Landroid/car/hardware/xpu/NgpSummaryInfoMessage$NgpSummaryInfo;->clearAccMileageTotal()V

    return-void
.end method

.method static synthetic access$3600(Landroid/car/hardware/xpu/NgpSummaryInfoMessage$NgpSummaryInfo;F)V
    .locals 0

    .line 319
    invoke-direct {p0, p1}, Landroid/car/hardware/xpu/NgpSummaryInfoMessage$NgpSummaryInfo;->setLccMileageTotal(F)V

    return-void
.end method

.method static synthetic access$3700(Landroid/car/hardware/xpu/NgpSummaryInfoMessage$NgpSummaryInfo;)V
    .locals 0

    .line 319
    invoke-direct {p0}, Landroid/car/hardware/xpu/NgpSummaryInfoMessage$NgpSummaryInfo;->clearLccMileageTotal()V

    return-void
.end method

.method static synthetic access$3800(Landroid/car/hardware/xpu/NgpSummaryInfoMessage$NgpSummaryInfo;F)V
    .locals 0

    .line 319
    invoke-direct {p0, p1}, Landroid/car/hardware/xpu/NgpSummaryInfoMessage$NgpSummaryInfo;->setNgpMileageTotal(F)V

    return-void
.end method

.method static synthetic access$3900(Landroid/car/hardware/xpu/NgpSummaryInfoMessage$NgpSummaryInfo;)V
    .locals 0

    .line 319
    invoke-direct {p0}, Landroid/car/hardware/xpu/NgpSummaryInfoMessage$NgpSummaryInfo;->clearNgpMileageTotal()V

    return-void
.end method

.method static synthetic access$400(Landroid/car/hardware/xpu/NgpSummaryInfoMessage$NgpSummaryInfo;Landroid/car/hardware/xpu/NgpSummaryInfoMessage$DisplayTrigger;)V
    .locals 0

    .line 319
    invoke-direct {p0, p1}, Landroid/car/hardware/xpu/NgpSummaryInfoMessage$NgpSummaryInfo;->setNgpDisplayFlag(Landroid/car/hardware/xpu/NgpSummaryInfoMessage$DisplayTrigger;)V

    return-void
.end method

.method static synthetic access$500(Landroid/car/hardware/xpu/NgpSummaryInfoMessage$NgpSummaryInfo;)V
    .locals 0

    .line 319
    invoke-direct {p0}, Landroid/car/hardware/xpu/NgpSummaryInfoMessage$NgpSummaryInfo;->clearNgpDisplayFlag()V

    return-void
.end method

.method static synthetic access$600(Landroid/car/hardware/xpu/NgpSummaryInfoMessage$NgpSummaryInfo;F)V
    .locals 0

    .line 319
    invoke-direct {p0, p1}, Landroid/car/hardware/xpu/NgpSummaryInfoMessage$NgpSummaryInfo;->setNgpMileage(F)V

    return-void
.end method

.method static synthetic access$700(Landroid/car/hardware/xpu/NgpSummaryInfoMessage$NgpSummaryInfo;)V
    .locals 0

    .line 319
    invoke-direct {p0}, Landroid/car/hardware/xpu/NgpSummaryInfoMessage$NgpSummaryInfo;->clearNgpMileage()V

    return-void
.end method

.method static synthetic access$800(Landroid/car/hardware/xpu/NgpSummaryInfoMessage$NgpSummaryInfo;F)V
    .locals 0

    .line 319
    invoke-direct {p0, p1}, Landroid/car/hardware/xpu/NgpSummaryInfoMessage$NgpSummaryInfo;->setNgpMileageRatio(F)V

    return-void
.end method

.method static synthetic access$900(Landroid/car/hardware/xpu/NgpSummaryInfoMessage$NgpSummaryInfo;)V
    .locals 0

    .line 319
    invoke-direct {p0}, Landroid/car/hardware/xpu/NgpSummaryInfoMessage$NgpSummaryInfo;->clearNgpMileageRatio()V

    return-void
.end method

.method private clearAccMileageTotal()V
    .locals 1

    const/4 v0, 0x0

    .line 964
    iput v0, p0, Landroid/car/hardware/xpu/NgpSummaryInfoMessage$NgpSummaryInfo;->accMileageTotal_:F

    return-void
.end method

.method private clearDetourCount()V
    .locals 1

    const/4 v0, 0x0

    .line 646
    iput v0, p0, Landroid/car/hardware/xpu/NgpSummaryInfoMessage$NgpSummaryInfo;->detourCount_:I

    return-void
.end method

.method private clearEtcCount()V
    .locals 1

    const/4 v0, 0x0

    .line 859
    iput v0, p0, Landroid/car/hardware/xpu/NgpSummaryInfoMessage$NgpSummaryInfo;->etcCount_:I

    return-void
.end method

.method private clearIntersectionPassCount()V
    .locals 1

    const/4 v0, 0x0

    .line 611
    iput v0, p0, Landroid/car/hardware/xpu/NgpSummaryInfoMessage$NgpSummaryInfo;->intersectionPassCount_:I

    return-void
.end method

.method private clearLaneChangeCount()V
    .locals 1

    const/4 v0, 0x0

    .line 576
    iput v0, p0, Landroid/car/hardware/xpu/NgpSummaryInfoMessage$NgpSummaryInfo;->laneChangeCount_:I

    return-void
.end method

.method private clearLccMileageTotal()V
    .locals 1

    const/4 v0, 0x0

    .line 999
    iput v0, p0, Landroid/car/hardware/xpu/NgpSummaryInfoMessage$NgpSummaryInfo;->lccMileageTotal_:F

    return-void
.end method

.method private clearMainAndSideRoadsCount()V
    .locals 1

    const/4 v0, 0x0

    .line 789
    iput v0, p0, Landroid/car/hardware/xpu/NgpSummaryInfoMessage$NgpSummaryInfo;->mainAndSideRoadsCount_:I

    return-void
.end method

.method private clearNarrowMileage()V
    .locals 1

    const/4 v0, 0x0

    .line 894
    iput v0, p0, Landroid/car/hardware/xpu/NgpSummaryInfoMessage$NgpSummaryInfo;->narrowMileage_:F

    return-void
.end method

.method private clearNgpDisplayFlag()V
    .locals 1

    const/4 v0, 0x0

    .line 436
    iput v0, p0, Landroid/car/hardware/xpu/NgpSummaryInfoMessage$NgpSummaryInfo;->ngpDisplayFlag_:I

    return-void
.end method

.method private clearNgpMileage()V
    .locals 1

    const/4 v0, 0x0

    .line 471
    iput v0, p0, Landroid/car/hardware/xpu/NgpSummaryInfoMessage$NgpSummaryInfo;->ngpMileage_:F

    return-void
.end method

.method private clearNgpMileageRatio()V
    .locals 1

    const/4 v0, 0x0

    .line 506
    iput v0, p0, Landroid/car/hardware/xpu/NgpSummaryInfoMessage$NgpSummaryInfo;->ngpMileageRatio_:F

    return-void
.end method

.method private clearNgpMileageTotal()V
    .locals 1

    const/4 v0, 0x0

    .line 1034
    iput v0, p0, Landroid/car/hardware/xpu/NgpSummaryInfoMessage$NgpSummaryInfo;->ngpMileageTotal_:F

    return-void
.end method

.method private clearParkMileage()V
    .locals 1

    const/4 v0, 0x0

    .line 929
    iput v0, p0, Landroid/car/hardware/xpu/NgpSummaryInfoMessage$NgpSummaryInfo;->parkMileage_:F

    return-void
.end method

.method private clearRampCount()V
    .locals 1

    const/4 v0, 0x0

    .line 681
    iput v0, p0, Landroid/car/hardware/xpu/NgpSummaryInfoMessage$NgpSummaryInfo;->rampCount_:I

    return-void
.end method

.method private clearRoundaboutCount()V
    .locals 1

    const/4 v0, 0x0

    .line 754
    iput v0, p0, Landroid/car/hardware/xpu/NgpSummaryInfoMessage$NgpSummaryInfo;->roundaboutCount_:I

    return-void
.end method

.method private clearTrajectoryDuration()V
    .locals 1

    const/4 v0, 0x0

    .line 541
    iput v0, p0, Landroid/car/hardware/xpu/NgpSummaryInfoMessage$NgpSummaryInfo;->trajectoryDuration_:F

    return-void
.end method

.method private clearTrajectoryId()V
    .locals 1

    const/4 v0, 0x0

    .line 377
    iput v0, p0, Landroid/car/hardware/xpu/NgpSummaryInfoMessage$NgpSummaryInfo;->trajectoryId_:I

    return-void
.end method

.method private clearUTurnCount()V
    .locals 1

    const/4 v0, 0x0

    .line 719
    iput v0, p0, Landroid/car/hardware/xpu/NgpSummaryInfoMessage$NgpSummaryInfo;->uTurnCount_:I

    return-void
.end method

.method private clearZeroTakeOverFlag()V
    .locals 1

    const/4 v0, 0x0

    .line 824
    iput-boolean v0, p0, Landroid/car/hardware/xpu/NgpSummaryInfoMessage$NgpSummaryInfo;->zeroTakeOverFlag_:Z

    return-void
.end method

.method public static getDefaultInstance()Landroid/car/hardware/xpu/NgpSummaryInfoMessage$NgpSummaryInfo;
    .locals 1

    .line 2169
    sget-object v0, Landroid/car/hardware/xpu/NgpSummaryInfoMessage$NgpSummaryInfo;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/NgpSummaryInfoMessage$NgpSummaryInfo;

    return-object v0
.end method

.method public static newBuilder()Landroid/car/hardware/xpu/NgpSummaryInfoMessage$NgpSummaryInfo$Builder;
    .locals 1

    .line 1245
    sget-object v0, Landroid/car/hardware/xpu/NgpSummaryInfoMessage$NgpSummaryInfo;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/NgpSummaryInfoMessage$NgpSummaryInfo;

    invoke-virtual {v0}, Landroid/car/hardware/xpu/NgpSummaryInfoMessage$NgpSummaryInfo;->toBuilder()Lcom/android/carsdk/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Landroid/car/hardware/xpu/NgpSummaryInfoMessage$NgpSummaryInfo$Builder;

    return-object v0
.end method

.method public static newBuilder(Landroid/car/hardware/xpu/NgpSummaryInfoMessage$NgpSummaryInfo;)Landroid/car/hardware/xpu/NgpSummaryInfoMessage$NgpSummaryInfo$Builder;
    .locals 1

    .line 1248
    sget-object v0, Landroid/car/hardware/xpu/NgpSummaryInfoMessage$NgpSummaryInfo;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/NgpSummaryInfoMessage$NgpSummaryInfo;

    invoke-virtual {v0}, Landroid/car/hardware/xpu/NgpSummaryInfoMessage$NgpSummaryInfo;->toBuilder()Lcom/android/carsdk/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Landroid/car/hardware/xpu/NgpSummaryInfoMessage$NgpSummaryInfo$Builder;

    invoke-virtual {v0, p0}, Landroid/car/hardware/xpu/NgpSummaryInfoMessage$NgpSummaryInfo$Builder;->mergeFrom(Lcom/android/carsdk/protobuf/GeneratedMessageLite;)Lcom/android/carsdk/protobuf/GeneratedMessageLite$Builder;

    move-result-object p0

    check-cast p0, Landroid/car/hardware/xpu/NgpSummaryInfoMessage$NgpSummaryInfo$Builder;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Landroid/car/hardware/xpu/NgpSummaryInfoMessage$NgpSummaryInfo;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1222
    sget-object v0, Landroid/car/hardware/xpu/NgpSummaryInfoMessage$NgpSummaryInfo;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/NgpSummaryInfoMessage$NgpSummaryInfo;

    invoke-static {v0, p0}, Landroid/car/hardware/xpu/NgpSummaryInfoMessage$NgpSummaryInfo;->parseDelimitedFrom(Lcom/android/carsdk/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Landroid/car/hardware/xpu/NgpSummaryInfoMessage$NgpSummaryInfo;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/android/carsdk/protobuf/ExtensionRegistryLite;)Landroid/car/hardware/xpu/NgpSummaryInfoMessage$NgpSummaryInfo;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1228
    sget-object v0, Landroid/car/hardware/xpu/NgpSummaryInfoMessage$NgpSummaryInfo;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/NgpSummaryInfoMessage$NgpSummaryInfo;

    invoke-static {v0, p0, p1}, Landroid/car/hardware/xpu/NgpSummaryInfoMessage$NgpSummaryInfo;->parseDelimitedFrom(Lcom/android/carsdk/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/android/carsdk/protobuf/ExtensionRegistryLite;)Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Landroid/car/hardware/xpu/NgpSummaryInfoMessage$NgpSummaryInfo;

    return-object p0
.end method

.method public static parseFrom(Lcom/android/carsdk/protobuf/ByteString;)Landroid/car/hardware/xpu/NgpSummaryInfoMessage$NgpSummaryInfo;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/carsdk/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1186
    sget-object v0, Landroid/car/hardware/xpu/NgpSummaryInfoMessage$NgpSummaryInfo;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/NgpSummaryInfoMessage$NgpSummaryInfo;

    invoke-static {v0, p0}, Lcom/android/carsdk/protobuf/GeneratedMessageLite;->parseFrom(Lcom/android/carsdk/protobuf/GeneratedMessageLite;Lcom/android/carsdk/protobuf/ByteString;)Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Landroid/car/hardware/xpu/NgpSummaryInfoMessage$NgpSummaryInfo;

    return-object p0
.end method

.method public static parseFrom(Lcom/android/carsdk/protobuf/ByteString;Lcom/android/carsdk/protobuf/ExtensionRegistryLite;)Landroid/car/hardware/xpu/NgpSummaryInfoMessage$NgpSummaryInfo;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/carsdk/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1193
    sget-object v0, Landroid/car/hardware/xpu/NgpSummaryInfoMessage$NgpSummaryInfo;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/NgpSummaryInfoMessage$NgpSummaryInfo;

    invoke-static {v0, p0, p1}, Lcom/android/carsdk/protobuf/GeneratedMessageLite;->parseFrom(Lcom/android/carsdk/protobuf/GeneratedMessageLite;Lcom/android/carsdk/protobuf/ByteString;Lcom/android/carsdk/protobuf/ExtensionRegistryLite;)Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Landroid/car/hardware/xpu/NgpSummaryInfoMessage$NgpSummaryInfo;

    return-object p0
.end method

.method public static parseFrom(Lcom/android/carsdk/protobuf/CodedInputStream;)Landroid/car/hardware/xpu/NgpSummaryInfoMessage$NgpSummaryInfo;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1233
    sget-object v0, Landroid/car/hardware/xpu/NgpSummaryInfoMessage$NgpSummaryInfo;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/NgpSummaryInfoMessage$NgpSummaryInfo;

    invoke-static {v0, p0}, Lcom/android/carsdk/protobuf/GeneratedMessageLite;->parseFrom(Lcom/android/carsdk/protobuf/GeneratedMessageLite;Lcom/android/carsdk/protobuf/CodedInputStream;)Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Landroid/car/hardware/xpu/NgpSummaryInfoMessage$NgpSummaryInfo;

    return-object p0
.end method

.method public static parseFrom(Lcom/android/carsdk/protobuf/CodedInputStream;Lcom/android/carsdk/protobuf/ExtensionRegistryLite;)Landroid/car/hardware/xpu/NgpSummaryInfoMessage$NgpSummaryInfo;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1240
    sget-object v0, Landroid/car/hardware/xpu/NgpSummaryInfoMessage$NgpSummaryInfo;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/NgpSummaryInfoMessage$NgpSummaryInfo;

    invoke-static {v0, p0, p1}, Lcom/android/carsdk/protobuf/GeneratedMessageLite;->parseFrom(Lcom/android/carsdk/protobuf/GeneratedMessageLite;Lcom/android/carsdk/protobuf/CodedInputStream;Lcom/android/carsdk/protobuf/ExtensionRegistryLite;)Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Landroid/car/hardware/xpu/NgpSummaryInfoMessage$NgpSummaryInfo;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Landroid/car/hardware/xpu/NgpSummaryInfoMessage$NgpSummaryInfo;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1210
    sget-object v0, Landroid/car/hardware/xpu/NgpSummaryInfoMessage$NgpSummaryInfo;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/NgpSummaryInfoMessage$NgpSummaryInfo;

    invoke-static {v0, p0}, Lcom/android/carsdk/protobuf/GeneratedMessageLite;->parseFrom(Lcom/android/carsdk/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Landroid/car/hardware/xpu/NgpSummaryInfoMessage$NgpSummaryInfo;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/android/carsdk/protobuf/ExtensionRegistryLite;)Landroid/car/hardware/xpu/NgpSummaryInfoMessage$NgpSummaryInfo;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1217
    sget-object v0, Landroid/car/hardware/xpu/NgpSummaryInfoMessage$NgpSummaryInfo;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/NgpSummaryInfoMessage$NgpSummaryInfo;

    invoke-static {v0, p0, p1}, Lcom/android/carsdk/protobuf/GeneratedMessageLite;->parseFrom(Lcom/android/carsdk/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/android/carsdk/protobuf/ExtensionRegistryLite;)Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Landroid/car/hardware/xpu/NgpSummaryInfoMessage$NgpSummaryInfo;

    return-object p0
.end method

.method public static parseFrom([B)Landroid/car/hardware/xpu/NgpSummaryInfoMessage$NgpSummaryInfo;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/carsdk/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1198
    sget-object v0, Landroid/car/hardware/xpu/NgpSummaryInfoMessage$NgpSummaryInfo;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/NgpSummaryInfoMessage$NgpSummaryInfo;

    invoke-static {v0, p0}, Lcom/android/carsdk/protobuf/GeneratedMessageLite;->parseFrom(Lcom/android/carsdk/protobuf/GeneratedMessageLite;[B)Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Landroid/car/hardware/xpu/NgpSummaryInfoMessage$NgpSummaryInfo;

    return-object p0
.end method

.method public static parseFrom([BLcom/android/carsdk/protobuf/ExtensionRegistryLite;)Landroid/car/hardware/xpu/NgpSummaryInfoMessage$NgpSummaryInfo;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/carsdk/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1205
    sget-object v0, Landroid/car/hardware/xpu/NgpSummaryInfoMessage$NgpSummaryInfo;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/NgpSummaryInfoMessage$NgpSummaryInfo;

    invoke-static {v0, p0, p1}, Lcom/android/carsdk/protobuf/GeneratedMessageLite;->parseFrom(Lcom/android/carsdk/protobuf/GeneratedMessageLite;[BLcom/android/carsdk/protobuf/ExtensionRegistryLite;)Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Landroid/car/hardware/xpu/NgpSummaryInfoMessage$NgpSummaryInfo;

    return-object p0
.end method

.method public static parser()Lcom/android/carsdk/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/android/carsdk/protobuf/Parser<",
            "Landroid/car/hardware/xpu/NgpSummaryInfoMessage$NgpSummaryInfo;",
            ">;"
        }
    .end annotation

    .line 2175
    sget-object v0, Landroid/car/hardware/xpu/NgpSummaryInfoMessage$NgpSummaryInfo;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/NgpSummaryInfoMessage$NgpSummaryInfo;

    invoke-virtual {v0}, Landroid/car/hardware/xpu/NgpSummaryInfoMessage$NgpSummaryInfo;->getParserForType()Lcom/android/carsdk/protobuf/Parser;

    move-result-object v0

    return-object v0
.end method

.method private setAccMileageTotal(F)V
    .locals 0

    .line 953
    iput p1, p0, Landroid/car/hardware/xpu/NgpSummaryInfoMessage$NgpSummaryInfo;->accMileageTotal_:F

    return-void
.end method

.method private setDetourCount(I)V
    .locals 0

    .line 635
    iput p1, p0, Landroid/car/hardware/xpu/NgpSummaryInfoMessage$NgpSummaryInfo;->detourCount_:I

    return-void
.end method

.method private setEtcCount(I)V
    .locals 0

    .line 848
    iput p1, p0, Landroid/car/hardware/xpu/NgpSummaryInfoMessage$NgpSummaryInfo;->etcCount_:I

    return-void
.end method

.method private setIntersectionPassCount(I)V
    .locals 0

    .line 600
    iput p1, p0, Landroid/car/hardware/xpu/NgpSummaryInfoMessage$NgpSummaryInfo;->intersectionPassCount_:I

    return-void
.end method

.method private setLaneChangeCount(I)V
    .locals 0

    .line 565
    iput p1, p0, Landroid/car/hardware/xpu/NgpSummaryInfoMessage$NgpSummaryInfo;->laneChangeCount_:I

    return-void
.end method

.method private setLccMileageTotal(F)V
    .locals 0

    .line 988
    iput p1, p0, Landroid/car/hardware/xpu/NgpSummaryInfoMessage$NgpSummaryInfo;->lccMileageTotal_:F

    return-void
.end method

.method private setMainAndSideRoadsCount(I)V
    .locals 0

    .line 778
    iput p1, p0, Landroid/car/hardware/xpu/NgpSummaryInfoMessage$NgpSummaryInfo;->mainAndSideRoadsCount_:I

    return-void
.end method

.method private setNarrowMileage(F)V
    .locals 0

    .line 883
    iput p1, p0, Landroid/car/hardware/xpu/NgpSummaryInfoMessage$NgpSummaryInfo;->narrowMileage_:F

    return-void
.end method

.method private setNgpDisplayFlag(Landroid/car/hardware/xpu/NgpSummaryInfoMessage$DisplayTrigger;)V
    .locals 0

    .line 422
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 425
    invoke-virtual {p1}, Landroid/car/hardware/xpu/NgpSummaryInfoMessage$DisplayTrigger;->getNumber()I

    move-result p1

    iput p1, p0, Landroid/car/hardware/xpu/NgpSummaryInfoMessage$NgpSummaryInfo;->ngpDisplayFlag_:I

    return-void
.end method

.method private setNgpDisplayFlagValue(I)V
    .locals 0

    .line 411
    iput p1, p0, Landroid/car/hardware/xpu/NgpSummaryInfoMessage$NgpSummaryInfo;->ngpDisplayFlag_:I

    return-void
.end method

.method private setNgpMileage(F)V
    .locals 0

    .line 460
    iput p1, p0, Landroid/car/hardware/xpu/NgpSummaryInfoMessage$NgpSummaryInfo;->ngpMileage_:F

    return-void
.end method

.method private setNgpMileageRatio(F)V
    .locals 0

    .line 495
    iput p1, p0, Landroid/car/hardware/xpu/NgpSummaryInfoMessage$NgpSummaryInfo;->ngpMileageRatio_:F

    return-void
.end method

.method private setNgpMileageTotal(F)V
    .locals 0

    .line 1023
    iput p1, p0, Landroid/car/hardware/xpu/NgpSummaryInfoMessage$NgpSummaryInfo;->ngpMileageTotal_:F

    return-void
.end method

.method private setParkMileage(F)V
    .locals 0

    .line 918
    iput p1, p0, Landroid/car/hardware/xpu/NgpSummaryInfoMessage$NgpSummaryInfo;->parkMileage_:F

    return-void
.end method

.method private setRampCount(I)V
    .locals 0

    .line 670
    iput p1, p0, Landroid/car/hardware/xpu/NgpSummaryInfoMessage$NgpSummaryInfo;->rampCount_:I

    return-void
.end method

.method private setRoundaboutCount(I)V
    .locals 0

    .line 743
    iput p1, p0, Landroid/car/hardware/xpu/NgpSummaryInfoMessage$NgpSummaryInfo;->roundaboutCount_:I

    return-void
.end method

.method private setTrajectoryDuration(F)V
    .locals 0

    .line 530
    iput p1, p0, Landroid/car/hardware/xpu/NgpSummaryInfoMessage$NgpSummaryInfo;->trajectoryDuration_:F

    return-void
.end method

.method private setTrajectoryId(I)V
    .locals 0

    .line 366
    iput p1, p0, Landroid/car/hardware/xpu/NgpSummaryInfoMessage$NgpSummaryInfo;->trajectoryId_:I

    return-void
.end method

.method private setUTurnCount(I)V
    .locals 0

    .line 707
    iput p1, p0, Landroid/car/hardware/xpu/NgpSummaryInfoMessage$NgpSummaryInfo;->uTurnCount_:I

    return-void
.end method

.method private setZeroTakeOverFlag(Z)V
    .locals 0

    .line 813
    iput-boolean p1, p0, Landroid/car/hardware/xpu/NgpSummaryInfoMessage$NgpSummaryInfo;->zeroTakeOverFlag_:Z

    return-void
.end method


# virtual methods
.method protected final dynamicMethod(Lcom/android/carsdk/protobuf/GeneratedMessageLite$MethodToInvoke;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    .line 1960
    sget-object v0, Landroid/car/hardware/xpu/NgpSummaryInfoMessage$1;->$SwitchMap$com$google$protobuf$GeneratedMessageLite$MethodToInvoke:[I

    invoke-virtual {p1}, Lcom/android/carsdk/protobuf/GeneratedMessageLite$MethodToInvoke;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x1

    packed-switch p1, :pswitch_data_0

    .line 2157
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1

    .line 2148
    :pswitch_0
    sget-object p1, Landroid/car/hardware/xpu/NgpSummaryInfoMessage$NgpSummaryInfo;->PARSER:Lcom/android/carsdk/protobuf/Parser;

    if-nez p1, :cond_1

    const-class p1, Landroid/car/hardware/xpu/NgpSummaryInfoMessage$NgpSummaryInfo;

    monitor-enter p1

    .line 2149
    :try_start_0
    sget-object p2, Landroid/car/hardware/xpu/NgpSummaryInfoMessage$NgpSummaryInfo;->PARSER:Lcom/android/carsdk/protobuf/Parser;

    if-nez p2, :cond_0

    .line 2150
    new-instance p2, Lcom/android/carsdk/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;

    sget-object p3, Landroid/car/hardware/xpu/NgpSummaryInfoMessage$NgpSummaryInfo;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/NgpSummaryInfoMessage$NgpSummaryInfo;

    invoke-direct {p2, p3}, Lcom/android/carsdk/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;-><init>(Lcom/android/carsdk/protobuf/GeneratedMessageLite;)V

    sput-object p2, Landroid/car/hardware/xpu/NgpSummaryInfoMessage$NgpSummaryInfo;->PARSER:Lcom/android/carsdk/protobuf/Parser;

    .line 2152
    :cond_0
    monitor-exit p1

    goto :goto_0

    :catchall_0
    move-exception p2

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p2

    .line 2154
    :cond_1
    :goto_0
    sget-object p1, Landroid/car/hardware/xpu/NgpSummaryInfoMessage$NgpSummaryInfo;->PARSER:Lcom/android/carsdk/protobuf/Parser;

    return-object p1

    .line 2019
    :pswitch_1
    check-cast p2, Lcom/android/carsdk/protobuf/CodedInputStream;

    .line 2021
    check-cast p3, Lcom/android/carsdk/protobuf/ExtensionRegistryLite;

    :cond_2
    :goto_1
    if-nez v1, :cond_3

    .line 2026
    :try_start_1
    invoke-virtual {p2}, Lcom/android/carsdk/protobuf/CodedInputStream;->readTag()I

    move-result p1

    sparse-switch p1, :sswitch_data_0

    .line 2032
    invoke-virtual {p2, p1}, Lcom/android/carsdk/protobuf/CodedInputStream;->skipField(I)Z

    move-result p1

    goto/16 :goto_3

    .line 2130
    :sswitch_0
    invoke-virtual {p2}, Lcom/android/carsdk/protobuf/CodedInputStream;->readFloat()F

    move-result p1

    iput p1, p0, Landroid/car/hardware/xpu/NgpSummaryInfoMessage$NgpSummaryInfo;->ngpMileageTotal_:F

    goto :goto_1

    .line 2125
    :sswitch_1
    invoke-virtual {p2}, Lcom/android/carsdk/protobuf/CodedInputStream;->readFloat()F

    move-result p1

    iput p1, p0, Landroid/car/hardware/xpu/NgpSummaryInfoMessage$NgpSummaryInfo;->lccMileageTotal_:F

    goto :goto_1

    .line 2120
    :sswitch_2
    invoke-virtual {p2}, Lcom/android/carsdk/protobuf/CodedInputStream;->readFloat()F

    move-result p1

    iput p1, p0, Landroid/car/hardware/xpu/NgpSummaryInfoMessage$NgpSummaryInfo;->accMileageTotal_:F

    goto :goto_1

    .line 2115
    :sswitch_3
    invoke-virtual {p2}, Lcom/android/carsdk/protobuf/CodedInputStream;->readFloat()F

    move-result p1

    iput p1, p0, Landroid/car/hardware/xpu/NgpSummaryInfoMessage$NgpSummaryInfo;->parkMileage_:F

    goto :goto_1

    .line 2110
    :sswitch_4
    invoke-virtual {p2}, Lcom/android/carsdk/protobuf/CodedInputStream;->readFloat()F

    move-result p1

    iput p1, p0, Landroid/car/hardware/xpu/NgpSummaryInfoMessage$NgpSummaryInfo;->narrowMileage_:F

    goto :goto_1

    .line 2105
    :sswitch_5
    invoke-virtual {p2}, Lcom/android/carsdk/protobuf/CodedInputStream;->readUInt32()I

    move-result p1

    iput p1, p0, Landroid/car/hardware/xpu/NgpSummaryInfoMessage$NgpSummaryInfo;->etcCount_:I

    goto :goto_1

    .line 2100
    :sswitch_6
    invoke-virtual {p2}, Lcom/android/carsdk/protobuf/CodedInputStream;->readBool()Z

    move-result p1

    iput-boolean p1, p0, Landroid/car/hardware/xpu/NgpSummaryInfoMessage$NgpSummaryInfo;->zeroTakeOverFlag_:Z

    goto :goto_1

    .line 2095
    :sswitch_7
    invoke-virtual {p2}, Lcom/android/carsdk/protobuf/CodedInputStream;->readUInt32()I

    move-result p1

    iput p1, p0, Landroid/car/hardware/xpu/NgpSummaryInfoMessage$NgpSummaryInfo;->mainAndSideRoadsCount_:I

    goto :goto_1

    .line 2090
    :sswitch_8
    invoke-virtual {p2}, Lcom/android/carsdk/protobuf/CodedInputStream;->readUInt32()I

    move-result p1

    iput p1, p0, Landroid/car/hardware/xpu/NgpSummaryInfoMessage$NgpSummaryInfo;->roundaboutCount_:I

    goto :goto_1

    .line 2085
    :sswitch_9
    invoke-virtual {p2}, Lcom/android/carsdk/protobuf/CodedInputStream;->readUInt32()I

    move-result p1

    iput p1, p0, Landroid/car/hardware/xpu/NgpSummaryInfoMessage$NgpSummaryInfo;->uTurnCount_:I

    goto :goto_1

    .line 2080
    :sswitch_a
    invoke-virtual {p2}, Lcom/android/carsdk/protobuf/CodedInputStream;->readUInt32()I

    move-result p1

    iput p1, p0, Landroid/car/hardware/xpu/NgpSummaryInfoMessage$NgpSummaryInfo;->rampCount_:I

    goto :goto_1

    .line 2075
    :sswitch_b
    invoke-virtual {p2}, Lcom/android/carsdk/protobuf/CodedInputStream;->readUInt32()I

    move-result p1

    iput p1, p0, Landroid/car/hardware/xpu/NgpSummaryInfoMessage$NgpSummaryInfo;->detourCount_:I

    goto :goto_1

    .line 2070
    :sswitch_c
    invoke-virtual {p2}, Lcom/android/carsdk/protobuf/CodedInputStream;->readUInt32()I

    move-result p1

    iput p1, p0, Landroid/car/hardware/xpu/NgpSummaryInfoMessage$NgpSummaryInfo;->intersectionPassCount_:I

    goto :goto_1

    .line 2065
    :sswitch_d
    invoke-virtual {p2}, Lcom/android/carsdk/protobuf/CodedInputStream;->readUInt32()I

    move-result p1

    iput p1, p0, Landroid/car/hardware/xpu/NgpSummaryInfoMessage$NgpSummaryInfo;->laneChangeCount_:I

    goto :goto_1

    .line 2060
    :sswitch_e
    invoke-virtual {p2}, Lcom/android/carsdk/protobuf/CodedInputStream;->readFloat()F

    move-result p1

    iput p1, p0, Landroid/car/hardware/xpu/NgpSummaryInfoMessage$NgpSummaryInfo;->trajectoryDuration_:F

    goto :goto_1

    .line 2055
    :sswitch_f
    invoke-virtual {p2}, Lcom/android/carsdk/protobuf/CodedInputStream;->readFloat()F

    move-result p1

    iput p1, p0, Landroid/car/hardware/xpu/NgpSummaryInfoMessage$NgpSummaryInfo;->ngpMileageRatio_:F

    goto :goto_1

    .line 2050
    :sswitch_10
    invoke-virtual {p2}, Lcom/android/carsdk/protobuf/CodedInputStream;->readFloat()F

    move-result p1

    iput p1, p0, Landroid/car/hardware/xpu/NgpSummaryInfoMessage$NgpSummaryInfo;->ngpMileage_:F

    goto/16 :goto_1

    .line 2043
    :sswitch_11
    invoke-virtual {p2}, Lcom/android/carsdk/protobuf/CodedInputStream;->readEnum()I

    move-result p1

    .line 2045
    iput p1, p0, Landroid/car/hardware/xpu/NgpSummaryInfoMessage$NgpSummaryInfo;->ngpDisplayFlag_:I

    goto/16 :goto_1

    .line 2039
    :sswitch_12
    invoke-virtual {p2}, Lcom/android/carsdk/protobuf/CodedInputStream;->readUInt32()I

    move-result p1

    iput p1, p0, Landroid/car/hardware/xpu/NgpSummaryInfoMessage$NgpSummaryInfo;->trajectoryId_:I
    :try_end_1
    .catch Lcom/android/carsdk/protobuf/InvalidProtocolBufferException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto/16 :goto_1

    :goto_2
    :sswitch_13
    move v1, v2

    goto/16 :goto_1

    :goto_3
    if-nez p1, :cond_2

    goto :goto_2

    :catchall_1
    move-exception p1

    goto :goto_4

    :catch_0
    move-exception p1

    .line 2138
    :try_start_2
    new-instance p2, Ljava/lang/RuntimeException;

    new-instance p3, Lcom/android/carsdk/protobuf/InvalidProtocolBufferException;

    .line 2140
    invoke-virtual {p1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p3, p1}, Lcom/android/carsdk/protobuf/InvalidProtocolBufferException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, p0}, Lcom/android/carsdk/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/android/carsdk/protobuf/MessageLite;)Lcom/android/carsdk/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p2

    :catch_1
    move-exception p1

    .line 2136
    new-instance p2, Ljava/lang/RuntimeException;

    invoke-virtual {p1, p0}, Lcom/android/carsdk/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/android/carsdk/protobuf/MessageLite;)Lcom/android/carsdk/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 2141
    :goto_4
    throw p1

    .line 2145
    :cond_3
    :pswitch_2
    sget-object p1, Landroid/car/hardware/xpu/NgpSummaryInfoMessage$NgpSummaryInfo;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/NgpSummaryInfoMessage$NgpSummaryInfo;

    return-object p1

    .line 1974
    :pswitch_3
    check-cast p2, Lcom/android/carsdk/protobuf/GeneratedMessageLite$Visitor;

    .line 1975
    check-cast p3, Landroid/car/hardware/xpu/NgpSummaryInfoMessage$NgpSummaryInfo;

    .line 1976
    iget p1, p0, Landroid/car/hardware/xpu/NgpSummaryInfoMessage$NgpSummaryInfo;->trajectoryId_:I

    if-eqz p1, :cond_4

    move v0, v2

    goto :goto_5

    :cond_4
    move v0, v1

    :goto_5
    iget v3, p3, Landroid/car/hardware/xpu/NgpSummaryInfoMessage$NgpSummaryInfo;->trajectoryId_:I

    if-eqz v3, :cond_5

    move v4, v2

    goto :goto_6

    :cond_5
    move v4, v1

    :goto_6
    invoke-interface {p2, v0, p1, v4, v3}, Lcom/android/carsdk/protobuf/GeneratedMessageLite$Visitor;->visitInt(ZIZI)I

    move-result p1

    iput p1, p0, Landroid/car/hardware/xpu/NgpSummaryInfoMessage$NgpSummaryInfo;->trajectoryId_:I

    .line 1978
    iget p1, p0, Landroid/car/hardware/xpu/NgpSummaryInfoMessage$NgpSummaryInfo;->ngpDisplayFlag_:I

    if-eqz p1, :cond_6

    move v0, v2

    goto :goto_7

    :cond_6
    move v0, v1

    :goto_7
    iget v3, p3, Landroid/car/hardware/xpu/NgpSummaryInfoMessage$NgpSummaryInfo;->ngpDisplayFlag_:I

    if-eqz v3, :cond_7

    move v4, v2

    goto :goto_8

    :cond_7
    move v4, v1

    :goto_8
    invoke-interface {p2, v0, p1, v4, v3}, Lcom/android/carsdk/protobuf/GeneratedMessageLite$Visitor;->visitInt(ZIZI)I

    move-result p1

    iput p1, p0, Landroid/car/hardware/xpu/NgpSummaryInfoMessage$NgpSummaryInfo;->ngpDisplayFlag_:I

    .line 1979
    iget p1, p0, Landroid/car/hardware/xpu/NgpSummaryInfoMessage$NgpSummaryInfo;->ngpMileage_:F

    const/4 v0, 0x0

    cmpl-float v3, p1, v0

    if-eqz v3, :cond_8

    move v3, v2

    goto :goto_9

    :cond_8
    move v3, v1

    :goto_9
    iget v4, p3, Landroid/car/hardware/xpu/NgpSummaryInfoMessage$NgpSummaryInfo;->ngpMileage_:F

    cmpl-float v5, v4, v0

    if-eqz v5, :cond_9

    move v5, v2

    goto :goto_a

    :cond_9
    move v5, v1

    :goto_a
    invoke-interface {p2, v3, p1, v5, v4}, Lcom/android/carsdk/protobuf/GeneratedMessageLite$Visitor;->visitFloat(ZFZF)F

    move-result p1

    iput p1, p0, Landroid/car/hardware/xpu/NgpSummaryInfoMessage$NgpSummaryInfo;->ngpMileage_:F

    .line 1981
    iget p1, p0, Landroid/car/hardware/xpu/NgpSummaryInfoMessage$NgpSummaryInfo;->ngpMileageRatio_:F

    cmpl-float v3, p1, v0

    if-eqz v3, :cond_a

    move v3, v2

    goto :goto_b

    :cond_a
    move v3, v1

    :goto_b
    iget v4, p3, Landroid/car/hardware/xpu/NgpSummaryInfoMessage$NgpSummaryInfo;->ngpMileageRatio_:F

    cmpl-float v5, v4, v0

    if-eqz v5, :cond_b

    move v5, v2

    goto :goto_c

    :cond_b
    move v5, v1

    :goto_c
    invoke-interface {p2, v3, p1, v5, v4}, Lcom/android/carsdk/protobuf/GeneratedMessageLite$Visitor;->visitFloat(ZFZF)F

    move-result p1

    iput p1, p0, Landroid/car/hardware/xpu/NgpSummaryInfoMessage$NgpSummaryInfo;->ngpMileageRatio_:F

    .line 1983
    iget p1, p0, Landroid/car/hardware/xpu/NgpSummaryInfoMessage$NgpSummaryInfo;->trajectoryDuration_:F

    cmpl-float v3, p1, v0

    if-eqz v3, :cond_c

    move v3, v2

    goto :goto_d

    :cond_c
    move v3, v1

    :goto_d
    iget v4, p3, Landroid/car/hardware/xpu/NgpSummaryInfoMessage$NgpSummaryInfo;->trajectoryDuration_:F

    cmpl-float v5, v4, v0

    if-eqz v5, :cond_d

    move v5, v2

    goto :goto_e

    :cond_d
    move v5, v1

    :goto_e
    invoke-interface {p2, v3, p1, v5, v4}, Lcom/android/carsdk/protobuf/GeneratedMessageLite$Visitor;->visitFloat(ZFZF)F

    move-result p1

    iput p1, p0, Landroid/car/hardware/xpu/NgpSummaryInfoMessage$NgpSummaryInfo;->trajectoryDuration_:F

    .line 1985
    iget p1, p0, Landroid/car/hardware/xpu/NgpSummaryInfoMessage$NgpSummaryInfo;->laneChangeCount_:I

    if-eqz p1, :cond_e

    move v3, v2

    goto :goto_f

    :cond_e
    move v3, v1

    :goto_f
    iget v4, p3, Landroid/car/hardware/xpu/NgpSummaryInfoMessage$NgpSummaryInfo;->laneChangeCount_:I

    if-eqz v4, :cond_f

    move v5, v2

    goto :goto_10

    :cond_f
    move v5, v1

    :goto_10
    invoke-interface {p2, v3, p1, v5, v4}, Lcom/android/carsdk/protobuf/GeneratedMessageLite$Visitor;->visitInt(ZIZI)I

    move-result p1

    iput p1, p0, Landroid/car/hardware/xpu/NgpSummaryInfoMessage$NgpSummaryInfo;->laneChangeCount_:I

    .line 1987
    iget p1, p0, Landroid/car/hardware/xpu/NgpSummaryInfoMessage$NgpSummaryInfo;->intersectionPassCount_:I

    if-eqz p1, :cond_10

    move v3, v2

    goto :goto_11

    :cond_10
    move v3, v1

    :goto_11
    iget v4, p3, Landroid/car/hardware/xpu/NgpSummaryInfoMessage$NgpSummaryInfo;->intersectionPassCount_:I

    if-eqz v4, :cond_11

    move v5, v2

    goto :goto_12

    :cond_11
    move v5, v1

    :goto_12
    invoke-interface {p2, v3, p1, v5, v4}, Lcom/android/carsdk/protobuf/GeneratedMessageLite$Visitor;->visitInt(ZIZI)I

    move-result p1

    iput p1, p0, Landroid/car/hardware/xpu/NgpSummaryInfoMessage$NgpSummaryInfo;->intersectionPassCount_:I

    .line 1989
    iget p1, p0, Landroid/car/hardware/xpu/NgpSummaryInfoMessage$NgpSummaryInfo;->detourCount_:I

    if-eqz p1, :cond_12

    move v3, v2

    goto :goto_13

    :cond_12
    move v3, v1

    :goto_13
    iget v4, p3, Landroid/car/hardware/xpu/NgpSummaryInfoMessage$NgpSummaryInfo;->detourCount_:I

    if-eqz v4, :cond_13

    move v5, v2

    goto :goto_14

    :cond_13
    move v5, v1

    :goto_14
    invoke-interface {p2, v3, p1, v5, v4}, Lcom/android/carsdk/protobuf/GeneratedMessageLite$Visitor;->visitInt(ZIZI)I

    move-result p1

    iput p1, p0, Landroid/car/hardware/xpu/NgpSummaryInfoMessage$NgpSummaryInfo;->detourCount_:I

    .line 1991
    iget p1, p0, Landroid/car/hardware/xpu/NgpSummaryInfoMessage$NgpSummaryInfo;->rampCount_:I

    if-eqz p1, :cond_14

    move v3, v2

    goto :goto_15

    :cond_14
    move v3, v1

    :goto_15
    iget v4, p3, Landroid/car/hardware/xpu/NgpSummaryInfoMessage$NgpSummaryInfo;->rampCount_:I

    if-eqz v4, :cond_15

    move v5, v2

    goto :goto_16

    :cond_15
    move v5, v1

    :goto_16
    invoke-interface {p2, v3, p1, v5, v4}, Lcom/android/carsdk/protobuf/GeneratedMessageLite$Visitor;->visitInt(ZIZI)I

    move-result p1

    iput p1, p0, Landroid/car/hardware/xpu/NgpSummaryInfoMessage$NgpSummaryInfo;->rampCount_:I

    .line 1993
    iget p1, p0, Landroid/car/hardware/xpu/NgpSummaryInfoMessage$NgpSummaryInfo;->uTurnCount_:I

    if-eqz p1, :cond_16

    move v3, v2

    goto :goto_17

    :cond_16
    move v3, v1

    :goto_17
    iget v4, p3, Landroid/car/hardware/xpu/NgpSummaryInfoMessage$NgpSummaryInfo;->uTurnCount_:I

    if-eqz v4, :cond_17

    move v5, v2

    goto :goto_18

    :cond_17
    move v5, v1

    :goto_18
    invoke-interface {p2, v3, p1, v5, v4}, Lcom/android/carsdk/protobuf/GeneratedMessageLite$Visitor;->visitInt(ZIZI)I

    move-result p1

    iput p1, p0, Landroid/car/hardware/xpu/NgpSummaryInfoMessage$NgpSummaryInfo;->uTurnCount_:I

    .line 1995
    iget p1, p0, Landroid/car/hardware/xpu/NgpSummaryInfoMessage$NgpSummaryInfo;->roundaboutCount_:I

    if-eqz p1, :cond_18

    move v3, v2

    goto :goto_19

    :cond_18
    move v3, v1

    :goto_19
    iget v4, p3, Landroid/car/hardware/xpu/NgpSummaryInfoMessage$NgpSummaryInfo;->roundaboutCount_:I

    if-eqz v4, :cond_19

    move v5, v2

    goto :goto_1a

    :cond_19
    move v5, v1

    :goto_1a
    invoke-interface {p2, v3, p1, v5, v4}, Lcom/android/carsdk/protobuf/GeneratedMessageLite$Visitor;->visitInt(ZIZI)I

    move-result p1

    iput p1, p0, Landroid/car/hardware/xpu/NgpSummaryInfoMessage$NgpSummaryInfo;->roundaboutCount_:I

    .line 1997
    iget p1, p0, Landroid/car/hardware/xpu/NgpSummaryInfoMessage$NgpSummaryInfo;->mainAndSideRoadsCount_:I

    if-eqz p1, :cond_1a

    move v3, v2

    goto :goto_1b

    :cond_1a
    move v3, v1

    :goto_1b
    iget v4, p3, Landroid/car/hardware/xpu/NgpSummaryInfoMessage$NgpSummaryInfo;->mainAndSideRoadsCount_:I

    if-eqz v4, :cond_1b

    move v5, v2

    goto :goto_1c

    :cond_1b
    move v5, v1

    :goto_1c
    invoke-interface {p2, v3, p1, v5, v4}, Lcom/android/carsdk/protobuf/GeneratedMessageLite$Visitor;->visitInt(ZIZI)I

    move-result p1

    iput p1, p0, Landroid/car/hardware/xpu/NgpSummaryInfoMessage$NgpSummaryInfo;->mainAndSideRoadsCount_:I

    .line 1999
    iget-boolean p1, p0, Landroid/car/hardware/xpu/NgpSummaryInfoMessage$NgpSummaryInfo;->zeroTakeOverFlag_:Z

    iget-boolean v3, p3, Landroid/car/hardware/xpu/NgpSummaryInfoMessage$NgpSummaryInfo;->zeroTakeOverFlag_:Z

    invoke-interface {p2, p1, p1, v3, v3}, Lcom/android/carsdk/protobuf/GeneratedMessageLite$Visitor;->visitBoolean(ZZZZ)Z

    move-result p1

    iput-boolean p1, p0, Landroid/car/hardware/xpu/NgpSummaryInfoMessage$NgpSummaryInfo;->zeroTakeOverFlag_:Z

    .line 2001
    iget p1, p0, Landroid/car/hardware/xpu/NgpSummaryInfoMessage$NgpSummaryInfo;->etcCount_:I

    if-eqz p1, :cond_1c

    move v3, v2

    goto :goto_1d

    :cond_1c
    move v3, v1

    :goto_1d
    iget v4, p3, Landroid/car/hardware/xpu/NgpSummaryInfoMessage$NgpSummaryInfo;->etcCount_:I

    if-eqz v4, :cond_1d

    move v5, v2

    goto :goto_1e

    :cond_1d
    move v5, v1

    :goto_1e
    invoke-interface {p2, v3, p1, v5, v4}, Lcom/android/carsdk/protobuf/GeneratedMessageLite$Visitor;->visitInt(ZIZI)I

    move-result p1

    iput p1, p0, Landroid/car/hardware/xpu/NgpSummaryInfoMessage$NgpSummaryInfo;->etcCount_:I

    .line 2003
    iget p1, p0, Landroid/car/hardware/xpu/NgpSummaryInfoMessage$NgpSummaryInfo;->narrowMileage_:F

    cmpl-float v3, p1, v0

    if-eqz v3, :cond_1e

    move v3, v2

    goto :goto_1f

    :cond_1e
    move v3, v1

    :goto_1f
    iget v4, p3, Landroid/car/hardware/xpu/NgpSummaryInfoMessage$NgpSummaryInfo;->narrowMileage_:F

    cmpl-float v5, v4, v0

    if-eqz v5, :cond_1f

    move v5, v2

    goto :goto_20

    :cond_1f
    move v5, v1

    :goto_20
    invoke-interface {p2, v3, p1, v5, v4}, Lcom/android/carsdk/protobuf/GeneratedMessageLite$Visitor;->visitFloat(ZFZF)F

    move-result p1

    iput p1, p0, Landroid/car/hardware/xpu/NgpSummaryInfoMessage$NgpSummaryInfo;->narrowMileage_:F

    .line 2005
    iget p1, p0, Landroid/car/hardware/xpu/NgpSummaryInfoMessage$NgpSummaryInfo;->parkMileage_:F

    cmpl-float v3, p1, v0

    if-eqz v3, :cond_20

    move v3, v2

    goto :goto_21

    :cond_20
    move v3, v1

    :goto_21
    iget v4, p3, Landroid/car/hardware/xpu/NgpSummaryInfoMessage$NgpSummaryInfo;->parkMileage_:F

    cmpl-float v5, v4, v0

    if-eqz v5, :cond_21

    move v5, v2

    goto :goto_22

    :cond_21
    move v5, v1

    :goto_22
    invoke-interface {p2, v3, p1, v5, v4}, Lcom/android/carsdk/protobuf/GeneratedMessageLite$Visitor;->visitFloat(ZFZF)F

    move-result p1

    iput p1, p0, Landroid/car/hardware/xpu/NgpSummaryInfoMessage$NgpSummaryInfo;->parkMileage_:F

    .line 2007
    iget p1, p0, Landroid/car/hardware/xpu/NgpSummaryInfoMessage$NgpSummaryInfo;->accMileageTotal_:F

    cmpl-float v3, p1, v0

    if-eqz v3, :cond_22

    move v3, v2

    goto :goto_23

    :cond_22
    move v3, v1

    :goto_23
    iget v4, p3, Landroid/car/hardware/xpu/NgpSummaryInfoMessage$NgpSummaryInfo;->accMileageTotal_:F

    cmpl-float v5, v4, v0

    if-eqz v5, :cond_23

    move v5, v2

    goto :goto_24

    :cond_23
    move v5, v1

    :goto_24
    invoke-interface {p2, v3, p1, v5, v4}, Lcom/android/carsdk/protobuf/GeneratedMessageLite$Visitor;->visitFloat(ZFZF)F

    move-result p1

    iput p1, p0, Landroid/car/hardware/xpu/NgpSummaryInfoMessage$NgpSummaryInfo;->accMileageTotal_:F

    .line 2009
    iget p1, p0, Landroid/car/hardware/xpu/NgpSummaryInfoMessage$NgpSummaryInfo;->lccMileageTotal_:F

    cmpl-float v3, p1, v0

    if-eqz v3, :cond_24

    move v3, v2

    goto :goto_25

    :cond_24
    move v3, v1

    :goto_25
    iget v4, p3, Landroid/car/hardware/xpu/NgpSummaryInfoMessage$NgpSummaryInfo;->lccMileageTotal_:F

    cmpl-float v5, v4, v0

    if-eqz v5, :cond_25

    move v5, v2

    goto :goto_26

    :cond_25
    move v5, v1

    :goto_26
    invoke-interface {p2, v3, p1, v5, v4}, Lcom/android/carsdk/protobuf/GeneratedMessageLite$Visitor;->visitFloat(ZFZF)F

    move-result p1

    iput p1, p0, Landroid/car/hardware/xpu/NgpSummaryInfoMessage$NgpSummaryInfo;->lccMileageTotal_:F

    .line 2011
    iget p1, p0, Landroid/car/hardware/xpu/NgpSummaryInfoMessage$NgpSummaryInfo;->ngpMileageTotal_:F

    cmpl-float v3, p1, v0

    if-eqz v3, :cond_26

    move v3, v2

    goto :goto_27

    :cond_26
    move v3, v1

    :goto_27
    iget p3, p3, Landroid/car/hardware/xpu/NgpSummaryInfoMessage$NgpSummaryInfo;->ngpMileageTotal_:F

    cmpl-float v0, p3, v0

    if-eqz v0, :cond_27

    move v1, v2

    :cond_27
    invoke-interface {p2, v3, p1, v1, p3}, Lcom/android/carsdk/protobuf/GeneratedMessageLite$Visitor;->visitFloat(ZFZF)F

    move-result p1

    iput p1, p0, Landroid/car/hardware/xpu/NgpSummaryInfoMessage$NgpSummaryInfo;->ngpMileageTotal_:F

    .line 2013
    sget-object p1, Lcom/android/carsdk/protobuf/GeneratedMessageLite$MergeFromVisitor;->INSTANCE:Lcom/android/carsdk/protobuf/GeneratedMessageLite$MergeFromVisitor;

    return-object p0

    .line 1971
    :pswitch_4
    new-instance p1, Landroid/car/hardware/xpu/NgpSummaryInfoMessage$NgpSummaryInfo$Builder;

    invoke-direct {p1, v0}, Landroid/car/hardware/xpu/NgpSummaryInfoMessage$NgpSummaryInfo$Builder;-><init>(Landroid/car/hardware/xpu/NgpSummaryInfoMessage$1;)V

    return-object p1

    :pswitch_5
    return-object v0

    .line 1965
    :pswitch_6
    sget-object p1, Landroid/car/hardware/xpu/NgpSummaryInfoMessage$NgpSummaryInfo;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/NgpSummaryInfoMessage$NgpSummaryInfo;

    return-object p1

    .line 1962
    :pswitch_7
    new-instance p1, Landroid/car/hardware/xpu/NgpSummaryInfoMessage$NgpSummaryInfo;

    invoke-direct {p1}, Landroid/car/hardware/xpu/NgpSummaryInfoMessage$NgpSummaryInfo;-><init>()V

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

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_13
        0x8 -> :sswitch_12
        0x10 -> :sswitch_11
        0x1d -> :sswitch_10
        0x25 -> :sswitch_f
        0x2d -> :sswitch_e
        0x30 -> :sswitch_d
        0x38 -> :sswitch_c
        0x40 -> :sswitch_b
        0x48 -> :sswitch_a
        0x50 -> :sswitch_9
        0x58 -> :sswitch_8
        0x60 -> :sswitch_7
        0x68 -> :sswitch_6
        0x70 -> :sswitch_5
        0x7d -> :sswitch_4
        0x85 -> :sswitch_3
        0x8d -> :sswitch_2
        0x95 -> :sswitch_1
        0x9d -> :sswitch_0
    .end sparse-switch
.end method

.method public getAccMileageTotal()F
    .locals 1

    .line 942
    iget v0, p0, Landroid/car/hardware/xpu/NgpSummaryInfoMessage$NgpSummaryInfo;->accMileageTotal_:F

    return v0
.end method

.method public getDetourCount()I
    .locals 1

    .line 624
    iget v0, p0, Landroid/car/hardware/xpu/NgpSummaryInfoMessage$NgpSummaryInfo;->detourCount_:I

    return v0
.end method

.method public getEtcCount()I
    .locals 1

    .line 837
    iget v0, p0, Landroid/car/hardware/xpu/NgpSummaryInfoMessage$NgpSummaryInfo;->etcCount_:I

    return v0
.end method

.method public getIntersectionPassCount()I
    .locals 1

    .line 589
    iget v0, p0, Landroid/car/hardware/xpu/NgpSummaryInfoMessage$NgpSummaryInfo;->intersectionPassCount_:I

    return v0
.end method

.method public getLaneChangeCount()I
    .locals 1

    .line 554
    iget v0, p0, Landroid/car/hardware/xpu/NgpSummaryInfoMessage$NgpSummaryInfo;->laneChangeCount_:I

    return v0
.end method

.method public getLccMileageTotal()F
    .locals 1

    .line 977
    iget v0, p0, Landroid/car/hardware/xpu/NgpSummaryInfoMessage$NgpSummaryInfo;->lccMileageTotal_:F

    return v0
.end method

.method public getMainAndSideRoadsCount()I
    .locals 1

    .line 767
    iget v0, p0, Landroid/car/hardware/xpu/NgpSummaryInfoMessage$NgpSummaryInfo;->mainAndSideRoadsCount_:I

    return v0
.end method

.method public getNarrowMileage()F
    .locals 1

    .line 872
    iget v0, p0, Landroid/car/hardware/xpu/NgpSummaryInfoMessage$NgpSummaryInfo;->narrowMileage_:F

    return v0
.end method

.method public getNgpDisplayFlag()Landroid/car/hardware/xpu/NgpSummaryInfoMessage$DisplayTrigger;
    .locals 1

    .line 400
    iget v0, p0, Landroid/car/hardware/xpu/NgpSummaryInfoMessage$NgpSummaryInfo;->ngpDisplayFlag_:I

    invoke-static {v0}, Landroid/car/hardware/xpu/NgpSummaryInfoMessage$DisplayTrigger;->forNumber(I)Landroid/car/hardware/xpu/NgpSummaryInfoMessage$DisplayTrigger;

    move-result-object v0

    if-nez v0, :cond_0

    .line 401
    sget-object v0, Landroid/car/hardware/xpu/NgpSummaryInfoMessage$DisplayTrigger;->UNRECOGNIZED:Landroid/car/hardware/xpu/NgpSummaryInfoMessage$DisplayTrigger;

    :cond_0
    return-object v0
.end method

.method public getNgpDisplayFlagValue()I
    .locals 1

    .line 390
    iget v0, p0, Landroid/car/hardware/xpu/NgpSummaryInfoMessage$NgpSummaryInfo;->ngpDisplayFlag_:I

    return v0
.end method

.method public getNgpMileage()F
    .locals 1

    .line 449
    iget v0, p0, Landroid/car/hardware/xpu/NgpSummaryInfoMessage$NgpSummaryInfo;->ngpMileage_:F

    return v0
.end method

.method public getNgpMileageRatio()F
    .locals 1

    .line 484
    iget v0, p0, Landroid/car/hardware/xpu/NgpSummaryInfoMessage$NgpSummaryInfo;->ngpMileageRatio_:F

    return v0
.end method

.method public getNgpMileageTotal()F
    .locals 1

    .line 1012
    iget v0, p0, Landroid/car/hardware/xpu/NgpSummaryInfoMessage$NgpSummaryInfo;->ngpMileageTotal_:F

    return v0
.end method

.method public getParkMileage()F
    .locals 1

    .line 907
    iget v0, p0, Landroid/car/hardware/xpu/NgpSummaryInfoMessage$NgpSummaryInfo;->parkMileage_:F

    return v0
.end method

.method public getRampCount()I
    .locals 1

    .line 659
    iget v0, p0, Landroid/car/hardware/xpu/NgpSummaryInfoMessage$NgpSummaryInfo;->rampCount_:I

    return v0
.end method

.method public getRoundaboutCount()I
    .locals 1

    .line 732
    iget v0, p0, Landroid/car/hardware/xpu/NgpSummaryInfoMessage$NgpSummaryInfo;->roundaboutCount_:I

    return v0
.end method

.method public getSerializedSize()I
    .locals 4

    .line 1099
    iget v0, p0, Landroid/car/hardware/xpu/NgpSummaryInfoMessage$NgpSummaryInfo;->memoizedSerializedSize:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    return v0

    :cond_0
    const/4 v0, 0x0

    .line 1103
    iget v1, p0, Landroid/car/hardware/xpu/NgpSummaryInfoMessage$NgpSummaryInfo;->trajectoryId_:I

    if-eqz v1, :cond_1

    const/4 v2, 0x1

    .line 1105
    invoke-static {v2, v1}, Lcom/android/carsdk/protobuf/CodedOutputStream;->computeUInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 1107
    :cond_1
    iget v1, p0, Landroid/car/hardware/xpu/NgpSummaryInfoMessage$NgpSummaryInfo;->ngpDisplayFlag_:I

    sget-object v2, Landroid/car/hardware/xpu/NgpSummaryInfoMessage$DisplayTrigger;->NO_ACTION:Landroid/car/hardware/xpu/NgpSummaryInfoMessage$DisplayTrigger;

    invoke-virtual {v2}, Landroid/car/hardware/xpu/NgpSummaryInfoMessage$DisplayTrigger;->getNumber()I

    move-result v2

    if-eq v1, v2, :cond_2

    const/4 v1, 0x2

    .line 1108
    iget v2, p0, Landroid/car/hardware/xpu/NgpSummaryInfoMessage$NgpSummaryInfo;->ngpDisplayFlag_:I

    .line 1109
    invoke-static {v1, v2}, Lcom/android/carsdk/protobuf/CodedOutputStream;->computeEnumSize(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 1111
    :cond_2
    iget v1, p0, Landroid/car/hardware/xpu/NgpSummaryInfoMessage$NgpSummaryInfo;->ngpMileage_:F

    const/4 v2, 0x0

    cmpl-float v3, v1, v2

    if-eqz v3, :cond_3

    const/4 v3, 0x3

    .line 1113
    invoke-static {v3, v1}, Lcom/android/carsdk/protobuf/CodedOutputStream;->computeFloatSize(IF)I

    move-result v1

    add-int/2addr v0, v1

    .line 1115
    :cond_3
    iget v1, p0, Landroid/car/hardware/xpu/NgpSummaryInfoMessage$NgpSummaryInfo;->ngpMileageRatio_:F

    cmpl-float v3, v1, v2

    if-eqz v3, :cond_4

    const/4 v3, 0x4

    .line 1117
    invoke-static {v3, v1}, Lcom/android/carsdk/protobuf/CodedOutputStream;->computeFloatSize(IF)I

    move-result v1

    add-int/2addr v0, v1

    .line 1119
    :cond_4
    iget v1, p0, Landroid/car/hardware/xpu/NgpSummaryInfoMessage$NgpSummaryInfo;->trajectoryDuration_:F

    cmpl-float v3, v1, v2

    if-eqz v3, :cond_5

    const/4 v3, 0x5

    .line 1121
    invoke-static {v3, v1}, Lcom/android/carsdk/protobuf/CodedOutputStream;->computeFloatSize(IF)I

    move-result v1

    add-int/2addr v0, v1

    .line 1123
    :cond_5
    iget v1, p0, Landroid/car/hardware/xpu/NgpSummaryInfoMessage$NgpSummaryInfo;->laneChangeCount_:I

    if-eqz v1, :cond_6

    const/4 v3, 0x6

    .line 1125
    invoke-static {v3, v1}, Lcom/android/carsdk/protobuf/CodedOutputStream;->computeUInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 1127
    :cond_6
    iget v1, p0, Landroid/car/hardware/xpu/NgpSummaryInfoMessage$NgpSummaryInfo;->intersectionPassCount_:I

    if-eqz v1, :cond_7

    const/4 v3, 0x7

    .line 1129
    invoke-static {v3, v1}, Lcom/android/carsdk/protobuf/CodedOutputStream;->computeUInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 1131
    :cond_7
    iget v1, p0, Landroid/car/hardware/xpu/NgpSummaryInfoMessage$NgpSummaryInfo;->detourCount_:I

    if-eqz v1, :cond_8

    const/16 v3, 0x8

    .line 1133
    invoke-static {v3, v1}, Lcom/android/carsdk/protobuf/CodedOutputStream;->computeUInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 1135
    :cond_8
    iget v1, p0, Landroid/car/hardware/xpu/NgpSummaryInfoMessage$NgpSummaryInfo;->rampCount_:I

    if-eqz v1, :cond_9

    const/16 v3, 0x9

    .line 1137
    invoke-static {v3, v1}, Lcom/android/carsdk/protobuf/CodedOutputStream;->computeUInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 1139
    :cond_9
    iget v1, p0, Landroid/car/hardware/xpu/NgpSummaryInfoMessage$NgpSummaryInfo;->uTurnCount_:I

    if-eqz v1, :cond_a

    const/16 v3, 0xa

    .line 1141
    invoke-static {v3, v1}, Lcom/android/carsdk/protobuf/CodedOutputStream;->computeUInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 1143
    :cond_a
    iget v1, p0, Landroid/car/hardware/xpu/NgpSummaryInfoMessage$NgpSummaryInfo;->roundaboutCount_:I

    if-eqz v1, :cond_b

    const/16 v3, 0xb

    .line 1145
    invoke-static {v3, v1}, Lcom/android/carsdk/protobuf/CodedOutputStream;->computeUInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 1147
    :cond_b
    iget v1, p0, Landroid/car/hardware/xpu/NgpSummaryInfoMessage$NgpSummaryInfo;->mainAndSideRoadsCount_:I

    if-eqz v1, :cond_c

    const/16 v3, 0xc

    .line 1149
    invoke-static {v3, v1}, Lcom/android/carsdk/protobuf/CodedOutputStream;->computeUInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 1151
    :cond_c
    iget-boolean v1, p0, Landroid/car/hardware/xpu/NgpSummaryInfoMessage$NgpSummaryInfo;->zeroTakeOverFlag_:Z

    if-eqz v1, :cond_d

    const/16 v3, 0xd

    .line 1153
    invoke-static {v3, v1}, Lcom/android/carsdk/protobuf/CodedOutputStream;->computeBoolSize(IZ)I

    move-result v1

    add-int/2addr v0, v1

    .line 1155
    :cond_d
    iget v1, p0, Landroid/car/hardware/xpu/NgpSummaryInfoMessage$NgpSummaryInfo;->etcCount_:I

    if-eqz v1, :cond_e

    const/16 v3, 0xe

    .line 1157
    invoke-static {v3, v1}, Lcom/android/carsdk/protobuf/CodedOutputStream;->computeUInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 1159
    :cond_e
    iget v1, p0, Landroid/car/hardware/xpu/NgpSummaryInfoMessage$NgpSummaryInfo;->narrowMileage_:F

    cmpl-float v3, v1, v2

    if-eqz v3, :cond_f

    const/16 v3, 0xf

    .line 1161
    invoke-static {v3, v1}, Lcom/android/carsdk/protobuf/CodedOutputStream;->computeFloatSize(IF)I

    move-result v1

    add-int/2addr v0, v1

    .line 1163
    :cond_f
    iget v1, p0, Landroid/car/hardware/xpu/NgpSummaryInfoMessage$NgpSummaryInfo;->parkMileage_:F

    cmpl-float v3, v1, v2

    if-eqz v3, :cond_10

    const/16 v3, 0x10

    .line 1165
    invoke-static {v3, v1}, Lcom/android/carsdk/protobuf/CodedOutputStream;->computeFloatSize(IF)I

    move-result v1

    add-int/2addr v0, v1

    .line 1167
    :cond_10
    iget v1, p0, Landroid/car/hardware/xpu/NgpSummaryInfoMessage$NgpSummaryInfo;->accMileageTotal_:F

    cmpl-float v3, v1, v2

    if-eqz v3, :cond_11

    const/16 v3, 0x11

    .line 1169
    invoke-static {v3, v1}, Lcom/android/carsdk/protobuf/CodedOutputStream;->computeFloatSize(IF)I

    move-result v1

    add-int/2addr v0, v1

    .line 1171
    :cond_11
    iget v1, p0, Landroid/car/hardware/xpu/NgpSummaryInfoMessage$NgpSummaryInfo;->lccMileageTotal_:F

    cmpl-float v3, v1, v2

    if-eqz v3, :cond_12

    const/16 v3, 0x12

    .line 1173
    invoke-static {v3, v1}, Lcom/android/carsdk/protobuf/CodedOutputStream;->computeFloatSize(IF)I

    move-result v1

    add-int/2addr v0, v1

    .line 1175
    :cond_12
    iget v1, p0, Landroid/car/hardware/xpu/NgpSummaryInfoMessage$NgpSummaryInfo;->ngpMileageTotal_:F

    cmpl-float v2, v1, v2

    if-eqz v2, :cond_13

    const/16 v2, 0x13

    .line 1177
    invoke-static {v2, v1}, Lcom/android/carsdk/protobuf/CodedOutputStream;->computeFloatSize(IF)I

    move-result v1

    add-int/2addr v0, v1

    .line 1179
    :cond_13
    iput v0, p0, Landroid/car/hardware/xpu/NgpSummaryInfoMessage$NgpSummaryInfo;->memoizedSerializedSize:I

    return v0
.end method

.method public getTrajectoryDuration()F
    .locals 1

    .line 519
    iget v0, p0, Landroid/car/hardware/xpu/NgpSummaryInfoMessage$NgpSummaryInfo;->trajectoryDuration_:F

    return v0
.end method

.method public getTrajectoryId()I
    .locals 1

    .line 355
    iget v0, p0, Landroid/car/hardware/xpu/NgpSummaryInfoMessage$NgpSummaryInfo;->trajectoryId_:I

    return v0
.end method

.method public getUTurnCount()I
    .locals 1

    .line 695
    iget v0, p0, Landroid/car/hardware/xpu/NgpSummaryInfoMessage$NgpSummaryInfo;->uTurnCount_:I

    return v0
.end method

.method public getZeroTakeOverFlag()Z
    .locals 1

    .line 802
    iget-boolean v0, p0, Landroid/car/hardware/xpu/NgpSummaryInfoMessage$NgpSummaryInfo;->zeroTakeOverFlag_:Z

    return v0
.end method

.method public writeTo(Lcom/android/carsdk/protobuf/CodedOutputStream;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1039
    iget v0, p0, Landroid/car/hardware/xpu/NgpSummaryInfoMessage$NgpSummaryInfo;->trajectoryId_:I

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    .line 1040
    invoke-virtual {p1, v1, v0}, Lcom/android/carsdk/protobuf/CodedOutputStream;->writeUInt32(II)V

    .line 1042
    :cond_0
    iget v0, p0, Landroid/car/hardware/xpu/NgpSummaryInfoMessage$NgpSummaryInfo;->ngpDisplayFlag_:I

    sget-object v1, Landroid/car/hardware/xpu/NgpSummaryInfoMessage$DisplayTrigger;->NO_ACTION:Landroid/car/hardware/xpu/NgpSummaryInfoMessage$DisplayTrigger;

    invoke-virtual {v1}, Landroid/car/hardware/xpu/NgpSummaryInfoMessage$DisplayTrigger;->getNumber()I

    move-result v1

    if-eq v0, v1, :cond_1

    const/4 v0, 0x2

    .line 1043
    iget v1, p0, Landroid/car/hardware/xpu/NgpSummaryInfoMessage$NgpSummaryInfo;->ngpDisplayFlag_:I

    invoke-virtual {p1, v0, v1}, Lcom/android/carsdk/protobuf/CodedOutputStream;->writeEnum(II)V

    .line 1045
    :cond_1
    iget v0, p0, Landroid/car/hardware/xpu/NgpSummaryInfoMessage$NgpSummaryInfo;->ngpMileage_:F

    const/4 v1, 0x0

    cmpl-float v2, v0, v1

    if-eqz v2, :cond_2

    const/4 v2, 0x3

    .line 1046
    invoke-virtual {p1, v2, v0}, Lcom/android/carsdk/protobuf/CodedOutputStream;->writeFloat(IF)V

    .line 1048
    :cond_2
    iget v0, p0, Landroid/car/hardware/xpu/NgpSummaryInfoMessage$NgpSummaryInfo;->ngpMileageRatio_:F

    cmpl-float v2, v0, v1

    if-eqz v2, :cond_3

    const/4 v2, 0x4

    .line 1049
    invoke-virtual {p1, v2, v0}, Lcom/android/carsdk/protobuf/CodedOutputStream;->writeFloat(IF)V

    .line 1051
    :cond_3
    iget v0, p0, Landroid/car/hardware/xpu/NgpSummaryInfoMessage$NgpSummaryInfo;->trajectoryDuration_:F

    cmpl-float v2, v0, v1

    if-eqz v2, :cond_4

    const/4 v2, 0x5

    .line 1052
    invoke-virtual {p1, v2, v0}, Lcom/android/carsdk/protobuf/CodedOutputStream;->writeFloat(IF)V

    .line 1054
    :cond_4
    iget v0, p0, Landroid/car/hardware/xpu/NgpSummaryInfoMessage$NgpSummaryInfo;->laneChangeCount_:I

    if-eqz v0, :cond_5

    const/4 v2, 0x6

    .line 1055
    invoke-virtual {p1, v2, v0}, Lcom/android/carsdk/protobuf/CodedOutputStream;->writeUInt32(II)V

    .line 1057
    :cond_5
    iget v0, p0, Landroid/car/hardware/xpu/NgpSummaryInfoMessage$NgpSummaryInfo;->intersectionPassCount_:I

    if-eqz v0, :cond_6

    const/4 v2, 0x7

    .line 1058
    invoke-virtual {p1, v2, v0}, Lcom/android/carsdk/protobuf/CodedOutputStream;->writeUInt32(II)V

    .line 1060
    :cond_6
    iget v0, p0, Landroid/car/hardware/xpu/NgpSummaryInfoMessage$NgpSummaryInfo;->detourCount_:I

    if-eqz v0, :cond_7

    const/16 v2, 0x8

    .line 1061
    invoke-virtual {p1, v2, v0}, Lcom/android/carsdk/protobuf/CodedOutputStream;->writeUInt32(II)V

    .line 1063
    :cond_7
    iget v0, p0, Landroid/car/hardware/xpu/NgpSummaryInfoMessage$NgpSummaryInfo;->rampCount_:I

    if-eqz v0, :cond_8

    const/16 v2, 0x9

    .line 1064
    invoke-virtual {p1, v2, v0}, Lcom/android/carsdk/protobuf/CodedOutputStream;->writeUInt32(II)V

    .line 1066
    :cond_8
    iget v0, p0, Landroid/car/hardware/xpu/NgpSummaryInfoMessage$NgpSummaryInfo;->uTurnCount_:I

    if-eqz v0, :cond_9

    const/16 v2, 0xa

    .line 1067
    invoke-virtual {p1, v2, v0}, Lcom/android/carsdk/protobuf/CodedOutputStream;->writeUInt32(II)V

    .line 1069
    :cond_9
    iget v0, p0, Landroid/car/hardware/xpu/NgpSummaryInfoMessage$NgpSummaryInfo;->roundaboutCount_:I

    if-eqz v0, :cond_a

    const/16 v2, 0xb

    .line 1070
    invoke-virtual {p1, v2, v0}, Lcom/android/carsdk/protobuf/CodedOutputStream;->writeUInt32(II)V

    .line 1072
    :cond_a
    iget v0, p0, Landroid/car/hardware/xpu/NgpSummaryInfoMessage$NgpSummaryInfo;->mainAndSideRoadsCount_:I

    if-eqz v0, :cond_b

    const/16 v2, 0xc

    .line 1073
    invoke-virtual {p1, v2, v0}, Lcom/android/carsdk/protobuf/CodedOutputStream;->writeUInt32(II)V

    .line 1075
    :cond_b
    iget-boolean v0, p0, Landroid/car/hardware/xpu/NgpSummaryInfoMessage$NgpSummaryInfo;->zeroTakeOverFlag_:Z

    if-eqz v0, :cond_c

    const/16 v2, 0xd

    .line 1076
    invoke-virtual {p1, v2, v0}, Lcom/android/carsdk/protobuf/CodedOutputStream;->writeBool(IZ)V

    .line 1078
    :cond_c
    iget v0, p0, Landroid/car/hardware/xpu/NgpSummaryInfoMessage$NgpSummaryInfo;->etcCount_:I

    if-eqz v0, :cond_d

    const/16 v2, 0xe

    .line 1079
    invoke-virtual {p1, v2, v0}, Lcom/android/carsdk/protobuf/CodedOutputStream;->writeUInt32(II)V

    .line 1081
    :cond_d
    iget v0, p0, Landroid/car/hardware/xpu/NgpSummaryInfoMessage$NgpSummaryInfo;->narrowMileage_:F

    cmpl-float v2, v0, v1

    if-eqz v2, :cond_e

    const/16 v2, 0xf

    .line 1082
    invoke-virtual {p1, v2, v0}, Lcom/android/carsdk/protobuf/CodedOutputStream;->writeFloat(IF)V

    .line 1084
    :cond_e
    iget v0, p0, Landroid/car/hardware/xpu/NgpSummaryInfoMessage$NgpSummaryInfo;->parkMileage_:F

    cmpl-float v2, v0, v1

    if-eqz v2, :cond_f

    const/16 v2, 0x10

    .line 1085
    invoke-virtual {p1, v2, v0}, Lcom/android/carsdk/protobuf/CodedOutputStream;->writeFloat(IF)V

    .line 1087
    :cond_f
    iget v0, p0, Landroid/car/hardware/xpu/NgpSummaryInfoMessage$NgpSummaryInfo;->accMileageTotal_:F

    cmpl-float v2, v0, v1

    if-eqz v2, :cond_10

    const/16 v2, 0x11

    .line 1088
    invoke-virtual {p1, v2, v0}, Lcom/android/carsdk/protobuf/CodedOutputStream;->writeFloat(IF)V

    .line 1090
    :cond_10
    iget v0, p0, Landroid/car/hardware/xpu/NgpSummaryInfoMessage$NgpSummaryInfo;->lccMileageTotal_:F

    cmpl-float v2, v0, v1

    if-eqz v2, :cond_11

    const/16 v2, 0x12

    .line 1091
    invoke-virtual {p1, v2, v0}, Lcom/android/carsdk/protobuf/CodedOutputStream;->writeFloat(IF)V

    .line 1093
    :cond_11
    iget v0, p0, Landroid/car/hardware/xpu/NgpSummaryInfoMessage$NgpSummaryInfo;->ngpMileageTotal_:F

    cmpl-float v1, v0, v1

    if-eqz v1, :cond_12

    const/16 v1, 0x13

    .line 1094
    invoke-virtual {p1, v1, v0}, Lcom/android/carsdk/protobuf/CodedOutputStream;->writeFloat(IF)V

    :cond_12
    return-void
.end method
