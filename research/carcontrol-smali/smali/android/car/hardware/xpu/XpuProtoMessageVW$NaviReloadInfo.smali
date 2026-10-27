.class public final Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviReloadInfo;
.super Lcom/android/carsdk/protobuf/GeneratedMessageLite;
.source "XpuProtoMessageVW.java"

# interfaces
.implements Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviReloadInfoOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/car/hardware/xpu/XpuProtoMessageVW;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "NaviReloadInfo"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviReloadInfo$Builder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/carsdk/protobuf/GeneratedMessageLite<",
        "Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviReloadInfo;",
        "Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviReloadInfo$Builder;",
        ">;",
        "Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviReloadInfoOrBuilder;"
    }
.end annotation


# static fields
.field private static final DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviReloadInfo;

.field public static final EXPECT_COST_TIME_FIELD_NUMBER:I = 0x3

.field public static final FNGP_STATUS_FIELD_NUMBER:I = 0x6

.field public static final NAVI_ROUTING_INFO_V2_FIELD_NUMBER:I = 0x1

.field public static final ODD_END_FIELD_NUMBER:I = 0x5

.field public static final ODD_START_FIELD_NUMBER:I = 0x4

.field private static volatile PARSER:Lcom/android/carsdk/protobuf/Parser; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/carsdk/protobuf/Parser<",
            "Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviReloadInfo;",
            ">;"
        }
    .end annotation
.end field

.field public static final PATHWAY_POINT_FIELD_NUMBER:I = 0x9

.field public static final RELOAD_ERROR_CODE_FIELD_NUMBER:I = 0x8

.field public static final ROUTE_ID_FIELD_NUMBER:I = 0x2

.field public static final TOTAL_ODD_MILAGE_FIELD_NUMBER:I = 0x7


# instance fields
.field private bitField0_:I

.field private expectCostTime_:J

.field private fngpStatus_:I

.field private naviRoutingInfoV2_:Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviRoutingInfoV2;

.field private oddEnd_:Landroid/car/hardware/xpu/XpuProtoMessageVW$V2_Point;

.field private oddStart_:Landroid/car/hardware/xpu/XpuProtoMessageVW$V2_Point;

.field private pathwayPoint_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/carsdk/protobuf/Internal$ProtobufList<",
            "Landroid/car/hardware/xpu/XpuProtoMessageVW$V2_Point;",
            ">;"
        }
    .end annotation
.end field

.field private reloadErrorCode_:I

.field private routeId_:J

.field private totalOddMilage_:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 21858
    new-instance v0, Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviReloadInfo;

    invoke-direct {v0}, Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviReloadInfo;-><init>()V

    sput-object v0, Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviReloadInfo;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviReloadInfo;

    .line 21859
    invoke-virtual {v0}, Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviReloadInfo;->makeImmutable()V

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .line 20602
    invoke-direct {p0}, Lcom/android/carsdk/protobuf/GeneratedMessageLite;-><init>()V

    const-wide/16 v0, 0x0

    .line 20603
    iput-wide v0, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviReloadInfo;->routeId_:J

    .line 20604
    iput-wide v0, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviReloadInfo;->expectCostTime_:J

    const/4 v0, 0x0

    .line 20605
    iput v0, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviReloadInfo;->fngpStatus_:I

    .line 20606
    iput v0, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviReloadInfo;->totalOddMilage_:I

    .line 20607
    iput v0, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviReloadInfo;->reloadErrorCode_:I

    .line 20608
    invoke-static {}, Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviReloadInfo;->emptyProtobufList()Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    move-result-object v0

    iput-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviReloadInfo;->pathwayPoint_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    return-void
.end method

.method static synthetic access$48500()Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviReloadInfo;
    .locals 1

    .line 20597
    sget-object v0, Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviReloadInfo;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviReloadInfo;

    return-object v0
.end method

.method static synthetic access$48600(Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviReloadInfo;Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviRoutingInfoV2;)V
    .locals 0

    .line 20597
    invoke-direct {p0, p1}, Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviReloadInfo;->setNaviRoutingInfoV2(Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviRoutingInfoV2;)V

    return-void
.end method

.method static synthetic access$48700(Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviReloadInfo;Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviRoutingInfoV2$Builder;)V
    .locals 0

    .line 20597
    invoke-direct {p0, p1}, Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviReloadInfo;->setNaviRoutingInfoV2(Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviRoutingInfoV2$Builder;)V

    return-void
.end method

.method static synthetic access$48800(Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviReloadInfo;Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviRoutingInfoV2;)V
    .locals 0

    .line 20597
    invoke-direct {p0, p1}, Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviReloadInfo;->mergeNaviRoutingInfoV2(Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviRoutingInfoV2;)V

    return-void
.end method

.method static synthetic access$48900(Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviReloadInfo;)V
    .locals 0

    .line 20597
    invoke-direct {p0}, Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviReloadInfo;->clearNaviRoutingInfoV2()V

    return-void
.end method

.method static synthetic access$49000(Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviReloadInfo;J)V
    .locals 0

    .line 20597
    invoke-direct {p0, p1, p2}, Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviReloadInfo;->setRouteId(J)V

    return-void
.end method

.method static synthetic access$49100(Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviReloadInfo;)V
    .locals 0

    .line 20597
    invoke-direct {p0}, Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviReloadInfo;->clearRouteId()V

    return-void
.end method

.method static synthetic access$49200(Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviReloadInfo;J)V
    .locals 0

    .line 20597
    invoke-direct {p0, p1, p2}, Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviReloadInfo;->setExpectCostTime(J)V

    return-void
.end method

.method static synthetic access$49300(Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviReloadInfo;)V
    .locals 0

    .line 20597
    invoke-direct {p0}, Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviReloadInfo;->clearExpectCostTime()V

    return-void
.end method

.method static synthetic access$49400(Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviReloadInfo;Landroid/car/hardware/xpu/XpuProtoMessageVW$V2_Point;)V
    .locals 0

    .line 20597
    invoke-direct {p0, p1}, Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviReloadInfo;->setOddStart(Landroid/car/hardware/xpu/XpuProtoMessageVW$V2_Point;)V

    return-void
.end method

.method static synthetic access$49500(Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviReloadInfo;Landroid/car/hardware/xpu/XpuProtoMessageVW$V2_Point$Builder;)V
    .locals 0

    .line 20597
    invoke-direct {p0, p1}, Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviReloadInfo;->setOddStart(Landroid/car/hardware/xpu/XpuProtoMessageVW$V2_Point$Builder;)V

    return-void
.end method

.method static synthetic access$49600(Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviReloadInfo;Landroid/car/hardware/xpu/XpuProtoMessageVW$V2_Point;)V
    .locals 0

    .line 20597
    invoke-direct {p0, p1}, Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviReloadInfo;->mergeOddStart(Landroid/car/hardware/xpu/XpuProtoMessageVW$V2_Point;)V

    return-void
.end method

.method static synthetic access$49700(Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviReloadInfo;)V
    .locals 0

    .line 20597
    invoke-direct {p0}, Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviReloadInfo;->clearOddStart()V

    return-void
.end method

.method static synthetic access$49800(Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviReloadInfo;Landroid/car/hardware/xpu/XpuProtoMessageVW$V2_Point;)V
    .locals 0

    .line 20597
    invoke-direct {p0, p1}, Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviReloadInfo;->setOddEnd(Landroid/car/hardware/xpu/XpuProtoMessageVW$V2_Point;)V

    return-void
.end method

.method static synthetic access$49900(Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviReloadInfo;Landroid/car/hardware/xpu/XpuProtoMessageVW$V2_Point$Builder;)V
    .locals 0

    .line 20597
    invoke-direct {p0, p1}, Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviReloadInfo;->setOddEnd(Landroid/car/hardware/xpu/XpuProtoMessageVW$V2_Point$Builder;)V

    return-void
.end method

.method static synthetic access$50000(Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviReloadInfo;Landroid/car/hardware/xpu/XpuProtoMessageVW$V2_Point;)V
    .locals 0

    .line 20597
    invoke-direct {p0, p1}, Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviReloadInfo;->mergeOddEnd(Landroid/car/hardware/xpu/XpuProtoMessageVW$V2_Point;)V

    return-void
.end method

.method static synthetic access$50100(Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviReloadInfo;)V
    .locals 0

    .line 20597
    invoke-direct {p0}, Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviReloadInfo;->clearOddEnd()V

    return-void
.end method

.method static synthetic access$50200(Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviReloadInfo;I)V
    .locals 0

    .line 20597
    invoke-direct {p0, p1}, Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviReloadInfo;->setFngpStatusValue(I)V

    return-void
.end method

.method static synthetic access$50300(Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviReloadInfo;Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpStatus;)V
    .locals 0

    .line 20597
    invoke-direct {p0, p1}, Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviReloadInfo;->setFngpStatus(Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpStatus;)V

    return-void
.end method

.method static synthetic access$50400(Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviReloadInfo;)V
    .locals 0

    .line 20597
    invoke-direct {p0}, Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviReloadInfo;->clearFngpStatus()V

    return-void
.end method

.method static synthetic access$50500(Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviReloadInfo;I)V
    .locals 0

    .line 20597
    invoke-direct {p0, p1}, Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviReloadInfo;->setTotalOddMilage(I)V

    return-void
.end method

.method static synthetic access$50600(Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviReloadInfo;)V
    .locals 0

    .line 20597
    invoke-direct {p0}, Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviReloadInfo;->clearTotalOddMilage()V

    return-void
.end method

.method static synthetic access$50700(Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviReloadInfo;I)V
    .locals 0

    .line 20597
    invoke-direct {p0, p1}, Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviReloadInfo;->setReloadErrorCode(I)V

    return-void
.end method

.method static synthetic access$50800(Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviReloadInfo;)V
    .locals 0

    .line 20597
    invoke-direct {p0}, Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviReloadInfo;->clearReloadErrorCode()V

    return-void
.end method

.method static synthetic access$50900(Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviReloadInfo;ILandroid/car/hardware/xpu/XpuProtoMessageVW$V2_Point;)V
    .locals 0

    .line 20597
    invoke-direct {p0, p1, p2}, Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviReloadInfo;->setPathwayPoint(ILandroid/car/hardware/xpu/XpuProtoMessageVW$V2_Point;)V

    return-void
.end method

.method static synthetic access$51000(Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviReloadInfo;ILandroid/car/hardware/xpu/XpuProtoMessageVW$V2_Point$Builder;)V
    .locals 0

    .line 20597
    invoke-direct {p0, p1, p2}, Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviReloadInfo;->setPathwayPoint(ILandroid/car/hardware/xpu/XpuProtoMessageVW$V2_Point$Builder;)V

    return-void
.end method

.method static synthetic access$51100(Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviReloadInfo;Landroid/car/hardware/xpu/XpuProtoMessageVW$V2_Point;)V
    .locals 0

    .line 20597
    invoke-direct {p0, p1}, Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviReloadInfo;->addPathwayPoint(Landroid/car/hardware/xpu/XpuProtoMessageVW$V2_Point;)V

    return-void
.end method

.method static synthetic access$51200(Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviReloadInfo;ILandroid/car/hardware/xpu/XpuProtoMessageVW$V2_Point;)V
    .locals 0

    .line 20597
    invoke-direct {p0, p1, p2}, Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviReloadInfo;->addPathwayPoint(ILandroid/car/hardware/xpu/XpuProtoMessageVW$V2_Point;)V

    return-void
.end method

.method static synthetic access$51300(Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviReloadInfo;Landroid/car/hardware/xpu/XpuProtoMessageVW$V2_Point$Builder;)V
    .locals 0

    .line 20597
    invoke-direct {p0, p1}, Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviReloadInfo;->addPathwayPoint(Landroid/car/hardware/xpu/XpuProtoMessageVW$V2_Point$Builder;)V

    return-void
.end method

.method static synthetic access$51400(Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviReloadInfo;ILandroid/car/hardware/xpu/XpuProtoMessageVW$V2_Point$Builder;)V
    .locals 0

    .line 20597
    invoke-direct {p0, p1, p2}, Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviReloadInfo;->addPathwayPoint(ILandroid/car/hardware/xpu/XpuProtoMessageVW$V2_Point$Builder;)V

    return-void
.end method

.method static synthetic access$51500(Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviReloadInfo;Ljava/lang/Iterable;)V
    .locals 0

    .line 20597
    invoke-direct {p0, p1}, Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviReloadInfo;->addAllPathwayPoint(Ljava/lang/Iterable;)V

    return-void
.end method

.method static synthetic access$51600(Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviReloadInfo;)V
    .locals 0

    .line 20597
    invoke-direct {p0}, Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviReloadInfo;->clearPathwayPoint()V

    return-void
.end method

.method static synthetic access$51700(Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviReloadInfo;I)V
    .locals 0

    .line 20597
    invoke-direct {p0, p1}, Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviReloadInfo;->removePathwayPoint(I)V

    return-void
.end method

.method private addAllPathwayPoint(Ljava/lang/Iterable;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Landroid/car/hardware/xpu/XpuProtoMessageVW$V2_Point;",
            ">;)V"
        }
    .end annotation

    .line 21072
    invoke-direct {p0}, Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviReloadInfo;->ensurePathwayPointIsMutable()V

    .line 21073
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviReloadInfo;->pathwayPoint_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    invoke-static {p1, v0}, Lcom/android/carsdk/protobuf/AbstractMessageLite;->addAll(Ljava/lang/Iterable;Ljava/util/Collection;)V

    return-void
.end method

.method private addPathwayPoint(ILandroid/car/hardware/xpu/XpuProtoMessageVW$V2_Point$Builder;)V
    .locals 1

    .line 21060
    invoke-direct {p0}, Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviReloadInfo;->ensurePathwayPointIsMutable()V

    .line 21061
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviReloadInfo;->pathwayPoint_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    invoke-virtual {p2}, Landroid/car/hardware/xpu/XpuProtoMessageVW$V2_Point$Builder;->build()Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object p2

    check-cast p2, Landroid/car/hardware/xpu/XpuProtoMessageVW$V2_Point;

    invoke-interface {v0, p1, p2}, Lcom/android/carsdk/protobuf/Internal$ProtobufList;->add(ILjava/lang/Object;)V

    return-void
.end method

.method private addPathwayPoint(ILandroid/car/hardware/xpu/XpuProtoMessageVW$V2_Point;)V
    .locals 1

    .line 21034
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 21036
    invoke-direct {p0}, Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviReloadInfo;->ensurePathwayPointIsMutable()V

    .line 21037
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviReloadInfo;->pathwayPoint_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1, p2}, Lcom/android/carsdk/protobuf/Internal$ProtobufList;->add(ILjava/lang/Object;)V

    return-void
.end method

.method private addPathwayPoint(Landroid/car/hardware/xpu/XpuProtoMessageVW$V2_Point$Builder;)V
    .locals 1

    .line 21048
    invoke-direct {p0}, Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviReloadInfo;->ensurePathwayPointIsMutable()V

    .line 21049
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviReloadInfo;->pathwayPoint_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    invoke-virtual {p1}, Landroid/car/hardware/xpu/XpuProtoMessageVW$V2_Point$Builder;->build()Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Landroid/car/hardware/xpu/XpuProtoMessageVW$V2_Point;

    invoke-interface {v0, p1}, Lcom/android/carsdk/protobuf/Internal$ProtobufList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private addPathwayPoint(Landroid/car/hardware/xpu/XpuProtoMessageVW$V2_Point;)V
    .locals 1

    .line 21019
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 21021
    invoke-direct {p0}, Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviReloadInfo;->ensurePathwayPointIsMutable()V

    .line 21022
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviReloadInfo;->pathwayPoint_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1}, Lcom/android/carsdk/protobuf/Internal$ProtobufList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private clearExpectCostTime()V
    .locals 2

    const-wide/16 v0, 0x0

    .line 20706
    iput-wide v0, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviReloadInfo;->expectCostTime_:J

    return-void
.end method

.method private clearFngpStatus()V
    .locals 1

    const/4 v0, 0x0

    .line 20849
    iput v0, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviReloadInfo;->fngpStatus_:I

    return-void
.end method

.method private clearNaviRoutingInfoV2()V
    .locals 1

    const/4 v0, 0x0

    .line 20659
    iput-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviReloadInfo;->naviRoutingInfoV2_:Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviRoutingInfoV2;

    return-void
.end method

.method private clearOddEnd()V
    .locals 1

    const/4 v0, 0x0

    .line 20809
    iput-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviReloadInfo;->oddEnd_:Landroid/car/hardware/xpu/XpuProtoMessageVW$V2_Point;

    return-void
.end method

.method private clearOddStart()V
    .locals 1

    const/4 v0, 0x0

    .line 20757
    iput-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviReloadInfo;->oddStart_:Landroid/car/hardware/xpu/XpuProtoMessageVW$V2_Point;

    return-void
.end method

.method private clearPathwayPoint()V
    .locals 1

    .line 21084
    invoke-static {}, Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviReloadInfo;->emptyProtobufList()Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    move-result-object v0

    iput-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviReloadInfo;->pathwayPoint_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    return-void
.end method

.method private clearReloadErrorCode()V
    .locals 1

    const/4 v0, 0x0

    .line 20919
    iput v0, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviReloadInfo;->reloadErrorCode_:I

    return-void
.end method

.method private clearRouteId()V
    .locals 2

    const-wide/16 v0, 0x0

    .line 20683
    iput-wide v0, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviReloadInfo;->routeId_:J

    return-void
.end method

.method private clearTotalOddMilage()V
    .locals 1

    const/4 v0, 0x0

    .line 20884
    iput v0, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviReloadInfo;->totalOddMilage_:I

    return-void
.end method

.method private ensurePathwayPointIsMutable()V
    .locals 1

    .line 20977
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviReloadInfo;->pathwayPoint_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    invoke-interface {v0}, Lcom/android/carsdk/protobuf/Internal$ProtobufList;->isModifiable()Z

    move-result v0

    if-nez v0, :cond_0

    .line 20978
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviReloadInfo;->pathwayPoint_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    .line 20979
    invoke-static {v0}, Lcom/android/carsdk/protobuf/GeneratedMessageLite;->mutableCopy(Lcom/android/carsdk/protobuf/Internal$ProtobufList;)Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    move-result-object v0

    iput-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviReloadInfo;->pathwayPoint_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    :cond_0
    return-void
.end method

.method public static getDefaultInstance()Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviReloadInfo;
    .locals 1

    .line 21863
    sget-object v0, Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviReloadInfo;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviReloadInfo;

    return-object v0
.end method

.method private mergeNaviRoutingInfoV2(Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviRoutingInfoV2;)V
    .locals 2

    .line 20647
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviReloadInfo;->naviRoutingInfoV2_:Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviRoutingInfoV2;

    if-eqz v0, :cond_0

    .line 20648
    invoke-static {}, Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviRoutingInfoV2;->getDefaultInstance()Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviRoutingInfoV2;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 20649
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviReloadInfo;->naviRoutingInfoV2_:Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviRoutingInfoV2;

    .line 20650
    invoke-static {v0}, Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviRoutingInfoV2;->newBuilder(Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviRoutingInfoV2;)Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviRoutingInfoV2$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviRoutingInfoV2$Builder;->mergeFrom(Lcom/android/carsdk/protobuf/GeneratedMessageLite;)Lcom/android/carsdk/protobuf/GeneratedMessageLite$Builder;

    move-result-object p1

    check-cast p1, Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviRoutingInfoV2$Builder;

    invoke-virtual {p1}, Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviRoutingInfoV2$Builder;->buildPartial()Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviRoutingInfoV2;

    iput-object p1, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviReloadInfo;->naviRoutingInfoV2_:Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviRoutingInfoV2;

    goto :goto_0

    .line 20652
    :cond_0
    iput-object p1, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviReloadInfo;->naviRoutingInfoV2_:Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviRoutingInfoV2;

    :goto_0
    return-void
.end method

.method private mergeOddEnd(Landroid/car/hardware/xpu/XpuProtoMessageVW$V2_Point;)V
    .locals 2

    .line 20797
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviReloadInfo;->oddEnd_:Landroid/car/hardware/xpu/XpuProtoMessageVW$V2_Point;

    if-eqz v0, :cond_0

    .line 20798
    invoke-static {}, Landroid/car/hardware/xpu/XpuProtoMessageVW$V2_Point;->getDefaultInstance()Landroid/car/hardware/xpu/XpuProtoMessageVW$V2_Point;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 20799
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviReloadInfo;->oddEnd_:Landroid/car/hardware/xpu/XpuProtoMessageVW$V2_Point;

    .line 20800
    invoke-static {v0}, Landroid/car/hardware/xpu/XpuProtoMessageVW$V2_Point;->newBuilder(Landroid/car/hardware/xpu/XpuProtoMessageVW$V2_Point;)Landroid/car/hardware/xpu/XpuProtoMessageVW$V2_Point$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/car/hardware/xpu/XpuProtoMessageVW$V2_Point$Builder;->mergeFrom(Lcom/android/carsdk/protobuf/GeneratedMessageLite;)Lcom/android/carsdk/protobuf/GeneratedMessageLite$Builder;

    move-result-object p1

    check-cast p1, Landroid/car/hardware/xpu/XpuProtoMessageVW$V2_Point$Builder;

    invoke-virtual {p1}, Landroid/car/hardware/xpu/XpuProtoMessageVW$V2_Point$Builder;->buildPartial()Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Landroid/car/hardware/xpu/XpuProtoMessageVW$V2_Point;

    iput-object p1, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviReloadInfo;->oddEnd_:Landroid/car/hardware/xpu/XpuProtoMessageVW$V2_Point;

    goto :goto_0

    .line 20802
    :cond_0
    iput-object p1, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviReloadInfo;->oddEnd_:Landroid/car/hardware/xpu/XpuProtoMessageVW$V2_Point;

    :goto_0
    return-void
.end method

.method private mergeOddStart(Landroid/car/hardware/xpu/XpuProtoMessageVW$V2_Point;)V
    .locals 2

    .line 20745
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviReloadInfo;->oddStart_:Landroid/car/hardware/xpu/XpuProtoMessageVW$V2_Point;

    if-eqz v0, :cond_0

    .line 20746
    invoke-static {}, Landroid/car/hardware/xpu/XpuProtoMessageVW$V2_Point;->getDefaultInstance()Landroid/car/hardware/xpu/XpuProtoMessageVW$V2_Point;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 20747
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviReloadInfo;->oddStart_:Landroid/car/hardware/xpu/XpuProtoMessageVW$V2_Point;

    .line 20748
    invoke-static {v0}, Landroid/car/hardware/xpu/XpuProtoMessageVW$V2_Point;->newBuilder(Landroid/car/hardware/xpu/XpuProtoMessageVW$V2_Point;)Landroid/car/hardware/xpu/XpuProtoMessageVW$V2_Point$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/car/hardware/xpu/XpuProtoMessageVW$V2_Point$Builder;->mergeFrom(Lcom/android/carsdk/protobuf/GeneratedMessageLite;)Lcom/android/carsdk/protobuf/GeneratedMessageLite$Builder;

    move-result-object p1

    check-cast p1, Landroid/car/hardware/xpu/XpuProtoMessageVW$V2_Point$Builder;

    invoke-virtual {p1}, Landroid/car/hardware/xpu/XpuProtoMessageVW$V2_Point$Builder;->buildPartial()Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Landroid/car/hardware/xpu/XpuProtoMessageVW$V2_Point;

    iput-object p1, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviReloadInfo;->oddStart_:Landroid/car/hardware/xpu/XpuProtoMessageVW$V2_Point;

    goto :goto_0

    .line 20750
    :cond_0
    iput-object p1, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviReloadInfo;->oddStart_:Landroid/car/hardware/xpu/XpuProtoMessageVW$V2_Point;

    :goto_0
    return-void
.end method

.method public static newBuilder()Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviReloadInfo$Builder;
    .locals 1

    .line 21236
    sget-object v0, Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviReloadInfo;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviReloadInfo;

    invoke-virtual {v0}, Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviReloadInfo;->toBuilder()Lcom/android/carsdk/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviReloadInfo$Builder;

    return-object v0
.end method

.method public static newBuilder(Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviReloadInfo;)Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviReloadInfo$Builder;
    .locals 1

    .line 21239
    sget-object v0, Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviReloadInfo;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviReloadInfo;

    invoke-virtual {v0}, Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviReloadInfo;->toBuilder()Lcom/android/carsdk/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviReloadInfo$Builder;

    invoke-virtual {v0, p0}, Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviReloadInfo$Builder;->mergeFrom(Lcom/android/carsdk/protobuf/GeneratedMessageLite;)Lcom/android/carsdk/protobuf/GeneratedMessageLite$Builder;

    move-result-object p0

    check-cast p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviReloadInfo$Builder;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviReloadInfo;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 21213
    sget-object v0, Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviReloadInfo;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviReloadInfo;

    invoke-static {v0, p0}, Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviReloadInfo;->parseDelimitedFrom(Lcom/android/carsdk/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviReloadInfo;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/android/carsdk/protobuf/ExtensionRegistryLite;)Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviReloadInfo;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 21219
    sget-object v0, Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviReloadInfo;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviReloadInfo;

    invoke-static {v0, p0, p1}, Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviReloadInfo;->parseDelimitedFrom(Lcom/android/carsdk/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/android/carsdk/protobuf/ExtensionRegistryLite;)Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviReloadInfo;

    return-object p0
.end method

.method public static parseFrom(Lcom/android/carsdk/protobuf/ByteString;)Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviReloadInfo;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/carsdk/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 21177
    sget-object v0, Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviReloadInfo;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviReloadInfo;

    invoke-static {v0, p0}, Lcom/android/carsdk/protobuf/GeneratedMessageLite;->parseFrom(Lcom/android/carsdk/protobuf/GeneratedMessageLite;Lcom/android/carsdk/protobuf/ByteString;)Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviReloadInfo;

    return-object p0
.end method

.method public static parseFrom(Lcom/android/carsdk/protobuf/ByteString;Lcom/android/carsdk/protobuf/ExtensionRegistryLite;)Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviReloadInfo;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/carsdk/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 21184
    sget-object v0, Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviReloadInfo;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviReloadInfo;

    invoke-static {v0, p0, p1}, Lcom/android/carsdk/protobuf/GeneratedMessageLite;->parseFrom(Lcom/android/carsdk/protobuf/GeneratedMessageLite;Lcom/android/carsdk/protobuf/ByteString;Lcom/android/carsdk/protobuf/ExtensionRegistryLite;)Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviReloadInfo;

    return-object p0
.end method

.method public static parseFrom(Lcom/android/carsdk/protobuf/CodedInputStream;)Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviReloadInfo;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 21224
    sget-object v0, Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviReloadInfo;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviReloadInfo;

    invoke-static {v0, p0}, Lcom/android/carsdk/protobuf/GeneratedMessageLite;->parseFrom(Lcom/android/carsdk/protobuf/GeneratedMessageLite;Lcom/android/carsdk/protobuf/CodedInputStream;)Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviReloadInfo;

    return-object p0
.end method

.method public static parseFrom(Lcom/android/carsdk/protobuf/CodedInputStream;Lcom/android/carsdk/protobuf/ExtensionRegistryLite;)Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviReloadInfo;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 21231
    sget-object v0, Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviReloadInfo;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviReloadInfo;

    invoke-static {v0, p0, p1}, Lcom/android/carsdk/protobuf/GeneratedMessageLite;->parseFrom(Lcom/android/carsdk/protobuf/GeneratedMessageLite;Lcom/android/carsdk/protobuf/CodedInputStream;Lcom/android/carsdk/protobuf/ExtensionRegistryLite;)Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviReloadInfo;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviReloadInfo;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 21201
    sget-object v0, Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviReloadInfo;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviReloadInfo;

    invoke-static {v0, p0}, Lcom/android/carsdk/protobuf/GeneratedMessageLite;->parseFrom(Lcom/android/carsdk/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviReloadInfo;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/android/carsdk/protobuf/ExtensionRegistryLite;)Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviReloadInfo;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 21208
    sget-object v0, Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviReloadInfo;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviReloadInfo;

    invoke-static {v0, p0, p1}, Lcom/android/carsdk/protobuf/GeneratedMessageLite;->parseFrom(Lcom/android/carsdk/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/android/carsdk/protobuf/ExtensionRegistryLite;)Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviReloadInfo;

    return-object p0
.end method

.method public static parseFrom([B)Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviReloadInfo;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/carsdk/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 21189
    sget-object v0, Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviReloadInfo;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviReloadInfo;

    invoke-static {v0, p0}, Lcom/android/carsdk/protobuf/GeneratedMessageLite;->parseFrom(Lcom/android/carsdk/protobuf/GeneratedMessageLite;[B)Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviReloadInfo;

    return-object p0
.end method

.method public static parseFrom([BLcom/android/carsdk/protobuf/ExtensionRegistryLite;)Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviReloadInfo;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/carsdk/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 21196
    sget-object v0, Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviReloadInfo;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviReloadInfo;

    invoke-static {v0, p0, p1}, Lcom/android/carsdk/protobuf/GeneratedMessageLite;->parseFrom(Lcom/android/carsdk/protobuf/GeneratedMessageLite;[BLcom/android/carsdk/protobuf/ExtensionRegistryLite;)Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviReloadInfo;

    return-object p0
.end method

.method public static parser()Lcom/android/carsdk/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/android/carsdk/protobuf/Parser<",
            "Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviReloadInfo;",
            ">;"
        }
    .end annotation

    .line 21869
    sget-object v0, Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviReloadInfo;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviReloadInfo;

    invoke-virtual {v0}, Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviReloadInfo;->getParserForType()Lcom/android/carsdk/protobuf/Parser;

    move-result-object v0

    return-object v0
.end method

.method private removePathwayPoint(I)V
    .locals 1

    .line 21094
    invoke-direct {p0}, Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviReloadInfo;->ensurePathwayPointIsMutable()V

    .line 21095
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviReloadInfo;->pathwayPoint_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1}, Lcom/android/carsdk/protobuf/Internal$ProtobufList;->remove(I)Ljava/lang/Object;

    return-void
.end method

.method private setExpectCostTime(J)V
    .locals 0

    .line 20699
    iput-wide p1, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviReloadInfo;->expectCostTime_:J

    return-void
.end method

.method private setFngpStatus(Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpStatus;)V
    .locals 0

    .line 20839
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 20842
    invoke-virtual {p1}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpStatus;->getNumber()I

    move-result p1

    iput p1, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviReloadInfo;->fngpStatus_:I

    return-void
.end method

.method private setFngpStatusValue(I)V
    .locals 0

    .line 20832
    iput p1, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviReloadInfo;->fngpStatus_:I

    return-void
.end method

.method private setNaviRoutingInfoV2(Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviRoutingInfoV2$Builder;)V
    .locals 0

    .line 20640
    invoke-virtual {p1}, Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviRoutingInfoV2$Builder;->build()Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviRoutingInfoV2;

    iput-object p1, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviReloadInfo;->naviRoutingInfoV2_:Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviRoutingInfoV2;

    return-void
.end method

.method private setNaviRoutingInfoV2(Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviRoutingInfoV2;)V
    .locals 0

    .line 20630
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 20632
    iput-object p1, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviReloadInfo;->naviRoutingInfoV2_:Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviRoutingInfoV2;

    return-void
.end method

.method private setOddEnd(Landroid/car/hardware/xpu/XpuProtoMessageVW$V2_Point$Builder;)V
    .locals 0

    .line 20790
    invoke-virtual {p1}, Landroid/car/hardware/xpu/XpuProtoMessageVW$V2_Point$Builder;->build()Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Landroid/car/hardware/xpu/XpuProtoMessageVW$V2_Point;

    iput-object p1, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviReloadInfo;->oddEnd_:Landroid/car/hardware/xpu/XpuProtoMessageVW$V2_Point;

    return-void
.end method

.method private setOddEnd(Landroid/car/hardware/xpu/XpuProtoMessageVW$V2_Point;)V
    .locals 0

    .line 20780
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 20782
    iput-object p1, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviReloadInfo;->oddEnd_:Landroid/car/hardware/xpu/XpuProtoMessageVW$V2_Point;

    return-void
.end method

.method private setOddStart(Landroid/car/hardware/xpu/XpuProtoMessageVW$V2_Point$Builder;)V
    .locals 0

    .line 20738
    invoke-virtual {p1}, Landroid/car/hardware/xpu/XpuProtoMessageVW$V2_Point$Builder;->build()Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Landroid/car/hardware/xpu/XpuProtoMessageVW$V2_Point;

    iput-object p1, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviReloadInfo;->oddStart_:Landroid/car/hardware/xpu/XpuProtoMessageVW$V2_Point;

    return-void
.end method

.method private setOddStart(Landroid/car/hardware/xpu/XpuProtoMessageVW$V2_Point;)V
    .locals 0

    .line 20728
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 20730
    iput-object p1, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviReloadInfo;->oddStart_:Landroid/car/hardware/xpu/XpuProtoMessageVW$V2_Point;

    return-void
.end method

.method private setPathwayPoint(ILandroid/car/hardware/xpu/XpuProtoMessageVW$V2_Point$Builder;)V
    .locals 1

    .line 21007
    invoke-direct {p0}, Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviReloadInfo;->ensurePathwayPointIsMutable()V

    .line 21008
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviReloadInfo;->pathwayPoint_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    invoke-virtual {p2}, Landroid/car/hardware/xpu/XpuProtoMessageVW$V2_Point$Builder;->build()Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object p2

    check-cast p2, Landroid/car/hardware/xpu/XpuProtoMessageVW$V2_Point;

    invoke-interface {v0, p1, p2}, Lcom/android/carsdk/protobuf/Internal$ProtobufList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private setPathwayPoint(ILandroid/car/hardware/xpu/XpuProtoMessageVW$V2_Point;)V
    .locals 1

    .line 20993
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 20995
    invoke-direct {p0}, Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviReloadInfo;->ensurePathwayPointIsMutable()V

    .line 20996
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviReloadInfo;->pathwayPoint_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1, p2}, Lcom/android/carsdk/protobuf/Internal$ProtobufList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private setReloadErrorCode(I)V
    .locals 0

    .line 20908
    iput p1, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviReloadInfo;->reloadErrorCode_:I

    return-void
.end method

.method private setRouteId(J)V
    .locals 0

    .line 20676
    iput-wide p1, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviReloadInfo;->routeId_:J

    return-void
.end method

.method private setTotalOddMilage(I)V
    .locals 0

    .line 20873
    iput p1, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviReloadInfo;->totalOddMilage_:I

    return-void
.end method


# virtual methods
.method protected final dynamicMethod(Lcom/android/carsdk/protobuf/GeneratedMessageLite$MethodToInvoke;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 12

    .line 21698
    sget-object v0, Landroid/car/hardware/xpu/XpuProtoMessageVW$1;->$SwitchMap$com$google$protobuf$GeneratedMessageLite$MethodToInvoke:[I

    invoke-virtual {p1}, Lcom/android/carsdk/protobuf/GeneratedMessageLite$MethodToInvoke;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x1

    packed-switch p1, :pswitch_data_0

    .line 21851
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1

    .line 21842
    :pswitch_0
    sget-object p1, Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviReloadInfo;->PARSER:Lcom/android/carsdk/protobuf/Parser;

    if-nez p1, :cond_1

    const-class p1, Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviReloadInfo;

    monitor-enter p1

    .line 21843
    :try_start_0
    sget-object p2, Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviReloadInfo;->PARSER:Lcom/android/carsdk/protobuf/Parser;

    if-nez p2, :cond_0

    .line 21844
    new-instance p2, Lcom/android/carsdk/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;

    sget-object p3, Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviReloadInfo;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviReloadInfo;

    invoke-direct {p2, p3}, Lcom/android/carsdk/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;-><init>(Lcom/android/carsdk/protobuf/GeneratedMessageLite;)V

    sput-object p2, Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviReloadInfo;->PARSER:Lcom/android/carsdk/protobuf/Parser;

    .line 21846
    :cond_0
    monitor-exit p1

    goto :goto_0

    :catchall_0
    move-exception p2

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p2

    .line 21848
    :cond_1
    :goto_0
    sget-object p1, Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviReloadInfo;->PARSER:Lcom/android/carsdk/protobuf/Parser;

    return-object p1

    .line 21735
    :pswitch_1
    check-cast p2, Lcom/android/carsdk/protobuf/CodedInputStream;

    .line 21737
    check-cast p3, Lcom/android/carsdk/protobuf/ExtensionRegistryLite;

    :cond_2
    :goto_1
    if-nez v1, :cond_11

    .line 21742
    :try_start_1
    invoke-virtual {p2}, Lcom/android/carsdk/protobuf/CodedInputStream;->readTag()I

    move-result p1

    if-eqz p1, :cond_10

    const/16 v3, 0xa

    if-eq p1, v3, :cond_e

    const/16 v3, 0x10

    if-eq p1, v3, :cond_d

    const/16 v3, 0x18

    if-eq p1, v3, :cond_c

    const/16 v3, 0x22

    if-eq p1, v3, :cond_a

    const/16 v3, 0x2a

    if-eq p1, v3, :cond_8

    const/16 v3, 0x30

    if-eq p1, v3, :cond_7

    const/16 v3, 0x38

    if-eq p1, v3, :cond_6

    const/16 v3, 0x40

    if-eq p1, v3, :cond_5

    const/16 v3, 0x4a

    if-eq p1, v3, :cond_3

    .line 21748
    invoke-virtual {p2, p1}, Lcom/android/carsdk/protobuf/CodedInputStream;->skipField(I)Z

    move-result p1

    if-nez p1, :cond_2

    goto/16 :goto_5

    .line 21819
    :cond_3
    iget-object p1, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviReloadInfo;->pathwayPoint_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    invoke-interface {p1}, Lcom/android/carsdk/protobuf/Internal$ProtobufList;->isModifiable()Z

    move-result p1

    if-nez p1, :cond_4

    .line 21820
    iget-object p1, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviReloadInfo;->pathwayPoint_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    .line 21821
    invoke-static {p1}, Lcom/android/carsdk/protobuf/GeneratedMessageLite;->mutableCopy(Lcom/android/carsdk/protobuf/Internal$ProtobufList;)Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    move-result-object p1

    iput-object p1, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviReloadInfo;->pathwayPoint_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    .line 21823
    :cond_4
    iget-object p1, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviReloadInfo;->pathwayPoint_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    .line 21824
    invoke-static {}, Landroid/car/hardware/xpu/XpuProtoMessageVW$V2_Point;->parser()Lcom/android/carsdk/protobuf/Parser;

    move-result-object v3

    invoke-virtual {p2, v3, p3}, Lcom/android/carsdk/protobuf/CodedInputStream;->readMessage(Lcom/android/carsdk/protobuf/Parser;Lcom/android/carsdk/protobuf/ExtensionRegistryLite;)Lcom/android/carsdk/protobuf/MessageLite;

    move-result-object v3

    check-cast v3, Landroid/car/hardware/xpu/XpuProtoMessageVW$V2_Point;

    .line 21823
    invoke-interface {p1, v3}, Lcom/android/carsdk/protobuf/Internal$ProtobufList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 21815
    :cond_5
    invoke-virtual {p2}, Lcom/android/carsdk/protobuf/CodedInputStream;->readInt32()I

    move-result p1

    iput p1, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviReloadInfo;->reloadErrorCode_:I

    goto :goto_1

    .line 21810
    :cond_6
    invoke-virtual {p2}, Lcom/android/carsdk/protobuf/CodedInputStream;->readInt32()I

    move-result p1

    iput p1, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviReloadInfo;->totalOddMilage_:I

    goto :goto_1

    .line 21803
    :cond_7
    invoke-virtual {p2}, Lcom/android/carsdk/protobuf/CodedInputStream;->readEnum()I

    move-result p1

    .line 21805
    iput p1, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviReloadInfo;->fngpStatus_:I

    goto :goto_1

    .line 21791
    :cond_8
    iget-object p1, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviReloadInfo;->oddEnd_:Landroid/car/hardware/xpu/XpuProtoMessageVW$V2_Point;

    if-eqz p1, :cond_9

    .line 21792
    invoke-virtual {p1}, Landroid/car/hardware/xpu/XpuProtoMessageVW$V2_Point;->toBuilder()Lcom/android/carsdk/protobuf/GeneratedMessageLite$Builder;

    move-result-object p1

    check-cast p1, Landroid/car/hardware/xpu/XpuProtoMessageVW$V2_Point$Builder;

    goto :goto_2

    :cond_9
    move-object p1, v0

    .line 21794
    :goto_2
    invoke-static {}, Landroid/car/hardware/xpu/XpuProtoMessageVW$V2_Point;->parser()Lcom/android/carsdk/protobuf/Parser;

    move-result-object v3

    invoke-virtual {p2, v3, p3}, Lcom/android/carsdk/protobuf/CodedInputStream;->readMessage(Lcom/android/carsdk/protobuf/Parser;Lcom/android/carsdk/protobuf/ExtensionRegistryLite;)Lcom/android/carsdk/protobuf/MessageLite;

    move-result-object v3

    check-cast v3, Landroid/car/hardware/xpu/XpuProtoMessageVW$V2_Point;

    iput-object v3, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviReloadInfo;->oddEnd_:Landroid/car/hardware/xpu/XpuProtoMessageVW$V2_Point;

    if-eqz p1, :cond_2

    .line 21796
    invoke-virtual {p1, v3}, Landroid/car/hardware/xpu/XpuProtoMessageVW$V2_Point$Builder;->mergeFrom(Lcom/android/carsdk/protobuf/GeneratedMessageLite;)Lcom/android/carsdk/protobuf/GeneratedMessageLite$Builder;

    .line 21797
    invoke-virtual {p1}, Landroid/car/hardware/xpu/XpuProtoMessageVW$V2_Point$Builder;->buildPartial()Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Landroid/car/hardware/xpu/XpuProtoMessageVW$V2_Point;

    iput-object p1, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviReloadInfo;->oddEnd_:Landroid/car/hardware/xpu/XpuProtoMessageVW$V2_Point;

    goto/16 :goto_1

    .line 21778
    :cond_a
    iget-object p1, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviReloadInfo;->oddStart_:Landroid/car/hardware/xpu/XpuProtoMessageVW$V2_Point;

    if-eqz p1, :cond_b

    .line 21779
    invoke-virtual {p1}, Landroid/car/hardware/xpu/XpuProtoMessageVW$V2_Point;->toBuilder()Lcom/android/carsdk/protobuf/GeneratedMessageLite$Builder;

    move-result-object p1

    check-cast p1, Landroid/car/hardware/xpu/XpuProtoMessageVW$V2_Point$Builder;

    goto :goto_3

    :cond_b
    move-object p1, v0

    .line 21781
    :goto_3
    invoke-static {}, Landroid/car/hardware/xpu/XpuProtoMessageVW$V2_Point;->parser()Lcom/android/carsdk/protobuf/Parser;

    move-result-object v3

    invoke-virtual {p2, v3, p3}, Lcom/android/carsdk/protobuf/CodedInputStream;->readMessage(Lcom/android/carsdk/protobuf/Parser;Lcom/android/carsdk/protobuf/ExtensionRegistryLite;)Lcom/android/carsdk/protobuf/MessageLite;

    move-result-object v3

    check-cast v3, Landroid/car/hardware/xpu/XpuProtoMessageVW$V2_Point;

    iput-object v3, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviReloadInfo;->oddStart_:Landroid/car/hardware/xpu/XpuProtoMessageVW$V2_Point;

    if-eqz p1, :cond_2

    .line 21783
    invoke-virtual {p1, v3}, Landroid/car/hardware/xpu/XpuProtoMessageVW$V2_Point$Builder;->mergeFrom(Lcom/android/carsdk/protobuf/GeneratedMessageLite;)Lcom/android/carsdk/protobuf/GeneratedMessageLite$Builder;

    .line 21784
    invoke-virtual {p1}, Landroid/car/hardware/xpu/XpuProtoMessageVW$V2_Point$Builder;->buildPartial()Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Landroid/car/hardware/xpu/XpuProtoMessageVW$V2_Point;

    iput-object p1, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviReloadInfo;->oddStart_:Landroid/car/hardware/xpu/XpuProtoMessageVW$V2_Point;

    goto/16 :goto_1

    .line 21773
    :cond_c
    invoke-virtual {p2}, Lcom/android/carsdk/protobuf/CodedInputStream;->readUInt64()J

    move-result-wide v3

    iput-wide v3, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviReloadInfo;->expectCostTime_:J

    goto/16 :goto_1

    .line 21768
    :cond_d
    invoke-virtual {p2}, Lcom/android/carsdk/protobuf/CodedInputStream;->readInt64()J

    move-result-wide v3

    iput-wide v3, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviReloadInfo;->routeId_:J

    goto/16 :goto_1

    .line 21755
    :cond_e
    iget-object p1, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviReloadInfo;->naviRoutingInfoV2_:Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviRoutingInfoV2;

    if-eqz p1, :cond_f

    .line 21756
    invoke-virtual {p1}, Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviRoutingInfoV2;->toBuilder()Lcom/android/carsdk/protobuf/GeneratedMessageLite$Builder;

    move-result-object p1

    check-cast p1, Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviRoutingInfoV2$Builder;

    goto :goto_4

    :cond_f
    move-object p1, v0

    .line 21758
    :goto_4
    invoke-static {}, Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviRoutingInfoV2;->parser()Lcom/android/carsdk/protobuf/Parser;

    move-result-object v3

    invoke-virtual {p2, v3, p3}, Lcom/android/carsdk/protobuf/CodedInputStream;->readMessage(Lcom/android/carsdk/protobuf/Parser;Lcom/android/carsdk/protobuf/ExtensionRegistryLite;)Lcom/android/carsdk/protobuf/MessageLite;

    move-result-object v3

    check-cast v3, Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviRoutingInfoV2;

    iput-object v3, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviReloadInfo;->naviRoutingInfoV2_:Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviRoutingInfoV2;

    if-eqz p1, :cond_2

    .line 21760
    invoke-virtual {p1, v3}, Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviRoutingInfoV2$Builder;->mergeFrom(Lcom/android/carsdk/protobuf/GeneratedMessageLite;)Lcom/android/carsdk/protobuf/GeneratedMessageLite$Builder;

    .line 21761
    invoke-virtual {p1}, Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviRoutingInfoV2$Builder;->buildPartial()Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviRoutingInfoV2;

    iput-object p1, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviReloadInfo;->naviRoutingInfoV2_:Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviRoutingInfoV2;
    :try_end_1
    .catch Lcom/android/carsdk/protobuf/InvalidProtocolBufferException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto/16 :goto_1

    :cond_10
    :goto_5
    move v1, v2

    goto/16 :goto_1

    :catchall_1
    move-exception p1

    goto :goto_6

    :catch_0
    move-exception p1

    .line 21832
    :try_start_2
    new-instance p2, Ljava/lang/RuntimeException;

    new-instance p3, Lcom/android/carsdk/protobuf/InvalidProtocolBufferException;

    .line 21834
    invoke-virtual {p1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p3, p1}, Lcom/android/carsdk/protobuf/InvalidProtocolBufferException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, p0}, Lcom/android/carsdk/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/android/carsdk/protobuf/MessageLite;)Lcom/android/carsdk/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p2

    :catch_1
    move-exception p1

    .line 21830
    new-instance p2, Ljava/lang/RuntimeException;

    invoke-virtual {p1, p0}, Lcom/android/carsdk/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/android/carsdk/protobuf/MessageLite;)Lcom/android/carsdk/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 21835
    :goto_6
    throw p1

    .line 21839
    :cond_11
    :pswitch_2
    sget-object p1, Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviReloadInfo;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviReloadInfo;

    return-object p1

    .line 21713
    :pswitch_3
    check-cast p2, Lcom/android/carsdk/protobuf/GeneratedMessageLite$Visitor;

    .line 21714
    check-cast p3, Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviReloadInfo;

    .line 21715
    iget-object p1, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviReloadInfo;->naviRoutingInfoV2_:Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviRoutingInfoV2;

    iget-object v0, p3, Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviReloadInfo;->naviRoutingInfoV2_:Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviRoutingInfoV2;

    invoke-interface {p2, p1, v0}, Lcom/android/carsdk/protobuf/GeneratedMessageLite$Visitor;->visitMessage(Lcom/android/carsdk/protobuf/MessageLite;Lcom/android/carsdk/protobuf/MessageLite;)Lcom/android/carsdk/protobuf/MessageLite;

    move-result-object p1

    check-cast p1, Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviRoutingInfoV2;

    iput-object p1, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviReloadInfo;->naviRoutingInfoV2_:Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviRoutingInfoV2;

    .line 21716
    iget-wide v5, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviReloadInfo;->routeId_:J

    const-wide/16 v10, 0x0

    cmp-long p1, v5, v10

    if-eqz p1, :cond_12

    move v4, v2

    goto :goto_7

    :cond_12
    move v4, v1

    :goto_7
    iget-wide v8, p3, Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviReloadInfo;->routeId_:J

    cmp-long p1, v8, v10

    if-eqz p1, :cond_13

    move v7, v2

    goto :goto_8

    :cond_13
    move v7, v1

    :goto_8
    move-object v3, p2

    invoke-interface/range {v3 .. v9}, Lcom/android/carsdk/protobuf/GeneratedMessageLite$Visitor;->visitLong(ZJZJ)J

    move-result-wide v3

    iput-wide v3, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviReloadInfo;->routeId_:J

    .line 21718
    iget-wide v5, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviReloadInfo;->expectCostTime_:J

    cmp-long p1, v5, v10

    if-eqz p1, :cond_14

    move v4, v2

    goto :goto_9

    :cond_14
    move v4, v1

    :goto_9
    iget-wide v8, p3, Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviReloadInfo;->expectCostTime_:J

    cmp-long p1, v8, v10

    if-eqz p1, :cond_15

    move v7, v2

    goto :goto_a

    :cond_15
    move v7, v1

    :goto_a
    move-object v3, p2

    invoke-interface/range {v3 .. v9}, Lcom/android/carsdk/protobuf/GeneratedMessageLite$Visitor;->visitLong(ZJZJ)J

    move-result-wide v3

    iput-wide v3, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviReloadInfo;->expectCostTime_:J

    .line 21720
    iget-object p1, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviReloadInfo;->oddStart_:Landroid/car/hardware/xpu/XpuProtoMessageVW$V2_Point;

    iget-object v0, p3, Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviReloadInfo;->oddStart_:Landroid/car/hardware/xpu/XpuProtoMessageVW$V2_Point;

    invoke-interface {p2, p1, v0}, Lcom/android/carsdk/protobuf/GeneratedMessageLite$Visitor;->visitMessage(Lcom/android/carsdk/protobuf/MessageLite;Lcom/android/carsdk/protobuf/MessageLite;)Lcom/android/carsdk/protobuf/MessageLite;

    move-result-object p1

    check-cast p1, Landroid/car/hardware/xpu/XpuProtoMessageVW$V2_Point;

    iput-object p1, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviReloadInfo;->oddStart_:Landroid/car/hardware/xpu/XpuProtoMessageVW$V2_Point;

    .line 21721
    iget-object p1, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviReloadInfo;->oddEnd_:Landroid/car/hardware/xpu/XpuProtoMessageVW$V2_Point;

    iget-object v0, p3, Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviReloadInfo;->oddEnd_:Landroid/car/hardware/xpu/XpuProtoMessageVW$V2_Point;

    invoke-interface {p2, p1, v0}, Lcom/android/carsdk/protobuf/GeneratedMessageLite$Visitor;->visitMessage(Lcom/android/carsdk/protobuf/MessageLite;Lcom/android/carsdk/protobuf/MessageLite;)Lcom/android/carsdk/protobuf/MessageLite;

    move-result-object p1

    check-cast p1, Landroid/car/hardware/xpu/XpuProtoMessageVW$V2_Point;

    iput-object p1, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviReloadInfo;->oddEnd_:Landroid/car/hardware/xpu/XpuProtoMessageVW$V2_Point;

    .line 21722
    iget p1, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviReloadInfo;->fngpStatus_:I

    if-eqz p1, :cond_16

    move v0, v2

    goto :goto_b

    :cond_16
    move v0, v1

    :goto_b
    iget v3, p3, Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviReloadInfo;->fngpStatus_:I

    if-eqz v3, :cond_17

    move v4, v2

    goto :goto_c

    :cond_17
    move v4, v1

    :goto_c
    invoke-interface {p2, v0, p1, v4, v3}, Lcom/android/carsdk/protobuf/GeneratedMessageLite$Visitor;->visitInt(ZIZI)I

    move-result p1

    iput p1, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviReloadInfo;->fngpStatus_:I

    .line 21723
    iget p1, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviReloadInfo;->totalOddMilage_:I

    if-eqz p1, :cond_18

    move v0, v2

    goto :goto_d

    :cond_18
    move v0, v1

    :goto_d
    iget v3, p3, Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviReloadInfo;->totalOddMilage_:I

    if-eqz v3, :cond_19

    move v4, v2

    goto :goto_e

    :cond_19
    move v4, v1

    :goto_e
    invoke-interface {p2, v0, p1, v4, v3}, Lcom/android/carsdk/protobuf/GeneratedMessageLite$Visitor;->visitInt(ZIZI)I

    move-result p1

    iput p1, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviReloadInfo;->totalOddMilage_:I

    .line 21725
    iget p1, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviReloadInfo;->reloadErrorCode_:I

    if-eqz p1, :cond_1a

    move v0, v2

    goto :goto_f

    :cond_1a
    move v0, v1

    :goto_f
    iget v3, p3, Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviReloadInfo;->reloadErrorCode_:I

    if-eqz v3, :cond_1b

    move v1, v2

    :cond_1b
    invoke-interface {p2, v0, p1, v1, v3}, Lcom/android/carsdk/protobuf/GeneratedMessageLite$Visitor;->visitInt(ZIZI)I

    move-result p1

    iput p1, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviReloadInfo;->reloadErrorCode_:I

    .line 21727
    iget-object p1, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviReloadInfo;->pathwayPoint_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    iget-object v0, p3, Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviReloadInfo;->pathwayPoint_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    invoke-interface {p2, p1, v0}, Lcom/android/carsdk/protobuf/GeneratedMessageLite$Visitor;->visitList(Lcom/android/carsdk/protobuf/Internal$ProtobufList;Lcom/android/carsdk/protobuf/Internal$ProtobufList;)Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    move-result-object p1

    iput-object p1, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviReloadInfo;->pathwayPoint_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    .line 21728
    sget-object p1, Lcom/android/carsdk/protobuf/GeneratedMessageLite$MergeFromVisitor;->INSTANCE:Lcom/android/carsdk/protobuf/GeneratedMessageLite$MergeFromVisitor;

    if-ne p2, p1, :cond_1c

    .line 21730
    iget p1, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviReloadInfo;->bitField0_:I

    iget p2, p3, Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviReloadInfo;->bitField0_:I

    or-int/2addr p1, p2

    iput p1, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviReloadInfo;->bitField0_:I

    :cond_1c
    return-object p0

    .line 21710
    :pswitch_4
    new-instance p1, Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviReloadInfo$Builder;

    invoke-direct {p1, v0}, Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviReloadInfo$Builder;-><init>(Landroid/car/hardware/xpu/XpuProtoMessageVW$1;)V

    return-object p1

    .line 21706
    :pswitch_5
    iget-object p1, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviReloadInfo;->pathwayPoint_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    invoke-interface {p1}, Lcom/android/carsdk/protobuf/Internal$ProtobufList;->makeImmutable()V

    return-object v0

    .line 21703
    :pswitch_6
    sget-object p1, Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviReloadInfo;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviReloadInfo;

    return-object p1

    .line 21700
    :pswitch_7
    new-instance p1, Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviReloadInfo;

    invoke-direct {p1}, Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviReloadInfo;-><init>()V

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
.end method

.method public getExpectCostTime()J
    .locals 2

    .line 20692
    iget-wide v0, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviReloadInfo;->expectCostTime_:J

    return-wide v0
.end method

.method public getFngpStatus()Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpStatus;
    .locals 1

    .line 20825
    iget v0, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviReloadInfo;->fngpStatus_:I

    invoke-static {v0}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpStatus;->forNumber(I)Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpStatus;

    move-result-object v0

    if-nez v0, :cond_0

    .line 20826
    sget-object v0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpStatus;->UNRECOGNIZED:Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpStatus;

    :cond_0
    return-object v0
.end method

.method public getFngpStatusValue()I
    .locals 1

    .line 20819
    iget v0, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviReloadInfo;->fngpStatus_:I

    return v0
.end method

.method public getNaviRoutingInfoV2()Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviRoutingInfoV2;
    .locals 1

    .line 20623
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviReloadInfo;->naviRoutingInfoV2_:Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviRoutingInfoV2;

    if-nez v0, :cond_0

    invoke-static {}, Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviRoutingInfoV2;->getDefaultInstance()Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviRoutingInfoV2;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public getOddEnd()Landroid/car/hardware/xpu/XpuProtoMessageVW$V2_Point;
    .locals 1

    .line 20773
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviReloadInfo;->oddEnd_:Landroid/car/hardware/xpu/XpuProtoMessageVW$V2_Point;

    if-nez v0, :cond_0

    invoke-static {}, Landroid/car/hardware/xpu/XpuProtoMessageVW$V2_Point;->getDefaultInstance()Landroid/car/hardware/xpu/XpuProtoMessageVW$V2_Point;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public getOddStart()Landroid/car/hardware/xpu/XpuProtoMessageVW$V2_Point;
    .locals 1

    .line 20721
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviReloadInfo;->oddStart_:Landroid/car/hardware/xpu/XpuProtoMessageVW$V2_Point;

    if-nez v0, :cond_0

    invoke-static {}, Landroid/car/hardware/xpu/XpuProtoMessageVW$V2_Point;->getDefaultInstance()Landroid/car/hardware/xpu/XpuProtoMessageVW$V2_Point;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public getPathwayPoint(I)Landroid/car/hardware/xpu/XpuProtoMessageVW$V2_Point;
    .locals 1

    .line 20963
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviReloadInfo;->pathwayPoint_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1}, Lcom/android/carsdk/protobuf/Internal$ProtobufList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/car/hardware/xpu/XpuProtoMessageVW$V2_Point;

    return-object p1
.end method

.method public getPathwayPointCount()I
    .locals 1

    .line 20953
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviReloadInfo;->pathwayPoint_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

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
            "Landroid/car/hardware/xpu/XpuProtoMessageVW$V2_Point;",
            ">;"
        }
    .end annotation

    .line 20932
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviReloadInfo;->pathwayPoint_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    return-object v0
.end method

.method public getPathwayPointOrBuilder(I)Landroid/car/hardware/xpu/XpuProtoMessageVW$V2_PointOrBuilder;
    .locals 1

    .line 20974
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviReloadInfo;->pathwayPoint_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1}, Lcom/android/carsdk/protobuf/Internal$ProtobufList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/car/hardware/xpu/XpuProtoMessageVW$V2_PointOrBuilder;

    return-object p1
.end method

.method public getPathwayPointOrBuilderList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "+",
            "Landroid/car/hardware/xpu/XpuProtoMessageVW$V2_PointOrBuilder;",
            ">;"
        }
    .end annotation

    .line 20943
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviReloadInfo;->pathwayPoint_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    return-object v0
.end method

.method public getReloadErrorCode()I
    .locals 1

    .line 20897
    iget v0, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviReloadInfo;->reloadErrorCode_:I

    return v0
.end method

.method public getRouteId()J
    .locals 2

    .line 20669
    iget-wide v0, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviReloadInfo;->routeId_:J

    return-wide v0
.end method

.method public getSerializedSize()I
    .locals 7

    .line 21130
    iget v0, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviReloadInfo;->memoizedSerializedSize:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    return v0

    .line 21134
    :cond_0
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviReloadInfo;->naviRoutingInfoV2_:Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviRoutingInfoV2;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 21136
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviReloadInfo;->getNaviRoutingInfoV2()Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviRoutingInfoV2;

    move-result-object v0

    const/4 v2, 0x1

    invoke-static {v2, v0}, Lcom/android/carsdk/protobuf/CodedOutputStream;->computeMessageSize(ILcom/android/carsdk/protobuf/MessageLite;)I

    move-result v0

    add-int/2addr v0, v1

    goto :goto_0

    :cond_1
    move v0, v1

    .line 21138
    :goto_0
    iget-wide v2, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviReloadInfo;->routeId_:J

    const-wide/16 v4, 0x0

    cmp-long v6, v2, v4

    if-eqz v6, :cond_2

    const/4 v6, 0x2

    .line 21140
    invoke-static {v6, v2, v3}, Lcom/android/carsdk/protobuf/CodedOutputStream;->computeInt64Size(IJ)I

    move-result v2

    add-int/2addr v0, v2

    .line 21142
    :cond_2
    iget-wide v2, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviReloadInfo;->expectCostTime_:J

    cmp-long v4, v2, v4

    if-eqz v4, :cond_3

    const/4 v4, 0x3

    .line 21144
    invoke-static {v4, v2, v3}, Lcom/android/carsdk/protobuf/CodedOutputStream;->computeUInt64Size(IJ)I

    move-result v2

    add-int/2addr v0, v2

    .line 21146
    :cond_3
    iget-object v2, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviReloadInfo;->oddStart_:Landroid/car/hardware/xpu/XpuProtoMessageVW$V2_Point;

    if-eqz v2, :cond_4

    const/4 v2, 0x4

    .line 21148
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviReloadInfo;->getOddStart()Landroid/car/hardware/xpu/XpuProtoMessageVW$V2_Point;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/carsdk/protobuf/CodedOutputStream;->computeMessageSize(ILcom/android/carsdk/protobuf/MessageLite;)I

    move-result v2

    add-int/2addr v0, v2

    .line 21150
    :cond_4
    iget-object v2, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviReloadInfo;->oddEnd_:Landroid/car/hardware/xpu/XpuProtoMessageVW$V2_Point;

    if-eqz v2, :cond_5

    const/4 v2, 0x5

    .line 21152
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviReloadInfo;->getOddEnd()Landroid/car/hardware/xpu/XpuProtoMessageVW$V2_Point;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/carsdk/protobuf/CodedOutputStream;->computeMessageSize(ILcom/android/carsdk/protobuf/MessageLite;)I

    move-result v2

    add-int/2addr v0, v2

    .line 21154
    :cond_5
    iget v2, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviReloadInfo;->fngpStatus_:I

    sget-object v3, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpStatus;->FNGP_STATUS_NOT_AVAILABLE:Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpStatus;

    invoke-virtual {v3}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpStatus;->getNumber()I

    move-result v3

    if-eq v2, v3, :cond_6

    const/4 v2, 0x6

    .line 21155
    iget v3, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviReloadInfo;->fngpStatus_:I

    .line 21156
    invoke-static {v2, v3}, Lcom/android/carsdk/protobuf/CodedOutputStream;->computeEnumSize(II)I

    move-result v2

    add-int/2addr v0, v2

    .line 21158
    :cond_6
    iget v2, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviReloadInfo;->totalOddMilage_:I

    if-eqz v2, :cond_7

    const/4 v3, 0x7

    .line 21160
    invoke-static {v3, v2}, Lcom/android/carsdk/protobuf/CodedOutputStream;->computeInt32Size(II)I

    move-result v2

    add-int/2addr v0, v2

    .line 21162
    :cond_7
    iget v2, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviReloadInfo;->reloadErrorCode_:I

    if-eqz v2, :cond_8

    const/16 v3, 0x8

    .line 21164
    invoke-static {v3, v2}, Lcom/android/carsdk/protobuf/CodedOutputStream;->computeInt32Size(II)I

    move-result v2

    add-int/2addr v0, v2

    .line 21166
    :cond_8
    :goto_1
    iget-object v2, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviReloadInfo;->pathwayPoint_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    invoke-interface {v2}, Lcom/android/carsdk/protobuf/Internal$ProtobufList;->size()I

    move-result v2

    if-ge v1, v2, :cond_9

    const/16 v2, 0x9

    .line 21167
    iget-object v3, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviReloadInfo;->pathwayPoint_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    .line 21168
    invoke-interface {v3, v1}, Lcom/android/carsdk/protobuf/Internal$ProtobufList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/carsdk/protobuf/MessageLite;

    invoke-static {v2, v3}, Lcom/android/carsdk/protobuf/CodedOutputStream;->computeMessageSize(ILcom/android/carsdk/protobuf/MessageLite;)I

    move-result v2

    add-int/2addr v0, v2

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 21170
    :cond_9
    iput v0, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviReloadInfo;->memoizedSerializedSize:I

    return v0
.end method

.method public getTotalOddMilage()I
    .locals 1

    .line 20862
    iget v0, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviReloadInfo;->totalOddMilage_:I

    return v0
.end method

.method public hasNaviRoutingInfoV2()Z
    .locals 1

    .line 20617
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviReloadInfo;->naviRoutingInfoV2_:Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviRoutingInfoV2;

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

    .line 20767
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviReloadInfo;->oddEnd_:Landroid/car/hardware/xpu/XpuProtoMessageVW$V2_Point;

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

    .line 20715
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviReloadInfo;->oddStart_:Landroid/car/hardware/xpu/XpuProtoMessageVW$V2_Point;

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

    .line 21100
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviReloadInfo;->naviRoutingInfoV2_:Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviRoutingInfoV2;

    if-eqz v0, :cond_0

    .line 21101
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviReloadInfo;->getNaviRoutingInfoV2()Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviRoutingInfoV2;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {p1, v1, v0}, Lcom/android/carsdk/protobuf/CodedOutputStream;->writeMessage(ILcom/android/carsdk/protobuf/MessageLite;)V

    .line 21103
    :cond_0
    iget-wide v0, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviReloadInfo;->routeId_:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_1

    const/4 v4, 0x2

    .line 21104
    invoke-virtual {p1, v4, v0, v1}, Lcom/android/carsdk/protobuf/CodedOutputStream;->writeInt64(IJ)V

    .line 21106
    :cond_1
    iget-wide v0, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviReloadInfo;->expectCostTime_:J

    cmp-long v2, v0, v2

    if-eqz v2, :cond_2

    const/4 v2, 0x3

    .line 21107
    invoke-virtual {p1, v2, v0, v1}, Lcom/android/carsdk/protobuf/CodedOutputStream;->writeUInt64(IJ)V

    .line 21109
    :cond_2
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviReloadInfo;->oddStart_:Landroid/car/hardware/xpu/XpuProtoMessageVW$V2_Point;

    if-eqz v0, :cond_3

    const/4 v0, 0x4

    .line 21110
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviReloadInfo;->getOddStart()Landroid/car/hardware/xpu/XpuProtoMessageVW$V2_Point;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/android/carsdk/protobuf/CodedOutputStream;->writeMessage(ILcom/android/carsdk/protobuf/MessageLite;)V

    .line 21112
    :cond_3
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviReloadInfo;->oddEnd_:Landroid/car/hardware/xpu/XpuProtoMessageVW$V2_Point;

    if-eqz v0, :cond_4

    const/4 v0, 0x5

    .line 21113
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviReloadInfo;->getOddEnd()Landroid/car/hardware/xpu/XpuProtoMessageVW$V2_Point;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/android/carsdk/protobuf/CodedOutputStream;->writeMessage(ILcom/android/carsdk/protobuf/MessageLite;)V

    .line 21115
    :cond_4
    iget v0, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviReloadInfo;->fngpStatus_:I

    sget-object v1, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpStatus;->FNGP_STATUS_NOT_AVAILABLE:Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpStatus;

    invoke-virtual {v1}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpStatus;->getNumber()I

    move-result v1

    if-eq v0, v1, :cond_5

    const/4 v0, 0x6

    .line 21116
    iget v1, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviReloadInfo;->fngpStatus_:I

    invoke-virtual {p1, v0, v1}, Lcom/android/carsdk/protobuf/CodedOutputStream;->writeEnum(II)V

    .line 21118
    :cond_5
    iget v0, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviReloadInfo;->totalOddMilage_:I

    if-eqz v0, :cond_6

    const/4 v1, 0x7

    .line 21119
    invoke-virtual {p1, v1, v0}, Lcom/android/carsdk/protobuf/CodedOutputStream;->writeInt32(II)V

    .line 21121
    :cond_6
    iget v0, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviReloadInfo;->reloadErrorCode_:I

    if-eqz v0, :cond_7

    const/16 v1, 0x8

    .line 21122
    invoke-virtual {p1, v1, v0}, Lcom/android/carsdk/protobuf/CodedOutputStream;->writeInt32(II)V

    :cond_7
    const/4 v0, 0x0

    .line 21124
    :goto_0
    iget-object v1, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviReloadInfo;->pathwayPoint_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    invoke-interface {v1}, Lcom/android/carsdk/protobuf/Internal$ProtobufList;->size()I

    move-result v1

    if-ge v0, v1, :cond_8

    const/16 v1, 0x9

    .line 21125
    iget-object v2, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviReloadInfo;->pathwayPoint_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    invoke-interface {v2, v0}, Lcom/android/carsdk/protobuf/Internal$ProtobufList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/carsdk/protobuf/MessageLite;

    invoke-virtual {p1, v1, v2}, Lcom/android/carsdk/protobuf/CodedOutputStream;->writeMessage(ILcom/android/carsdk/protobuf/MessageLite;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_8
    return-void
.end method
