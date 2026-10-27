.class public final Landroid/car/hardware/xpu/XpuXNgpNaviInfo$LaneInfo;
.super Lcom/android/carsdk/protobuf/GeneratedMessageLite;
.source "XpuXNgpNaviInfo.java"

# interfaces
.implements Landroid/car/hardware/xpu/XpuXNgpNaviInfo$LaneInfoOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/car/hardware/xpu/XpuXNgpNaviInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "LaneInfo"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/car/hardware/xpu/XpuXNgpNaviInfo$LaneInfo$Builder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/carsdk/protobuf/GeneratedMessageLite<",
        "Landroid/car/hardware/xpu/XpuXNgpNaviInfo$LaneInfo;",
        "Landroid/car/hardware/xpu/XpuXNgpNaviInfo$LaneInfo$Builder;",
        ">;",
        "Landroid/car/hardware/xpu/XpuXNgpNaviInfo$LaneInfoOrBuilder;"
    }
.end annotation


# static fields
.field public static final BACKEXTENLANE_FIELD_NUMBER:I = 0x4

.field public static final BACKLANETYPE_FIELD_NUMBER:I = 0xc

.field public static final BACKLANE_FIELD_NUMBER:I = 0x2

.field private static final DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuXNgpNaviInfo$LaneInfo;

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
            "Landroid/car/hardware/xpu/XpuXNgpNaviInfo$LaneInfo;",
            ">;"
        }
    .end annotation
.end field

.field public static final POINTENDIDX_FIELD_NUMBER:I = 0xf

.field public static final POINTSTARTIDX_FIELD_NUMBER:I = 0xe

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

.field private pointEndIdx_:J

.field private pointStartIdx_:J

.field private point_:Landroid/car/hardware/xpu/XpuXNgpNaviInfo$Coord2DDouble;

.field private segmentIdx_:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 9522
    new-instance v0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$LaneInfo;

    invoke-direct {v0}, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$LaneInfo;-><init>()V

    sput-object v0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$LaneInfo;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuXNgpNaviInfo$LaneInfo;

    .line 9523
    invoke-virtual {v0}, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$LaneInfo;->makeImmutable()V

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .line 7060
    invoke-direct {p0}, Lcom/android/carsdk/protobuf/GeneratedMessageLite;-><init>()V

    const/4 v0, 0x0

    .line 7061
    iput v0, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$LaneInfo;->laneType_:I

    .line 7062
    invoke-static {}, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$LaneInfo;->emptyIntList()Lcom/android/carsdk/protobuf/Internal$IntList;

    move-result-object v1

    iput-object v1, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$LaneInfo;->backLane_:Lcom/android/carsdk/protobuf/Internal$IntList;

    .line 7063
    invoke-static {}, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$LaneInfo;->emptyIntList()Lcom/android/carsdk/protobuf/Internal$IntList;

    move-result-object v1

    iput-object v1, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$LaneInfo;->frontLane_:Lcom/android/carsdk/protobuf/Internal$IntList;

    .line 7064
    invoke-static {}, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$LaneInfo;->emptyIntList()Lcom/android/carsdk/protobuf/Internal$IntList;

    move-result-object v1

    iput-object v1, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$LaneInfo;->backExtenLane_:Lcom/android/carsdk/protobuf/Internal$IntList;

    .line 7065
    invoke-static {}, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$LaneInfo;->emptyIntList()Lcom/android/carsdk/protobuf/Internal$IntList;

    move-result-object v1

    iput-object v1, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$LaneInfo;->frontExtenLane_:Lcom/android/carsdk/protobuf/Internal$IntList;

    .line 7066
    invoke-static {}, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$LaneInfo;->emptyIntList()Lcom/android/carsdk/protobuf/Internal$IntList;

    move-result-object v1

    iput-object v1, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$LaneInfo;->extensionLane_:Lcom/android/carsdk/protobuf/Internal$IntList;

    .line 7067
    iput v0, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$LaneInfo;->segmentIdx_:I

    .line 7068
    iput v0, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$LaneInfo;->linkIdx_:I

    .line 7069
    invoke-static {}, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$LaneInfo;->emptyIntList()Lcom/android/carsdk/protobuf/Internal$IntList;

    move-result-object v0

    iput-object v0, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$LaneInfo;->optimalLane_:Lcom/android/carsdk/protobuf/Internal$IntList;

    .line 7070
    invoke-static {}, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$LaneInfo;->emptyIntList()Lcom/android/carsdk/protobuf/Internal$IntList;

    move-result-object v0

    iput-object v0, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$LaneInfo;->frontLaneType_:Lcom/android/carsdk/protobuf/Internal$IntList;

    .line 7071
    invoke-static {}, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$LaneInfo;->emptyIntList()Lcom/android/carsdk/protobuf/Internal$IntList;

    move-result-object v0

    iput-object v0, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$LaneInfo;->backLaneType_:Lcom/android/carsdk/protobuf/Internal$IntList;

    const-wide/16 v0, 0x0

    .line 7072
    iput-wide v0, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$LaneInfo;->navigationId_:J

    .line 7073
    iput-wide v0, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$LaneInfo;->pointStartIdx_:J

    .line 7074
    iput-wide v0, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$LaneInfo;->pointEndIdx_:J

    return-void
.end method

.method static synthetic access$10000(Landroid/car/hardware/xpu/XpuXNgpNaviInfo$LaneInfo;Ljava/lang/Iterable;)V
    .locals 0

    .line 7055
    invoke-direct {p0, p1}, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$LaneInfo;->addAllBackExtenLane(Ljava/lang/Iterable;)V

    return-void
.end method

.method static synthetic access$10100(Landroid/car/hardware/xpu/XpuXNgpNaviInfo$LaneInfo;)V
    .locals 0

    .line 7055
    invoke-direct {p0}, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$LaneInfo;->clearBackExtenLane()V

    return-void
.end method

.method static synthetic access$10200(Landroid/car/hardware/xpu/XpuXNgpNaviInfo$LaneInfo;II)V
    .locals 0

    .line 7055
    invoke-direct {p0, p1, p2}, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$LaneInfo;->setFrontExtenLane(II)V

    return-void
.end method

.method static synthetic access$10300(Landroid/car/hardware/xpu/XpuXNgpNaviInfo$LaneInfo;I)V
    .locals 0

    .line 7055
    invoke-direct {p0, p1}, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$LaneInfo;->addFrontExtenLane(I)V

    return-void
.end method

.method static synthetic access$10400(Landroid/car/hardware/xpu/XpuXNgpNaviInfo$LaneInfo;Ljava/lang/Iterable;)V
    .locals 0

    .line 7055
    invoke-direct {p0, p1}, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$LaneInfo;->addAllFrontExtenLane(Ljava/lang/Iterable;)V

    return-void
.end method

.method static synthetic access$10500(Landroid/car/hardware/xpu/XpuXNgpNaviInfo$LaneInfo;)V
    .locals 0

    .line 7055
    invoke-direct {p0}, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$LaneInfo;->clearFrontExtenLane()V

    return-void
.end method

.method static synthetic access$10600(Landroid/car/hardware/xpu/XpuXNgpNaviInfo$LaneInfo;II)V
    .locals 0

    .line 7055
    invoke-direct {p0, p1, p2}, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$LaneInfo;->setExtensionLane(II)V

    return-void
.end method

.method static synthetic access$10700(Landroid/car/hardware/xpu/XpuXNgpNaviInfo$LaneInfo;I)V
    .locals 0

    .line 7055
    invoke-direct {p0, p1}, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$LaneInfo;->addExtensionLane(I)V

    return-void
.end method

.method static synthetic access$10800(Landroid/car/hardware/xpu/XpuXNgpNaviInfo$LaneInfo;Ljava/lang/Iterable;)V
    .locals 0

    .line 7055
    invoke-direct {p0, p1}, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$LaneInfo;->addAllExtensionLane(Ljava/lang/Iterable;)V

    return-void
.end method

.method static synthetic access$10900(Landroid/car/hardware/xpu/XpuXNgpNaviInfo$LaneInfo;)V
    .locals 0

    .line 7055
    invoke-direct {p0}, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$LaneInfo;->clearExtensionLane()V

    return-void
.end method

.method static synthetic access$11000(Landroid/car/hardware/xpu/XpuXNgpNaviInfo$LaneInfo;Landroid/car/hardware/xpu/XpuXNgpNaviInfo$Coord2DDouble;)V
    .locals 0

    .line 7055
    invoke-direct {p0, p1}, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$LaneInfo;->setPoint(Landroid/car/hardware/xpu/XpuXNgpNaviInfo$Coord2DDouble;)V

    return-void
.end method

.method static synthetic access$11100(Landroid/car/hardware/xpu/XpuXNgpNaviInfo$LaneInfo;Landroid/car/hardware/xpu/XpuXNgpNaviInfo$Coord2DDouble$Builder;)V
    .locals 0

    .line 7055
    invoke-direct {p0, p1}, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$LaneInfo;->setPoint(Landroid/car/hardware/xpu/XpuXNgpNaviInfo$Coord2DDouble$Builder;)V

    return-void
.end method

.method static synthetic access$11200(Landroid/car/hardware/xpu/XpuXNgpNaviInfo$LaneInfo;Landroid/car/hardware/xpu/XpuXNgpNaviInfo$Coord2DDouble;)V
    .locals 0

    .line 7055
    invoke-direct {p0, p1}, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$LaneInfo;->mergePoint(Landroid/car/hardware/xpu/XpuXNgpNaviInfo$Coord2DDouble;)V

    return-void
.end method

.method static synthetic access$11300(Landroid/car/hardware/xpu/XpuXNgpNaviInfo$LaneInfo;)V
    .locals 0

    .line 7055
    invoke-direct {p0}, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$LaneInfo;->clearPoint()V

    return-void
.end method

.method static synthetic access$11400(Landroid/car/hardware/xpu/XpuXNgpNaviInfo$LaneInfo;I)V
    .locals 0

    .line 7055
    invoke-direct {p0, p1}, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$LaneInfo;->setSegmentIdx(I)V

    return-void
.end method

.method static synthetic access$11500(Landroid/car/hardware/xpu/XpuXNgpNaviInfo$LaneInfo;)V
    .locals 0

    .line 7055
    invoke-direct {p0}, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$LaneInfo;->clearSegmentIdx()V

    return-void
.end method

.method static synthetic access$11600(Landroid/car/hardware/xpu/XpuXNgpNaviInfo$LaneInfo;I)V
    .locals 0

    .line 7055
    invoke-direct {p0, p1}, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$LaneInfo;->setLinkIdx(I)V

    return-void
.end method

.method static synthetic access$11700(Landroid/car/hardware/xpu/XpuXNgpNaviInfo$LaneInfo;)V
    .locals 0

    .line 7055
    invoke-direct {p0}, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$LaneInfo;->clearLinkIdx()V

    return-void
.end method

.method static synthetic access$11800(Landroid/car/hardware/xpu/XpuXNgpNaviInfo$LaneInfo;II)V
    .locals 0

    .line 7055
    invoke-direct {p0, p1, p2}, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$LaneInfo;->setOptimalLane(II)V

    return-void
.end method

.method static synthetic access$11900(Landroid/car/hardware/xpu/XpuXNgpNaviInfo$LaneInfo;I)V
    .locals 0

    .line 7055
    invoke-direct {p0, p1}, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$LaneInfo;->addOptimalLane(I)V

    return-void
.end method

.method static synthetic access$12000(Landroid/car/hardware/xpu/XpuXNgpNaviInfo$LaneInfo;Ljava/lang/Iterable;)V
    .locals 0

    .line 7055
    invoke-direct {p0, p1}, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$LaneInfo;->addAllOptimalLane(Ljava/lang/Iterable;)V

    return-void
.end method

.method static synthetic access$12100(Landroid/car/hardware/xpu/XpuXNgpNaviInfo$LaneInfo;)V
    .locals 0

    .line 7055
    invoke-direct {p0}, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$LaneInfo;->clearOptimalLane()V

    return-void
.end method

.method static synthetic access$12200(Landroid/car/hardware/xpu/XpuXNgpNaviInfo$LaneInfo;II)V
    .locals 0

    .line 7055
    invoke-direct {p0, p1, p2}, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$LaneInfo;->setFrontLaneType(II)V

    return-void
.end method

.method static synthetic access$12300(Landroid/car/hardware/xpu/XpuXNgpNaviInfo$LaneInfo;I)V
    .locals 0

    .line 7055
    invoke-direct {p0, p1}, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$LaneInfo;->addFrontLaneType(I)V

    return-void
.end method

.method static synthetic access$12400(Landroid/car/hardware/xpu/XpuXNgpNaviInfo$LaneInfo;Ljava/lang/Iterable;)V
    .locals 0

    .line 7055
    invoke-direct {p0, p1}, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$LaneInfo;->addAllFrontLaneType(Ljava/lang/Iterable;)V

    return-void
.end method

.method static synthetic access$12500(Landroid/car/hardware/xpu/XpuXNgpNaviInfo$LaneInfo;)V
    .locals 0

    .line 7055
    invoke-direct {p0}, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$LaneInfo;->clearFrontLaneType()V

    return-void
.end method

.method static synthetic access$12600(Landroid/car/hardware/xpu/XpuXNgpNaviInfo$LaneInfo;II)V
    .locals 0

    .line 7055
    invoke-direct {p0, p1, p2}, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$LaneInfo;->setBackLaneType(II)V

    return-void
.end method

.method static synthetic access$12700(Landroid/car/hardware/xpu/XpuXNgpNaviInfo$LaneInfo;I)V
    .locals 0

    .line 7055
    invoke-direct {p0, p1}, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$LaneInfo;->addBackLaneType(I)V

    return-void
.end method

.method static synthetic access$12800(Landroid/car/hardware/xpu/XpuXNgpNaviInfo$LaneInfo;Ljava/lang/Iterable;)V
    .locals 0

    .line 7055
    invoke-direct {p0, p1}, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$LaneInfo;->addAllBackLaneType(Ljava/lang/Iterable;)V

    return-void
.end method

.method static synthetic access$12900(Landroid/car/hardware/xpu/XpuXNgpNaviInfo$LaneInfo;)V
    .locals 0

    .line 7055
    invoke-direct {p0}, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$LaneInfo;->clearBackLaneType()V

    return-void
.end method

.method static synthetic access$13000(Landroid/car/hardware/xpu/XpuXNgpNaviInfo$LaneInfo;J)V
    .locals 0

    .line 7055
    invoke-direct {p0, p1, p2}, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$LaneInfo;->setNavigationId(J)V

    return-void
.end method

.method static synthetic access$13100(Landroid/car/hardware/xpu/XpuXNgpNaviInfo$LaneInfo;)V
    .locals 0

    .line 7055
    invoke-direct {p0}, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$LaneInfo;->clearNavigationId()V

    return-void
.end method

.method static synthetic access$13200(Landroid/car/hardware/xpu/XpuXNgpNaviInfo$LaneInfo;J)V
    .locals 0

    .line 7055
    invoke-direct {p0, p1, p2}, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$LaneInfo;->setPointStartIdx(J)V

    return-void
.end method

.method static synthetic access$13300(Landroid/car/hardware/xpu/XpuXNgpNaviInfo$LaneInfo;)V
    .locals 0

    .line 7055
    invoke-direct {p0}, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$LaneInfo;->clearPointStartIdx()V

    return-void
.end method

.method static synthetic access$13400(Landroid/car/hardware/xpu/XpuXNgpNaviInfo$LaneInfo;J)V
    .locals 0

    .line 7055
    invoke-direct {p0, p1, p2}, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$LaneInfo;->setPointEndIdx(J)V

    return-void
.end method

.method static synthetic access$13500(Landroid/car/hardware/xpu/XpuXNgpNaviInfo$LaneInfo;)V
    .locals 0

    .line 7055
    invoke-direct {p0}, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$LaneInfo;->clearPointEndIdx()V

    return-void
.end method

.method static synthetic access$8700()Landroid/car/hardware/xpu/XpuXNgpNaviInfo$LaneInfo;
    .locals 1

    .line 7055
    sget-object v0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$LaneInfo;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuXNgpNaviInfo$LaneInfo;

    return-object v0
.end method

.method static synthetic access$8800(Landroid/car/hardware/xpu/XpuXNgpNaviInfo$LaneInfo;I)V
    .locals 0

    .line 7055
    invoke-direct {p0, p1}, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$LaneInfo;->setLaneType(I)V

    return-void
.end method

.method static synthetic access$8900(Landroid/car/hardware/xpu/XpuXNgpNaviInfo$LaneInfo;)V
    .locals 0

    .line 7055
    invoke-direct {p0}, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$LaneInfo;->clearLaneType()V

    return-void
.end method

.method static synthetic access$9000(Landroid/car/hardware/xpu/XpuXNgpNaviInfo$LaneInfo;II)V
    .locals 0

    .line 7055
    invoke-direct {p0, p1, p2}, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$LaneInfo;->setBackLane(II)V

    return-void
.end method

.method static synthetic access$9100(Landroid/car/hardware/xpu/XpuXNgpNaviInfo$LaneInfo;I)V
    .locals 0

    .line 7055
    invoke-direct {p0, p1}, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$LaneInfo;->addBackLane(I)V

    return-void
.end method

.method static synthetic access$9200(Landroid/car/hardware/xpu/XpuXNgpNaviInfo$LaneInfo;Ljava/lang/Iterable;)V
    .locals 0

    .line 7055
    invoke-direct {p0, p1}, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$LaneInfo;->addAllBackLane(Ljava/lang/Iterable;)V

    return-void
.end method

.method static synthetic access$9300(Landroid/car/hardware/xpu/XpuXNgpNaviInfo$LaneInfo;)V
    .locals 0

    .line 7055
    invoke-direct {p0}, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$LaneInfo;->clearBackLane()V

    return-void
.end method

.method static synthetic access$9400(Landroid/car/hardware/xpu/XpuXNgpNaviInfo$LaneInfo;II)V
    .locals 0

    .line 7055
    invoke-direct {p0, p1, p2}, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$LaneInfo;->setFrontLane(II)V

    return-void
.end method

.method static synthetic access$9500(Landroid/car/hardware/xpu/XpuXNgpNaviInfo$LaneInfo;I)V
    .locals 0

    .line 7055
    invoke-direct {p0, p1}, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$LaneInfo;->addFrontLane(I)V

    return-void
.end method

.method static synthetic access$9600(Landroid/car/hardware/xpu/XpuXNgpNaviInfo$LaneInfo;Ljava/lang/Iterable;)V
    .locals 0

    .line 7055
    invoke-direct {p0, p1}, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$LaneInfo;->addAllFrontLane(Ljava/lang/Iterable;)V

    return-void
.end method

.method static synthetic access$9700(Landroid/car/hardware/xpu/XpuXNgpNaviInfo$LaneInfo;)V
    .locals 0

    .line 7055
    invoke-direct {p0}, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$LaneInfo;->clearFrontLane()V

    return-void
.end method

.method static synthetic access$9800(Landroid/car/hardware/xpu/XpuXNgpNaviInfo$LaneInfo;II)V
    .locals 0

    .line 7055
    invoke-direct {p0, p1, p2}, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$LaneInfo;->setBackExtenLane(II)V

    return-void
.end method

.method static synthetic access$9900(Landroid/car/hardware/xpu/XpuXNgpNaviInfo$LaneInfo;I)V
    .locals 0

    .line 7055
    invoke-direct {p0, p1}, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$LaneInfo;->addBackExtenLane(I)V

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

    .line 7343
    invoke-direct {p0}, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$LaneInfo;->ensureBackExtenLaneIsMutable()V

    .line 7344
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$LaneInfo;->backExtenLane_:Lcom/android/carsdk/protobuf/Internal$IntList;

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

    .line 7171
    invoke-direct {p0}, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$LaneInfo;->ensureBackLaneIsMutable()V

    .line 7172
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$LaneInfo;->backLane_:Lcom/android/carsdk/protobuf/Internal$IntList;

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

    .line 7919
    invoke-direct {p0}, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$LaneInfo;->ensureBackLaneTypeIsMutable()V

    .line 7920
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$LaneInfo;->backLaneType_:Lcom/android/carsdk/protobuf/Internal$IntList;

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

    .line 7515
    invoke-direct {p0}, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$LaneInfo;->ensureExtensionLaneIsMutable()V

    .line 7516
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$LaneInfo;->extensionLane_:Lcom/android/carsdk/protobuf/Internal$IntList;

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

    .line 7429
    invoke-direct {p0}, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$LaneInfo;->ensureFrontExtenLaneIsMutable()V

    .line 7430
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$LaneInfo;->frontExtenLane_:Lcom/android/carsdk/protobuf/Internal$IntList;

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

    .line 7257
    invoke-direct {p0}, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$LaneInfo;->ensureFrontLaneIsMutable()V

    .line 7258
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$LaneInfo;->frontLane_:Lcom/android/carsdk/protobuf/Internal$IntList;

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

    .line 7833
    invoke-direct {p0}, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$LaneInfo;->ensureFrontLaneTypeIsMutable()V

    .line 7834
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$LaneInfo;->frontLaneType_:Lcom/android/carsdk/protobuf/Internal$IntList;

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

    .line 7747
    invoke-direct {p0}, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$LaneInfo;->ensureOptimalLaneIsMutable()V

    .line 7748
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$LaneInfo;->optimalLane_:Lcom/android/carsdk/protobuf/Internal$IntList;

    invoke-static {p1, v0}, Lcom/android/carsdk/protobuf/AbstractMessageLite;->addAll(Ljava/lang/Iterable;Ljava/util/Collection;)V

    return-void
.end method

.method private addBackExtenLane(I)V
    .locals 1

    .line 7331
    invoke-direct {p0}, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$LaneInfo;->ensureBackExtenLaneIsMutable()V

    .line 7332
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$LaneInfo;->backExtenLane_:Lcom/android/carsdk/protobuf/Internal$IntList;

    invoke-interface {v0, p1}, Lcom/android/carsdk/protobuf/Internal$IntList;->addInt(I)V

    return-void
.end method

.method private addBackLane(I)V
    .locals 1

    .line 7159
    invoke-direct {p0}, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$LaneInfo;->ensureBackLaneIsMutable()V

    .line 7160
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$LaneInfo;->backLane_:Lcom/android/carsdk/protobuf/Internal$IntList;

    invoke-interface {v0, p1}, Lcom/android/carsdk/protobuf/Internal$IntList;->addInt(I)V

    return-void
.end method

.method private addBackLaneType(I)V
    .locals 1

    .line 7907
    invoke-direct {p0}, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$LaneInfo;->ensureBackLaneTypeIsMutable()V

    .line 7908
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$LaneInfo;->backLaneType_:Lcom/android/carsdk/protobuf/Internal$IntList;

    invoke-interface {v0, p1}, Lcom/android/carsdk/protobuf/Internal$IntList;->addInt(I)V

    return-void
.end method

.method private addExtensionLane(I)V
    .locals 1

    .line 7503
    invoke-direct {p0}, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$LaneInfo;->ensureExtensionLaneIsMutable()V

    .line 7504
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$LaneInfo;->extensionLane_:Lcom/android/carsdk/protobuf/Internal$IntList;

    invoke-interface {v0, p1}, Lcom/android/carsdk/protobuf/Internal$IntList;->addInt(I)V

    return-void
.end method

.method private addFrontExtenLane(I)V
    .locals 1

    .line 7417
    invoke-direct {p0}, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$LaneInfo;->ensureFrontExtenLaneIsMutable()V

    .line 7418
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$LaneInfo;->frontExtenLane_:Lcom/android/carsdk/protobuf/Internal$IntList;

    invoke-interface {v0, p1}, Lcom/android/carsdk/protobuf/Internal$IntList;->addInt(I)V

    return-void
.end method

.method private addFrontLane(I)V
    .locals 1

    .line 7245
    invoke-direct {p0}, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$LaneInfo;->ensureFrontLaneIsMutable()V

    .line 7246
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$LaneInfo;->frontLane_:Lcom/android/carsdk/protobuf/Internal$IntList;

    invoke-interface {v0, p1}, Lcom/android/carsdk/protobuf/Internal$IntList;->addInt(I)V

    return-void
.end method

.method private addFrontLaneType(I)V
    .locals 1

    .line 7821
    invoke-direct {p0}, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$LaneInfo;->ensureFrontLaneTypeIsMutable()V

    .line 7822
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$LaneInfo;->frontLaneType_:Lcom/android/carsdk/protobuf/Internal$IntList;

    invoke-interface {v0, p1}, Lcom/android/carsdk/protobuf/Internal$IntList;->addInt(I)V

    return-void
.end method

.method private addOptimalLane(I)V
    .locals 1

    .line 7735
    invoke-direct {p0}, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$LaneInfo;->ensureOptimalLaneIsMutable()V

    .line 7736
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$LaneInfo;->optimalLane_:Lcom/android/carsdk/protobuf/Internal$IntList;

    invoke-interface {v0, p1}, Lcom/android/carsdk/protobuf/Internal$IntList;->addInt(I)V

    return-void
.end method

.method private clearBackExtenLane()V
    .locals 1

    .line 7355
    invoke-static {}, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$LaneInfo;->emptyIntList()Lcom/android/carsdk/protobuf/Internal$IntList;

    move-result-object v0

    iput-object v0, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$LaneInfo;->backExtenLane_:Lcom/android/carsdk/protobuf/Internal$IntList;

    return-void
.end method

.method private clearBackLane()V
    .locals 1

    .line 7183
    invoke-static {}, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$LaneInfo;->emptyIntList()Lcom/android/carsdk/protobuf/Internal$IntList;

    move-result-object v0

    iput-object v0, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$LaneInfo;->backLane_:Lcom/android/carsdk/protobuf/Internal$IntList;

    return-void
.end method

.method private clearBackLaneType()V
    .locals 1

    .line 7931
    invoke-static {}, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$LaneInfo;->emptyIntList()Lcom/android/carsdk/protobuf/Internal$IntList;

    move-result-object v0

    iput-object v0, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$LaneInfo;->backLaneType_:Lcom/android/carsdk/protobuf/Internal$IntList;

    return-void
.end method

.method private clearExtensionLane()V
    .locals 1

    .line 7527
    invoke-static {}, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$LaneInfo;->emptyIntList()Lcom/android/carsdk/protobuf/Internal$IntList;

    move-result-object v0

    iput-object v0, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$LaneInfo;->extensionLane_:Lcom/android/carsdk/protobuf/Internal$IntList;

    return-void
.end method

.method private clearFrontExtenLane()V
    .locals 1

    .line 7441
    invoke-static {}, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$LaneInfo;->emptyIntList()Lcom/android/carsdk/protobuf/Internal$IntList;

    move-result-object v0

    iput-object v0, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$LaneInfo;->frontExtenLane_:Lcom/android/carsdk/protobuf/Internal$IntList;

    return-void
.end method

.method private clearFrontLane()V
    .locals 1

    .line 7269
    invoke-static {}, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$LaneInfo;->emptyIntList()Lcom/android/carsdk/protobuf/Internal$IntList;

    move-result-object v0

    iput-object v0, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$LaneInfo;->frontLane_:Lcom/android/carsdk/protobuf/Internal$IntList;

    return-void
.end method

.method private clearFrontLaneType()V
    .locals 1

    .line 7845
    invoke-static {}, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$LaneInfo;->emptyIntList()Lcom/android/carsdk/protobuf/Internal$IntList;

    move-result-object v0

    iput-object v0, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$LaneInfo;->frontLaneType_:Lcom/android/carsdk/protobuf/Internal$IntList;

    return-void
.end method

.method private clearLaneType()V
    .locals 1

    const/4 v0, 0x0

    .line 7097
    iput v0, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$LaneInfo;->laneType_:I

    return-void
.end method

.method private clearLinkIdx()V
    .locals 1

    const/4 v0, 0x0

    .line 7673
    iput v0, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$LaneInfo;->linkIdx_:I

    return-void
.end method

.method private clearNavigationId()V
    .locals 2

    const-wide/16 v0, 0x0

    .line 7966
    iput-wide v0, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$LaneInfo;->navigationId_:J

    return-void
.end method

.method private clearOptimalLane()V
    .locals 1

    .line 7759
    invoke-static {}, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$LaneInfo;->emptyIntList()Lcom/android/carsdk/protobuf/Internal$IntList;

    move-result-object v0

    iput-object v0, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$LaneInfo;->optimalLane_:Lcom/android/carsdk/protobuf/Internal$IntList;

    return-void
.end method

.method private clearPoint()V
    .locals 1

    const/4 v0, 0x0

    .line 7602
    iput-object v0, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$LaneInfo;->point_:Landroid/car/hardware/xpu/XpuXNgpNaviInfo$Coord2DDouble;

    return-void
.end method

.method private clearPointEndIdx()V
    .locals 2

    const-wide/16 v0, 0x0

    .line 8033
    iput-wide v0, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$LaneInfo;->pointEndIdx_:J

    return-void
.end method

.method private clearPointStartIdx()V
    .locals 2

    const-wide/16 v0, 0x0

    .line 7989
    iput-wide v0, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$LaneInfo;->pointStartIdx_:J

    return-void
.end method

.method private clearSegmentIdx()V
    .locals 1

    const/4 v0, 0x0

    .line 7638
    iput v0, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$LaneInfo;->segmentIdx_:I

    return-void
.end method

.method private ensureBackExtenLaneIsMutable()V
    .locals 1

    .line 7306
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$LaneInfo;->backExtenLane_:Lcom/android/carsdk/protobuf/Internal$IntList;

    invoke-interface {v0}, Lcom/android/carsdk/protobuf/Internal$IntList;->isModifiable()Z

    move-result v0

    if-nez v0, :cond_0

    .line 7307
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$LaneInfo;->backExtenLane_:Lcom/android/carsdk/protobuf/Internal$IntList;

    .line 7308
    invoke-static {v0}, Lcom/android/carsdk/protobuf/GeneratedMessageLite;->mutableCopy(Lcom/android/carsdk/protobuf/Internal$IntList;)Lcom/android/carsdk/protobuf/Internal$IntList;

    move-result-object v0

    iput-object v0, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$LaneInfo;->backExtenLane_:Lcom/android/carsdk/protobuf/Internal$IntList;

    :cond_0
    return-void
.end method

.method private ensureBackLaneIsMutable()V
    .locals 1

    .line 7134
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$LaneInfo;->backLane_:Lcom/android/carsdk/protobuf/Internal$IntList;

    invoke-interface {v0}, Lcom/android/carsdk/protobuf/Internal$IntList;->isModifiable()Z

    move-result v0

    if-nez v0, :cond_0

    .line 7135
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$LaneInfo;->backLane_:Lcom/android/carsdk/protobuf/Internal$IntList;

    .line 7136
    invoke-static {v0}, Lcom/android/carsdk/protobuf/GeneratedMessageLite;->mutableCopy(Lcom/android/carsdk/protobuf/Internal$IntList;)Lcom/android/carsdk/protobuf/Internal$IntList;

    move-result-object v0

    iput-object v0, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$LaneInfo;->backLane_:Lcom/android/carsdk/protobuf/Internal$IntList;

    :cond_0
    return-void
.end method

.method private ensureBackLaneTypeIsMutable()V
    .locals 1

    .line 7882
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$LaneInfo;->backLaneType_:Lcom/android/carsdk/protobuf/Internal$IntList;

    invoke-interface {v0}, Lcom/android/carsdk/protobuf/Internal$IntList;->isModifiable()Z

    move-result v0

    if-nez v0, :cond_0

    .line 7883
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$LaneInfo;->backLaneType_:Lcom/android/carsdk/protobuf/Internal$IntList;

    .line 7884
    invoke-static {v0}, Lcom/android/carsdk/protobuf/GeneratedMessageLite;->mutableCopy(Lcom/android/carsdk/protobuf/Internal$IntList;)Lcom/android/carsdk/protobuf/Internal$IntList;

    move-result-object v0

    iput-object v0, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$LaneInfo;->backLaneType_:Lcom/android/carsdk/protobuf/Internal$IntList;

    :cond_0
    return-void
.end method

.method private ensureExtensionLaneIsMutable()V
    .locals 1

    .line 7478
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$LaneInfo;->extensionLane_:Lcom/android/carsdk/protobuf/Internal$IntList;

    invoke-interface {v0}, Lcom/android/carsdk/protobuf/Internal$IntList;->isModifiable()Z

    move-result v0

    if-nez v0, :cond_0

    .line 7479
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$LaneInfo;->extensionLane_:Lcom/android/carsdk/protobuf/Internal$IntList;

    .line 7480
    invoke-static {v0}, Lcom/android/carsdk/protobuf/GeneratedMessageLite;->mutableCopy(Lcom/android/carsdk/protobuf/Internal$IntList;)Lcom/android/carsdk/protobuf/Internal$IntList;

    move-result-object v0

    iput-object v0, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$LaneInfo;->extensionLane_:Lcom/android/carsdk/protobuf/Internal$IntList;

    :cond_0
    return-void
.end method

.method private ensureFrontExtenLaneIsMutable()V
    .locals 1

    .line 7392
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$LaneInfo;->frontExtenLane_:Lcom/android/carsdk/protobuf/Internal$IntList;

    invoke-interface {v0}, Lcom/android/carsdk/protobuf/Internal$IntList;->isModifiable()Z

    move-result v0

    if-nez v0, :cond_0

    .line 7393
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$LaneInfo;->frontExtenLane_:Lcom/android/carsdk/protobuf/Internal$IntList;

    .line 7394
    invoke-static {v0}, Lcom/android/carsdk/protobuf/GeneratedMessageLite;->mutableCopy(Lcom/android/carsdk/protobuf/Internal$IntList;)Lcom/android/carsdk/protobuf/Internal$IntList;

    move-result-object v0

    iput-object v0, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$LaneInfo;->frontExtenLane_:Lcom/android/carsdk/protobuf/Internal$IntList;

    :cond_0
    return-void
.end method

.method private ensureFrontLaneIsMutable()V
    .locals 1

    .line 7220
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$LaneInfo;->frontLane_:Lcom/android/carsdk/protobuf/Internal$IntList;

    invoke-interface {v0}, Lcom/android/carsdk/protobuf/Internal$IntList;->isModifiable()Z

    move-result v0

    if-nez v0, :cond_0

    .line 7221
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$LaneInfo;->frontLane_:Lcom/android/carsdk/protobuf/Internal$IntList;

    .line 7222
    invoke-static {v0}, Lcom/android/carsdk/protobuf/GeneratedMessageLite;->mutableCopy(Lcom/android/carsdk/protobuf/Internal$IntList;)Lcom/android/carsdk/protobuf/Internal$IntList;

    move-result-object v0

    iput-object v0, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$LaneInfo;->frontLane_:Lcom/android/carsdk/protobuf/Internal$IntList;

    :cond_0
    return-void
.end method

.method private ensureFrontLaneTypeIsMutable()V
    .locals 1

    .line 7796
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$LaneInfo;->frontLaneType_:Lcom/android/carsdk/protobuf/Internal$IntList;

    invoke-interface {v0}, Lcom/android/carsdk/protobuf/Internal$IntList;->isModifiable()Z

    move-result v0

    if-nez v0, :cond_0

    .line 7797
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$LaneInfo;->frontLaneType_:Lcom/android/carsdk/protobuf/Internal$IntList;

    .line 7798
    invoke-static {v0}, Lcom/android/carsdk/protobuf/GeneratedMessageLite;->mutableCopy(Lcom/android/carsdk/protobuf/Internal$IntList;)Lcom/android/carsdk/protobuf/Internal$IntList;

    move-result-object v0

    iput-object v0, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$LaneInfo;->frontLaneType_:Lcom/android/carsdk/protobuf/Internal$IntList;

    :cond_0
    return-void
.end method

.method private ensureOptimalLaneIsMutable()V
    .locals 1

    .line 7710
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$LaneInfo;->optimalLane_:Lcom/android/carsdk/protobuf/Internal$IntList;

    invoke-interface {v0}, Lcom/android/carsdk/protobuf/Internal$IntList;->isModifiable()Z

    move-result v0

    if-nez v0, :cond_0

    .line 7711
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$LaneInfo;->optimalLane_:Lcom/android/carsdk/protobuf/Internal$IntList;

    .line 7712
    invoke-static {v0}, Lcom/android/carsdk/protobuf/GeneratedMessageLite;->mutableCopy(Lcom/android/carsdk/protobuf/Internal$IntList;)Lcom/android/carsdk/protobuf/Internal$IntList;

    move-result-object v0

    iput-object v0, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$LaneInfo;->optimalLane_:Lcom/android/carsdk/protobuf/Internal$IntList;

    :cond_0
    return-void
.end method

.method public static getDefaultInstance()Landroid/car/hardware/xpu/XpuXNgpNaviInfo$LaneInfo;
    .locals 1

    .line 9527
    sget-object v0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$LaneInfo;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuXNgpNaviInfo$LaneInfo;

    return-object v0
.end method

.method private mergePoint(Landroid/car/hardware/xpu/XpuXNgpNaviInfo$Coord2DDouble;)V
    .locals 2

    .line 7586
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$LaneInfo;->point_:Landroid/car/hardware/xpu/XpuXNgpNaviInfo$Coord2DDouble;

    if-eqz v0, :cond_0

    .line 7587
    invoke-static {}, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$Coord2DDouble;->getDefaultInstance()Landroid/car/hardware/xpu/XpuXNgpNaviInfo$Coord2DDouble;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 7588
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$LaneInfo;->point_:Landroid/car/hardware/xpu/XpuXNgpNaviInfo$Coord2DDouble;

    .line 7589
    invoke-static {v0}, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$Coord2DDouble;->newBuilder(Landroid/car/hardware/xpu/XpuXNgpNaviInfo$Coord2DDouble;)Landroid/car/hardware/xpu/XpuXNgpNaviInfo$Coord2DDouble$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$Coord2DDouble$Builder;->mergeFrom(Lcom/android/carsdk/protobuf/GeneratedMessageLite;)Lcom/android/carsdk/protobuf/GeneratedMessageLite$Builder;

    move-result-object p1

    check-cast p1, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$Coord2DDouble$Builder;

    invoke-virtual {p1}, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$Coord2DDouble$Builder;->buildPartial()Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$Coord2DDouble;

    iput-object p1, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$LaneInfo;->point_:Landroid/car/hardware/xpu/XpuXNgpNaviInfo$Coord2DDouble;

    goto :goto_0

    .line 7591
    :cond_0
    iput-object p1, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$LaneInfo;->point_:Landroid/car/hardware/xpu/XpuXNgpNaviInfo$Coord2DDouble;

    :goto_0
    return-void
.end method

.method public static newBuilder()Landroid/car/hardware/xpu/XpuXNgpNaviInfo$LaneInfo$Builder;
    .locals 1

    .line 8257
    sget-object v0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$LaneInfo;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuXNgpNaviInfo$LaneInfo;

    invoke-virtual {v0}, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$LaneInfo;->toBuilder()Lcom/android/carsdk/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$LaneInfo$Builder;

    return-object v0
.end method

.method public static newBuilder(Landroid/car/hardware/xpu/XpuXNgpNaviInfo$LaneInfo;)Landroid/car/hardware/xpu/XpuXNgpNaviInfo$LaneInfo$Builder;
    .locals 1

    .line 8260
    sget-object v0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$LaneInfo;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuXNgpNaviInfo$LaneInfo;

    invoke-virtual {v0}, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$LaneInfo;->toBuilder()Lcom/android/carsdk/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$LaneInfo$Builder;

    invoke-virtual {v0, p0}, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$LaneInfo$Builder;->mergeFrom(Lcom/android/carsdk/protobuf/GeneratedMessageLite;)Lcom/android/carsdk/protobuf/GeneratedMessageLite$Builder;

    move-result-object p0

    check-cast p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$LaneInfo$Builder;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Landroid/car/hardware/xpu/XpuXNgpNaviInfo$LaneInfo;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 8234
    sget-object v0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$LaneInfo;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuXNgpNaviInfo$LaneInfo;

    invoke-static {v0, p0}, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$LaneInfo;->parseDelimitedFrom(Lcom/android/carsdk/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$LaneInfo;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/android/carsdk/protobuf/ExtensionRegistryLite;)Landroid/car/hardware/xpu/XpuXNgpNaviInfo$LaneInfo;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 8240
    sget-object v0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$LaneInfo;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuXNgpNaviInfo$LaneInfo;

    invoke-static {v0, p0, p1}, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$LaneInfo;->parseDelimitedFrom(Lcom/android/carsdk/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/android/carsdk/protobuf/ExtensionRegistryLite;)Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$LaneInfo;

    return-object p0
.end method

.method public static parseFrom(Lcom/android/carsdk/protobuf/ByteString;)Landroid/car/hardware/xpu/XpuXNgpNaviInfo$LaneInfo;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/carsdk/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 8198
    sget-object v0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$LaneInfo;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuXNgpNaviInfo$LaneInfo;

    invoke-static {v0, p0}, Lcom/android/carsdk/protobuf/GeneratedMessageLite;->parseFrom(Lcom/android/carsdk/protobuf/GeneratedMessageLite;Lcom/android/carsdk/protobuf/ByteString;)Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$LaneInfo;

    return-object p0
.end method

.method public static parseFrom(Lcom/android/carsdk/protobuf/ByteString;Lcom/android/carsdk/protobuf/ExtensionRegistryLite;)Landroid/car/hardware/xpu/XpuXNgpNaviInfo$LaneInfo;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/carsdk/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 8205
    sget-object v0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$LaneInfo;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuXNgpNaviInfo$LaneInfo;

    invoke-static {v0, p0, p1}, Lcom/android/carsdk/protobuf/GeneratedMessageLite;->parseFrom(Lcom/android/carsdk/protobuf/GeneratedMessageLite;Lcom/android/carsdk/protobuf/ByteString;Lcom/android/carsdk/protobuf/ExtensionRegistryLite;)Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$LaneInfo;

    return-object p0
.end method

.method public static parseFrom(Lcom/android/carsdk/protobuf/CodedInputStream;)Landroid/car/hardware/xpu/XpuXNgpNaviInfo$LaneInfo;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 8245
    sget-object v0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$LaneInfo;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuXNgpNaviInfo$LaneInfo;

    invoke-static {v0, p0}, Lcom/android/carsdk/protobuf/GeneratedMessageLite;->parseFrom(Lcom/android/carsdk/protobuf/GeneratedMessageLite;Lcom/android/carsdk/protobuf/CodedInputStream;)Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$LaneInfo;

    return-object p0
.end method

.method public static parseFrom(Lcom/android/carsdk/protobuf/CodedInputStream;Lcom/android/carsdk/protobuf/ExtensionRegistryLite;)Landroid/car/hardware/xpu/XpuXNgpNaviInfo$LaneInfo;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 8252
    sget-object v0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$LaneInfo;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuXNgpNaviInfo$LaneInfo;

    invoke-static {v0, p0, p1}, Lcom/android/carsdk/protobuf/GeneratedMessageLite;->parseFrom(Lcom/android/carsdk/protobuf/GeneratedMessageLite;Lcom/android/carsdk/protobuf/CodedInputStream;Lcom/android/carsdk/protobuf/ExtensionRegistryLite;)Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$LaneInfo;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Landroid/car/hardware/xpu/XpuXNgpNaviInfo$LaneInfo;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 8222
    sget-object v0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$LaneInfo;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuXNgpNaviInfo$LaneInfo;

    invoke-static {v0, p0}, Lcom/android/carsdk/protobuf/GeneratedMessageLite;->parseFrom(Lcom/android/carsdk/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$LaneInfo;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/android/carsdk/protobuf/ExtensionRegistryLite;)Landroid/car/hardware/xpu/XpuXNgpNaviInfo$LaneInfo;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 8229
    sget-object v0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$LaneInfo;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuXNgpNaviInfo$LaneInfo;

    invoke-static {v0, p0, p1}, Lcom/android/carsdk/protobuf/GeneratedMessageLite;->parseFrom(Lcom/android/carsdk/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/android/carsdk/protobuf/ExtensionRegistryLite;)Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$LaneInfo;

    return-object p0
.end method

.method public static parseFrom([B)Landroid/car/hardware/xpu/XpuXNgpNaviInfo$LaneInfo;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/carsdk/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 8210
    sget-object v0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$LaneInfo;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuXNgpNaviInfo$LaneInfo;

    invoke-static {v0, p0}, Lcom/android/carsdk/protobuf/GeneratedMessageLite;->parseFrom(Lcom/android/carsdk/protobuf/GeneratedMessageLite;[B)Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$LaneInfo;

    return-object p0
.end method

.method public static parseFrom([BLcom/android/carsdk/protobuf/ExtensionRegistryLite;)Landroid/car/hardware/xpu/XpuXNgpNaviInfo$LaneInfo;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/carsdk/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 8217
    sget-object v0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$LaneInfo;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuXNgpNaviInfo$LaneInfo;

    invoke-static {v0, p0, p1}, Lcom/android/carsdk/protobuf/GeneratedMessageLite;->parseFrom(Lcom/android/carsdk/protobuf/GeneratedMessageLite;[BLcom/android/carsdk/protobuf/ExtensionRegistryLite;)Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$LaneInfo;

    return-object p0
.end method

.method public static parser()Lcom/android/carsdk/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/android/carsdk/protobuf/Parser<",
            "Landroid/car/hardware/xpu/XpuXNgpNaviInfo$LaneInfo;",
            ">;"
        }
    .end annotation

    .line 9533
    sget-object v0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$LaneInfo;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuXNgpNaviInfo$LaneInfo;

    invoke-virtual {v0}, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$LaneInfo;->getParserForType()Lcom/android/carsdk/protobuf/Parser;

    move-result-object v0

    return-object v0
.end method

.method private setBackExtenLane(II)V
    .locals 1

    .line 7320
    invoke-direct {p0}, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$LaneInfo;->ensureBackExtenLaneIsMutable()V

    .line 7321
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$LaneInfo;->backExtenLane_:Lcom/android/carsdk/protobuf/Internal$IntList;

    invoke-interface {v0, p1, p2}, Lcom/android/carsdk/protobuf/Internal$IntList;->setInt(II)I

    return-void
.end method

.method private setBackLane(II)V
    .locals 1

    .line 7148
    invoke-direct {p0}, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$LaneInfo;->ensureBackLaneIsMutable()V

    .line 7149
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$LaneInfo;->backLane_:Lcom/android/carsdk/protobuf/Internal$IntList;

    invoke-interface {v0, p1, p2}, Lcom/android/carsdk/protobuf/Internal$IntList;->setInt(II)I

    return-void
.end method

.method private setBackLaneType(II)V
    .locals 1

    .line 7896
    invoke-direct {p0}, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$LaneInfo;->ensureBackLaneTypeIsMutable()V

    .line 7897
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$LaneInfo;->backLaneType_:Lcom/android/carsdk/protobuf/Internal$IntList;

    invoke-interface {v0, p1, p2}, Lcom/android/carsdk/protobuf/Internal$IntList;->setInt(II)I

    return-void
.end method

.method private setExtensionLane(II)V
    .locals 1

    .line 7492
    invoke-direct {p0}, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$LaneInfo;->ensureExtensionLaneIsMutable()V

    .line 7493
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$LaneInfo;->extensionLane_:Lcom/android/carsdk/protobuf/Internal$IntList;

    invoke-interface {v0, p1, p2}, Lcom/android/carsdk/protobuf/Internal$IntList;->setInt(II)I

    return-void
.end method

.method private setFrontExtenLane(II)V
    .locals 1

    .line 7406
    invoke-direct {p0}, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$LaneInfo;->ensureFrontExtenLaneIsMutable()V

    .line 7407
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$LaneInfo;->frontExtenLane_:Lcom/android/carsdk/protobuf/Internal$IntList;

    invoke-interface {v0, p1, p2}, Lcom/android/carsdk/protobuf/Internal$IntList;->setInt(II)I

    return-void
.end method

.method private setFrontLane(II)V
    .locals 1

    .line 7234
    invoke-direct {p0}, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$LaneInfo;->ensureFrontLaneIsMutable()V

    .line 7235
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$LaneInfo;->frontLane_:Lcom/android/carsdk/protobuf/Internal$IntList;

    invoke-interface {v0, p1, p2}, Lcom/android/carsdk/protobuf/Internal$IntList;->setInt(II)I

    return-void
.end method

.method private setFrontLaneType(II)V
    .locals 1

    .line 7810
    invoke-direct {p0}, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$LaneInfo;->ensureFrontLaneTypeIsMutable()V

    .line 7811
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$LaneInfo;->frontLaneType_:Lcom/android/carsdk/protobuf/Internal$IntList;

    invoke-interface {v0, p1, p2}, Lcom/android/carsdk/protobuf/Internal$IntList;->setInt(II)I

    return-void
.end method

.method private setLaneType(I)V
    .locals 0

    .line 7090
    iput p1, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$LaneInfo;->laneType_:I

    return-void
.end method

.method private setLinkIdx(I)V
    .locals 0

    .line 7662
    iput p1, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$LaneInfo;->linkIdx_:I

    return-void
.end method

.method private setNavigationId(J)V
    .locals 0

    .line 7955
    iput-wide p1, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$LaneInfo;->navigationId_:J

    return-void
.end method

.method private setOptimalLane(II)V
    .locals 1

    .line 7724
    invoke-direct {p0}, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$LaneInfo;->ensureOptimalLaneIsMutable()V

    .line 7725
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$LaneInfo;->optimalLane_:Lcom/android/carsdk/protobuf/Internal$IntList;

    invoke-interface {v0, p1, p2}, Lcom/android/carsdk/protobuf/Internal$IntList;->setInt(II)I

    return-void
.end method

.method private setPoint(Landroid/car/hardware/xpu/XpuXNgpNaviInfo$Coord2DDouble$Builder;)V
    .locals 0

    .line 7575
    invoke-virtual {p1}, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$Coord2DDouble$Builder;->build()Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$Coord2DDouble;

    iput-object p1, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$LaneInfo;->point_:Landroid/car/hardware/xpu/XpuXNgpNaviInfo$Coord2DDouble;

    return-void
.end method

.method private setPoint(Landroid/car/hardware/xpu/XpuXNgpNaviInfo$Coord2DDouble;)V
    .locals 0

    .line 7561
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 7563
    iput-object p1, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$LaneInfo;->point_:Landroid/car/hardware/xpu/XpuXNgpNaviInfo$Coord2DDouble;

    return-void
.end method

.method private setPointEndIdx(J)V
    .locals 0

    .line 8019
    iput-wide p1, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$LaneInfo;->pointEndIdx_:J

    return-void
.end method

.method private setPointStartIdx(J)V
    .locals 0

    .line 7982
    iput-wide p1, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$LaneInfo;->pointStartIdx_:J

    return-void
.end method

.method private setSegmentIdx(I)V
    .locals 0

    .line 7627
    iput p1, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$LaneInfo;->segmentIdx_:I

    return-void
.end method


# virtual methods
.method protected final dynamicMethod(Lcom/android/carsdk/protobuf/GeneratedMessageLite$MethodToInvoke;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 12

    .line 9210
    sget-object v0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$1;->$SwitchMap$com$google$protobuf$GeneratedMessageLite$MethodToInvoke:[I

    invoke-virtual {p1}, Lcom/android/carsdk/protobuf/GeneratedMessageLite$MethodToInvoke;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x1

    packed-switch p1, :pswitch_data_0

    .line 9515
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1

    .line 9506
    :pswitch_0
    sget-object p1, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$LaneInfo;->PARSER:Lcom/android/carsdk/protobuf/Parser;

    if-nez p1, :cond_1

    const-class p1, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$LaneInfo;

    monitor-enter p1

    .line 9507
    :try_start_0
    sget-object p2, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$LaneInfo;->PARSER:Lcom/android/carsdk/protobuf/Parser;

    if-nez p2, :cond_0

    .line 9508
    new-instance p2, Lcom/android/carsdk/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;

    sget-object p3, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$LaneInfo;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuXNgpNaviInfo$LaneInfo;

    invoke-direct {p2, p3}, Lcom/android/carsdk/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;-><init>(Lcom/android/carsdk/protobuf/GeneratedMessageLite;)V

    sput-object p2, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$LaneInfo;->PARSER:Lcom/android/carsdk/protobuf/Parser;

    .line 9510
    :cond_0
    monitor-exit p1

    goto :goto_0

    :catchall_0
    move-exception p2

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p2

    .line 9512
    :cond_1
    :goto_0
    sget-object p1, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$LaneInfo;->PARSER:Lcom/android/carsdk/protobuf/Parser;

    return-object p1

    .line 9262
    :pswitch_1
    check-cast p2, Lcom/android/carsdk/protobuf/CodedInputStream;

    .line 9264
    check-cast p3, Lcom/android/carsdk/protobuf/ExtensionRegistryLite;

    :cond_2
    :goto_1
    if-nez v1, :cond_1c

    .line 9269
    :try_start_1
    invoke-virtual {p2}, Lcom/android/carsdk/protobuf/CodedInputStream;->readTag()I

    move-result p1

    sparse-switch p1, :sswitch_data_0

    .line 9275
    invoke-virtual {p2, p1}, Lcom/android/carsdk/protobuf/CodedInputStream;->skipField(I)Z

    move-result p1

    goto/16 :goto_c

    .line 9488
    :sswitch_0
    invoke-virtual {p2}, Lcom/android/carsdk/protobuf/CodedInputStream;->readUInt64()J

    move-result-wide v3

    iput-wide v3, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$LaneInfo;->pointEndIdx_:J

    goto :goto_1

    .line 9483
    :sswitch_1
    invoke-virtual {p2}, Lcom/android/carsdk/protobuf/CodedInputStream;->readUInt64()J

    move-result-wide v3

    iput-wide v3, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$LaneInfo;->pointStartIdx_:J

    goto :goto_1

    .line 9478
    :sswitch_2
    invoke-virtual {p2}, Lcom/android/carsdk/protobuf/CodedInputStream;->readUInt64()J

    move-result-wide v3

    iput-wide v3, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$LaneInfo;->navigationId_:J

    goto :goto_1

    .line 9464
    :sswitch_3
    invoke-virtual {p2}, Lcom/android/carsdk/protobuf/CodedInputStream;->readRawVarint32()I

    move-result p1

    .line 9465
    invoke-virtual {p2, p1}, Lcom/android/carsdk/protobuf/CodedInputStream;->pushLimit(I)I

    move-result p1

    .line 9466
    iget-object v3, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$LaneInfo;->backLaneType_:Lcom/android/carsdk/protobuf/Internal$IntList;

    invoke-interface {v3}, Lcom/android/carsdk/protobuf/Internal$IntList;->isModifiable()Z

    move-result v3

    if-nez v3, :cond_3

    invoke-virtual {p2}, Lcom/android/carsdk/protobuf/CodedInputStream;->getBytesUntilLimit()I

    move-result v3

    if-lez v3, :cond_3

    .line 9467
    iget-object v3, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$LaneInfo;->backLaneType_:Lcom/android/carsdk/protobuf/Internal$IntList;

    .line 9468
    invoke-static {v3}, Lcom/android/carsdk/protobuf/GeneratedMessageLite;->mutableCopy(Lcom/android/carsdk/protobuf/Internal$IntList;)Lcom/android/carsdk/protobuf/Internal$IntList;

    move-result-object v3

    iput-object v3, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$LaneInfo;->backLaneType_:Lcom/android/carsdk/protobuf/Internal$IntList;

    .line 9470
    :cond_3
    :goto_2
    invoke-virtual {p2}, Lcom/android/carsdk/protobuf/CodedInputStream;->getBytesUntilLimit()I

    move-result v3

    if-lez v3, :cond_4

    .line 9471
    iget-object v3, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$LaneInfo;->backLaneType_:Lcom/android/carsdk/protobuf/Internal$IntList;

    invoke-virtual {p2}, Lcom/android/carsdk/protobuf/CodedInputStream;->readInt32()I

    move-result v4

    invoke-interface {v3, v4}, Lcom/android/carsdk/protobuf/Internal$IntList;->addInt(I)V

    goto :goto_2

    .line 9473
    :cond_4
    invoke-virtual {p2, p1}, Lcom/android/carsdk/protobuf/CodedInputStream;->popLimit(I)V

    goto :goto_1

    .line 9456
    :sswitch_4
    iget-object p1, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$LaneInfo;->backLaneType_:Lcom/android/carsdk/protobuf/Internal$IntList;

    invoke-interface {p1}, Lcom/android/carsdk/protobuf/Internal$IntList;->isModifiable()Z

    move-result p1

    if-nez p1, :cond_5

    .line 9457
    iget-object p1, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$LaneInfo;->backLaneType_:Lcom/android/carsdk/protobuf/Internal$IntList;

    .line 9458
    invoke-static {p1}, Lcom/android/carsdk/protobuf/GeneratedMessageLite;->mutableCopy(Lcom/android/carsdk/protobuf/Internal$IntList;)Lcom/android/carsdk/protobuf/Internal$IntList;

    move-result-object p1

    iput-object p1, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$LaneInfo;->backLaneType_:Lcom/android/carsdk/protobuf/Internal$IntList;

    .line 9460
    :cond_5
    iget-object p1, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$LaneInfo;->backLaneType_:Lcom/android/carsdk/protobuf/Internal$IntList;

    invoke-virtual {p2}, Lcom/android/carsdk/protobuf/CodedInputStream;->readInt32()I

    move-result v3

    invoke-interface {p1, v3}, Lcom/android/carsdk/protobuf/Internal$IntList;->addInt(I)V

    goto :goto_1

    .line 9443
    :sswitch_5
    invoke-virtual {p2}, Lcom/android/carsdk/protobuf/CodedInputStream;->readRawVarint32()I

    move-result p1

    .line 9444
    invoke-virtual {p2, p1}, Lcom/android/carsdk/protobuf/CodedInputStream;->pushLimit(I)I

    move-result p1

    .line 9445
    iget-object v3, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$LaneInfo;->frontLaneType_:Lcom/android/carsdk/protobuf/Internal$IntList;

    invoke-interface {v3}, Lcom/android/carsdk/protobuf/Internal$IntList;->isModifiable()Z

    move-result v3

    if-nez v3, :cond_6

    invoke-virtual {p2}, Lcom/android/carsdk/protobuf/CodedInputStream;->getBytesUntilLimit()I

    move-result v3

    if-lez v3, :cond_6

    .line 9446
    iget-object v3, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$LaneInfo;->frontLaneType_:Lcom/android/carsdk/protobuf/Internal$IntList;

    .line 9447
    invoke-static {v3}, Lcom/android/carsdk/protobuf/GeneratedMessageLite;->mutableCopy(Lcom/android/carsdk/protobuf/Internal$IntList;)Lcom/android/carsdk/protobuf/Internal$IntList;

    move-result-object v3

    iput-object v3, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$LaneInfo;->frontLaneType_:Lcom/android/carsdk/protobuf/Internal$IntList;

    .line 9449
    :cond_6
    :goto_3
    invoke-virtual {p2}, Lcom/android/carsdk/protobuf/CodedInputStream;->getBytesUntilLimit()I

    move-result v3

    if-lez v3, :cond_7

    .line 9450
    iget-object v3, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$LaneInfo;->frontLaneType_:Lcom/android/carsdk/protobuf/Internal$IntList;

    invoke-virtual {p2}, Lcom/android/carsdk/protobuf/CodedInputStream;->readInt32()I

    move-result v4

    invoke-interface {v3, v4}, Lcom/android/carsdk/protobuf/Internal$IntList;->addInt(I)V

    goto :goto_3

    .line 9452
    :cond_7
    invoke-virtual {p2, p1}, Lcom/android/carsdk/protobuf/CodedInputStream;->popLimit(I)V

    goto/16 :goto_1

    .line 9435
    :sswitch_6
    iget-object p1, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$LaneInfo;->frontLaneType_:Lcom/android/carsdk/protobuf/Internal$IntList;

    invoke-interface {p1}, Lcom/android/carsdk/protobuf/Internal$IntList;->isModifiable()Z

    move-result p1

    if-nez p1, :cond_8

    .line 9436
    iget-object p1, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$LaneInfo;->frontLaneType_:Lcom/android/carsdk/protobuf/Internal$IntList;

    .line 9437
    invoke-static {p1}, Lcom/android/carsdk/protobuf/GeneratedMessageLite;->mutableCopy(Lcom/android/carsdk/protobuf/Internal$IntList;)Lcom/android/carsdk/protobuf/Internal$IntList;

    move-result-object p1

    iput-object p1, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$LaneInfo;->frontLaneType_:Lcom/android/carsdk/protobuf/Internal$IntList;

    .line 9439
    :cond_8
    iget-object p1, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$LaneInfo;->frontLaneType_:Lcom/android/carsdk/protobuf/Internal$IntList;

    invoke-virtual {p2}, Lcom/android/carsdk/protobuf/CodedInputStream;->readInt32()I

    move-result v3

    invoke-interface {p1, v3}, Lcom/android/carsdk/protobuf/Internal$IntList;->addInt(I)V

    goto/16 :goto_1

    .line 9422
    :sswitch_7
    invoke-virtual {p2}, Lcom/android/carsdk/protobuf/CodedInputStream;->readRawVarint32()I

    move-result p1

    .line 9423
    invoke-virtual {p2, p1}, Lcom/android/carsdk/protobuf/CodedInputStream;->pushLimit(I)I

    move-result p1

    .line 9424
    iget-object v3, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$LaneInfo;->optimalLane_:Lcom/android/carsdk/protobuf/Internal$IntList;

    invoke-interface {v3}, Lcom/android/carsdk/protobuf/Internal$IntList;->isModifiable()Z

    move-result v3

    if-nez v3, :cond_9

    invoke-virtual {p2}, Lcom/android/carsdk/protobuf/CodedInputStream;->getBytesUntilLimit()I

    move-result v3

    if-lez v3, :cond_9

    .line 9425
    iget-object v3, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$LaneInfo;->optimalLane_:Lcom/android/carsdk/protobuf/Internal$IntList;

    .line 9426
    invoke-static {v3}, Lcom/android/carsdk/protobuf/GeneratedMessageLite;->mutableCopy(Lcom/android/carsdk/protobuf/Internal$IntList;)Lcom/android/carsdk/protobuf/Internal$IntList;

    move-result-object v3

    iput-object v3, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$LaneInfo;->optimalLane_:Lcom/android/carsdk/protobuf/Internal$IntList;

    .line 9428
    :cond_9
    :goto_4
    invoke-virtual {p2}, Lcom/android/carsdk/protobuf/CodedInputStream;->getBytesUntilLimit()I

    move-result v3

    if-lez v3, :cond_a

    .line 9429
    iget-object v3, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$LaneInfo;->optimalLane_:Lcom/android/carsdk/protobuf/Internal$IntList;

    invoke-virtual {p2}, Lcom/android/carsdk/protobuf/CodedInputStream;->readInt32()I

    move-result v4

    invoke-interface {v3, v4}, Lcom/android/carsdk/protobuf/Internal$IntList;->addInt(I)V

    goto :goto_4

    .line 9431
    :cond_a
    invoke-virtual {p2, p1}, Lcom/android/carsdk/protobuf/CodedInputStream;->popLimit(I)V

    goto/16 :goto_1

    .line 9414
    :sswitch_8
    iget-object p1, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$LaneInfo;->optimalLane_:Lcom/android/carsdk/protobuf/Internal$IntList;

    invoke-interface {p1}, Lcom/android/carsdk/protobuf/Internal$IntList;->isModifiable()Z

    move-result p1

    if-nez p1, :cond_b

    .line 9415
    iget-object p1, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$LaneInfo;->optimalLane_:Lcom/android/carsdk/protobuf/Internal$IntList;

    .line 9416
    invoke-static {p1}, Lcom/android/carsdk/protobuf/GeneratedMessageLite;->mutableCopy(Lcom/android/carsdk/protobuf/Internal$IntList;)Lcom/android/carsdk/protobuf/Internal$IntList;

    move-result-object p1

    iput-object p1, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$LaneInfo;->optimalLane_:Lcom/android/carsdk/protobuf/Internal$IntList;

    .line 9418
    :cond_b
    iget-object p1, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$LaneInfo;->optimalLane_:Lcom/android/carsdk/protobuf/Internal$IntList;

    invoke-virtual {p2}, Lcom/android/carsdk/protobuf/CodedInputStream;->readInt32()I

    move-result v3

    invoke-interface {p1, v3}, Lcom/android/carsdk/protobuf/Internal$IntList;->addInt(I)V

    goto/16 :goto_1

    .line 9410
    :sswitch_9
    invoke-virtual {p2}, Lcom/android/carsdk/protobuf/CodedInputStream;->readInt32()I

    move-result p1

    iput p1, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$LaneInfo;->linkIdx_:I

    goto/16 :goto_1

    .line 9405
    :sswitch_a
    invoke-virtual {p2}, Lcom/android/carsdk/protobuf/CodedInputStream;->readInt32()I

    move-result p1

    iput p1, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$LaneInfo;->segmentIdx_:I

    goto/16 :goto_1

    .line 9392
    :sswitch_b
    iget-object p1, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$LaneInfo;->point_:Landroid/car/hardware/xpu/XpuXNgpNaviInfo$Coord2DDouble;

    if-eqz p1, :cond_c

    .line 9393
    invoke-virtual {p1}, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$Coord2DDouble;->toBuilder()Lcom/android/carsdk/protobuf/GeneratedMessageLite$Builder;

    move-result-object p1

    check-cast p1, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$Coord2DDouble$Builder;

    goto :goto_5

    :cond_c
    move-object p1, v0

    .line 9395
    :goto_5
    invoke-static {}, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$Coord2DDouble;->parser()Lcom/android/carsdk/protobuf/Parser;

    move-result-object v3

    invoke-virtual {p2, v3, p3}, Lcom/android/carsdk/protobuf/CodedInputStream;->readMessage(Lcom/android/carsdk/protobuf/Parser;Lcom/android/carsdk/protobuf/ExtensionRegistryLite;)Lcom/android/carsdk/protobuf/MessageLite;

    move-result-object v3

    check-cast v3, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$Coord2DDouble;

    iput-object v3, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$LaneInfo;->point_:Landroid/car/hardware/xpu/XpuXNgpNaviInfo$Coord2DDouble;

    if-eqz p1, :cond_2

    .line 9397
    invoke-virtual {p1, v3}, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$Coord2DDouble$Builder;->mergeFrom(Lcom/android/carsdk/protobuf/GeneratedMessageLite;)Lcom/android/carsdk/protobuf/GeneratedMessageLite$Builder;

    .line 9398
    invoke-virtual {p1}, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$Coord2DDouble$Builder;->buildPartial()Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$Coord2DDouble;

    iput-object p1, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$LaneInfo;->point_:Landroid/car/hardware/xpu/XpuXNgpNaviInfo$Coord2DDouble;

    goto/16 :goto_1

    .line 9378
    :sswitch_c
    invoke-virtual {p2}, Lcom/android/carsdk/protobuf/CodedInputStream;->readRawVarint32()I

    move-result p1

    .line 9379
    invoke-virtual {p2, p1}, Lcom/android/carsdk/protobuf/CodedInputStream;->pushLimit(I)I

    move-result p1

    .line 9380
    iget-object v3, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$LaneInfo;->extensionLane_:Lcom/android/carsdk/protobuf/Internal$IntList;

    invoke-interface {v3}, Lcom/android/carsdk/protobuf/Internal$IntList;->isModifiable()Z

    move-result v3

    if-nez v3, :cond_d

    invoke-virtual {p2}, Lcom/android/carsdk/protobuf/CodedInputStream;->getBytesUntilLimit()I

    move-result v3

    if-lez v3, :cond_d

    .line 9381
    iget-object v3, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$LaneInfo;->extensionLane_:Lcom/android/carsdk/protobuf/Internal$IntList;

    .line 9382
    invoke-static {v3}, Lcom/android/carsdk/protobuf/GeneratedMessageLite;->mutableCopy(Lcom/android/carsdk/protobuf/Internal$IntList;)Lcom/android/carsdk/protobuf/Internal$IntList;

    move-result-object v3

    iput-object v3, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$LaneInfo;->extensionLane_:Lcom/android/carsdk/protobuf/Internal$IntList;

    .line 9384
    :cond_d
    :goto_6
    invoke-virtual {p2}, Lcom/android/carsdk/protobuf/CodedInputStream;->getBytesUntilLimit()I

    move-result v3

    if-lez v3, :cond_e

    .line 9385
    iget-object v3, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$LaneInfo;->extensionLane_:Lcom/android/carsdk/protobuf/Internal$IntList;

    invoke-virtual {p2}, Lcom/android/carsdk/protobuf/CodedInputStream;->readInt32()I

    move-result v4

    invoke-interface {v3, v4}, Lcom/android/carsdk/protobuf/Internal$IntList;->addInt(I)V

    goto :goto_6

    .line 9387
    :cond_e
    invoke-virtual {p2, p1}, Lcom/android/carsdk/protobuf/CodedInputStream;->popLimit(I)V

    goto/16 :goto_1

    .line 9370
    :sswitch_d
    iget-object p1, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$LaneInfo;->extensionLane_:Lcom/android/carsdk/protobuf/Internal$IntList;

    invoke-interface {p1}, Lcom/android/carsdk/protobuf/Internal$IntList;->isModifiable()Z

    move-result p1

    if-nez p1, :cond_f

    .line 9371
    iget-object p1, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$LaneInfo;->extensionLane_:Lcom/android/carsdk/protobuf/Internal$IntList;

    .line 9372
    invoke-static {p1}, Lcom/android/carsdk/protobuf/GeneratedMessageLite;->mutableCopy(Lcom/android/carsdk/protobuf/Internal$IntList;)Lcom/android/carsdk/protobuf/Internal$IntList;

    move-result-object p1

    iput-object p1, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$LaneInfo;->extensionLane_:Lcom/android/carsdk/protobuf/Internal$IntList;

    .line 9374
    :cond_f
    iget-object p1, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$LaneInfo;->extensionLane_:Lcom/android/carsdk/protobuf/Internal$IntList;

    invoke-virtual {p2}, Lcom/android/carsdk/protobuf/CodedInputStream;->readInt32()I

    move-result v3

    invoke-interface {p1, v3}, Lcom/android/carsdk/protobuf/Internal$IntList;->addInt(I)V

    goto/16 :goto_1

    .line 9357
    :sswitch_e
    invoke-virtual {p2}, Lcom/android/carsdk/protobuf/CodedInputStream;->readRawVarint32()I

    move-result p1

    .line 9358
    invoke-virtual {p2, p1}, Lcom/android/carsdk/protobuf/CodedInputStream;->pushLimit(I)I

    move-result p1

    .line 9359
    iget-object v3, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$LaneInfo;->frontExtenLane_:Lcom/android/carsdk/protobuf/Internal$IntList;

    invoke-interface {v3}, Lcom/android/carsdk/protobuf/Internal$IntList;->isModifiable()Z

    move-result v3

    if-nez v3, :cond_10

    invoke-virtual {p2}, Lcom/android/carsdk/protobuf/CodedInputStream;->getBytesUntilLimit()I

    move-result v3

    if-lez v3, :cond_10

    .line 9360
    iget-object v3, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$LaneInfo;->frontExtenLane_:Lcom/android/carsdk/protobuf/Internal$IntList;

    .line 9361
    invoke-static {v3}, Lcom/android/carsdk/protobuf/GeneratedMessageLite;->mutableCopy(Lcom/android/carsdk/protobuf/Internal$IntList;)Lcom/android/carsdk/protobuf/Internal$IntList;

    move-result-object v3

    iput-object v3, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$LaneInfo;->frontExtenLane_:Lcom/android/carsdk/protobuf/Internal$IntList;

    .line 9363
    :cond_10
    :goto_7
    invoke-virtual {p2}, Lcom/android/carsdk/protobuf/CodedInputStream;->getBytesUntilLimit()I

    move-result v3

    if-lez v3, :cond_11

    .line 9364
    iget-object v3, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$LaneInfo;->frontExtenLane_:Lcom/android/carsdk/protobuf/Internal$IntList;

    invoke-virtual {p2}, Lcom/android/carsdk/protobuf/CodedInputStream;->readInt32()I

    move-result v4

    invoke-interface {v3, v4}, Lcom/android/carsdk/protobuf/Internal$IntList;->addInt(I)V

    goto :goto_7

    .line 9366
    :cond_11
    invoke-virtual {p2, p1}, Lcom/android/carsdk/protobuf/CodedInputStream;->popLimit(I)V

    goto/16 :goto_1

    .line 9349
    :sswitch_f
    iget-object p1, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$LaneInfo;->frontExtenLane_:Lcom/android/carsdk/protobuf/Internal$IntList;

    invoke-interface {p1}, Lcom/android/carsdk/protobuf/Internal$IntList;->isModifiable()Z

    move-result p1

    if-nez p1, :cond_12

    .line 9350
    iget-object p1, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$LaneInfo;->frontExtenLane_:Lcom/android/carsdk/protobuf/Internal$IntList;

    .line 9351
    invoke-static {p1}, Lcom/android/carsdk/protobuf/GeneratedMessageLite;->mutableCopy(Lcom/android/carsdk/protobuf/Internal$IntList;)Lcom/android/carsdk/protobuf/Internal$IntList;

    move-result-object p1

    iput-object p1, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$LaneInfo;->frontExtenLane_:Lcom/android/carsdk/protobuf/Internal$IntList;

    .line 9353
    :cond_12
    iget-object p1, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$LaneInfo;->frontExtenLane_:Lcom/android/carsdk/protobuf/Internal$IntList;

    invoke-virtual {p2}, Lcom/android/carsdk/protobuf/CodedInputStream;->readInt32()I

    move-result v3

    invoke-interface {p1, v3}, Lcom/android/carsdk/protobuf/Internal$IntList;->addInt(I)V

    goto/16 :goto_1

    .line 9336
    :sswitch_10
    invoke-virtual {p2}, Lcom/android/carsdk/protobuf/CodedInputStream;->readRawVarint32()I

    move-result p1

    .line 9337
    invoke-virtual {p2, p1}, Lcom/android/carsdk/protobuf/CodedInputStream;->pushLimit(I)I

    move-result p1

    .line 9338
    iget-object v3, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$LaneInfo;->backExtenLane_:Lcom/android/carsdk/protobuf/Internal$IntList;

    invoke-interface {v3}, Lcom/android/carsdk/protobuf/Internal$IntList;->isModifiable()Z

    move-result v3

    if-nez v3, :cond_13

    invoke-virtual {p2}, Lcom/android/carsdk/protobuf/CodedInputStream;->getBytesUntilLimit()I

    move-result v3

    if-lez v3, :cond_13

    .line 9339
    iget-object v3, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$LaneInfo;->backExtenLane_:Lcom/android/carsdk/protobuf/Internal$IntList;

    .line 9340
    invoke-static {v3}, Lcom/android/carsdk/protobuf/GeneratedMessageLite;->mutableCopy(Lcom/android/carsdk/protobuf/Internal$IntList;)Lcom/android/carsdk/protobuf/Internal$IntList;

    move-result-object v3

    iput-object v3, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$LaneInfo;->backExtenLane_:Lcom/android/carsdk/protobuf/Internal$IntList;

    .line 9342
    :cond_13
    :goto_8
    invoke-virtual {p2}, Lcom/android/carsdk/protobuf/CodedInputStream;->getBytesUntilLimit()I

    move-result v3

    if-lez v3, :cond_14

    .line 9343
    iget-object v3, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$LaneInfo;->backExtenLane_:Lcom/android/carsdk/protobuf/Internal$IntList;

    invoke-virtual {p2}, Lcom/android/carsdk/protobuf/CodedInputStream;->readInt32()I

    move-result v4

    invoke-interface {v3, v4}, Lcom/android/carsdk/protobuf/Internal$IntList;->addInt(I)V

    goto :goto_8

    .line 9345
    :cond_14
    invoke-virtual {p2, p1}, Lcom/android/carsdk/protobuf/CodedInputStream;->popLimit(I)V

    goto/16 :goto_1

    .line 9328
    :sswitch_11
    iget-object p1, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$LaneInfo;->backExtenLane_:Lcom/android/carsdk/protobuf/Internal$IntList;

    invoke-interface {p1}, Lcom/android/carsdk/protobuf/Internal$IntList;->isModifiable()Z

    move-result p1

    if-nez p1, :cond_15

    .line 9329
    iget-object p1, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$LaneInfo;->backExtenLane_:Lcom/android/carsdk/protobuf/Internal$IntList;

    .line 9330
    invoke-static {p1}, Lcom/android/carsdk/protobuf/GeneratedMessageLite;->mutableCopy(Lcom/android/carsdk/protobuf/Internal$IntList;)Lcom/android/carsdk/protobuf/Internal$IntList;

    move-result-object p1

    iput-object p1, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$LaneInfo;->backExtenLane_:Lcom/android/carsdk/protobuf/Internal$IntList;

    .line 9332
    :cond_15
    iget-object p1, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$LaneInfo;->backExtenLane_:Lcom/android/carsdk/protobuf/Internal$IntList;

    invoke-virtual {p2}, Lcom/android/carsdk/protobuf/CodedInputStream;->readInt32()I

    move-result v3

    invoke-interface {p1, v3}, Lcom/android/carsdk/protobuf/Internal$IntList;->addInt(I)V

    goto/16 :goto_1

    .line 9315
    :sswitch_12
    invoke-virtual {p2}, Lcom/android/carsdk/protobuf/CodedInputStream;->readRawVarint32()I

    move-result p1

    .line 9316
    invoke-virtual {p2, p1}, Lcom/android/carsdk/protobuf/CodedInputStream;->pushLimit(I)I

    move-result p1

    .line 9317
    iget-object v3, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$LaneInfo;->frontLane_:Lcom/android/carsdk/protobuf/Internal$IntList;

    invoke-interface {v3}, Lcom/android/carsdk/protobuf/Internal$IntList;->isModifiable()Z

    move-result v3

    if-nez v3, :cond_16

    invoke-virtual {p2}, Lcom/android/carsdk/protobuf/CodedInputStream;->getBytesUntilLimit()I

    move-result v3

    if-lez v3, :cond_16

    .line 9318
    iget-object v3, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$LaneInfo;->frontLane_:Lcom/android/carsdk/protobuf/Internal$IntList;

    .line 9319
    invoke-static {v3}, Lcom/android/carsdk/protobuf/GeneratedMessageLite;->mutableCopy(Lcom/android/carsdk/protobuf/Internal$IntList;)Lcom/android/carsdk/protobuf/Internal$IntList;

    move-result-object v3

    iput-object v3, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$LaneInfo;->frontLane_:Lcom/android/carsdk/protobuf/Internal$IntList;

    .line 9321
    :cond_16
    :goto_9
    invoke-virtual {p2}, Lcom/android/carsdk/protobuf/CodedInputStream;->getBytesUntilLimit()I

    move-result v3

    if-lez v3, :cond_17

    .line 9322
    iget-object v3, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$LaneInfo;->frontLane_:Lcom/android/carsdk/protobuf/Internal$IntList;

    invoke-virtual {p2}, Lcom/android/carsdk/protobuf/CodedInputStream;->readInt32()I

    move-result v4

    invoke-interface {v3, v4}, Lcom/android/carsdk/protobuf/Internal$IntList;->addInt(I)V

    goto :goto_9

    .line 9324
    :cond_17
    invoke-virtual {p2, p1}, Lcom/android/carsdk/protobuf/CodedInputStream;->popLimit(I)V

    goto/16 :goto_1

    .line 9307
    :sswitch_13
    iget-object p1, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$LaneInfo;->frontLane_:Lcom/android/carsdk/protobuf/Internal$IntList;

    invoke-interface {p1}, Lcom/android/carsdk/protobuf/Internal$IntList;->isModifiable()Z

    move-result p1

    if-nez p1, :cond_18

    .line 9308
    iget-object p1, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$LaneInfo;->frontLane_:Lcom/android/carsdk/protobuf/Internal$IntList;

    .line 9309
    invoke-static {p1}, Lcom/android/carsdk/protobuf/GeneratedMessageLite;->mutableCopy(Lcom/android/carsdk/protobuf/Internal$IntList;)Lcom/android/carsdk/protobuf/Internal$IntList;

    move-result-object p1

    iput-object p1, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$LaneInfo;->frontLane_:Lcom/android/carsdk/protobuf/Internal$IntList;

    .line 9311
    :cond_18
    iget-object p1, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$LaneInfo;->frontLane_:Lcom/android/carsdk/protobuf/Internal$IntList;

    invoke-virtual {p2}, Lcom/android/carsdk/protobuf/CodedInputStream;->readInt32()I

    move-result v3

    invoke-interface {p1, v3}, Lcom/android/carsdk/protobuf/Internal$IntList;->addInt(I)V

    goto/16 :goto_1

    .line 9294
    :sswitch_14
    invoke-virtual {p2}, Lcom/android/carsdk/protobuf/CodedInputStream;->readRawVarint32()I

    move-result p1

    .line 9295
    invoke-virtual {p2, p1}, Lcom/android/carsdk/protobuf/CodedInputStream;->pushLimit(I)I

    move-result p1

    .line 9296
    iget-object v3, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$LaneInfo;->backLane_:Lcom/android/carsdk/protobuf/Internal$IntList;

    invoke-interface {v3}, Lcom/android/carsdk/protobuf/Internal$IntList;->isModifiable()Z

    move-result v3

    if-nez v3, :cond_19

    invoke-virtual {p2}, Lcom/android/carsdk/protobuf/CodedInputStream;->getBytesUntilLimit()I

    move-result v3

    if-lez v3, :cond_19

    .line 9297
    iget-object v3, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$LaneInfo;->backLane_:Lcom/android/carsdk/protobuf/Internal$IntList;

    .line 9298
    invoke-static {v3}, Lcom/android/carsdk/protobuf/GeneratedMessageLite;->mutableCopy(Lcom/android/carsdk/protobuf/Internal$IntList;)Lcom/android/carsdk/protobuf/Internal$IntList;

    move-result-object v3

    iput-object v3, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$LaneInfo;->backLane_:Lcom/android/carsdk/protobuf/Internal$IntList;

    .line 9300
    :cond_19
    :goto_a
    invoke-virtual {p2}, Lcom/android/carsdk/protobuf/CodedInputStream;->getBytesUntilLimit()I

    move-result v3

    if-lez v3, :cond_1a

    .line 9301
    iget-object v3, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$LaneInfo;->backLane_:Lcom/android/carsdk/protobuf/Internal$IntList;

    invoke-virtual {p2}, Lcom/android/carsdk/protobuf/CodedInputStream;->readInt32()I

    move-result v4

    invoke-interface {v3, v4}, Lcom/android/carsdk/protobuf/Internal$IntList;->addInt(I)V

    goto :goto_a

    .line 9303
    :cond_1a
    invoke-virtual {p2, p1}, Lcom/android/carsdk/protobuf/CodedInputStream;->popLimit(I)V

    goto/16 :goto_1

    .line 9286
    :sswitch_15
    iget-object p1, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$LaneInfo;->backLane_:Lcom/android/carsdk/protobuf/Internal$IntList;

    invoke-interface {p1}, Lcom/android/carsdk/protobuf/Internal$IntList;->isModifiable()Z

    move-result p1

    if-nez p1, :cond_1b

    .line 9287
    iget-object p1, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$LaneInfo;->backLane_:Lcom/android/carsdk/protobuf/Internal$IntList;

    .line 9288
    invoke-static {p1}, Lcom/android/carsdk/protobuf/GeneratedMessageLite;->mutableCopy(Lcom/android/carsdk/protobuf/Internal$IntList;)Lcom/android/carsdk/protobuf/Internal$IntList;

    move-result-object p1

    iput-object p1, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$LaneInfo;->backLane_:Lcom/android/carsdk/protobuf/Internal$IntList;

    .line 9290
    :cond_1b
    iget-object p1, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$LaneInfo;->backLane_:Lcom/android/carsdk/protobuf/Internal$IntList;

    invoke-virtual {p2}, Lcom/android/carsdk/protobuf/CodedInputStream;->readInt32()I

    move-result v3

    invoke-interface {p1, v3}, Lcom/android/carsdk/protobuf/Internal$IntList;->addInt(I)V

    goto/16 :goto_1

    .line 9282
    :sswitch_16
    invoke-virtual {p2}, Lcom/android/carsdk/protobuf/CodedInputStream;->readInt32()I

    move-result p1

    iput p1, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$LaneInfo;->laneType_:I
    :try_end_1
    .catch Lcom/android/carsdk/protobuf/InvalidProtocolBufferException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto/16 :goto_1

    :goto_b
    :sswitch_17
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

    .line 9496
    :try_start_2
    new-instance p2, Ljava/lang/RuntimeException;

    new-instance p3, Lcom/android/carsdk/protobuf/InvalidProtocolBufferException;

    .line 9498
    invoke-virtual {p1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p3, p1}, Lcom/android/carsdk/protobuf/InvalidProtocolBufferException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, p0}, Lcom/android/carsdk/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/android/carsdk/protobuf/MessageLite;)Lcom/android/carsdk/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p2

    :catch_1
    move-exception p1

    .line 9494
    new-instance p2, Ljava/lang/RuntimeException;

    invoke-virtual {p1, p0}, Lcom/android/carsdk/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/android/carsdk/protobuf/MessageLite;)Lcom/android/carsdk/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 9499
    :goto_d
    throw p1

    .line 9503
    :cond_1c
    :pswitch_2
    sget-object p1, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$LaneInfo;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuXNgpNaviInfo$LaneInfo;

    return-object p1

    .line 9232
    :pswitch_3
    check-cast p2, Lcom/android/carsdk/protobuf/GeneratedMessageLite$Visitor;

    .line 9233
    check-cast p3, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$LaneInfo;

    .line 9234
    iget p1, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$LaneInfo;->laneType_:I

    if-eqz p1, :cond_1d

    move v0, v2

    goto :goto_e

    :cond_1d
    move v0, v1

    :goto_e
    iget v3, p3, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$LaneInfo;->laneType_:I

    if-eqz v3, :cond_1e

    move v4, v2

    goto :goto_f

    :cond_1e
    move v4, v1

    :goto_f
    invoke-interface {p2, v0, p1, v4, v3}, Lcom/android/carsdk/protobuf/GeneratedMessageLite$Visitor;->visitInt(ZIZI)I

    move-result p1

    iput p1, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$LaneInfo;->laneType_:I

    .line 9236
    iget-object p1, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$LaneInfo;->backLane_:Lcom/android/carsdk/protobuf/Internal$IntList;

    iget-object v0, p3, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$LaneInfo;->backLane_:Lcom/android/carsdk/protobuf/Internal$IntList;

    invoke-interface {p2, p1, v0}, Lcom/android/carsdk/protobuf/GeneratedMessageLite$Visitor;->visitIntList(Lcom/android/carsdk/protobuf/Internal$IntList;Lcom/android/carsdk/protobuf/Internal$IntList;)Lcom/android/carsdk/protobuf/Internal$IntList;

    move-result-object p1

    iput-object p1, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$LaneInfo;->backLane_:Lcom/android/carsdk/protobuf/Internal$IntList;

    .line 9237
    iget-object p1, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$LaneInfo;->frontLane_:Lcom/android/carsdk/protobuf/Internal$IntList;

    iget-object v0, p3, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$LaneInfo;->frontLane_:Lcom/android/carsdk/protobuf/Internal$IntList;

    invoke-interface {p2, p1, v0}, Lcom/android/carsdk/protobuf/GeneratedMessageLite$Visitor;->visitIntList(Lcom/android/carsdk/protobuf/Internal$IntList;Lcom/android/carsdk/protobuf/Internal$IntList;)Lcom/android/carsdk/protobuf/Internal$IntList;

    move-result-object p1

    iput-object p1, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$LaneInfo;->frontLane_:Lcom/android/carsdk/protobuf/Internal$IntList;

    .line 9238
    iget-object p1, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$LaneInfo;->backExtenLane_:Lcom/android/carsdk/protobuf/Internal$IntList;

    iget-object v0, p3, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$LaneInfo;->backExtenLane_:Lcom/android/carsdk/protobuf/Internal$IntList;

    invoke-interface {p2, p1, v0}, Lcom/android/carsdk/protobuf/GeneratedMessageLite$Visitor;->visitIntList(Lcom/android/carsdk/protobuf/Internal$IntList;Lcom/android/carsdk/protobuf/Internal$IntList;)Lcom/android/carsdk/protobuf/Internal$IntList;

    move-result-object p1

    iput-object p1, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$LaneInfo;->backExtenLane_:Lcom/android/carsdk/protobuf/Internal$IntList;

    .line 9239
    iget-object p1, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$LaneInfo;->frontExtenLane_:Lcom/android/carsdk/protobuf/Internal$IntList;

    iget-object v0, p3, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$LaneInfo;->frontExtenLane_:Lcom/android/carsdk/protobuf/Internal$IntList;

    invoke-interface {p2, p1, v0}, Lcom/android/carsdk/protobuf/GeneratedMessageLite$Visitor;->visitIntList(Lcom/android/carsdk/protobuf/Internal$IntList;Lcom/android/carsdk/protobuf/Internal$IntList;)Lcom/android/carsdk/protobuf/Internal$IntList;

    move-result-object p1

    iput-object p1, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$LaneInfo;->frontExtenLane_:Lcom/android/carsdk/protobuf/Internal$IntList;

    .line 9240
    iget-object p1, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$LaneInfo;->extensionLane_:Lcom/android/carsdk/protobuf/Internal$IntList;

    iget-object v0, p3, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$LaneInfo;->extensionLane_:Lcom/android/carsdk/protobuf/Internal$IntList;

    invoke-interface {p2, p1, v0}, Lcom/android/carsdk/protobuf/GeneratedMessageLite$Visitor;->visitIntList(Lcom/android/carsdk/protobuf/Internal$IntList;Lcom/android/carsdk/protobuf/Internal$IntList;)Lcom/android/carsdk/protobuf/Internal$IntList;

    move-result-object p1

    iput-object p1, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$LaneInfo;->extensionLane_:Lcom/android/carsdk/protobuf/Internal$IntList;

    .line 9241
    iget-object p1, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$LaneInfo;->point_:Landroid/car/hardware/xpu/XpuXNgpNaviInfo$Coord2DDouble;

    iget-object v0, p3, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$LaneInfo;->point_:Landroid/car/hardware/xpu/XpuXNgpNaviInfo$Coord2DDouble;

    invoke-interface {p2, p1, v0}, Lcom/android/carsdk/protobuf/GeneratedMessageLite$Visitor;->visitMessage(Lcom/android/carsdk/protobuf/MessageLite;Lcom/android/carsdk/protobuf/MessageLite;)Lcom/android/carsdk/protobuf/MessageLite;

    move-result-object p1

    check-cast p1, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$Coord2DDouble;

    iput-object p1, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$LaneInfo;->point_:Landroid/car/hardware/xpu/XpuXNgpNaviInfo$Coord2DDouble;

    .line 9242
    iget p1, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$LaneInfo;->segmentIdx_:I

    if-eqz p1, :cond_1f

    move v0, v2

    goto :goto_10

    :cond_1f
    move v0, v1

    :goto_10
    iget v3, p3, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$LaneInfo;->segmentIdx_:I

    if-eqz v3, :cond_20

    move v4, v2

    goto :goto_11

    :cond_20
    move v4, v1

    :goto_11
    invoke-interface {p2, v0, p1, v4, v3}, Lcom/android/carsdk/protobuf/GeneratedMessageLite$Visitor;->visitInt(ZIZI)I

    move-result p1

    iput p1, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$LaneInfo;->segmentIdx_:I

    .line 9244
    iget p1, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$LaneInfo;->linkIdx_:I

    if-eqz p1, :cond_21

    move v0, v2

    goto :goto_12

    :cond_21
    move v0, v1

    :goto_12
    iget v3, p3, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$LaneInfo;->linkIdx_:I

    if-eqz v3, :cond_22

    move v4, v2

    goto :goto_13

    :cond_22
    move v4, v1

    :goto_13
    invoke-interface {p2, v0, p1, v4, v3}, Lcom/android/carsdk/protobuf/GeneratedMessageLite$Visitor;->visitInt(ZIZI)I

    move-result p1

    iput p1, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$LaneInfo;->linkIdx_:I

    .line 9246
    iget-object p1, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$LaneInfo;->optimalLane_:Lcom/android/carsdk/protobuf/Internal$IntList;

    iget-object v0, p3, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$LaneInfo;->optimalLane_:Lcom/android/carsdk/protobuf/Internal$IntList;

    invoke-interface {p2, p1, v0}, Lcom/android/carsdk/protobuf/GeneratedMessageLite$Visitor;->visitIntList(Lcom/android/carsdk/protobuf/Internal$IntList;Lcom/android/carsdk/protobuf/Internal$IntList;)Lcom/android/carsdk/protobuf/Internal$IntList;

    move-result-object p1

    iput-object p1, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$LaneInfo;->optimalLane_:Lcom/android/carsdk/protobuf/Internal$IntList;

    .line 9247
    iget-object p1, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$LaneInfo;->frontLaneType_:Lcom/android/carsdk/protobuf/Internal$IntList;

    iget-object v0, p3, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$LaneInfo;->frontLaneType_:Lcom/android/carsdk/protobuf/Internal$IntList;

    invoke-interface {p2, p1, v0}, Lcom/android/carsdk/protobuf/GeneratedMessageLite$Visitor;->visitIntList(Lcom/android/carsdk/protobuf/Internal$IntList;Lcom/android/carsdk/protobuf/Internal$IntList;)Lcom/android/carsdk/protobuf/Internal$IntList;

    move-result-object p1

    iput-object p1, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$LaneInfo;->frontLaneType_:Lcom/android/carsdk/protobuf/Internal$IntList;

    .line 9248
    iget-object p1, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$LaneInfo;->backLaneType_:Lcom/android/carsdk/protobuf/Internal$IntList;

    iget-object v0, p3, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$LaneInfo;->backLaneType_:Lcom/android/carsdk/protobuf/Internal$IntList;

    invoke-interface {p2, p1, v0}, Lcom/android/carsdk/protobuf/GeneratedMessageLite$Visitor;->visitIntList(Lcom/android/carsdk/protobuf/Internal$IntList;Lcom/android/carsdk/protobuf/Internal$IntList;)Lcom/android/carsdk/protobuf/Internal$IntList;

    move-result-object p1

    iput-object p1, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$LaneInfo;->backLaneType_:Lcom/android/carsdk/protobuf/Internal$IntList;

    .line 9249
    iget-wide v5, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$LaneInfo;->navigationId_:J

    const-wide/16 v10, 0x0

    cmp-long p1, v5, v10

    if-eqz p1, :cond_23

    move v4, v2

    goto :goto_14

    :cond_23
    move v4, v1

    :goto_14
    iget-wide v8, p3, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$LaneInfo;->navigationId_:J

    cmp-long p1, v8, v10

    if-eqz p1, :cond_24

    move v7, v2

    goto :goto_15

    :cond_24
    move v7, v1

    :goto_15
    move-object v3, p2

    invoke-interface/range {v3 .. v9}, Lcom/android/carsdk/protobuf/GeneratedMessageLite$Visitor;->visitLong(ZJZJ)J

    move-result-wide v3

    iput-wide v3, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$LaneInfo;->navigationId_:J

    .line 9251
    iget-wide v5, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$LaneInfo;->pointStartIdx_:J

    cmp-long p1, v5, v10

    if-eqz p1, :cond_25

    move v4, v2

    goto :goto_16

    :cond_25
    move v4, v1

    :goto_16
    iget-wide v8, p3, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$LaneInfo;->pointStartIdx_:J

    cmp-long p1, v8, v10

    if-eqz p1, :cond_26

    move v7, v2

    goto :goto_17

    :cond_26
    move v7, v1

    :goto_17
    move-object v3, p2

    invoke-interface/range {v3 .. v9}, Lcom/android/carsdk/protobuf/GeneratedMessageLite$Visitor;->visitLong(ZJZJ)J

    move-result-wide v3

    iput-wide v3, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$LaneInfo;->pointStartIdx_:J

    .line 9253
    iget-wide v3, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$LaneInfo;->pointEndIdx_:J

    cmp-long p1, v3, v10

    if-eqz p1, :cond_27

    move p1, v2

    goto :goto_18

    :cond_27
    move p1, v1

    :goto_18
    iget-wide v5, p3, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$LaneInfo;->pointEndIdx_:J

    cmp-long v0, v5, v10

    if-eqz v0, :cond_28

    move v7, v2

    goto :goto_19

    :cond_28
    move v7, v1

    :goto_19
    move-object v0, p2

    move v1, p1

    move-wide v2, v3

    move v4, v7

    invoke-interface/range {v0 .. v6}, Lcom/android/carsdk/protobuf/GeneratedMessageLite$Visitor;->visitLong(ZJZJ)J

    move-result-wide v0

    iput-wide v0, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$LaneInfo;->pointEndIdx_:J

    .line 9255
    sget-object p1, Lcom/android/carsdk/protobuf/GeneratedMessageLite$MergeFromVisitor;->INSTANCE:Lcom/android/carsdk/protobuf/GeneratedMessageLite$MergeFromVisitor;

    if-ne p2, p1, :cond_29

    .line 9257
    iget p1, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$LaneInfo;->bitField0_:I

    iget p2, p3, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$LaneInfo;->bitField0_:I

    or-int/2addr p1, p2

    iput p1, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$LaneInfo;->bitField0_:I

    :cond_29
    return-object p0

    .line 9229
    :pswitch_4
    new-instance p1, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$LaneInfo$Builder;

    invoke-direct {p1, v0}, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$LaneInfo$Builder;-><init>(Landroid/car/hardware/xpu/XpuXNgpNaviInfo$1;)V

    return-object p1

    .line 9218
    :pswitch_5
    iget-object p1, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$LaneInfo;->backLane_:Lcom/android/carsdk/protobuf/Internal$IntList;

    invoke-interface {p1}, Lcom/android/carsdk/protobuf/Internal$IntList;->makeImmutable()V

    .line 9219
    iget-object p1, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$LaneInfo;->frontLane_:Lcom/android/carsdk/protobuf/Internal$IntList;

    invoke-interface {p1}, Lcom/android/carsdk/protobuf/Internal$IntList;->makeImmutable()V

    .line 9220
    iget-object p1, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$LaneInfo;->backExtenLane_:Lcom/android/carsdk/protobuf/Internal$IntList;

    invoke-interface {p1}, Lcom/android/carsdk/protobuf/Internal$IntList;->makeImmutable()V

    .line 9221
    iget-object p1, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$LaneInfo;->frontExtenLane_:Lcom/android/carsdk/protobuf/Internal$IntList;

    invoke-interface {p1}, Lcom/android/carsdk/protobuf/Internal$IntList;->makeImmutable()V

    .line 9222
    iget-object p1, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$LaneInfo;->extensionLane_:Lcom/android/carsdk/protobuf/Internal$IntList;

    invoke-interface {p1}, Lcom/android/carsdk/protobuf/Internal$IntList;->makeImmutable()V

    .line 9223
    iget-object p1, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$LaneInfo;->optimalLane_:Lcom/android/carsdk/protobuf/Internal$IntList;

    invoke-interface {p1}, Lcom/android/carsdk/protobuf/Internal$IntList;->makeImmutable()V

    .line 9224
    iget-object p1, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$LaneInfo;->frontLaneType_:Lcom/android/carsdk/protobuf/Internal$IntList;

    invoke-interface {p1}, Lcom/android/carsdk/protobuf/Internal$IntList;->makeImmutable()V

    .line 9225
    iget-object p1, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$LaneInfo;->backLaneType_:Lcom/android/carsdk/protobuf/Internal$IntList;

    invoke-interface {p1}, Lcom/android/carsdk/protobuf/Internal$IntList;->makeImmutable()V

    return-object v0

    .line 9215
    :pswitch_6
    sget-object p1, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$LaneInfo;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuXNgpNaviInfo$LaneInfo;

    return-object p1

    .line 9212
    :pswitch_7
    new-instance p1, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$LaneInfo;

    invoke-direct {p1}, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$LaneInfo;-><init>()V

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
        0x0 -> :sswitch_17
        0x8 -> :sswitch_16
        0x10 -> :sswitch_15
        0x12 -> :sswitch_14
        0x18 -> :sswitch_13
        0x1a -> :sswitch_12
        0x20 -> :sswitch_11
        0x22 -> :sswitch_10
        0x28 -> :sswitch_f
        0x2a -> :sswitch_e
        0x30 -> :sswitch_d
        0x32 -> :sswitch_c
        0x3a -> :sswitch_b
        0x40 -> :sswitch_a
        0x48 -> :sswitch_9
        0x50 -> :sswitch_8
        0x52 -> :sswitch_7
        0x58 -> :sswitch_6
        0x5a -> :sswitch_5
        0x60 -> :sswitch_4
        0x62 -> :sswitch_3
        0x68 -> :sswitch_2
        0x70 -> :sswitch_1
        0x78 -> :sswitch_0
    .end sparse-switch
.end method

.method public getBackExtenLane(I)I
    .locals 1

    .line 7303
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$LaneInfo;->backExtenLane_:Lcom/android/carsdk/protobuf/Internal$IntList;

    invoke-interface {v0, p1}, Lcom/android/carsdk/protobuf/Internal$IntList;->getInt(I)I

    move-result p1

    return p1
.end method

.method public getBackExtenLaneCount()I
    .locals 1

    .line 7293
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$LaneInfo;->backExtenLane_:Lcom/android/carsdk/protobuf/Internal$IntList;

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

    .line 7283
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$LaneInfo;->backExtenLane_:Lcom/android/carsdk/protobuf/Internal$IntList;

    return-object v0
.end method

.method public getBackLane(I)I
    .locals 1

    .line 7131
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$LaneInfo;->backLane_:Lcom/android/carsdk/protobuf/Internal$IntList;

    invoke-interface {v0, p1}, Lcom/android/carsdk/protobuf/Internal$IntList;->getInt(I)I

    move-result p1

    return p1
.end method

.method public getBackLaneCount()I
    .locals 1

    .line 7121
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$LaneInfo;->backLane_:Lcom/android/carsdk/protobuf/Internal$IntList;

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

    .line 7111
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$LaneInfo;->backLane_:Lcom/android/carsdk/protobuf/Internal$IntList;

    return-object v0
.end method

.method public getBackLaneType(I)I
    .locals 1

    .line 7879
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$LaneInfo;->backLaneType_:Lcom/android/carsdk/protobuf/Internal$IntList;

    invoke-interface {v0, p1}, Lcom/android/carsdk/protobuf/Internal$IntList;->getInt(I)I

    move-result p1

    return p1
.end method

.method public getBackLaneTypeCount()I
    .locals 1

    .line 7869
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$LaneInfo;->backLaneType_:Lcom/android/carsdk/protobuf/Internal$IntList;

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

    .line 7859
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$LaneInfo;->backLaneType_:Lcom/android/carsdk/protobuf/Internal$IntList;

    return-object v0
.end method

.method public getExtensionLane(I)I
    .locals 1

    .line 7475
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$LaneInfo;->extensionLane_:Lcom/android/carsdk/protobuf/Internal$IntList;

    invoke-interface {v0, p1}, Lcom/android/carsdk/protobuf/Internal$IntList;->getInt(I)I

    move-result p1

    return p1
.end method

.method public getExtensionLaneCount()I
    .locals 1

    .line 7465
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$LaneInfo;->extensionLane_:Lcom/android/carsdk/protobuf/Internal$IntList;

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

    .line 7455
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$LaneInfo;->extensionLane_:Lcom/android/carsdk/protobuf/Internal$IntList;

    return-object v0
.end method

.method public getFrontExtenLane(I)I
    .locals 1

    .line 7389
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$LaneInfo;->frontExtenLane_:Lcom/android/carsdk/protobuf/Internal$IntList;

    invoke-interface {v0, p1}, Lcom/android/carsdk/protobuf/Internal$IntList;->getInt(I)I

    move-result p1

    return p1
.end method

.method public getFrontExtenLaneCount()I
    .locals 1

    .line 7379
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$LaneInfo;->frontExtenLane_:Lcom/android/carsdk/protobuf/Internal$IntList;

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

    .line 7369
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$LaneInfo;->frontExtenLane_:Lcom/android/carsdk/protobuf/Internal$IntList;

    return-object v0
.end method

.method public getFrontLane(I)I
    .locals 1

    .line 7217
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$LaneInfo;->frontLane_:Lcom/android/carsdk/protobuf/Internal$IntList;

    invoke-interface {v0, p1}, Lcom/android/carsdk/protobuf/Internal$IntList;->getInt(I)I

    move-result p1

    return p1
.end method

.method public getFrontLaneCount()I
    .locals 1

    .line 7207
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$LaneInfo;->frontLane_:Lcom/android/carsdk/protobuf/Internal$IntList;

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

    .line 7197
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$LaneInfo;->frontLane_:Lcom/android/carsdk/protobuf/Internal$IntList;

    return-object v0
.end method

.method public getFrontLaneType(I)I
    .locals 1

    .line 7793
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$LaneInfo;->frontLaneType_:Lcom/android/carsdk/protobuf/Internal$IntList;

    invoke-interface {v0, p1}, Lcom/android/carsdk/protobuf/Internal$IntList;->getInt(I)I

    move-result p1

    return p1
.end method

.method public getFrontLaneTypeCount()I
    .locals 1

    .line 7783
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$LaneInfo;->frontLaneType_:Lcom/android/carsdk/protobuf/Internal$IntList;

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

    .line 7773
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$LaneInfo;->frontLaneType_:Lcom/android/carsdk/protobuf/Internal$IntList;

    return-object v0
.end method

.method public getLaneType()I
    .locals 1

    .line 7083
    iget v0, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$LaneInfo;->laneType_:I

    return v0
.end method

.method public getLinkIdx()I
    .locals 1

    .line 7651
    iget v0, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$LaneInfo;->linkIdx_:I

    return v0
.end method

.method public getNavigationId()J
    .locals 2

    .line 7944
    iget-wide v0, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$LaneInfo;->navigationId_:J

    return-wide v0
.end method

.method public getOptimalLane(I)I
    .locals 1

    .line 7707
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$LaneInfo;->optimalLane_:Lcom/android/carsdk/protobuf/Internal$IntList;

    invoke-interface {v0, p1}, Lcom/android/carsdk/protobuf/Internal$IntList;->getInt(I)I

    move-result p1

    return p1
.end method

.method public getOptimalLaneCount()I
    .locals 1

    .line 7697
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$LaneInfo;->optimalLane_:Lcom/android/carsdk/protobuf/Internal$IntList;

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

    .line 7687
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$LaneInfo;->optimalLane_:Lcom/android/carsdk/protobuf/Internal$IntList;

    return-object v0
.end method

.method public getPoint()Landroid/car/hardware/xpu/XpuXNgpNaviInfo$Coord2DDouble;
    .locals 1

    .line 7550
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$LaneInfo;->point_:Landroid/car/hardware/xpu/XpuXNgpNaviInfo$Coord2DDouble;

    if-nez v0, :cond_0

    invoke-static {}, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$Coord2DDouble;->getDefaultInstance()Landroid/car/hardware/xpu/XpuXNgpNaviInfo$Coord2DDouble;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public getPointEndIdx()J
    .locals 2

    .line 8005
    iget-wide v0, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$LaneInfo;->pointEndIdx_:J

    return-wide v0
.end method

.method public getPointStartIdx()J
    .locals 2

    .line 7975
    iget-wide v0, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$LaneInfo;->pointStartIdx_:J

    return-wide v0
.end method

.method public getSegmentIdx()I
    .locals 1

    .line 7616
    iget v0, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$LaneInfo;->segmentIdx_:I

    return v0
.end method

.method public getSerializedSize()I
    .locals 6

    .line 8087
    iget v0, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$LaneInfo;->memoizedSerializedSize:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    return v0

    .line 8091
    :cond_0
    iget v0, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$LaneInfo;->laneType_:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    .line 8093
    invoke-static {v1, v0}, Lcom/android/carsdk/protobuf/CodedOutputStream;->computeInt32Size(II)I

    move-result v0

    add-int/2addr v0, v2

    goto :goto_0

    :cond_1
    move v0, v2

    :goto_0
    move v3, v2

    move v4, v3

    .line 8097
    :goto_1
    iget-object v5, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$LaneInfo;->backLane_:Lcom/android/carsdk/protobuf/Internal$IntList;

    invoke-interface {v5}, Lcom/android/carsdk/protobuf/Internal$IntList;->size()I

    move-result v5

    if-ge v3, v5, :cond_2

    .line 8098
    iget-object v5, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$LaneInfo;->backLane_:Lcom/android/carsdk/protobuf/Internal$IntList;

    .line 8099
    invoke-interface {v5, v3}, Lcom/android/carsdk/protobuf/Internal$IntList;->getInt(I)I

    move-result v5

    invoke-static {v5}, Lcom/android/carsdk/protobuf/CodedOutputStream;->computeInt32SizeNoTag(I)I

    move-result v5

    add-int/2addr v4, v5

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_2
    add-int/2addr v0, v4

    .line 8102
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$LaneInfo;->getBackLaneList()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    mul-int/2addr v3, v1

    add-int/2addr v0, v3

    move v3, v2

    move v4, v3

    .line 8106
    :goto_2
    iget-object v5, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$LaneInfo;->frontLane_:Lcom/android/carsdk/protobuf/Internal$IntList;

    invoke-interface {v5}, Lcom/android/carsdk/protobuf/Internal$IntList;->size()I

    move-result v5

    if-ge v3, v5, :cond_3

    .line 8107
    iget-object v5, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$LaneInfo;->frontLane_:Lcom/android/carsdk/protobuf/Internal$IntList;

    .line 8108
    invoke-interface {v5, v3}, Lcom/android/carsdk/protobuf/Internal$IntList;->getInt(I)I

    move-result v5

    invoke-static {v5}, Lcom/android/carsdk/protobuf/CodedOutputStream;->computeInt32SizeNoTag(I)I

    move-result v5

    add-int/2addr v4, v5

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_3
    add-int/2addr v0, v4

    .line 8111
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$LaneInfo;->getFrontLaneList()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    mul-int/2addr v3, v1

    add-int/2addr v0, v3

    move v3, v2

    move v4, v3

    .line 8115
    :goto_3
    iget-object v5, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$LaneInfo;->backExtenLane_:Lcom/android/carsdk/protobuf/Internal$IntList;

    invoke-interface {v5}, Lcom/android/carsdk/protobuf/Internal$IntList;->size()I

    move-result v5

    if-ge v3, v5, :cond_4

    .line 8116
    iget-object v5, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$LaneInfo;->backExtenLane_:Lcom/android/carsdk/protobuf/Internal$IntList;

    .line 8117
    invoke-interface {v5, v3}, Lcom/android/carsdk/protobuf/Internal$IntList;->getInt(I)I

    move-result v5

    invoke-static {v5}, Lcom/android/carsdk/protobuf/CodedOutputStream;->computeInt32SizeNoTag(I)I

    move-result v5

    add-int/2addr v4, v5

    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    :cond_4
    add-int/2addr v0, v4

    .line 8120
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$LaneInfo;->getBackExtenLaneList()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    mul-int/2addr v3, v1

    add-int/2addr v0, v3

    move v3, v2

    move v4, v3

    .line 8124
    :goto_4
    iget-object v5, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$LaneInfo;->frontExtenLane_:Lcom/android/carsdk/protobuf/Internal$IntList;

    invoke-interface {v5}, Lcom/android/carsdk/protobuf/Internal$IntList;->size()I

    move-result v5

    if-ge v3, v5, :cond_5

    .line 8125
    iget-object v5, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$LaneInfo;->frontExtenLane_:Lcom/android/carsdk/protobuf/Internal$IntList;

    .line 8126
    invoke-interface {v5, v3}, Lcom/android/carsdk/protobuf/Internal$IntList;->getInt(I)I

    move-result v5

    invoke-static {v5}, Lcom/android/carsdk/protobuf/CodedOutputStream;->computeInt32SizeNoTag(I)I

    move-result v5

    add-int/2addr v4, v5

    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    :cond_5
    add-int/2addr v0, v4

    .line 8129
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$LaneInfo;->getFrontExtenLaneList()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    mul-int/2addr v3, v1

    add-int/2addr v0, v3

    move v3, v2

    move v4, v3

    .line 8133
    :goto_5
    iget-object v5, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$LaneInfo;->extensionLane_:Lcom/android/carsdk/protobuf/Internal$IntList;

    invoke-interface {v5}, Lcom/android/carsdk/protobuf/Internal$IntList;->size()I

    move-result v5

    if-ge v3, v5, :cond_6

    .line 8134
    iget-object v5, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$LaneInfo;->extensionLane_:Lcom/android/carsdk/protobuf/Internal$IntList;

    .line 8135
    invoke-interface {v5, v3}, Lcom/android/carsdk/protobuf/Internal$IntList;->getInt(I)I

    move-result v5

    invoke-static {v5}, Lcom/android/carsdk/protobuf/CodedOutputStream;->computeInt32SizeNoTag(I)I

    move-result v5

    add-int/2addr v4, v5

    add-int/lit8 v3, v3, 0x1

    goto :goto_5

    :cond_6
    add-int/2addr v0, v4

    .line 8138
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$LaneInfo;->getExtensionLaneList()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    mul-int/2addr v3, v1

    add-int/2addr v0, v3

    .line 8140
    iget-object v3, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$LaneInfo;->point_:Landroid/car/hardware/xpu/XpuXNgpNaviInfo$Coord2DDouble;

    if-eqz v3, :cond_7

    const/4 v3, 0x7

    .line 8142
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$LaneInfo;->getPoint()Landroid/car/hardware/xpu/XpuXNgpNaviInfo$Coord2DDouble;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/carsdk/protobuf/CodedOutputStream;->computeMessageSize(ILcom/android/carsdk/protobuf/MessageLite;)I

    move-result v3

    add-int/2addr v0, v3

    .line 8144
    :cond_7
    iget v3, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$LaneInfo;->segmentIdx_:I

    if-eqz v3, :cond_8

    const/16 v4, 0x8

    .line 8146
    invoke-static {v4, v3}, Lcom/android/carsdk/protobuf/CodedOutputStream;->computeInt32Size(II)I

    move-result v3

    add-int/2addr v0, v3

    .line 8148
    :cond_8
    iget v3, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$LaneInfo;->linkIdx_:I

    if-eqz v3, :cond_9

    const/16 v4, 0x9

    .line 8150
    invoke-static {v4, v3}, Lcom/android/carsdk/protobuf/CodedOutputStream;->computeInt32Size(II)I

    move-result v3

    add-int/2addr v0, v3

    :cond_9
    move v3, v2

    move v4, v3

    .line 8154
    :goto_6
    iget-object v5, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$LaneInfo;->optimalLane_:Lcom/android/carsdk/protobuf/Internal$IntList;

    invoke-interface {v5}, Lcom/android/carsdk/protobuf/Internal$IntList;->size()I

    move-result v5

    if-ge v3, v5, :cond_a

    .line 8155
    iget-object v5, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$LaneInfo;->optimalLane_:Lcom/android/carsdk/protobuf/Internal$IntList;

    .line 8156
    invoke-interface {v5, v3}, Lcom/android/carsdk/protobuf/Internal$IntList;->getInt(I)I

    move-result v5

    invoke-static {v5}, Lcom/android/carsdk/protobuf/CodedOutputStream;->computeInt32SizeNoTag(I)I

    move-result v5

    add-int/2addr v4, v5

    add-int/lit8 v3, v3, 0x1

    goto :goto_6

    :cond_a
    add-int/2addr v0, v4

    .line 8159
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$LaneInfo;->getOptimalLaneList()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    mul-int/2addr v3, v1

    add-int/2addr v0, v3

    move v3, v2

    move v4, v3

    .line 8163
    :goto_7
    iget-object v5, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$LaneInfo;->frontLaneType_:Lcom/android/carsdk/protobuf/Internal$IntList;

    invoke-interface {v5}, Lcom/android/carsdk/protobuf/Internal$IntList;->size()I

    move-result v5

    if-ge v3, v5, :cond_b

    .line 8164
    iget-object v5, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$LaneInfo;->frontLaneType_:Lcom/android/carsdk/protobuf/Internal$IntList;

    .line 8165
    invoke-interface {v5, v3}, Lcom/android/carsdk/protobuf/Internal$IntList;->getInt(I)I

    move-result v5

    invoke-static {v5}, Lcom/android/carsdk/protobuf/CodedOutputStream;->computeInt32SizeNoTag(I)I

    move-result v5

    add-int/2addr v4, v5

    add-int/lit8 v3, v3, 0x1

    goto :goto_7

    :cond_b
    add-int/2addr v0, v4

    .line 8168
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$LaneInfo;->getFrontLaneTypeList()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    mul-int/2addr v3, v1

    add-int/2addr v0, v3

    move v3, v2

    .line 8172
    :goto_8
    iget-object v4, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$LaneInfo;->backLaneType_:Lcom/android/carsdk/protobuf/Internal$IntList;

    invoke-interface {v4}, Lcom/android/carsdk/protobuf/Internal$IntList;->size()I

    move-result v4

    if-ge v2, v4, :cond_c

    .line 8173
    iget-object v4, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$LaneInfo;->backLaneType_:Lcom/android/carsdk/protobuf/Internal$IntList;

    .line 8174
    invoke-interface {v4, v2}, Lcom/android/carsdk/protobuf/Internal$IntList;->getInt(I)I

    move-result v4

    invoke-static {v4}, Lcom/android/carsdk/protobuf/CodedOutputStream;->computeInt32SizeNoTag(I)I

    move-result v4

    add-int/2addr v3, v4

    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    :cond_c
    add-int/2addr v0, v3

    .line 8177
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$LaneInfo;->getBackLaneTypeList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    mul-int/2addr v2, v1

    add-int/2addr v0, v2

    .line 8179
    iget-wide v1, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$LaneInfo;->navigationId_:J

    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-eqz v5, :cond_d

    const/16 v5, 0xd

    .line 8181
    invoke-static {v5, v1, v2}, Lcom/android/carsdk/protobuf/CodedOutputStream;->computeUInt64Size(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 8183
    :cond_d
    iget-wide v1, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$LaneInfo;->pointStartIdx_:J

    cmp-long v5, v1, v3

    if-eqz v5, :cond_e

    const/16 v5, 0xe

    .line 8185
    invoke-static {v5, v1, v2}, Lcom/android/carsdk/protobuf/CodedOutputStream;->computeUInt64Size(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 8187
    :cond_e
    iget-wide v1, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$LaneInfo;->pointEndIdx_:J

    cmp-long v3, v1, v3

    if-eqz v3, :cond_f

    const/16 v3, 0xf

    .line 8189
    invoke-static {v3, v1, v2}, Lcom/android/carsdk/protobuf/CodedOutputStream;->computeUInt64Size(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 8191
    :cond_f
    iput v0, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$LaneInfo;->memoizedSerializedSize:I

    return v0
.end method

.method public hasPoint()Z
    .locals 1

    .line 7540
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$LaneInfo;->point_:Landroid/car/hardware/xpu/XpuXNgpNaviInfo$Coord2DDouble;

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

    .line 8038
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$LaneInfo;->getSerializedSize()I

    .line 8039
    iget v0, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$LaneInfo;->laneType_:I

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    .line 8040
    invoke-virtual {p1, v1, v0}, Lcom/android/carsdk/protobuf/CodedOutputStream;->writeInt32(II)V

    :cond_0
    const/4 v0, 0x0

    move v1, v0

    .line 8042
    :goto_0
    iget-object v2, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$LaneInfo;->backLane_:Lcom/android/carsdk/protobuf/Internal$IntList;

    invoke-interface {v2}, Lcom/android/carsdk/protobuf/Internal$IntList;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    const/4 v2, 0x2

    .line 8043
    iget-object v3, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$LaneInfo;->backLane_:Lcom/android/carsdk/protobuf/Internal$IntList;

    invoke-interface {v3, v1}, Lcom/android/carsdk/protobuf/Internal$IntList;->getInt(I)I

    move-result v3

    invoke-virtual {p1, v2, v3}, Lcom/android/carsdk/protobuf/CodedOutputStream;->writeInt32(II)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    move v1, v0

    .line 8045
    :goto_1
    iget-object v2, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$LaneInfo;->frontLane_:Lcom/android/carsdk/protobuf/Internal$IntList;

    invoke-interface {v2}, Lcom/android/carsdk/protobuf/Internal$IntList;->size()I

    move-result v2

    if-ge v1, v2, :cond_2

    const/4 v2, 0x3

    .line 8046
    iget-object v3, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$LaneInfo;->frontLane_:Lcom/android/carsdk/protobuf/Internal$IntList;

    invoke-interface {v3, v1}, Lcom/android/carsdk/protobuf/Internal$IntList;->getInt(I)I

    move-result v3

    invoke-virtual {p1, v2, v3}, Lcom/android/carsdk/protobuf/CodedOutputStream;->writeInt32(II)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_2
    move v1, v0

    .line 8048
    :goto_2
    iget-object v2, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$LaneInfo;->backExtenLane_:Lcom/android/carsdk/protobuf/Internal$IntList;

    invoke-interface {v2}, Lcom/android/carsdk/protobuf/Internal$IntList;->size()I

    move-result v2

    if-ge v1, v2, :cond_3

    const/4 v2, 0x4

    .line 8049
    iget-object v3, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$LaneInfo;->backExtenLane_:Lcom/android/carsdk/protobuf/Internal$IntList;

    invoke-interface {v3, v1}, Lcom/android/carsdk/protobuf/Internal$IntList;->getInt(I)I

    move-result v3

    invoke-virtual {p1, v2, v3}, Lcom/android/carsdk/protobuf/CodedOutputStream;->writeInt32(II)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_3
    move v1, v0

    .line 8051
    :goto_3
    iget-object v2, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$LaneInfo;->frontExtenLane_:Lcom/android/carsdk/protobuf/Internal$IntList;

    invoke-interface {v2}, Lcom/android/carsdk/protobuf/Internal$IntList;->size()I

    move-result v2

    if-ge v1, v2, :cond_4

    const/4 v2, 0x5

    .line 8052
    iget-object v3, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$LaneInfo;->frontExtenLane_:Lcom/android/carsdk/protobuf/Internal$IntList;

    invoke-interface {v3, v1}, Lcom/android/carsdk/protobuf/Internal$IntList;->getInt(I)I

    move-result v3

    invoke-virtual {p1, v2, v3}, Lcom/android/carsdk/protobuf/CodedOutputStream;->writeInt32(II)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_4
    move v1, v0

    .line 8054
    :goto_4
    iget-object v2, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$LaneInfo;->extensionLane_:Lcom/android/carsdk/protobuf/Internal$IntList;

    invoke-interface {v2}, Lcom/android/carsdk/protobuf/Internal$IntList;->size()I

    move-result v2

    if-ge v1, v2, :cond_5

    const/4 v2, 0x6

    .line 8055
    iget-object v3, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$LaneInfo;->extensionLane_:Lcom/android/carsdk/protobuf/Internal$IntList;

    invoke-interface {v3, v1}, Lcom/android/carsdk/protobuf/Internal$IntList;->getInt(I)I

    move-result v3

    invoke-virtual {p1, v2, v3}, Lcom/android/carsdk/protobuf/CodedOutputStream;->writeInt32(II)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 8057
    :cond_5
    iget-object v1, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$LaneInfo;->point_:Landroid/car/hardware/xpu/XpuXNgpNaviInfo$Coord2DDouble;

    if-eqz v1, :cond_6

    const/4 v1, 0x7

    .line 8058
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$LaneInfo;->getPoint()Landroid/car/hardware/xpu/XpuXNgpNaviInfo$Coord2DDouble;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Lcom/android/carsdk/protobuf/CodedOutputStream;->writeMessage(ILcom/android/carsdk/protobuf/MessageLite;)V

    .line 8060
    :cond_6
    iget v1, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$LaneInfo;->segmentIdx_:I

    if-eqz v1, :cond_7

    const/16 v2, 0x8

    .line 8061
    invoke-virtual {p1, v2, v1}, Lcom/android/carsdk/protobuf/CodedOutputStream;->writeInt32(II)V

    .line 8063
    :cond_7
    iget v1, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$LaneInfo;->linkIdx_:I

    if-eqz v1, :cond_8

    const/16 v2, 0x9

    .line 8064
    invoke-virtual {p1, v2, v1}, Lcom/android/carsdk/protobuf/CodedOutputStream;->writeInt32(II)V

    :cond_8
    move v1, v0

    .line 8066
    :goto_5
    iget-object v2, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$LaneInfo;->optimalLane_:Lcom/android/carsdk/protobuf/Internal$IntList;

    invoke-interface {v2}, Lcom/android/carsdk/protobuf/Internal$IntList;->size()I

    move-result v2

    if-ge v1, v2, :cond_9

    const/16 v2, 0xa

    .line 8067
    iget-object v3, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$LaneInfo;->optimalLane_:Lcom/android/carsdk/protobuf/Internal$IntList;

    invoke-interface {v3, v1}, Lcom/android/carsdk/protobuf/Internal$IntList;->getInt(I)I

    move-result v3

    invoke-virtual {p1, v2, v3}, Lcom/android/carsdk/protobuf/CodedOutputStream;->writeInt32(II)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    :cond_9
    move v1, v0

    .line 8069
    :goto_6
    iget-object v2, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$LaneInfo;->frontLaneType_:Lcom/android/carsdk/protobuf/Internal$IntList;

    invoke-interface {v2}, Lcom/android/carsdk/protobuf/Internal$IntList;->size()I

    move-result v2

    if-ge v1, v2, :cond_a

    const/16 v2, 0xb

    .line 8070
    iget-object v3, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$LaneInfo;->frontLaneType_:Lcom/android/carsdk/protobuf/Internal$IntList;

    invoke-interface {v3, v1}, Lcom/android/carsdk/protobuf/Internal$IntList;->getInt(I)I

    move-result v3

    invoke-virtual {p1, v2, v3}, Lcom/android/carsdk/protobuf/CodedOutputStream;->writeInt32(II)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    .line 8072
    :cond_a
    :goto_7
    iget-object v1, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$LaneInfo;->backLaneType_:Lcom/android/carsdk/protobuf/Internal$IntList;

    invoke-interface {v1}, Lcom/android/carsdk/protobuf/Internal$IntList;->size()I

    move-result v1

    if-ge v0, v1, :cond_b

    const/16 v1, 0xc

    .line 8073
    iget-object v2, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$LaneInfo;->backLaneType_:Lcom/android/carsdk/protobuf/Internal$IntList;

    invoke-interface {v2, v0}, Lcom/android/carsdk/protobuf/Internal$IntList;->getInt(I)I

    move-result v2

    invoke-virtual {p1, v1, v2}, Lcom/android/carsdk/protobuf/CodedOutputStream;->writeInt32(II)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    .line 8075
    :cond_b
    iget-wide v0, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$LaneInfo;->navigationId_:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_c

    const/16 v4, 0xd

    .line 8076
    invoke-virtual {p1, v4, v0, v1}, Lcom/android/carsdk/protobuf/CodedOutputStream;->writeUInt64(IJ)V

    .line 8078
    :cond_c
    iget-wide v0, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$LaneInfo;->pointStartIdx_:J

    cmp-long v4, v0, v2

    if-eqz v4, :cond_d

    const/16 v4, 0xe

    .line 8079
    invoke-virtual {p1, v4, v0, v1}, Lcom/android/carsdk/protobuf/CodedOutputStream;->writeUInt64(IJ)V

    .line 8081
    :cond_d
    iget-wide v0, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$LaneInfo;->pointEndIdx_:J

    cmp-long v2, v0, v2

    if-eqz v2, :cond_e

    const/16 v2, 0xf

    .line 8082
    invoke-virtual {p1, v2, v0, v1}, Lcom/android/carsdk/protobuf/CodedOutputStream;->writeUInt64(IJ)V

    :cond_e
    return-void
.end method
