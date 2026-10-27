.class public final Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteDetail;
.super Lcom/android/carsdk/protobuf/GeneratedMessageLite;
.source "XpuFNgpRouteMessage.java"

# interfaces
.implements Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteDetailOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/car/hardware/xpu/XpuFNgpRouteMessage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "FNgpRouteDetail"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteDetail$Builder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/carsdk/protobuf/GeneratedMessageLite<",
        "Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteDetail;",
        "Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteDetail$Builder;",
        ">;",
        "Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteDetailOrBuilder;"
    }
.end annotation


# static fields
.field private static final DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteDetail;

.field public static final FNGP_ROUTE_BRIEF_FIELD_NUMBER:I = 0x1

.field private static volatile PARSER:Lcom/android/carsdk/protobuf/Parser; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/carsdk/protobuf/Parser<",
            "Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteDetail;",
            ">;"
        }
    .end annotation
.end field

.field public static final SEGMENT_LIST_FIELD_NUMBER:I = 0x3

.field public static final V2_POINT_LIST_FIELD_NUMBER:I = 0x2


# instance fields
.field private bitField0_:I

.field private fngpRouteBrief_:Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief;

.field private segmentList_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/carsdk/protobuf/Internal$ProtobufList<",
            "Landroid/car/hardware/xpu/XpuFNgpRouteMessage$SegmentInfo;",
            ">;"
        }
    .end annotation
.end field

.field private v2PointList_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/carsdk/protobuf/Internal$ProtobufList<",
            "Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Point;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 12185
    new-instance v0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteDetail;

    invoke-direct {v0}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteDetail;-><init>()V

    sput-object v0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteDetail;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteDetail;

    .line 12186
    invoke-virtual {v0}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteDetail;->makeImmutable()V

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 11160
    invoke-direct {p0}, Lcom/android/carsdk/protobuf/GeneratedMessageLite;-><init>()V

    .line 11161
    invoke-static {}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteDetail;->emptyProtobufList()Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    move-result-object v0

    iput-object v0, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteDetail;->v2PointList_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    .line 11162
    invoke-static {}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteDetail;->emptyProtobufList()Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    move-result-object v0

    iput-object v0, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteDetail;->segmentList_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    return-void
.end method

.method static synthetic access$17000()Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteDetail;
    .locals 1

    .line 11155
    sget-object v0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteDetail;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteDetail;

    return-object v0
.end method

.method static synthetic access$17100(Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteDetail;Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief;)V
    .locals 0

    .line 11155
    invoke-direct {p0, p1}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteDetail;->setFngpRouteBrief(Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief;)V

    return-void
.end method

.method static synthetic access$17200(Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteDetail;Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief$Builder;)V
    .locals 0

    .line 11155
    invoke-direct {p0, p1}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteDetail;->setFngpRouteBrief(Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief$Builder;)V

    return-void
.end method

.method static synthetic access$17300(Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteDetail;Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief;)V
    .locals 0

    .line 11155
    invoke-direct {p0, p1}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteDetail;->mergeFngpRouteBrief(Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief;)V

    return-void
.end method

.method static synthetic access$17400(Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteDetail;)V
    .locals 0

    .line 11155
    invoke-direct {p0}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteDetail;->clearFngpRouteBrief()V

    return-void
.end method

.method static synthetic access$17500(Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteDetail;ILandroid/car/hardware/xpu/XpuFNgpRouteMessage$Point;)V
    .locals 0

    .line 11155
    invoke-direct {p0, p1, p2}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteDetail;->setV2PointList(ILandroid/car/hardware/xpu/XpuFNgpRouteMessage$Point;)V

    return-void
.end method

.method static synthetic access$17600(Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteDetail;ILandroid/car/hardware/xpu/XpuFNgpRouteMessage$Point$Builder;)V
    .locals 0

    .line 11155
    invoke-direct {p0, p1, p2}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteDetail;->setV2PointList(ILandroid/car/hardware/xpu/XpuFNgpRouteMessage$Point$Builder;)V

    return-void
.end method

.method static synthetic access$17700(Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteDetail;Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Point;)V
    .locals 0

    .line 11155
    invoke-direct {p0, p1}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteDetail;->addV2PointList(Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Point;)V

    return-void
.end method

.method static synthetic access$17800(Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteDetail;ILandroid/car/hardware/xpu/XpuFNgpRouteMessage$Point;)V
    .locals 0

    .line 11155
    invoke-direct {p0, p1, p2}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteDetail;->addV2PointList(ILandroid/car/hardware/xpu/XpuFNgpRouteMessage$Point;)V

    return-void
.end method

.method static synthetic access$17900(Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteDetail;Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Point$Builder;)V
    .locals 0

    .line 11155
    invoke-direct {p0, p1}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteDetail;->addV2PointList(Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Point$Builder;)V

    return-void
.end method

.method static synthetic access$18000(Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteDetail;ILandroid/car/hardware/xpu/XpuFNgpRouteMessage$Point$Builder;)V
    .locals 0

    .line 11155
    invoke-direct {p0, p1, p2}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteDetail;->addV2PointList(ILandroid/car/hardware/xpu/XpuFNgpRouteMessage$Point$Builder;)V

    return-void
.end method

.method static synthetic access$18100(Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteDetail;Ljava/lang/Iterable;)V
    .locals 0

    .line 11155
    invoke-direct {p0, p1}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteDetail;->addAllV2PointList(Ljava/lang/Iterable;)V

    return-void
.end method

.method static synthetic access$18200(Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteDetail;)V
    .locals 0

    .line 11155
    invoke-direct {p0}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteDetail;->clearV2PointList()V

    return-void
.end method

.method static synthetic access$18300(Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteDetail;I)V
    .locals 0

    .line 11155
    invoke-direct {p0, p1}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteDetail;->removeV2PointList(I)V

    return-void
.end method

.method static synthetic access$18400(Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteDetail;ILandroid/car/hardware/xpu/XpuFNgpRouteMessage$SegmentInfo;)V
    .locals 0

    .line 11155
    invoke-direct {p0, p1, p2}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteDetail;->setSegmentList(ILandroid/car/hardware/xpu/XpuFNgpRouteMessage$SegmentInfo;)V

    return-void
.end method

.method static synthetic access$18500(Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteDetail;ILandroid/car/hardware/xpu/XpuFNgpRouteMessage$SegmentInfo$Builder;)V
    .locals 0

    .line 11155
    invoke-direct {p0, p1, p2}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteDetail;->setSegmentList(ILandroid/car/hardware/xpu/XpuFNgpRouteMessage$SegmentInfo$Builder;)V

    return-void
.end method

.method static synthetic access$18600(Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteDetail;Landroid/car/hardware/xpu/XpuFNgpRouteMessage$SegmentInfo;)V
    .locals 0

    .line 11155
    invoke-direct {p0, p1}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteDetail;->addSegmentList(Landroid/car/hardware/xpu/XpuFNgpRouteMessage$SegmentInfo;)V

    return-void
.end method

.method static synthetic access$18700(Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteDetail;ILandroid/car/hardware/xpu/XpuFNgpRouteMessage$SegmentInfo;)V
    .locals 0

    .line 11155
    invoke-direct {p0, p1, p2}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteDetail;->addSegmentList(ILandroid/car/hardware/xpu/XpuFNgpRouteMessage$SegmentInfo;)V

    return-void
.end method

.method static synthetic access$18800(Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteDetail;Landroid/car/hardware/xpu/XpuFNgpRouteMessage$SegmentInfo$Builder;)V
    .locals 0

    .line 11155
    invoke-direct {p0, p1}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteDetail;->addSegmentList(Landroid/car/hardware/xpu/XpuFNgpRouteMessage$SegmentInfo$Builder;)V

    return-void
.end method

.method static synthetic access$18900(Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteDetail;ILandroid/car/hardware/xpu/XpuFNgpRouteMessage$SegmentInfo$Builder;)V
    .locals 0

    .line 11155
    invoke-direct {p0, p1, p2}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteDetail;->addSegmentList(ILandroid/car/hardware/xpu/XpuFNgpRouteMessage$SegmentInfo$Builder;)V

    return-void
.end method

.method static synthetic access$19000(Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteDetail;Ljava/lang/Iterable;)V
    .locals 0

    .line 11155
    invoke-direct {p0, p1}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteDetail;->addAllSegmentList(Ljava/lang/Iterable;)V

    return-void
.end method

.method static synthetic access$19100(Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteDetail;)V
    .locals 0

    .line 11155
    invoke-direct {p0}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteDetail;->clearSegmentList()V

    return-void
.end method

.method static synthetic access$19200(Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteDetail;I)V
    .locals 0

    .line 11155
    invoke-direct {p0, p1}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteDetail;->removeSegmentList(I)V

    return-void
.end method

.method private addAllSegmentList(Ljava/lang/Iterable;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Landroid/car/hardware/xpu/XpuFNgpRouteMessage$SegmentInfo;",
            ">;)V"
        }
    .end annotation

    .line 11567
    invoke-direct {p0}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteDetail;->ensureSegmentListIsMutable()V

    .line 11568
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteDetail;->segmentList_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    invoke-static {p1, v0}, Lcom/android/carsdk/protobuf/AbstractMessageLite;->addAll(Ljava/lang/Iterable;Ljava/util/Collection;)V

    return-void
.end method

.method private addAllV2PointList(Ljava/lang/Iterable;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Point;",
            ">;)V"
        }
    .end annotation

    .line 11391
    invoke-direct {p0}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteDetail;->ensureV2PointListIsMutable()V

    .line 11392
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteDetail;->v2PointList_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    invoke-static {p1, v0}, Lcom/android/carsdk/protobuf/AbstractMessageLite;->addAll(Ljava/lang/Iterable;Ljava/util/Collection;)V

    return-void
.end method

.method private addSegmentList(ILandroid/car/hardware/xpu/XpuFNgpRouteMessage$SegmentInfo$Builder;)V
    .locals 1

    .line 11555
    invoke-direct {p0}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteDetail;->ensureSegmentListIsMutable()V

    .line 11556
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteDetail;->segmentList_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    invoke-virtual {p2}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$SegmentInfo$Builder;->build()Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object p2

    check-cast p2, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$SegmentInfo;

    invoke-interface {v0, p1, p2}, Lcom/android/carsdk/protobuf/Internal$ProtobufList;->add(ILjava/lang/Object;)V

    return-void
.end method

.method private addSegmentList(ILandroid/car/hardware/xpu/XpuFNgpRouteMessage$SegmentInfo;)V
    .locals 1

    .line 11529
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 11531
    invoke-direct {p0}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteDetail;->ensureSegmentListIsMutable()V

    .line 11532
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteDetail;->segmentList_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1, p2}, Lcom/android/carsdk/protobuf/Internal$ProtobufList;->add(ILjava/lang/Object;)V

    return-void
.end method

.method private addSegmentList(Landroid/car/hardware/xpu/XpuFNgpRouteMessage$SegmentInfo$Builder;)V
    .locals 1

    .line 11543
    invoke-direct {p0}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteDetail;->ensureSegmentListIsMutable()V

    .line 11544
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteDetail;->segmentList_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    invoke-virtual {p1}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$SegmentInfo$Builder;->build()Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$SegmentInfo;

    invoke-interface {v0, p1}, Lcom/android/carsdk/protobuf/Internal$ProtobufList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private addSegmentList(Landroid/car/hardware/xpu/XpuFNgpRouteMessage$SegmentInfo;)V
    .locals 1

    .line 11514
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 11516
    invoke-direct {p0}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteDetail;->ensureSegmentListIsMutable()V

    .line 11517
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteDetail;->segmentList_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1}, Lcom/android/carsdk/protobuf/Internal$ProtobufList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private addV2PointList(ILandroid/car/hardware/xpu/XpuFNgpRouteMessage$Point$Builder;)V
    .locals 1

    .line 11379
    invoke-direct {p0}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteDetail;->ensureV2PointListIsMutable()V

    .line 11380
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteDetail;->v2PointList_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    invoke-virtual {p2}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Point$Builder;->build()Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object p2

    check-cast p2, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Point;

    invoke-interface {v0, p1, p2}, Lcom/android/carsdk/protobuf/Internal$ProtobufList;->add(ILjava/lang/Object;)V

    return-void
.end method

.method private addV2PointList(ILandroid/car/hardware/xpu/XpuFNgpRouteMessage$Point;)V
    .locals 1

    .line 11353
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 11355
    invoke-direct {p0}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteDetail;->ensureV2PointListIsMutable()V

    .line 11356
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteDetail;->v2PointList_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1, p2}, Lcom/android/carsdk/protobuf/Internal$ProtobufList;->add(ILjava/lang/Object;)V

    return-void
.end method

.method private addV2PointList(Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Point$Builder;)V
    .locals 1

    .line 11367
    invoke-direct {p0}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteDetail;->ensureV2PointListIsMutable()V

    .line 11368
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteDetail;->v2PointList_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    invoke-virtual {p1}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Point$Builder;->build()Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Point;

    invoke-interface {v0, p1}, Lcom/android/carsdk/protobuf/Internal$ProtobufList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private addV2PointList(Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Point;)V
    .locals 1

    .line 11338
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 11340
    invoke-direct {p0}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteDetail;->ensureV2PointListIsMutable()V

    .line 11341
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteDetail;->v2PointList_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1}, Lcom/android/carsdk/protobuf/Internal$ProtobufList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private clearFngpRouteBrief()V
    .locals 1

    const/4 v0, 0x0

    .line 11237
    iput-object v0, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteDetail;->fngpRouteBrief_:Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief;

    return-void
.end method

.method private clearSegmentList()V
    .locals 1

    .line 11579
    invoke-static {}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteDetail;->emptyProtobufList()Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    move-result-object v0

    iput-object v0, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteDetail;->segmentList_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    return-void
.end method

.method private clearV2PointList()V
    .locals 1

    .line 11403
    invoke-static {}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteDetail;->emptyProtobufList()Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    move-result-object v0

    iput-object v0, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteDetail;->v2PointList_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    return-void
.end method

.method private ensureSegmentListIsMutable()V
    .locals 1

    .line 11472
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteDetail;->segmentList_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    invoke-interface {v0}, Lcom/android/carsdk/protobuf/Internal$ProtobufList;->isModifiable()Z

    move-result v0

    if-nez v0, :cond_0

    .line 11473
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteDetail;->segmentList_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    .line 11474
    invoke-static {v0}, Lcom/android/carsdk/protobuf/GeneratedMessageLite;->mutableCopy(Lcom/android/carsdk/protobuf/Internal$ProtobufList;)Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    move-result-object v0

    iput-object v0, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteDetail;->segmentList_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    :cond_0
    return-void
.end method

.method private ensureV2PointListIsMutable()V
    .locals 1

    .line 11296
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteDetail;->v2PointList_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    invoke-interface {v0}, Lcom/android/carsdk/protobuf/Internal$ProtobufList;->isModifiable()Z

    move-result v0

    if-nez v0, :cond_0

    .line 11297
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteDetail;->v2PointList_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    .line 11298
    invoke-static {v0}, Lcom/android/carsdk/protobuf/GeneratedMessageLite;->mutableCopy(Lcom/android/carsdk/protobuf/Internal$ProtobufList;)Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    move-result-object v0

    iput-object v0, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteDetail;->v2PointList_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    :cond_0
    return-void
.end method

.method public static getDefaultInstance()Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteDetail;
    .locals 1

    .line 12190
    sget-object v0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteDetail;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteDetail;

    return-object v0
.end method

.method private mergeFngpRouteBrief(Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief;)V
    .locals 2

    .line 11221
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteDetail;->fngpRouteBrief_:Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief;

    if-eqz v0, :cond_0

    .line 11222
    invoke-static {}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief;->getDefaultInstance()Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 11223
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteDetail;->fngpRouteBrief_:Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief;

    .line 11224
    invoke-static {v0}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief;->newBuilder(Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief;)Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief$Builder;->mergeFrom(Lcom/android/carsdk/protobuf/GeneratedMessageLite;)Lcom/android/carsdk/protobuf/GeneratedMessageLite$Builder;

    move-result-object p1

    check-cast p1, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief$Builder;

    invoke-virtual {p1}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief$Builder;->buildPartial()Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief;

    iput-object p1, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteDetail;->fngpRouteBrief_:Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief;

    goto :goto_0

    .line 11226
    :cond_0
    iput-object p1, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteDetail;->fngpRouteBrief_:Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief;

    :goto_0
    return-void
.end method

.method public static newBuilder()Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteDetail$Builder;
    .locals 1

    .line 11689
    sget-object v0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteDetail;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteDetail;

    invoke-virtual {v0}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteDetail;->toBuilder()Lcom/android/carsdk/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteDetail$Builder;

    return-object v0
.end method

.method public static newBuilder(Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteDetail;)Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteDetail$Builder;
    .locals 1

    .line 11692
    sget-object v0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteDetail;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteDetail;

    invoke-virtual {v0}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteDetail;->toBuilder()Lcom/android/carsdk/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteDetail$Builder;

    invoke-virtual {v0, p0}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteDetail$Builder;->mergeFrom(Lcom/android/carsdk/protobuf/GeneratedMessageLite;)Lcom/android/carsdk/protobuf/GeneratedMessageLite$Builder;

    move-result-object p0

    check-cast p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteDetail$Builder;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteDetail;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 11666
    sget-object v0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteDetail;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteDetail;

    invoke-static {v0, p0}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteDetail;->parseDelimitedFrom(Lcom/android/carsdk/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteDetail;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/android/carsdk/protobuf/ExtensionRegistryLite;)Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteDetail;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 11672
    sget-object v0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteDetail;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteDetail;

    invoke-static {v0, p0, p1}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteDetail;->parseDelimitedFrom(Lcom/android/carsdk/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/android/carsdk/protobuf/ExtensionRegistryLite;)Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteDetail;

    return-object p0
.end method

.method public static parseFrom(Lcom/android/carsdk/protobuf/ByteString;)Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteDetail;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/carsdk/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 11630
    sget-object v0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteDetail;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteDetail;

    invoke-static {v0, p0}, Lcom/android/carsdk/protobuf/GeneratedMessageLite;->parseFrom(Lcom/android/carsdk/protobuf/GeneratedMessageLite;Lcom/android/carsdk/protobuf/ByteString;)Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteDetail;

    return-object p0
.end method

.method public static parseFrom(Lcom/android/carsdk/protobuf/ByteString;Lcom/android/carsdk/protobuf/ExtensionRegistryLite;)Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteDetail;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/carsdk/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 11637
    sget-object v0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteDetail;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteDetail;

    invoke-static {v0, p0, p1}, Lcom/android/carsdk/protobuf/GeneratedMessageLite;->parseFrom(Lcom/android/carsdk/protobuf/GeneratedMessageLite;Lcom/android/carsdk/protobuf/ByteString;Lcom/android/carsdk/protobuf/ExtensionRegistryLite;)Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteDetail;

    return-object p0
.end method

.method public static parseFrom(Lcom/android/carsdk/protobuf/CodedInputStream;)Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteDetail;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 11677
    sget-object v0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteDetail;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteDetail;

    invoke-static {v0, p0}, Lcom/android/carsdk/protobuf/GeneratedMessageLite;->parseFrom(Lcom/android/carsdk/protobuf/GeneratedMessageLite;Lcom/android/carsdk/protobuf/CodedInputStream;)Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteDetail;

    return-object p0
.end method

.method public static parseFrom(Lcom/android/carsdk/protobuf/CodedInputStream;Lcom/android/carsdk/protobuf/ExtensionRegistryLite;)Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteDetail;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 11684
    sget-object v0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteDetail;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteDetail;

    invoke-static {v0, p0, p1}, Lcom/android/carsdk/protobuf/GeneratedMessageLite;->parseFrom(Lcom/android/carsdk/protobuf/GeneratedMessageLite;Lcom/android/carsdk/protobuf/CodedInputStream;Lcom/android/carsdk/protobuf/ExtensionRegistryLite;)Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteDetail;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteDetail;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 11654
    sget-object v0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteDetail;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteDetail;

    invoke-static {v0, p0}, Lcom/android/carsdk/protobuf/GeneratedMessageLite;->parseFrom(Lcom/android/carsdk/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteDetail;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/android/carsdk/protobuf/ExtensionRegistryLite;)Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteDetail;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 11661
    sget-object v0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteDetail;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteDetail;

    invoke-static {v0, p0, p1}, Lcom/android/carsdk/protobuf/GeneratedMessageLite;->parseFrom(Lcom/android/carsdk/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/android/carsdk/protobuf/ExtensionRegistryLite;)Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteDetail;

    return-object p0
.end method

.method public static parseFrom([B)Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteDetail;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/carsdk/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 11642
    sget-object v0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteDetail;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteDetail;

    invoke-static {v0, p0}, Lcom/android/carsdk/protobuf/GeneratedMessageLite;->parseFrom(Lcom/android/carsdk/protobuf/GeneratedMessageLite;[B)Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteDetail;

    return-object p0
.end method

.method public static parseFrom([BLcom/android/carsdk/protobuf/ExtensionRegistryLite;)Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteDetail;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/carsdk/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 11649
    sget-object v0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteDetail;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteDetail;

    invoke-static {v0, p0, p1}, Lcom/android/carsdk/protobuf/GeneratedMessageLite;->parseFrom(Lcom/android/carsdk/protobuf/GeneratedMessageLite;[BLcom/android/carsdk/protobuf/ExtensionRegistryLite;)Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteDetail;

    return-object p0
.end method

.method public static parser()Lcom/android/carsdk/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/android/carsdk/protobuf/Parser<",
            "Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteDetail;",
            ">;"
        }
    .end annotation

    .line 12196
    sget-object v0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteDetail;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteDetail;

    invoke-virtual {v0}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteDetail;->getParserForType()Lcom/android/carsdk/protobuf/Parser;

    move-result-object v0

    return-object v0
.end method

.method private removeSegmentList(I)V
    .locals 1

    .line 11589
    invoke-direct {p0}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteDetail;->ensureSegmentListIsMutable()V

    .line 11590
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteDetail;->segmentList_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1}, Lcom/android/carsdk/protobuf/Internal$ProtobufList;->remove(I)Ljava/lang/Object;

    return-void
.end method

.method private removeV2PointList(I)V
    .locals 1

    .line 11413
    invoke-direct {p0}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteDetail;->ensureV2PointListIsMutable()V

    .line 11414
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteDetail;->v2PointList_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1}, Lcom/android/carsdk/protobuf/Internal$ProtobufList;->remove(I)Ljava/lang/Object;

    return-void
.end method

.method private setFngpRouteBrief(Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief$Builder;)V
    .locals 0

    .line 11210
    invoke-virtual {p1}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief$Builder;->build()Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief;

    iput-object p1, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteDetail;->fngpRouteBrief_:Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief;

    return-void
.end method

.method private setFngpRouteBrief(Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief;)V
    .locals 0

    .line 11196
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 11198
    iput-object p1, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteDetail;->fngpRouteBrief_:Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief;

    return-void
.end method

.method private setSegmentList(ILandroid/car/hardware/xpu/XpuFNgpRouteMessage$SegmentInfo$Builder;)V
    .locals 1

    .line 11502
    invoke-direct {p0}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteDetail;->ensureSegmentListIsMutable()V

    .line 11503
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteDetail;->segmentList_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    invoke-virtual {p2}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$SegmentInfo$Builder;->build()Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object p2

    check-cast p2, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$SegmentInfo;

    invoke-interface {v0, p1, p2}, Lcom/android/carsdk/protobuf/Internal$ProtobufList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private setSegmentList(ILandroid/car/hardware/xpu/XpuFNgpRouteMessage$SegmentInfo;)V
    .locals 1

    .line 11488
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 11490
    invoke-direct {p0}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteDetail;->ensureSegmentListIsMutable()V

    .line 11491
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteDetail;->segmentList_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1, p2}, Lcom/android/carsdk/protobuf/Internal$ProtobufList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private setV2PointList(ILandroid/car/hardware/xpu/XpuFNgpRouteMessage$Point$Builder;)V
    .locals 1

    .line 11326
    invoke-direct {p0}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteDetail;->ensureV2PointListIsMutable()V

    .line 11327
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteDetail;->v2PointList_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    invoke-virtual {p2}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Point$Builder;->build()Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object p2

    check-cast p2, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Point;

    invoke-interface {v0, p1, p2}, Lcom/android/carsdk/protobuf/Internal$ProtobufList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private setV2PointList(ILandroid/car/hardware/xpu/XpuFNgpRouteMessage$Point;)V
    .locals 1

    .line 11312
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 11314
    invoke-direct {p0}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteDetail;->ensureV2PointListIsMutable()V

    .line 11315
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteDetail;->v2PointList_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1, p2}, Lcom/android/carsdk/protobuf/Internal$ProtobufList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method protected final dynamicMethod(Lcom/android/carsdk/protobuf/GeneratedMessageLite$MethodToInvoke;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    .line 12077
    sget-object v0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$1;->$SwitchMap$com$google$protobuf$GeneratedMessageLite$MethodToInvoke:[I

    invoke-virtual {p1}, Lcom/android/carsdk/protobuf/GeneratedMessageLite$MethodToInvoke;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x0

    packed-switch p1, :pswitch_data_0

    .line 12178
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1

    .line 12169
    :pswitch_0
    sget-object p1, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteDetail;->PARSER:Lcom/android/carsdk/protobuf/Parser;

    if-nez p1, :cond_1

    const-class p1, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteDetail;

    monitor-enter p1

    .line 12170
    :try_start_0
    sget-object p2, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteDetail;->PARSER:Lcom/android/carsdk/protobuf/Parser;

    if-nez p2, :cond_0

    .line 12171
    new-instance p2, Lcom/android/carsdk/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;

    sget-object p3, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteDetail;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteDetail;

    invoke-direct {p2, p3}, Lcom/android/carsdk/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;-><init>(Lcom/android/carsdk/protobuf/GeneratedMessageLite;)V

    sput-object p2, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteDetail;->PARSER:Lcom/android/carsdk/protobuf/Parser;

    .line 12173
    :cond_0
    monitor-exit p1

    goto :goto_0

    :catchall_0
    move-exception p2

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p2

    .line 12175
    :cond_1
    :goto_0
    sget-object p1, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteDetail;->PARSER:Lcom/android/carsdk/protobuf/Parser;

    return-object p1

    .line 12105
    :pswitch_1
    check-cast p2, Lcom/android/carsdk/protobuf/CodedInputStream;

    .line 12107
    check-cast p3, Lcom/android/carsdk/protobuf/ExtensionRegistryLite;

    const/4 p1, 0x0

    :cond_2
    :goto_1
    if-nez p1, :cond_a

    .line 12112
    :try_start_1
    invoke-virtual {p2}, Lcom/android/carsdk/protobuf/CodedInputStream;->readTag()I

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_9

    const/16 v3, 0xa

    if-eq v1, v3, :cond_7

    const/16 v3, 0x12

    if-eq v1, v3, :cond_5

    const/16 v3, 0x1a

    if-eq v1, v3, :cond_3

    .line 12118
    invoke-virtual {p2, v1}, Lcom/android/carsdk/protobuf/CodedInputStream;->skipField(I)Z

    move-result v1

    if-nez v1, :cond_2

    goto :goto_3

    .line 12146
    :cond_3
    iget-object v1, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteDetail;->segmentList_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    invoke-interface {v1}, Lcom/android/carsdk/protobuf/Internal$ProtobufList;->isModifiable()Z

    move-result v1

    if-nez v1, :cond_4

    .line 12147
    iget-object v1, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteDetail;->segmentList_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    .line 12148
    invoke-static {v1}, Lcom/android/carsdk/protobuf/GeneratedMessageLite;->mutableCopy(Lcom/android/carsdk/protobuf/Internal$ProtobufList;)Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    move-result-object v1

    iput-object v1, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteDetail;->segmentList_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    .line 12150
    :cond_4
    iget-object v1, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteDetail;->segmentList_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    .line 12151
    invoke-static {}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$SegmentInfo;->parser()Lcom/android/carsdk/protobuf/Parser;

    move-result-object v2

    invoke-virtual {p2, v2, p3}, Lcom/android/carsdk/protobuf/CodedInputStream;->readMessage(Lcom/android/carsdk/protobuf/Parser;Lcom/android/carsdk/protobuf/ExtensionRegistryLite;)Lcom/android/carsdk/protobuf/MessageLite;

    move-result-object v2

    check-cast v2, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$SegmentInfo;

    .line 12150
    invoke-interface {v1, v2}, Lcom/android/carsdk/protobuf/Internal$ProtobufList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 12137
    :cond_5
    iget-object v1, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteDetail;->v2PointList_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    invoke-interface {v1}, Lcom/android/carsdk/protobuf/Internal$ProtobufList;->isModifiable()Z

    move-result v1

    if-nez v1, :cond_6

    .line 12138
    iget-object v1, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteDetail;->v2PointList_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    .line 12139
    invoke-static {v1}, Lcom/android/carsdk/protobuf/GeneratedMessageLite;->mutableCopy(Lcom/android/carsdk/protobuf/Internal$ProtobufList;)Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    move-result-object v1

    iput-object v1, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteDetail;->v2PointList_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    .line 12141
    :cond_6
    iget-object v1, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteDetail;->v2PointList_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    .line 12142
    invoke-static {}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Point;->parser()Lcom/android/carsdk/protobuf/Parser;

    move-result-object v2

    invoke-virtual {p2, v2, p3}, Lcom/android/carsdk/protobuf/CodedInputStream;->readMessage(Lcom/android/carsdk/protobuf/Parser;Lcom/android/carsdk/protobuf/ExtensionRegistryLite;)Lcom/android/carsdk/protobuf/MessageLite;

    move-result-object v2

    check-cast v2, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Point;

    .line 12141
    invoke-interface {v1, v2}, Lcom/android/carsdk/protobuf/Internal$ProtobufList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 12125
    :cond_7
    iget-object v1, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteDetail;->fngpRouteBrief_:Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief;

    if-eqz v1, :cond_8

    .line 12126
    invoke-virtual {v1}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief;->toBuilder()Lcom/android/carsdk/protobuf/GeneratedMessageLite$Builder;

    move-result-object v1

    check-cast v1, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief$Builder;

    goto :goto_2

    :cond_8
    move-object v1, v0

    .line 12128
    :goto_2
    invoke-static {}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief;->parser()Lcom/android/carsdk/protobuf/Parser;

    move-result-object v2

    invoke-virtual {p2, v2, p3}, Lcom/android/carsdk/protobuf/CodedInputStream;->readMessage(Lcom/android/carsdk/protobuf/Parser;Lcom/android/carsdk/protobuf/ExtensionRegistryLite;)Lcom/android/carsdk/protobuf/MessageLite;

    move-result-object v2

    check-cast v2, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief;

    iput-object v2, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteDetail;->fngpRouteBrief_:Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief;

    if-eqz v1, :cond_2

    .line 12130
    invoke-virtual {v1, v2}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief$Builder;->mergeFrom(Lcom/android/carsdk/protobuf/GeneratedMessageLite;)Lcom/android/carsdk/protobuf/GeneratedMessageLite$Builder;

    .line 12131
    invoke-virtual {v1}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief$Builder;->buildPartial()Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object v1

    check-cast v1, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief;

    iput-object v1, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteDetail;->fngpRouteBrief_:Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief;
    :try_end_1
    .catch Lcom/android/carsdk/protobuf/InvalidProtocolBufferException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto/16 :goto_1

    :cond_9
    :goto_3
    move p1, v2

    goto/16 :goto_1

    :catchall_1
    move-exception p1

    goto :goto_4

    :catch_0
    move-exception p1

    .line 12159
    :try_start_2
    new-instance p2, Ljava/lang/RuntimeException;

    new-instance p3, Lcom/android/carsdk/protobuf/InvalidProtocolBufferException;

    .line 12161
    invoke-virtual {p1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p3, p1}, Lcom/android/carsdk/protobuf/InvalidProtocolBufferException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, p0}, Lcom/android/carsdk/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/android/carsdk/protobuf/MessageLite;)Lcom/android/carsdk/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p2

    :catch_1
    move-exception p1

    .line 12157
    new-instance p2, Ljava/lang/RuntimeException;

    invoke-virtual {p1, p0}, Lcom/android/carsdk/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/android/carsdk/protobuf/MessageLite;)Lcom/android/carsdk/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 12162
    :goto_4
    throw p1

    .line 12166
    :cond_a
    :pswitch_2
    sget-object p1, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteDetail;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteDetail;

    return-object p1

    .line 12093
    :pswitch_3
    check-cast p2, Lcom/android/carsdk/protobuf/GeneratedMessageLite$Visitor;

    .line 12094
    check-cast p3, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteDetail;

    .line 12095
    iget-object p1, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteDetail;->fngpRouteBrief_:Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief;

    iget-object v0, p3, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteDetail;->fngpRouteBrief_:Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief;

    invoke-interface {p2, p1, v0}, Lcom/android/carsdk/protobuf/GeneratedMessageLite$Visitor;->visitMessage(Lcom/android/carsdk/protobuf/MessageLite;Lcom/android/carsdk/protobuf/MessageLite;)Lcom/android/carsdk/protobuf/MessageLite;

    move-result-object p1

    check-cast p1, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief;

    iput-object p1, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteDetail;->fngpRouteBrief_:Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief;

    .line 12096
    iget-object p1, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteDetail;->v2PointList_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    iget-object v0, p3, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteDetail;->v2PointList_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    invoke-interface {p2, p1, v0}, Lcom/android/carsdk/protobuf/GeneratedMessageLite$Visitor;->visitList(Lcom/android/carsdk/protobuf/Internal$ProtobufList;Lcom/android/carsdk/protobuf/Internal$ProtobufList;)Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    move-result-object p1

    iput-object p1, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteDetail;->v2PointList_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    .line 12097
    iget-object p1, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteDetail;->segmentList_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    iget-object v0, p3, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteDetail;->segmentList_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    invoke-interface {p2, p1, v0}, Lcom/android/carsdk/protobuf/GeneratedMessageLite$Visitor;->visitList(Lcom/android/carsdk/protobuf/Internal$ProtobufList;Lcom/android/carsdk/protobuf/Internal$ProtobufList;)Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    move-result-object p1

    iput-object p1, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteDetail;->segmentList_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    .line 12098
    sget-object p1, Lcom/android/carsdk/protobuf/GeneratedMessageLite$MergeFromVisitor;->INSTANCE:Lcom/android/carsdk/protobuf/GeneratedMessageLite$MergeFromVisitor;

    if-ne p2, p1, :cond_b

    .line 12100
    iget p1, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteDetail;->bitField0_:I

    iget p2, p3, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteDetail;->bitField0_:I

    or-int/2addr p1, p2

    iput p1, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteDetail;->bitField0_:I

    :cond_b
    return-object p0

    .line 12090
    :pswitch_4
    new-instance p1, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteDetail$Builder;

    invoke-direct {p1, v0}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteDetail$Builder;-><init>(Landroid/car/hardware/xpu/XpuFNgpRouteMessage$1;)V

    return-object p1

    .line 12085
    :pswitch_5
    iget-object p1, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteDetail;->v2PointList_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    invoke-interface {p1}, Lcom/android/carsdk/protobuf/Internal$ProtobufList;->makeImmutable()V

    .line 12086
    iget-object p1, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteDetail;->segmentList_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    invoke-interface {p1}, Lcom/android/carsdk/protobuf/Internal$ProtobufList;->makeImmutable()V

    return-object v0

    .line 12082
    :pswitch_6
    sget-object p1, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteDetail;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteDetail;

    return-object p1

    .line 12079
    :pswitch_7
    new-instance p1, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteDetail;

    invoke-direct {p1}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteDetail;-><init>()V

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

.method public getFngpRouteBrief()Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief;
    .locals 1

    .line 11185
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteDetail;->fngpRouteBrief_:Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief;

    if-nez v0, :cond_0

    invoke-static {}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief;->getDefaultInstance()Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public getSegmentList(I)Landroid/car/hardware/xpu/XpuFNgpRouteMessage$SegmentInfo;
    .locals 1

    .line 11458
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteDetail;->segmentList_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1}, Lcom/android/carsdk/protobuf/Internal$ProtobufList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$SegmentInfo;

    return-object p1
.end method

.method public getSegmentListCount()I
    .locals 1

    .line 11448
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteDetail;->segmentList_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    invoke-interface {v0}, Lcom/android/carsdk/protobuf/Internal$ProtobufList;->size()I

    move-result v0

    return v0
.end method

.method public getSegmentListList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/car/hardware/xpu/XpuFNgpRouteMessage$SegmentInfo;",
            ">;"
        }
    .end annotation

    .line 11427
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteDetail;->segmentList_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    return-object v0
.end method

.method public getSegmentListOrBuilder(I)Landroid/car/hardware/xpu/XpuFNgpRouteMessage$SegmentInfoOrBuilder;
    .locals 1

    .line 11469
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteDetail;->segmentList_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1}, Lcom/android/carsdk/protobuf/Internal$ProtobufList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$SegmentInfoOrBuilder;

    return-object p1
.end method

.method public getSegmentListOrBuilderList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "+",
            "Landroid/car/hardware/xpu/XpuFNgpRouteMessage$SegmentInfoOrBuilder;",
            ">;"
        }
    .end annotation

    .line 11438
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteDetail;->segmentList_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    return-object v0
.end method

.method public getSerializedSize()I
    .locals 5

    .line 11607
    iget v0, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteDetail;->memoizedSerializedSize:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    return v0

    .line 11611
    :cond_0
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteDetail;->fngpRouteBrief_:Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 11613
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteDetail;->getFngpRouteBrief()Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief;

    move-result-object v0

    const/4 v2, 0x1

    invoke-static {v2, v0}, Lcom/android/carsdk/protobuf/CodedOutputStream;->computeMessageSize(ILcom/android/carsdk/protobuf/MessageLite;)I

    move-result v0

    add-int/2addr v0, v1

    goto :goto_0

    :cond_1
    move v0, v1

    :goto_0
    move v2, v1

    .line 11615
    :goto_1
    iget-object v3, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteDetail;->v2PointList_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    invoke-interface {v3}, Lcom/android/carsdk/protobuf/Internal$ProtobufList;->size()I

    move-result v3

    if-ge v2, v3, :cond_2

    const/4 v3, 0x2

    .line 11616
    iget-object v4, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteDetail;->v2PointList_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    .line 11617
    invoke-interface {v4, v2}, Lcom/android/carsdk/protobuf/Internal$ProtobufList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/carsdk/protobuf/MessageLite;

    invoke-static {v3, v4}, Lcom/android/carsdk/protobuf/CodedOutputStream;->computeMessageSize(ILcom/android/carsdk/protobuf/MessageLite;)I

    move-result v3

    add-int/2addr v0, v3

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 11619
    :cond_2
    :goto_2
    iget-object v2, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteDetail;->segmentList_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    invoke-interface {v2}, Lcom/android/carsdk/protobuf/Internal$ProtobufList;->size()I

    move-result v2

    if-ge v1, v2, :cond_3

    const/4 v2, 0x3

    .line 11620
    iget-object v3, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteDetail;->segmentList_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    .line 11621
    invoke-interface {v3, v1}, Lcom/android/carsdk/protobuf/Internal$ProtobufList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/carsdk/protobuf/MessageLite;

    invoke-static {v2, v3}, Lcom/android/carsdk/protobuf/CodedOutputStream;->computeMessageSize(ILcom/android/carsdk/protobuf/MessageLite;)I

    move-result v2

    add-int/2addr v0, v2

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 11623
    :cond_3
    iput v0, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteDetail;->memoizedSerializedSize:I

    return v0
.end method

.method public getV2PointList(I)Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Point;
    .locals 1

    .line 11282
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteDetail;->v2PointList_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1}, Lcom/android/carsdk/protobuf/Internal$ProtobufList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Point;

    return-object p1
.end method

.method public getV2PointListCount()I
    .locals 1

    .line 11272
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteDetail;->v2PointList_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    invoke-interface {v0}, Lcom/android/carsdk/protobuf/Internal$ProtobufList;->size()I

    move-result v0

    return v0
.end method

.method public getV2PointListList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Point;",
            ">;"
        }
    .end annotation

    .line 11251
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteDetail;->v2PointList_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    return-object v0
.end method

.method public getV2PointListOrBuilder(I)Landroid/car/hardware/xpu/XpuFNgpRouteMessage$PointOrBuilder;
    .locals 1

    .line 11293
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteDetail;->v2PointList_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1}, Lcom/android/carsdk/protobuf/Internal$ProtobufList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$PointOrBuilder;

    return-object p1
.end method

.method public getV2PointListOrBuilderList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "+",
            "Landroid/car/hardware/xpu/XpuFNgpRouteMessage$PointOrBuilder;",
            ">;"
        }
    .end annotation

    .line 11262
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteDetail;->v2PointList_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    return-object v0
.end method

.method public hasFngpRouteBrief()Z
    .locals 1

    .line 11175
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteDetail;->fngpRouteBrief_:Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief;

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

    .line 11595
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteDetail;->fngpRouteBrief_:Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief;

    if-eqz v0, :cond_0

    .line 11596
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteDetail;->getFngpRouteBrief()Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {p1, v1, v0}, Lcom/android/carsdk/protobuf/CodedOutputStream;->writeMessage(ILcom/android/carsdk/protobuf/MessageLite;)V

    :cond_0
    const/4 v0, 0x0

    move v1, v0

    .line 11598
    :goto_0
    iget-object v2, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteDetail;->v2PointList_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    invoke-interface {v2}, Lcom/android/carsdk/protobuf/Internal$ProtobufList;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    const/4 v2, 0x2

    .line 11599
    iget-object v3, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteDetail;->v2PointList_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    invoke-interface {v3, v1}, Lcom/android/carsdk/protobuf/Internal$ProtobufList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/carsdk/protobuf/MessageLite;

    invoke-virtual {p1, v2, v3}, Lcom/android/carsdk/protobuf/CodedOutputStream;->writeMessage(ILcom/android/carsdk/protobuf/MessageLite;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 11601
    :cond_1
    :goto_1
    iget-object v1, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteDetail;->segmentList_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    invoke-interface {v1}, Lcom/android/carsdk/protobuf/Internal$ProtobufList;->size()I

    move-result v1

    if-ge v0, v1, :cond_2

    const/4 v1, 0x3

    .line 11602
    iget-object v2, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteDetail;->segmentList_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    invoke-interface {v2, v0}, Lcom/android/carsdk/protobuf/Internal$ProtobufList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/carsdk/protobuf/MessageLite;

    invoke-virtual {p1, v1, v2}, Lcom/android/carsdk/protobuf/CodedOutputStream;->writeMessage(ILcom/android/carsdk/protobuf/MessageLite;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    return-void
.end method
