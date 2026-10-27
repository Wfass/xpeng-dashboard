.class public final Landroid/car/hardware/xpu/XpuProtoMessage$RoadFacility;
.super Lcom/android/carsdk/protobuf/GeneratedMessageLite;
.source "XpuProtoMessage.java"

# interfaces
.implements Landroid/car/hardware/xpu/XpuProtoMessage$RoadFacilityOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/car/hardware/xpu/XpuProtoMessage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "RoadFacility"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/car/hardware/xpu/XpuProtoMessage$RoadFacility$Builder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/carsdk/protobuf/GeneratedMessageLite<",
        "Landroid/car/hardware/xpu/XpuProtoMessage$RoadFacility;",
        "Landroid/car/hardware/xpu/XpuProtoMessage$RoadFacility$Builder;",
        ">;",
        "Landroid/car/hardware/xpu/XpuProtoMessage$RoadFacilityOrBuilder;"
    }
.end annotation


# static fields
.field private static final DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuProtoMessage$RoadFacility;

.field public static final DIST_TO_END_FIELD_NUMBER:I = 0x5

.field public static final LANE_NUM_FIELD_NUMBER:I = 0x7

.field public static final LAT_FIELD_NUMBER:I = 0x3

.field public static final LON_FIELD_NUMBER:I = 0x2

.field private static volatile PARSER:Lcom/android/carsdk/protobuf/Parser; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/carsdk/protobuf/Parser<",
            "Landroid/car/hardware/xpu/XpuProtoMessage$RoadFacility;",
            ">;"
        }
    .end annotation
.end field

.field public static final SPEED_LIMITS_FIELD_NUMBER:I = 0x4

.field public static final TIME_RANGES_FIELD_NUMBER:I = 0x8

.field public static final TYPE_FIELD_NUMBER:I = 0x1

.field public static final VALID_LANE_FIELD_NUMBER:I = 0x6


# instance fields
.field private bitField0_:I

.field private distToEnd_:I

.field private laneNum_:I

.field private lat_:F

.field private lon_:F

.field private speedLimits_:Lcom/android/carsdk/protobuf/Internal$IntList;

.field private timeRanges_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/carsdk/protobuf/Internal$ProtobufList<",
            "Landroid/car/hardware/xpu/XpuProtoMessage$TimeRange;",
            ">;"
        }
    .end annotation
.end field

.field private type_:I

.field private validLane_:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 6117
    new-instance v0, Landroid/car/hardware/xpu/XpuProtoMessage$RoadFacility;

    invoke-direct {v0}, Landroid/car/hardware/xpu/XpuProtoMessage$RoadFacility;-><init>()V

    sput-object v0, Landroid/car/hardware/xpu/XpuProtoMessage$RoadFacility;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuProtoMessage$RoadFacility;

    .line 6118
    invoke-virtual {v0}, Landroid/car/hardware/xpu/XpuProtoMessage$RoadFacility;->makeImmutable()V

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .line 5190
    invoke-direct {p0}, Lcom/android/carsdk/protobuf/GeneratedMessageLite;-><init>()V

    const/4 v0, 0x0

    .line 5191
    iput v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$RoadFacility;->type_:I

    const/4 v1, 0x0

    .line 5192
    iput v1, p0, Landroid/car/hardware/xpu/XpuProtoMessage$RoadFacility;->lon_:F

    .line 5193
    iput v1, p0, Landroid/car/hardware/xpu/XpuProtoMessage$RoadFacility;->lat_:F

    .line 5194
    invoke-static {}, Landroid/car/hardware/xpu/XpuProtoMessage$RoadFacility;->emptyIntList()Lcom/android/carsdk/protobuf/Internal$IntList;

    move-result-object v1

    iput-object v1, p0, Landroid/car/hardware/xpu/XpuProtoMessage$RoadFacility;->speedLimits_:Lcom/android/carsdk/protobuf/Internal$IntList;

    .line 5195
    iput v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$RoadFacility;->distToEnd_:I

    .line 5196
    iput v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$RoadFacility;->validLane_:I

    .line 5197
    iput v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$RoadFacility;->laneNum_:I

    .line 5198
    invoke-static {}, Landroid/car/hardware/xpu/XpuProtoMessage$RoadFacility;->emptyProtobufList()Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    move-result-object v0

    iput-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$RoadFacility;->timeRanges_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    return-void
.end method

.method static synthetic access$10000(Landroid/car/hardware/xpu/XpuProtoMessage$RoadFacility;ILandroid/car/hardware/xpu/XpuProtoMessage$TimeRange;)V
    .locals 0

    .line 5185
    invoke-direct {p0, p1, p2}, Landroid/car/hardware/xpu/XpuProtoMessage$RoadFacility;->setTimeRanges(ILandroid/car/hardware/xpu/XpuProtoMessage$TimeRange;)V

    return-void
.end method

.method static synthetic access$10100(Landroid/car/hardware/xpu/XpuProtoMessage$RoadFacility;ILandroid/car/hardware/xpu/XpuProtoMessage$TimeRange$Builder;)V
    .locals 0

    .line 5185
    invoke-direct {p0, p1, p2}, Landroid/car/hardware/xpu/XpuProtoMessage$RoadFacility;->setTimeRanges(ILandroid/car/hardware/xpu/XpuProtoMessage$TimeRange$Builder;)V

    return-void
.end method

.method static synthetic access$10200(Landroid/car/hardware/xpu/XpuProtoMessage$RoadFacility;Landroid/car/hardware/xpu/XpuProtoMessage$TimeRange;)V
    .locals 0

    .line 5185
    invoke-direct {p0, p1}, Landroid/car/hardware/xpu/XpuProtoMessage$RoadFacility;->addTimeRanges(Landroid/car/hardware/xpu/XpuProtoMessage$TimeRange;)V

    return-void
.end method

.method static synthetic access$10300(Landroid/car/hardware/xpu/XpuProtoMessage$RoadFacility;ILandroid/car/hardware/xpu/XpuProtoMessage$TimeRange;)V
    .locals 0

    .line 5185
    invoke-direct {p0, p1, p2}, Landroid/car/hardware/xpu/XpuProtoMessage$RoadFacility;->addTimeRanges(ILandroid/car/hardware/xpu/XpuProtoMessage$TimeRange;)V

    return-void
.end method

.method static synthetic access$10400(Landroid/car/hardware/xpu/XpuProtoMessage$RoadFacility;Landroid/car/hardware/xpu/XpuProtoMessage$TimeRange$Builder;)V
    .locals 0

    .line 5185
    invoke-direct {p0, p1}, Landroid/car/hardware/xpu/XpuProtoMessage$RoadFacility;->addTimeRanges(Landroid/car/hardware/xpu/XpuProtoMessage$TimeRange$Builder;)V

    return-void
.end method

.method static synthetic access$10500(Landroid/car/hardware/xpu/XpuProtoMessage$RoadFacility;ILandroid/car/hardware/xpu/XpuProtoMessage$TimeRange$Builder;)V
    .locals 0

    .line 5185
    invoke-direct {p0, p1, p2}, Landroid/car/hardware/xpu/XpuProtoMessage$RoadFacility;->addTimeRanges(ILandroid/car/hardware/xpu/XpuProtoMessage$TimeRange$Builder;)V

    return-void
.end method

.method static synthetic access$10600(Landroid/car/hardware/xpu/XpuProtoMessage$RoadFacility;Ljava/lang/Iterable;)V
    .locals 0

    .line 5185
    invoke-direct {p0, p1}, Landroid/car/hardware/xpu/XpuProtoMessage$RoadFacility;->addAllTimeRanges(Ljava/lang/Iterable;)V

    return-void
.end method

.method static synthetic access$10700(Landroid/car/hardware/xpu/XpuProtoMessage$RoadFacility;)V
    .locals 0

    .line 5185
    invoke-direct {p0}, Landroid/car/hardware/xpu/XpuProtoMessage$RoadFacility;->clearTimeRanges()V

    return-void
.end method

.method static synthetic access$10800(Landroid/car/hardware/xpu/XpuProtoMessage$RoadFacility;I)V
    .locals 0

    .line 5185
    invoke-direct {p0, p1}, Landroid/car/hardware/xpu/XpuProtoMessage$RoadFacility;->removeTimeRanges(I)V

    return-void
.end method

.method static synthetic access$8300()Landroid/car/hardware/xpu/XpuProtoMessage$RoadFacility;
    .locals 1

    .line 5185
    sget-object v0, Landroid/car/hardware/xpu/XpuProtoMessage$RoadFacility;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuProtoMessage$RoadFacility;

    return-object v0
.end method

.method static synthetic access$8400(Landroid/car/hardware/xpu/XpuProtoMessage$RoadFacility;I)V
    .locals 0

    .line 5185
    invoke-direct {p0, p1}, Landroid/car/hardware/xpu/XpuProtoMessage$RoadFacility;->setType(I)V

    return-void
.end method

.method static synthetic access$8500(Landroid/car/hardware/xpu/XpuProtoMessage$RoadFacility;)V
    .locals 0

    .line 5185
    invoke-direct {p0}, Landroid/car/hardware/xpu/XpuProtoMessage$RoadFacility;->clearType()V

    return-void
.end method

.method static synthetic access$8600(Landroid/car/hardware/xpu/XpuProtoMessage$RoadFacility;F)V
    .locals 0

    .line 5185
    invoke-direct {p0, p1}, Landroid/car/hardware/xpu/XpuProtoMessage$RoadFacility;->setLon(F)V

    return-void
.end method

.method static synthetic access$8700(Landroid/car/hardware/xpu/XpuProtoMessage$RoadFacility;)V
    .locals 0

    .line 5185
    invoke-direct {p0}, Landroid/car/hardware/xpu/XpuProtoMessage$RoadFacility;->clearLon()V

    return-void
.end method

.method static synthetic access$8800(Landroid/car/hardware/xpu/XpuProtoMessage$RoadFacility;F)V
    .locals 0

    .line 5185
    invoke-direct {p0, p1}, Landroid/car/hardware/xpu/XpuProtoMessage$RoadFacility;->setLat(F)V

    return-void
.end method

.method static synthetic access$8900(Landroid/car/hardware/xpu/XpuProtoMessage$RoadFacility;)V
    .locals 0

    .line 5185
    invoke-direct {p0}, Landroid/car/hardware/xpu/XpuProtoMessage$RoadFacility;->clearLat()V

    return-void
.end method

.method static synthetic access$9000(Landroid/car/hardware/xpu/XpuProtoMessage$RoadFacility;II)V
    .locals 0

    .line 5185
    invoke-direct {p0, p1, p2}, Landroid/car/hardware/xpu/XpuProtoMessage$RoadFacility;->setSpeedLimits(II)V

    return-void
.end method

.method static synthetic access$9100(Landroid/car/hardware/xpu/XpuProtoMessage$RoadFacility;I)V
    .locals 0

    .line 5185
    invoke-direct {p0, p1}, Landroid/car/hardware/xpu/XpuProtoMessage$RoadFacility;->addSpeedLimits(I)V

    return-void
.end method

.method static synthetic access$9200(Landroid/car/hardware/xpu/XpuProtoMessage$RoadFacility;Ljava/lang/Iterable;)V
    .locals 0

    .line 5185
    invoke-direct {p0, p1}, Landroid/car/hardware/xpu/XpuProtoMessage$RoadFacility;->addAllSpeedLimits(Ljava/lang/Iterable;)V

    return-void
.end method

.method static synthetic access$9300(Landroid/car/hardware/xpu/XpuProtoMessage$RoadFacility;)V
    .locals 0

    .line 5185
    invoke-direct {p0}, Landroid/car/hardware/xpu/XpuProtoMessage$RoadFacility;->clearSpeedLimits()V

    return-void
.end method

.method static synthetic access$9400(Landroid/car/hardware/xpu/XpuProtoMessage$RoadFacility;I)V
    .locals 0

    .line 5185
    invoke-direct {p0, p1}, Landroid/car/hardware/xpu/XpuProtoMessage$RoadFacility;->setDistToEnd(I)V

    return-void
.end method

.method static synthetic access$9500(Landroid/car/hardware/xpu/XpuProtoMessage$RoadFacility;)V
    .locals 0

    .line 5185
    invoke-direct {p0}, Landroid/car/hardware/xpu/XpuProtoMessage$RoadFacility;->clearDistToEnd()V

    return-void
.end method

.method static synthetic access$9600(Landroid/car/hardware/xpu/XpuProtoMessage$RoadFacility;I)V
    .locals 0

    .line 5185
    invoke-direct {p0, p1}, Landroid/car/hardware/xpu/XpuProtoMessage$RoadFacility;->setValidLane(I)V

    return-void
.end method

.method static synthetic access$9700(Landroid/car/hardware/xpu/XpuProtoMessage$RoadFacility;)V
    .locals 0

    .line 5185
    invoke-direct {p0}, Landroid/car/hardware/xpu/XpuProtoMessage$RoadFacility;->clearValidLane()V

    return-void
.end method

.method static synthetic access$9800(Landroid/car/hardware/xpu/XpuProtoMessage$RoadFacility;I)V
    .locals 0

    .line 5185
    invoke-direct {p0, p1}, Landroid/car/hardware/xpu/XpuProtoMessage$RoadFacility;->setLaneNum(I)V

    return-void
.end method

.method static synthetic access$9900(Landroid/car/hardware/xpu/XpuProtoMessage$RoadFacility;)V
    .locals 0

    .line 5185
    invoke-direct {p0}, Landroid/car/hardware/xpu/XpuProtoMessage$RoadFacility;->clearLaneNum()V

    return-void
.end method

.method private addAllSpeedLimits(Ljava/lang/Iterable;)V
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

    .line 5317
    invoke-direct {p0}, Landroid/car/hardware/xpu/XpuProtoMessage$RoadFacility;->ensureSpeedLimitsIsMutable()V

    .line 5318
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$RoadFacility;->speedLimits_:Lcom/android/carsdk/protobuf/Internal$IntList;

    invoke-static {p1, v0}, Lcom/android/carsdk/protobuf/AbstractMessageLite;->addAll(Ljava/lang/Iterable;Ljava/util/Collection;)V

    return-void
.end method

.method private addAllTimeRanges(Ljava/lang/Iterable;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Landroid/car/hardware/xpu/XpuProtoMessage$TimeRange;",
            ">;)V"
        }
    .end annotation

    .line 5499
    invoke-direct {p0}, Landroid/car/hardware/xpu/XpuProtoMessage$RoadFacility;->ensureTimeRangesIsMutable()V

    .line 5500
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$RoadFacility;->timeRanges_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    invoke-static {p1, v0}, Lcom/android/carsdk/protobuf/AbstractMessageLite;->addAll(Ljava/lang/Iterable;Ljava/util/Collection;)V

    return-void
.end method

.method private addSpeedLimits(I)V
    .locals 1

    .line 5309
    invoke-direct {p0}, Landroid/car/hardware/xpu/XpuProtoMessage$RoadFacility;->ensureSpeedLimitsIsMutable()V

    .line 5310
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$RoadFacility;->speedLimits_:Lcom/android/carsdk/protobuf/Internal$IntList;

    invoke-interface {v0, p1}, Lcom/android/carsdk/protobuf/Internal$IntList;->addInt(I)V

    return-void
.end method

.method private addTimeRanges(ILandroid/car/hardware/xpu/XpuProtoMessage$TimeRange$Builder;)V
    .locals 1

    .line 5491
    invoke-direct {p0}, Landroid/car/hardware/xpu/XpuProtoMessage$RoadFacility;->ensureTimeRangesIsMutable()V

    .line 5492
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$RoadFacility;->timeRanges_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    invoke-virtual {p2}, Landroid/car/hardware/xpu/XpuProtoMessage$TimeRange$Builder;->build()Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object p2

    check-cast p2, Landroid/car/hardware/xpu/XpuProtoMessage$TimeRange;

    invoke-interface {v0, p1, p2}, Lcom/android/carsdk/protobuf/Internal$ProtobufList;->add(ILjava/lang/Object;)V

    return-void
.end method

.method private addTimeRanges(ILandroid/car/hardware/xpu/XpuProtoMessage$TimeRange;)V
    .locals 1

    .line 5473
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 5475
    invoke-direct {p0}, Landroid/car/hardware/xpu/XpuProtoMessage$RoadFacility;->ensureTimeRangesIsMutable()V

    .line 5476
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$RoadFacility;->timeRanges_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1, p2}, Lcom/android/carsdk/protobuf/Internal$ProtobufList;->add(ILjava/lang/Object;)V

    return-void
.end method

.method private addTimeRanges(Landroid/car/hardware/xpu/XpuProtoMessage$TimeRange$Builder;)V
    .locals 1

    .line 5483
    invoke-direct {p0}, Landroid/car/hardware/xpu/XpuProtoMessage$RoadFacility;->ensureTimeRangesIsMutable()V

    .line 5484
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$RoadFacility;->timeRanges_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    invoke-virtual {p1}, Landroid/car/hardware/xpu/XpuProtoMessage$TimeRange$Builder;->build()Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Landroid/car/hardware/xpu/XpuProtoMessage$TimeRange;

    invoke-interface {v0, p1}, Lcom/android/carsdk/protobuf/Internal$ProtobufList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private addTimeRanges(Landroid/car/hardware/xpu/XpuProtoMessage$TimeRange;)V
    .locals 1

    .line 5462
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 5464
    invoke-direct {p0}, Landroid/car/hardware/xpu/XpuProtoMessage$RoadFacility;->ensureTimeRangesIsMutable()V

    .line 5465
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$RoadFacility;->timeRanges_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1}, Lcom/android/carsdk/protobuf/Internal$ProtobufList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private clearDistToEnd()V
    .locals 1

    const/4 v0, 0x0

    .line 5348
    iput v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$RoadFacility;->distToEnd_:I

    return-void
.end method

.method private clearLaneNum()V
    .locals 1

    const/4 v0, 0x0

    .line 5394
    iput v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$RoadFacility;->laneNum_:I

    return-void
.end method

.method private clearLat()V
    .locals 1

    const/4 v0, 0x0

    .line 5267
    iput v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$RoadFacility;->lat_:F

    return-void
.end method

.method private clearLon()V
    .locals 1

    const/4 v0, 0x0

    .line 5244
    iput v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$RoadFacility;->lon_:F

    return-void
.end method

.method private clearSpeedLimits()V
    .locals 1

    .line 5325
    invoke-static {}, Landroid/car/hardware/xpu/XpuProtoMessage$RoadFacility;->emptyIntList()Lcom/android/carsdk/protobuf/Internal$IntList;

    move-result-object v0

    iput-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$RoadFacility;->speedLimits_:Lcom/android/carsdk/protobuf/Internal$IntList;

    return-void
.end method

.method private clearTimeRanges()V
    .locals 1

    .line 5507
    invoke-static {}, Landroid/car/hardware/xpu/XpuProtoMessage$RoadFacility;->emptyProtobufList()Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    move-result-object v0

    iput-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$RoadFacility;->timeRanges_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    return-void
.end method

.method private clearType()V
    .locals 1

    const/4 v0, 0x0

    .line 5221
    iput v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$RoadFacility;->type_:I

    return-void
.end method

.method private clearValidLane()V
    .locals 1

    const/4 v0, 0x0

    .line 5371
    iput v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$RoadFacility;->validLane_:I

    return-void
.end method

.method private ensureSpeedLimitsIsMutable()V
    .locals 1

    .line 5292
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$RoadFacility;->speedLimits_:Lcom/android/carsdk/protobuf/Internal$IntList;

    invoke-interface {v0}, Lcom/android/carsdk/protobuf/Internal$IntList;->isModifiable()Z

    move-result v0

    if-nez v0, :cond_0

    .line 5293
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$RoadFacility;->speedLimits_:Lcom/android/carsdk/protobuf/Internal$IntList;

    .line 5294
    invoke-static {v0}, Lcom/android/carsdk/protobuf/GeneratedMessageLite;->mutableCopy(Lcom/android/carsdk/protobuf/Internal$IntList;)Lcom/android/carsdk/protobuf/Internal$IntList;

    move-result-object v0

    iput-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$RoadFacility;->speedLimits_:Lcom/android/carsdk/protobuf/Internal$IntList;

    :cond_0
    return-void
.end method

.method private ensureTimeRangesIsMutable()V
    .locals 1

    .line 5432
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$RoadFacility;->timeRanges_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    invoke-interface {v0}, Lcom/android/carsdk/protobuf/Internal$ProtobufList;->isModifiable()Z

    move-result v0

    if-nez v0, :cond_0

    .line 5433
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$RoadFacility;->timeRanges_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    .line 5434
    invoke-static {v0}, Lcom/android/carsdk/protobuf/GeneratedMessageLite;->mutableCopy(Lcom/android/carsdk/protobuf/Internal$ProtobufList;)Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    move-result-object v0

    iput-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$RoadFacility;->timeRanges_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    :cond_0
    return-void
.end method

.method public static getDefaultInstance()Landroid/car/hardware/xpu/XpuProtoMessage$RoadFacility;
    .locals 1

    .line 6122
    sget-object v0, Landroid/car/hardware/xpu/XpuProtoMessage$RoadFacility;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuProtoMessage$RoadFacility;

    return-object v0
.end method

.method public static newBuilder()Landroid/car/hardware/xpu/XpuProtoMessage$RoadFacility$Builder;
    .locals 1

    .line 5654
    sget-object v0, Landroid/car/hardware/xpu/XpuProtoMessage$RoadFacility;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuProtoMessage$RoadFacility;

    invoke-virtual {v0}, Landroid/car/hardware/xpu/XpuProtoMessage$RoadFacility;->toBuilder()Lcom/android/carsdk/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Landroid/car/hardware/xpu/XpuProtoMessage$RoadFacility$Builder;

    return-object v0
.end method

.method public static newBuilder(Landroid/car/hardware/xpu/XpuProtoMessage$RoadFacility;)Landroid/car/hardware/xpu/XpuProtoMessage$RoadFacility$Builder;
    .locals 1

    .line 5657
    sget-object v0, Landroid/car/hardware/xpu/XpuProtoMessage$RoadFacility;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuProtoMessage$RoadFacility;

    invoke-virtual {v0}, Landroid/car/hardware/xpu/XpuProtoMessage$RoadFacility;->toBuilder()Lcom/android/carsdk/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Landroid/car/hardware/xpu/XpuProtoMessage$RoadFacility$Builder;

    invoke-virtual {v0, p0}, Landroid/car/hardware/xpu/XpuProtoMessage$RoadFacility$Builder;->mergeFrom(Lcom/android/carsdk/protobuf/GeneratedMessageLite;)Lcom/android/carsdk/protobuf/GeneratedMessageLite$Builder;

    move-result-object p0

    check-cast p0, Landroid/car/hardware/xpu/XpuProtoMessage$RoadFacility$Builder;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Landroid/car/hardware/xpu/XpuProtoMessage$RoadFacility;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 5631
    sget-object v0, Landroid/car/hardware/xpu/XpuProtoMessage$RoadFacility;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuProtoMessage$RoadFacility;

    invoke-static {v0, p0}, Landroid/car/hardware/xpu/XpuProtoMessage$RoadFacility;->parseDelimitedFrom(Lcom/android/carsdk/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Landroid/car/hardware/xpu/XpuProtoMessage$RoadFacility;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/android/carsdk/protobuf/ExtensionRegistryLite;)Landroid/car/hardware/xpu/XpuProtoMessage$RoadFacility;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 5637
    sget-object v0, Landroid/car/hardware/xpu/XpuProtoMessage$RoadFacility;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuProtoMessage$RoadFacility;

    invoke-static {v0, p0, p1}, Landroid/car/hardware/xpu/XpuProtoMessage$RoadFacility;->parseDelimitedFrom(Lcom/android/carsdk/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/android/carsdk/protobuf/ExtensionRegistryLite;)Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Landroid/car/hardware/xpu/XpuProtoMessage$RoadFacility;

    return-object p0
.end method

.method public static parseFrom(Lcom/android/carsdk/protobuf/ByteString;)Landroid/car/hardware/xpu/XpuProtoMessage$RoadFacility;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/carsdk/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 5595
    sget-object v0, Landroid/car/hardware/xpu/XpuProtoMessage$RoadFacility;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuProtoMessage$RoadFacility;

    invoke-static {v0, p0}, Lcom/android/carsdk/protobuf/GeneratedMessageLite;->parseFrom(Lcom/android/carsdk/protobuf/GeneratedMessageLite;Lcom/android/carsdk/protobuf/ByteString;)Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Landroid/car/hardware/xpu/XpuProtoMessage$RoadFacility;

    return-object p0
.end method

.method public static parseFrom(Lcom/android/carsdk/protobuf/ByteString;Lcom/android/carsdk/protobuf/ExtensionRegistryLite;)Landroid/car/hardware/xpu/XpuProtoMessage$RoadFacility;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/carsdk/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 5602
    sget-object v0, Landroid/car/hardware/xpu/XpuProtoMessage$RoadFacility;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuProtoMessage$RoadFacility;

    invoke-static {v0, p0, p1}, Lcom/android/carsdk/protobuf/GeneratedMessageLite;->parseFrom(Lcom/android/carsdk/protobuf/GeneratedMessageLite;Lcom/android/carsdk/protobuf/ByteString;Lcom/android/carsdk/protobuf/ExtensionRegistryLite;)Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Landroid/car/hardware/xpu/XpuProtoMessage$RoadFacility;

    return-object p0
.end method

.method public static parseFrom(Lcom/android/carsdk/protobuf/CodedInputStream;)Landroid/car/hardware/xpu/XpuProtoMessage$RoadFacility;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 5642
    sget-object v0, Landroid/car/hardware/xpu/XpuProtoMessage$RoadFacility;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuProtoMessage$RoadFacility;

    invoke-static {v0, p0}, Lcom/android/carsdk/protobuf/GeneratedMessageLite;->parseFrom(Lcom/android/carsdk/protobuf/GeneratedMessageLite;Lcom/android/carsdk/protobuf/CodedInputStream;)Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Landroid/car/hardware/xpu/XpuProtoMessage$RoadFacility;

    return-object p0
.end method

.method public static parseFrom(Lcom/android/carsdk/protobuf/CodedInputStream;Lcom/android/carsdk/protobuf/ExtensionRegistryLite;)Landroid/car/hardware/xpu/XpuProtoMessage$RoadFacility;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 5649
    sget-object v0, Landroid/car/hardware/xpu/XpuProtoMessage$RoadFacility;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuProtoMessage$RoadFacility;

    invoke-static {v0, p0, p1}, Lcom/android/carsdk/protobuf/GeneratedMessageLite;->parseFrom(Lcom/android/carsdk/protobuf/GeneratedMessageLite;Lcom/android/carsdk/protobuf/CodedInputStream;Lcom/android/carsdk/protobuf/ExtensionRegistryLite;)Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Landroid/car/hardware/xpu/XpuProtoMessage$RoadFacility;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Landroid/car/hardware/xpu/XpuProtoMessage$RoadFacility;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 5619
    sget-object v0, Landroid/car/hardware/xpu/XpuProtoMessage$RoadFacility;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuProtoMessage$RoadFacility;

    invoke-static {v0, p0}, Lcom/android/carsdk/protobuf/GeneratedMessageLite;->parseFrom(Lcom/android/carsdk/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Landroid/car/hardware/xpu/XpuProtoMessage$RoadFacility;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/android/carsdk/protobuf/ExtensionRegistryLite;)Landroid/car/hardware/xpu/XpuProtoMessage$RoadFacility;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 5626
    sget-object v0, Landroid/car/hardware/xpu/XpuProtoMessage$RoadFacility;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuProtoMessage$RoadFacility;

    invoke-static {v0, p0, p1}, Lcom/android/carsdk/protobuf/GeneratedMessageLite;->parseFrom(Lcom/android/carsdk/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/android/carsdk/protobuf/ExtensionRegistryLite;)Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Landroid/car/hardware/xpu/XpuProtoMessage$RoadFacility;

    return-object p0
.end method

.method public static parseFrom([B)Landroid/car/hardware/xpu/XpuProtoMessage$RoadFacility;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/carsdk/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 5607
    sget-object v0, Landroid/car/hardware/xpu/XpuProtoMessage$RoadFacility;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuProtoMessage$RoadFacility;

    invoke-static {v0, p0}, Lcom/android/carsdk/protobuf/GeneratedMessageLite;->parseFrom(Lcom/android/carsdk/protobuf/GeneratedMessageLite;[B)Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Landroid/car/hardware/xpu/XpuProtoMessage$RoadFacility;

    return-object p0
.end method

.method public static parseFrom([BLcom/android/carsdk/protobuf/ExtensionRegistryLite;)Landroid/car/hardware/xpu/XpuProtoMessage$RoadFacility;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/carsdk/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 5614
    sget-object v0, Landroid/car/hardware/xpu/XpuProtoMessage$RoadFacility;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuProtoMessage$RoadFacility;

    invoke-static {v0, p0, p1}, Lcom/android/carsdk/protobuf/GeneratedMessageLite;->parseFrom(Lcom/android/carsdk/protobuf/GeneratedMessageLite;[BLcom/android/carsdk/protobuf/ExtensionRegistryLite;)Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Landroid/car/hardware/xpu/XpuProtoMessage$RoadFacility;

    return-object p0
.end method

.method public static parser()Lcom/android/carsdk/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/android/carsdk/protobuf/Parser<",
            "Landroid/car/hardware/xpu/XpuProtoMessage$RoadFacility;",
            ">;"
        }
    .end annotation

    .line 6128
    sget-object v0, Landroid/car/hardware/xpu/XpuProtoMessage$RoadFacility;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuProtoMessage$RoadFacility;

    invoke-virtual {v0}, Landroid/car/hardware/xpu/XpuProtoMessage$RoadFacility;->getParserForType()Lcom/android/carsdk/protobuf/Parser;

    move-result-object v0

    return-object v0
.end method

.method private removeTimeRanges(I)V
    .locals 1

    .line 5513
    invoke-direct {p0}, Landroid/car/hardware/xpu/XpuProtoMessage$RoadFacility;->ensureTimeRangesIsMutable()V

    .line 5514
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$RoadFacility;->timeRanges_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1}, Lcom/android/carsdk/protobuf/Internal$ProtobufList;->remove(I)Ljava/lang/Object;

    return-void
.end method

.method private setDistToEnd(I)V
    .locals 0

    .line 5341
    iput p1, p0, Landroid/car/hardware/xpu/XpuProtoMessage$RoadFacility;->distToEnd_:I

    return-void
.end method

.method private setLaneNum(I)V
    .locals 0

    .line 5387
    iput p1, p0, Landroid/car/hardware/xpu/XpuProtoMessage$RoadFacility;->laneNum_:I

    return-void
.end method

.method private setLat(F)V
    .locals 0

    .line 5260
    iput p1, p0, Landroid/car/hardware/xpu/XpuProtoMessage$RoadFacility;->lat_:F

    return-void
.end method

.method private setLon(F)V
    .locals 0

    .line 5237
    iput p1, p0, Landroid/car/hardware/xpu/XpuProtoMessage$RoadFacility;->lon_:F

    return-void
.end method

.method private setSpeedLimits(II)V
    .locals 1

    .line 5302
    invoke-direct {p0}, Landroid/car/hardware/xpu/XpuProtoMessage$RoadFacility;->ensureSpeedLimitsIsMutable()V

    .line 5303
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$RoadFacility;->speedLimits_:Lcom/android/carsdk/protobuf/Internal$IntList;

    invoke-interface {v0, p1, p2}, Lcom/android/carsdk/protobuf/Internal$IntList;->setInt(II)I

    return-void
.end method

.method private setTimeRanges(ILandroid/car/hardware/xpu/XpuProtoMessage$TimeRange$Builder;)V
    .locals 1

    .line 5454
    invoke-direct {p0}, Landroid/car/hardware/xpu/XpuProtoMessage$RoadFacility;->ensureTimeRangesIsMutable()V

    .line 5455
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$RoadFacility;->timeRanges_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    invoke-virtual {p2}, Landroid/car/hardware/xpu/XpuProtoMessage$TimeRange$Builder;->build()Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object p2

    check-cast p2, Landroid/car/hardware/xpu/XpuProtoMessage$TimeRange;

    invoke-interface {v0, p1, p2}, Lcom/android/carsdk/protobuf/Internal$ProtobufList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private setTimeRanges(ILandroid/car/hardware/xpu/XpuProtoMessage$TimeRange;)V
    .locals 1

    .line 5444
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 5446
    invoke-direct {p0}, Landroid/car/hardware/xpu/XpuProtoMessage$RoadFacility;->ensureTimeRangesIsMutable()V

    .line 5447
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$RoadFacility;->timeRanges_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1, p2}, Lcom/android/carsdk/protobuf/Internal$ProtobufList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private setType(I)V
    .locals 0

    .line 5214
    iput p1, p0, Landroid/car/hardware/xpu/XpuProtoMessage$RoadFacility;->type_:I

    return-void
.end method

.method private setValidLane(I)V
    .locals 0

    .line 5364
    iput p1, p0, Landroid/car/hardware/xpu/XpuProtoMessage$RoadFacility;->validLane_:I

    return-void
.end method


# virtual methods
.method protected final dynamicMethod(Lcom/android/carsdk/protobuf/GeneratedMessageLite$MethodToInvoke;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    .line 5969
    sget-object v0, Landroid/car/hardware/xpu/XpuProtoMessage$1;->$SwitchMap$com$google$protobuf$GeneratedMessageLite$MethodToInvoke:[I

    invoke-virtual {p1}, Lcom/android/carsdk/protobuf/GeneratedMessageLite$MethodToInvoke;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x1

    packed-switch p1, :pswitch_data_0

    .line 6110
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1

    .line 6101
    :pswitch_0
    sget-object p1, Landroid/car/hardware/xpu/XpuProtoMessage$RoadFacility;->PARSER:Lcom/android/carsdk/protobuf/Parser;

    if-nez p1, :cond_1

    const-class p1, Landroid/car/hardware/xpu/XpuProtoMessage$RoadFacility;

    monitor-enter p1

    .line 6102
    :try_start_0
    sget-object p2, Landroid/car/hardware/xpu/XpuProtoMessage$RoadFacility;->PARSER:Lcom/android/carsdk/protobuf/Parser;

    if-nez p2, :cond_0

    .line 6103
    new-instance p2, Lcom/android/carsdk/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;

    sget-object p3, Landroid/car/hardware/xpu/XpuProtoMessage$RoadFacility;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuProtoMessage$RoadFacility;

    invoke-direct {p2, p3}, Lcom/android/carsdk/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;-><init>(Lcom/android/carsdk/protobuf/GeneratedMessageLite;)V

    sput-object p2, Landroid/car/hardware/xpu/XpuProtoMessage$RoadFacility;->PARSER:Lcom/android/carsdk/protobuf/Parser;

    .line 6105
    :cond_0
    monitor-exit p1

    goto :goto_0

    :catchall_0
    move-exception p2

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p2

    .line 6107
    :cond_1
    :goto_0
    sget-object p1, Landroid/car/hardware/xpu/XpuProtoMessage$RoadFacility;->PARSER:Lcom/android/carsdk/protobuf/Parser;

    return-object p1

    .line 6008
    :pswitch_1
    check-cast p2, Lcom/android/carsdk/protobuf/CodedInputStream;

    .line 6010
    check-cast p3, Lcom/android/carsdk/protobuf/ExtensionRegistryLite;

    :cond_2
    :goto_1
    if-nez v1, :cond_11

    .line 6015
    :try_start_1
    invoke-virtual {p2}, Lcom/android/carsdk/protobuf/CodedInputStream;->readTag()I

    move-result p1

    if-eqz p1, :cond_10

    const/16 v0, 0x8

    if-eq p1, v0, :cond_f

    const/16 v0, 0x15

    if-eq p1, v0, :cond_e

    const/16 v0, 0x1d

    if-eq p1, v0, :cond_d

    const/16 v0, 0x20

    if-eq p1, v0, :cond_b

    const/16 v0, 0x22

    if-eq p1, v0, :cond_8

    const/16 v0, 0x28

    if-eq p1, v0, :cond_7

    const/16 v0, 0x30

    if-eq p1, v0, :cond_6

    const/16 v0, 0x38

    if-eq p1, v0, :cond_5

    const/16 v0, 0x42

    if-eq p1, v0, :cond_3

    .line 6021
    invoke-virtual {p2, p1}, Lcom/android/carsdk/protobuf/CodedInputStream;->skipField(I)Z

    move-result p1

    if-nez p1, :cond_2

    goto/16 :goto_3

    .line 6078
    :cond_3
    iget-object p1, p0, Landroid/car/hardware/xpu/XpuProtoMessage$RoadFacility;->timeRanges_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    invoke-interface {p1}, Lcom/android/carsdk/protobuf/Internal$ProtobufList;->isModifiable()Z

    move-result p1

    if-nez p1, :cond_4

    .line 6079
    iget-object p1, p0, Landroid/car/hardware/xpu/XpuProtoMessage$RoadFacility;->timeRanges_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    .line 6080
    invoke-static {p1}, Lcom/android/carsdk/protobuf/GeneratedMessageLite;->mutableCopy(Lcom/android/carsdk/protobuf/Internal$ProtobufList;)Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    move-result-object p1

    iput-object p1, p0, Landroid/car/hardware/xpu/XpuProtoMessage$RoadFacility;->timeRanges_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    .line 6082
    :cond_4
    iget-object p1, p0, Landroid/car/hardware/xpu/XpuProtoMessage$RoadFacility;->timeRanges_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    .line 6083
    invoke-static {}, Landroid/car/hardware/xpu/XpuProtoMessage$TimeRange;->parser()Lcom/android/carsdk/protobuf/Parser;

    move-result-object v0

    invoke-virtual {p2, v0, p3}, Lcom/android/carsdk/protobuf/CodedInputStream;->readMessage(Lcom/android/carsdk/protobuf/Parser;Lcom/android/carsdk/protobuf/ExtensionRegistryLite;)Lcom/android/carsdk/protobuf/MessageLite;

    move-result-object v0

    check-cast v0, Landroid/car/hardware/xpu/XpuProtoMessage$TimeRange;

    .line 6082
    invoke-interface {p1, v0}, Lcom/android/carsdk/protobuf/Internal$ProtobufList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 6074
    :cond_5
    invoke-virtual {p2}, Lcom/android/carsdk/protobuf/CodedInputStream;->readInt32()I

    move-result p1

    iput p1, p0, Landroid/car/hardware/xpu/XpuProtoMessage$RoadFacility;->laneNum_:I

    goto :goto_1

    .line 6069
    :cond_6
    invoke-virtual {p2}, Lcom/android/carsdk/protobuf/CodedInputStream;->readInt32()I

    move-result p1

    iput p1, p0, Landroid/car/hardware/xpu/XpuProtoMessage$RoadFacility;->validLane_:I

    goto :goto_1

    .line 6064
    :cond_7
    invoke-virtual {p2}, Lcom/android/carsdk/protobuf/CodedInputStream;->readInt32()I

    move-result p1

    iput p1, p0, Landroid/car/hardware/xpu/XpuProtoMessage$RoadFacility;->distToEnd_:I

    goto :goto_1

    .line 6050
    :cond_8
    invoke-virtual {p2}, Lcom/android/carsdk/protobuf/CodedInputStream;->readRawVarint32()I

    move-result p1

    .line 6051
    invoke-virtual {p2, p1}, Lcom/android/carsdk/protobuf/CodedInputStream;->pushLimit(I)I

    move-result p1

    .line 6052
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$RoadFacility;->speedLimits_:Lcom/android/carsdk/protobuf/Internal$IntList;

    invoke-interface {v0}, Lcom/android/carsdk/protobuf/Internal$IntList;->isModifiable()Z

    move-result v0

    if-nez v0, :cond_9

    invoke-virtual {p2}, Lcom/android/carsdk/protobuf/CodedInputStream;->getBytesUntilLimit()I

    move-result v0

    if-lez v0, :cond_9

    .line 6053
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$RoadFacility;->speedLimits_:Lcom/android/carsdk/protobuf/Internal$IntList;

    .line 6054
    invoke-static {v0}, Lcom/android/carsdk/protobuf/GeneratedMessageLite;->mutableCopy(Lcom/android/carsdk/protobuf/Internal$IntList;)Lcom/android/carsdk/protobuf/Internal$IntList;

    move-result-object v0

    iput-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$RoadFacility;->speedLimits_:Lcom/android/carsdk/protobuf/Internal$IntList;

    .line 6056
    :cond_9
    :goto_2
    invoke-virtual {p2}, Lcom/android/carsdk/protobuf/CodedInputStream;->getBytesUntilLimit()I

    move-result v0

    if-lez v0, :cond_a

    .line 6057
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$RoadFacility;->speedLimits_:Lcom/android/carsdk/protobuf/Internal$IntList;

    invoke-virtual {p2}, Lcom/android/carsdk/protobuf/CodedInputStream;->readInt32()I

    move-result v3

    invoke-interface {v0, v3}, Lcom/android/carsdk/protobuf/Internal$IntList;->addInt(I)V

    goto :goto_2

    .line 6059
    :cond_a
    invoke-virtual {p2, p1}, Lcom/android/carsdk/protobuf/CodedInputStream;->popLimit(I)V

    goto/16 :goto_1

    .line 6042
    :cond_b
    iget-object p1, p0, Landroid/car/hardware/xpu/XpuProtoMessage$RoadFacility;->speedLimits_:Lcom/android/carsdk/protobuf/Internal$IntList;

    invoke-interface {p1}, Lcom/android/carsdk/protobuf/Internal$IntList;->isModifiable()Z

    move-result p1

    if-nez p1, :cond_c

    .line 6043
    iget-object p1, p0, Landroid/car/hardware/xpu/XpuProtoMessage$RoadFacility;->speedLimits_:Lcom/android/carsdk/protobuf/Internal$IntList;

    .line 6044
    invoke-static {p1}, Lcom/android/carsdk/protobuf/GeneratedMessageLite;->mutableCopy(Lcom/android/carsdk/protobuf/Internal$IntList;)Lcom/android/carsdk/protobuf/Internal$IntList;

    move-result-object p1

    iput-object p1, p0, Landroid/car/hardware/xpu/XpuProtoMessage$RoadFacility;->speedLimits_:Lcom/android/carsdk/protobuf/Internal$IntList;

    .line 6046
    :cond_c
    iget-object p1, p0, Landroid/car/hardware/xpu/XpuProtoMessage$RoadFacility;->speedLimits_:Lcom/android/carsdk/protobuf/Internal$IntList;

    invoke-virtual {p2}, Lcom/android/carsdk/protobuf/CodedInputStream;->readInt32()I

    move-result v0

    invoke-interface {p1, v0}, Lcom/android/carsdk/protobuf/Internal$IntList;->addInt(I)V

    goto/16 :goto_1

    .line 6038
    :cond_d
    invoke-virtual {p2}, Lcom/android/carsdk/protobuf/CodedInputStream;->readFloat()F

    move-result p1

    iput p1, p0, Landroid/car/hardware/xpu/XpuProtoMessage$RoadFacility;->lat_:F

    goto/16 :goto_1

    .line 6033
    :cond_e
    invoke-virtual {p2}, Lcom/android/carsdk/protobuf/CodedInputStream;->readFloat()F

    move-result p1

    iput p1, p0, Landroid/car/hardware/xpu/XpuProtoMessage$RoadFacility;->lon_:F

    goto/16 :goto_1

    .line 6028
    :cond_f
    invoke-virtual {p2}, Lcom/android/carsdk/protobuf/CodedInputStream;->readInt32()I

    move-result p1

    iput p1, p0, Landroid/car/hardware/xpu/XpuProtoMessage$RoadFacility;->type_:I
    :try_end_1
    .catch Lcom/android/carsdk/protobuf/InvalidProtocolBufferException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto/16 :goto_1

    :cond_10
    :goto_3
    move v1, v2

    goto/16 :goto_1

    :catchall_1
    move-exception p1

    goto :goto_4

    :catch_0
    move-exception p1

    .line 6091
    :try_start_2
    new-instance p2, Ljava/lang/RuntimeException;

    new-instance p3, Lcom/android/carsdk/protobuf/InvalidProtocolBufferException;

    .line 6093
    invoke-virtual {p1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p3, p1}, Lcom/android/carsdk/protobuf/InvalidProtocolBufferException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, p0}, Lcom/android/carsdk/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/android/carsdk/protobuf/MessageLite;)Lcom/android/carsdk/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p2

    :catch_1
    move-exception p1

    .line 6089
    new-instance p2, Ljava/lang/RuntimeException;

    invoke-virtual {p1, p0}, Lcom/android/carsdk/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/android/carsdk/protobuf/MessageLite;)Lcom/android/carsdk/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 6094
    :goto_4
    throw p1

    .line 6098
    :cond_11
    :pswitch_2
    sget-object p1, Landroid/car/hardware/xpu/XpuProtoMessage$RoadFacility;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuProtoMessage$RoadFacility;

    return-object p1

    .line 5985
    :pswitch_3
    check-cast p2, Lcom/android/carsdk/protobuf/GeneratedMessageLite$Visitor;

    .line 5986
    check-cast p3, Landroid/car/hardware/xpu/XpuProtoMessage$RoadFacility;

    .line 5987
    iget p1, p0, Landroid/car/hardware/xpu/XpuProtoMessage$RoadFacility;->type_:I

    if-eqz p1, :cond_12

    move v0, v2

    goto :goto_5

    :cond_12
    move v0, v1

    :goto_5
    iget v3, p3, Landroid/car/hardware/xpu/XpuProtoMessage$RoadFacility;->type_:I

    if-eqz v3, :cond_13

    move v4, v2

    goto :goto_6

    :cond_13
    move v4, v1

    :goto_6
    invoke-interface {p2, v0, p1, v4, v3}, Lcom/android/carsdk/protobuf/GeneratedMessageLite$Visitor;->visitInt(ZIZI)I

    move-result p1

    iput p1, p0, Landroid/car/hardware/xpu/XpuProtoMessage$RoadFacility;->type_:I

    .line 5989
    iget p1, p0, Landroid/car/hardware/xpu/XpuProtoMessage$RoadFacility;->lon_:F

    const/4 v0, 0x0

    cmpl-float v3, p1, v0

    if-eqz v3, :cond_14

    move v3, v2

    goto :goto_7

    :cond_14
    move v3, v1

    :goto_7
    iget v4, p3, Landroid/car/hardware/xpu/XpuProtoMessage$RoadFacility;->lon_:F

    cmpl-float v5, v4, v0

    if-eqz v5, :cond_15

    move v5, v2

    goto :goto_8

    :cond_15
    move v5, v1

    :goto_8
    invoke-interface {p2, v3, p1, v5, v4}, Lcom/android/carsdk/protobuf/GeneratedMessageLite$Visitor;->visitFloat(ZFZF)F

    move-result p1

    iput p1, p0, Landroid/car/hardware/xpu/XpuProtoMessage$RoadFacility;->lon_:F

    .line 5991
    iget p1, p0, Landroid/car/hardware/xpu/XpuProtoMessage$RoadFacility;->lat_:F

    cmpl-float v3, p1, v0

    if-eqz v3, :cond_16

    move v3, v2

    goto :goto_9

    :cond_16
    move v3, v1

    :goto_9
    iget v4, p3, Landroid/car/hardware/xpu/XpuProtoMessage$RoadFacility;->lat_:F

    cmpl-float v0, v4, v0

    if-eqz v0, :cond_17

    move v0, v2

    goto :goto_a

    :cond_17
    move v0, v1

    :goto_a
    invoke-interface {p2, v3, p1, v0, v4}, Lcom/android/carsdk/protobuf/GeneratedMessageLite$Visitor;->visitFloat(ZFZF)F

    move-result p1

    iput p1, p0, Landroid/car/hardware/xpu/XpuProtoMessage$RoadFacility;->lat_:F

    .line 5993
    iget-object p1, p0, Landroid/car/hardware/xpu/XpuProtoMessage$RoadFacility;->speedLimits_:Lcom/android/carsdk/protobuf/Internal$IntList;

    iget-object v0, p3, Landroid/car/hardware/xpu/XpuProtoMessage$RoadFacility;->speedLimits_:Lcom/android/carsdk/protobuf/Internal$IntList;

    invoke-interface {p2, p1, v0}, Lcom/android/carsdk/protobuf/GeneratedMessageLite$Visitor;->visitIntList(Lcom/android/carsdk/protobuf/Internal$IntList;Lcom/android/carsdk/protobuf/Internal$IntList;)Lcom/android/carsdk/protobuf/Internal$IntList;

    move-result-object p1

    iput-object p1, p0, Landroid/car/hardware/xpu/XpuProtoMessage$RoadFacility;->speedLimits_:Lcom/android/carsdk/protobuf/Internal$IntList;

    .line 5994
    iget p1, p0, Landroid/car/hardware/xpu/XpuProtoMessage$RoadFacility;->distToEnd_:I

    if-eqz p1, :cond_18

    move v0, v2

    goto :goto_b

    :cond_18
    move v0, v1

    :goto_b
    iget v3, p3, Landroid/car/hardware/xpu/XpuProtoMessage$RoadFacility;->distToEnd_:I

    if-eqz v3, :cond_19

    move v4, v2

    goto :goto_c

    :cond_19
    move v4, v1

    :goto_c
    invoke-interface {p2, v0, p1, v4, v3}, Lcom/android/carsdk/protobuf/GeneratedMessageLite$Visitor;->visitInt(ZIZI)I

    move-result p1

    iput p1, p0, Landroid/car/hardware/xpu/XpuProtoMessage$RoadFacility;->distToEnd_:I

    .line 5996
    iget p1, p0, Landroid/car/hardware/xpu/XpuProtoMessage$RoadFacility;->validLane_:I

    if-eqz p1, :cond_1a

    move v0, v2

    goto :goto_d

    :cond_1a
    move v0, v1

    :goto_d
    iget v3, p3, Landroid/car/hardware/xpu/XpuProtoMessage$RoadFacility;->validLane_:I

    if-eqz v3, :cond_1b

    move v4, v2

    goto :goto_e

    :cond_1b
    move v4, v1

    :goto_e
    invoke-interface {p2, v0, p1, v4, v3}, Lcom/android/carsdk/protobuf/GeneratedMessageLite$Visitor;->visitInt(ZIZI)I

    move-result p1

    iput p1, p0, Landroid/car/hardware/xpu/XpuProtoMessage$RoadFacility;->validLane_:I

    .line 5998
    iget p1, p0, Landroid/car/hardware/xpu/XpuProtoMessage$RoadFacility;->laneNum_:I

    if-eqz p1, :cond_1c

    move v0, v2

    goto :goto_f

    :cond_1c
    move v0, v1

    :goto_f
    iget v3, p3, Landroid/car/hardware/xpu/XpuProtoMessage$RoadFacility;->laneNum_:I

    if-eqz v3, :cond_1d

    move v1, v2

    :cond_1d
    invoke-interface {p2, v0, p1, v1, v3}, Lcom/android/carsdk/protobuf/GeneratedMessageLite$Visitor;->visitInt(ZIZI)I

    move-result p1

    iput p1, p0, Landroid/car/hardware/xpu/XpuProtoMessage$RoadFacility;->laneNum_:I

    .line 6000
    iget-object p1, p0, Landroid/car/hardware/xpu/XpuProtoMessage$RoadFacility;->timeRanges_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    iget-object v0, p3, Landroid/car/hardware/xpu/XpuProtoMessage$RoadFacility;->timeRanges_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    invoke-interface {p2, p1, v0}, Lcom/android/carsdk/protobuf/GeneratedMessageLite$Visitor;->visitList(Lcom/android/carsdk/protobuf/Internal$ProtobufList;Lcom/android/carsdk/protobuf/Internal$ProtobufList;)Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    move-result-object p1

    iput-object p1, p0, Landroid/car/hardware/xpu/XpuProtoMessage$RoadFacility;->timeRanges_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    .line 6001
    sget-object p1, Lcom/android/carsdk/protobuf/GeneratedMessageLite$MergeFromVisitor;->INSTANCE:Lcom/android/carsdk/protobuf/GeneratedMessageLite$MergeFromVisitor;

    if-ne p2, p1, :cond_1e

    .line 6003
    iget p1, p0, Landroid/car/hardware/xpu/XpuProtoMessage$RoadFacility;->bitField0_:I

    iget p2, p3, Landroid/car/hardware/xpu/XpuProtoMessage$RoadFacility;->bitField0_:I

    or-int/2addr p1, p2

    iput p1, p0, Landroid/car/hardware/xpu/XpuProtoMessage$RoadFacility;->bitField0_:I

    :cond_1e
    return-object p0

    .line 5982
    :pswitch_4
    new-instance p1, Landroid/car/hardware/xpu/XpuProtoMessage$RoadFacility$Builder;

    invoke-direct {p1, v0}, Landroid/car/hardware/xpu/XpuProtoMessage$RoadFacility$Builder;-><init>(Landroid/car/hardware/xpu/XpuProtoMessage$1;)V

    return-object p1

    .line 5977
    :pswitch_5
    iget-object p1, p0, Landroid/car/hardware/xpu/XpuProtoMessage$RoadFacility;->speedLimits_:Lcom/android/carsdk/protobuf/Internal$IntList;

    invoke-interface {p1}, Lcom/android/carsdk/protobuf/Internal$IntList;->makeImmutable()V

    .line 5978
    iget-object p1, p0, Landroid/car/hardware/xpu/XpuProtoMessage$RoadFacility;->timeRanges_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    invoke-interface {p1}, Lcom/android/carsdk/protobuf/Internal$ProtobufList;->makeImmutable()V

    return-object v0

    .line 5974
    :pswitch_6
    sget-object p1, Landroid/car/hardware/xpu/XpuProtoMessage$RoadFacility;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuProtoMessage$RoadFacility;

    return-object p1

    .line 5971
    :pswitch_7
    new-instance p1, Landroid/car/hardware/xpu/XpuProtoMessage$RoadFacility;

    invoke-direct {p1}, Landroid/car/hardware/xpu/XpuProtoMessage$RoadFacility;-><init>()V

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

.method public getDistToEnd()I
    .locals 1

    .line 5334
    iget v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$RoadFacility;->distToEnd_:I

    return v0
.end method

.method public getLaneNum()I
    .locals 1

    .line 5380
    iget v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$RoadFacility;->laneNum_:I

    return v0
.end method

.method public getLat()F
    .locals 1

    .line 5253
    iget v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$RoadFacility;->lat_:F

    return v0
.end method

.method public getLon()F
    .locals 1

    .line 5230
    iget v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$RoadFacility;->lon_:F

    return v0
.end method

.method public getSerializedSize()I
    .locals 6

    .line 5547
    iget v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$RoadFacility;->memoizedSerializedSize:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    return v0

    .line 5551
    :cond_0
    iget v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$RoadFacility;->type_:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    .line 5553
    invoke-static {v1, v0}, Lcom/android/carsdk/protobuf/CodedOutputStream;->computeInt32Size(II)I

    move-result v0

    add-int/2addr v0, v2

    goto :goto_0

    :cond_1
    move v0, v2

    .line 5555
    :goto_0
    iget v3, p0, Landroid/car/hardware/xpu/XpuProtoMessage$RoadFacility;->lon_:F

    const/4 v4, 0x0

    cmpl-float v5, v3, v4

    if-eqz v5, :cond_2

    const/4 v5, 0x2

    .line 5557
    invoke-static {v5, v3}, Lcom/android/carsdk/protobuf/CodedOutputStream;->computeFloatSize(IF)I

    move-result v3

    add-int/2addr v0, v3

    .line 5559
    :cond_2
    iget v3, p0, Landroid/car/hardware/xpu/XpuProtoMessage$RoadFacility;->lat_:F

    cmpl-float v4, v3, v4

    if-eqz v4, :cond_3

    const/4 v4, 0x3

    .line 5561
    invoke-static {v4, v3}, Lcom/android/carsdk/protobuf/CodedOutputStream;->computeFloatSize(IF)I

    move-result v3

    add-int/2addr v0, v3

    :cond_3
    move v3, v2

    move v4, v3

    .line 5565
    :goto_1
    iget-object v5, p0, Landroid/car/hardware/xpu/XpuProtoMessage$RoadFacility;->speedLimits_:Lcom/android/carsdk/protobuf/Internal$IntList;

    invoke-interface {v5}, Lcom/android/carsdk/protobuf/Internal$IntList;->size()I

    move-result v5

    if-ge v3, v5, :cond_4

    .line 5566
    iget-object v5, p0, Landroid/car/hardware/xpu/XpuProtoMessage$RoadFacility;->speedLimits_:Lcom/android/carsdk/protobuf/Internal$IntList;

    .line 5567
    invoke-interface {v5, v3}, Lcom/android/carsdk/protobuf/Internal$IntList;->getInt(I)I

    move-result v5

    invoke-static {v5}, Lcom/android/carsdk/protobuf/CodedOutputStream;->computeInt32SizeNoTag(I)I

    move-result v5

    add-int/2addr v4, v5

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_4
    add-int/2addr v0, v4

    .line 5570
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuProtoMessage$RoadFacility;->getSpeedLimitsList()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    mul-int/2addr v3, v1

    add-int/2addr v0, v3

    .line 5572
    iget v1, p0, Landroid/car/hardware/xpu/XpuProtoMessage$RoadFacility;->distToEnd_:I

    if-eqz v1, :cond_5

    const/4 v3, 0x5

    .line 5574
    invoke-static {v3, v1}, Lcom/android/carsdk/protobuf/CodedOutputStream;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 5576
    :cond_5
    iget v1, p0, Landroid/car/hardware/xpu/XpuProtoMessage$RoadFacility;->validLane_:I

    if-eqz v1, :cond_6

    const/4 v3, 0x6

    .line 5578
    invoke-static {v3, v1}, Lcom/android/carsdk/protobuf/CodedOutputStream;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 5580
    :cond_6
    iget v1, p0, Landroid/car/hardware/xpu/XpuProtoMessage$RoadFacility;->laneNum_:I

    if-eqz v1, :cond_7

    const/4 v3, 0x7

    .line 5582
    invoke-static {v3, v1}, Lcom/android/carsdk/protobuf/CodedOutputStream;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 5584
    :cond_7
    :goto_2
    iget-object v1, p0, Landroid/car/hardware/xpu/XpuProtoMessage$RoadFacility;->timeRanges_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    invoke-interface {v1}, Lcom/android/carsdk/protobuf/Internal$ProtobufList;->size()I

    move-result v1

    if-ge v2, v1, :cond_8

    const/16 v1, 0x8

    .line 5585
    iget-object v3, p0, Landroid/car/hardware/xpu/XpuProtoMessage$RoadFacility;->timeRanges_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    .line 5586
    invoke-interface {v3, v2}, Lcom/android/carsdk/protobuf/Internal$ProtobufList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/carsdk/protobuf/MessageLite;

    invoke-static {v1, v3}, Lcom/android/carsdk/protobuf/CodedOutputStream;->computeMessageSize(ILcom/android/carsdk/protobuf/MessageLite;)I

    move-result v1

    add-int/2addr v0, v1

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 5588
    :cond_8
    iput v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$RoadFacility;->memoizedSerializedSize:I

    return v0
.end method

.method public getSpeedLimits(I)I
    .locals 1

    .line 5289
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$RoadFacility;->speedLimits_:Lcom/android/carsdk/protobuf/Internal$IntList;

    invoke-interface {v0, p1}, Lcom/android/carsdk/protobuf/Internal$IntList;->getInt(I)I

    move-result p1

    return p1
.end method

.method public getSpeedLimitsCount()I
    .locals 1

    .line 5283
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$RoadFacility;->speedLimits_:Lcom/android/carsdk/protobuf/Internal$IntList;

    invoke-interface {v0}, Lcom/android/carsdk/protobuf/Internal$IntList;->size()I

    move-result v0

    return v0
.end method

.method public getSpeedLimitsList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 5277
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$RoadFacility;->speedLimits_:Lcom/android/carsdk/protobuf/Internal$IntList;

    return-object v0
.end method

.method public getTimeRanges(I)Landroid/car/hardware/xpu/XpuProtoMessage$TimeRange;
    .locals 1

    .line 5422
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$RoadFacility;->timeRanges_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1}, Lcom/android/carsdk/protobuf/Internal$ProtobufList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/car/hardware/xpu/XpuProtoMessage$TimeRange;

    return-object p1
.end method

.method public getTimeRangesCount()I
    .locals 1

    .line 5416
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$RoadFacility;->timeRanges_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    invoke-interface {v0}, Lcom/android/carsdk/protobuf/Internal$ProtobufList;->size()I

    move-result v0

    return v0
.end method

.method public getTimeRangesList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/car/hardware/xpu/XpuProtoMessage$TimeRange;",
            ">;"
        }
    .end annotation

    .line 5403
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$RoadFacility;->timeRanges_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    return-object v0
.end method

.method public getTimeRangesOrBuilder(I)Landroid/car/hardware/xpu/XpuProtoMessage$TimeRangeOrBuilder;
    .locals 1

    .line 5429
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$RoadFacility;->timeRanges_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1}, Lcom/android/carsdk/protobuf/Internal$ProtobufList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/car/hardware/xpu/XpuProtoMessage$TimeRangeOrBuilder;

    return-object p1
.end method

.method public getTimeRangesOrBuilderList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "+",
            "Landroid/car/hardware/xpu/XpuProtoMessage$TimeRangeOrBuilder;",
            ">;"
        }
    .end annotation

    .line 5410
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$RoadFacility;->timeRanges_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    return-object v0
.end method

.method public getType()I
    .locals 1

    .line 5207
    iget v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$RoadFacility;->type_:I

    return v0
.end method

.method public getValidLane()I
    .locals 1

    .line 5357
    iget v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$RoadFacility;->validLane_:I

    return v0
.end method

.method public writeTo(Lcom/android/carsdk/protobuf/CodedOutputStream;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 5519
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuProtoMessage$RoadFacility;->getSerializedSize()I

    .line 5520
    iget v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$RoadFacility;->type_:I

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    .line 5521
    invoke-virtual {p1, v1, v0}, Lcom/android/carsdk/protobuf/CodedOutputStream;->writeInt32(II)V

    .line 5523
    :cond_0
    iget v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$RoadFacility;->lon_:F

    const/4 v1, 0x0

    cmpl-float v2, v0, v1

    if-eqz v2, :cond_1

    const/4 v2, 0x2

    .line 5524
    invoke-virtual {p1, v2, v0}, Lcom/android/carsdk/protobuf/CodedOutputStream;->writeFloat(IF)V

    .line 5526
    :cond_1
    iget v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$RoadFacility;->lat_:F

    cmpl-float v1, v0, v1

    if-eqz v1, :cond_2

    const/4 v1, 0x3

    .line 5527
    invoke-virtual {p1, v1, v0}, Lcom/android/carsdk/protobuf/CodedOutputStream;->writeFloat(IF)V

    :cond_2
    const/4 v0, 0x0

    move v1, v0

    .line 5529
    :goto_0
    iget-object v2, p0, Landroid/car/hardware/xpu/XpuProtoMessage$RoadFacility;->speedLimits_:Lcom/android/carsdk/protobuf/Internal$IntList;

    invoke-interface {v2}, Lcom/android/carsdk/protobuf/Internal$IntList;->size()I

    move-result v2

    if-ge v1, v2, :cond_3

    const/4 v2, 0x4

    .line 5530
    iget-object v3, p0, Landroid/car/hardware/xpu/XpuProtoMessage$RoadFacility;->speedLimits_:Lcom/android/carsdk/protobuf/Internal$IntList;

    invoke-interface {v3, v1}, Lcom/android/carsdk/protobuf/Internal$IntList;->getInt(I)I

    move-result v3

    invoke-virtual {p1, v2, v3}, Lcom/android/carsdk/protobuf/CodedOutputStream;->writeInt32(II)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 5532
    :cond_3
    iget v1, p0, Landroid/car/hardware/xpu/XpuProtoMessage$RoadFacility;->distToEnd_:I

    if-eqz v1, :cond_4

    const/4 v2, 0x5

    .line 5533
    invoke-virtual {p1, v2, v1}, Lcom/android/carsdk/protobuf/CodedOutputStream;->writeInt32(II)V

    .line 5535
    :cond_4
    iget v1, p0, Landroid/car/hardware/xpu/XpuProtoMessage$RoadFacility;->validLane_:I

    if-eqz v1, :cond_5

    const/4 v2, 0x6

    .line 5536
    invoke-virtual {p1, v2, v1}, Lcom/android/carsdk/protobuf/CodedOutputStream;->writeInt32(II)V

    .line 5538
    :cond_5
    iget v1, p0, Landroid/car/hardware/xpu/XpuProtoMessage$RoadFacility;->laneNum_:I

    if-eqz v1, :cond_6

    const/4 v2, 0x7

    .line 5539
    invoke-virtual {p1, v2, v1}, Lcom/android/carsdk/protobuf/CodedOutputStream;->writeInt32(II)V

    .line 5541
    :cond_6
    :goto_1
    iget-object v1, p0, Landroid/car/hardware/xpu/XpuProtoMessage$RoadFacility;->timeRanges_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    invoke-interface {v1}, Lcom/android/carsdk/protobuf/Internal$ProtobufList;->size()I

    move-result v1

    if-ge v0, v1, :cond_7

    const/16 v1, 0x8

    .line 5542
    iget-object v2, p0, Landroid/car/hardware/xpu/XpuProtoMessage$RoadFacility;->timeRanges_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    invoke-interface {v2, v0}, Lcom/android/carsdk/protobuf/Internal$ProtobufList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/carsdk/protobuf/MessageLite;

    invoke-virtual {p1, v1, v2}, Lcom/android/carsdk/protobuf/CodedOutputStream;->writeMessage(ILcom/android/carsdk/protobuf/MessageLite;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_7
    return-void
.end method
