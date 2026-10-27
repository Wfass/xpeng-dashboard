.class public final Landroid/car/hardware/xpu/XpuProtoMessage$NaviReloadInfo;
.super Lcom/android/carsdk/protobuf/GeneratedMessageLite;
.source "XpuProtoMessage.java"

# interfaces
.implements Landroid/car/hardware/xpu/XpuProtoMessage$NaviReloadInfoOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/car/hardware/xpu/XpuProtoMessage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "NaviReloadInfo"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/car/hardware/xpu/XpuProtoMessage$NaviReloadInfo$Builder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/carsdk/protobuf/GeneratedMessageLite<",
        "Landroid/car/hardware/xpu/XpuProtoMessage$NaviReloadInfo;",
        "Landroid/car/hardware/xpu/XpuProtoMessage$NaviReloadInfo$Builder;",
        ">;",
        "Landroid/car/hardware/xpu/XpuProtoMessage$NaviReloadInfoOrBuilder;"
    }
.end annotation


# static fields
.field private static final DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuProtoMessage$NaviReloadInfo;

.field public static final EXPECT_COST_TIME_FIELD_NUMBER:I = 0x3

.field public static final FNGP_STATUS_FIELD_NUMBER:I = 0x6

.field public static final NAVI_ROUTING_INFO_V2_FIELD_NUMBER:I = 0x1

.field public static final ODD_END_FIELD_NUMBER:I = 0x5

.field public static final ODD_START_FIELD_NUMBER:I = 0x4

.field private static volatile PARSER:Lcom/android/carsdk/protobuf/Parser; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/carsdk/protobuf/Parser<",
            "Landroid/car/hardware/xpu/XpuProtoMessage$NaviReloadInfo;",
            ">;"
        }
    .end annotation
.end field

.field public static final PATHWAY_POINT_FIELD_NUMBER:I = 0x9

.field public static final RELOAD_ERROR_CODE_FIELD_NUMBER:I = 0x8

.field public static final ROUTE_ID_FIELD_NUMBER:I = 0x2

.field public static final ROUTE_SELECTED_TIMESTAMP_FIELD_NUMBER:I = 0xa

.field public static final TOTAL_ODD_MILAGE_FIELD_NUMBER:I = 0x7


# instance fields
.field private bitField0_:I

.field private expectCostTime_:J

.field private fngpStatus_:I

.field private naviRoutingInfoV2_:Landroid/car/hardware/xpu/XpuProtoMessage$NaviRoutingInfoV2;

.field private oddEnd_:Landroid/car/hardware/xpu/XpuProtoMessage$V2_Point;

.field private oddStart_:Landroid/car/hardware/xpu/XpuProtoMessage$V2_Point;

.field private pathwayPoint_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/carsdk/protobuf/Internal$ProtobufList<",
            "Landroid/car/hardware/xpu/XpuProtoMessage$V2_Point;",
            ">;"
        }
    .end annotation
.end field

.field private reloadErrorCode_:I

.field private routeId_:J

.field private routeSelectedTimestamp_:J

.field private totalOddMilage_:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 23462
    new-instance v0, Landroid/car/hardware/xpu/XpuProtoMessage$NaviReloadInfo;

    invoke-direct {v0}, Landroid/car/hardware/xpu/XpuProtoMessage$NaviReloadInfo;-><init>()V

    sput-object v0, Landroid/car/hardware/xpu/XpuProtoMessage$NaviReloadInfo;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuProtoMessage$NaviReloadInfo;

    .line 23463
    invoke-virtual {v0}, Landroid/car/hardware/xpu/XpuProtoMessage$NaviReloadInfo;->makeImmutable()V

    return-void
.end method

.method private constructor <init>()V
    .locals 3

    .line 22121
    invoke-direct {p0}, Lcom/android/carsdk/protobuf/GeneratedMessageLite;-><init>()V

    const-wide/16 v0, 0x0

    .line 22122
    iput-wide v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$NaviReloadInfo;->routeId_:J

    .line 22123
    iput-wide v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$NaviReloadInfo;->expectCostTime_:J

    const/4 v2, 0x0

    .line 22124
    iput v2, p0, Landroid/car/hardware/xpu/XpuProtoMessage$NaviReloadInfo;->fngpStatus_:I

    .line 22125
    iput v2, p0, Landroid/car/hardware/xpu/XpuProtoMessage$NaviReloadInfo;->totalOddMilage_:I

    .line 22126
    iput v2, p0, Landroid/car/hardware/xpu/XpuProtoMessage$NaviReloadInfo;->reloadErrorCode_:I

    .line 22127
    invoke-static {}, Landroid/car/hardware/xpu/XpuProtoMessage$NaviReloadInfo;->emptyProtobufList()Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    move-result-object v2

    iput-object v2, p0, Landroid/car/hardware/xpu/XpuProtoMessage$NaviReloadInfo;->pathwayPoint_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    .line 22128
    iput-wide v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$NaviReloadInfo;->routeSelectedTimestamp_:J

    return-void
.end method

.method static synthetic access$51600()Landroid/car/hardware/xpu/XpuProtoMessage$NaviReloadInfo;
    .locals 1

    .line 22116
    sget-object v0, Landroid/car/hardware/xpu/XpuProtoMessage$NaviReloadInfo;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuProtoMessage$NaviReloadInfo;

    return-object v0
.end method

.method static synthetic access$51700(Landroid/car/hardware/xpu/XpuProtoMessage$NaviReloadInfo;Landroid/car/hardware/xpu/XpuProtoMessage$NaviRoutingInfoV2;)V
    .locals 0

    .line 22116
    invoke-direct {p0, p1}, Landroid/car/hardware/xpu/XpuProtoMessage$NaviReloadInfo;->setNaviRoutingInfoV2(Landroid/car/hardware/xpu/XpuProtoMessage$NaviRoutingInfoV2;)V

    return-void
.end method

.method static synthetic access$51800(Landroid/car/hardware/xpu/XpuProtoMessage$NaviReloadInfo;Landroid/car/hardware/xpu/XpuProtoMessage$NaviRoutingInfoV2$Builder;)V
    .locals 0

    .line 22116
    invoke-direct {p0, p1}, Landroid/car/hardware/xpu/XpuProtoMessage$NaviReloadInfo;->setNaviRoutingInfoV2(Landroid/car/hardware/xpu/XpuProtoMessage$NaviRoutingInfoV2$Builder;)V

    return-void
.end method

.method static synthetic access$51900(Landroid/car/hardware/xpu/XpuProtoMessage$NaviReloadInfo;Landroid/car/hardware/xpu/XpuProtoMessage$NaviRoutingInfoV2;)V
    .locals 0

    .line 22116
    invoke-direct {p0, p1}, Landroid/car/hardware/xpu/XpuProtoMessage$NaviReloadInfo;->mergeNaviRoutingInfoV2(Landroid/car/hardware/xpu/XpuProtoMessage$NaviRoutingInfoV2;)V

    return-void
.end method

.method static synthetic access$52000(Landroid/car/hardware/xpu/XpuProtoMessage$NaviReloadInfo;)V
    .locals 0

    .line 22116
    invoke-direct {p0}, Landroid/car/hardware/xpu/XpuProtoMessage$NaviReloadInfo;->clearNaviRoutingInfoV2()V

    return-void
.end method

.method static synthetic access$52100(Landroid/car/hardware/xpu/XpuProtoMessage$NaviReloadInfo;J)V
    .locals 0

    .line 22116
    invoke-direct {p0, p1, p2}, Landroid/car/hardware/xpu/XpuProtoMessage$NaviReloadInfo;->setRouteId(J)V

    return-void
.end method

.method static synthetic access$52200(Landroid/car/hardware/xpu/XpuProtoMessage$NaviReloadInfo;)V
    .locals 0

    .line 22116
    invoke-direct {p0}, Landroid/car/hardware/xpu/XpuProtoMessage$NaviReloadInfo;->clearRouteId()V

    return-void
.end method

.method static synthetic access$52300(Landroid/car/hardware/xpu/XpuProtoMessage$NaviReloadInfo;J)V
    .locals 0

    .line 22116
    invoke-direct {p0, p1, p2}, Landroid/car/hardware/xpu/XpuProtoMessage$NaviReloadInfo;->setExpectCostTime(J)V

    return-void
.end method

.method static synthetic access$52400(Landroid/car/hardware/xpu/XpuProtoMessage$NaviReloadInfo;)V
    .locals 0

    .line 22116
    invoke-direct {p0}, Landroid/car/hardware/xpu/XpuProtoMessage$NaviReloadInfo;->clearExpectCostTime()V

    return-void
.end method

.method static synthetic access$52500(Landroid/car/hardware/xpu/XpuProtoMessage$NaviReloadInfo;Landroid/car/hardware/xpu/XpuProtoMessage$V2_Point;)V
    .locals 0

    .line 22116
    invoke-direct {p0, p1}, Landroid/car/hardware/xpu/XpuProtoMessage$NaviReloadInfo;->setOddStart(Landroid/car/hardware/xpu/XpuProtoMessage$V2_Point;)V

    return-void
.end method

.method static synthetic access$52600(Landroid/car/hardware/xpu/XpuProtoMessage$NaviReloadInfo;Landroid/car/hardware/xpu/XpuProtoMessage$V2_Point$Builder;)V
    .locals 0

    .line 22116
    invoke-direct {p0, p1}, Landroid/car/hardware/xpu/XpuProtoMessage$NaviReloadInfo;->setOddStart(Landroid/car/hardware/xpu/XpuProtoMessage$V2_Point$Builder;)V

    return-void
.end method

.method static synthetic access$52700(Landroid/car/hardware/xpu/XpuProtoMessage$NaviReloadInfo;Landroid/car/hardware/xpu/XpuProtoMessage$V2_Point;)V
    .locals 0

    .line 22116
    invoke-direct {p0, p1}, Landroid/car/hardware/xpu/XpuProtoMessage$NaviReloadInfo;->mergeOddStart(Landroid/car/hardware/xpu/XpuProtoMessage$V2_Point;)V

    return-void
.end method

.method static synthetic access$52800(Landroid/car/hardware/xpu/XpuProtoMessage$NaviReloadInfo;)V
    .locals 0

    .line 22116
    invoke-direct {p0}, Landroid/car/hardware/xpu/XpuProtoMessage$NaviReloadInfo;->clearOddStart()V

    return-void
.end method

.method static synthetic access$52900(Landroid/car/hardware/xpu/XpuProtoMessage$NaviReloadInfo;Landroid/car/hardware/xpu/XpuProtoMessage$V2_Point;)V
    .locals 0

    .line 22116
    invoke-direct {p0, p1}, Landroid/car/hardware/xpu/XpuProtoMessage$NaviReloadInfo;->setOddEnd(Landroid/car/hardware/xpu/XpuProtoMessage$V2_Point;)V

    return-void
.end method

.method static synthetic access$53000(Landroid/car/hardware/xpu/XpuProtoMessage$NaviReloadInfo;Landroid/car/hardware/xpu/XpuProtoMessage$V2_Point$Builder;)V
    .locals 0

    .line 22116
    invoke-direct {p0, p1}, Landroid/car/hardware/xpu/XpuProtoMessage$NaviReloadInfo;->setOddEnd(Landroid/car/hardware/xpu/XpuProtoMessage$V2_Point$Builder;)V

    return-void
.end method

.method static synthetic access$53100(Landroid/car/hardware/xpu/XpuProtoMessage$NaviReloadInfo;Landroid/car/hardware/xpu/XpuProtoMessage$V2_Point;)V
    .locals 0

    .line 22116
    invoke-direct {p0, p1}, Landroid/car/hardware/xpu/XpuProtoMessage$NaviReloadInfo;->mergeOddEnd(Landroid/car/hardware/xpu/XpuProtoMessage$V2_Point;)V

    return-void
.end method

.method static synthetic access$53200(Landroid/car/hardware/xpu/XpuProtoMessage$NaviReloadInfo;)V
    .locals 0

    .line 22116
    invoke-direct {p0}, Landroid/car/hardware/xpu/XpuProtoMessage$NaviReloadInfo;->clearOddEnd()V

    return-void
.end method

.method static synthetic access$53300(Landroid/car/hardware/xpu/XpuProtoMessage$NaviReloadInfo;I)V
    .locals 0

    .line 22116
    invoke-direct {p0, p1}, Landroid/car/hardware/xpu/XpuProtoMessage$NaviReloadInfo;->setFngpStatusValue(I)V

    return-void
.end method

.method static synthetic access$53400(Landroid/car/hardware/xpu/XpuProtoMessage$NaviReloadInfo;Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpStatus;)V
    .locals 0

    .line 22116
    invoke-direct {p0, p1}, Landroid/car/hardware/xpu/XpuProtoMessage$NaviReloadInfo;->setFngpStatus(Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpStatus;)V

    return-void
.end method

.method static synthetic access$53500(Landroid/car/hardware/xpu/XpuProtoMessage$NaviReloadInfo;)V
    .locals 0

    .line 22116
    invoke-direct {p0}, Landroid/car/hardware/xpu/XpuProtoMessage$NaviReloadInfo;->clearFngpStatus()V

    return-void
.end method

.method static synthetic access$53600(Landroid/car/hardware/xpu/XpuProtoMessage$NaviReloadInfo;I)V
    .locals 0

    .line 22116
    invoke-direct {p0, p1}, Landroid/car/hardware/xpu/XpuProtoMessage$NaviReloadInfo;->setTotalOddMilage(I)V

    return-void
.end method

.method static synthetic access$53700(Landroid/car/hardware/xpu/XpuProtoMessage$NaviReloadInfo;)V
    .locals 0

    .line 22116
    invoke-direct {p0}, Landroid/car/hardware/xpu/XpuProtoMessage$NaviReloadInfo;->clearTotalOddMilage()V

    return-void
.end method

.method static synthetic access$53800(Landroid/car/hardware/xpu/XpuProtoMessage$NaviReloadInfo;I)V
    .locals 0

    .line 22116
    invoke-direct {p0, p1}, Landroid/car/hardware/xpu/XpuProtoMessage$NaviReloadInfo;->setReloadErrorCode(I)V

    return-void
.end method

.method static synthetic access$53900(Landroid/car/hardware/xpu/XpuProtoMessage$NaviReloadInfo;)V
    .locals 0

    .line 22116
    invoke-direct {p0}, Landroid/car/hardware/xpu/XpuProtoMessage$NaviReloadInfo;->clearReloadErrorCode()V

    return-void
.end method

.method static synthetic access$54000(Landroid/car/hardware/xpu/XpuProtoMessage$NaviReloadInfo;ILandroid/car/hardware/xpu/XpuProtoMessage$V2_Point;)V
    .locals 0

    .line 22116
    invoke-direct {p0, p1, p2}, Landroid/car/hardware/xpu/XpuProtoMessage$NaviReloadInfo;->setPathwayPoint(ILandroid/car/hardware/xpu/XpuProtoMessage$V2_Point;)V

    return-void
.end method

.method static synthetic access$54100(Landroid/car/hardware/xpu/XpuProtoMessage$NaviReloadInfo;ILandroid/car/hardware/xpu/XpuProtoMessage$V2_Point$Builder;)V
    .locals 0

    .line 22116
    invoke-direct {p0, p1, p2}, Landroid/car/hardware/xpu/XpuProtoMessage$NaviReloadInfo;->setPathwayPoint(ILandroid/car/hardware/xpu/XpuProtoMessage$V2_Point$Builder;)V

    return-void
.end method

.method static synthetic access$54200(Landroid/car/hardware/xpu/XpuProtoMessage$NaviReloadInfo;Landroid/car/hardware/xpu/XpuProtoMessage$V2_Point;)V
    .locals 0

    .line 22116
    invoke-direct {p0, p1}, Landroid/car/hardware/xpu/XpuProtoMessage$NaviReloadInfo;->addPathwayPoint(Landroid/car/hardware/xpu/XpuProtoMessage$V2_Point;)V

    return-void
.end method

.method static synthetic access$54300(Landroid/car/hardware/xpu/XpuProtoMessage$NaviReloadInfo;ILandroid/car/hardware/xpu/XpuProtoMessage$V2_Point;)V
    .locals 0

    .line 22116
    invoke-direct {p0, p1, p2}, Landroid/car/hardware/xpu/XpuProtoMessage$NaviReloadInfo;->addPathwayPoint(ILandroid/car/hardware/xpu/XpuProtoMessage$V2_Point;)V

    return-void
.end method

.method static synthetic access$54400(Landroid/car/hardware/xpu/XpuProtoMessage$NaviReloadInfo;Landroid/car/hardware/xpu/XpuProtoMessage$V2_Point$Builder;)V
    .locals 0

    .line 22116
    invoke-direct {p0, p1}, Landroid/car/hardware/xpu/XpuProtoMessage$NaviReloadInfo;->addPathwayPoint(Landroid/car/hardware/xpu/XpuProtoMessage$V2_Point$Builder;)V

    return-void
.end method

.method static synthetic access$54500(Landroid/car/hardware/xpu/XpuProtoMessage$NaviReloadInfo;ILandroid/car/hardware/xpu/XpuProtoMessage$V2_Point$Builder;)V
    .locals 0

    .line 22116
    invoke-direct {p0, p1, p2}, Landroid/car/hardware/xpu/XpuProtoMessage$NaviReloadInfo;->addPathwayPoint(ILandroid/car/hardware/xpu/XpuProtoMessage$V2_Point$Builder;)V

    return-void
.end method

.method static synthetic access$54600(Landroid/car/hardware/xpu/XpuProtoMessage$NaviReloadInfo;Ljava/lang/Iterable;)V
    .locals 0

    .line 22116
    invoke-direct {p0, p1}, Landroid/car/hardware/xpu/XpuProtoMessage$NaviReloadInfo;->addAllPathwayPoint(Ljava/lang/Iterable;)V

    return-void
.end method

.method static synthetic access$54700(Landroid/car/hardware/xpu/XpuProtoMessage$NaviReloadInfo;)V
    .locals 0

    .line 22116
    invoke-direct {p0}, Landroid/car/hardware/xpu/XpuProtoMessage$NaviReloadInfo;->clearPathwayPoint()V

    return-void
.end method

.method static synthetic access$54800(Landroid/car/hardware/xpu/XpuProtoMessage$NaviReloadInfo;I)V
    .locals 0

    .line 22116
    invoke-direct {p0, p1}, Landroid/car/hardware/xpu/XpuProtoMessage$NaviReloadInfo;->removePathwayPoint(I)V

    return-void
.end method

.method static synthetic access$54900(Landroid/car/hardware/xpu/XpuProtoMessage$NaviReloadInfo;J)V
    .locals 0

    .line 22116
    invoke-direct {p0, p1, p2}, Landroid/car/hardware/xpu/XpuProtoMessage$NaviReloadInfo;->setRouteSelectedTimestamp(J)V

    return-void
.end method

.method static synthetic access$55000(Landroid/car/hardware/xpu/XpuProtoMessage$NaviReloadInfo;)V
    .locals 0

    .line 22116
    invoke-direct {p0}, Landroid/car/hardware/xpu/XpuProtoMessage$NaviReloadInfo;->clearRouteSelectedTimestamp()V

    return-void
.end method

.method private addAllPathwayPoint(Ljava/lang/Iterable;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Landroid/car/hardware/xpu/XpuProtoMessage$V2_Point;",
            ">;)V"
        }
    .end annotation

    .line 22592
    invoke-direct {p0}, Landroid/car/hardware/xpu/XpuProtoMessage$NaviReloadInfo;->ensurePathwayPointIsMutable()V

    .line 22593
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$NaviReloadInfo;->pathwayPoint_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    invoke-static {p1, v0}, Lcom/android/carsdk/protobuf/AbstractMessageLite;->addAll(Ljava/lang/Iterable;Ljava/util/Collection;)V

    return-void
.end method

.method private addPathwayPoint(ILandroid/car/hardware/xpu/XpuProtoMessage$V2_Point$Builder;)V
    .locals 1

    .line 22580
    invoke-direct {p0}, Landroid/car/hardware/xpu/XpuProtoMessage$NaviReloadInfo;->ensurePathwayPointIsMutable()V

    .line 22581
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$NaviReloadInfo;->pathwayPoint_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    invoke-virtual {p2}, Landroid/car/hardware/xpu/XpuProtoMessage$V2_Point$Builder;->build()Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object p2

    check-cast p2, Landroid/car/hardware/xpu/XpuProtoMessage$V2_Point;

    invoke-interface {v0, p1, p2}, Lcom/android/carsdk/protobuf/Internal$ProtobufList;->add(ILjava/lang/Object;)V

    return-void
.end method

.method private addPathwayPoint(ILandroid/car/hardware/xpu/XpuProtoMessage$V2_Point;)V
    .locals 1

    .line 22554
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 22556
    invoke-direct {p0}, Landroid/car/hardware/xpu/XpuProtoMessage$NaviReloadInfo;->ensurePathwayPointIsMutable()V

    .line 22557
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$NaviReloadInfo;->pathwayPoint_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1, p2}, Lcom/android/carsdk/protobuf/Internal$ProtobufList;->add(ILjava/lang/Object;)V

    return-void
.end method

.method private addPathwayPoint(Landroid/car/hardware/xpu/XpuProtoMessage$V2_Point$Builder;)V
    .locals 1

    .line 22568
    invoke-direct {p0}, Landroid/car/hardware/xpu/XpuProtoMessage$NaviReloadInfo;->ensurePathwayPointIsMutable()V

    .line 22569
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$NaviReloadInfo;->pathwayPoint_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    invoke-virtual {p1}, Landroid/car/hardware/xpu/XpuProtoMessage$V2_Point$Builder;->build()Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Landroid/car/hardware/xpu/XpuProtoMessage$V2_Point;

    invoke-interface {v0, p1}, Lcom/android/carsdk/protobuf/Internal$ProtobufList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private addPathwayPoint(Landroid/car/hardware/xpu/XpuProtoMessage$V2_Point;)V
    .locals 1

    .line 22539
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 22541
    invoke-direct {p0}, Landroid/car/hardware/xpu/XpuProtoMessage$NaviReloadInfo;->ensurePathwayPointIsMutable()V

    .line 22542
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$NaviReloadInfo;->pathwayPoint_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1}, Lcom/android/carsdk/protobuf/Internal$ProtobufList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private clearExpectCostTime()V
    .locals 2

    const-wide/16 v0, 0x0

    .line 22226
    iput-wide v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$NaviReloadInfo;->expectCostTime_:J

    return-void
.end method

.method private clearFngpStatus()V
    .locals 1

    const/4 v0, 0x0

    .line 22369
    iput v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$NaviReloadInfo;->fngpStatus_:I

    return-void
.end method

.method private clearNaviRoutingInfoV2()V
    .locals 1

    const/4 v0, 0x0

    .line 22179
    iput-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$NaviReloadInfo;->naviRoutingInfoV2_:Landroid/car/hardware/xpu/XpuProtoMessage$NaviRoutingInfoV2;

    return-void
.end method

.method private clearOddEnd()V
    .locals 1

    const/4 v0, 0x0

    .line 22329
    iput-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$NaviReloadInfo;->oddEnd_:Landroid/car/hardware/xpu/XpuProtoMessage$V2_Point;

    return-void
.end method

.method private clearOddStart()V
    .locals 1

    const/4 v0, 0x0

    .line 22277
    iput-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$NaviReloadInfo;->oddStart_:Landroid/car/hardware/xpu/XpuProtoMessage$V2_Point;

    return-void
.end method

.method private clearPathwayPoint()V
    .locals 1

    .line 22604
    invoke-static {}, Landroid/car/hardware/xpu/XpuProtoMessage$NaviReloadInfo;->emptyProtobufList()Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    move-result-object v0

    iput-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$NaviReloadInfo;->pathwayPoint_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    return-void
.end method

.method private clearReloadErrorCode()V
    .locals 1

    const/4 v0, 0x0

    .line 22439
    iput v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$NaviReloadInfo;->reloadErrorCode_:I

    return-void
.end method

.method private clearRouteId()V
    .locals 2

    const-wide/16 v0, 0x0

    .line 22203
    iput-wide v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$NaviReloadInfo;->routeId_:J

    return-void
.end method

.method private clearRouteSelectedTimestamp()V
    .locals 2

    const-wide/16 v0, 0x0

    .line 22650
    iput-wide v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$NaviReloadInfo;->routeSelectedTimestamp_:J

    return-void
.end method

.method private clearTotalOddMilage()V
    .locals 1

    const/4 v0, 0x0

    .line 22404
    iput v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$NaviReloadInfo;->totalOddMilage_:I

    return-void
.end method

.method private ensurePathwayPointIsMutable()V
    .locals 1

    .line 22497
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$NaviReloadInfo;->pathwayPoint_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    invoke-interface {v0}, Lcom/android/carsdk/protobuf/Internal$ProtobufList;->isModifiable()Z

    move-result v0

    if-nez v0, :cond_0

    .line 22498
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$NaviReloadInfo;->pathwayPoint_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    .line 22499
    invoke-static {v0}, Lcom/android/carsdk/protobuf/GeneratedMessageLite;->mutableCopy(Lcom/android/carsdk/protobuf/Internal$ProtobufList;)Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    move-result-object v0

    iput-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$NaviReloadInfo;->pathwayPoint_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    :cond_0
    return-void
.end method

.method public static getDefaultInstance()Landroid/car/hardware/xpu/XpuProtoMessage$NaviReloadInfo;
    .locals 1

    .line 23467
    sget-object v0, Landroid/car/hardware/xpu/XpuProtoMessage$NaviReloadInfo;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuProtoMessage$NaviReloadInfo;

    return-object v0
.end method

.method private mergeNaviRoutingInfoV2(Landroid/car/hardware/xpu/XpuProtoMessage$NaviRoutingInfoV2;)V
    .locals 2

    .line 22167
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$NaviReloadInfo;->naviRoutingInfoV2_:Landroid/car/hardware/xpu/XpuProtoMessage$NaviRoutingInfoV2;

    if-eqz v0, :cond_0

    .line 22168
    invoke-static {}, Landroid/car/hardware/xpu/XpuProtoMessage$NaviRoutingInfoV2;->getDefaultInstance()Landroid/car/hardware/xpu/XpuProtoMessage$NaviRoutingInfoV2;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 22169
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$NaviReloadInfo;->naviRoutingInfoV2_:Landroid/car/hardware/xpu/XpuProtoMessage$NaviRoutingInfoV2;

    .line 22170
    invoke-static {v0}, Landroid/car/hardware/xpu/XpuProtoMessage$NaviRoutingInfoV2;->newBuilder(Landroid/car/hardware/xpu/XpuProtoMessage$NaviRoutingInfoV2;)Landroid/car/hardware/xpu/XpuProtoMessage$NaviRoutingInfoV2$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/car/hardware/xpu/XpuProtoMessage$NaviRoutingInfoV2$Builder;->mergeFrom(Lcom/android/carsdk/protobuf/GeneratedMessageLite;)Lcom/android/carsdk/protobuf/GeneratedMessageLite$Builder;

    move-result-object p1

    check-cast p1, Landroid/car/hardware/xpu/XpuProtoMessage$NaviRoutingInfoV2$Builder;

    invoke-virtual {p1}, Landroid/car/hardware/xpu/XpuProtoMessage$NaviRoutingInfoV2$Builder;->buildPartial()Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Landroid/car/hardware/xpu/XpuProtoMessage$NaviRoutingInfoV2;

    iput-object p1, p0, Landroid/car/hardware/xpu/XpuProtoMessage$NaviReloadInfo;->naviRoutingInfoV2_:Landroid/car/hardware/xpu/XpuProtoMessage$NaviRoutingInfoV2;

    goto :goto_0

    .line 22172
    :cond_0
    iput-object p1, p0, Landroid/car/hardware/xpu/XpuProtoMessage$NaviReloadInfo;->naviRoutingInfoV2_:Landroid/car/hardware/xpu/XpuProtoMessage$NaviRoutingInfoV2;

    :goto_0
    return-void
.end method

.method private mergeOddEnd(Landroid/car/hardware/xpu/XpuProtoMessage$V2_Point;)V
    .locals 2

    .line 22317
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$NaviReloadInfo;->oddEnd_:Landroid/car/hardware/xpu/XpuProtoMessage$V2_Point;

    if-eqz v0, :cond_0

    .line 22318
    invoke-static {}, Landroid/car/hardware/xpu/XpuProtoMessage$V2_Point;->getDefaultInstance()Landroid/car/hardware/xpu/XpuProtoMessage$V2_Point;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 22319
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$NaviReloadInfo;->oddEnd_:Landroid/car/hardware/xpu/XpuProtoMessage$V2_Point;

    .line 22320
    invoke-static {v0}, Landroid/car/hardware/xpu/XpuProtoMessage$V2_Point;->newBuilder(Landroid/car/hardware/xpu/XpuProtoMessage$V2_Point;)Landroid/car/hardware/xpu/XpuProtoMessage$V2_Point$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/car/hardware/xpu/XpuProtoMessage$V2_Point$Builder;->mergeFrom(Lcom/android/carsdk/protobuf/GeneratedMessageLite;)Lcom/android/carsdk/protobuf/GeneratedMessageLite$Builder;

    move-result-object p1

    check-cast p1, Landroid/car/hardware/xpu/XpuProtoMessage$V2_Point$Builder;

    invoke-virtual {p1}, Landroid/car/hardware/xpu/XpuProtoMessage$V2_Point$Builder;->buildPartial()Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Landroid/car/hardware/xpu/XpuProtoMessage$V2_Point;

    iput-object p1, p0, Landroid/car/hardware/xpu/XpuProtoMessage$NaviReloadInfo;->oddEnd_:Landroid/car/hardware/xpu/XpuProtoMessage$V2_Point;

    goto :goto_0

    .line 22322
    :cond_0
    iput-object p1, p0, Landroid/car/hardware/xpu/XpuProtoMessage$NaviReloadInfo;->oddEnd_:Landroid/car/hardware/xpu/XpuProtoMessage$V2_Point;

    :goto_0
    return-void
.end method

.method private mergeOddStart(Landroid/car/hardware/xpu/XpuProtoMessage$V2_Point;)V
    .locals 2

    .line 22265
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$NaviReloadInfo;->oddStart_:Landroid/car/hardware/xpu/XpuProtoMessage$V2_Point;

    if-eqz v0, :cond_0

    .line 22266
    invoke-static {}, Landroid/car/hardware/xpu/XpuProtoMessage$V2_Point;->getDefaultInstance()Landroid/car/hardware/xpu/XpuProtoMessage$V2_Point;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 22267
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$NaviReloadInfo;->oddStart_:Landroid/car/hardware/xpu/XpuProtoMessage$V2_Point;

    .line 22268
    invoke-static {v0}, Landroid/car/hardware/xpu/XpuProtoMessage$V2_Point;->newBuilder(Landroid/car/hardware/xpu/XpuProtoMessage$V2_Point;)Landroid/car/hardware/xpu/XpuProtoMessage$V2_Point$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/car/hardware/xpu/XpuProtoMessage$V2_Point$Builder;->mergeFrom(Lcom/android/carsdk/protobuf/GeneratedMessageLite;)Lcom/android/carsdk/protobuf/GeneratedMessageLite$Builder;

    move-result-object p1

    check-cast p1, Landroid/car/hardware/xpu/XpuProtoMessage$V2_Point$Builder;

    invoke-virtual {p1}, Landroid/car/hardware/xpu/XpuProtoMessage$V2_Point$Builder;->buildPartial()Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Landroid/car/hardware/xpu/XpuProtoMessage$V2_Point;

    iput-object p1, p0, Landroid/car/hardware/xpu/XpuProtoMessage$NaviReloadInfo;->oddStart_:Landroid/car/hardware/xpu/XpuProtoMessage$V2_Point;

    goto :goto_0

    .line 22270
    :cond_0
    iput-object p1, p0, Landroid/car/hardware/xpu/XpuProtoMessage$NaviReloadInfo;->oddStart_:Landroid/car/hardware/xpu/XpuProtoMessage$V2_Point;

    :goto_0
    return-void
.end method

.method public static newBuilder()Landroid/car/hardware/xpu/XpuProtoMessage$NaviReloadInfo$Builder;
    .locals 1

    .line 22798
    sget-object v0, Landroid/car/hardware/xpu/XpuProtoMessage$NaviReloadInfo;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuProtoMessage$NaviReloadInfo;

    invoke-virtual {v0}, Landroid/car/hardware/xpu/XpuProtoMessage$NaviReloadInfo;->toBuilder()Lcom/android/carsdk/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Landroid/car/hardware/xpu/XpuProtoMessage$NaviReloadInfo$Builder;

    return-object v0
.end method

.method public static newBuilder(Landroid/car/hardware/xpu/XpuProtoMessage$NaviReloadInfo;)Landroid/car/hardware/xpu/XpuProtoMessage$NaviReloadInfo$Builder;
    .locals 1

    .line 22801
    sget-object v0, Landroid/car/hardware/xpu/XpuProtoMessage$NaviReloadInfo;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuProtoMessage$NaviReloadInfo;

    invoke-virtual {v0}, Landroid/car/hardware/xpu/XpuProtoMessage$NaviReloadInfo;->toBuilder()Lcom/android/carsdk/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Landroid/car/hardware/xpu/XpuProtoMessage$NaviReloadInfo$Builder;

    invoke-virtual {v0, p0}, Landroid/car/hardware/xpu/XpuProtoMessage$NaviReloadInfo$Builder;->mergeFrom(Lcom/android/carsdk/protobuf/GeneratedMessageLite;)Lcom/android/carsdk/protobuf/GeneratedMessageLite$Builder;

    move-result-object p0

    check-cast p0, Landroid/car/hardware/xpu/XpuProtoMessage$NaviReloadInfo$Builder;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Landroid/car/hardware/xpu/XpuProtoMessage$NaviReloadInfo;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 22775
    sget-object v0, Landroid/car/hardware/xpu/XpuProtoMessage$NaviReloadInfo;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuProtoMessage$NaviReloadInfo;

    invoke-static {v0, p0}, Landroid/car/hardware/xpu/XpuProtoMessage$NaviReloadInfo;->parseDelimitedFrom(Lcom/android/carsdk/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Landroid/car/hardware/xpu/XpuProtoMessage$NaviReloadInfo;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/android/carsdk/protobuf/ExtensionRegistryLite;)Landroid/car/hardware/xpu/XpuProtoMessage$NaviReloadInfo;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 22781
    sget-object v0, Landroid/car/hardware/xpu/XpuProtoMessage$NaviReloadInfo;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuProtoMessage$NaviReloadInfo;

    invoke-static {v0, p0, p1}, Landroid/car/hardware/xpu/XpuProtoMessage$NaviReloadInfo;->parseDelimitedFrom(Lcom/android/carsdk/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/android/carsdk/protobuf/ExtensionRegistryLite;)Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Landroid/car/hardware/xpu/XpuProtoMessage$NaviReloadInfo;

    return-object p0
.end method

.method public static parseFrom(Lcom/android/carsdk/protobuf/ByteString;)Landroid/car/hardware/xpu/XpuProtoMessage$NaviReloadInfo;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/carsdk/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 22739
    sget-object v0, Landroid/car/hardware/xpu/XpuProtoMessage$NaviReloadInfo;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuProtoMessage$NaviReloadInfo;

    invoke-static {v0, p0}, Lcom/android/carsdk/protobuf/GeneratedMessageLite;->parseFrom(Lcom/android/carsdk/protobuf/GeneratedMessageLite;Lcom/android/carsdk/protobuf/ByteString;)Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Landroid/car/hardware/xpu/XpuProtoMessage$NaviReloadInfo;

    return-object p0
.end method

.method public static parseFrom(Lcom/android/carsdk/protobuf/ByteString;Lcom/android/carsdk/protobuf/ExtensionRegistryLite;)Landroid/car/hardware/xpu/XpuProtoMessage$NaviReloadInfo;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/carsdk/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 22746
    sget-object v0, Landroid/car/hardware/xpu/XpuProtoMessage$NaviReloadInfo;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuProtoMessage$NaviReloadInfo;

    invoke-static {v0, p0, p1}, Lcom/android/carsdk/protobuf/GeneratedMessageLite;->parseFrom(Lcom/android/carsdk/protobuf/GeneratedMessageLite;Lcom/android/carsdk/protobuf/ByteString;Lcom/android/carsdk/protobuf/ExtensionRegistryLite;)Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Landroid/car/hardware/xpu/XpuProtoMessage$NaviReloadInfo;

    return-object p0
.end method

.method public static parseFrom(Lcom/android/carsdk/protobuf/CodedInputStream;)Landroid/car/hardware/xpu/XpuProtoMessage$NaviReloadInfo;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 22786
    sget-object v0, Landroid/car/hardware/xpu/XpuProtoMessage$NaviReloadInfo;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuProtoMessage$NaviReloadInfo;

    invoke-static {v0, p0}, Lcom/android/carsdk/protobuf/GeneratedMessageLite;->parseFrom(Lcom/android/carsdk/protobuf/GeneratedMessageLite;Lcom/android/carsdk/protobuf/CodedInputStream;)Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Landroid/car/hardware/xpu/XpuProtoMessage$NaviReloadInfo;

    return-object p0
.end method

.method public static parseFrom(Lcom/android/carsdk/protobuf/CodedInputStream;Lcom/android/carsdk/protobuf/ExtensionRegistryLite;)Landroid/car/hardware/xpu/XpuProtoMessage$NaviReloadInfo;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 22793
    sget-object v0, Landroid/car/hardware/xpu/XpuProtoMessage$NaviReloadInfo;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuProtoMessage$NaviReloadInfo;

    invoke-static {v0, p0, p1}, Lcom/android/carsdk/protobuf/GeneratedMessageLite;->parseFrom(Lcom/android/carsdk/protobuf/GeneratedMessageLite;Lcom/android/carsdk/protobuf/CodedInputStream;Lcom/android/carsdk/protobuf/ExtensionRegistryLite;)Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Landroid/car/hardware/xpu/XpuProtoMessage$NaviReloadInfo;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Landroid/car/hardware/xpu/XpuProtoMessage$NaviReloadInfo;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 22763
    sget-object v0, Landroid/car/hardware/xpu/XpuProtoMessage$NaviReloadInfo;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuProtoMessage$NaviReloadInfo;

    invoke-static {v0, p0}, Lcom/android/carsdk/protobuf/GeneratedMessageLite;->parseFrom(Lcom/android/carsdk/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Landroid/car/hardware/xpu/XpuProtoMessage$NaviReloadInfo;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/android/carsdk/protobuf/ExtensionRegistryLite;)Landroid/car/hardware/xpu/XpuProtoMessage$NaviReloadInfo;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 22770
    sget-object v0, Landroid/car/hardware/xpu/XpuProtoMessage$NaviReloadInfo;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuProtoMessage$NaviReloadInfo;

    invoke-static {v0, p0, p1}, Lcom/android/carsdk/protobuf/GeneratedMessageLite;->parseFrom(Lcom/android/carsdk/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/android/carsdk/protobuf/ExtensionRegistryLite;)Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Landroid/car/hardware/xpu/XpuProtoMessage$NaviReloadInfo;

    return-object p0
.end method

.method public static parseFrom([B)Landroid/car/hardware/xpu/XpuProtoMessage$NaviReloadInfo;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/carsdk/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 22751
    sget-object v0, Landroid/car/hardware/xpu/XpuProtoMessage$NaviReloadInfo;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuProtoMessage$NaviReloadInfo;

    invoke-static {v0, p0}, Lcom/android/carsdk/protobuf/GeneratedMessageLite;->parseFrom(Lcom/android/carsdk/protobuf/GeneratedMessageLite;[B)Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Landroid/car/hardware/xpu/XpuProtoMessage$NaviReloadInfo;

    return-object p0
.end method

.method public static parseFrom([BLcom/android/carsdk/protobuf/ExtensionRegistryLite;)Landroid/car/hardware/xpu/XpuProtoMessage$NaviReloadInfo;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/carsdk/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 22758
    sget-object v0, Landroid/car/hardware/xpu/XpuProtoMessage$NaviReloadInfo;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuProtoMessage$NaviReloadInfo;

    invoke-static {v0, p0, p1}, Lcom/android/carsdk/protobuf/GeneratedMessageLite;->parseFrom(Lcom/android/carsdk/protobuf/GeneratedMessageLite;[BLcom/android/carsdk/protobuf/ExtensionRegistryLite;)Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Landroid/car/hardware/xpu/XpuProtoMessage$NaviReloadInfo;

    return-object p0
.end method

.method public static parser()Lcom/android/carsdk/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/android/carsdk/protobuf/Parser<",
            "Landroid/car/hardware/xpu/XpuProtoMessage$NaviReloadInfo;",
            ">;"
        }
    .end annotation

    .line 23473
    sget-object v0, Landroid/car/hardware/xpu/XpuProtoMessage$NaviReloadInfo;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuProtoMessage$NaviReloadInfo;

    invoke-virtual {v0}, Landroid/car/hardware/xpu/XpuProtoMessage$NaviReloadInfo;->getParserForType()Lcom/android/carsdk/protobuf/Parser;

    move-result-object v0

    return-object v0
.end method

.method private removePathwayPoint(I)V
    .locals 1

    .line 22614
    invoke-direct {p0}, Landroid/car/hardware/xpu/XpuProtoMessage$NaviReloadInfo;->ensurePathwayPointIsMutable()V

    .line 22615
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$NaviReloadInfo;->pathwayPoint_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1}, Lcom/android/carsdk/protobuf/Internal$ProtobufList;->remove(I)Ljava/lang/Object;

    return-void
.end method

.method private setExpectCostTime(J)V
    .locals 0

    .line 22219
    iput-wide p1, p0, Landroid/car/hardware/xpu/XpuProtoMessage$NaviReloadInfo;->expectCostTime_:J

    return-void
.end method

.method private setFngpStatus(Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpStatus;)V
    .locals 0

    .line 22359
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 22362
    invoke-virtual {p1}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpStatus;->getNumber()I

    move-result p1

    iput p1, p0, Landroid/car/hardware/xpu/XpuProtoMessage$NaviReloadInfo;->fngpStatus_:I

    return-void
.end method

.method private setFngpStatusValue(I)V
    .locals 0

    .line 22352
    iput p1, p0, Landroid/car/hardware/xpu/XpuProtoMessage$NaviReloadInfo;->fngpStatus_:I

    return-void
.end method

.method private setNaviRoutingInfoV2(Landroid/car/hardware/xpu/XpuProtoMessage$NaviRoutingInfoV2$Builder;)V
    .locals 0

    .line 22160
    invoke-virtual {p1}, Landroid/car/hardware/xpu/XpuProtoMessage$NaviRoutingInfoV2$Builder;->build()Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Landroid/car/hardware/xpu/XpuProtoMessage$NaviRoutingInfoV2;

    iput-object p1, p0, Landroid/car/hardware/xpu/XpuProtoMessage$NaviReloadInfo;->naviRoutingInfoV2_:Landroid/car/hardware/xpu/XpuProtoMessage$NaviRoutingInfoV2;

    return-void
.end method

.method private setNaviRoutingInfoV2(Landroid/car/hardware/xpu/XpuProtoMessage$NaviRoutingInfoV2;)V
    .locals 0

    .line 22150
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 22152
    iput-object p1, p0, Landroid/car/hardware/xpu/XpuProtoMessage$NaviReloadInfo;->naviRoutingInfoV2_:Landroid/car/hardware/xpu/XpuProtoMessage$NaviRoutingInfoV2;

    return-void
.end method

.method private setOddEnd(Landroid/car/hardware/xpu/XpuProtoMessage$V2_Point$Builder;)V
    .locals 0

    .line 22310
    invoke-virtual {p1}, Landroid/car/hardware/xpu/XpuProtoMessage$V2_Point$Builder;->build()Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Landroid/car/hardware/xpu/XpuProtoMessage$V2_Point;

    iput-object p1, p0, Landroid/car/hardware/xpu/XpuProtoMessage$NaviReloadInfo;->oddEnd_:Landroid/car/hardware/xpu/XpuProtoMessage$V2_Point;

    return-void
.end method

.method private setOddEnd(Landroid/car/hardware/xpu/XpuProtoMessage$V2_Point;)V
    .locals 0

    .line 22300
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 22302
    iput-object p1, p0, Landroid/car/hardware/xpu/XpuProtoMessage$NaviReloadInfo;->oddEnd_:Landroid/car/hardware/xpu/XpuProtoMessage$V2_Point;

    return-void
.end method

.method private setOddStart(Landroid/car/hardware/xpu/XpuProtoMessage$V2_Point$Builder;)V
    .locals 0

    .line 22258
    invoke-virtual {p1}, Landroid/car/hardware/xpu/XpuProtoMessage$V2_Point$Builder;->build()Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Landroid/car/hardware/xpu/XpuProtoMessage$V2_Point;

    iput-object p1, p0, Landroid/car/hardware/xpu/XpuProtoMessage$NaviReloadInfo;->oddStart_:Landroid/car/hardware/xpu/XpuProtoMessage$V2_Point;

    return-void
.end method

.method private setOddStart(Landroid/car/hardware/xpu/XpuProtoMessage$V2_Point;)V
    .locals 0

    .line 22248
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 22250
    iput-object p1, p0, Landroid/car/hardware/xpu/XpuProtoMessage$NaviReloadInfo;->oddStart_:Landroid/car/hardware/xpu/XpuProtoMessage$V2_Point;

    return-void
.end method

.method private setPathwayPoint(ILandroid/car/hardware/xpu/XpuProtoMessage$V2_Point$Builder;)V
    .locals 1

    .line 22527
    invoke-direct {p0}, Landroid/car/hardware/xpu/XpuProtoMessage$NaviReloadInfo;->ensurePathwayPointIsMutable()V

    .line 22528
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$NaviReloadInfo;->pathwayPoint_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    invoke-virtual {p2}, Landroid/car/hardware/xpu/XpuProtoMessage$V2_Point$Builder;->build()Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object p2

    check-cast p2, Landroid/car/hardware/xpu/XpuProtoMessage$V2_Point;

    invoke-interface {v0, p1, p2}, Lcom/android/carsdk/protobuf/Internal$ProtobufList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private setPathwayPoint(ILandroid/car/hardware/xpu/XpuProtoMessage$V2_Point;)V
    .locals 1

    .line 22513
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 22515
    invoke-direct {p0}, Landroid/car/hardware/xpu/XpuProtoMessage$NaviReloadInfo;->ensurePathwayPointIsMutable()V

    .line 22516
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$NaviReloadInfo;->pathwayPoint_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1, p2}, Lcom/android/carsdk/protobuf/Internal$ProtobufList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private setReloadErrorCode(I)V
    .locals 0

    .line 22428
    iput p1, p0, Landroid/car/hardware/xpu/XpuProtoMessage$NaviReloadInfo;->reloadErrorCode_:I

    return-void
.end method

.method private setRouteId(J)V
    .locals 0

    .line 22196
    iput-wide p1, p0, Landroid/car/hardware/xpu/XpuProtoMessage$NaviReloadInfo;->routeId_:J

    return-void
.end method

.method private setRouteSelectedTimestamp(J)V
    .locals 0

    .line 22639
    iput-wide p1, p0, Landroid/car/hardware/xpu/XpuProtoMessage$NaviReloadInfo;->routeSelectedTimestamp_:J

    return-void
.end method

.method private setTotalOddMilage(I)V
    .locals 0

    .line 22393
    iput p1, p0, Landroid/car/hardware/xpu/XpuProtoMessage$NaviReloadInfo;->totalOddMilage_:I

    return-void
.end method


# virtual methods
.method protected final dynamicMethod(Lcom/android/carsdk/protobuf/GeneratedMessageLite$MethodToInvoke;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 12

    .line 23295
    sget-object v0, Landroid/car/hardware/xpu/XpuProtoMessage$1;->$SwitchMap$com$google$protobuf$GeneratedMessageLite$MethodToInvoke:[I

    invoke-virtual {p1}, Lcom/android/carsdk/protobuf/GeneratedMessageLite$MethodToInvoke;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x1

    packed-switch p1, :pswitch_data_0

    .line 23455
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1

    .line 23446
    :pswitch_0
    sget-object p1, Landroid/car/hardware/xpu/XpuProtoMessage$NaviReloadInfo;->PARSER:Lcom/android/carsdk/protobuf/Parser;

    if-nez p1, :cond_1

    const-class p1, Landroid/car/hardware/xpu/XpuProtoMessage$NaviReloadInfo;

    monitor-enter p1

    .line 23447
    :try_start_0
    sget-object p2, Landroid/car/hardware/xpu/XpuProtoMessage$NaviReloadInfo;->PARSER:Lcom/android/carsdk/protobuf/Parser;

    if-nez p2, :cond_0

    .line 23448
    new-instance p2, Lcom/android/carsdk/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;

    sget-object p3, Landroid/car/hardware/xpu/XpuProtoMessage$NaviReloadInfo;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuProtoMessage$NaviReloadInfo;

    invoke-direct {p2, p3}, Lcom/android/carsdk/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;-><init>(Lcom/android/carsdk/protobuf/GeneratedMessageLite;)V

    sput-object p2, Landroid/car/hardware/xpu/XpuProtoMessage$NaviReloadInfo;->PARSER:Lcom/android/carsdk/protobuf/Parser;

    .line 23450
    :cond_0
    monitor-exit p1

    goto :goto_0

    :catchall_0
    move-exception p2

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p2

    .line 23452
    :cond_1
    :goto_0
    sget-object p1, Landroid/car/hardware/xpu/XpuProtoMessage$NaviReloadInfo;->PARSER:Lcom/android/carsdk/protobuf/Parser;

    return-object p1

    .line 23334
    :pswitch_1
    check-cast p2, Lcom/android/carsdk/protobuf/CodedInputStream;

    .line 23336
    check-cast p3, Lcom/android/carsdk/protobuf/ExtensionRegistryLite;

    :cond_2
    :goto_1
    if-nez v1, :cond_7

    .line 23341
    :try_start_1
    invoke-virtual {p2}, Lcom/android/carsdk/protobuf/CodedInputStream;->readTag()I

    move-result p1

    sparse-switch p1, :sswitch_data_0

    .line 23347
    invoke-virtual {p2, p1}, Lcom/android/carsdk/protobuf/CodedInputStream;->skipField(I)Z

    move-result p1

    goto/16 :goto_6

    .line 23428
    :sswitch_0
    invoke-virtual {p2}, Lcom/android/carsdk/protobuf/CodedInputStream;->readInt64()J

    move-result-wide v3

    iput-wide v3, p0, Landroid/car/hardware/xpu/XpuProtoMessage$NaviReloadInfo;->routeSelectedTimestamp_:J

    goto :goto_1

    .line 23418
    :sswitch_1
    iget-object p1, p0, Landroid/car/hardware/xpu/XpuProtoMessage$NaviReloadInfo;->pathwayPoint_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    invoke-interface {p1}, Lcom/android/carsdk/protobuf/Internal$ProtobufList;->isModifiable()Z

    move-result p1

    if-nez p1, :cond_3

    .line 23419
    iget-object p1, p0, Landroid/car/hardware/xpu/XpuProtoMessage$NaviReloadInfo;->pathwayPoint_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    .line 23420
    invoke-static {p1}, Lcom/android/carsdk/protobuf/GeneratedMessageLite;->mutableCopy(Lcom/android/carsdk/protobuf/Internal$ProtobufList;)Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    move-result-object p1

    iput-object p1, p0, Landroid/car/hardware/xpu/XpuProtoMessage$NaviReloadInfo;->pathwayPoint_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    .line 23422
    :cond_3
    iget-object p1, p0, Landroid/car/hardware/xpu/XpuProtoMessage$NaviReloadInfo;->pathwayPoint_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    .line 23423
    invoke-static {}, Landroid/car/hardware/xpu/XpuProtoMessage$V2_Point;->parser()Lcom/android/carsdk/protobuf/Parser;

    move-result-object v3

    invoke-virtual {p2, v3, p3}, Lcom/android/carsdk/protobuf/CodedInputStream;->readMessage(Lcom/android/carsdk/protobuf/Parser;Lcom/android/carsdk/protobuf/ExtensionRegistryLite;)Lcom/android/carsdk/protobuf/MessageLite;

    move-result-object v3

    check-cast v3, Landroid/car/hardware/xpu/XpuProtoMessage$V2_Point;

    .line 23422
    invoke-interface {p1, v3}, Lcom/android/carsdk/protobuf/Internal$ProtobufList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 23414
    :sswitch_2
    invoke-virtual {p2}, Lcom/android/carsdk/protobuf/CodedInputStream;->readInt32()I

    move-result p1

    iput p1, p0, Landroid/car/hardware/xpu/XpuProtoMessage$NaviReloadInfo;->reloadErrorCode_:I

    goto :goto_1

    .line 23409
    :sswitch_3
    invoke-virtual {p2}, Lcom/android/carsdk/protobuf/CodedInputStream;->readInt32()I

    move-result p1

    iput p1, p0, Landroid/car/hardware/xpu/XpuProtoMessage$NaviReloadInfo;->totalOddMilage_:I

    goto :goto_1

    .line 23402
    :sswitch_4
    invoke-virtual {p2}, Lcom/android/carsdk/protobuf/CodedInputStream;->readEnum()I

    move-result p1

    .line 23404
    iput p1, p0, Landroid/car/hardware/xpu/XpuProtoMessage$NaviReloadInfo;->fngpStatus_:I

    goto :goto_1

    .line 23390
    :sswitch_5
    iget-object p1, p0, Landroid/car/hardware/xpu/XpuProtoMessage$NaviReloadInfo;->oddEnd_:Landroid/car/hardware/xpu/XpuProtoMessage$V2_Point;

    if-eqz p1, :cond_4

    .line 23391
    invoke-virtual {p1}, Landroid/car/hardware/xpu/XpuProtoMessage$V2_Point;->toBuilder()Lcom/android/carsdk/protobuf/GeneratedMessageLite$Builder;

    move-result-object p1

    check-cast p1, Landroid/car/hardware/xpu/XpuProtoMessage$V2_Point$Builder;

    goto :goto_2

    :cond_4
    move-object p1, v0

    .line 23393
    :goto_2
    invoke-static {}, Landroid/car/hardware/xpu/XpuProtoMessage$V2_Point;->parser()Lcom/android/carsdk/protobuf/Parser;

    move-result-object v3

    invoke-virtual {p2, v3, p3}, Lcom/android/carsdk/protobuf/CodedInputStream;->readMessage(Lcom/android/carsdk/protobuf/Parser;Lcom/android/carsdk/protobuf/ExtensionRegistryLite;)Lcom/android/carsdk/protobuf/MessageLite;

    move-result-object v3

    check-cast v3, Landroid/car/hardware/xpu/XpuProtoMessage$V2_Point;

    iput-object v3, p0, Landroid/car/hardware/xpu/XpuProtoMessage$NaviReloadInfo;->oddEnd_:Landroid/car/hardware/xpu/XpuProtoMessage$V2_Point;

    if-eqz p1, :cond_2

    .line 23395
    invoke-virtual {p1, v3}, Landroid/car/hardware/xpu/XpuProtoMessage$V2_Point$Builder;->mergeFrom(Lcom/android/carsdk/protobuf/GeneratedMessageLite;)Lcom/android/carsdk/protobuf/GeneratedMessageLite$Builder;

    .line 23396
    invoke-virtual {p1}, Landroid/car/hardware/xpu/XpuProtoMessage$V2_Point$Builder;->buildPartial()Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Landroid/car/hardware/xpu/XpuProtoMessage$V2_Point;

    iput-object p1, p0, Landroid/car/hardware/xpu/XpuProtoMessage$NaviReloadInfo;->oddEnd_:Landroid/car/hardware/xpu/XpuProtoMessage$V2_Point;

    goto :goto_1

    .line 23377
    :sswitch_6
    iget-object p1, p0, Landroid/car/hardware/xpu/XpuProtoMessage$NaviReloadInfo;->oddStart_:Landroid/car/hardware/xpu/XpuProtoMessage$V2_Point;

    if-eqz p1, :cond_5

    .line 23378
    invoke-virtual {p1}, Landroid/car/hardware/xpu/XpuProtoMessage$V2_Point;->toBuilder()Lcom/android/carsdk/protobuf/GeneratedMessageLite$Builder;

    move-result-object p1

    check-cast p1, Landroid/car/hardware/xpu/XpuProtoMessage$V2_Point$Builder;

    goto :goto_3

    :cond_5
    move-object p1, v0

    .line 23380
    :goto_3
    invoke-static {}, Landroid/car/hardware/xpu/XpuProtoMessage$V2_Point;->parser()Lcom/android/carsdk/protobuf/Parser;

    move-result-object v3

    invoke-virtual {p2, v3, p3}, Lcom/android/carsdk/protobuf/CodedInputStream;->readMessage(Lcom/android/carsdk/protobuf/Parser;Lcom/android/carsdk/protobuf/ExtensionRegistryLite;)Lcom/android/carsdk/protobuf/MessageLite;

    move-result-object v3

    check-cast v3, Landroid/car/hardware/xpu/XpuProtoMessage$V2_Point;

    iput-object v3, p0, Landroid/car/hardware/xpu/XpuProtoMessage$NaviReloadInfo;->oddStart_:Landroid/car/hardware/xpu/XpuProtoMessage$V2_Point;

    if-eqz p1, :cond_2

    .line 23382
    invoke-virtual {p1, v3}, Landroid/car/hardware/xpu/XpuProtoMessage$V2_Point$Builder;->mergeFrom(Lcom/android/carsdk/protobuf/GeneratedMessageLite;)Lcom/android/carsdk/protobuf/GeneratedMessageLite$Builder;

    .line 23383
    invoke-virtual {p1}, Landroid/car/hardware/xpu/XpuProtoMessage$V2_Point$Builder;->buildPartial()Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Landroid/car/hardware/xpu/XpuProtoMessage$V2_Point;

    iput-object p1, p0, Landroid/car/hardware/xpu/XpuProtoMessage$NaviReloadInfo;->oddStart_:Landroid/car/hardware/xpu/XpuProtoMessage$V2_Point;

    goto/16 :goto_1

    .line 23372
    :sswitch_7
    invoke-virtual {p2}, Lcom/android/carsdk/protobuf/CodedInputStream;->readUInt64()J

    move-result-wide v3

    iput-wide v3, p0, Landroid/car/hardware/xpu/XpuProtoMessage$NaviReloadInfo;->expectCostTime_:J

    goto/16 :goto_1

    .line 23367
    :sswitch_8
    invoke-virtual {p2}, Lcom/android/carsdk/protobuf/CodedInputStream;->readInt64()J

    move-result-wide v3

    iput-wide v3, p0, Landroid/car/hardware/xpu/XpuProtoMessage$NaviReloadInfo;->routeId_:J

    goto/16 :goto_1

    .line 23354
    :sswitch_9
    iget-object p1, p0, Landroid/car/hardware/xpu/XpuProtoMessage$NaviReloadInfo;->naviRoutingInfoV2_:Landroid/car/hardware/xpu/XpuProtoMessage$NaviRoutingInfoV2;

    if-eqz p1, :cond_6

    .line 23355
    invoke-virtual {p1}, Landroid/car/hardware/xpu/XpuProtoMessage$NaviRoutingInfoV2;->toBuilder()Lcom/android/carsdk/protobuf/GeneratedMessageLite$Builder;

    move-result-object p1

    check-cast p1, Landroid/car/hardware/xpu/XpuProtoMessage$NaviRoutingInfoV2$Builder;

    goto :goto_4

    :cond_6
    move-object p1, v0

    .line 23357
    :goto_4
    invoke-static {}, Landroid/car/hardware/xpu/XpuProtoMessage$NaviRoutingInfoV2;->parser()Lcom/android/carsdk/protobuf/Parser;

    move-result-object v3

    invoke-virtual {p2, v3, p3}, Lcom/android/carsdk/protobuf/CodedInputStream;->readMessage(Lcom/android/carsdk/protobuf/Parser;Lcom/android/carsdk/protobuf/ExtensionRegistryLite;)Lcom/android/carsdk/protobuf/MessageLite;

    move-result-object v3

    check-cast v3, Landroid/car/hardware/xpu/XpuProtoMessage$NaviRoutingInfoV2;

    iput-object v3, p0, Landroid/car/hardware/xpu/XpuProtoMessage$NaviReloadInfo;->naviRoutingInfoV2_:Landroid/car/hardware/xpu/XpuProtoMessage$NaviRoutingInfoV2;

    if-eqz p1, :cond_2

    .line 23359
    invoke-virtual {p1, v3}, Landroid/car/hardware/xpu/XpuProtoMessage$NaviRoutingInfoV2$Builder;->mergeFrom(Lcom/android/carsdk/protobuf/GeneratedMessageLite;)Lcom/android/carsdk/protobuf/GeneratedMessageLite$Builder;

    .line 23360
    invoke-virtual {p1}, Landroid/car/hardware/xpu/XpuProtoMessage$NaviRoutingInfoV2$Builder;->buildPartial()Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Landroid/car/hardware/xpu/XpuProtoMessage$NaviRoutingInfoV2;

    iput-object p1, p0, Landroid/car/hardware/xpu/XpuProtoMessage$NaviReloadInfo;->naviRoutingInfoV2_:Landroid/car/hardware/xpu/XpuProtoMessage$NaviRoutingInfoV2;
    :try_end_1
    .catch Lcom/android/carsdk/protobuf/InvalidProtocolBufferException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto/16 :goto_1

    :goto_5
    :sswitch_a
    move v1, v2

    goto/16 :goto_1

    :goto_6
    if-nez p1, :cond_2

    goto :goto_5

    :catchall_1
    move-exception p1

    goto :goto_7

    :catch_0
    move-exception p1

    .line 23436
    :try_start_2
    new-instance p2, Ljava/lang/RuntimeException;

    new-instance p3, Lcom/android/carsdk/protobuf/InvalidProtocolBufferException;

    .line 23438
    invoke-virtual {p1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p3, p1}, Lcom/android/carsdk/protobuf/InvalidProtocolBufferException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, p0}, Lcom/android/carsdk/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/android/carsdk/protobuf/MessageLite;)Lcom/android/carsdk/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p2

    :catch_1
    move-exception p1

    .line 23434
    new-instance p2, Ljava/lang/RuntimeException;

    invoke-virtual {p1, p0}, Lcom/android/carsdk/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/android/carsdk/protobuf/MessageLite;)Lcom/android/carsdk/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 23439
    :goto_7
    throw p1

    .line 23443
    :cond_7
    :pswitch_2
    sget-object p1, Landroid/car/hardware/xpu/XpuProtoMessage$NaviReloadInfo;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuProtoMessage$NaviReloadInfo;

    return-object p1

    .line 23310
    :pswitch_3
    check-cast p2, Lcom/android/carsdk/protobuf/GeneratedMessageLite$Visitor;

    .line 23311
    check-cast p3, Landroid/car/hardware/xpu/XpuProtoMessage$NaviReloadInfo;

    .line 23312
    iget-object p1, p0, Landroid/car/hardware/xpu/XpuProtoMessage$NaviReloadInfo;->naviRoutingInfoV2_:Landroid/car/hardware/xpu/XpuProtoMessage$NaviRoutingInfoV2;

    iget-object v0, p3, Landroid/car/hardware/xpu/XpuProtoMessage$NaviReloadInfo;->naviRoutingInfoV2_:Landroid/car/hardware/xpu/XpuProtoMessage$NaviRoutingInfoV2;

    invoke-interface {p2, p1, v0}, Lcom/android/carsdk/protobuf/GeneratedMessageLite$Visitor;->visitMessage(Lcom/android/carsdk/protobuf/MessageLite;Lcom/android/carsdk/protobuf/MessageLite;)Lcom/android/carsdk/protobuf/MessageLite;

    move-result-object p1

    check-cast p1, Landroid/car/hardware/xpu/XpuProtoMessage$NaviRoutingInfoV2;

    iput-object p1, p0, Landroid/car/hardware/xpu/XpuProtoMessage$NaviReloadInfo;->naviRoutingInfoV2_:Landroid/car/hardware/xpu/XpuProtoMessage$NaviRoutingInfoV2;

    .line 23313
    iget-wide v5, p0, Landroid/car/hardware/xpu/XpuProtoMessage$NaviReloadInfo;->routeId_:J

    const-wide/16 v10, 0x0

    cmp-long p1, v5, v10

    if-eqz p1, :cond_8

    move v4, v2

    goto :goto_8

    :cond_8
    move v4, v1

    :goto_8
    iget-wide v8, p3, Landroid/car/hardware/xpu/XpuProtoMessage$NaviReloadInfo;->routeId_:J

    cmp-long p1, v8, v10

    if-eqz p1, :cond_9

    move v7, v2

    goto :goto_9

    :cond_9
    move v7, v1

    :goto_9
    move-object v3, p2

    invoke-interface/range {v3 .. v9}, Lcom/android/carsdk/protobuf/GeneratedMessageLite$Visitor;->visitLong(ZJZJ)J

    move-result-wide v3

    iput-wide v3, p0, Landroid/car/hardware/xpu/XpuProtoMessage$NaviReloadInfo;->routeId_:J

    .line 23315
    iget-wide v5, p0, Landroid/car/hardware/xpu/XpuProtoMessage$NaviReloadInfo;->expectCostTime_:J

    cmp-long p1, v5, v10

    if-eqz p1, :cond_a

    move v4, v2

    goto :goto_a

    :cond_a
    move v4, v1

    :goto_a
    iget-wide v8, p3, Landroid/car/hardware/xpu/XpuProtoMessage$NaviReloadInfo;->expectCostTime_:J

    cmp-long p1, v8, v10

    if-eqz p1, :cond_b

    move v7, v2

    goto :goto_b

    :cond_b
    move v7, v1

    :goto_b
    move-object v3, p2

    invoke-interface/range {v3 .. v9}, Lcom/android/carsdk/protobuf/GeneratedMessageLite$Visitor;->visitLong(ZJZJ)J

    move-result-wide v3

    iput-wide v3, p0, Landroid/car/hardware/xpu/XpuProtoMessage$NaviReloadInfo;->expectCostTime_:J

    .line 23317
    iget-object p1, p0, Landroid/car/hardware/xpu/XpuProtoMessage$NaviReloadInfo;->oddStart_:Landroid/car/hardware/xpu/XpuProtoMessage$V2_Point;

    iget-object v0, p3, Landroid/car/hardware/xpu/XpuProtoMessage$NaviReloadInfo;->oddStart_:Landroid/car/hardware/xpu/XpuProtoMessage$V2_Point;

    invoke-interface {p2, p1, v0}, Lcom/android/carsdk/protobuf/GeneratedMessageLite$Visitor;->visitMessage(Lcom/android/carsdk/protobuf/MessageLite;Lcom/android/carsdk/protobuf/MessageLite;)Lcom/android/carsdk/protobuf/MessageLite;

    move-result-object p1

    check-cast p1, Landroid/car/hardware/xpu/XpuProtoMessage$V2_Point;

    iput-object p1, p0, Landroid/car/hardware/xpu/XpuProtoMessage$NaviReloadInfo;->oddStart_:Landroid/car/hardware/xpu/XpuProtoMessage$V2_Point;

    .line 23318
    iget-object p1, p0, Landroid/car/hardware/xpu/XpuProtoMessage$NaviReloadInfo;->oddEnd_:Landroid/car/hardware/xpu/XpuProtoMessage$V2_Point;

    iget-object v0, p3, Landroid/car/hardware/xpu/XpuProtoMessage$NaviReloadInfo;->oddEnd_:Landroid/car/hardware/xpu/XpuProtoMessage$V2_Point;

    invoke-interface {p2, p1, v0}, Lcom/android/carsdk/protobuf/GeneratedMessageLite$Visitor;->visitMessage(Lcom/android/carsdk/protobuf/MessageLite;Lcom/android/carsdk/protobuf/MessageLite;)Lcom/android/carsdk/protobuf/MessageLite;

    move-result-object p1

    check-cast p1, Landroid/car/hardware/xpu/XpuProtoMessage$V2_Point;

    iput-object p1, p0, Landroid/car/hardware/xpu/XpuProtoMessage$NaviReloadInfo;->oddEnd_:Landroid/car/hardware/xpu/XpuProtoMessage$V2_Point;

    .line 23319
    iget p1, p0, Landroid/car/hardware/xpu/XpuProtoMessage$NaviReloadInfo;->fngpStatus_:I

    if-eqz p1, :cond_c

    move v0, v2

    goto :goto_c

    :cond_c
    move v0, v1

    :goto_c
    iget v3, p3, Landroid/car/hardware/xpu/XpuProtoMessage$NaviReloadInfo;->fngpStatus_:I

    if-eqz v3, :cond_d

    move v4, v2

    goto :goto_d

    :cond_d
    move v4, v1

    :goto_d
    invoke-interface {p2, v0, p1, v4, v3}, Lcom/android/carsdk/protobuf/GeneratedMessageLite$Visitor;->visitInt(ZIZI)I

    move-result p1

    iput p1, p0, Landroid/car/hardware/xpu/XpuProtoMessage$NaviReloadInfo;->fngpStatus_:I

    .line 23320
    iget p1, p0, Landroid/car/hardware/xpu/XpuProtoMessage$NaviReloadInfo;->totalOddMilage_:I

    if-eqz p1, :cond_e

    move v0, v2

    goto :goto_e

    :cond_e
    move v0, v1

    :goto_e
    iget v3, p3, Landroid/car/hardware/xpu/XpuProtoMessage$NaviReloadInfo;->totalOddMilage_:I

    if-eqz v3, :cond_f

    move v4, v2

    goto :goto_f

    :cond_f
    move v4, v1

    :goto_f
    invoke-interface {p2, v0, p1, v4, v3}, Lcom/android/carsdk/protobuf/GeneratedMessageLite$Visitor;->visitInt(ZIZI)I

    move-result p1

    iput p1, p0, Landroid/car/hardware/xpu/XpuProtoMessage$NaviReloadInfo;->totalOddMilage_:I

    .line 23322
    iget p1, p0, Landroid/car/hardware/xpu/XpuProtoMessage$NaviReloadInfo;->reloadErrorCode_:I

    if-eqz p1, :cond_10

    move v0, v2

    goto :goto_10

    :cond_10
    move v0, v1

    :goto_10
    iget v3, p3, Landroid/car/hardware/xpu/XpuProtoMessage$NaviReloadInfo;->reloadErrorCode_:I

    if-eqz v3, :cond_11

    move v4, v2

    goto :goto_11

    :cond_11
    move v4, v1

    :goto_11
    invoke-interface {p2, v0, p1, v4, v3}, Lcom/android/carsdk/protobuf/GeneratedMessageLite$Visitor;->visitInt(ZIZI)I

    move-result p1

    iput p1, p0, Landroid/car/hardware/xpu/XpuProtoMessage$NaviReloadInfo;->reloadErrorCode_:I

    .line 23324
    iget-object p1, p0, Landroid/car/hardware/xpu/XpuProtoMessage$NaviReloadInfo;->pathwayPoint_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    iget-object v0, p3, Landroid/car/hardware/xpu/XpuProtoMessage$NaviReloadInfo;->pathwayPoint_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    invoke-interface {p2, p1, v0}, Lcom/android/carsdk/protobuf/GeneratedMessageLite$Visitor;->visitList(Lcom/android/carsdk/protobuf/Internal$ProtobufList;Lcom/android/carsdk/protobuf/Internal$ProtobufList;)Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    move-result-object p1

    iput-object p1, p0, Landroid/car/hardware/xpu/XpuProtoMessage$NaviReloadInfo;->pathwayPoint_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    .line 23325
    iget-wide v3, p0, Landroid/car/hardware/xpu/XpuProtoMessage$NaviReloadInfo;->routeSelectedTimestamp_:J

    cmp-long p1, v3, v10

    if-eqz p1, :cond_12

    move p1, v2

    goto :goto_12

    :cond_12
    move p1, v1

    :goto_12
    iget-wide v5, p3, Landroid/car/hardware/xpu/XpuProtoMessage$NaviReloadInfo;->routeSelectedTimestamp_:J

    cmp-long v0, v5, v10

    if-eqz v0, :cond_13

    move v7, v2

    goto :goto_13

    :cond_13
    move v7, v1

    :goto_13
    move-object v0, p2

    move v1, p1

    move-wide v2, v3

    move v4, v7

    invoke-interface/range {v0 .. v6}, Lcom/android/carsdk/protobuf/GeneratedMessageLite$Visitor;->visitLong(ZJZJ)J

    move-result-wide v0

    iput-wide v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$NaviReloadInfo;->routeSelectedTimestamp_:J

    .line 23327
    sget-object p1, Lcom/android/carsdk/protobuf/GeneratedMessageLite$MergeFromVisitor;->INSTANCE:Lcom/android/carsdk/protobuf/GeneratedMessageLite$MergeFromVisitor;

    if-ne p2, p1, :cond_14

    .line 23329
    iget p1, p0, Landroid/car/hardware/xpu/XpuProtoMessage$NaviReloadInfo;->bitField0_:I

    iget p2, p3, Landroid/car/hardware/xpu/XpuProtoMessage$NaviReloadInfo;->bitField0_:I

    or-int/2addr p1, p2

    iput p1, p0, Landroid/car/hardware/xpu/XpuProtoMessage$NaviReloadInfo;->bitField0_:I

    :cond_14
    return-object p0

    .line 23307
    :pswitch_4
    new-instance p1, Landroid/car/hardware/xpu/XpuProtoMessage$NaviReloadInfo$Builder;

    invoke-direct {p1, v0}, Landroid/car/hardware/xpu/XpuProtoMessage$NaviReloadInfo$Builder;-><init>(Landroid/car/hardware/xpu/XpuProtoMessage$1;)V

    return-object p1

    .line 23303
    :pswitch_5
    iget-object p1, p0, Landroid/car/hardware/xpu/XpuProtoMessage$NaviReloadInfo;->pathwayPoint_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    invoke-interface {p1}, Lcom/android/carsdk/protobuf/Internal$ProtobufList;->makeImmutable()V

    return-object v0

    .line 23300
    :pswitch_6
    sget-object p1, Landroid/car/hardware/xpu/XpuProtoMessage$NaviReloadInfo;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuProtoMessage$NaviReloadInfo;

    return-object p1

    .line 23297
    :pswitch_7
    new-instance p1, Landroid/car/hardware/xpu/XpuProtoMessage$NaviReloadInfo;

    invoke-direct {p1}, Landroid/car/hardware/xpu/XpuProtoMessage$NaviReloadInfo;-><init>()V

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
        0x0 -> :sswitch_a
        0xa -> :sswitch_9
        0x10 -> :sswitch_8
        0x18 -> :sswitch_7
        0x22 -> :sswitch_6
        0x2a -> :sswitch_5
        0x30 -> :sswitch_4
        0x38 -> :sswitch_3
        0x40 -> :sswitch_2
        0x4a -> :sswitch_1
        0x50 -> :sswitch_0
    .end sparse-switch
.end method

.method public getExpectCostTime()J
    .locals 2

    .line 22212
    iget-wide v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$NaviReloadInfo;->expectCostTime_:J

    return-wide v0
.end method

.method public getFngpStatus()Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpStatus;
    .locals 1

    .line 22345
    iget v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$NaviReloadInfo;->fngpStatus_:I

    invoke-static {v0}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpStatus;->forNumber(I)Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpStatus;

    move-result-object v0

    if-nez v0, :cond_0

    .line 22346
    sget-object v0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpStatus;->UNRECOGNIZED:Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpStatus;

    :cond_0
    return-object v0
.end method

.method public getFngpStatusValue()I
    .locals 1

    .line 22339
    iget v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$NaviReloadInfo;->fngpStatus_:I

    return v0
.end method

.method public getNaviRoutingInfoV2()Landroid/car/hardware/xpu/XpuProtoMessage$NaviRoutingInfoV2;
    .locals 1

    .line 22143
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$NaviReloadInfo;->naviRoutingInfoV2_:Landroid/car/hardware/xpu/XpuProtoMessage$NaviRoutingInfoV2;

    if-nez v0, :cond_0

    invoke-static {}, Landroid/car/hardware/xpu/XpuProtoMessage$NaviRoutingInfoV2;->getDefaultInstance()Landroid/car/hardware/xpu/XpuProtoMessage$NaviRoutingInfoV2;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public getOddEnd()Landroid/car/hardware/xpu/XpuProtoMessage$V2_Point;
    .locals 1

    .line 22293
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$NaviReloadInfo;->oddEnd_:Landroid/car/hardware/xpu/XpuProtoMessage$V2_Point;

    if-nez v0, :cond_0

    invoke-static {}, Landroid/car/hardware/xpu/XpuProtoMessage$V2_Point;->getDefaultInstance()Landroid/car/hardware/xpu/XpuProtoMessage$V2_Point;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public getOddStart()Landroid/car/hardware/xpu/XpuProtoMessage$V2_Point;
    .locals 1

    .line 22241
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$NaviReloadInfo;->oddStart_:Landroid/car/hardware/xpu/XpuProtoMessage$V2_Point;

    if-nez v0, :cond_0

    invoke-static {}, Landroid/car/hardware/xpu/XpuProtoMessage$V2_Point;->getDefaultInstance()Landroid/car/hardware/xpu/XpuProtoMessage$V2_Point;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public getPathwayPoint(I)Landroid/car/hardware/xpu/XpuProtoMessage$V2_Point;
    .locals 1

    .line 22483
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$NaviReloadInfo;->pathwayPoint_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1}, Lcom/android/carsdk/protobuf/Internal$ProtobufList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/car/hardware/xpu/XpuProtoMessage$V2_Point;

    return-object p1
.end method

.method public getPathwayPointCount()I
    .locals 1

    .line 22473
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$NaviReloadInfo;->pathwayPoint_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    invoke-interface {v0}, Lcom/android/carsdk/protobuf/Internal$ProtobufList;->size()I

    move-result v0

    return v0
.end method

.method public getPathwayPointList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/car/hardware/xpu/XpuProtoMessage$V2_Point;",
            ">;"
        }
    .end annotation

    .line 22452
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$NaviReloadInfo;->pathwayPoint_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    return-object v0
.end method

.method public getPathwayPointOrBuilder(I)Landroid/car/hardware/xpu/XpuProtoMessage$V2_PointOrBuilder;
    .locals 1

    .line 22494
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$NaviReloadInfo;->pathwayPoint_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1}, Lcom/android/carsdk/protobuf/Internal$ProtobufList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/car/hardware/xpu/XpuProtoMessage$V2_PointOrBuilder;

    return-object p1
.end method

.method public getPathwayPointOrBuilderList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "+",
            "Landroid/car/hardware/xpu/XpuProtoMessage$V2_PointOrBuilder;",
            ">;"
        }
    .end annotation

    .line 22463
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$NaviReloadInfo;->pathwayPoint_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    return-object v0
.end method

.method public getReloadErrorCode()I
    .locals 1

    .line 22417
    iget v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$NaviReloadInfo;->reloadErrorCode_:I

    return v0
.end method

.method public getRouteId()J
    .locals 2

    .line 22189
    iget-wide v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$NaviReloadInfo;->routeId_:J

    return-wide v0
.end method

.method public getRouteSelectedTimestamp()J
    .locals 2

    .line 22628
    iget-wide v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$NaviReloadInfo;->routeSelectedTimestamp_:J

    return-wide v0
.end method

.method public getSerializedSize()I
    .locals 7

    .line 22688
    iget v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$NaviReloadInfo;->memoizedSerializedSize:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    return v0

    .line 22692
    :cond_0
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$NaviReloadInfo;->naviRoutingInfoV2_:Landroid/car/hardware/xpu/XpuProtoMessage$NaviRoutingInfoV2;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 22694
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuProtoMessage$NaviReloadInfo;->getNaviRoutingInfoV2()Landroid/car/hardware/xpu/XpuProtoMessage$NaviRoutingInfoV2;

    move-result-object v0

    const/4 v2, 0x1

    invoke-static {v2, v0}, Lcom/android/carsdk/protobuf/CodedOutputStream;->computeMessageSize(ILcom/android/carsdk/protobuf/MessageLite;)I

    move-result v0

    add-int/2addr v0, v1

    goto :goto_0

    :cond_1
    move v0, v1

    .line 22696
    :goto_0
    iget-wide v2, p0, Landroid/car/hardware/xpu/XpuProtoMessage$NaviReloadInfo;->routeId_:J

    const-wide/16 v4, 0x0

    cmp-long v6, v2, v4

    if-eqz v6, :cond_2

    const/4 v6, 0x2

    .line 22698
    invoke-static {v6, v2, v3}, Lcom/android/carsdk/protobuf/CodedOutputStream;->computeInt64Size(IJ)I

    move-result v2

    add-int/2addr v0, v2

    .line 22700
    :cond_2
    iget-wide v2, p0, Landroid/car/hardware/xpu/XpuProtoMessage$NaviReloadInfo;->expectCostTime_:J

    cmp-long v6, v2, v4

    if-eqz v6, :cond_3

    const/4 v6, 0x3

    .line 22702
    invoke-static {v6, v2, v3}, Lcom/android/carsdk/protobuf/CodedOutputStream;->computeUInt64Size(IJ)I

    move-result v2

    add-int/2addr v0, v2

    .line 22704
    :cond_3
    iget-object v2, p0, Landroid/car/hardware/xpu/XpuProtoMessage$NaviReloadInfo;->oddStart_:Landroid/car/hardware/xpu/XpuProtoMessage$V2_Point;

    if-eqz v2, :cond_4

    const/4 v2, 0x4

    .line 22706
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuProtoMessage$NaviReloadInfo;->getOddStart()Landroid/car/hardware/xpu/XpuProtoMessage$V2_Point;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/carsdk/protobuf/CodedOutputStream;->computeMessageSize(ILcom/android/carsdk/protobuf/MessageLite;)I

    move-result v2

    add-int/2addr v0, v2

    .line 22708
    :cond_4
    iget-object v2, p0, Landroid/car/hardware/xpu/XpuProtoMessage$NaviReloadInfo;->oddEnd_:Landroid/car/hardware/xpu/XpuProtoMessage$V2_Point;

    if-eqz v2, :cond_5

    const/4 v2, 0x5

    .line 22710
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuProtoMessage$NaviReloadInfo;->getOddEnd()Landroid/car/hardware/xpu/XpuProtoMessage$V2_Point;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/carsdk/protobuf/CodedOutputStream;->computeMessageSize(ILcom/android/carsdk/protobuf/MessageLite;)I

    move-result v2

    add-int/2addr v0, v2

    .line 22712
    :cond_5
    iget v2, p0, Landroid/car/hardware/xpu/XpuProtoMessage$NaviReloadInfo;->fngpStatus_:I

    sget-object v3, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpStatus;->FNGP_STATUS_NOT_AVAILABLE:Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpStatus;

    invoke-virtual {v3}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpStatus;->getNumber()I

    move-result v3

    if-eq v2, v3, :cond_6

    const/4 v2, 0x6

    .line 22713
    iget v3, p0, Landroid/car/hardware/xpu/XpuProtoMessage$NaviReloadInfo;->fngpStatus_:I

    .line 22714
    invoke-static {v2, v3}, Lcom/android/carsdk/protobuf/CodedOutputStream;->computeEnumSize(II)I

    move-result v2

    add-int/2addr v0, v2

    .line 22716
    :cond_6
    iget v2, p0, Landroid/car/hardware/xpu/XpuProtoMessage$NaviReloadInfo;->totalOddMilage_:I

    if-eqz v2, :cond_7

    const/4 v3, 0x7

    .line 22718
    invoke-static {v3, v2}, Lcom/android/carsdk/protobuf/CodedOutputStream;->computeInt32Size(II)I

    move-result v2

    add-int/2addr v0, v2

    .line 22720
    :cond_7
    iget v2, p0, Landroid/car/hardware/xpu/XpuProtoMessage$NaviReloadInfo;->reloadErrorCode_:I

    if-eqz v2, :cond_8

    const/16 v3, 0x8

    .line 22722
    invoke-static {v3, v2}, Lcom/android/carsdk/protobuf/CodedOutputStream;->computeInt32Size(II)I

    move-result v2

    add-int/2addr v0, v2

    .line 22724
    :cond_8
    :goto_1
    iget-object v2, p0, Landroid/car/hardware/xpu/XpuProtoMessage$NaviReloadInfo;->pathwayPoint_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    invoke-interface {v2}, Lcom/android/carsdk/protobuf/Internal$ProtobufList;->size()I

    move-result v2

    if-ge v1, v2, :cond_9

    const/16 v2, 0x9

    .line 22725
    iget-object v3, p0, Landroid/car/hardware/xpu/XpuProtoMessage$NaviReloadInfo;->pathwayPoint_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    .line 22726
    invoke-interface {v3, v1}, Lcom/android/carsdk/protobuf/Internal$ProtobufList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/carsdk/protobuf/MessageLite;

    invoke-static {v2, v3}, Lcom/android/carsdk/protobuf/CodedOutputStream;->computeMessageSize(ILcom/android/carsdk/protobuf/MessageLite;)I

    move-result v2

    add-int/2addr v0, v2

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 22728
    :cond_9
    iget-wide v1, p0, Landroid/car/hardware/xpu/XpuProtoMessage$NaviReloadInfo;->routeSelectedTimestamp_:J

    cmp-long v3, v1, v4

    if-eqz v3, :cond_a

    const/16 v3, 0xa

    .line 22730
    invoke-static {v3, v1, v2}, Lcom/android/carsdk/protobuf/CodedOutputStream;->computeInt64Size(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 22732
    :cond_a
    iput v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$NaviReloadInfo;->memoizedSerializedSize:I

    return v0
.end method

.method public getTotalOddMilage()I
    .locals 1

    .line 22382
    iget v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$NaviReloadInfo;->totalOddMilage_:I

    return v0
.end method

.method public hasNaviRoutingInfoV2()Z
    .locals 1

    .line 22137
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$NaviReloadInfo;->naviRoutingInfoV2_:Landroid/car/hardware/xpu/XpuProtoMessage$NaviRoutingInfoV2;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasOddEnd()Z
    .locals 1

    .line 22287
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$NaviReloadInfo;->oddEnd_:Landroid/car/hardware/xpu/XpuProtoMessage$V2_Point;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasOddStart()Z
    .locals 1

    .line 22235
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$NaviReloadInfo;->oddStart_:Landroid/car/hardware/xpu/XpuProtoMessage$V2_Point;

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

    .line 22655
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$NaviReloadInfo;->naviRoutingInfoV2_:Landroid/car/hardware/xpu/XpuProtoMessage$NaviRoutingInfoV2;

    if-eqz v0, :cond_0

    .line 22656
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuProtoMessage$NaviReloadInfo;->getNaviRoutingInfoV2()Landroid/car/hardware/xpu/XpuProtoMessage$NaviRoutingInfoV2;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {p1, v1, v0}, Lcom/android/carsdk/protobuf/CodedOutputStream;->writeMessage(ILcom/android/carsdk/protobuf/MessageLite;)V

    .line 22658
    :cond_0
    iget-wide v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$NaviReloadInfo;->routeId_:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_1

    const/4 v4, 0x2

    .line 22659
    invoke-virtual {p1, v4, v0, v1}, Lcom/android/carsdk/protobuf/CodedOutputStream;->writeInt64(IJ)V

    .line 22661
    :cond_1
    iget-wide v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$NaviReloadInfo;->expectCostTime_:J

    cmp-long v4, v0, v2

    if-eqz v4, :cond_2

    const/4 v4, 0x3

    .line 22662
    invoke-virtual {p1, v4, v0, v1}, Lcom/android/carsdk/protobuf/CodedOutputStream;->writeUInt64(IJ)V

    .line 22664
    :cond_2
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$NaviReloadInfo;->oddStart_:Landroid/car/hardware/xpu/XpuProtoMessage$V2_Point;

    if-eqz v0, :cond_3

    const/4 v0, 0x4

    .line 22665
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuProtoMessage$NaviReloadInfo;->getOddStart()Landroid/car/hardware/xpu/XpuProtoMessage$V2_Point;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/android/carsdk/protobuf/CodedOutputStream;->writeMessage(ILcom/android/carsdk/protobuf/MessageLite;)V

    .line 22667
    :cond_3
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$NaviReloadInfo;->oddEnd_:Landroid/car/hardware/xpu/XpuProtoMessage$V2_Point;

    if-eqz v0, :cond_4

    const/4 v0, 0x5

    .line 22668
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuProtoMessage$NaviReloadInfo;->getOddEnd()Landroid/car/hardware/xpu/XpuProtoMessage$V2_Point;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/android/carsdk/protobuf/CodedOutputStream;->writeMessage(ILcom/android/carsdk/protobuf/MessageLite;)V

    .line 22670
    :cond_4
    iget v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$NaviReloadInfo;->fngpStatus_:I

    sget-object v1, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpStatus;->FNGP_STATUS_NOT_AVAILABLE:Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpStatus;

    invoke-virtual {v1}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpStatus;->getNumber()I

    move-result v1

    if-eq v0, v1, :cond_5

    const/4 v0, 0x6

    .line 22671
    iget v1, p0, Landroid/car/hardware/xpu/XpuProtoMessage$NaviReloadInfo;->fngpStatus_:I

    invoke-virtual {p1, v0, v1}, Lcom/android/carsdk/protobuf/CodedOutputStream;->writeEnum(II)V

    .line 22673
    :cond_5
    iget v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$NaviReloadInfo;->totalOddMilage_:I

    if-eqz v0, :cond_6

    const/4 v1, 0x7

    .line 22674
    invoke-virtual {p1, v1, v0}, Lcom/android/carsdk/protobuf/CodedOutputStream;->writeInt32(II)V

    .line 22676
    :cond_6
    iget v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$NaviReloadInfo;->reloadErrorCode_:I

    if-eqz v0, :cond_7

    const/16 v1, 0x8

    .line 22677
    invoke-virtual {p1, v1, v0}, Lcom/android/carsdk/protobuf/CodedOutputStream;->writeInt32(II)V

    :cond_7
    const/4 v0, 0x0

    .line 22679
    :goto_0
    iget-object v1, p0, Landroid/car/hardware/xpu/XpuProtoMessage$NaviReloadInfo;->pathwayPoint_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    invoke-interface {v1}, Lcom/android/carsdk/protobuf/Internal$ProtobufList;->size()I

    move-result v1

    if-ge v0, v1, :cond_8

    const/16 v1, 0x9

    .line 22680
    iget-object v4, p0, Landroid/car/hardware/xpu/XpuProtoMessage$NaviReloadInfo;->pathwayPoint_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    invoke-interface {v4, v0}, Lcom/android/carsdk/protobuf/Internal$ProtobufList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/carsdk/protobuf/MessageLite;

    invoke-virtual {p1, v1, v4}, Lcom/android/carsdk/protobuf/CodedOutputStream;->writeMessage(ILcom/android/carsdk/protobuf/MessageLite;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 22682
    :cond_8
    iget-wide v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$NaviReloadInfo;->routeSelectedTimestamp_:J

    cmp-long v2, v0, v2

    if-eqz v2, :cond_9

    const/16 v2, 0xa

    .line 22683
    invoke-virtual {p1, v2, v0, v1}, Lcom/android/carsdk/protobuf/CodedOutputStream;->writeInt64(IJ)V

    :cond_9
    return-void
.end method
