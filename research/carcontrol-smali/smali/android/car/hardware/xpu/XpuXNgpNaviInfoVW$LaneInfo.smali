.class public final Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$LaneInfo;
.super Lcom/android/carsdk/protobuf/GeneratedMessageLite;
.source "XpuXNgpNaviInfoVW.java"

# interfaces
.implements Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$LaneInfoOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "LaneInfo"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$LaneInfo$Builder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/carsdk/protobuf/GeneratedMessageLite<",
        "Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$LaneInfo;",
        "Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$LaneInfo$Builder;",
        ">;",
        "Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$LaneInfoOrBuilder;"
    }
.end annotation


# static fields
.field public static final BACKEXTENLANE_FIELD_NUMBER:I = 0x4

.field public static final BACKLANETYPE_FIELD_NUMBER:I = 0xc

.field public static final BACKLANE_FIELD_NUMBER:I = 0x2

.field private static final DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$LaneInfo;

.field public static final EXTENSIONLANE_FIELD_NUMBER:I = 0x6

.field public static final FRONTEXTENLANE_FIELD_NUMBER:I = 0x5

.field public static final FRONTLANETYPE_FIELD_NUMBER:I = 0xb

.field public static final FRONTLANE_FIELD_NUMBER:I = 0x3

.field public static final LANETYPE_FIELD_NUMBER:I = 0x1

.field public static final LINKIDX_FIELD_NUMBER:I = 0x9

.field public static final NAVIGATION_ID_FIELD_NUMBER:I = 0xd

.field public static final OPTIMALLANE_FIELD_NUMBER:I = 0xa

.field private static volatile PARSER:Lcom/android/carsdk/protobuf/Parser; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/carsdk/protobuf/Parser<",
            "Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$LaneInfo;",
            ">;"
        }
    .end annotation
.end field

.field public static final POINT_FIELD_NUMBER:I = 0x7

.field public static final SEGMENTIDX_FIELD_NUMBER:I = 0x8


# instance fields
.field private backExtenLane_:Lcom/android/carsdk/protobuf/Internal$IntList;

.field private backLaneType_:Lcom/android/carsdk/protobuf/Internal$IntList;

.field private backLane_:Lcom/android/carsdk/protobuf/Internal$IntList;

.field private bitField0_:I

.field private extensionLane_:Lcom/android/carsdk/protobuf/Internal$IntList;

.field private frontExtenLane_:Lcom/android/carsdk/protobuf/Internal$IntList;

.field private frontLaneType_:Lcom/android/carsdk/protobuf/Internal$IntList;

.field private frontLane_:Lcom/android/carsdk/protobuf/Internal$IntList;

.field private laneType_:I

.field private linkIdx_:I

.field private navigationId_:J

.field private optimalLane_:Lcom/android/carsdk/protobuf/Internal$IntList;

.field private point_:Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$Coord2DDouble;

.field private segmentIdx_:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 8991
    new-instance v0, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$LaneInfo;

    invoke-direct {v0}, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$LaneInfo;-><init>()V

    sput-object v0, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$LaneInfo;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$LaneInfo;

    .line 8992
    invoke-virtual {v0}, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$LaneInfo;->makeImmutable()V

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .line 6693
    invoke-direct {p0}, Lcom/android/carsdk/protobuf/GeneratedMessageLite;-><init>()V

    const/4 v0, 0x0

    .line 6694
    iput v0, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$LaneInfo;->laneType_:I

    .line 6695
    invoke-static {}, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$LaneInfo;->emptyIntList()Lcom/android/carsdk/protobuf/Internal$IntList;

    move-result-object v1

    iput-object v1, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$LaneInfo;->backLane_:Lcom/android/carsdk/protobuf/Internal$IntList;

    .line 6696
    invoke-static {}, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$LaneInfo;->emptyIntList()Lcom/android/carsdk/protobuf/Internal$IntList;

    move-result-object v1

    iput-object v1, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$LaneInfo;->frontLane_:Lcom/android/carsdk/protobuf/Internal$IntList;

    .line 6697
    invoke-static {}, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$LaneInfo;->emptyIntList()Lcom/android/carsdk/protobuf/Internal$IntList;

    move-result-object v1

    iput-object v1, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$LaneInfo;->backExtenLane_:Lcom/android/carsdk/protobuf/Internal$IntList;

    .line 6698
    invoke-static {}, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$LaneInfo;->emptyIntList()Lcom/android/carsdk/protobuf/Internal$IntList;

    move-result-object v1

    iput-object v1, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$LaneInfo;->frontExtenLane_:Lcom/android/carsdk/protobuf/Internal$IntList;

    .line 6699
    invoke-static {}, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$LaneInfo;->emptyIntList()Lcom/android/carsdk/protobuf/Internal$IntList;

    move-result-object v1

    iput-object v1, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$LaneInfo;->extensionLane_:Lcom/android/carsdk/protobuf/Internal$IntList;

    .line 6700
    iput v0, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$LaneInfo;->segmentIdx_:I

    .line 6701
    iput v0, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$LaneInfo;->linkIdx_:I

    .line 6702
    invoke-static {}, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$LaneInfo;->emptyIntList()Lcom/android/carsdk/protobuf/Internal$IntList;

    move-result-object v0

    iput-object v0, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$LaneInfo;->optimalLane_:Lcom/android/carsdk/protobuf/Internal$IntList;

    .line 6703
    invoke-static {}, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$LaneInfo;->emptyIntList()Lcom/android/carsdk/protobuf/Internal$IntList;

    move-result-object v0

    iput-object v0, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$LaneInfo;->frontLaneType_:Lcom/android/carsdk/protobuf/Internal$IntList;

    .line 6704
    invoke-static {}, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$LaneInfo;->emptyIntList()Lcom/android/carsdk/protobuf/Internal$IntList;

    move-result-object v0

    iput-object v0, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$LaneInfo;->backLaneType_:Lcom/android/carsdk/protobuf/Internal$IntList;

    const-wide/16 v0, 0x0

    .line 6705
    iput-wide v0, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$LaneInfo;->navigationId_:J

    return-void
.end method

.method static synthetic access$10000(Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$LaneInfo;I)V
    .locals 0

    .line 6688
    invoke-direct {p0, p1}, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$LaneInfo;->addExtensionLane(I)V

    return-void
.end method

.method static synthetic access$10100(Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$LaneInfo;Ljava/lang/Iterable;)V
    .locals 0

    .line 6688
    invoke-direct {p0, p1}, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$LaneInfo;->addAllExtensionLane(Ljava/lang/Iterable;)V

    return-void
.end method

.method static synthetic access$10200(Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$LaneInfo;)V
    .locals 0

    .line 6688
    invoke-direct {p0}, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$LaneInfo;->clearExtensionLane()V

    return-void
.end method

.method static synthetic access$10300(Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$LaneInfo;Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$Coord2DDouble;)V
    .locals 0

    .line 6688
    invoke-direct {p0, p1}, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$LaneInfo;->setPoint(Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$Coord2DDouble;)V

    return-void
.end method

.method static synthetic access$10400(Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$LaneInfo;Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$Coord2DDouble$Builder;)V
    .locals 0

    .line 6688
    invoke-direct {p0, p1}, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$LaneInfo;->setPoint(Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$Coord2DDouble$Builder;)V

    return-void
.end method

.method static synthetic access$10500(Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$LaneInfo;Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$Coord2DDouble;)V
    .locals 0

    .line 6688
    invoke-direct {p0, p1}, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$LaneInfo;->mergePoint(Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$Coord2DDouble;)V

    return-void
.end method

.method static synthetic access$10600(Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$LaneInfo;)V
    .locals 0

    .line 6688
    invoke-direct {p0}, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$LaneInfo;->clearPoint()V

    return-void
.end method

.method static synthetic access$10700(Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$LaneInfo;I)V
    .locals 0

    .line 6688
    invoke-direct {p0, p1}, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$LaneInfo;->setSegmentIdx(I)V

    return-void
.end method

.method static synthetic access$10800(Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$LaneInfo;)V
    .locals 0

    .line 6688
    invoke-direct {p0}, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$LaneInfo;->clearSegmentIdx()V

    return-void
.end method

.method static synthetic access$10900(Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$LaneInfo;I)V
    .locals 0

    .line 6688
    invoke-direct {p0, p1}, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$LaneInfo;->setLinkIdx(I)V

    return-void
.end method

.method static synthetic access$11000(Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$LaneInfo;)V
    .locals 0

    .line 6688
    invoke-direct {p0}, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$LaneInfo;->clearLinkIdx()V

    return-void
.end method

.method static synthetic access$11100(Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$LaneInfo;II)V
    .locals 0

    .line 6688
    invoke-direct {p0, p1, p2}, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$LaneInfo;->setOptimalLane(II)V

    return-void
.end method

.method static synthetic access$11200(Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$LaneInfo;I)V
    .locals 0

    .line 6688
    invoke-direct {p0, p1}, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$LaneInfo;->addOptimalLane(I)V

    return-void
.end method

.method static synthetic access$11300(Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$LaneInfo;Ljava/lang/Iterable;)V
    .locals 0

    .line 6688
    invoke-direct {p0, p1}, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$LaneInfo;->addAllOptimalLane(Ljava/lang/Iterable;)V

    return-void
.end method

.method static synthetic access$11400(Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$LaneInfo;)V
    .locals 0

    .line 6688
    invoke-direct {p0}, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$LaneInfo;->clearOptimalLane()V

    return-void
.end method

.method static synthetic access$11500(Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$LaneInfo;II)V
    .locals 0

    .line 6688
    invoke-direct {p0, p1, p2}, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$LaneInfo;->setFrontLaneType(II)V

    return-void
.end method

.method static synthetic access$11600(Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$LaneInfo;I)V
    .locals 0

    .line 6688
    invoke-direct {p0, p1}, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$LaneInfo;->addFrontLaneType(I)V

    return-void
.end method

.method static synthetic access$11700(Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$LaneInfo;Ljava/lang/Iterable;)V
    .locals 0

    .line 6688
    invoke-direct {p0, p1}, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$LaneInfo;->addAllFrontLaneType(Ljava/lang/Iterable;)V

    return-void
.end method

.method static synthetic access$11800(Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$LaneInfo;)V
    .locals 0

    .line 6688
    invoke-direct {p0}, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$LaneInfo;->clearFrontLaneType()V

    return-void
.end method

.method static synthetic access$11900(Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$LaneInfo;II)V
    .locals 0

    .line 6688
    invoke-direct {p0, p1, p2}, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$LaneInfo;->setBackLaneType(II)V

    return-void
.end method

.method static synthetic access$12000(Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$LaneInfo;I)V
    .locals 0

    .line 6688
    invoke-direct {p0, p1}, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$LaneInfo;->addBackLaneType(I)V

    return-void
.end method

.method static synthetic access$12100(Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$LaneInfo;Ljava/lang/Iterable;)V
    .locals 0

    .line 6688
    invoke-direct {p0, p1}, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$LaneInfo;->addAllBackLaneType(Ljava/lang/Iterable;)V

    return-void
.end method

.method static synthetic access$12200(Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$LaneInfo;)V
    .locals 0

    .line 6688
    invoke-direct {p0}, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$LaneInfo;->clearBackLaneType()V

    return-void
.end method

.method static synthetic access$12300(Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$LaneInfo;J)V
    .locals 0

    .line 6688
    invoke-direct {p0, p1, p2}, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$LaneInfo;->setNavigationId(J)V

    return-void
.end method

.method static synthetic access$12400(Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$LaneInfo;)V
    .locals 0

    .line 6688
    invoke-direct {p0}, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$LaneInfo;->clearNavigationId()V

    return-void
.end method

.method static synthetic access$8000()Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$LaneInfo;
    .locals 1

    .line 6688
    sget-object v0, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$LaneInfo;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$LaneInfo;

    return-object v0
.end method

.method static synthetic access$8100(Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$LaneInfo;I)V
    .locals 0

    .line 6688
    invoke-direct {p0, p1}, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$LaneInfo;->setLaneType(I)V

    return-void
.end method

.method static synthetic access$8200(Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$LaneInfo;)V
    .locals 0

    .line 6688
    invoke-direct {p0}, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$LaneInfo;->clearLaneType()V

    return-void
.end method

.method static synthetic access$8300(Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$LaneInfo;II)V
    .locals 0

    .line 6688
    invoke-direct {p0, p1, p2}, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$LaneInfo;->setBackLane(II)V

    return-void
.end method

.method static synthetic access$8400(Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$LaneInfo;I)V
    .locals 0

    .line 6688
    invoke-direct {p0, p1}, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$LaneInfo;->addBackLane(I)V

    return-void
.end method

.method static synthetic access$8500(Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$LaneInfo;Ljava/lang/Iterable;)V
    .locals 0

    .line 6688
    invoke-direct {p0, p1}, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$LaneInfo;->addAllBackLane(Ljava/lang/Iterable;)V

    return-void
.end method

.method static synthetic access$8600(Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$LaneInfo;)V
    .locals 0

    .line 6688
    invoke-direct {p0}, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$LaneInfo;->clearBackLane()V

    return-void
.end method

.method static synthetic access$8700(Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$LaneInfo;II)V
    .locals 0

    .line 6688
    invoke-direct {p0, p1, p2}, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$LaneInfo;->setFrontLane(II)V

    return-void
.end method

.method static synthetic access$8800(Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$LaneInfo;I)V
    .locals 0

    .line 6688
    invoke-direct {p0, p1}, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$LaneInfo;->addFrontLane(I)V

    return-void
.end method

.method static synthetic access$8900(Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$LaneInfo;Ljava/lang/Iterable;)V
    .locals 0

    .line 6688
    invoke-direct {p0, p1}, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$LaneInfo;->addAllFrontLane(Ljava/lang/Iterable;)V

    return-void
.end method

.method static synthetic access$9000(Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$LaneInfo;)V
    .locals 0

    .line 6688
    invoke-direct {p0}, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$LaneInfo;->clearFrontLane()V

    return-void
.end method

.method static synthetic access$9100(Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$LaneInfo;II)V
    .locals 0

    .line 6688
    invoke-direct {p0, p1, p2}, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$LaneInfo;->setBackExtenLane(II)V

    return-void
.end method

.method static synthetic access$9200(Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$LaneInfo;I)V
    .locals 0

    .line 6688
    invoke-direct {p0, p1}, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$LaneInfo;->addBackExtenLane(I)V

    return-void
.end method

.method static synthetic access$9300(Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$LaneInfo;Ljava/lang/Iterable;)V
    .locals 0

    .line 6688
    invoke-direct {p0, p1}, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$LaneInfo;->addAllBackExtenLane(Ljava/lang/Iterable;)V

    return-void
.end method

.method static synthetic access$9400(Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$LaneInfo;)V
    .locals 0

    .line 6688
    invoke-direct {p0}, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$LaneInfo;->clearBackExtenLane()V

    return-void
.end method

.method static synthetic access$9500(Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$LaneInfo;II)V
    .locals 0

    .line 6688
    invoke-direct {p0, p1, p2}, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$LaneInfo;->setFrontExtenLane(II)V

    return-void
.end method

.method static synthetic access$9600(Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$LaneInfo;I)V
    .locals 0

    .line 6688
    invoke-direct {p0, p1}, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$LaneInfo;->addFrontExtenLane(I)V

    return-void
.end method

.method static synthetic access$9700(Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$LaneInfo;Ljava/lang/Iterable;)V
    .locals 0

    .line 6688
    invoke-direct {p0, p1}, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$LaneInfo;->addAllFrontExtenLane(Ljava/lang/Iterable;)V

    return-void
.end method

.method static synthetic access$9800(Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$LaneInfo;)V
    .locals 0

    .line 6688
    invoke-direct {p0}, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$LaneInfo;->clearFrontExtenLane()V

    return-void
.end method

.method static synthetic access$9900(Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$LaneInfo;II)V
    .locals 0

    .line 6688
    invoke-direct {p0, p1, p2}, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$LaneInfo;->setExtensionLane(II)V

    return-void
.end method

.method private addAllBackExtenLane(Ljava/lang/Iterable;)V
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

    .line 6974
    invoke-direct {p0}, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$LaneInfo;->ensureBackExtenLaneIsMutable()V

    .line 6975
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$LaneInfo;->backExtenLane_:Lcom/android/carsdk/protobuf/Internal$IntList;

    invoke-static {p1, v0}, Lcom/android/carsdk/protobuf/AbstractMessageLite;->addAll(Ljava/lang/Iterable;Ljava/util/Collection;)V

    return-void
.end method

.method private addAllBackLane(Ljava/lang/Iterable;)V
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

    .line 6802
    invoke-direct {p0}, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$LaneInfo;->ensureBackLaneIsMutable()V

    .line 6803
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$LaneInfo;->backLane_:Lcom/android/carsdk/protobuf/Internal$IntList;

    invoke-static {p1, v0}, Lcom/android/carsdk/protobuf/AbstractMessageLite;->addAll(Ljava/lang/Iterable;Ljava/util/Collection;)V

    return-void
.end method

.method private addAllBackLaneType(Ljava/lang/Iterable;)V
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

    .line 7550
    invoke-direct {p0}, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$LaneInfo;->ensureBackLaneTypeIsMutable()V

    .line 7551
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$LaneInfo;->backLaneType_:Lcom/android/carsdk/protobuf/Internal$IntList;

    invoke-static {p1, v0}, Lcom/android/carsdk/protobuf/AbstractMessageLite;->addAll(Ljava/lang/Iterable;Ljava/util/Collection;)V

    return-void
.end method

.method private addAllExtensionLane(Ljava/lang/Iterable;)V
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

    .line 7146
    invoke-direct {p0}, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$LaneInfo;->ensureExtensionLaneIsMutable()V

    .line 7147
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$LaneInfo;->extensionLane_:Lcom/android/carsdk/protobuf/Internal$IntList;

    invoke-static {p1, v0}, Lcom/android/carsdk/protobuf/AbstractMessageLite;->addAll(Ljava/lang/Iterable;Ljava/util/Collection;)V

    return-void
.end method

.method private addAllFrontExtenLane(Ljava/lang/Iterable;)V
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

    .line 7060
    invoke-direct {p0}, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$LaneInfo;->ensureFrontExtenLaneIsMutable()V

    .line 7061
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$LaneInfo;->frontExtenLane_:Lcom/android/carsdk/protobuf/Internal$IntList;

    invoke-static {p1, v0}, Lcom/android/carsdk/protobuf/AbstractMessageLite;->addAll(Ljava/lang/Iterable;Ljava/util/Collection;)V

    return-void
.end method

.method private addAllFrontLane(Ljava/lang/Iterable;)V
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

    .line 6888
    invoke-direct {p0}, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$LaneInfo;->ensureFrontLaneIsMutable()V

    .line 6889
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$LaneInfo;->frontLane_:Lcom/android/carsdk/protobuf/Internal$IntList;

    invoke-static {p1, v0}, Lcom/android/carsdk/protobuf/AbstractMessageLite;->addAll(Ljava/lang/Iterable;Ljava/util/Collection;)V

    return-void
.end method

.method private addAllFrontLaneType(Ljava/lang/Iterable;)V
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

    .line 7464
    invoke-direct {p0}, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$LaneInfo;->ensureFrontLaneTypeIsMutable()V

    .line 7465
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$LaneInfo;->frontLaneType_:Lcom/android/carsdk/protobuf/Internal$IntList;

    invoke-static {p1, v0}, Lcom/android/carsdk/protobuf/AbstractMessageLite;->addAll(Ljava/lang/Iterable;Ljava/util/Collection;)V

    return-void
.end method

.method private addAllOptimalLane(Ljava/lang/Iterable;)V
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

    .line 7378
    invoke-direct {p0}, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$LaneInfo;->ensureOptimalLaneIsMutable()V

    .line 7379
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$LaneInfo;->optimalLane_:Lcom/android/carsdk/protobuf/Internal$IntList;

    invoke-static {p1, v0}, Lcom/android/carsdk/protobuf/AbstractMessageLite;->addAll(Ljava/lang/Iterable;Ljava/util/Collection;)V

    return-void
.end method

.method private addBackExtenLane(I)V
    .locals 1

    .line 6962
    invoke-direct {p0}, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$LaneInfo;->ensureBackExtenLaneIsMutable()V

    .line 6963
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$LaneInfo;->backExtenLane_:Lcom/android/carsdk/protobuf/Internal$IntList;

    invoke-interface {v0, p1}, Lcom/android/carsdk/protobuf/Internal$IntList;->addInt(I)V

    return-void
.end method

.method private addBackLane(I)V
    .locals 1

    .line 6790
    invoke-direct {p0}, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$LaneInfo;->ensureBackLaneIsMutable()V

    .line 6791
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$LaneInfo;->backLane_:Lcom/android/carsdk/protobuf/Internal$IntList;

    invoke-interface {v0, p1}, Lcom/android/carsdk/protobuf/Internal$IntList;->addInt(I)V

    return-void
.end method

.method private addBackLaneType(I)V
    .locals 1

    .line 7538
    invoke-direct {p0}, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$LaneInfo;->ensureBackLaneTypeIsMutable()V

    .line 7539
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$LaneInfo;->backLaneType_:Lcom/android/carsdk/protobuf/Internal$IntList;

    invoke-interface {v0, p1}, Lcom/android/carsdk/protobuf/Internal$IntList;->addInt(I)V

    return-void
.end method

.method private addExtensionLane(I)V
    .locals 1

    .line 7134
    invoke-direct {p0}, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$LaneInfo;->ensureExtensionLaneIsMutable()V

    .line 7135
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$LaneInfo;->extensionLane_:Lcom/android/carsdk/protobuf/Internal$IntList;

    invoke-interface {v0, p1}, Lcom/android/carsdk/protobuf/Internal$IntList;->addInt(I)V

    return-void
.end method

.method private addFrontExtenLane(I)V
    .locals 1

    .line 7048
    invoke-direct {p0}, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$LaneInfo;->ensureFrontExtenLaneIsMutable()V

    .line 7049
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$LaneInfo;->frontExtenLane_:Lcom/android/carsdk/protobuf/Internal$IntList;

    invoke-interface {v0, p1}, Lcom/android/carsdk/protobuf/Internal$IntList;->addInt(I)V

    return-void
.end method

.method private addFrontLane(I)V
    .locals 1

    .line 6876
    invoke-direct {p0}, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$LaneInfo;->ensureFrontLaneIsMutable()V

    .line 6877
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$LaneInfo;->frontLane_:Lcom/android/carsdk/protobuf/Internal$IntList;

    invoke-interface {v0, p1}, Lcom/android/carsdk/protobuf/Internal$IntList;->addInt(I)V

    return-void
.end method

.method private addFrontLaneType(I)V
    .locals 1

    .line 7452
    invoke-direct {p0}, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$LaneInfo;->ensureFrontLaneTypeIsMutable()V

    .line 7453
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$LaneInfo;->frontLaneType_:Lcom/android/carsdk/protobuf/Internal$IntList;

    invoke-interface {v0, p1}, Lcom/android/carsdk/protobuf/Internal$IntList;->addInt(I)V

    return-void
.end method

.method private addOptimalLane(I)V
    .locals 1

    .line 7366
    invoke-direct {p0}, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$LaneInfo;->ensureOptimalLaneIsMutable()V

    .line 7367
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$LaneInfo;->optimalLane_:Lcom/android/carsdk/protobuf/Internal$IntList;

    invoke-interface {v0, p1}, Lcom/android/carsdk/protobuf/Internal$IntList;->addInt(I)V

    return-void
.end method

.method private clearBackExtenLane()V
    .locals 1

    .line 6986
    invoke-static {}, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$LaneInfo;->emptyIntList()Lcom/android/carsdk/protobuf/Internal$IntList;

    move-result-object v0

    iput-object v0, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$LaneInfo;->backExtenLane_:Lcom/android/carsdk/protobuf/Internal$IntList;

    return-void
.end method

.method private clearBackLane()V
    .locals 1

    .line 6814
    invoke-static {}, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$LaneInfo;->emptyIntList()Lcom/android/carsdk/protobuf/Internal$IntList;

    move-result-object v0

    iput-object v0, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$LaneInfo;->backLane_:Lcom/android/carsdk/protobuf/Internal$IntList;

    return-void
.end method

.method private clearBackLaneType()V
    .locals 1

    .line 7562
    invoke-static {}, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$LaneInfo;->emptyIntList()Lcom/android/carsdk/protobuf/Internal$IntList;

    move-result-object v0

    iput-object v0, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$LaneInfo;->backLaneType_:Lcom/android/carsdk/protobuf/Internal$IntList;

    return-void
.end method

.method private clearExtensionLane()V
    .locals 1

    .line 7158
    invoke-static {}, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$LaneInfo;->emptyIntList()Lcom/android/carsdk/protobuf/Internal$IntList;

    move-result-object v0

    iput-object v0, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$LaneInfo;->extensionLane_:Lcom/android/carsdk/protobuf/Internal$IntList;

    return-void
.end method

.method private clearFrontExtenLane()V
    .locals 1

    .line 7072
    invoke-static {}, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$LaneInfo;->emptyIntList()Lcom/android/carsdk/protobuf/Internal$IntList;

    move-result-object v0

    iput-object v0, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$LaneInfo;->frontExtenLane_:Lcom/android/carsdk/protobuf/Internal$IntList;

    return-void
.end method

.method private clearFrontLane()V
    .locals 1

    .line 6900
    invoke-static {}, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$LaneInfo;->emptyIntList()Lcom/android/carsdk/protobuf/Internal$IntList;

    move-result-object v0

    iput-object v0, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$LaneInfo;->frontLane_:Lcom/android/carsdk/protobuf/Internal$IntList;

    return-void
.end method

.method private clearFrontLaneType()V
    .locals 1

    .line 7476
    invoke-static {}, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$LaneInfo;->emptyIntList()Lcom/android/carsdk/protobuf/Internal$IntList;

    move-result-object v0

    iput-object v0, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$LaneInfo;->frontLaneType_:Lcom/android/carsdk/protobuf/Internal$IntList;

    return-void
.end method

.method private clearLaneType()V
    .locals 1

    const/4 v0, 0x0

    .line 6728
    iput v0, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$LaneInfo;->laneType_:I

    return-void
.end method

.method private clearLinkIdx()V
    .locals 1

    const/4 v0, 0x0

    .line 7304
    iput v0, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$LaneInfo;->linkIdx_:I

    return-void
.end method

.method private clearNavigationId()V
    .locals 2

    const-wide/16 v0, 0x0

    .line 7597
    iput-wide v0, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$LaneInfo;->navigationId_:J

    return-void
.end method

.method private clearOptimalLane()V
    .locals 1

    .line 7390
    invoke-static {}, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$LaneInfo;->emptyIntList()Lcom/android/carsdk/protobuf/Internal$IntList;

    move-result-object v0

    iput-object v0, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$LaneInfo;->optimalLane_:Lcom/android/carsdk/protobuf/Internal$IntList;

    return-void
.end method

.method private clearPoint()V
    .locals 1

    const/4 v0, 0x0

    .line 7233
    iput-object v0, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$LaneInfo;->point_:Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$Coord2DDouble;

    return-void
.end method

.method private clearSegmentIdx()V
    .locals 1

    const/4 v0, 0x0

    .line 7269
    iput v0, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$LaneInfo;->segmentIdx_:I

    return-void
.end method

.method private ensureBackExtenLaneIsMutable()V
    .locals 1

    .line 6937
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$LaneInfo;->backExtenLane_:Lcom/android/carsdk/protobuf/Internal$IntList;

    invoke-interface {v0}, Lcom/android/carsdk/protobuf/Internal$IntList;->isModifiable()Z

    move-result v0

    if-nez v0, :cond_0

    .line 6938
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$LaneInfo;->backExtenLane_:Lcom/android/carsdk/protobuf/Internal$IntList;

    .line 6939
    invoke-static {v0}, Lcom/android/carsdk/protobuf/GeneratedMessageLite;->mutableCopy(Lcom/android/carsdk/protobuf/Internal$IntList;)Lcom/android/carsdk/protobuf/Internal$IntList;

    move-result-object v0

    iput-object v0, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$LaneInfo;->backExtenLane_:Lcom/android/carsdk/protobuf/Internal$IntList;

    :cond_0
    return-void
.end method

.method private ensureBackLaneIsMutable()V
    .locals 1

    .line 6765
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$LaneInfo;->backLane_:Lcom/android/carsdk/protobuf/Internal$IntList;

    invoke-interface {v0}, Lcom/android/carsdk/protobuf/Internal$IntList;->isModifiable()Z

    move-result v0

    if-nez v0, :cond_0

    .line 6766
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$LaneInfo;->backLane_:Lcom/android/carsdk/protobuf/Internal$IntList;

    .line 6767
    invoke-static {v0}, Lcom/android/carsdk/protobuf/GeneratedMessageLite;->mutableCopy(Lcom/android/carsdk/protobuf/Internal$IntList;)Lcom/android/carsdk/protobuf/Internal$IntList;

    move-result-object v0

    iput-object v0, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$LaneInfo;->backLane_:Lcom/android/carsdk/protobuf/Internal$IntList;

    :cond_0
    return-void
.end method

.method private ensureBackLaneTypeIsMutable()V
    .locals 1

    .line 7513
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$LaneInfo;->backLaneType_:Lcom/android/carsdk/protobuf/Internal$IntList;

    invoke-interface {v0}, Lcom/android/carsdk/protobuf/Internal$IntList;->isModifiable()Z

    move-result v0

    if-nez v0, :cond_0

    .line 7514
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$LaneInfo;->backLaneType_:Lcom/android/carsdk/protobuf/Internal$IntList;

    .line 7515
    invoke-static {v0}, Lcom/android/carsdk/protobuf/GeneratedMessageLite;->mutableCopy(Lcom/android/carsdk/protobuf/Internal$IntList;)Lcom/android/carsdk/protobuf/Internal$IntList;

    move-result-object v0

    iput-object v0, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$LaneInfo;->backLaneType_:Lcom/android/carsdk/protobuf/Internal$IntList;

    :cond_0
    return-void
.end method

.method private ensureExtensionLaneIsMutable()V
    .locals 1

    .line 7109
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$LaneInfo;->extensionLane_:Lcom/android/carsdk/protobuf/Internal$IntList;

    invoke-interface {v0}, Lcom/android/carsdk/protobuf/Internal$IntList;->isModifiable()Z

    move-result v0

    if-nez v0, :cond_0

    .line 7110
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$LaneInfo;->extensionLane_:Lcom/android/carsdk/protobuf/Internal$IntList;

    .line 7111
    invoke-static {v0}, Lcom/android/carsdk/protobuf/GeneratedMessageLite;->mutableCopy(Lcom/android/carsdk/protobuf/Internal$IntList;)Lcom/android/carsdk/protobuf/Internal$IntList;

    move-result-object v0

    iput-object v0, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$LaneInfo;->extensionLane_:Lcom/android/carsdk/protobuf/Internal$IntList;

    :cond_0
    return-void
.end method

.method private ensureFrontExtenLaneIsMutable()V
    .locals 1

    .line 7023
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$LaneInfo;->frontExtenLane_:Lcom/android/carsdk/protobuf/Internal$IntList;

    invoke-interface {v0}, Lcom/android/carsdk/protobuf/Internal$IntList;->isModifiable()Z

    move-result v0

    if-nez v0, :cond_0

    .line 7024
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$LaneInfo;->frontExtenLane_:Lcom/android/carsdk/protobuf/Internal$IntList;

    .line 7025
    invoke-static {v0}, Lcom/android/carsdk/protobuf/GeneratedMessageLite;->mutableCopy(Lcom/android/carsdk/protobuf/Internal$IntList;)Lcom/android/carsdk/protobuf/Internal$IntList;

    move-result-object v0

    iput-object v0, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$LaneInfo;->frontExtenLane_:Lcom/android/carsdk/protobuf/Internal$IntList;

    :cond_0
    return-void
.end method

.method private ensureFrontLaneIsMutable()V
    .locals 1

    .line 6851
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$LaneInfo;->frontLane_:Lcom/android/carsdk/protobuf/Internal$IntList;

    invoke-interface {v0}, Lcom/android/carsdk/protobuf/Internal$IntList;->isModifiable()Z

    move-result v0

    if-nez v0, :cond_0

    .line 6852
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$LaneInfo;->frontLane_:Lcom/android/carsdk/protobuf/Internal$IntList;

    .line 6853
    invoke-static {v0}, Lcom/android/carsdk/protobuf/GeneratedMessageLite;->mutableCopy(Lcom/android/carsdk/protobuf/Internal$IntList;)Lcom/android/carsdk/protobuf/Internal$IntList;

    move-result-object v0

    iput-object v0, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$LaneInfo;->frontLane_:Lcom/android/carsdk/protobuf/Internal$IntList;

    :cond_0
    return-void
.end method

.method private ensureFrontLaneTypeIsMutable()V
    .locals 1

    .line 7427
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$LaneInfo;->frontLaneType_:Lcom/android/carsdk/protobuf/Internal$IntList;

    invoke-interface {v0}, Lcom/android/carsdk/protobuf/Internal$IntList;->isModifiable()Z

    move-result v0

    if-nez v0, :cond_0

    .line 7428
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$LaneInfo;->frontLaneType_:Lcom/android/carsdk/protobuf/Internal$IntList;

    .line 7429
    invoke-static {v0}, Lcom/android/carsdk/protobuf/GeneratedMessageLite;->mutableCopy(Lcom/android/carsdk/protobuf/Internal$IntList;)Lcom/android/carsdk/protobuf/Internal$IntList;

    move-result-object v0

    iput-object v0, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$LaneInfo;->frontLaneType_:Lcom/android/carsdk/protobuf/Internal$IntList;

    :cond_0
    return-void
.end method

.method private ensureOptimalLaneIsMutable()V
    .locals 1

    .line 7341
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$LaneInfo;->optimalLane_:Lcom/android/carsdk/protobuf/Internal$IntList;

    invoke-interface {v0}, Lcom/android/carsdk/protobuf/Internal$IntList;->isModifiable()Z

    move-result v0

    if-nez v0, :cond_0

    .line 7342
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$LaneInfo;->optimalLane_:Lcom/android/carsdk/protobuf/Internal$IntList;

    .line 7343
    invoke-static {v0}, Lcom/android/carsdk/protobuf/GeneratedMessageLite;->mutableCopy(Lcom/android/carsdk/protobuf/Internal$IntList;)Lcom/android/carsdk/protobuf/Internal$IntList;

    move-result-object v0

    iput-object v0, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$LaneInfo;->optimalLane_:Lcom/android/carsdk/protobuf/Internal$IntList;

    :cond_0
    return-void
.end method

.method public static getDefaultInstance()Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$LaneInfo;
    .locals 1

    .line 8996
    sget-object v0, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$LaneInfo;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$LaneInfo;

    return-object v0
.end method

.method private mergePoint(Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$Coord2DDouble;)V
    .locals 2

    .line 7217
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$LaneInfo;->point_:Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$Coord2DDouble;

    if-eqz v0, :cond_0

    .line 7218
    invoke-static {}, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$Coord2DDouble;->getDefaultInstance()Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$Coord2DDouble;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 7219
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$LaneInfo;->point_:Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$Coord2DDouble;

    .line 7220
    invoke-static {v0}, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$Coord2DDouble;->newBuilder(Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$Coord2DDouble;)Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$Coord2DDouble$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$Coord2DDouble$Builder;->mergeFrom(Lcom/android/carsdk/protobuf/GeneratedMessageLite;)Lcom/android/carsdk/protobuf/GeneratedMessageLite$Builder;

    move-result-object p1

    check-cast p1, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$Coord2DDouble$Builder;

    invoke-virtual {p1}, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$Coord2DDouble$Builder;->buildPartial()Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$Coord2DDouble;

    iput-object p1, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$LaneInfo;->point_:Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$Coord2DDouble;

    goto :goto_0

    .line 7222
    :cond_0
    iput-object p1, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$LaneInfo;->point_:Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$Coord2DDouble;

    :goto_0
    return-void
.end method

.method public static newBuilder()Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$LaneInfo$Builder;
    .locals 1

    .line 7807
    sget-object v0, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$LaneInfo;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$LaneInfo;

    invoke-virtual {v0}, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$LaneInfo;->toBuilder()Lcom/android/carsdk/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$LaneInfo$Builder;

    return-object v0
.end method

.method public static newBuilder(Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$LaneInfo;)Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$LaneInfo$Builder;
    .locals 1

    .line 7810
    sget-object v0, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$LaneInfo;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$LaneInfo;

    invoke-virtual {v0}, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$LaneInfo;->toBuilder()Lcom/android/carsdk/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$LaneInfo$Builder;

    invoke-virtual {v0, p0}, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$LaneInfo$Builder;->mergeFrom(Lcom/android/carsdk/protobuf/GeneratedMessageLite;)Lcom/android/carsdk/protobuf/GeneratedMessageLite$Builder;

    move-result-object p0

    check-cast p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$LaneInfo$Builder;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$LaneInfo;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 7784
    sget-object v0, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$LaneInfo;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$LaneInfo;

    invoke-static {v0, p0}, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$LaneInfo;->parseDelimitedFrom(Lcom/android/carsdk/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$LaneInfo;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/android/carsdk/protobuf/ExtensionRegistryLite;)Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$LaneInfo;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 7790
    sget-object v0, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$LaneInfo;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$LaneInfo;

    invoke-static {v0, p0, p1}, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$LaneInfo;->parseDelimitedFrom(Lcom/android/carsdk/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/android/carsdk/protobuf/ExtensionRegistryLite;)Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$LaneInfo;

    return-object p0
.end method

.method public static parseFrom(Lcom/android/carsdk/protobuf/ByteString;)Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$LaneInfo;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/carsdk/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 7748
    sget-object v0, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$LaneInfo;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$LaneInfo;

    invoke-static {v0, p0}, Lcom/android/carsdk/protobuf/GeneratedMessageLite;->parseFrom(Lcom/android/carsdk/protobuf/GeneratedMessageLite;Lcom/android/carsdk/protobuf/ByteString;)Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$LaneInfo;

    return-object p0
.end method

.method public static parseFrom(Lcom/android/carsdk/protobuf/ByteString;Lcom/android/carsdk/protobuf/ExtensionRegistryLite;)Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$LaneInfo;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/carsdk/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 7755
    sget-object v0, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$LaneInfo;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$LaneInfo;

    invoke-static {v0, p0, p1}, Lcom/android/carsdk/protobuf/GeneratedMessageLite;->parseFrom(Lcom/android/carsdk/protobuf/GeneratedMessageLite;Lcom/android/carsdk/protobuf/ByteString;Lcom/android/carsdk/protobuf/ExtensionRegistryLite;)Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$LaneInfo;

    return-object p0
.end method

.method public static parseFrom(Lcom/android/carsdk/protobuf/CodedInputStream;)Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$LaneInfo;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 7795
    sget-object v0, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$LaneInfo;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$LaneInfo;

    invoke-static {v0, p0}, Lcom/android/carsdk/protobuf/GeneratedMessageLite;->parseFrom(Lcom/android/carsdk/protobuf/GeneratedMessageLite;Lcom/android/carsdk/protobuf/CodedInputStream;)Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$LaneInfo;

    return-object p0
.end method

.method public static parseFrom(Lcom/android/carsdk/protobuf/CodedInputStream;Lcom/android/carsdk/protobuf/ExtensionRegistryLite;)Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$LaneInfo;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 7802
    sget-object v0, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$LaneInfo;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$LaneInfo;

    invoke-static {v0, p0, p1}, Lcom/android/carsdk/protobuf/GeneratedMessageLite;->parseFrom(Lcom/android/carsdk/protobuf/GeneratedMessageLite;Lcom/android/carsdk/protobuf/CodedInputStream;Lcom/android/carsdk/protobuf/ExtensionRegistryLite;)Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$LaneInfo;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$LaneInfo;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 7772
    sget-object v0, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$LaneInfo;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$LaneInfo;

    invoke-static {v0, p0}, Lcom/android/carsdk/protobuf/GeneratedMessageLite;->parseFrom(Lcom/android/carsdk/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$LaneInfo;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/android/carsdk/protobuf/ExtensionRegistryLite;)Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$LaneInfo;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 7779
    sget-object v0, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$LaneInfo;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$LaneInfo;

    invoke-static {v0, p0, p1}, Lcom/android/carsdk/protobuf/GeneratedMessageLite;->parseFrom(Lcom/android/carsdk/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/android/carsdk/protobuf/ExtensionRegistryLite;)Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$LaneInfo;

    return-object p0
.end method

.method public static parseFrom([B)Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$LaneInfo;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/carsdk/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 7760
    sget-object v0, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$LaneInfo;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$LaneInfo;

    invoke-static {v0, p0}, Lcom/android/carsdk/protobuf/GeneratedMessageLite;->parseFrom(Lcom/android/carsdk/protobuf/GeneratedMessageLite;[B)Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$LaneInfo;

    return-object p0
.end method

.method public static parseFrom([BLcom/android/carsdk/protobuf/ExtensionRegistryLite;)Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$LaneInfo;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/carsdk/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 7767
    sget-object v0, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$LaneInfo;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$LaneInfo;

    invoke-static {v0, p0, p1}, Lcom/android/carsdk/protobuf/GeneratedMessageLite;->parseFrom(Lcom/android/carsdk/protobuf/GeneratedMessageLite;[BLcom/android/carsdk/protobuf/ExtensionRegistryLite;)Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$LaneInfo;

    return-object p0
.end method

.method public static parser()Lcom/android/carsdk/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/android/carsdk/protobuf/Parser<",
            "Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$LaneInfo;",
            ">;"
        }
    .end annotation

    .line 9002
    sget-object v0, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$LaneInfo;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$LaneInfo;

    invoke-virtual {v0}, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$LaneInfo;->getParserForType()Lcom/android/carsdk/protobuf/Parser;

    move-result-object v0

    return-object v0
.end method

.method private setBackExtenLane(II)V
    .locals 1

    .line 6951
    invoke-direct {p0}, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$LaneInfo;->ensureBackExtenLaneIsMutable()V

    .line 6952
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$LaneInfo;->backExtenLane_:Lcom/android/carsdk/protobuf/Internal$IntList;

    invoke-interface {v0, p1, p2}, Lcom/android/carsdk/protobuf/Internal$IntList;->setInt(II)I

    return-void
.end method

.method private setBackLane(II)V
    .locals 1

    .line 6779
    invoke-direct {p0}, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$LaneInfo;->ensureBackLaneIsMutable()V

    .line 6780
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$LaneInfo;->backLane_:Lcom/android/carsdk/protobuf/Internal$IntList;

    invoke-interface {v0, p1, p2}, Lcom/android/carsdk/protobuf/Internal$IntList;->setInt(II)I

    return-void
.end method

.method private setBackLaneType(II)V
    .locals 1

    .line 7527
    invoke-direct {p0}, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$LaneInfo;->ensureBackLaneTypeIsMutable()V

    .line 7528
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$LaneInfo;->backLaneType_:Lcom/android/carsdk/protobuf/Internal$IntList;

    invoke-interface {v0, p1, p2}, Lcom/android/carsdk/protobuf/Internal$IntList;->setInt(II)I

    return-void
.end method

.method private setExtensionLane(II)V
    .locals 1

    .line 7123
    invoke-direct {p0}, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$LaneInfo;->ensureExtensionLaneIsMutable()V

    .line 7124
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$LaneInfo;->extensionLane_:Lcom/android/carsdk/protobuf/Internal$IntList;

    invoke-interface {v0, p1, p2}, Lcom/android/carsdk/protobuf/Internal$IntList;->setInt(II)I

    return-void
.end method

.method private setFrontExtenLane(II)V
    .locals 1

    .line 7037
    invoke-direct {p0}, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$LaneInfo;->ensureFrontExtenLaneIsMutable()V

    .line 7038
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$LaneInfo;->frontExtenLane_:Lcom/android/carsdk/protobuf/Internal$IntList;

    invoke-interface {v0, p1, p2}, Lcom/android/carsdk/protobuf/Internal$IntList;->setInt(II)I

    return-void
.end method

.method private setFrontLane(II)V
    .locals 1

    .line 6865
    invoke-direct {p0}, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$LaneInfo;->ensureFrontLaneIsMutable()V

    .line 6866
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$LaneInfo;->frontLane_:Lcom/android/carsdk/protobuf/Internal$IntList;

    invoke-interface {v0, p1, p2}, Lcom/android/carsdk/protobuf/Internal$IntList;->setInt(II)I

    return-void
.end method

.method private setFrontLaneType(II)V
    .locals 1

    .line 7441
    invoke-direct {p0}, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$LaneInfo;->ensureFrontLaneTypeIsMutable()V

    .line 7442
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$LaneInfo;->frontLaneType_:Lcom/android/carsdk/protobuf/Internal$IntList;

    invoke-interface {v0, p1, p2}, Lcom/android/carsdk/protobuf/Internal$IntList;->setInt(II)I

    return-void
.end method

.method private setLaneType(I)V
    .locals 0

    .line 6721
    iput p1, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$LaneInfo;->laneType_:I

    return-void
.end method

.method private setLinkIdx(I)V
    .locals 0

    .line 7293
    iput p1, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$LaneInfo;->linkIdx_:I

    return-void
.end method

.method private setNavigationId(J)V
    .locals 0

    .line 7586
    iput-wide p1, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$LaneInfo;->navigationId_:J

    return-void
.end method

.method private setOptimalLane(II)V
    .locals 1

    .line 7355
    invoke-direct {p0}, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$LaneInfo;->ensureOptimalLaneIsMutable()V

    .line 7356
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$LaneInfo;->optimalLane_:Lcom/android/carsdk/protobuf/Internal$IntList;

    invoke-interface {v0, p1, p2}, Lcom/android/carsdk/protobuf/Internal$IntList;->setInt(II)I

    return-void
.end method

.method private setPoint(Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$Coord2DDouble$Builder;)V
    .locals 0

    .line 7206
    invoke-virtual {p1}, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$Coord2DDouble$Builder;->build()Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$Coord2DDouble;

    iput-object p1, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$LaneInfo;->point_:Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$Coord2DDouble;

    return-void
.end method

.method private setPoint(Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$Coord2DDouble;)V
    .locals 0

    .line 7192
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 7194
    iput-object p1, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$LaneInfo;->point_:Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$Coord2DDouble;

    return-void
.end method

.method private setSegmentIdx(I)V
    .locals 0

    .line 7258
    iput p1, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$LaneInfo;->segmentIdx_:I

    return-void
.end method


# virtual methods
.method protected final dynamicMethod(Lcom/android/carsdk/protobuf/GeneratedMessageLite$MethodToInvoke;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 9

    .line 8693
    sget-object v0, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$1;->$SwitchMap$com$google$protobuf$GeneratedMessageLite$MethodToInvoke:[I

    invoke-virtual {p1}, Lcom/android/carsdk/protobuf/GeneratedMessageLite$MethodToInvoke;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x1

    packed-switch p1, :pswitch_data_0

    .line 8984
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1

    .line 8975
    :pswitch_0
    sget-object p1, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$LaneInfo;->PARSER:Lcom/android/carsdk/protobuf/Parser;

    if-nez p1, :cond_1

    const-class p1, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$LaneInfo;

    monitor-enter p1

    .line 8976
    :try_start_0
    sget-object p2, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$LaneInfo;->PARSER:Lcom/android/carsdk/protobuf/Parser;

    if-nez p2, :cond_0

    .line 8977
    new-instance p2, Lcom/android/carsdk/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;

    sget-object p3, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$LaneInfo;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$LaneInfo;

    invoke-direct {p2, p3}, Lcom/android/carsdk/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;-><init>(Lcom/android/carsdk/protobuf/GeneratedMessageLite;)V

    sput-object p2, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$LaneInfo;->PARSER:Lcom/android/carsdk/protobuf/Parser;

    .line 8979
    :cond_0
    monitor-exit p1

    goto :goto_0

    :catchall_0
    move-exception p2

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p2

    .line 8981
    :cond_1
    :goto_0
    sget-object p1, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$LaneInfo;->PARSER:Lcom/android/carsdk/protobuf/Parser;

    return-object p1

    .line 8741
    :pswitch_1
    check-cast p2, Lcom/android/carsdk/protobuf/CodedInputStream;

    .line 8743
    check-cast p3, Lcom/android/carsdk/protobuf/ExtensionRegistryLite;

    :cond_2
    :goto_1
    if-nez v1, :cond_1c

    .line 8748
    :try_start_1
    invoke-virtual {p2}, Lcom/android/carsdk/protobuf/CodedInputStream;->readTag()I

    move-result p1

    sparse-switch p1, :sswitch_data_0

    .line 8754
    invoke-virtual {p2, p1}, Lcom/android/carsdk/protobuf/CodedInputStream;->skipField(I)Z

    move-result p1

    goto/16 :goto_c

    .line 8957
    :sswitch_0
    invoke-virtual {p2}, Lcom/android/carsdk/protobuf/CodedInputStream;->readUInt64()J

    move-result-wide v3

    iput-wide v3, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$LaneInfo;->navigationId_:J

    goto :goto_1

    .line 8943
    :sswitch_1
    invoke-virtual {p2}, Lcom/android/carsdk/protobuf/CodedInputStream;->readRawVarint32()I

    move-result p1

    .line 8944
    invoke-virtual {p2, p1}, Lcom/android/carsdk/protobuf/CodedInputStream;->pushLimit(I)I

    move-result p1

    .line 8945
    iget-object v3, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$LaneInfo;->backLaneType_:Lcom/android/carsdk/protobuf/Internal$IntList;

    invoke-interface {v3}, Lcom/android/carsdk/protobuf/Internal$IntList;->isModifiable()Z

    move-result v3

    if-nez v3, :cond_3

    invoke-virtual {p2}, Lcom/android/carsdk/protobuf/CodedInputStream;->getBytesUntilLimit()I

    move-result v3

    if-lez v3, :cond_3

    .line 8946
    iget-object v3, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$LaneInfo;->backLaneType_:Lcom/android/carsdk/protobuf/Internal$IntList;

    .line 8947
    invoke-static {v3}, Lcom/android/carsdk/protobuf/GeneratedMessageLite;->mutableCopy(Lcom/android/carsdk/protobuf/Internal$IntList;)Lcom/android/carsdk/protobuf/Internal$IntList;

    move-result-object v3

    iput-object v3, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$LaneInfo;->backLaneType_:Lcom/android/carsdk/protobuf/Internal$IntList;

    .line 8949
    :cond_3
    :goto_2
    invoke-virtual {p2}, Lcom/android/carsdk/protobuf/CodedInputStream;->getBytesUntilLimit()I

    move-result v3

    if-lez v3, :cond_4

    .line 8950
    iget-object v3, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$LaneInfo;->backLaneType_:Lcom/android/carsdk/protobuf/Internal$IntList;

    invoke-virtual {p2}, Lcom/android/carsdk/protobuf/CodedInputStream;->readInt32()I

    move-result v4

    invoke-interface {v3, v4}, Lcom/android/carsdk/protobuf/Internal$IntList;->addInt(I)V

    goto :goto_2

    .line 8952
    :cond_4
    invoke-virtual {p2, p1}, Lcom/android/carsdk/protobuf/CodedInputStream;->popLimit(I)V

    goto :goto_1

    .line 8935
    :sswitch_2
    iget-object p1, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$LaneInfo;->backLaneType_:Lcom/android/carsdk/protobuf/Internal$IntList;

    invoke-interface {p1}, Lcom/android/carsdk/protobuf/Internal$IntList;->isModifiable()Z

    move-result p1

    if-nez p1, :cond_5

    .line 8936
    iget-object p1, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$LaneInfo;->backLaneType_:Lcom/android/carsdk/protobuf/Internal$IntList;

    .line 8937
    invoke-static {p1}, Lcom/android/carsdk/protobuf/GeneratedMessageLite;->mutableCopy(Lcom/android/carsdk/protobuf/Internal$IntList;)Lcom/android/carsdk/protobuf/Internal$IntList;

    move-result-object p1

    iput-object p1, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$LaneInfo;->backLaneType_:Lcom/android/carsdk/protobuf/Internal$IntList;

    .line 8939
    :cond_5
    iget-object p1, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$LaneInfo;->backLaneType_:Lcom/android/carsdk/protobuf/Internal$IntList;

    invoke-virtual {p2}, Lcom/android/carsdk/protobuf/CodedInputStream;->readInt32()I

    move-result v3

    invoke-interface {p1, v3}, Lcom/android/carsdk/protobuf/Internal$IntList;->addInt(I)V

    goto :goto_1

    .line 8922
    :sswitch_3
    invoke-virtual {p2}, Lcom/android/carsdk/protobuf/CodedInputStream;->readRawVarint32()I

    move-result p1

    .line 8923
    invoke-virtual {p2, p1}, Lcom/android/carsdk/protobuf/CodedInputStream;->pushLimit(I)I

    move-result p1

    .line 8924
    iget-object v3, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$LaneInfo;->frontLaneType_:Lcom/android/carsdk/protobuf/Internal$IntList;

    invoke-interface {v3}, Lcom/android/carsdk/protobuf/Internal$IntList;->isModifiable()Z

    move-result v3

    if-nez v3, :cond_6

    invoke-virtual {p2}, Lcom/android/carsdk/protobuf/CodedInputStream;->getBytesUntilLimit()I

    move-result v3

    if-lez v3, :cond_6

    .line 8925
    iget-object v3, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$LaneInfo;->frontLaneType_:Lcom/android/carsdk/protobuf/Internal$IntList;

    .line 8926
    invoke-static {v3}, Lcom/android/carsdk/protobuf/GeneratedMessageLite;->mutableCopy(Lcom/android/carsdk/protobuf/Internal$IntList;)Lcom/android/carsdk/protobuf/Internal$IntList;

    move-result-object v3

    iput-object v3, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$LaneInfo;->frontLaneType_:Lcom/android/carsdk/protobuf/Internal$IntList;

    .line 8928
    :cond_6
    :goto_3
    invoke-virtual {p2}, Lcom/android/carsdk/protobuf/CodedInputStream;->getBytesUntilLimit()I

    move-result v3

    if-lez v3, :cond_7

    .line 8929
    iget-object v3, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$LaneInfo;->frontLaneType_:Lcom/android/carsdk/protobuf/Internal$IntList;

    invoke-virtual {p2}, Lcom/android/carsdk/protobuf/CodedInputStream;->readInt32()I

    move-result v4

    invoke-interface {v3, v4}, Lcom/android/carsdk/protobuf/Internal$IntList;->addInt(I)V

    goto :goto_3

    .line 8931
    :cond_7
    invoke-virtual {p2, p1}, Lcom/android/carsdk/protobuf/CodedInputStream;->popLimit(I)V

    goto/16 :goto_1

    .line 8914
    :sswitch_4
    iget-object p1, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$LaneInfo;->frontLaneType_:Lcom/android/carsdk/protobuf/Internal$IntList;

    invoke-interface {p1}, Lcom/android/carsdk/protobuf/Internal$IntList;->isModifiable()Z

    move-result p1

    if-nez p1, :cond_8

    .line 8915
    iget-object p1, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$LaneInfo;->frontLaneType_:Lcom/android/carsdk/protobuf/Internal$IntList;

    .line 8916
    invoke-static {p1}, Lcom/android/carsdk/protobuf/GeneratedMessageLite;->mutableCopy(Lcom/android/carsdk/protobuf/Internal$IntList;)Lcom/android/carsdk/protobuf/Internal$IntList;

    move-result-object p1

    iput-object p1, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$LaneInfo;->frontLaneType_:Lcom/android/carsdk/protobuf/Internal$IntList;

    .line 8918
    :cond_8
    iget-object p1, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$LaneInfo;->frontLaneType_:Lcom/android/carsdk/protobuf/Internal$IntList;

    invoke-virtual {p2}, Lcom/android/carsdk/protobuf/CodedInputStream;->readInt32()I

    move-result v3

    invoke-interface {p1, v3}, Lcom/android/carsdk/protobuf/Internal$IntList;->addInt(I)V

    goto/16 :goto_1

    .line 8901
    :sswitch_5
    invoke-virtual {p2}, Lcom/android/carsdk/protobuf/CodedInputStream;->readRawVarint32()I

    move-result p1

    .line 8902
    invoke-virtual {p2, p1}, Lcom/android/carsdk/protobuf/CodedInputStream;->pushLimit(I)I

    move-result p1

    .line 8903
    iget-object v3, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$LaneInfo;->optimalLane_:Lcom/android/carsdk/protobuf/Internal$IntList;

    invoke-interface {v3}, Lcom/android/carsdk/protobuf/Internal$IntList;->isModifiable()Z

    move-result v3

    if-nez v3, :cond_9

    invoke-virtual {p2}, Lcom/android/carsdk/protobuf/CodedInputStream;->getBytesUntilLimit()I

    move-result v3

    if-lez v3, :cond_9

    .line 8904
    iget-object v3, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$LaneInfo;->optimalLane_:Lcom/android/carsdk/protobuf/Internal$IntList;

    .line 8905
    invoke-static {v3}, Lcom/android/carsdk/protobuf/GeneratedMessageLite;->mutableCopy(Lcom/android/carsdk/protobuf/Internal$IntList;)Lcom/android/carsdk/protobuf/Internal$IntList;

    move-result-object v3

    iput-object v3, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$LaneInfo;->optimalLane_:Lcom/android/carsdk/protobuf/Internal$IntList;

    .line 8907
    :cond_9
    :goto_4
    invoke-virtual {p2}, Lcom/android/carsdk/protobuf/CodedInputStream;->getBytesUntilLimit()I

    move-result v3

    if-lez v3, :cond_a

    .line 8908
    iget-object v3, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$LaneInfo;->optimalLane_:Lcom/android/carsdk/protobuf/Internal$IntList;

    invoke-virtual {p2}, Lcom/android/carsdk/protobuf/CodedInputStream;->readInt32()I

    move-result v4

    invoke-interface {v3, v4}, Lcom/android/carsdk/protobuf/Internal$IntList;->addInt(I)V

    goto :goto_4

    .line 8910
    :cond_a
    invoke-virtual {p2, p1}, Lcom/android/carsdk/protobuf/CodedInputStream;->popLimit(I)V

    goto/16 :goto_1

    .line 8893
    :sswitch_6
    iget-object p1, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$LaneInfo;->optimalLane_:Lcom/android/carsdk/protobuf/Internal$IntList;

    invoke-interface {p1}, Lcom/android/carsdk/protobuf/Internal$IntList;->isModifiable()Z

    move-result p1

    if-nez p1, :cond_b

    .line 8894
    iget-object p1, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$LaneInfo;->optimalLane_:Lcom/android/carsdk/protobuf/Internal$IntList;

    .line 8895
    invoke-static {p1}, Lcom/android/carsdk/protobuf/GeneratedMessageLite;->mutableCopy(Lcom/android/carsdk/protobuf/Internal$IntList;)Lcom/android/carsdk/protobuf/Internal$IntList;

    move-result-object p1

    iput-object p1, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$LaneInfo;->optimalLane_:Lcom/android/carsdk/protobuf/Internal$IntList;

    .line 8897
    :cond_b
    iget-object p1, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$LaneInfo;->optimalLane_:Lcom/android/carsdk/protobuf/Internal$IntList;

    invoke-virtual {p2}, Lcom/android/carsdk/protobuf/CodedInputStream;->readInt32()I

    move-result v3

    invoke-interface {p1, v3}, Lcom/android/carsdk/protobuf/Internal$IntList;->addInt(I)V

    goto/16 :goto_1

    .line 8889
    :sswitch_7
    invoke-virtual {p2}, Lcom/android/carsdk/protobuf/CodedInputStream;->readInt32()I

    move-result p1

    iput p1, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$LaneInfo;->linkIdx_:I

    goto/16 :goto_1

    .line 8884
    :sswitch_8
    invoke-virtual {p2}, Lcom/android/carsdk/protobuf/CodedInputStream;->readInt32()I

    move-result p1

    iput p1, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$LaneInfo;->segmentIdx_:I

    goto/16 :goto_1

    .line 8871
    :sswitch_9
    iget-object p1, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$LaneInfo;->point_:Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$Coord2DDouble;

    if-eqz p1, :cond_c

    .line 8872
    invoke-virtual {p1}, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$Coord2DDouble;->toBuilder()Lcom/android/carsdk/protobuf/GeneratedMessageLite$Builder;

    move-result-object p1

    check-cast p1, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$Coord2DDouble$Builder;

    goto :goto_5

    :cond_c
    move-object p1, v0

    .line 8874
    :goto_5
    invoke-static {}, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$Coord2DDouble;->parser()Lcom/android/carsdk/protobuf/Parser;

    move-result-object v3

    invoke-virtual {p2, v3, p3}, Lcom/android/carsdk/protobuf/CodedInputStream;->readMessage(Lcom/android/carsdk/protobuf/Parser;Lcom/android/carsdk/protobuf/ExtensionRegistryLite;)Lcom/android/carsdk/protobuf/MessageLite;

    move-result-object v3

    check-cast v3, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$Coord2DDouble;

    iput-object v3, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$LaneInfo;->point_:Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$Coord2DDouble;

    if-eqz p1, :cond_2

    .line 8876
    invoke-virtual {p1, v3}, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$Coord2DDouble$Builder;->mergeFrom(Lcom/android/carsdk/protobuf/GeneratedMessageLite;)Lcom/android/carsdk/protobuf/GeneratedMessageLite$Builder;

    .line 8877
    invoke-virtual {p1}, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$Coord2DDouble$Builder;->buildPartial()Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$Coord2DDouble;

    iput-object p1, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$LaneInfo;->point_:Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$Coord2DDouble;

    goto/16 :goto_1

    .line 8857
    :sswitch_a
    invoke-virtual {p2}, Lcom/android/carsdk/protobuf/CodedInputStream;->readRawVarint32()I

    move-result p1

    .line 8858
    invoke-virtual {p2, p1}, Lcom/android/carsdk/protobuf/CodedInputStream;->pushLimit(I)I

    move-result p1

    .line 8859
    iget-object v3, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$LaneInfo;->extensionLane_:Lcom/android/carsdk/protobuf/Internal$IntList;

    invoke-interface {v3}, Lcom/android/carsdk/protobuf/Internal$IntList;->isModifiable()Z

    move-result v3

    if-nez v3, :cond_d

    invoke-virtual {p2}, Lcom/android/carsdk/protobuf/CodedInputStream;->getBytesUntilLimit()I

    move-result v3

    if-lez v3, :cond_d

    .line 8860
    iget-object v3, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$LaneInfo;->extensionLane_:Lcom/android/carsdk/protobuf/Internal$IntList;

    .line 8861
    invoke-static {v3}, Lcom/android/carsdk/protobuf/GeneratedMessageLite;->mutableCopy(Lcom/android/carsdk/protobuf/Internal$IntList;)Lcom/android/carsdk/protobuf/Internal$IntList;

    move-result-object v3

    iput-object v3, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$LaneInfo;->extensionLane_:Lcom/android/carsdk/protobuf/Internal$IntList;

    .line 8863
    :cond_d
    :goto_6
    invoke-virtual {p2}, Lcom/android/carsdk/protobuf/CodedInputStream;->getBytesUntilLimit()I

    move-result v3

    if-lez v3, :cond_e

    .line 8864
    iget-object v3, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$LaneInfo;->extensionLane_:Lcom/android/carsdk/protobuf/Internal$IntList;

    invoke-virtual {p2}, Lcom/android/carsdk/protobuf/CodedInputStream;->readInt32()I

    move-result v4

    invoke-interface {v3, v4}, Lcom/android/carsdk/protobuf/Internal$IntList;->addInt(I)V

    goto :goto_6

    .line 8866
    :cond_e
    invoke-virtual {p2, p1}, Lcom/android/carsdk/protobuf/CodedInputStream;->popLimit(I)V

    goto/16 :goto_1

    .line 8849
    :sswitch_b
    iget-object p1, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$LaneInfo;->extensionLane_:Lcom/android/carsdk/protobuf/Internal$IntList;

    invoke-interface {p1}, Lcom/android/carsdk/protobuf/Internal$IntList;->isModifiable()Z

    move-result p1

    if-nez p1, :cond_f

    .line 8850
    iget-object p1, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$LaneInfo;->extensionLane_:Lcom/android/carsdk/protobuf/Internal$IntList;

    .line 8851
    invoke-static {p1}, Lcom/android/carsdk/protobuf/GeneratedMessageLite;->mutableCopy(Lcom/android/carsdk/protobuf/Internal$IntList;)Lcom/android/carsdk/protobuf/Internal$IntList;

    move-result-object p1

    iput-object p1, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$LaneInfo;->extensionLane_:Lcom/android/carsdk/protobuf/Internal$IntList;

    .line 8853
    :cond_f
    iget-object p1, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$LaneInfo;->extensionLane_:Lcom/android/carsdk/protobuf/Internal$IntList;

    invoke-virtual {p2}, Lcom/android/carsdk/protobuf/CodedInputStream;->readInt32()I

    move-result v3

    invoke-interface {p1, v3}, Lcom/android/carsdk/protobuf/Internal$IntList;->addInt(I)V

    goto/16 :goto_1

    .line 8836
    :sswitch_c
    invoke-virtual {p2}, Lcom/android/carsdk/protobuf/CodedInputStream;->readRawVarint32()I

    move-result p1

    .line 8837
    invoke-virtual {p2, p1}, Lcom/android/carsdk/protobuf/CodedInputStream;->pushLimit(I)I

    move-result p1

    .line 8838
    iget-object v3, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$LaneInfo;->frontExtenLane_:Lcom/android/carsdk/protobuf/Internal$IntList;

    invoke-interface {v3}, Lcom/android/carsdk/protobuf/Internal$IntList;->isModifiable()Z

    move-result v3

    if-nez v3, :cond_10

    invoke-virtual {p2}, Lcom/android/carsdk/protobuf/CodedInputStream;->getBytesUntilLimit()I

    move-result v3

    if-lez v3, :cond_10

    .line 8839
    iget-object v3, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$LaneInfo;->frontExtenLane_:Lcom/android/carsdk/protobuf/Internal$IntList;

    .line 8840
    invoke-static {v3}, Lcom/android/carsdk/protobuf/GeneratedMessageLite;->mutableCopy(Lcom/android/carsdk/protobuf/Internal$IntList;)Lcom/android/carsdk/protobuf/Internal$IntList;

    move-result-object v3

    iput-object v3, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$LaneInfo;->frontExtenLane_:Lcom/android/carsdk/protobuf/Internal$IntList;

    .line 8842
    :cond_10
    :goto_7
    invoke-virtual {p2}, Lcom/android/carsdk/protobuf/CodedInputStream;->getBytesUntilLimit()I

    move-result v3

    if-lez v3, :cond_11

    .line 8843
    iget-object v3, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$LaneInfo;->frontExtenLane_:Lcom/android/carsdk/protobuf/Internal$IntList;

    invoke-virtual {p2}, Lcom/android/carsdk/protobuf/CodedInputStream;->readInt32()I

    move-result v4

    invoke-interface {v3, v4}, Lcom/android/carsdk/protobuf/Internal$IntList;->addInt(I)V

    goto :goto_7

    .line 8845
    :cond_11
    invoke-virtual {p2, p1}, Lcom/android/carsdk/protobuf/CodedInputStream;->popLimit(I)V

    goto/16 :goto_1

    .line 8828
    :sswitch_d
    iget-object p1, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$LaneInfo;->frontExtenLane_:Lcom/android/carsdk/protobuf/Internal$IntList;

    invoke-interface {p1}, Lcom/android/carsdk/protobuf/Internal$IntList;->isModifiable()Z

    move-result p1

    if-nez p1, :cond_12

    .line 8829
    iget-object p1, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$LaneInfo;->frontExtenLane_:Lcom/android/carsdk/protobuf/Internal$IntList;

    .line 8830
    invoke-static {p1}, Lcom/android/carsdk/protobuf/GeneratedMessageLite;->mutableCopy(Lcom/android/carsdk/protobuf/Internal$IntList;)Lcom/android/carsdk/protobuf/Internal$IntList;

    move-result-object p1

    iput-object p1, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$LaneInfo;->frontExtenLane_:Lcom/android/carsdk/protobuf/Internal$IntList;

    .line 8832
    :cond_12
    iget-object p1, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$LaneInfo;->frontExtenLane_:Lcom/android/carsdk/protobuf/Internal$IntList;

    invoke-virtual {p2}, Lcom/android/carsdk/protobuf/CodedInputStream;->readInt32()I

    move-result v3

    invoke-interface {p1, v3}, Lcom/android/carsdk/protobuf/Internal$IntList;->addInt(I)V

    goto/16 :goto_1

    .line 8815
    :sswitch_e
    invoke-virtual {p2}, Lcom/android/carsdk/protobuf/CodedInputStream;->readRawVarint32()I

    move-result p1

    .line 8816
    invoke-virtual {p2, p1}, Lcom/android/carsdk/protobuf/CodedInputStream;->pushLimit(I)I

    move-result p1

    .line 8817
    iget-object v3, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$LaneInfo;->backExtenLane_:Lcom/android/carsdk/protobuf/Internal$IntList;

    invoke-interface {v3}, Lcom/android/carsdk/protobuf/Internal$IntList;->isModifiable()Z

    move-result v3

    if-nez v3, :cond_13

    invoke-virtual {p2}, Lcom/android/carsdk/protobuf/CodedInputStream;->getBytesUntilLimit()I

    move-result v3

    if-lez v3, :cond_13

    .line 8818
    iget-object v3, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$LaneInfo;->backExtenLane_:Lcom/android/carsdk/protobuf/Internal$IntList;

    .line 8819
    invoke-static {v3}, Lcom/android/carsdk/protobuf/GeneratedMessageLite;->mutableCopy(Lcom/android/carsdk/protobuf/Internal$IntList;)Lcom/android/carsdk/protobuf/Internal$IntList;

    move-result-object v3

    iput-object v3, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$LaneInfo;->backExtenLane_:Lcom/android/carsdk/protobuf/Internal$IntList;

    .line 8821
    :cond_13
    :goto_8
    invoke-virtual {p2}, Lcom/android/carsdk/protobuf/CodedInputStream;->getBytesUntilLimit()I

    move-result v3

    if-lez v3, :cond_14

    .line 8822
    iget-object v3, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$LaneInfo;->backExtenLane_:Lcom/android/carsdk/protobuf/Internal$IntList;

    invoke-virtual {p2}, Lcom/android/carsdk/protobuf/CodedInputStream;->readInt32()I

    move-result v4

    invoke-interface {v3, v4}, Lcom/android/carsdk/protobuf/Internal$IntList;->addInt(I)V

    goto :goto_8

    .line 8824
    :cond_14
    invoke-virtual {p2, p1}, Lcom/android/carsdk/protobuf/CodedInputStream;->popLimit(I)V

    goto/16 :goto_1

    .line 8807
    :sswitch_f
    iget-object p1, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$LaneInfo;->backExtenLane_:Lcom/android/carsdk/protobuf/Internal$IntList;

    invoke-interface {p1}, Lcom/android/carsdk/protobuf/Internal$IntList;->isModifiable()Z

    move-result p1

    if-nez p1, :cond_15

    .line 8808
    iget-object p1, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$LaneInfo;->backExtenLane_:Lcom/android/carsdk/protobuf/Internal$IntList;

    .line 8809
    invoke-static {p1}, Lcom/android/carsdk/protobuf/GeneratedMessageLite;->mutableCopy(Lcom/android/carsdk/protobuf/Internal$IntList;)Lcom/android/carsdk/protobuf/Internal$IntList;

    move-result-object p1

    iput-object p1, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$LaneInfo;->backExtenLane_:Lcom/android/carsdk/protobuf/Internal$IntList;

    .line 8811
    :cond_15
    iget-object p1, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$LaneInfo;->backExtenLane_:Lcom/android/carsdk/protobuf/Internal$IntList;

    invoke-virtual {p2}, Lcom/android/carsdk/protobuf/CodedInputStream;->readInt32()I

    move-result v3

    invoke-interface {p1, v3}, Lcom/android/carsdk/protobuf/Internal$IntList;->addInt(I)V

    goto/16 :goto_1

    .line 8794
    :sswitch_10
    invoke-virtual {p2}, Lcom/android/carsdk/protobuf/CodedInputStream;->readRawVarint32()I

    move-result p1

    .line 8795
    invoke-virtual {p2, p1}, Lcom/android/carsdk/protobuf/CodedInputStream;->pushLimit(I)I

    move-result p1

    .line 8796
    iget-object v3, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$LaneInfo;->frontLane_:Lcom/android/carsdk/protobuf/Internal$IntList;

    invoke-interface {v3}, Lcom/android/carsdk/protobuf/Internal$IntList;->isModifiable()Z

    move-result v3

    if-nez v3, :cond_16

    invoke-virtual {p2}, Lcom/android/carsdk/protobuf/CodedInputStream;->getBytesUntilLimit()I

    move-result v3

    if-lez v3, :cond_16

    .line 8797
    iget-object v3, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$LaneInfo;->frontLane_:Lcom/android/carsdk/protobuf/Internal$IntList;

    .line 8798
    invoke-static {v3}, Lcom/android/carsdk/protobuf/GeneratedMessageLite;->mutableCopy(Lcom/android/carsdk/protobuf/Internal$IntList;)Lcom/android/carsdk/protobuf/Internal$IntList;

    move-result-object v3

    iput-object v3, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$LaneInfo;->frontLane_:Lcom/android/carsdk/protobuf/Internal$IntList;

    .line 8800
    :cond_16
    :goto_9
    invoke-virtual {p2}, Lcom/android/carsdk/protobuf/CodedInputStream;->getBytesUntilLimit()I

    move-result v3

    if-lez v3, :cond_17

    .line 8801
    iget-object v3, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$LaneInfo;->frontLane_:Lcom/android/carsdk/protobuf/Internal$IntList;

    invoke-virtual {p2}, Lcom/android/carsdk/protobuf/CodedInputStream;->readInt32()I

    move-result v4

    invoke-interface {v3, v4}, Lcom/android/carsdk/protobuf/Internal$IntList;->addInt(I)V

    goto :goto_9

    .line 8803
    :cond_17
    invoke-virtual {p2, p1}, Lcom/android/carsdk/protobuf/CodedInputStream;->popLimit(I)V

    goto/16 :goto_1

    .line 8786
    :sswitch_11
    iget-object p1, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$LaneInfo;->frontLane_:Lcom/android/carsdk/protobuf/Internal$IntList;

    invoke-interface {p1}, Lcom/android/carsdk/protobuf/Internal$IntList;->isModifiable()Z

    move-result p1

    if-nez p1, :cond_18

    .line 8787
    iget-object p1, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$LaneInfo;->frontLane_:Lcom/android/carsdk/protobuf/Internal$IntList;

    .line 8788
    invoke-static {p1}, Lcom/android/carsdk/protobuf/GeneratedMessageLite;->mutableCopy(Lcom/android/carsdk/protobuf/Internal$IntList;)Lcom/android/carsdk/protobuf/Internal$IntList;

    move-result-object p1

    iput-object p1, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$LaneInfo;->frontLane_:Lcom/android/carsdk/protobuf/Internal$IntList;

    .line 8790
    :cond_18
    iget-object p1, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$LaneInfo;->frontLane_:Lcom/android/carsdk/protobuf/Internal$IntList;

    invoke-virtual {p2}, Lcom/android/carsdk/protobuf/CodedInputStream;->readInt32()I

    move-result v3

    invoke-interface {p1, v3}, Lcom/android/carsdk/protobuf/Internal$IntList;->addInt(I)V

    goto/16 :goto_1

    .line 8773
    :sswitch_12
    invoke-virtual {p2}, Lcom/android/carsdk/protobuf/CodedInputStream;->readRawVarint32()I

    move-result p1

    .line 8774
    invoke-virtual {p2, p1}, Lcom/android/carsdk/protobuf/CodedInputStream;->pushLimit(I)I

    move-result p1

    .line 8775
    iget-object v3, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$LaneInfo;->backLane_:Lcom/android/carsdk/protobuf/Internal$IntList;

    invoke-interface {v3}, Lcom/android/carsdk/protobuf/Internal$IntList;->isModifiable()Z

    move-result v3

    if-nez v3, :cond_19

    invoke-virtual {p2}, Lcom/android/carsdk/protobuf/CodedInputStream;->getBytesUntilLimit()I

    move-result v3

    if-lez v3, :cond_19

    .line 8776
    iget-object v3, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$LaneInfo;->backLane_:Lcom/android/carsdk/protobuf/Internal$IntList;

    .line 8777
    invoke-static {v3}, Lcom/android/carsdk/protobuf/GeneratedMessageLite;->mutableCopy(Lcom/android/carsdk/protobuf/Internal$IntList;)Lcom/android/carsdk/protobuf/Internal$IntList;

    move-result-object v3

    iput-object v3, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$LaneInfo;->backLane_:Lcom/android/carsdk/protobuf/Internal$IntList;

    .line 8779
    :cond_19
    :goto_a
    invoke-virtual {p2}, Lcom/android/carsdk/protobuf/CodedInputStream;->getBytesUntilLimit()I

    move-result v3

    if-lez v3, :cond_1a

    .line 8780
    iget-object v3, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$LaneInfo;->backLane_:Lcom/android/carsdk/protobuf/Internal$IntList;

    invoke-virtual {p2}, Lcom/android/carsdk/protobuf/CodedInputStream;->readInt32()I

    move-result v4

    invoke-interface {v3, v4}, Lcom/android/carsdk/protobuf/Internal$IntList;->addInt(I)V

    goto :goto_a

    .line 8782
    :cond_1a
    invoke-virtual {p2, p1}, Lcom/android/carsdk/protobuf/CodedInputStream;->popLimit(I)V

    goto/16 :goto_1

    .line 8765
    :sswitch_13
    iget-object p1, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$LaneInfo;->backLane_:Lcom/android/carsdk/protobuf/Internal$IntList;

    invoke-interface {p1}, Lcom/android/carsdk/protobuf/Internal$IntList;->isModifiable()Z

    move-result p1

    if-nez p1, :cond_1b

    .line 8766
    iget-object p1, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$LaneInfo;->backLane_:Lcom/android/carsdk/protobuf/Internal$IntList;

    .line 8767
    invoke-static {p1}, Lcom/android/carsdk/protobuf/GeneratedMessageLite;->mutableCopy(Lcom/android/carsdk/protobuf/Internal$IntList;)Lcom/android/carsdk/protobuf/Internal$IntList;

    move-result-object p1

    iput-object p1, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$LaneInfo;->backLane_:Lcom/android/carsdk/protobuf/Internal$IntList;

    .line 8769
    :cond_1b
    iget-object p1, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$LaneInfo;->backLane_:Lcom/android/carsdk/protobuf/Internal$IntList;

    invoke-virtual {p2}, Lcom/android/carsdk/protobuf/CodedInputStream;->readInt32()I

    move-result v3

    invoke-interface {p1, v3}, Lcom/android/carsdk/protobuf/Internal$IntList;->addInt(I)V

    goto/16 :goto_1

    .line 8761
    :sswitch_14
    invoke-virtual {p2}, Lcom/android/carsdk/protobuf/CodedInputStream;->readInt32()I

    move-result p1

    iput p1, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$LaneInfo;->laneType_:I
    :try_end_1
    .catch Lcom/android/carsdk/protobuf/InvalidProtocolBufferException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto/16 :goto_1

    :goto_b
    :sswitch_15
    move v1, v2

    goto/16 :goto_1

    :goto_c
    if-nez p1, :cond_2

    goto :goto_b

    :catchall_1
    move-exception p1

    goto :goto_d

    :catch_0
    move-exception p1

    .line 8965
    :try_start_2
    new-instance p2, Ljava/lang/RuntimeException;

    new-instance p3, Lcom/android/carsdk/protobuf/InvalidProtocolBufferException;

    .line 8967
    invoke-virtual {p1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p3, p1}, Lcom/android/carsdk/protobuf/InvalidProtocolBufferException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, p0}, Lcom/android/carsdk/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/android/carsdk/protobuf/MessageLite;)Lcom/android/carsdk/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p2

    :catch_1
    move-exception p1

    .line 8963
    new-instance p2, Ljava/lang/RuntimeException;

    invoke-virtual {p1, p0}, Lcom/android/carsdk/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/android/carsdk/protobuf/MessageLite;)Lcom/android/carsdk/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 8968
    :goto_d
    throw p1

    .line 8972
    :cond_1c
    :pswitch_2
    sget-object p1, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$LaneInfo;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$LaneInfo;

    return-object p1

    .line 8715
    :pswitch_3
    check-cast p2, Lcom/android/carsdk/protobuf/GeneratedMessageLite$Visitor;

    .line 8716
    check-cast p3, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$LaneInfo;

    .line 8717
    iget p1, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$LaneInfo;->laneType_:I

    if-eqz p1, :cond_1d

    move v0, v2

    goto :goto_e

    :cond_1d
    move v0, v1

    :goto_e
    iget v3, p3, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$LaneInfo;->laneType_:I

    if-eqz v3, :cond_1e

    move v4, v2

    goto :goto_f

    :cond_1e
    move v4, v1

    :goto_f
    invoke-interface {p2, v0, p1, v4, v3}, Lcom/android/carsdk/protobuf/GeneratedMessageLite$Visitor;->visitInt(ZIZI)I

    move-result p1

    iput p1, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$LaneInfo;->laneType_:I

    .line 8719
    iget-object p1, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$LaneInfo;->backLane_:Lcom/android/carsdk/protobuf/Internal$IntList;

    iget-object v0, p3, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$LaneInfo;->backLane_:Lcom/android/carsdk/protobuf/Internal$IntList;

    invoke-interface {p2, p1, v0}, Lcom/android/carsdk/protobuf/GeneratedMessageLite$Visitor;->visitIntList(Lcom/android/carsdk/protobuf/Internal$IntList;Lcom/android/carsdk/protobuf/Internal$IntList;)Lcom/android/carsdk/protobuf/Internal$IntList;

    move-result-object p1

    iput-object p1, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$LaneInfo;->backLane_:Lcom/android/carsdk/protobuf/Internal$IntList;

    .line 8720
    iget-object p1, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$LaneInfo;->frontLane_:Lcom/android/carsdk/protobuf/Internal$IntList;

    iget-object v0, p3, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$LaneInfo;->frontLane_:Lcom/android/carsdk/protobuf/Internal$IntList;

    invoke-interface {p2, p1, v0}, Lcom/android/carsdk/protobuf/GeneratedMessageLite$Visitor;->visitIntList(Lcom/android/carsdk/protobuf/Internal$IntList;Lcom/android/carsdk/protobuf/Internal$IntList;)Lcom/android/carsdk/protobuf/Internal$IntList;

    move-result-object p1

    iput-object p1, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$LaneInfo;->frontLane_:Lcom/android/carsdk/protobuf/Internal$IntList;

    .line 8721
    iget-object p1, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$LaneInfo;->backExtenLane_:Lcom/android/carsdk/protobuf/Internal$IntList;

    iget-object v0, p3, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$LaneInfo;->backExtenLane_:Lcom/android/carsdk/protobuf/Internal$IntList;

    invoke-interface {p2, p1, v0}, Lcom/android/carsdk/protobuf/GeneratedMessageLite$Visitor;->visitIntList(Lcom/android/carsdk/protobuf/Internal$IntList;Lcom/android/carsdk/protobuf/Internal$IntList;)Lcom/android/carsdk/protobuf/Internal$IntList;

    move-result-object p1

    iput-object p1, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$LaneInfo;->backExtenLane_:Lcom/android/carsdk/protobuf/Internal$IntList;

    .line 8722
    iget-object p1, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$LaneInfo;->frontExtenLane_:Lcom/android/carsdk/protobuf/Internal$IntList;

    iget-object v0, p3, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$LaneInfo;->frontExtenLane_:Lcom/android/carsdk/protobuf/Internal$IntList;

    invoke-interface {p2, p1, v0}, Lcom/android/carsdk/protobuf/GeneratedMessageLite$Visitor;->visitIntList(Lcom/android/carsdk/protobuf/Internal$IntList;Lcom/android/carsdk/protobuf/Internal$IntList;)Lcom/android/carsdk/protobuf/Internal$IntList;

    move-result-object p1

    iput-object p1, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$LaneInfo;->frontExtenLane_:Lcom/android/carsdk/protobuf/Internal$IntList;

    .line 8723
    iget-object p1, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$LaneInfo;->extensionLane_:Lcom/android/carsdk/protobuf/Internal$IntList;

    iget-object v0, p3, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$LaneInfo;->extensionLane_:Lcom/android/carsdk/protobuf/Internal$IntList;

    invoke-interface {p2, p1, v0}, Lcom/android/carsdk/protobuf/GeneratedMessageLite$Visitor;->visitIntList(Lcom/android/carsdk/protobuf/Internal$IntList;Lcom/android/carsdk/protobuf/Internal$IntList;)Lcom/android/carsdk/protobuf/Internal$IntList;

    move-result-object p1

    iput-object p1, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$LaneInfo;->extensionLane_:Lcom/android/carsdk/protobuf/Internal$IntList;

    .line 8724
    iget-object p1, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$LaneInfo;->point_:Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$Coord2DDouble;

    iget-object v0, p3, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$LaneInfo;->point_:Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$Coord2DDouble;

    invoke-interface {p2, p1, v0}, Lcom/android/carsdk/protobuf/GeneratedMessageLite$Visitor;->visitMessage(Lcom/android/carsdk/protobuf/MessageLite;Lcom/android/carsdk/protobuf/MessageLite;)Lcom/android/carsdk/protobuf/MessageLite;

    move-result-object p1

    check-cast p1, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$Coord2DDouble;

    iput-object p1, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$LaneInfo;->point_:Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$Coord2DDouble;

    .line 8725
    iget p1, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$LaneInfo;->segmentIdx_:I

    if-eqz p1, :cond_1f

    move v0, v2

    goto :goto_10

    :cond_1f
    move v0, v1

    :goto_10
    iget v3, p3, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$LaneInfo;->segmentIdx_:I

    if-eqz v3, :cond_20

    move v4, v2

    goto :goto_11

    :cond_20
    move v4, v1

    :goto_11
    invoke-interface {p2, v0, p1, v4, v3}, Lcom/android/carsdk/protobuf/GeneratedMessageLite$Visitor;->visitInt(ZIZI)I

    move-result p1

    iput p1, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$LaneInfo;->segmentIdx_:I

    .line 8727
    iget p1, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$LaneInfo;->linkIdx_:I

    if-eqz p1, :cond_21

    move v0, v2

    goto :goto_12

    :cond_21
    move v0, v1

    :goto_12
    iget v3, p3, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$LaneInfo;->linkIdx_:I

    if-eqz v3, :cond_22

    move v4, v2

    goto :goto_13

    :cond_22
    move v4, v1

    :goto_13
    invoke-interface {p2, v0, p1, v4, v3}, Lcom/android/carsdk/protobuf/GeneratedMessageLite$Visitor;->visitInt(ZIZI)I

    move-result p1

    iput p1, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$LaneInfo;->linkIdx_:I

    .line 8729
    iget-object p1, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$LaneInfo;->optimalLane_:Lcom/android/carsdk/protobuf/Internal$IntList;

    iget-object v0, p3, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$LaneInfo;->optimalLane_:Lcom/android/carsdk/protobuf/Internal$IntList;

    invoke-interface {p2, p1, v0}, Lcom/android/carsdk/protobuf/GeneratedMessageLite$Visitor;->visitIntList(Lcom/android/carsdk/protobuf/Internal$IntList;Lcom/android/carsdk/protobuf/Internal$IntList;)Lcom/android/carsdk/protobuf/Internal$IntList;

    move-result-object p1

    iput-object p1, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$LaneInfo;->optimalLane_:Lcom/android/carsdk/protobuf/Internal$IntList;

    .line 8730
    iget-object p1, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$LaneInfo;->frontLaneType_:Lcom/android/carsdk/protobuf/Internal$IntList;

    iget-object v0, p3, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$LaneInfo;->frontLaneType_:Lcom/android/carsdk/protobuf/Internal$IntList;

    invoke-interface {p2, p1, v0}, Lcom/android/carsdk/protobuf/GeneratedMessageLite$Visitor;->visitIntList(Lcom/android/carsdk/protobuf/Internal$IntList;Lcom/android/carsdk/protobuf/Internal$IntList;)Lcom/android/carsdk/protobuf/Internal$IntList;

    move-result-object p1

    iput-object p1, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$LaneInfo;->frontLaneType_:Lcom/android/carsdk/protobuf/Internal$IntList;

    .line 8731
    iget-object p1, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$LaneInfo;->backLaneType_:Lcom/android/carsdk/protobuf/Internal$IntList;

    iget-object v0, p3, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$LaneInfo;->backLaneType_:Lcom/android/carsdk/protobuf/Internal$IntList;

    invoke-interface {p2, p1, v0}, Lcom/android/carsdk/protobuf/GeneratedMessageLite$Visitor;->visitIntList(Lcom/android/carsdk/protobuf/Internal$IntList;Lcom/android/carsdk/protobuf/Internal$IntList;)Lcom/android/carsdk/protobuf/Internal$IntList;

    move-result-object p1

    iput-object p1, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$LaneInfo;->backLaneType_:Lcom/android/carsdk/protobuf/Internal$IntList;

    .line 8732
    iget-wide v3, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$LaneInfo;->navigationId_:J

    const-wide/16 v5, 0x0

    cmp-long p1, v3, v5

    if-eqz p1, :cond_23

    move p1, v2

    goto :goto_14

    :cond_23
    move p1, v1

    :goto_14
    iget-wide v7, p3, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$LaneInfo;->navigationId_:J

    cmp-long v0, v7, v5

    if-eqz v0, :cond_24

    move v5, v2

    goto :goto_15

    :cond_24
    move v5, v1

    :goto_15
    move-object v0, p2

    move v1, p1

    move-wide v2, v3

    move v4, v5

    move-wide v5, v7

    invoke-interface/range {v0 .. v6}, Lcom/android/carsdk/protobuf/GeneratedMessageLite$Visitor;->visitLong(ZJZJ)J

    move-result-wide v0

    iput-wide v0, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$LaneInfo;->navigationId_:J

    .line 8734
    sget-object p1, Lcom/android/carsdk/protobuf/GeneratedMessageLite$MergeFromVisitor;->INSTANCE:Lcom/android/carsdk/protobuf/GeneratedMessageLite$MergeFromVisitor;

    if-ne p2, p1, :cond_25

    .line 8736
    iget p1, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$LaneInfo;->bitField0_:I

    iget p2, p3, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$LaneInfo;->bitField0_:I

    or-int/2addr p1, p2

    iput p1, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$LaneInfo;->bitField0_:I

    :cond_25
    return-object p0

    .line 8712
    :pswitch_4
    new-instance p1, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$LaneInfo$Builder;

    invoke-direct {p1, v0}, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$LaneInfo$Builder;-><init>(Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$1;)V

    return-object p1

    .line 8701
    :pswitch_5
    iget-object p1, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$LaneInfo;->backLane_:Lcom/android/carsdk/protobuf/Internal$IntList;

    invoke-interface {p1}, Lcom/android/carsdk/protobuf/Internal$IntList;->makeImmutable()V

    .line 8702
    iget-object p1, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$LaneInfo;->frontLane_:Lcom/android/carsdk/protobuf/Internal$IntList;

    invoke-interface {p1}, Lcom/android/carsdk/protobuf/Internal$IntList;->makeImmutable()V

    .line 8703
    iget-object p1, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$LaneInfo;->backExtenLane_:Lcom/android/carsdk/protobuf/Internal$IntList;

    invoke-interface {p1}, Lcom/android/carsdk/protobuf/Internal$IntList;->makeImmutable()V

    .line 8704
    iget-object p1, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$LaneInfo;->frontExtenLane_:Lcom/android/carsdk/protobuf/Internal$IntList;

    invoke-interface {p1}, Lcom/android/carsdk/protobuf/Internal$IntList;->makeImmutable()V

    .line 8705
    iget-object p1, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$LaneInfo;->extensionLane_:Lcom/android/carsdk/protobuf/Internal$IntList;

    invoke-interface {p1}, Lcom/android/carsdk/protobuf/Internal$IntList;->makeImmutable()V

    .line 8706
    iget-object p1, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$LaneInfo;->optimalLane_:Lcom/android/carsdk/protobuf/Internal$IntList;

    invoke-interface {p1}, Lcom/android/carsdk/protobuf/Internal$IntList;->makeImmutable()V

    .line 8707
    iget-object p1, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$LaneInfo;->frontLaneType_:Lcom/android/carsdk/protobuf/Internal$IntList;

    invoke-interface {p1}, Lcom/android/carsdk/protobuf/Internal$IntList;->makeImmutable()V

    .line 8708
    iget-object p1, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$LaneInfo;->backLaneType_:Lcom/android/carsdk/protobuf/Internal$IntList;

    invoke-interface {p1}, Lcom/android/carsdk/protobuf/Internal$IntList;->makeImmutable()V

    return-object v0

    .line 8698
    :pswitch_6
    sget-object p1, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$LaneInfo;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$LaneInfo;

    return-object p1

    .line 8695
    :pswitch_7
    new-instance p1, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$LaneInfo;

    invoke-direct {p1}, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$LaneInfo;-><init>()V

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
        0x0 -> :sswitch_15
        0x8 -> :sswitch_14
        0x10 -> :sswitch_13
        0x12 -> :sswitch_12
        0x18 -> :sswitch_11
        0x1a -> :sswitch_10
        0x20 -> :sswitch_f
        0x22 -> :sswitch_e
        0x28 -> :sswitch_d
        0x2a -> :sswitch_c
        0x30 -> :sswitch_b
        0x32 -> :sswitch_a
        0x3a -> :sswitch_9
        0x40 -> :sswitch_8
        0x48 -> :sswitch_7
        0x50 -> :sswitch_6
        0x52 -> :sswitch_5
        0x58 -> :sswitch_4
        0x5a -> :sswitch_3
        0x60 -> :sswitch_2
        0x62 -> :sswitch_1
        0x68 -> :sswitch_0
    .end sparse-switch
.end method

.method public getBackExtenLane(I)I
    .locals 1

    .line 6934
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$LaneInfo;->backExtenLane_:Lcom/android/carsdk/protobuf/Internal$IntList;

    invoke-interface {v0, p1}, Lcom/android/carsdk/protobuf/Internal$IntList;->getInt(I)I

    move-result p1

    return p1
.end method

.method public getBackExtenLaneCount()I
    .locals 1

    .line 6924
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$LaneInfo;->backExtenLane_:Lcom/android/carsdk/protobuf/Internal$IntList;

    invoke-interface {v0}, Lcom/android/carsdk/protobuf/Internal$IntList;->size()I

    move-result v0

    return v0
.end method

.method public getBackExtenLaneList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 6914
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$LaneInfo;->backExtenLane_:Lcom/android/carsdk/protobuf/Internal$IntList;

    return-object v0
.end method

.method public getBackLane(I)I
    .locals 1

    .line 6762
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$LaneInfo;->backLane_:Lcom/android/carsdk/protobuf/Internal$IntList;

    invoke-interface {v0, p1}, Lcom/android/carsdk/protobuf/Internal$IntList;->getInt(I)I

    move-result p1

    return p1
.end method

.method public getBackLaneCount()I
    .locals 1

    .line 6752
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$LaneInfo;->backLane_:Lcom/android/carsdk/protobuf/Internal$IntList;

    invoke-interface {v0}, Lcom/android/carsdk/protobuf/Internal$IntList;->size()I

    move-result v0

    return v0
.end method

.method public getBackLaneList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 6742
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$LaneInfo;->backLane_:Lcom/android/carsdk/protobuf/Internal$IntList;

    return-object v0
.end method

.method public getBackLaneType(I)I
    .locals 1

    .line 7510
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$LaneInfo;->backLaneType_:Lcom/android/carsdk/protobuf/Internal$IntList;

    invoke-interface {v0, p1}, Lcom/android/carsdk/protobuf/Internal$IntList;->getInt(I)I

    move-result p1

    return p1
.end method

.method public getBackLaneTypeCount()I
    .locals 1

    .line 7500
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$LaneInfo;->backLaneType_:Lcom/android/carsdk/protobuf/Internal$IntList;

    invoke-interface {v0}, Lcom/android/carsdk/protobuf/Internal$IntList;->size()I

    move-result v0

    return v0
.end method

.method public getBackLaneTypeList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 7490
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$LaneInfo;->backLaneType_:Lcom/android/carsdk/protobuf/Internal$IntList;

    return-object v0
.end method

.method public getExtensionLane(I)I
    .locals 1

    .line 7106
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$LaneInfo;->extensionLane_:Lcom/android/carsdk/protobuf/Internal$IntList;

    invoke-interface {v0, p1}, Lcom/android/carsdk/protobuf/Internal$IntList;->getInt(I)I

    move-result p1

    return p1
.end method

.method public getExtensionLaneCount()I
    .locals 1

    .line 7096
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$LaneInfo;->extensionLane_:Lcom/android/carsdk/protobuf/Internal$IntList;

    invoke-interface {v0}, Lcom/android/carsdk/protobuf/Internal$IntList;->size()I

    move-result v0

    return v0
.end method

.method public getExtensionLaneList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 7086
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$LaneInfo;->extensionLane_:Lcom/android/carsdk/protobuf/Internal$IntList;

    return-object v0
.end method

.method public getFrontExtenLane(I)I
    .locals 1

    .line 7020
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$LaneInfo;->frontExtenLane_:Lcom/android/carsdk/protobuf/Internal$IntList;

    invoke-interface {v0, p1}, Lcom/android/carsdk/protobuf/Internal$IntList;->getInt(I)I

    move-result p1

    return p1
.end method

.method public getFrontExtenLaneCount()I
    .locals 1

    .line 7010
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$LaneInfo;->frontExtenLane_:Lcom/android/carsdk/protobuf/Internal$IntList;

    invoke-interface {v0}, Lcom/android/carsdk/protobuf/Internal$IntList;->size()I

    move-result v0

    return v0
.end method

.method public getFrontExtenLaneList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 7000
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$LaneInfo;->frontExtenLane_:Lcom/android/carsdk/protobuf/Internal$IntList;

    return-object v0
.end method

.method public getFrontLane(I)I
    .locals 1

    .line 6848
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$LaneInfo;->frontLane_:Lcom/android/carsdk/protobuf/Internal$IntList;

    invoke-interface {v0, p1}, Lcom/android/carsdk/protobuf/Internal$IntList;->getInt(I)I

    move-result p1

    return p1
.end method

.method public getFrontLaneCount()I
    .locals 1

    .line 6838
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$LaneInfo;->frontLane_:Lcom/android/carsdk/protobuf/Internal$IntList;

    invoke-interface {v0}, Lcom/android/carsdk/protobuf/Internal$IntList;->size()I

    move-result v0

    return v0
.end method

.method public getFrontLaneList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 6828
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$LaneInfo;->frontLane_:Lcom/android/carsdk/protobuf/Internal$IntList;

    return-object v0
.end method

.method public getFrontLaneType(I)I
    .locals 1

    .line 7424
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$LaneInfo;->frontLaneType_:Lcom/android/carsdk/protobuf/Internal$IntList;

    invoke-interface {v0, p1}, Lcom/android/carsdk/protobuf/Internal$IntList;->getInt(I)I

    move-result p1

    return p1
.end method

.method public getFrontLaneTypeCount()I
    .locals 1

    .line 7414
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$LaneInfo;->frontLaneType_:Lcom/android/carsdk/protobuf/Internal$IntList;

    invoke-interface {v0}, Lcom/android/carsdk/protobuf/Internal$IntList;->size()I

    move-result v0

    return v0
.end method

.method public getFrontLaneTypeList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 7404
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$LaneInfo;->frontLaneType_:Lcom/android/carsdk/protobuf/Internal$IntList;

    return-object v0
.end method

.method public getLaneType()I
    .locals 1

    .line 6714
    iget v0, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$LaneInfo;->laneType_:I

    return v0
.end method

.method public getLinkIdx()I
    .locals 1

    .line 7282
    iget v0, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$LaneInfo;->linkIdx_:I

    return v0
.end method

.method public getNavigationId()J
    .locals 2

    .line 7575
    iget-wide v0, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$LaneInfo;->navigationId_:J

    return-wide v0
.end method

.method public getOptimalLane(I)I
    .locals 1

    .line 7338
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$LaneInfo;->optimalLane_:Lcom/android/carsdk/protobuf/Internal$IntList;

    invoke-interface {v0, p1}, Lcom/android/carsdk/protobuf/Internal$IntList;->getInt(I)I

    move-result p1

    return p1
.end method

.method public getOptimalLaneCount()I
    .locals 1

    .line 7328
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$LaneInfo;->optimalLane_:Lcom/android/carsdk/protobuf/Internal$IntList;

    invoke-interface {v0}, Lcom/android/carsdk/protobuf/Internal$IntList;->size()I

    move-result v0

    return v0
.end method

.method public getOptimalLaneList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 7318
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$LaneInfo;->optimalLane_:Lcom/android/carsdk/protobuf/Internal$IntList;

    return-object v0
.end method

.method public getPoint()Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$Coord2DDouble;
    .locals 1

    .line 7181
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$LaneInfo;->point_:Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$Coord2DDouble;

    if-nez v0, :cond_0

    invoke-static {}, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$Coord2DDouble;->getDefaultInstance()Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$Coord2DDouble;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public getSegmentIdx()I
    .locals 1

    .line 7247
    iget v0, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$LaneInfo;->segmentIdx_:I

    return v0
.end method

.method public getSerializedSize()I
    .locals 6

    .line 7645
    iget v0, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$LaneInfo;->memoizedSerializedSize:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    return v0

    .line 7649
    :cond_0
    iget v0, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$LaneInfo;->laneType_:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    .line 7651
    invoke-static {v1, v0}, Lcom/android/carsdk/protobuf/CodedOutputStream;->computeInt32Size(II)I

    move-result v0

    add-int/2addr v0, v2

    goto :goto_0

    :cond_1
    move v0, v2

    :goto_0
    move v3, v2

    move v4, v3

    .line 7655
    :goto_1
    iget-object v5, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$LaneInfo;->backLane_:Lcom/android/carsdk/protobuf/Internal$IntList;

    invoke-interface {v5}, Lcom/android/carsdk/protobuf/Internal$IntList;->size()I

    move-result v5

    if-ge v3, v5, :cond_2

    .line 7656
    iget-object v5, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$LaneInfo;->backLane_:Lcom/android/carsdk/protobuf/Internal$IntList;

    .line 7657
    invoke-interface {v5, v3}, Lcom/android/carsdk/protobuf/Internal$IntList;->getInt(I)I

    move-result v5

    invoke-static {v5}, Lcom/android/carsdk/protobuf/CodedOutputStream;->computeInt32SizeNoTag(I)I

    move-result v5

    add-int/2addr v4, v5

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_2
    add-int/2addr v0, v4

    .line 7660
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$LaneInfo;->getBackLaneList()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    mul-int/2addr v3, v1

    add-int/2addr v0, v3

    move v3, v2

    move v4, v3

    .line 7664
    :goto_2
    iget-object v5, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$LaneInfo;->frontLane_:Lcom/android/carsdk/protobuf/Internal$IntList;

    invoke-interface {v5}, Lcom/android/carsdk/protobuf/Internal$IntList;->size()I

    move-result v5

    if-ge v3, v5, :cond_3

    .line 7665
    iget-object v5, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$LaneInfo;->frontLane_:Lcom/android/carsdk/protobuf/Internal$IntList;

    .line 7666
    invoke-interface {v5, v3}, Lcom/android/carsdk/protobuf/Internal$IntList;->getInt(I)I

    move-result v5

    invoke-static {v5}, Lcom/android/carsdk/protobuf/CodedOutputStream;->computeInt32SizeNoTag(I)I

    move-result v5

    add-int/2addr v4, v5

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_3
    add-int/2addr v0, v4

    .line 7669
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$LaneInfo;->getFrontLaneList()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    mul-int/2addr v3, v1

    add-int/2addr v0, v3

    move v3, v2

    move v4, v3

    .line 7673
    :goto_3
    iget-object v5, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$LaneInfo;->backExtenLane_:Lcom/android/carsdk/protobuf/Internal$IntList;

    invoke-interface {v5}, Lcom/android/carsdk/protobuf/Internal$IntList;->size()I

    move-result v5

    if-ge v3, v5, :cond_4

    .line 7674
    iget-object v5, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$LaneInfo;->backExtenLane_:Lcom/android/carsdk/protobuf/Internal$IntList;

    .line 7675
    invoke-interface {v5, v3}, Lcom/android/carsdk/protobuf/Internal$IntList;->getInt(I)I

    move-result v5

    invoke-static {v5}, Lcom/android/carsdk/protobuf/CodedOutputStream;->computeInt32SizeNoTag(I)I

    move-result v5

    add-int/2addr v4, v5

    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    :cond_4
    add-int/2addr v0, v4

    .line 7678
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$LaneInfo;->getBackExtenLaneList()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    mul-int/2addr v3, v1

    add-int/2addr v0, v3

    move v3, v2

    move v4, v3

    .line 7682
    :goto_4
    iget-object v5, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$LaneInfo;->frontExtenLane_:Lcom/android/carsdk/protobuf/Internal$IntList;

    invoke-interface {v5}, Lcom/android/carsdk/protobuf/Internal$IntList;->size()I

    move-result v5

    if-ge v3, v5, :cond_5

    .line 7683
    iget-object v5, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$LaneInfo;->frontExtenLane_:Lcom/android/carsdk/protobuf/Internal$IntList;

    .line 7684
    invoke-interface {v5, v3}, Lcom/android/carsdk/protobuf/Internal$IntList;->getInt(I)I

    move-result v5

    invoke-static {v5}, Lcom/android/carsdk/protobuf/CodedOutputStream;->computeInt32SizeNoTag(I)I

    move-result v5

    add-int/2addr v4, v5

    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    :cond_5
    add-int/2addr v0, v4

    .line 7687
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$LaneInfo;->getFrontExtenLaneList()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    mul-int/2addr v3, v1

    add-int/2addr v0, v3

    move v3, v2

    move v4, v3

    .line 7691
    :goto_5
    iget-object v5, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$LaneInfo;->extensionLane_:Lcom/android/carsdk/protobuf/Internal$IntList;

    invoke-interface {v5}, Lcom/android/carsdk/protobuf/Internal$IntList;->size()I

    move-result v5

    if-ge v3, v5, :cond_6

    .line 7692
    iget-object v5, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$LaneInfo;->extensionLane_:Lcom/android/carsdk/protobuf/Internal$IntList;

    .line 7693
    invoke-interface {v5, v3}, Lcom/android/carsdk/protobuf/Internal$IntList;->getInt(I)I

    move-result v5

    invoke-static {v5}, Lcom/android/carsdk/protobuf/CodedOutputStream;->computeInt32SizeNoTag(I)I

    move-result v5

    add-int/2addr v4, v5

    add-int/lit8 v3, v3, 0x1

    goto :goto_5

    :cond_6
    add-int/2addr v0, v4

    .line 7696
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$LaneInfo;->getExtensionLaneList()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    mul-int/2addr v3, v1

    add-int/2addr v0, v3

    .line 7698
    iget-object v3, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$LaneInfo;->point_:Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$Coord2DDouble;

    if-eqz v3, :cond_7

    const/4 v3, 0x7

    .line 7700
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$LaneInfo;->getPoint()Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$Coord2DDouble;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/carsdk/protobuf/CodedOutputStream;->computeMessageSize(ILcom/android/carsdk/protobuf/MessageLite;)I

    move-result v3

    add-int/2addr v0, v3

    .line 7702
    :cond_7
    iget v3, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$LaneInfo;->segmentIdx_:I

    if-eqz v3, :cond_8

    const/16 v4, 0x8

    .line 7704
    invoke-static {v4, v3}, Lcom/android/carsdk/protobuf/CodedOutputStream;->computeInt32Size(II)I

    move-result v3

    add-int/2addr v0, v3

    .line 7706
    :cond_8
    iget v3, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$LaneInfo;->linkIdx_:I

    if-eqz v3, :cond_9

    const/16 v4, 0x9

    .line 7708
    invoke-static {v4, v3}, Lcom/android/carsdk/protobuf/CodedOutputStream;->computeInt32Size(II)I

    move-result v3

    add-int/2addr v0, v3

    :cond_9
    move v3, v2

    move v4, v3

    .line 7712
    :goto_6
    iget-object v5, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$LaneInfo;->optimalLane_:Lcom/android/carsdk/protobuf/Internal$IntList;

    invoke-interface {v5}, Lcom/android/carsdk/protobuf/Internal$IntList;->size()I

    move-result v5

    if-ge v3, v5, :cond_a

    .line 7713
    iget-object v5, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$LaneInfo;->optimalLane_:Lcom/android/carsdk/protobuf/Internal$IntList;

    .line 7714
    invoke-interface {v5, v3}, Lcom/android/carsdk/protobuf/Internal$IntList;->getInt(I)I

    move-result v5

    invoke-static {v5}, Lcom/android/carsdk/protobuf/CodedOutputStream;->computeInt32SizeNoTag(I)I

    move-result v5

    add-int/2addr v4, v5

    add-int/lit8 v3, v3, 0x1

    goto :goto_6

    :cond_a
    add-int/2addr v0, v4

    .line 7717
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$LaneInfo;->getOptimalLaneList()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    mul-int/2addr v3, v1

    add-int/2addr v0, v3

    move v3, v2

    move v4, v3

    .line 7721
    :goto_7
    iget-object v5, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$LaneInfo;->frontLaneType_:Lcom/android/carsdk/protobuf/Internal$IntList;

    invoke-interface {v5}, Lcom/android/carsdk/protobuf/Internal$IntList;->size()I

    move-result v5

    if-ge v3, v5, :cond_b

    .line 7722
    iget-object v5, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$LaneInfo;->frontLaneType_:Lcom/android/carsdk/protobuf/Internal$IntList;

    .line 7723
    invoke-interface {v5, v3}, Lcom/android/carsdk/protobuf/Internal$IntList;->getInt(I)I

    move-result v5

    invoke-static {v5}, Lcom/android/carsdk/protobuf/CodedOutputStream;->computeInt32SizeNoTag(I)I

    move-result v5

    add-int/2addr v4, v5

    add-int/lit8 v3, v3, 0x1

    goto :goto_7

    :cond_b
    add-int/2addr v0, v4

    .line 7726
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$LaneInfo;->getFrontLaneTypeList()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    mul-int/2addr v3, v1

    add-int/2addr v0, v3

    move v3, v2

    .line 7730
    :goto_8
    iget-object v4, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$LaneInfo;->backLaneType_:Lcom/android/carsdk/protobuf/Internal$IntList;

    invoke-interface {v4}, Lcom/android/carsdk/protobuf/Internal$IntList;->size()I

    move-result v4

    if-ge v2, v4, :cond_c

    .line 7731
    iget-object v4, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$LaneInfo;->backLaneType_:Lcom/android/carsdk/protobuf/Internal$IntList;

    .line 7732
    invoke-interface {v4, v2}, Lcom/android/carsdk/protobuf/Internal$IntList;->getInt(I)I

    move-result v4

    invoke-static {v4}, Lcom/android/carsdk/protobuf/CodedOutputStream;->computeInt32SizeNoTag(I)I

    move-result v4

    add-int/2addr v3, v4

    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    :cond_c
    add-int/2addr v0, v3

    .line 7735
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$LaneInfo;->getBackLaneTypeList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    mul-int/2addr v2, v1

    add-int/2addr v0, v2

    .line 7737
    iget-wide v1, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$LaneInfo;->navigationId_:J

    const-wide/16 v3, 0x0

    cmp-long v3, v1, v3

    if-eqz v3, :cond_d

    const/16 v3, 0xd

    .line 7739
    invoke-static {v3, v1, v2}, Lcom/android/carsdk/protobuf/CodedOutputStream;->computeUInt64Size(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 7741
    :cond_d
    iput v0, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$LaneInfo;->memoizedSerializedSize:I

    return v0
.end method

.method public hasPoint()Z
    .locals 1

    .line 7171
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$LaneInfo;->point_:Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$Coord2DDouble;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public writeTo(Lcom/android/carsdk/protobuf/CodedOutputStream;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 7602
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$LaneInfo;->getSerializedSize()I

    .line 7603
    iget v0, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$LaneInfo;->laneType_:I

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    .line 7604
    invoke-virtual {p1, v1, v0}, Lcom/android/carsdk/protobuf/CodedOutputStream;->writeInt32(II)V

    :cond_0
    const/4 v0, 0x0

    move v1, v0

    .line 7606
    :goto_0
    iget-object v2, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$LaneInfo;->backLane_:Lcom/android/carsdk/protobuf/Internal$IntList;

    invoke-interface {v2}, Lcom/android/carsdk/protobuf/Internal$IntList;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    const/4 v2, 0x2

    .line 7607
    iget-object v3, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$LaneInfo;->backLane_:Lcom/android/carsdk/protobuf/Internal$IntList;

    invoke-interface {v3, v1}, Lcom/android/carsdk/protobuf/Internal$IntList;->getInt(I)I

    move-result v3

    invoke-virtual {p1, v2, v3}, Lcom/android/carsdk/protobuf/CodedOutputStream;->writeInt32(II)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    move v1, v0

    .line 7609
    :goto_1
    iget-object v2, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$LaneInfo;->frontLane_:Lcom/android/carsdk/protobuf/Internal$IntList;

    invoke-interface {v2}, Lcom/android/carsdk/protobuf/Internal$IntList;->size()I

    move-result v2

    if-ge v1, v2, :cond_2

    const/4 v2, 0x3

    .line 7610
    iget-object v3, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$LaneInfo;->frontLane_:Lcom/android/carsdk/protobuf/Internal$IntList;

    invoke-interface {v3, v1}, Lcom/android/carsdk/protobuf/Internal$IntList;->getInt(I)I

    move-result v3

    invoke-virtual {p1, v2, v3}, Lcom/android/carsdk/protobuf/CodedOutputStream;->writeInt32(II)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_2
    move v1, v0

    .line 7612
    :goto_2
    iget-object v2, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$LaneInfo;->backExtenLane_:Lcom/android/carsdk/protobuf/Internal$IntList;

    invoke-interface {v2}, Lcom/android/carsdk/protobuf/Internal$IntList;->size()I

    move-result v2

    if-ge v1, v2, :cond_3

    const/4 v2, 0x4

    .line 7613
    iget-object v3, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$LaneInfo;->backExtenLane_:Lcom/android/carsdk/protobuf/Internal$IntList;

    invoke-interface {v3, v1}, Lcom/android/carsdk/protobuf/Internal$IntList;->getInt(I)I

    move-result v3

    invoke-virtual {p1, v2, v3}, Lcom/android/carsdk/protobuf/CodedOutputStream;->writeInt32(II)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_3
    move v1, v0

    .line 7615
    :goto_3
    iget-object v2, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$LaneInfo;->frontExtenLane_:Lcom/android/carsdk/protobuf/Internal$IntList;

    invoke-interface {v2}, Lcom/android/carsdk/protobuf/Internal$IntList;->size()I

    move-result v2

    if-ge v1, v2, :cond_4

    const/4 v2, 0x5

    .line 7616
    iget-object v3, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$LaneInfo;->frontExtenLane_:Lcom/android/carsdk/protobuf/Internal$IntList;

    invoke-interface {v3, v1}, Lcom/android/carsdk/protobuf/Internal$IntList;->getInt(I)I

    move-result v3

    invoke-virtual {p1, v2, v3}, Lcom/android/carsdk/protobuf/CodedOutputStream;->writeInt32(II)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_4
    move v1, v0

    .line 7618
    :goto_4
    iget-object v2, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$LaneInfo;->extensionLane_:Lcom/android/carsdk/protobuf/Internal$IntList;

    invoke-interface {v2}, Lcom/android/carsdk/protobuf/Internal$IntList;->size()I

    move-result v2

    if-ge v1, v2, :cond_5

    const/4 v2, 0x6

    .line 7619
    iget-object v3, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$LaneInfo;->extensionLane_:Lcom/android/carsdk/protobuf/Internal$IntList;

    invoke-interface {v3, v1}, Lcom/android/carsdk/protobuf/Internal$IntList;->getInt(I)I

    move-result v3

    invoke-virtual {p1, v2, v3}, Lcom/android/carsdk/protobuf/CodedOutputStream;->writeInt32(II)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 7621
    :cond_5
    iget-object v1, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$LaneInfo;->point_:Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$Coord2DDouble;

    if-eqz v1, :cond_6

    const/4 v1, 0x7

    .line 7622
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$LaneInfo;->getPoint()Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$Coord2DDouble;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Lcom/android/carsdk/protobuf/CodedOutputStream;->writeMessage(ILcom/android/carsdk/protobuf/MessageLite;)V

    .line 7624
    :cond_6
    iget v1, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$LaneInfo;->segmentIdx_:I

    if-eqz v1, :cond_7

    const/16 v2, 0x8

    .line 7625
    invoke-virtual {p1, v2, v1}, Lcom/android/carsdk/protobuf/CodedOutputStream;->writeInt32(II)V

    .line 7627
    :cond_7
    iget v1, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$LaneInfo;->linkIdx_:I

    if-eqz v1, :cond_8

    const/16 v2, 0x9

    .line 7628
    invoke-virtual {p1, v2, v1}, Lcom/android/carsdk/protobuf/CodedOutputStream;->writeInt32(II)V

    :cond_8
    move v1, v0

    .line 7630
    :goto_5
    iget-object v2, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$LaneInfo;->optimalLane_:Lcom/android/carsdk/protobuf/Internal$IntList;

    invoke-interface {v2}, Lcom/android/carsdk/protobuf/Internal$IntList;->size()I

    move-result v2

    if-ge v1, v2, :cond_9

    const/16 v2, 0xa

    .line 7631
    iget-object v3, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$LaneInfo;->optimalLane_:Lcom/android/carsdk/protobuf/Internal$IntList;

    invoke-interface {v3, v1}, Lcom/android/carsdk/protobuf/Internal$IntList;->getInt(I)I

    move-result v3

    invoke-virtual {p1, v2, v3}, Lcom/android/carsdk/protobuf/CodedOutputStream;->writeInt32(II)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    :cond_9
    move v1, v0

    .line 7633
    :goto_6
    iget-object v2, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$LaneInfo;->frontLaneType_:Lcom/android/carsdk/protobuf/Internal$IntList;

    invoke-interface {v2}, Lcom/android/carsdk/protobuf/Internal$IntList;->size()I

    move-result v2

    if-ge v1, v2, :cond_a

    const/16 v2, 0xb

    .line 7634
    iget-object v3, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$LaneInfo;->frontLaneType_:Lcom/android/carsdk/protobuf/Internal$IntList;

    invoke-interface {v3, v1}, Lcom/android/carsdk/protobuf/Internal$IntList;->getInt(I)I

    move-result v3

    invoke-virtual {p1, v2, v3}, Lcom/android/carsdk/protobuf/CodedOutputStream;->writeInt32(II)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    .line 7636
    :cond_a
    :goto_7
    iget-object v1, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$LaneInfo;->backLaneType_:Lcom/android/carsdk/protobuf/Internal$IntList;

    invoke-interface {v1}, Lcom/android/carsdk/protobuf/Internal$IntList;->size()I

    move-result v1

    if-ge v0, v1, :cond_b

    const/16 v1, 0xc

    .line 7637
    iget-object v2, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$LaneInfo;->backLaneType_:Lcom/android/carsdk/protobuf/Internal$IntList;

    invoke-interface {v2, v0}, Lcom/android/carsdk/protobuf/Internal$IntList;->getInt(I)I

    move-result v2

    invoke-virtual {p1, v1, v2}, Lcom/android/carsdk/protobuf/CodedOutputStream;->writeInt32(II)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    .line 7639
    :cond_b
    iget-wide v0, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$LaneInfo;->navigationId_:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-eqz v2, :cond_c

    const/16 v2, 0xd

    .line 7640
    invoke-virtual {p1, v2, v0, v1}, Lcom/android/carsdk/protobuf/CodedOutputStream;->writeUInt64(IJ)V

    :cond_c
    return-void
.end method
