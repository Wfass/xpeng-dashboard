.class public final Landroid/car/hardware/xpu/XpuProtoMessageVW$Link;
.super Lcom/android/carsdk/protobuf/GeneratedMessageLite;
.source "XpuProtoMessageVW.java"

# interfaces
.implements Landroid/car/hardware/xpu/XpuProtoMessageVW$LinkOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/car/hardware/xpu/XpuProtoMessageVW;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Link"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/car/hardware/xpu/XpuProtoMessageVW$Link$Builder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/carsdk/protobuf/GeneratedMessageLite<",
        "Landroid/car/hardware/xpu/XpuProtoMessageVW$Link;",
        "Landroid/car/hardware/xpu/XpuProtoMessageVW$Link$Builder;",
        ">;",
        "Landroid/car/hardware/xpu/XpuProtoMessageVW$LinkOrBuilder;"
    }
.end annotation


# static fields
.field public static final ASSISTANT_ACTION_FIELD_NUMBER:I = 0x18

.field public static final CAMERAS_FIELD_NUMBER:I = 0x1b

.field private static final DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuProtoMessageVW$Link;

.field public static final FORMWAY_TYPE_FIELD_NUMBER:I = 0x3

.field public static final HAS_MIX_FORK_FIELD_NUMBER:I = 0x11

.field public static final HAS_MULTI_OUT_FIELD_NUMBER:I = 0xf

.field public static final HAS_PARALLEL_ROAD_FIELD_NUMBER:I = 0x6

.field public static final HAS_TRAFFIC_LIGHT_FIELD_NUMBER:I = 0x10

.field public static final HEIGHT_DIFF_DATA_FIELD_NUMBER:I = 0xa

.field public static final ID_FIELD_NUMBER:I = 0x1

.field public static final IS_AT_SERVICE_FIELD_NUMBER:I = 0x12

.field public static final IS_OVER_HEAD_FIELD_NUMBER:I = 0x5

.field public static final LANE_NUM_FIELD_NUMBER:I = 0x9

.field public static final LENGTH_FIELD_NUMBER:I = 0xc

.field public static final LINK_DIRECTION_FIELD_NUMBER:I = 0x7

.field public static final LINK_TYPE_FIELD_NUMBER:I = 0x2

.field public static final MAINACTION_FIELD_NUMBER:I = 0x19

.field public static final OWNERSHIP_FIELD_NUMBER:I = 0xd

.field private static volatile PARSER:Lcom/android/carsdk/protobuf/Parser; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/carsdk/protobuf/Parser<",
            "Landroid/car/hardware/xpu/XpuProtoMessageVW$Link;",
            ">;"
        }
    .end annotation
.end field

.field public static final ROAD_CLASS_FIELD_NUMBER:I = 0x4

.field public static final ROAD_DIRECTION_FIELD_NUMBER:I = 0x8

.field public static final ROAD_FACILITIES_FIELD_NUMBER:I = 0x15

.field public static final ROAD_FACILITY_COUNT_FIELD_NUMBER:I = 0x14

.field public static final ROAD_NAME_FIELD_NUMBER:I = 0xe

.field public static final ROAD_SLOP_INFO_FIELD_NUMBER:I = 0x16

.field public static final SLOPE_INFOS_FIELD_NUMBER:I = 0x17

.field public static final SPEED_FIELD_NUMBER:I = 0x13

.field public static final V2_POINTS_FIELD_NUMBER:I = 0xb


# instance fields
.field private assistantAction_:I

.field private bitField0_:I

.field private cameras_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/carsdk/protobuf/Internal$ProtobufList<",
            "Landroid/car/hardware/xpu/XpuProtoMessageVW$Camera;",
            ">;"
        }
    .end annotation
.end field

.field private formwayType_:I

.field private hasMixFork_:Z

.field private hasMultiOut_:Z

.field private hasParallelRoad_:Z

.field private hasTrafficLight_:Z

.field private heightDiffData_:Landroid/car/hardware/xpu/XpuProtoMessageVW$HeightDiffData;

.field private id_:J

.field private isAtService_:Z

.field private isOverHead_:Z

.field private laneNum_:I

.field private length_:D

.field private linkDirection_:I

.field private linkType_:I

.field private mainAction_:I

.field private ownership_:I

.field private roadClass_:I

.field private roadDirection_:I

.field private roadFacilities_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/carsdk/protobuf/Internal$ProtobufList<",
            "Landroid/car/hardware/xpu/XpuProtoMessageVW$RoadFacility;",
            ">;"
        }
    .end annotation
.end field

.field private roadFacilityCount_:I

.field private roadName_:Ljava/lang/String;

.field private roadSlopInfo_:Landroid/car/hardware/xpu/XpuProtoMessageVW$RoadSlopeInfo;

.field private slopeInfos_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/carsdk/protobuf/Internal$ProtobufList<",
            "Landroid/car/hardware/xpu/XpuProtoMessageVW$SlopeInfo;",
            ">;"
        }
    .end annotation
.end field

.field private speed_:I

.field private v2Points_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/carsdk/protobuf/Internal$ProtobufList<",
            "Landroid/car/hardware/xpu/XpuProtoMessageVW$V2_Point;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 11528
    new-instance v0, Landroid/car/hardware/xpu/XpuProtoMessageVW$Link;

    invoke-direct {v0}, Landroid/car/hardware/xpu/XpuProtoMessageVW$Link;-><init>()V

    sput-object v0, Landroid/car/hardware/xpu/XpuProtoMessageVW$Link;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuProtoMessageVW$Link;

    .line 11529
    invoke-virtual {v0}, Landroid/car/hardware/xpu/XpuProtoMessageVW$Link;->makeImmutable()V

    return-void
.end method

.method private constructor <init>()V
    .locals 3

    .line 8714
    invoke-direct {p0}, Lcom/android/carsdk/protobuf/GeneratedMessageLite;-><init>()V

    const-wide/16 v0, 0x0

    .line 8715
    iput-wide v0, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$Link;->id_:J

    const/4 v0, 0x0

    .line 8716
    iput v0, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$Link;->linkType_:I

    .line 8717
    iput v0, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$Link;->formwayType_:I

    .line 8718
    iput v0, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$Link;->roadClass_:I

    .line 8719
    iput-boolean v0, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$Link;->isOverHead_:Z

    .line 8720
    iput-boolean v0, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$Link;->hasParallelRoad_:Z

    .line 8721
    iput v0, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$Link;->linkDirection_:I

    .line 8722
    iput v0, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$Link;->roadDirection_:I

    .line 8723
    iput v0, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$Link;->laneNum_:I

    .line 8724
    invoke-static {}, Landroid/car/hardware/xpu/XpuProtoMessageVW$Link;->emptyProtobufList()Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    move-result-object v1

    iput-object v1, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$Link;->v2Points_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    const-wide/16 v1, 0x0

    .line 8725
    iput-wide v1, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$Link;->length_:D

    .line 8726
    iput v0, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$Link;->ownership_:I

    const-string v1, ""

    .line 8727
    iput-object v1, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$Link;->roadName_:Ljava/lang/String;

    .line 8728
    iput-boolean v0, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$Link;->hasMultiOut_:Z

    .line 8729
    iput-boolean v0, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$Link;->hasTrafficLight_:Z

    .line 8730
    iput-boolean v0, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$Link;->hasMixFork_:Z

    .line 8731
    iput-boolean v0, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$Link;->isAtService_:Z

    .line 8732
    iput v0, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$Link;->speed_:I

    .line 8733
    iput v0, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$Link;->roadFacilityCount_:I

    .line 8734
    invoke-static {}, Landroid/car/hardware/xpu/XpuProtoMessageVW$Link;->emptyProtobufList()Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    move-result-object v1

    iput-object v1, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$Link;->roadFacilities_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    .line 8735
    invoke-static {}, Landroid/car/hardware/xpu/XpuProtoMessageVW$Link;->emptyProtobufList()Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    move-result-object v1

    iput-object v1, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$Link;->slopeInfos_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    .line 8736
    iput v0, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$Link;->assistantAction_:I

    .line 8737
    iput v0, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$Link;->mainAction_:I

    .line 8738
    invoke-static {}, Landroid/car/hardware/xpu/XpuProtoMessageVW$Link;->emptyProtobufList()Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    move-result-object v0

    iput-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$Link;->cameras_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    return-void
.end method

.method static synthetic access$16900()Landroid/car/hardware/xpu/XpuProtoMessageVW$Link;
    .locals 1

    .line 8709
    sget-object v0, Landroid/car/hardware/xpu/XpuProtoMessageVW$Link;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuProtoMessageVW$Link;

    return-object v0
.end method

.method static synthetic access$17000(Landroid/car/hardware/xpu/XpuProtoMessageVW$Link;J)V
    .locals 0

    .line 8709
    invoke-direct {p0, p1, p2}, Landroid/car/hardware/xpu/XpuProtoMessageVW$Link;->setId(J)V

    return-void
.end method

.method static synthetic access$17100(Landroid/car/hardware/xpu/XpuProtoMessageVW$Link;)V
    .locals 0

    .line 8709
    invoke-direct {p0}, Landroid/car/hardware/xpu/XpuProtoMessageVW$Link;->clearId()V

    return-void
.end method

.method static synthetic access$17200(Landroid/car/hardware/xpu/XpuProtoMessageVW$Link;I)V
    .locals 0

    .line 8709
    invoke-direct {p0, p1}, Landroid/car/hardware/xpu/XpuProtoMessageVW$Link;->setLinkType(I)V

    return-void
.end method

.method static synthetic access$17300(Landroid/car/hardware/xpu/XpuProtoMessageVW$Link;)V
    .locals 0

    .line 8709
    invoke-direct {p0}, Landroid/car/hardware/xpu/XpuProtoMessageVW$Link;->clearLinkType()V

    return-void
.end method

.method static synthetic access$17400(Landroid/car/hardware/xpu/XpuProtoMessageVW$Link;I)V
    .locals 0

    .line 8709
    invoke-direct {p0, p1}, Landroid/car/hardware/xpu/XpuProtoMessageVW$Link;->setFormwayType(I)V

    return-void
.end method

.method static synthetic access$17500(Landroid/car/hardware/xpu/XpuProtoMessageVW$Link;)V
    .locals 0

    .line 8709
    invoke-direct {p0}, Landroid/car/hardware/xpu/XpuProtoMessageVW$Link;->clearFormwayType()V

    return-void
.end method

.method static synthetic access$17600(Landroid/car/hardware/xpu/XpuProtoMessageVW$Link;I)V
    .locals 0

    .line 8709
    invoke-direct {p0, p1}, Landroid/car/hardware/xpu/XpuProtoMessageVW$Link;->setRoadClass(I)V

    return-void
.end method

.method static synthetic access$17700(Landroid/car/hardware/xpu/XpuProtoMessageVW$Link;)V
    .locals 0

    .line 8709
    invoke-direct {p0}, Landroid/car/hardware/xpu/XpuProtoMessageVW$Link;->clearRoadClass()V

    return-void
.end method

.method static synthetic access$17800(Landroid/car/hardware/xpu/XpuProtoMessageVW$Link;Z)V
    .locals 0

    .line 8709
    invoke-direct {p0, p1}, Landroid/car/hardware/xpu/XpuProtoMessageVW$Link;->setIsOverHead(Z)V

    return-void
.end method

.method static synthetic access$17900(Landroid/car/hardware/xpu/XpuProtoMessageVW$Link;)V
    .locals 0

    .line 8709
    invoke-direct {p0}, Landroid/car/hardware/xpu/XpuProtoMessageVW$Link;->clearIsOverHead()V

    return-void
.end method

.method static synthetic access$18000(Landroid/car/hardware/xpu/XpuProtoMessageVW$Link;Z)V
    .locals 0

    .line 8709
    invoke-direct {p0, p1}, Landroid/car/hardware/xpu/XpuProtoMessageVW$Link;->setHasParallelRoad(Z)V

    return-void
.end method

.method static synthetic access$18100(Landroid/car/hardware/xpu/XpuProtoMessageVW$Link;)V
    .locals 0

    .line 8709
    invoke-direct {p0}, Landroid/car/hardware/xpu/XpuProtoMessageVW$Link;->clearHasParallelRoad()V

    return-void
.end method

.method static synthetic access$18200(Landroid/car/hardware/xpu/XpuProtoMessageVW$Link;I)V
    .locals 0

    .line 8709
    invoke-direct {p0, p1}, Landroid/car/hardware/xpu/XpuProtoMessageVW$Link;->setLinkDirection(I)V

    return-void
.end method

.method static synthetic access$18300(Landroid/car/hardware/xpu/XpuProtoMessageVW$Link;)V
    .locals 0

    .line 8709
    invoke-direct {p0}, Landroid/car/hardware/xpu/XpuProtoMessageVW$Link;->clearLinkDirection()V

    return-void
.end method

.method static synthetic access$18400(Landroid/car/hardware/xpu/XpuProtoMessageVW$Link;I)V
    .locals 0

    .line 8709
    invoke-direct {p0, p1}, Landroid/car/hardware/xpu/XpuProtoMessageVW$Link;->setRoadDirection(I)V

    return-void
.end method

.method static synthetic access$18500(Landroid/car/hardware/xpu/XpuProtoMessageVW$Link;)V
    .locals 0

    .line 8709
    invoke-direct {p0}, Landroid/car/hardware/xpu/XpuProtoMessageVW$Link;->clearRoadDirection()V

    return-void
.end method

.method static synthetic access$18600(Landroid/car/hardware/xpu/XpuProtoMessageVW$Link;I)V
    .locals 0

    .line 8709
    invoke-direct {p0, p1}, Landroid/car/hardware/xpu/XpuProtoMessageVW$Link;->setLaneNum(I)V

    return-void
.end method

.method static synthetic access$18700(Landroid/car/hardware/xpu/XpuProtoMessageVW$Link;)V
    .locals 0

    .line 8709
    invoke-direct {p0}, Landroid/car/hardware/xpu/XpuProtoMessageVW$Link;->clearLaneNum()V

    return-void
.end method

.method static synthetic access$18800(Landroid/car/hardware/xpu/XpuProtoMessageVW$Link;Landroid/car/hardware/xpu/XpuProtoMessageVW$HeightDiffData;)V
    .locals 0

    .line 8709
    invoke-direct {p0, p1}, Landroid/car/hardware/xpu/XpuProtoMessageVW$Link;->setHeightDiffData(Landroid/car/hardware/xpu/XpuProtoMessageVW$HeightDiffData;)V

    return-void
.end method

.method static synthetic access$18900(Landroid/car/hardware/xpu/XpuProtoMessageVW$Link;Landroid/car/hardware/xpu/XpuProtoMessageVW$HeightDiffData$Builder;)V
    .locals 0

    .line 8709
    invoke-direct {p0, p1}, Landroid/car/hardware/xpu/XpuProtoMessageVW$Link;->setHeightDiffData(Landroid/car/hardware/xpu/XpuProtoMessageVW$HeightDiffData$Builder;)V

    return-void
.end method

.method static synthetic access$19000(Landroid/car/hardware/xpu/XpuProtoMessageVW$Link;Landroid/car/hardware/xpu/XpuProtoMessageVW$HeightDiffData;)V
    .locals 0

    .line 8709
    invoke-direct {p0, p1}, Landroid/car/hardware/xpu/XpuProtoMessageVW$Link;->mergeHeightDiffData(Landroid/car/hardware/xpu/XpuProtoMessageVW$HeightDiffData;)V

    return-void
.end method

.method static synthetic access$19100(Landroid/car/hardware/xpu/XpuProtoMessageVW$Link;)V
    .locals 0

    .line 8709
    invoke-direct {p0}, Landroid/car/hardware/xpu/XpuProtoMessageVW$Link;->clearHeightDiffData()V

    return-void
.end method

.method static synthetic access$19200(Landroid/car/hardware/xpu/XpuProtoMessageVW$Link;ILandroid/car/hardware/xpu/XpuProtoMessageVW$V2_Point;)V
    .locals 0

    .line 8709
    invoke-direct {p0, p1, p2}, Landroid/car/hardware/xpu/XpuProtoMessageVW$Link;->setV2Points(ILandroid/car/hardware/xpu/XpuProtoMessageVW$V2_Point;)V

    return-void
.end method

.method static synthetic access$19300(Landroid/car/hardware/xpu/XpuProtoMessageVW$Link;ILandroid/car/hardware/xpu/XpuProtoMessageVW$V2_Point$Builder;)V
    .locals 0

    .line 8709
    invoke-direct {p0, p1, p2}, Landroid/car/hardware/xpu/XpuProtoMessageVW$Link;->setV2Points(ILandroid/car/hardware/xpu/XpuProtoMessageVW$V2_Point$Builder;)V

    return-void
.end method

.method static synthetic access$19400(Landroid/car/hardware/xpu/XpuProtoMessageVW$Link;Landroid/car/hardware/xpu/XpuProtoMessageVW$V2_Point;)V
    .locals 0

    .line 8709
    invoke-direct {p0, p1}, Landroid/car/hardware/xpu/XpuProtoMessageVW$Link;->addV2Points(Landroid/car/hardware/xpu/XpuProtoMessageVW$V2_Point;)V

    return-void
.end method

.method static synthetic access$19500(Landroid/car/hardware/xpu/XpuProtoMessageVW$Link;ILandroid/car/hardware/xpu/XpuProtoMessageVW$V2_Point;)V
    .locals 0

    .line 8709
    invoke-direct {p0, p1, p2}, Landroid/car/hardware/xpu/XpuProtoMessageVW$Link;->addV2Points(ILandroid/car/hardware/xpu/XpuProtoMessageVW$V2_Point;)V

    return-void
.end method

.method static synthetic access$19600(Landroid/car/hardware/xpu/XpuProtoMessageVW$Link;Landroid/car/hardware/xpu/XpuProtoMessageVW$V2_Point$Builder;)V
    .locals 0

    .line 8709
    invoke-direct {p0, p1}, Landroid/car/hardware/xpu/XpuProtoMessageVW$Link;->addV2Points(Landroid/car/hardware/xpu/XpuProtoMessageVW$V2_Point$Builder;)V

    return-void
.end method

.method static synthetic access$19700(Landroid/car/hardware/xpu/XpuProtoMessageVW$Link;ILandroid/car/hardware/xpu/XpuProtoMessageVW$V2_Point$Builder;)V
    .locals 0

    .line 8709
    invoke-direct {p0, p1, p2}, Landroid/car/hardware/xpu/XpuProtoMessageVW$Link;->addV2Points(ILandroid/car/hardware/xpu/XpuProtoMessageVW$V2_Point$Builder;)V

    return-void
.end method

.method static synthetic access$19800(Landroid/car/hardware/xpu/XpuProtoMessageVW$Link;Ljava/lang/Iterable;)V
    .locals 0

    .line 8709
    invoke-direct {p0, p1}, Landroid/car/hardware/xpu/XpuProtoMessageVW$Link;->addAllV2Points(Ljava/lang/Iterable;)V

    return-void
.end method

.method static synthetic access$19900(Landroid/car/hardware/xpu/XpuProtoMessageVW$Link;)V
    .locals 0

    .line 8709
    invoke-direct {p0}, Landroid/car/hardware/xpu/XpuProtoMessageVW$Link;->clearV2Points()V

    return-void
.end method

.method static synthetic access$20000(Landroid/car/hardware/xpu/XpuProtoMessageVW$Link;I)V
    .locals 0

    .line 8709
    invoke-direct {p0, p1}, Landroid/car/hardware/xpu/XpuProtoMessageVW$Link;->removeV2Points(I)V

    return-void
.end method

.method static synthetic access$20100(Landroid/car/hardware/xpu/XpuProtoMessageVW$Link;D)V
    .locals 0

    .line 8709
    invoke-direct {p0, p1, p2}, Landroid/car/hardware/xpu/XpuProtoMessageVW$Link;->setLength(D)V

    return-void
.end method

.method static synthetic access$20200(Landroid/car/hardware/xpu/XpuProtoMessageVW$Link;)V
    .locals 0

    .line 8709
    invoke-direct {p0}, Landroid/car/hardware/xpu/XpuProtoMessageVW$Link;->clearLength()V

    return-void
.end method

.method static synthetic access$20300(Landroid/car/hardware/xpu/XpuProtoMessageVW$Link;I)V
    .locals 0

    .line 8709
    invoke-direct {p0, p1}, Landroid/car/hardware/xpu/XpuProtoMessageVW$Link;->setOwnership(I)V

    return-void
.end method

.method static synthetic access$20400(Landroid/car/hardware/xpu/XpuProtoMessageVW$Link;)V
    .locals 0

    .line 8709
    invoke-direct {p0}, Landroid/car/hardware/xpu/XpuProtoMessageVW$Link;->clearOwnership()V

    return-void
.end method

.method static synthetic access$20500(Landroid/car/hardware/xpu/XpuProtoMessageVW$Link;Ljava/lang/String;)V
    .locals 0

    .line 8709
    invoke-direct {p0, p1}, Landroid/car/hardware/xpu/XpuProtoMessageVW$Link;->setRoadName(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$20600(Landroid/car/hardware/xpu/XpuProtoMessageVW$Link;)V
    .locals 0

    .line 8709
    invoke-direct {p0}, Landroid/car/hardware/xpu/XpuProtoMessageVW$Link;->clearRoadName()V

    return-void
.end method

.method static synthetic access$20700(Landroid/car/hardware/xpu/XpuProtoMessageVW$Link;Lcom/android/carsdk/protobuf/ByteString;)V
    .locals 0

    .line 8709
    invoke-direct {p0, p1}, Landroid/car/hardware/xpu/XpuProtoMessageVW$Link;->setRoadNameBytes(Lcom/android/carsdk/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$20800(Landroid/car/hardware/xpu/XpuProtoMessageVW$Link;Z)V
    .locals 0

    .line 8709
    invoke-direct {p0, p1}, Landroid/car/hardware/xpu/XpuProtoMessageVW$Link;->setHasMultiOut(Z)V

    return-void
.end method

.method static synthetic access$20900(Landroid/car/hardware/xpu/XpuProtoMessageVW$Link;)V
    .locals 0

    .line 8709
    invoke-direct {p0}, Landroid/car/hardware/xpu/XpuProtoMessageVW$Link;->clearHasMultiOut()V

    return-void
.end method

.method static synthetic access$21000(Landroid/car/hardware/xpu/XpuProtoMessageVW$Link;Z)V
    .locals 0

    .line 8709
    invoke-direct {p0, p1}, Landroid/car/hardware/xpu/XpuProtoMessageVW$Link;->setHasTrafficLight(Z)V

    return-void
.end method

.method static synthetic access$21100(Landroid/car/hardware/xpu/XpuProtoMessageVW$Link;)V
    .locals 0

    .line 8709
    invoke-direct {p0}, Landroid/car/hardware/xpu/XpuProtoMessageVW$Link;->clearHasTrafficLight()V

    return-void
.end method

.method static synthetic access$21200(Landroid/car/hardware/xpu/XpuProtoMessageVW$Link;Z)V
    .locals 0

    .line 8709
    invoke-direct {p0, p1}, Landroid/car/hardware/xpu/XpuProtoMessageVW$Link;->setHasMixFork(Z)V

    return-void
.end method

.method static synthetic access$21300(Landroid/car/hardware/xpu/XpuProtoMessageVW$Link;)V
    .locals 0

    .line 8709
    invoke-direct {p0}, Landroid/car/hardware/xpu/XpuProtoMessageVW$Link;->clearHasMixFork()V

    return-void
.end method

.method static synthetic access$21400(Landroid/car/hardware/xpu/XpuProtoMessageVW$Link;Z)V
    .locals 0

    .line 8709
    invoke-direct {p0, p1}, Landroid/car/hardware/xpu/XpuProtoMessageVW$Link;->setIsAtService(Z)V

    return-void
.end method

.method static synthetic access$21500(Landroid/car/hardware/xpu/XpuProtoMessageVW$Link;)V
    .locals 0

    .line 8709
    invoke-direct {p0}, Landroid/car/hardware/xpu/XpuProtoMessageVW$Link;->clearIsAtService()V

    return-void
.end method

.method static synthetic access$21600(Landroid/car/hardware/xpu/XpuProtoMessageVW$Link;I)V
    .locals 0

    .line 8709
    invoke-direct {p0, p1}, Landroid/car/hardware/xpu/XpuProtoMessageVW$Link;->setSpeed(I)V

    return-void
.end method

.method static synthetic access$21700(Landroid/car/hardware/xpu/XpuProtoMessageVW$Link;)V
    .locals 0

    .line 8709
    invoke-direct {p0}, Landroid/car/hardware/xpu/XpuProtoMessageVW$Link;->clearSpeed()V

    return-void
.end method

.method static synthetic access$21800(Landroid/car/hardware/xpu/XpuProtoMessageVW$Link;I)V
    .locals 0

    .line 8709
    invoke-direct {p0, p1}, Landroid/car/hardware/xpu/XpuProtoMessageVW$Link;->setRoadFacilityCount(I)V

    return-void
.end method

.method static synthetic access$21900(Landroid/car/hardware/xpu/XpuProtoMessageVW$Link;)V
    .locals 0

    .line 8709
    invoke-direct {p0}, Landroid/car/hardware/xpu/XpuProtoMessageVW$Link;->clearRoadFacilityCount()V

    return-void
.end method

.method static synthetic access$22000(Landroid/car/hardware/xpu/XpuProtoMessageVW$Link;ILandroid/car/hardware/xpu/XpuProtoMessageVW$RoadFacility;)V
    .locals 0

    .line 8709
    invoke-direct {p0, p1, p2}, Landroid/car/hardware/xpu/XpuProtoMessageVW$Link;->setRoadFacilities(ILandroid/car/hardware/xpu/XpuProtoMessageVW$RoadFacility;)V

    return-void
.end method

.method static synthetic access$22100(Landroid/car/hardware/xpu/XpuProtoMessageVW$Link;ILandroid/car/hardware/xpu/XpuProtoMessageVW$RoadFacility$Builder;)V
    .locals 0

    .line 8709
    invoke-direct {p0, p1, p2}, Landroid/car/hardware/xpu/XpuProtoMessageVW$Link;->setRoadFacilities(ILandroid/car/hardware/xpu/XpuProtoMessageVW$RoadFacility$Builder;)V

    return-void
.end method

.method static synthetic access$22200(Landroid/car/hardware/xpu/XpuProtoMessageVW$Link;Landroid/car/hardware/xpu/XpuProtoMessageVW$RoadFacility;)V
    .locals 0

    .line 8709
    invoke-direct {p0, p1}, Landroid/car/hardware/xpu/XpuProtoMessageVW$Link;->addRoadFacilities(Landroid/car/hardware/xpu/XpuProtoMessageVW$RoadFacility;)V

    return-void
.end method

.method static synthetic access$22300(Landroid/car/hardware/xpu/XpuProtoMessageVW$Link;ILandroid/car/hardware/xpu/XpuProtoMessageVW$RoadFacility;)V
    .locals 0

    .line 8709
    invoke-direct {p0, p1, p2}, Landroid/car/hardware/xpu/XpuProtoMessageVW$Link;->addRoadFacilities(ILandroid/car/hardware/xpu/XpuProtoMessageVW$RoadFacility;)V

    return-void
.end method

.method static synthetic access$22400(Landroid/car/hardware/xpu/XpuProtoMessageVW$Link;Landroid/car/hardware/xpu/XpuProtoMessageVW$RoadFacility$Builder;)V
    .locals 0

    .line 8709
    invoke-direct {p0, p1}, Landroid/car/hardware/xpu/XpuProtoMessageVW$Link;->addRoadFacilities(Landroid/car/hardware/xpu/XpuProtoMessageVW$RoadFacility$Builder;)V

    return-void
.end method

.method static synthetic access$22500(Landroid/car/hardware/xpu/XpuProtoMessageVW$Link;ILandroid/car/hardware/xpu/XpuProtoMessageVW$RoadFacility$Builder;)V
    .locals 0

    .line 8709
    invoke-direct {p0, p1, p2}, Landroid/car/hardware/xpu/XpuProtoMessageVW$Link;->addRoadFacilities(ILandroid/car/hardware/xpu/XpuProtoMessageVW$RoadFacility$Builder;)V

    return-void
.end method

.method static synthetic access$22600(Landroid/car/hardware/xpu/XpuProtoMessageVW$Link;Ljava/lang/Iterable;)V
    .locals 0

    .line 8709
    invoke-direct {p0, p1}, Landroid/car/hardware/xpu/XpuProtoMessageVW$Link;->addAllRoadFacilities(Ljava/lang/Iterable;)V

    return-void
.end method

.method static synthetic access$22700(Landroid/car/hardware/xpu/XpuProtoMessageVW$Link;)V
    .locals 0

    .line 8709
    invoke-direct {p0}, Landroid/car/hardware/xpu/XpuProtoMessageVW$Link;->clearRoadFacilities()V

    return-void
.end method

.method static synthetic access$22800(Landroid/car/hardware/xpu/XpuProtoMessageVW$Link;I)V
    .locals 0

    .line 8709
    invoke-direct {p0, p1}, Landroid/car/hardware/xpu/XpuProtoMessageVW$Link;->removeRoadFacilities(I)V

    return-void
.end method

.method static synthetic access$22900(Landroid/car/hardware/xpu/XpuProtoMessageVW$Link;Landroid/car/hardware/xpu/XpuProtoMessageVW$RoadSlopeInfo;)V
    .locals 0

    .line 8709
    invoke-direct {p0, p1}, Landroid/car/hardware/xpu/XpuProtoMessageVW$Link;->setRoadSlopInfo(Landroid/car/hardware/xpu/XpuProtoMessageVW$RoadSlopeInfo;)V

    return-void
.end method

.method static synthetic access$23000(Landroid/car/hardware/xpu/XpuProtoMessageVW$Link;Landroid/car/hardware/xpu/XpuProtoMessageVW$RoadSlopeInfo$Builder;)V
    .locals 0

    .line 8709
    invoke-direct {p0, p1}, Landroid/car/hardware/xpu/XpuProtoMessageVW$Link;->setRoadSlopInfo(Landroid/car/hardware/xpu/XpuProtoMessageVW$RoadSlopeInfo$Builder;)V

    return-void
.end method

.method static synthetic access$23100(Landroid/car/hardware/xpu/XpuProtoMessageVW$Link;Landroid/car/hardware/xpu/XpuProtoMessageVW$RoadSlopeInfo;)V
    .locals 0

    .line 8709
    invoke-direct {p0, p1}, Landroid/car/hardware/xpu/XpuProtoMessageVW$Link;->mergeRoadSlopInfo(Landroid/car/hardware/xpu/XpuProtoMessageVW$RoadSlopeInfo;)V

    return-void
.end method

.method static synthetic access$23200(Landroid/car/hardware/xpu/XpuProtoMessageVW$Link;)V
    .locals 0

    .line 8709
    invoke-direct {p0}, Landroid/car/hardware/xpu/XpuProtoMessageVW$Link;->clearRoadSlopInfo()V

    return-void
.end method

.method static synthetic access$23300(Landroid/car/hardware/xpu/XpuProtoMessageVW$Link;ILandroid/car/hardware/xpu/XpuProtoMessageVW$SlopeInfo;)V
    .locals 0

    .line 8709
    invoke-direct {p0, p1, p2}, Landroid/car/hardware/xpu/XpuProtoMessageVW$Link;->setSlopeInfos(ILandroid/car/hardware/xpu/XpuProtoMessageVW$SlopeInfo;)V

    return-void
.end method

.method static synthetic access$23400(Landroid/car/hardware/xpu/XpuProtoMessageVW$Link;ILandroid/car/hardware/xpu/XpuProtoMessageVW$SlopeInfo$Builder;)V
    .locals 0

    .line 8709
    invoke-direct {p0, p1, p2}, Landroid/car/hardware/xpu/XpuProtoMessageVW$Link;->setSlopeInfos(ILandroid/car/hardware/xpu/XpuProtoMessageVW$SlopeInfo$Builder;)V

    return-void
.end method

.method static synthetic access$23500(Landroid/car/hardware/xpu/XpuProtoMessageVW$Link;Landroid/car/hardware/xpu/XpuProtoMessageVW$SlopeInfo;)V
    .locals 0

    .line 8709
    invoke-direct {p0, p1}, Landroid/car/hardware/xpu/XpuProtoMessageVW$Link;->addSlopeInfos(Landroid/car/hardware/xpu/XpuProtoMessageVW$SlopeInfo;)V

    return-void
.end method

.method static synthetic access$23600(Landroid/car/hardware/xpu/XpuProtoMessageVW$Link;ILandroid/car/hardware/xpu/XpuProtoMessageVW$SlopeInfo;)V
    .locals 0

    .line 8709
    invoke-direct {p0, p1, p2}, Landroid/car/hardware/xpu/XpuProtoMessageVW$Link;->addSlopeInfos(ILandroid/car/hardware/xpu/XpuProtoMessageVW$SlopeInfo;)V

    return-void
.end method

.method static synthetic access$23700(Landroid/car/hardware/xpu/XpuProtoMessageVW$Link;Landroid/car/hardware/xpu/XpuProtoMessageVW$SlopeInfo$Builder;)V
    .locals 0

    .line 8709
    invoke-direct {p0, p1}, Landroid/car/hardware/xpu/XpuProtoMessageVW$Link;->addSlopeInfos(Landroid/car/hardware/xpu/XpuProtoMessageVW$SlopeInfo$Builder;)V

    return-void
.end method

.method static synthetic access$23800(Landroid/car/hardware/xpu/XpuProtoMessageVW$Link;ILandroid/car/hardware/xpu/XpuProtoMessageVW$SlopeInfo$Builder;)V
    .locals 0

    .line 8709
    invoke-direct {p0, p1, p2}, Landroid/car/hardware/xpu/XpuProtoMessageVW$Link;->addSlopeInfos(ILandroid/car/hardware/xpu/XpuProtoMessageVW$SlopeInfo$Builder;)V

    return-void
.end method

.method static synthetic access$23900(Landroid/car/hardware/xpu/XpuProtoMessageVW$Link;Ljava/lang/Iterable;)V
    .locals 0

    .line 8709
    invoke-direct {p0, p1}, Landroid/car/hardware/xpu/XpuProtoMessageVW$Link;->addAllSlopeInfos(Ljava/lang/Iterable;)V

    return-void
.end method

.method static synthetic access$24000(Landroid/car/hardware/xpu/XpuProtoMessageVW$Link;)V
    .locals 0

    .line 8709
    invoke-direct {p0}, Landroid/car/hardware/xpu/XpuProtoMessageVW$Link;->clearSlopeInfos()V

    return-void
.end method

.method static synthetic access$24100(Landroid/car/hardware/xpu/XpuProtoMessageVW$Link;I)V
    .locals 0

    .line 8709
    invoke-direct {p0, p1}, Landroid/car/hardware/xpu/XpuProtoMessageVW$Link;->removeSlopeInfos(I)V

    return-void
.end method

.method static synthetic access$24200(Landroid/car/hardware/xpu/XpuProtoMessageVW$Link;I)V
    .locals 0

    .line 8709
    invoke-direct {p0, p1}, Landroid/car/hardware/xpu/XpuProtoMessageVW$Link;->setAssistantAction(I)V

    return-void
.end method

.method static synthetic access$24300(Landroid/car/hardware/xpu/XpuProtoMessageVW$Link;)V
    .locals 0

    .line 8709
    invoke-direct {p0}, Landroid/car/hardware/xpu/XpuProtoMessageVW$Link;->clearAssistantAction()V

    return-void
.end method

.method static synthetic access$24400(Landroid/car/hardware/xpu/XpuProtoMessageVW$Link;I)V
    .locals 0

    .line 8709
    invoke-direct {p0, p1}, Landroid/car/hardware/xpu/XpuProtoMessageVW$Link;->setMainAction(I)V

    return-void
.end method

.method static synthetic access$24500(Landroid/car/hardware/xpu/XpuProtoMessageVW$Link;)V
    .locals 0

    .line 8709
    invoke-direct {p0}, Landroid/car/hardware/xpu/XpuProtoMessageVW$Link;->clearMainAction()V

    return-void
.end method

.method static synthetic access$24600(Landroid/car/hardware/xpu/XpuProtoMessageVW$Link;ILandroid/car/hardware/xpu/XpuProtoMessageVW$Camera;)V
    .locals 0

    .line 8709
    invoke-direct {p0, p1, p2}, Landroid/car/hardware/xpu/XpuProtoMessageVW$Link;->setCameras(ILandroid/car/hardware/xpu/XpuProtoMessageVW$Camera;)V

    return-void
.end method

.method static synthetic access$24700(Landroid/car/hardware/xpu/XpuProtoMessageVW$Link;ILandroid/car/hardware/xpu/XpuProtoMessageVW$Camera$Builder;)V
    .locals 0

    .line 8709
    invoke-direct {p0, p1, p2}, Landroid/car/hardware/xpu/XpuProtoMessageVW$Link;->setCameras(ILandroid/car/hardware/xpu/XpuProtoMessageVW$Camera$Builder;)V

    return-void
.end method

.method static synthetic access$24800(Landroid/car/hardware/xpu/XpuProtoMessageVW$Link;Landroid/car/hardware/xpu/XpuProtoMessageVW$Camera;)V
    .locals 0

    .line 8709
    invoke-direct {p0, p1}, Landroid/car/hardware/xpu/XpuProtoMessageVW$Link;->addCameras(Landroid/car/hardware/xpu/XpuProtoMessageVW$Camera;)V

    return-void
.end method

.method static synthetic access$24900(Landroid/car/hardware/xpu/XpuProtoMessageVW$Link;ILandroid/car/hardware/xpu/XpuProtoMessageVW$Camera;)V
    .locals 0

    .line 8709
    invoke-direct {p0, p1, p2}, Landroid/car/hardware/xpu/XpuProtoMessageVW$Link;->addCameras(ILandroid/car/hardware/xpu/XpuProtoMessageVW$Camera;)V

    return-void
.end method

.method static synthetic access$25000(Landroid/car/hardware/xpu/XpuProtoMessageVW$Link;Landroid/car/hardware/xpu/XpuProtoMessageVW$Camera$Builder;)V
    .locals 0

    .line 8709
    invoke-direct {p0, p1}, Landroid/car/hardware/xpu/XpuProtoMessageVW$Link;->addCameras(Landroid/car/hardware/xpu/XpuProtoMessageVW$Camera$Builder;)V

    return-void
.end method

.method static synthetic access$25100(Landroid/car/hardware/xpu/XpuProtoMessageVW$Link;ILandroid/car/hardware/xpu/XpuProtoMessageVW$Camera$Builder;)V
    .locals 0

    .line 8709
    invoke-direct {p0, p1, p2}, Landroid/car/hardware/xpu/XpuProtoMessageVW$Link;->addCameras(ILandroid/car/hardware/xpu/XpuProtoMessageVW$Camera$Builder;)V

    return-void
.end method

.method static synthetic access$25200(Landroid/car/hardware/xpu/XpuProtoMessageVW$Link;Ljava/lang/Iterable;)V
    .locals 0

    .line 8709
    invoke-direct {p0, p1}, Landroid/car/hardware/xpu/XpuProtoMessageVW$Link;->addAllCameras(Ljava/lang/Iterable;)V

    return-void
.end method

.method static synthetic access$25300(Landroid/car/hardware/xpu/XpuProtoMessageVW$Link;)V
    .locals 0

    .line 8709
    invoke-direct {p0}, Landroid/car/hardware/xpu/XpuProtoMessageVW$Link;->clearCameras()V

    return-void
.end method

.method static synthetic access$25400(Landroid/car/hardware/xpu/XpuProtoMessageVW$Link;I)V
    .locals 0

    .line 8709
    invoke-direct {p0, p1}, Landroid/car/hardware/xpu/XpuProtoMessageVW$Link;->removeCameras(I)V

    return-void
.end method

.method private addAllCameras(Ljava/lang/Iterable;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Landroid/car/hardware/xpu/XpuProtoMessageVW$Camera;",
            ">;)V"
        }
    .end annotation

    .line 9885
    invoke-direct {p0}, Landroid/car/hardware/xpu/XpuProtoMessageVW$Link;->ensureCamerasIsMutable()V

    .line 9886
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$Link;->cameras_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    invoke-static {p1, v0}, Lcom/android/carsdk/protobuf/AbstractMessageLite;->addAll(Ljava/lang/Iterable;Ljava/util/Collection;)V

    return-void
.end method

.method private addAllRoadFacilities(Ljava/lang/Iterable;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Landroid/car/hardware/xpu/XpuProtoMessageVW$RoadFacility;",
            ">;)V"
        }
    .end annotation

    .line 9487
    invoke-direct {p0}, Landroid/car/hardware/xpu/XpuProtoMessageVW$Link;->ensureRoadFacilitiesIsMutable()V

    .line 9488
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$Link;->roadFacilities_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    invoke-static {p1, v0}, Lcom/android/carsdk/protobuf/AbstractMessageLite;->addAll(Ljava/lang/Iterable;Ljava/util/Collection;)V

    return-void
.end method

.method private addAllSlopeInfos(Ljava/lang/Iterable;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Landroid/car/hardware/xpu/XpuProtoMessageVW$SlopeInfo;",
            ">;)V"
        }
    .end annotation

    .line 9659
    invoke-direct {p0}, Landroid/car/hardware/xpu/XpuProtoMessageVW$Link;->ensureSlopeInfosIsMutable()V

    .line 9660
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$Link;->slopeInfos_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    invoke-static {p1, v0}, Lcom/android/carsdk/protobuf/AbstractMessageLite;->addAll(Ljava/lang/Iterable;Ljava/util/Collection;)V

    return-void
.end method

.method private addAllV2Points(Ljava/lang/Iterable;)V
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

    .line 9102
    invoke-direct {p0}, Landroid/car/hardware/xpu/XpuProtoMessageVW$Link;->ensureV2PointsIsMutable()V

    .line 9103
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$Link;->v2Points_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    invoke-static {p1, v0}, Lcom/android/carsdk/protobuf/AbstractMessageLite;->addAll(Ljava/lang/Iterable;Ljava/util/Collection;)V

    return-void
.end method

.method private addCameras(ILandroid/car/hardware/xpu/XpuProtoMessageVW$Camera$Builder;)V
    .locals 1

    .line 9873
    invoke-direct {p0}, Landroid/car/hardware/xpu/XpuProtoMessageVW$Link;->ensureCamerasIsMutable()V

    .line 9874
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$Link;->cameras_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    invoke-virtual {p2}, Landroid/car/hardware/xpu/XpuProtoMessageVW$Camera$Builder;->build()Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object p2

    check-cast p2, Landroid/car/hardware/xpu/XpuProtoMessageVW$Camera;

    invoke-interface {v0, p1, p2}, Lcom/android/carsdk/protobuf/Internal$ProtobufList;->add(ILjava/lang/Object;)V

    return-void
.end method

.method private addCameras(ILandroid/car/hardware/xpu/XpuProtoMessageVW$Camera;)V
    .locals 1

    .line 9847
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 9849
    invoke-direct {p0}, Landroid/car/hardware/xpu/XpuProtoMessageVW$Link;->ensureCamerasIsMutable()V

    .line 9850
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$Link;->cameras_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1, p2}, Lcom/android/carsdk/protobuf/Internal$ProtobufList;->add(ILjava/lang/Object;)V

    return-void
.end method

.method private addCameras(Landroid/car/hardware/xpu/XpuProtoMessageVW$Camera$Builder;)V
    .locals 1

    .line 9861
    invoke-direct {p0}, Landroid/car/hardware/xpu/XpuProtoMessageVW$Link;->ensureCamerasIsMutable()V

    .line 9862
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$Link;->cameras_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    invoke-virtual {p1}, Landroid/car/hardware/xpu/XpuProtoMessageVW$Camera$Builder;->build()Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Landroid/car/hardware/xpu/XpuProtoMessageVW$Camera;

    invoke-interface {v0, p1}, Lcom/android/carsdk/protobuf/Internal$ProtobufList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private addCameras(Landroid/car/hardware/xpu/XpuProtoMessageVW$Camera;)V
    .locals 1

    .line 9832
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 9834
    invoke-direct {p0}, Landroid/car/hardware/xpu/XpuProtoMessageVW$Link;->ensureCamerasIsMutable()V

    .line 9835
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$Link;->cameras_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1}, Lcom/android/carsdk/protobuf/Internal$ProtobufList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private addRoadFacilities(ILandroid/car/hardware/xpu/XpuProtoMessageVW$RoadFacility$Builder;)V
    .locals 1

    .line 9479
    invoke-direct {p0}, Landroid/car/hardware/xpu/XpuProtoMessageVW$Link;->ensureRoadFacilitiesIsMutable()V

    .line 9480
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$Link;->roadFacilities_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    invoke-virtual {p2}, Landroid/car/hardware/xpu/XpuProtoMessageVW$RoadFacility$Builder;->build()Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object p2

    check-cast p2, Landroid/car/hardware/xpu/XpuProtoMessageVW$RoadFacility;

    invoke-interface {v0, p1, p2}, Lcom/android/carsdk/protobuf/Internal$ProtobufList;->add(ILjava/lang/Object;)V

    return-void
.end method

.method private addRoadFacilities(ILandroid/car/hardware/xpu/XpuProtoMessageVW$RoadFacility;)V
    .locals 1

    .line 9461
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 9463
    invoke-direct {p0}, Landroid/car/hardware/xpu/XpuProtoMessageVW$Link;->ensureRoadFacilitiesIsMutable()V

    .line 9464
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$Link;->roadFacilities_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1, p2}, Lcom/android/carsdk/protobuf/Internal$ProtobufList;->add(ILjava/lang/Object;)V

    return-void
.end method

.method private addRoadFacilities(Landroid/car/hardware/xpu/XpuProtoMessageVW$RoadFacility$Builder;)V
    .locals 1

    .line 9471
    invoke-direct {p0}, Landroid/car/hardware/xpu/XpuProtoMessageVW$Link;->ensureRoadFacilitiesIsMutable()V

    .line 9472
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$Link;->roadFacilities_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    invoke-virtual {p1}, Landroid/car/hardware/xpu/XpuProtoMessageVW$RoadFacility$Builder;->build()Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Landroid/car/hardware/xpu/XpuProtoMessageVW$RoadFacility;

    invoke-interface {v0, p1}, Lcom/android/carsdk/protobuf/Internal$ProtobufList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private addRoadFacilities(Landroid/car/hardware/xpu/XpuProtoMessageVW$RoadFacility;)V
    .locals 1

    .line 9450
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 9452
    invoke-direct {p0}, Landroid/car/hardware/xpu/XpuProtoMessageVW$Link;->ensureRoadFacilitiesIsMutable()V

    .line 9453
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$Link;->roadFacilities_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1}, Lcom/android/carsdk/protobuf/Internal$ProtobufList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private addSlopeInfos(ILandroid/car/hardware/xpu/XpuProtoMessageVW$SlopeInfo$Builder;)V
    .locals 1

    .line 9651
    invoke-direct {p0}, Landroid/car/hardware/xpu/XpuProtoMessageVW$Link;->ensureSlopeInfosIsMutable()V

    .line 9652
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$Link;->slopeInfos_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    invoke-virtual {p2}, Landroid/car/hardware/xpu/XpuProtoMessageVW$SlopeInfo$Builder;->build()Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object p2

    check-cast p2, Landroid/car/hardware/xpu/XpuProtoMessageVW$SlopeInfo;

    invoke-interface {v0, p1, p2}, Lcom/android/carsdk/protobuf/Internal$ProtobufList;->add(ILjava/lang/Object;)V

    return-void
.end method

.method private addSlopeInfos(ILandroid/car/hardware/xpu/XpuProtoMessageVW$SlopeInfo;)V
    .locals 1

    .line 9633
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 9635
    invoke-direct {p0}, Landroid/car/hardware/xpu/XpuProtoMessageVW$Link;->ensureSlopeInfosIsMutable()V

    .line 9636
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$Link;->slopeInfos_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1, p2}, Lcom/android/carsdk/protobuf/Internal$ProtobufList;->add(ILjava/lang/Object;)V

    return-void
.end method

.method private addSlopeInfos(Landroid/car/hardware/xpu/XpuProtoMessageVW$SlopeInfo$Builder;)V
    .locals 1

    .line 9643
    invoke-direct {p0}, Landroid/car/hardware/xpu/XpuProtoMessageVW$Link;->ensureSlopeInfosIsMutable()V

    .line 9644
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$Link;->slopeInfos_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    invoke-virtual {p1}, Landroid/car/hardware/xpu/XpuProtoMessageVW$SlopeInfo$Builder;->build()Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Landroid/car/hardware/xpu/XpuProtoMessageVW$SlopeInfo;

    invoke-interface {v0, p1}, Lcom/android/carsdk/protobuf/Internal$ProtobufList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private addSlopeInfos(Landroid/car/hardware/xpu/XpuProtoMessageVW$SlopeInfo;)V
    .locals 1

    .line 9622
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 9624
    invoke-direct {p0}, Landroid/car/hardware/xpu/XpuProtoMessageVW$Link;->ensureSlopeInfosIsMutable()V

    .line 9625
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$Link;->slopeInfos_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1}, Lcom/android/carsdk/protobuf/Internal$ProtobufList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private addV2Points(ILandroid/car/hardware/xpu/XpuProtoMessageVW$V2_Point$Builder;)V
    .locals 1

    .line 9094
    invoke-direct {p0}, Landroid/car/hardware/xpu/XpuProtoMessageVW$Link;->ensureV2PointsIsMutable()V

    .line 9095
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$Link;->v2Points_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    invoke-virtual {p2}, Landroid/car/hardware/xpu/XpuProtoMessageVW$V2_Point$Builder;->build()Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object p2

    check-cast p2, Landroid/car/hardware/xpu/XpuProtoMessageVW$V2_Point;

    invoke-interface {v0, p1, p2}, Lcom/android/carsdk/protobuf/Internal$ProtobufList;->add(ILjava/lang/Object;)V

    return-void
.end method

.method private addV2Points(ILandroid/car/hardware/xpu/XpuProtoMessageVW$V2_Point;)V
    .locals 1

    .line 9076
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 9078
    invoke-direct {p0}, Landroid/car/hardware/xpu/XpuProtoMessageVW$Link;->ensureV2PointsIsMutable()V

    .line 9079
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$Link;->v2Points_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1, p2}, Lcom/android/carsdk/protobuf/Internal$ProtobufList;->add(ILjava/lang/Object;)V

    return-void
.end method

.method private addV2Points(Landroid/car/hardware/xpu/XpuProtoMessageVW$V2_Point$Builder;)V
    .locals 1

    .line 9086
    invoke-direct {p0}, Landroid/car/hardware/xpu/XpuProtoMessageVW$Link;->ensureV2PointsIsMutable()V

    .line 9087
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$Link;->v2Points_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    invoke-virtual {p1}, Landroid/car/hardware/xpu/XpuProtoMessageVW$V2_Point$Builder;->build()Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Landroid/car/hardware/xpu/XpuProtoMessageVW$V2_Point;

    invoke-interface {v0, p1}, Lcom/android/carsdk/protobuf/Internal$ProtobufList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private addV2Points(Landroid/car/hardware/xpu/XpuProtoMessageVW$V2_Point;)V
    .locals 1

    .line 9065
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 9067
    invoke-direct {p0}, Landroid/car/hardware/xpu/XpuProtoMessageVW$Link;->ensureV2PointsIsMutable()V

    .line 9068
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$Link;->v2Points_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1}, Lcom/android/carsdk/protobuf/Internal$ProtobufList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private clearAssistantAction()V
    .locals 1

    const/4 v0, 0x0

    .line 9697
    iput v0, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$Link;->assistantAction_:I

    return-void
.end method

.method private clearCameras()V
    .locals 1

    .line 9897
    invoke-static {}, Landroid/car/hardware/xpu/XpuProtoMessageVW$Link;->emptyProtobufList()Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    move-result-object v0

    iput-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$Link;->cameras_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    return-void
.end method

.method private clearFormwayType()V
    .locals 1

    const/4 v0, 0x0

    .line 8807
    iput v0, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$Link;->formwayType_:I

    return-void
.end method

.method private clearHasMixFork()V
    .locals 1

    const/4 v0, 0x0

    .line 9313
    iput-boolean v0, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$Link;->hasMixFork_:Z

    return-void
.end method

.method private clearHasMultiOut()V
    .locals 1

    const/4 v0, 0x0

    .line 9267
    iput-boolean v0, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$Link;->hasMultiOut_:Z

    return-void
.end method

.method private clearHasParallelRoad()V
    .locals 1

    const/4 v0, 0x0

    .line 8876
    iput-boolean v0, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$Link;->hasParallelRoad_:Z

    return-void
.end method

.method private clearHasTrafficLight()V
    .locals 1

    const/4 v0, 0x0

    .line 9290
    iput-boolean v0, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$Link;->hasTrafficLight_:Z

    return-void
.end method

.method private clearHeightDiffData()V
    .locals 1

    const/4 v0, 0x0

    .line 8996
    iput-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$Link;->heightDiffData_:Landroid/car/hardware/xpu/XpuProtoMessageVW$HeightDiffData;

    return-void
.end method

.method private clearId()V
    .locals 2

    const-wide/16 v0, 0x0

    .line 8761
    iput-wide v0, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$Link;->id_:J

    return-void
.end method

.method private clearIsAtService()V
    .locals 1

    const/4 v0, 0x0

    .line 9336
    iput-boolean v0, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$Link;->isAtService_:Z

    return-void
.end method

.method private clearIsOverHead()V
    .locals 1

    const/4 v0, 0x0

    .line 8853
    iput-boolean v0, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$Link;->isOverHead_:Z

    return-void
.end method

.method private clearLaneNum()V
    .locals 1

    const/4 v0, 0x0

    .line 8945
    iput v0, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$Link;->laneNum_:I

    return-void
.end method

.method private clearLength()V
    .locals 2

    const-wide/16 v0, 0x0

    .line 9140
    iput-wide v0, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$Link;->length_:D

    return-void
.end method

.method private clearLinkDirection()V
    .locals 1

    const/4 v0, 0x0

    .line 8899
    iput v0, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$Link;->linkDirection_:I

    return-void
.end method

.method private clearLinkType()V
    .locals 1

    const/4 v0, 0x0

    .line 8784
    iput v0, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$Link;->linkType_:I

    return-void
.end method

.method private clearMainAction()V
    .locals 1

    const/4 v0, 0x0

    .line 9732
    iput v0, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$Link;->mainAction_:I

    return-void
.end method

.method private clearOwnership()V
    .locals 1

    const/4 v0, 0x0

    .line 9178
    iput v0, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$Link;->ownership_:I

    return-void
.end method

.method private clearRoadClass()V
    .locals 1

    const/4 v0, 0x0

    .line 8830
    iput v0, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$Link;->roadClass_:I

    return-void
.end method

.method private clearRoadDirection()V
    .locals 1

    const/4 v0, 0x0

    .line 8922
    iput v0, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$Link;->roadDirection_:I

    return-void
.end method

.method private clearRoadFacilities()V
    .locals 1

    .line 9495
    invoke-static {}, Landroid/car/hardware/xpu/XpuProtoMessageVW$Link;->emptyProtobufList()Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    move-result-object v0

    iput-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$Link;->roadFacilities_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    return-void
.end method

.method private clearRoadFacilityCount()V
    .locals 1

    const/4 v0, 0x0

    .line 9382
    iput v0, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$Link;->roadFacilityCount_:I

    return-void
.end method

.method private clearRoadName()V
    .locals 1

    .line 9228
    invoke-static {}, Landroid/car/hardware/xpu/XpuProtoMessageVW$Link;->getDefaultInstance()Landroid/car/hardware/xpu/XpuProtoMessageVW$Link;

    move-result-object v0

    invoke-virtual {v0}, Landroid/car/hardware/xpu/XpuProtoMessageVW$Link;->getRoadName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$Link;->roadName_:Ljava/lang/String;

    return-void
.end method

.method private clearRoadSlopInfo()V
    .locals 1

    const/4 v0, 0x0

    .line 9553
    iput-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$Link;->roadSlopInfo_:Landroid/car/hardware/xpu/XpuProtoMessageVW$RoadSlopeInfo;

    return-void
.end method

.method private clearSlopeInfos()V
    .locals 1

    .line 9667
    invoke-static {}, Landroid/car/hardware/xpu/XpuProtoMessageVW$Link;->emptyProtobufList()Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    move-result-object v0

    iput-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$Link;->slopeInfos_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    return-void
.end method

.method private clearSpeed()V
    .locals 1

    const/4 v0, 0x0

    .line 9359
    iput v0, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$Link;->speed_:I

    return-void
.end method

.method private clearV2Points()V
    .locals 1

    .line 9110
    invoke-static {}, Landroid/car/hardware/xpu/XpuProtoMessageVW$Link;->emptyProtobufList()Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    move-result-object v0

    iput-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$Link;->v2Points_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    return-void
.end method

.method private ensureCamerasIsMutable()V
    .locals 1

    .line 9790
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$Link;->cameras_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    invoke-interface {v0}, Lcom/android/carsdk/protobuf/Internal$ProtobufList;->isModifiable()Z

    move-result v0

    if-nez v0, :cond_0

    .line 9791
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$Link;->cameras_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    .line 9792
    invoke-static {v0}, Lcom/android/carsdk/protobuf/GeneratedMessageLite;->mutableCopy(Lcom/android/carsdk/protobuf/Internal$ProtobufList;)Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    move-result-object v0

    iput-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$Link;->cameras_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    :cond_0
    return-void
.end method

.method private ensureRoadFacilitiesIsMutable()V
    .locals 1

    .line 9420
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$Link;->roadFacilities_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    invoke-interface {v0}, Lcom/android/carsdk/protobuf/Internal$ProtobufList;->isModifiable()Z

    move-result v0

    if-nez v0, :cond_0

    .line 9421
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$Link;->roadFacilities_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    .line 9422
    invoke-static {v0}, Lcom/android/carsdk/protobuf/GeneratedMessageLite;->mutableCopy(Lcom/android/carsdk/protobuf/Internal$ProtobufList;)Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    move-result-object v0

    iput-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$Link;->roadFacilities_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    :cond_0
    return-void
.end method

.method private ensureSlopeInfosIsMutable()V
    .locals 1

    .line 9592
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$Link;->slopeInfos_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    invoke-interface {v0}, Lcom/android/carsdk/protobuf/Internal$ProtobufList;->isModifiable()Z

    move-result v0

    if-nez v0, :cond_0

    .line 9593
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$Link;->slopeInfos_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    .line 9594
    invoke-static {v0}, Lcom/android/carsdk/protobuf/GeneratedMessageLite;->mutableCopy(Lcom/android/carsdk/protobuf/Internal$ProtobufList;)Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    move-result-object v0

    iput-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$Link;->slopeInfos_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    :cond_0
    return-void
.end method

.method private ensureV2PointsIsMutable()V
    .locals 1

    .line 9035
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$Link;->v2Points_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    invoke-interface {v0}, Lcom/android/carsdk/protobuf/Internal$ProtobufList;->isModifiable()Z

    move-result v0

    if-nez v0, :cond_0

    .line 9036
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$Link;->v2Points_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    .line 9037
    invoke-static {v0}, Lcom/android/carsdk/protobuf/GeneratedMessageLite;->mutableCopy(Lcom/android/carsdk/protobuf/Internal$ProtobufList;)Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    move-result-object v0

    iput-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$Link;->v2Points_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    :cond_0
    return-void
.end method

.method public static getDefaultInstance()Landroid/car/hardware/xpu/XpuProtoMessageVW$Link;
    .locals 1

    .line 11533
    sget-object v0, Landroid/car/hardware/xpu/XpuProtoMessageVW$Link;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuProtoMessageVW$Link;

    return-object v0
.end method

.method private mergeHeightDiffData(Landroid/car/hardware/xpu/XpuProtoMessageVW$HeightDiffData;)V
    .locals 2

    .line 8984
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$Link;->heightDiffData_:Landroid/car/hardware/xpu/XpuProtoMessageVW$HeightDiffData;

    if-eqz v0, :cond_0

    .line 8985
    invoke-static {}, Landroid/car/hardware/xpu/XpuProtoMessageVW$HeightDiffData;->getDefaultInstance()Landroid/car/hardware/xpu/XpuProtoMessageVW$HeightDiffData;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 8986
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$Link;->heightDiffData_:Landroid/car/hardware/xpu/XpuProtoMessageVW$HeightDiffData;

    .line 8987
    invoke-static {v0}, Landroid/car/hardware/xpu/XpuProtoMessageVW$HeightDiffData;->newBuilder(Landroid/car/hardware/xpu/XpuProtoMessageVW$HeightDiffData;)Landroid/car/hardware/xpu/XpuProtoMessageVW$HeightDiffData$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/car/hardware/xpu/XpuProtoMessageVW$HeightDiffData$Builder;->mergeFrom(Lcom/android/carsdk/protobuf/GeneratedMessageLite;)Lcom/android/carsdk/protobuf/GeneratedMessageLite$Builder;

    move-result-object p1

    check-cast p1, Landroid/car/hardware/xpu/XpuProtoMessageVW$HeightDiffData$Builder;

    invoke-virtual {p1}, Landroid/car/hardware/xpu/XpuProtoMessageVW$HeightDiffData$Builder;->buildPartial()Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Landroid/car/hardware/xpu/XpuProtoMessageVW$HeightDiffData;

    iput-object p1, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$Link;->heightDiffData_:Landroid/car/hardware/xpu/XpuProtoMessageVW$HeightDiffData;

    goto :goto_0

    .line 8989
    :cond_0
    iput-object p1, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$Link;->heightDiffData_:Landroid/car/hardware/xpu/XpuProtoMessageVW$HeightDiffData;

    :goto_0
    return-void
.end method

.method private mergeRoadSlopInfo(Landroid/car/hardware/xpu/XpuProtoMessageVW$RoadSlopeInfo;)V
    .locals 2

    .line 9541
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$Link;->roadSlopInfo_:Landroid/car/hardware/xpu/XpuProtoMessageVW$RoadSlopeInfo;

    if-eqz v0, :cond_0

    .line 9542
    invoke-static {}, Landroid/car/hardware/xpu/XpuProtoMessageVW$RoadSlopeInfo;->getDefaultInstance()Landroid/car/hardware/xpu/XpuProtoMessageVW$RoadSlopeInfo;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 9543
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$Link;->roadSlopInfo_:Landroid/car/hardware/xpu/XpuProtoMessageVW$RoadSlopeInfo;

    .line 9544
    invoke-static {v0}, Landroid/car/hardware/xpu/XpuProtoMessageVW$RoadSlopeInfo;->newBuilder(Landroid/car/hardware/xpu/XpuProtoMessageVW$RoadSlopeInfo;)Landroid/car/hardware/xpu/XpuProtoMessageVW$RoadSlopeInfo$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/car/hardware/xpu/XpuProtoMessageVW$RoadSlopeInfo$Builder;->mergeFrom(Lcom/android/carsdk/protobuf/GeneratedMessageLite;)Lcom/android/carsdk/protobuf/GeneratedMessageLite$Builder;

    move-result-object p1

    check-cast p1, Landroid/car/hardware/xpu/XpuProtoMessageVW$RoadSlopeInfo$Builder;

    invoke-virtual {p1}, Landroid/car/hardware/xpu/XpuProtoMessageVW$RoadSlopeInfo$Builder;->buildPartial()Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Landroid/car/hardware/xpu/XpuProtoMessageVW$RoadSlopeInfo;

    iput-object p1, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$Link;->roadSlopInfo_:Landroid/car/hardware/xpu/XpuProtoMessageVW$RoadSlopeInfo;

    goto :goto_0

    .line 9546
    :cond_0
    iput-object p1, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$Link;->roadSlopInfo_:Landroid/car/hardware/xpu/XpuProtoMessageVW$RoadSlopeInfo;

    :goto_0
    return-void
.end method

.method public static newBuilder()Landroid/car/hardware/xpu/XpuProtoMessageVW$Link$Builder;
    .locals 1

    .line 10168
    sget-object v0, Landroid/car/hardware/xpu/XpuProtoMessageVW$Link;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuProtoMessageVW$Link;

    invoke-virtual {v0}, Landroid/car/hardware/xpu/XpuProtoMessageVW$Link;->toBuilder()Lcom/android/carsdk/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Landroid/car/hardware/xpu/XpuProtoMessageVW$Link$Builder;

    return-object v0
.end method

.method public static newBuilder(Landroid/car/hardware/xpu/XpuProtoMessageVW$Link;)Landroid/car/hardware/xpu/XpuProtoMessageVW$Link$Builder;
    .locals 1

    .line 10171
    sget-object v0, Landroid/car/hardware/xpu/XpuProtoMessageVW$Link;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuProtoMessageVW$Link;

    invoke-virtual {v0}, Landroid/car/hardware/xpu/XpuProtoMessageVW$Link;->toBuilder()Lcom/android/carsdk/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Landroid/car/hardware/xpu/XpuProtoMessageVW$Link$Builder;

    invoke-virtual {v0, p0}, Landroid/car/hardware/xpu/XpuProtoMessageVW$Link$Builder;->mergeFrom(Lcom/android/carsdk/protobuf/GeneratedMessageLite;)Lcom/android/carsdk/protobuf/GeneratedMessageLite$Builder;

    move-result-object p0

    check-cast p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$Link$Builder;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Landroid/car/hardware/xpu/XpuProtoMessageVW$Link;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 10145
    sget-object v0, Landroid/car/hardware/xpu/XpuProtoMessageVW$Link;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuProtoMessageVW$Link;

    invoke-static {v0, p0}, Landroid/car/hardware/xpu/XpuProtoMessageVW$Link;->parseDelimitedFrom(Lcom/android/carsdk/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$Link;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/android/carsdk/protobuf/ExtensionRegistryLite;)Landroid/car/hardware/xpu/XpuProtoMessageVW$Link;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 10151
    sget-object v0, Landroid/car/hardware/xpu/XpuProtoMessageVW$Link;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuProtoMessageVW$Link;

    invoke-static {v0, p0, p1}, Landroid/car/hardware/xpu/XpuProtoMessageVW$Link;->parseDelimitedFrom(Lcom/android/carsdk/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/android/carsdk/protobuf/ExtensionRegistryLite;)Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$Link;

    return-object p0
.end method

.method public static parseFrom(Lcom/android/carsdk/protobuf/ByteString;)Landroid/car/hardware/xpu/XpuProtoMessageVW$Link;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/carsdk/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 10109
    sget-object v0, Landroid/car/hardware/xpu/XpuProtoMessageVW$Link;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuProtoMessageVW$Link;

    invoke-static {v0, p0}, Lcom/android/carsdk/protobuf/GeneratedMessageLite;->parseFrom(Lcom/android/carsdk/protobuf/GeneratedMessageLite;Lcom/android/carsdk/protobuf/ByteString;)Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$Link;

    return-object p0
.end method

.method public static parseFrom(Lcom/android/carsdk/protobuf/ByteString;Lcom/android/carsdk/protobuf/ExtensionRegistryLite;)Landroid/car/hardware/xpu/XpuProtoMessageVW$Link;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/carsdk/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 10116
    sget-object v0, Landroid/car/hardware/xpu/XpuProtoMessageVW$Link;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuProtoMessageVW$Link;

    invoke-static {v0, p0, p1}, Lcom/android/carsdk/protobuf/GeneratedMessageLite;->parseFrom(Lcom/android/carsdk/protobuf/GeneratedMessageLite;Lcom/android/carsdk/protobuf/ByteString;Lcom/android/carsdk/protobuf/ExtensionRegistryLite;)Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$Link;

    return-object p0
.end method

.method public static parseFrom(Lcom/android/carsdk/protobuf/CodedInputStream;)Landroid/car/hardware/xpu/XpuProtoMessageVW$Link;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 10156
    sget-object v0, Landroid/car/hardware/xpu/XpuProtoMessageVW$Link;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuProtoMessageVW$Link;

    invoke-static {v0, p0}, Lcom/android/carsdk/protobuf/GeneratedMessageLite;->parseFrom(Lcom/android/carsdk/protobuf/GeneratedMessageLite;Lcom/android/carsdk/protobuf/CodedInputStream;)Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$Link;

    return-object p0
.end method

.method public static parseFrom(Lcom/android/carsdk/protobuf/CodedInputStream;Lcom/android/carsdk/protobuf/ExtensionRegistryLite;)Landroid/car/hardware/xpu/XpuProtoMessageVW$Link;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 10163
    sget-object v0, Landroid/car/hardware/xpu/XpuProtoMessageVW$Link;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuProtoMessageVW$Link;

    invoke-static {v0, p0, p1}, Lcom/android/carsdk/protobuf/GeneratedMessageLite;->parseFrom(Lcom/android/carsdk/protobuf/GeneratedMessageLite;Lcom/android/carsdk/protobuf/CodedInputStream;Lcom/android/carsdk/protobuf/ExtensionRegistryLite;)Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$Link;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Landroid/car/hardware/xpu/XpuProtoMessageVW$Link;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 10133
    sget-object v0, Landroid/car/hardware/xpu/XpuProtoMessageVW$Link;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuProtoMessageVW$Link;

    invoke-static {v0, p0}, Lcom/android/carsdk/protobuf/GeneratedMessageLite;->parseFrom(Lcom/android/carsdk/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$Link;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/android/carsdk/protobuf/ExtensionRegistryLite;)Landroid/car/hardware/xpu/XpuProtoMessageVW$Link;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 10140
    sget-object v0, Landroid/car/hardware/xpu/XpuProtoMessageVW$Link;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuProtoMessageVW$Link;

    invoke-static {v0, p0, p1}, Lcom/android/carsdk/protobuf/GeneratedMessageLite;->parseFrom(Lcom/android/carsdk/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/android/carsdk/protobuf/ExtensionRegistryLite;)Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$Link;

    return-object p0
.end method

.method public static parseFrom([B)Landroid/car/hardware/xpu/XpuProtoMessageVW$Link;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/carsdk/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 10121
    sget-object v0, Landroid/car/hardware/xpu/XpuProtoMessageVW$Link;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuProtoMessageVW$Link;

    invoke-static {v0, p0}, Lcom/android/carsdk/protobuf/GeneratedMessageLite;->parseFrom(Lcom/android/carsdk/protobuf/GeneratedMessageLite;[B)Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$Link;

    return-object p0
.end method

.method public static parseFrom([BLcom/android/carsdk/protobuf/ExtensionRegistryLite;)Landroid/car/hardware/xpu/XpuProtoMessageVW$Link;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/carsdk/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 10128
    sget-object v0, Landroid/car/hardware/xpu/XpuProtoMessageVW$Link;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuProtoMessageVW$Link;

    invoke-static {v0, p0, p1}, Lcom/android/carsdk/protobuf/GeneratedMessageLite;->parseFrom(Lcom/android/carsdk/protobuf/GeneratedMessageLite;[BLcom/android/carsdk/protobuf/ExtensionRegistryLite;)Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$Link;

    return-object p0
.end method

.method public static parser()Lcom/android/carsdk/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/android/carsdk/protobuf/Parser<",
            "Landroid/car/hardware/xpu/XpuProtoMessageVW$Link;",
            ">;"
        }
    .end annotation

    .line 11539
    sget-object v0, Landroid/car/hardware/xpu/XpuProtoMessageVW$Link;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuProtoMessageVW$Link;

    invoke-virtual {v0}, Landroid/car/hardware/xpu/XpuProtoMessageVW$Link;->getParserForType()Lcom/android/carsdk/protobuf/Parser;

    move-result-object v0

    return-object v0
.end method

.method private removeCameras(I)V
    .locals 1

    .line 9907
    invoke-direct {p0}, Landroid/car/hardware/xpu/XpuProtoMessageVW$Link;->ensureCamerasIsMutable()V

    .line 9908
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$Link;->cameras_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1}, Lcom/android/carsdk/protobuf/Internal$ProtobufList;->remove(I)Ljava/lang/Object;

    return-void
.end method

.method private removeRoadFacilities(I)V
    .locals 1

    .line 9501
    invoke-direct {p0}, Landroid/car/hardware/xpu/XpuProtoMessageVW$Link;->ensureRoadFacilitiesIsMutable()V

    .line 9502
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$Link;->roadFacilities_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1}, Lcom/android/carsdk/protobuf/Internal$ProtobufList;->remove(I)Ljava/lang/Object;

    return-void
.end method

.method private removeSlopeInfos(I)V
    .locals 1

    .line 9673
    invoke-direct {p0}, Landroid/car/hardware/xpu/XpuProtoMessageVW$Link;->ensureSlopeInfosIsMutable()V

    .line 9674
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$Link;->slopeInfos_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1}, Lcom/android/carsdk/protobuf/Internal$ProtobufList;->remove(I)Ljava/lang/Object;

    return-void
.end method

.method private removeV2Points(I)V
    .locals 1

    .line 9116
    invoke-direct {p0}, Landroid/car/hardware/xpu/XpuProtoMessageVW$Link;->ensureV2PointsIsMutable()V

    .line 9117
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$Link;->v2Points_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1}, Lcom/android/carsdk/protobuf/Internal$ProtobufList;->remove(I)Ljava/lang/Object;

    return-void
.end method

.method private setAssistantAction(I)V
    .locals 0

    .line 9690
    iput p1, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$Link;->assistantAction_:I

    return-void
.end method

.method private setCameras(ILandroid/car/hardware/xpu/XpuProtoMessageVW$Camera$Builder;)V
    .locals 1

    .line 9820
    invoke-direct {p0}, Landroid/car/hardware/xpu/XpuProtoMessageVW$Link;->ensureCamerasIsMutable()V

    .line 9821
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$Link;->cameras_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    invoke-virtual {p2}, Landroid/car/hardware/xpu/XpuProtoMessageVW$Camera$Builder;->build()Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object p2

    check-cast p2, Landroid/car/hardware/xpu/XpuProtoMessageVW$Camera;

    invoke-interface {v0, p1, p2}, Lcom/android/carsdk/protobuf/Internal$ProtobufList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private setCameras(ILandroid/car/hardware/xpu/XpuProtoMessageVW$Camera;)V
    .locals 1

    .line 9806
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 9808
    invoke-direct {p0}, Landroid/car/hardware/xpu/XpuProtoMessageVW$Link;->ensureCamerasIsMutable()V

    .line 9809
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$Link;->cameras_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1, p2}, Lcom/android/carsdk/protobuf/Internal$ProtobufList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private setFormwayType(I)V
    .locals 0

    .line 8800
    iput p1, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$Link;->formwayType_:I

    return-void
.end method

.method private setHasMixFork(Z)V
    .locals 0

    .line 9306
    iput-boolean p1, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$Link;->hasMixFork_:Z

    return-void
.end method

.method private setHasMultiOut(Z)V
    .locals 0

    .line 9260
    iput-boolean p1, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$Link;->hasMultiOut_:Z

    return-void
.end method

.method private setHasParallelRoad(Z)V
    .locals 0

    .line 8869
    iput-boolean p1, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$Link;->hasParallelRoad_:Z

    return-void
.end method

.method private setHasTrafficLight(Z)V
    .locals 0

    .line 9283
    iput-boolean p1, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$Link;->hasTrafficLight_:Z

    return-void
.end method

.method private setHeightDiffData(Landroid/car/hardware/xpu/XpuProtoMessageVW$HeightDiffData$Builder;)V
    .locals 0

    .line 8977
    invoke-virtual {p1}, Landroid/car/hardware/xpu/XpuProtoMessageVW$HeightDiffData$Builder;->build()Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Landroid/car/hardware/xpu/XpuProtoMessageVW$HeightDiffData;

    iput-object p1, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$Link;->heightDiffData_:Landroid/car/hardware/xpu/XpuProtoMessageVW$HeightDiffData;

    return-void
.end method

.method private setHeightDiffData(Landroid/car/hardware/xpu/XpuProtoMessageVW$HeightDiffData;)V
    .locals 0

    .line 8967
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 8969
    iput-object p1, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$Link;->heightDiffData_:Landroid/car/hardware/xpu/XpuProtoMessageVW$HeightDiffData;

    return-void
.end method

.method private setId(J)V
    .locals 0

    .line 8754
    iput-wide p1, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$Link;->id_:J

    return-void
.end method

.method private setIsAtService(Z)V
    .locals 0

    .line 9329
    iput-boolean p1, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$Link;->isAtService_:Z

    return-void
.end method

.method private setIsOverHead(Z)V
    .locals 0

    .line 8846
    iput-boolean p1, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$Link;->isOverHead_:Z

    return-void
.end method

.method private setLaneNum(I)V
    .locals 0

    .line 8938
    iput p1, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$Link;->laneNum_:I

    return-void
.end method

.method private setLength(D)V
    .locals 0

    .line 9133
    iput-wide p1, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$Link;->length_:D

    return-void
.end method

.method private setLinkDirection(I)V
    .locals 0

    .line 8892
    iput p1, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$Link;->linkDirection_:I

    return-void
.end method

.method private setLinkType(I)V
    .locals 0

    .line 8777
    iput p1, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$Link;->linkType_:I

    return-void
.end method

.method private setMainAction(I)V
    .locals 0

    .line 9721
    iput p1, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$Link;->mainAction_:I

    return-void
.end method

.method private setOwnership(I)V
    .locals 0

    .line 9166
    iput p1, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$Link;->ownership_:I

    return-void
.end method

.method private setRoadClass(I)V
    .locals 0

    .line 8823
    iput p1, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$Link;->roadClass_:I

    return-void
.end method

.method private setRoadDirection(I)V
    .locals 0

    .line 8915
    iput p1, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$Link;->roadDirection_:I

    return-void
.end method

.method private setRoadFacilities(ILandroid/car/hardware/xpu/XpuProtoMessageVW$RoadFacility$Builder;)V
    .locals 1

    .line 9442
    invoke-direct {p0}, Landroid/car/hardware/xpu/XpuProtoMessageVW$Link;->ensureRoadFacilitiesIsMutable()V

    .line 9443
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$Link;->roadFacilities_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    invoke-virtual {p2}, Landroid/car/hardware/xpu/XpuProtoMessageVW$RoadFacility$Builder;->build()Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object p2

    check-cast p2, Landroid/car/hardware/xpu/XpuProtoMessageVW$RoadFacility;

    invoke-interface {v0, p1, p2}, Lcom/android/carsdk/protobuf/Internal$ProtobufList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private setRoadFacilities(ILandroid/car/hardware/xpu/XpuProtoMessageVW$RoadFacility;)V
    .locals 1

    .line 9432
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 9434
    invoke-direct {p0}, Landroid/car/hardware/xpu/XpuProtoMessageVW$Link;->ensureRoadFacilitiesIsMutable()V

    .line 9435
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$Link;->roadFacilities_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1, p2}, Lcom/android/carsdk/protobuf/Internal$ProtobufList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private setRoadFacilityCount(I)V
    .locals 0

    .line 9375
    iput p1, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$Link;->roadFacilityCount_:I

    return-void
.end method

.method private setRoadName(Ljava/lang/String;)V
    .locals 0

    .line 9214
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 9217
    iput-object p1, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$Link;->roadName_:Ljava/lang/String;

    return-void
.end method

.method private setRoadNameBytes(Lcom/android/carsdk/protobuf/ByteString;)V
    .locals 0

    .line 9240
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 9242
    invoke-static {p1}, Landroid/car/hardware/xpu/XpuProtoMessageVW$Link;->checkByteStringIsUtf8(Lcom/android/carsdk/protobuf/ByteString;)V

    .line 9244
    invoke-virtual {p1}, Lcom/android/carsdk/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$Link;->roadName_:Ljava/lang/String;

    return-void
.end method

.method private setRoadSlopInfo(Landroid/car/hardware/xpu/XpuProtoMessageVW$RoadSlopeInfo$Builder;)V
    .locals 0

    .line 9534
    invoke-virtual {p1}, Landroid/car/hardware/xpu/XpuProtoMessageVW$RoadSlopeInfo$Builder;->build()Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Landroid/car/hardware/xpu/XpuProtoMessageVW$RoadSlopeInfo;

    iput-object p1, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$Link;->roadSlopInfo_:Landroid/car/hardware/xpu/XpuProtoMessageVW$RoadSlopeInfo;

    return-void
.end method

.method private setRoadSlopInfo(Landroid/car/hardware/xpu/XpuProtoMessageVW$RoadSlopeInfo;)V
    .locals 0

    .line 9524
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 9526
    iput-object p1, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$Link;->roadSlopInfo_:Landroid/car/hardware/xpu/XpuProtoMessageVW$RoadSlopeInfo;

    return-void
.end method

.method private setSlopeInfos(ILandroid/car/hardware/xpu/XpuProtoMessageVW$SlopeInfo$Builder;)V
    .locals 1

    .line 9614
    invoke-direct {p0}, Landroid/car/hardware/xpu/XpuProtoMessageVW$Link;->ensureSlopeInfosIsMutable()V

    .line 9615
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$Link;->slopeInfos_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    invoke-virtual {p2}, Landroid/car/hardware/xpu/XpuProtoMessageVW$SlopeInfo$Builder;->build()Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object p2

    check-cast p2, Landroid/car/hardware/xpu/XpuProtoMessageVW$SlopeInfo;

    invoke-interface {v0, p1, p2}, Lcom/android/carsdk/protobuf/Internal$ProtobufList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private setSlopeInfos(ILandroid/car/hardware/xpu/XpuProtoMessageVW$SlopeInfo;)V
    .locals 1

    .line 9604
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 9606
    invoke-direct {p0}, Landroid/car/hardware/xpu/XpuProtoMessageVW$Link;->ensureSlopeInfosIsMutable()V

    .line 9607
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$Link;->slopeInfos_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1, p2}, Lcom/android/carsdk/protobuf/Internal$ProtobufList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private setSpeed(I)V
    .locals 0

    .line 9352
    iput p1, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$Link;->speed_:I

    return-void
.end method

.method private setV2Points(ILandroid/car/hardware/xpu/XpuProtoMessageVW$V2_Point$Builder;)V
    .locals 1

    .line 9057
    invoke-direct {p0}, Landroid/car/hardware/xpu/XpuProtoMessageVW$Link;->ensureV2PointsIsMutable()V

    .line 9058
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$Link;->v2Points_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    invoke-virtual {p2}, Landroid/car/hardware/xpu/XpuProtoMessageVW$V2_Point$Builder;->build()Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object p2

    check-cast p2, Landroid/car/hardware/xpu/XpuProtoMessageVW$V2_Point;

    invoke-interface {v0, p1, p2}, Lcom/android/carsdk/protobuf/Internal$ProtobufList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private setV2Points(ILandroid/car/hardware/xpu/XpuProtoMessageVW$V2_Point;)V
    .locals 1

    .line 9047
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 9049
    invoke-direct {p0}, Landroid/car/hardware/xpu/XpuProtoMessageVW$Link;->ensureV2PointsIsMutable()V

    .line 9050
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$Link;->v2Points_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1, p2}, Lcom/android/carsdk/protobuf/Internal$ProtobufList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method protected final dynamicMethod(Lcom/android/carsdk/protobuf/GeneratedMessageLite$MethodToInvoke;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 10

    .line 11243
    sget-object v0, Landroid/car/hardware/xpu/XpuProtoMessageVW$1;->$SwitchMap$com$google$protobuf$GeneratedMessageLite$MethodToInvoke:[I

    invoke-virtual {p1}, Lcom/android/carsdk/protobuf/GeneratedMessageLite$MethodToInvoke;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x1

    packed-switch p1, :pswitch_data_0

    .line 11521
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1

    .line 11512
    :pswitch_0
    sget-object p1, Landroid/car/hardware/xpu/XpuProtoMessageVW$Link;->PARSER:Lcom/android/carsdk/protobuf/Parser;

    if-nez p1, :cond_1

    const-class p1, Landroid/car/hardware/xpu/XpuProtoMessageVW$Link;

    monitor-enter p1

    .line 11513
    :try_start_0
    sget-object p2, Landroid/car/hardware/xpu/XpuProtoMessageVW$Link;->PARSER:Lcom/android/carsdk/protobuf/Parser;

    if-nez p2, :cond_0

    .line 11514
    new-instance p2, Lcom/android/carsdk/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;

    sget-object p3, Landroid/car/hardware/xpu/XpuProtoMessageVW$Link;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuProtoMessageVW$Link;

    invoke-direct {p2, p3}, Lcom/android/carsdk/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;-><init>(Lcom/android/carsdk/protobuf/GeneratedMessageLite;)V

    sput-object p2, Landroid/car/hardware/xpu/XpuProtoMessageVW$Link;->PARSER:Lcom/android/carsdk/protobuf/Parser;

    .line 11516
    :cond_0
    monitor-exit p1

    goto :goto_0

    :catchall_0
    move-exception p2

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p2

    .line 11518
    :cond_1
    :goto_0
    sget-object p1, Landroid/car/hardware/xpu/XpuProtoMessageVW$Link;->PARSER:Lcom/android/carsdk/protobuf/Parser;

    return-object p1

    .line 11316
    :pswitch_1
    check-cast p2, Lcom/android/carsdk/protobuf/CodedInputStream;

    .line 11318
    check-cast p3, Lcom/android/carsdk/protobuf/ExtensionRegistryLite;

    :cond_2
    :goto_1
    if-nez v1, :cond_9

    .line 11323
    :try_start_1
    invoke-virtual {p2}, Lcom/android/carsdk/protobuf/CodedInputStream;->readTag()I

    move-result p1

    sparse-switch p1, :sswitch_data_0

    .line 11329
    invoke-virtual {p2, p1}, Lcom/android/carsdk/protobuf/CodedInputStream;->skipField(I)Z

    move-result p1

    goto/16 :goto_5

    .line 11489
    :sswitch_0
    iget-object p1, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$Link;->cameras_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    invoke-interface {p1}, Lcom/android/carsdk/protobuf/Internal$ProtobufList;->isModifiable()Z

    move-result p1

    if-nez p1, :cond_3

    .line 11490
    iget-object p1, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$Link;->cameras_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    .line 11491
    invoke-static {p1}, Lcom/android/carsdk/protobuf/GeneratedMessageLite;->mutableCopy(Lcom/android/carsdk/protobuf/Internal$ProtobufList;)Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    move-result-object p1

    iput-object p1, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$Link;->cameras_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    .line 11493
    :cond_3
    iget-object p1, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$Link;->cameras_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    .line 11494
    invoke-static {}, Landroid/car/hardware/xpu/XpuProtoMessageVW$Camera;->parser()Lcom/android/carsdk/protobuf/Parser;

    move-result-object v3

    invoke-virtual {p2, v3, p3}, Lcom/android/carsdk/protobuf/CodedInputStream;->readMessage(Lcom/android/carsdk/protobuf/Parser;Lcom/android/carsdk/protobuf/ExtensionRegistryLite;)Lcom/android/carsdk/protobuf/MessageLite;

    move-result-object v3

    check-cast v3, Landroid/car/hardware/xpu/XpuProtoMessageVW$Camera;

    .line 11493
    invoke-interface {p1, v3}, Lcom/android/carsdk/protobuf/Internal$ProtobufList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 11485
    :sswitch_1
    invoke-virtual {p2}, Lcom/android/carsdk/protobuf/CodedInputStream;->readInt32()I

    move-result p1

    iput p1, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$Link;->mainAction_:I

    goto :goto_1

    .line 11480
    :sswitch_2
    invoke-virtual {p2}, Lcom/android/carsdk/protobuf/CodedInputStream;->readInt32()I

    move-result p1

    iput p1, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$Link;->assistantAction_:I

    goto :goto_1

    .line 11470
    :sswitch_3
    iget-object p1, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$Link;->slopeInfos_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    invoke-interface {p1}, Lcom/android/carsdk/protobuf/Internal$ProtobufList;->isModifiable()Z

    move-result p1

    if-nez p1, :cond_4

    .line 11471
    iget-object p1, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$Link;->slopeInfos_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    .line 11472
    invoke-static {p1}, Lcom/android/carsdk/protobuf/GeneratedMessageLite;->mutableCopy(Lcom/android/carsdk/protobuf/Internal$ProtobufList;)Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    move-result-object p1

    iput-object p1, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$Link;->slopeInfos_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    .line 11474
    :cond_4
    iget-object p1, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$Link;->slopeInfos_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    .line 11475
    invoke-static {}, Landroid/car/hardware/xpu/XpuProtoMessageVW$SlopeInfo;->parser()Lcom/android/carsdk/protobuf/Parser;

    move-result-object v3

    invoke-virtual {p2, v3, p3}, Lcom/android/carsdk/protobuf/CodedInputStream;->readMessage(Lcom/android/carsdk/protobuf/Parser;Lcom/android/carsdk/protobuf/ExtensionRegistryLite;)Lcom/android/carsdk/protobuf/MessageLite;

    move-result-object v3

    check-cast v3, Landroid/car/hardware/xpu/XpuProtoMessageVW$SlopeInfo;

    .line 11474
    invoke-interface {p1, v3}, Lcom/android/carsdk/protobuf/Internal$ProtobufList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 11458
    :sswitch_4
    iget-object p1, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$Link;->roadSlopInfo_:Landroid/car/hardware/xpu/XpuProtoMessageVW$RoadSlopeInfo;

    if-eqz p1, :cond_5

    .line 11459
    invoke-virtual {p1}, Landroid/car/hardware/xpu/XpuProtoMessageVW$RoadSlopeInfo;->toBuilder()Lcom/android/carsdk/protobuf/GeneratedMessageLite$Builder;

    move-result-object p1

    check-cast p1, Landroid/car/hardware/xpu/XpuProtoMessageVW$RoadSlopeInfo$Builder;

    goto :goto_2

    :cond_5
    move-object p1, v0

    .line 11461
    :goto_2
    invoke-static {}, Landroid/car/hardware/xpu/XpuProtoMessageVW$RoadSlopeInfo;->parser()Lcom/android/carsdk/protobuf/Parser;

    move-result-object v3

    invoke-virtual {p2, v3, p3}, Lcom/android/carsdk/protobuf/CodedInputStream;->readMessage(Lcom/android/carsdk/protobuf/Parser;Lcom/android/carsdk/protobuf/ExtensionRegistryLite;)Lcom/android/carsdk/protobuf/MessageLite;

    move-result-object v3

    check-cast v3, Landroid/car/hardware/xpu/XpuProtoMessageVW$RoadSlopeInfo;

    iput-object v3, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$Link;->roadSlopInfo_:Landroid/car/hardware/xpu/XpuProtoMessageVW$RoadSlopeInfo;

    if-eqz p1, :cond_2

    .line 11463
    invoke-virtual {p1, v3}, Landroid/car/hardware/xpu/XpuProtoMessageVW$RoadSlopeInfo$Builder;->mergeFrom(Lcom/android/carsdk/protobuf/GeneratedMessageLite;)Lcom/android/carsdk/protobuf/GeneratedMessageLite$Builder;

    .line 11464
    invoke-virtual {p1}, Landroid/car/hardware/xpu/XpuProtoMessageVW$RoadSlopeInfo$Builder;->buildPartial()Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Landroid/car/hardware/xpu/XpuProtoMessageVW$RoadSlopeInfo;

    iput-object p1, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$Link;->roadSlopInfo_:Landroid/car/hardware/xpu/XpuProtoMessageVW$RoadSlopeInfo;

    goto/16 :goto_1

    .line 11448
    :sswitch_5
    iget-object p1, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$Link;->roadFacilities_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    invoke-interface {p1}, Lcom/android/carsdk/protobuf/Internal$ProtobufList;->isModifiable()Z

    move-result p1

    if-nez p1, :cond_6

    .line 11449
    iget-object p1, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$Link;->roadFacilities_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    .line 11450
    invoke-static {p1}, Lcom/android/carsdk/protobuf/GeneratedMessageLite;->mutableCopy(Lcom/android/carsdk/protobuf/Internal$ProtobufList;)Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    move-result-object p1

    iput-object p1, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$Link;->roadFacilities_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    .line 11452
    :cond_6
    iget-object p1, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$Link;->roadFacilities_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    .line 11453
    invoke-static {}, Landroid/car/hardware/xpu/XpuProtoMessageVW$RoadFacility;->parser()Lcom/android/carsdk/protobuf/Parser;

    move-result-object v3

    invoke-virtual {p2, v3, p3}, Lcom/android/carsdk/protobuf/CodedInputStream;->readMessage(Lcom/android/carsdk/protobuf/Parser;Lcom/android/carsdk/protobuf/ExtensionRegistryLite;)Lcom/android/carsdk/protobuf/MessageLite;

    move-result-object v3

    check-cast v3, Landroid/car/hardware/xpu/XpuProtoMessageVW$RoadFacility;

    .line 11452
    invoke-interface {p1, v3}, Lcom/android/carsdk/protobuf/Internal$ProtobufList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 11444
    :sswitch_6
    invoke-virtual {p2}, Lcom/android/carsdk/protobuf/CodedInputStream;->readInt32()I

    move-result p1

    iput p1, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$Link;->roadFacilityCount_:I

    goto/16 :goto_1

    .line 11439
    :sswitch_7
    invoke-virtual {p2}, Lcom/android/carsdk/protobuf/CodedInputStream;->readInt32()I

    move-result p1

    iput p1, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$Link;->speed_:I

    goto/16 :goto_1

    .line 11434
    :sswitch_8
    invoke-virtual {p2}, Lcom/android/carsdk/protobuf/CodedInputStream;->readBool()Z

    move-result p1

    iput-boolean p1, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$Link;->isAtService_:Z

    goto/16 :goto_1

    .line 11429
    :sswitch_9
    invoke-virtual {p2}, Lcom/android/carsdk/protobuf/CodedInputStream;->readBool()Z

    move-result p1

    iput-boolean p1, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$Link;->hasMixFork_:Z

    goto/16 :goto_1

    .line 11424
    :sswitch_a
    invoke-virtual {p2}, Lcom/android/carsdk/protobuf/CodedInputStream;->readBool()Z

    move-result p1

    iput-boolean p1, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$Link;->hasTrafficLight_:Z

    goto/16 :goto_1

    .line 11419
    :sswitch_b
    invoke-virtual {p2}, Lcom/android/carsdk/protobuf/CodedInputStream;->readBool()Z

    move-result p1

    iput-boolean p1, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$Link;->hasMultiOut_:Z

    goto/16 :goto_1

    .line 11412
    :sswitch_c
    invoke-virtual {p2}, Lcom/android/carsdk/protobuf/CodedInputStream;->readStringRequireUtf8()Ljava/lang/String;

    move-result-object p1

    .line 11414
    iput-object p1, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$Link;->roadName_:Ljava/lang/String;

    goto/16 :goto_1

    .line 11408
    :sswitch_d
    invoke-virtual {p2}, Lcom/android/carsdk/protobuf/CodedInputStream;->readInt32()I

    move-result p1

    iput p1, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$Link;->ownership_:I

    goto/16 :goto_1

    .line 11403
    :sswitch_e
    invoke-virtual {p2}, Lcom/android/carsdk/protobuf/CodedInputStream;->readDouble()D

    move-result-wide v3

    iput-wide v3, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$Link;->length_:D

    goto/16 :goto_1

    .line 11393
    :sswitch_f
    iget-object p1, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$Link;->v2Points_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    invoke-interface {p1}, Lcom/android/carsdk/protobuf/Internal$ProtobufList;->isModifiable()Z

    move-result p1

    if-nez p1, :cond_7

    .line 11394
    iget-object p1, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$Link;->v2Points_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    .line 11395
    invoke-static {p1}, Lcom/android/carsdk/protobuf/GeneratedMessageLite;->mutableCopy(Lcom/android/carsdk/protobuf/Internal$ProtobufList;)Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    move-result-object p1

    iput-object p1, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$Link;->v2Points_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    .line 11397
    :cond_7
    iget-object p1, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$Link;->v2Points_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    .line 11398
    invoke-static {}, Landroid/car/hardware/xpu/XpuProtoMessageVW$V2_Point;->parser()Lcom/android/carsdk/protobuf/Parser;

    move-result-object v3

    invoke-virtual {p2, v3, p3}, Lcom/android/carsdk/protobuf/CodedInputStream;->readMessage(Lcom/android/carsdk/protobuf/Parser;Lcom/android/carsdk/protobuf/ExtensionRegistryLite;)Lcom/android/carsdk/protobuf/MessageLite;

    move-result-object v3

    check-cast v3, Landroid/car/hardware/xpu/XpuProtoMessageVW$V2_Point;

    .line 11397
    invoke-interface {p1, v3}, Lcom/android/carsdk/protobuf/Internal$ProtobufList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 11381
    :sswitch_10
    iget-object p1, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$Link;->heightDiffData_:Landroid/car/hardware/xpu/XpuProtoMessageVW$HeightDiffData;

    if-eqz p1, :cond_8

    .line 11382
    invoke-virtual {p1}, Landroid/car/hardware/xpu/XpuProtoMessageVW$HeightDiffData;->toBuilder()Lcom/android/carsdk/protobuf/GeneratedMessageLite$Builder;

    move-result-object p1

    check-cast p1, Landroid/car/hardware/xpu/XpuProtoMessageVW$HeightDiffData$Builder;

    goto :goto_3

    :cond_8
    move-object p1, v0

    .line 11384
    :goto_3
    invoke-static {}, Landroid/car/hardware/xpu/XpuProtoMessageVW$HeightDiffData;->parser()Lcom/android/carsdk/protobuf/Parser;

    move-result-object v3

    invoke-virtual {p2, v3, p3}, Lcom/android/carsdk/protobuf/CodedInputStream;->readMessage(Lcom/android/carsdk/protobuf/Parser;Lcom/android/carsdk/protobuf/ExtensionRegistryLite;)Lcom/android/carsdk/protobuf/MessageLite;

    move-result-object v3

    check-cast v3, Landroid/car/hardware/xpu/XpuProtoMessageVW$HeightDiffData;

    iput-object v3, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$Link;->heightDiffData_:Landroid/car/hardware/xpu/XpuProtoMessageVW$HeightDiffData;

    if-eqz p1, :cond_2

    .line 11386
    invoke-virtual {p1, v3}, Landroid/car/hardware/xpu/XpuProtoMessageVW$HeightDiffData$Builder;->mergeFrom(Lcom/android/carsdk/protobuf/GeneratedMessageLite;)Lcom/android/carsdk/protobuf/GeneratedMessageLite$Builder;

    .line 11387
    invoke-virtual {p1}, Landroid/car/hardware/xpu/XpuProtoMessageVW$HeightDiffData$Builder;->buildPartial()Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Landroid/car/hardware/xpu/XpuProtoMessageVW$HeightDiffData;

    iput-object p1, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$Link;->heightDiffData_:Landroid/car/hardware/xpu/XpuProtoMessageVW$HeightDiffData;

    goto/16 :goto_1

    .line 11376
    :sswitch_11
    invoke-virtual {p2}, Lcom/android/carsdk/protobuf/CodedInputStream;->readInt32()I

    move-result p1

    iput p1, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$Link;->laneNum_:I

    goto/16 :goto_1

    .line 11371
    :sswitch_12
    invoke-virtual {p2}, Lcom/android/carsdk/protobuf/CodedInputStream;->readInt32()I

    move-result p1

    iput p1, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$Link;->roadDirection_:I

    goto/16 :goto_1

    .line 11366
    :sswitch_13
    invoke-virtual {p2}, Lcom/android/carsdk/protobuf/CodedInputStream;->readInt32()I

    move-result p1

    iput p1, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$Link;->linkDirection_:I

    goto/16 :goto_1

    .line 11361
    :sswitch_14
    invoke-virtual {p2}, Lcom/android/carsdk/protobuf/CodedInputStream;->readBool()Z

    move-result p1

    iput-boolean p1, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$Link;->hasParallelRoad_:Z

    goto/16 :goto_1

    .line 11356
    :sswitch_15
    invoke-virtual {p2}, Lcom/android/carsdk/protobuf/CodedInputStream;->readBool()Z

    move-result p1

    iput-boolean p1, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$Link;->isOverHead_:Z

    goto/16 :goto_1

    .line 11351
    :sswitch_16
    invoke-virtual {p2}, Lcom/android/carsdk/protobuf/CodedInputStream;->readInt32()I

    move-result p1

    iput p1, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$Link;->roadClass_:I

    goto/16 :goto_1

    .line 11346
    :sswitch_17
    invoke-virtual {p2}, Lcom/android/carsdk/protobuf/CodedInputStream;->readInt32()I

    move-result p1

    iput p1, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$Link;->formwayType_:I

    goto/16 :goto_1

    .line 11341
    :sswitch_18
    invoke-virtual {p2}, Lcom/android/carsdk/protobuf/CodedInputStream;->readInt32()I

    move-result p1

    iput p1, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$Link;->linkType_:I

    goto/16 :goto_1

    .line 11336
    :sswitch_19
    invoke-virtual {p2}, Lcom/android/carsdk/protobuf/CodedInputStream;->readInt64()J

    move-result-wide v3

    iput-wide v3, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$Link;->id_:J
    :try_end_1
    .catch Lcom/android/carsdk/protobuf/InvalidProtocolBufferException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto/16 :goto_1

    :goto_4
    :sswitch_1a
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

    .line 11502
    :try_start_2
    new-instance p2, Ljava/lang/RuntimeException;

    new-instance p3, Lcom/android/carsdk/protobuf/InvalidProtocolBufferException;

    .line 11504
    invoke-virtual {p1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p3, p1}, Lcom/android/carsdk/protobuf/InvalidProtocolBufferException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, p0}, Lcom/android/carsdk/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/android/carsdk/protobuf/MessageLite;)Lcom/android/carsdk/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p2

    :catch_1
    move-exception p1

    .line 11500
    new-instance p2, Ljava/lang/RuntimeException;

    invoke-virtual {p1, p0}, Lcom/android/carsdk/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/android/carsdk/protobuf/MessageLite;)Lcom/android/carsdk/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 11505
    :goto_6
    throw p1

    .line 11509
    :cond_9
    :pswitch_2
    sget-object p1, Landroid/car/hardware/xpu/XpuProtoMessageVW$Link;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuProtoMessageVW$Link;

    return-object p1

    .line 11261
    :pswitch_3
    check-cast p2, Lcom/android/carsdk/protobuf/GeneratedMessageLite$Visitor;

    .line 11262
    check-cast p3, Landroid/car/hardware/xpu/XpuProtoMessageVW$Link;

    .line 11263
    iget-wide v5, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$Link;->id_:J

    const-wide/16 v3, 0x0

    cmp-long p1, v5, v3

    if-eqz p1, :cond_a

    move p1, v2

    goto :goto_7

    :cond_a
    move p1, v1

    :goto_7
    iget-wide v8, p3, Landroid/car/hardware/xpu/XpuProtoMessageVW$Link;->id_:J

    cmp-long v0, v8, v3

    if-eqz v0, :cond_b

    move v7, v2

    goto :goto_8

    :cond_b
    move v7, v1

    :goto_8
    move-object v3, p2

    move v4, p1

    invoke-interface/range {v3 .. v9}, Lcom/android/carsdk/protobuf/GeneratedMessageLite$Visitor;->visitLong(ZJZJ)J

    move-result-wide v3

    iput-wide v3, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$Link;->id_:J

    .line 11265
    iget p1, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$Link;->linkType_:I

    if-eqz p1, :cond_c

    move v0, v2

    goto :goto_9

    :cond_c
    move v0, v1

    :goto_9
    iget v3, p3, Landroid/car/hardware/xpu/XpuProtoMessageVW$Link;->linkType_:I

    if-eqz v3, :cond_d

    move v4, v2

    goto :goto_a

    :cond_d
    move v4, v1

    :goto_a
    invoke-interface {p2, v0, p1, v4, v3}, Lcom/android/carsdk/protobuf/GeneratedMessageLite$Visitor;->visitInt(ZIZI)I

    move-result p1

    iput p1, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$Link;->linkType_:I

    .line 11267
    iget p1, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$Link;->formwayType_:I

    if-eqz p1, :cond_e

    move v0, v2

    goto :goto_b

    :cond_e
    move v0, v1

    :goto_b
    iget v3, p3, Landroid/car/hardware/xpu/XpuProtoMessageVW$Link;->formwayType_:I

    if-eqz v3, :cond_f

    move v4, v2

    goto :goto_c

    :cond_f
    move v4, v1

    :goto_c
    invoke-interface {p2, v0, p1, v4, v3}, Lcom/android/carsdk/protobuf/GeneratedMessageLite$Visitor;->visitInt(ZIZI)I

    move-result p1

    iput p1, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$Link;->formwayType_:I

    .line 11269
    iget p1, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$Link;->roadClass_:I

    if-eqz p1, :cond_10

    move v0, v2

    goto :goto_d

    :cond_10
    move v0, v1

    :goto_d
    iget v3, p3, Landroid/car/hardware/xpu/XpuProtoMessageVW$Link;->roadClass_:I

    if-eqz v3, :cond_11

    move v4, v2

    goto :goto_e

    :cond_11
    move v4, v1

    :goto_e
    invoke-interface {p2, v0, p1, v4, v3}, Lcom/android/carsdk/protobuf/GeneratedMessageLite$Visitor;->visitInt(ZIZI)I

    move-result p1

    iput p1, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$Link;->roadClass_:I

    .line 11271
    iget-boolean p1, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$Link;->isOverHead_:Z

    iget-boolean v0, p3, Landroid/car/hardware/xpu/XpuProtoMessageVW$Link;->isOverHead_:Z

    invoke-interface {p2, p1, p1, v0, v0}, Lcom/android/carsdk/protobuf/GeneratedMessageLite$Visitor;->visitBoolean(ZZZZ)Z

    move-result p1

    iput-boolean p1, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$Link;->isOverHead_:Z

    .line 11273
    iget-boolean p1, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$Link;->hasParallelRoad_:Z

    iget-boolean v0, p3, Landroid/car/hardware/xpu/XpuProtoMessageVW$Link;->hasParallelRoad_:Z

    invoke-interface {p2, p1, p1, v0, v0}, Lcom/android/carsdk/protobuf/GeneratedMessageLite$Visitor;->visitBoolean(ZZZZ)Z

    move-result p1

    iput-boolean p1, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$Link;->hasParallelRoad_:Z

    .line 11275
    iget p1, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$Link;->linkDirection_:I

    if-eqz p1, :cond_12

    move v0, v2

    goto :goto_f

    :cond_12
    move v0, v1

    :goto_f
    iget v3, p3, Landroid/car/hardware/xpu/XpuProtoMessageVW$Link;->linkDirection_:I

    if-eqz v3, :cond_13

    move v4, v2

    goto :goto_10

    :cond_13
    move v4, v1

    :goto_10
    invoke-interface {p2, v0, p1, v4, v3}, Lcom/android/carsdk/protobuf/GeneratedMessageLite$Visitor;->visitInt(ZIZI)I

    move-result p1

    iput p1, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$Link;->linkDirection_:I

    .line 11277
    iget p1, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$Link;->roadDirection_:I

    if-eqz p1, :cond_14

    move v0, v2

    goto :goto_11

    :cond_14
    move v0, v1

    :goto_11
    iget v3, p3, Landroid/car/hardware/xpu/XpuProtoMessageVW$Link;->roadDirection_:I

    if-eqz v3, :cond_15

    move v4, v2

    goto :goto_12

    :cond_15
    move v4, v1

    :goto_12
    invoke-interface {p2, v0, p1, v4, v3}, Lcom/android/carsdk/protobuf/GeneratedMessageLite$Visitor;->visitInt(ZIZI)I

    move-result p1

    iput p1, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$Link;->roadDirection_:I

    .line 11279
    iget p1, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$Link;->laneNum_:I

    if-eqz p1, :cond_16

    move v0, v2

    goto :goto_13

    :cond_16
    move v0, v1

    :goto_13
    iget v3, p3, Landroid/car/hardware/xpu/XpuProtoMessageVW$Link;->laneNum_:I

    if-eqz v3, :cond_17

    move v4, v2

    goto :goto_14

    :cond_17
    move v4, v1

    :goto_14
    invoke-interface {p2, v0, p1, v4, v3}, Lcom/android/carsdk/protobuf/GeneratedMessageLite$Visitor;->visitInt(ZIZI)I

    move-result p1

    iput p1, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$Link;->laneNum_:I

    .line 11281
    iget-object p1, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$Link;->heightDiffData_:Landroid/car/hardware/xpu/XpuProtoMessageVW$HeightDiffData;

    iget-object v0, p3, Landroid/car/hardware/xpu/XpuProtoMessageVW$Link;->heightDiffData_:Landroid/car/hardware/xpu/XpuProtoMessageVW$HeightDiffData;

    invoke-interface {p2, p1, v0}, Lcom/android/carsdk/protobuf/GeneratedMessageLite$Visitor;->visitMessage(Lcom/android/carsdk/protobuf/MessageLite;Lcom/android/carsdk/protobuf/MessageLite;)Lcom/android/carsdk/protobuf/MessageLite;

    move-result-object p1

    check-cast p1, Landroid/car/hardware/xpu/XpuProtoMessageVW$HeightDiffData;

    iput-object p1, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$Link;->heightDiffData_:Landroid/car/hardware/xpu/XpuProtoMessageVW$HeightDiffData;

    .line 11282
    iget-object p1, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$Link;->v2Points_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    iget-object v0, p3, Landroid/car/hardware/xpu/XpuProtoMessageVW$Link;->v2Points_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    invoke-interface {p2, p1, v0}, Lcom/android/carsdk/protobuf/GeneratedMessageLite$Visitor;->visitList(Lcom/android/carsdk/protobuf/Internal$ProtobufList;Lcom/android/carsdk/protobuf/Internal$ProtobufList;)Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    move-result-object p1

    iput-object p1, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$Link;->v2Points_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    .line 11283
    iget-wide v5, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$Link;->length_:D

    const-wide/16 v3, 0x0

    cmpl-double p1, v5, v3

    if-eqz p1, :cond_18

    move p1, v2

    goto :goto_15

    :cond_18
    move p1, v1

    :goto_15
    iget-wide v8, p3, Landroid/car/hardware/xpu/XpuProtoMessageVW$Link;->length_:D

    cmpl-double v0, v8, v3

    if-eqz v0, :cond_19

    move v7, v2

    goto :goto_16

    :cond_19
    move v7, v1

    :goto_16
    move-object v3, p2

    move v4, p1

    invoke-interface/range {v3 .. v9}, Lcom/android/carsdk/protobuf/GeneratedMessageLite$Visitor;->visitDouble(ZDZD)D

    move-result-wide v3

    iput-wide v3, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$Link;->length_:D

    .line 11285
    iget p1, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$Link;->ownership_:I

    if-eqz p1, :cond_1a

    move v0, v2

    goto :goto_17

    :cond_1a
    move v0, v1

    :goto_17
    iget v3, p3, Landroid/car/hardware/xpu/XpuProtoMessageVW$Link;->ownership_:I

    if-eqz v3, :cond_1b

    move v4, v2

    goto :goto_18

    :cond_1b
    move v4, v1

    :goto_18
    invoke-interface {p2, v0, p1, v4, v3}, Lcom/android/carsdk/protobuf/GeneratedMessageLite$Visitor;->visitInt(ZIZI)I

    move-result p1

    iput p1, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$Link;->ownership_:I

    .line 11287
    iget-object p1, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$Link;->roadName_:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result p1

    xor-int/2addr p1, v2

    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$Link;->roadName_:Ljava/lang/String;

    iget-object v3, p3, Landroid/car/hardware/xpu/XpuProtoMessageVW$Link;->roadName_:Ljava/lang/String;

    .line 11288
    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    xor-int/2addr v3, v2

    iget-object v4, p3, Landroid/car/hardware/xpu/XpuProtoMessageVW$Link;->roadName_:Ljava/lang/String;

    .line 11287
    invoke-interface {p2, p1, v0, v3, v4}, Lcom/android/carsdk/protobuf/GeneratedMessageLite$Visitor;->visitString(ZLjava/lang/String;ZLjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$Link;->roadName_:Ljava/lang/String;

    .line 11289
    iget-boolean p1, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$Link;->hasMultiOut_:Z

    iget-boolean v0, p3, Landroid/car/hardware/xpu/XpuProtoMessageVW$Link;->hasMultiOut_:Z

    invoke-interface {p2, p1, p1, v0, v0}, Lcom/android/carsdk/protobuf/GeneratedMessageLite$Visitor;->visitBoolean(ZZZZ)Z

    move-result p1

    iput-boolean p1, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$Link;->hasMultiOut_:Z

    .line 11291
    iget-boolean p1, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$Link;->hasTrafficLight_:Z

    iget-boolean v0, p3, Landroid/car/hardware/xpu/XpuProtoMessageVW$Link;->hasTrafficLight_:Z

    invoke-interface {p2, p1, p1, v0, v0}, Lcom/android/carsdk/protobuf/GeneratedMessageLite$Visitor;->visitBoolean(ZZZZ)Z

    move-result p1

    iput-boolean p1, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$Link;->hasTrafficLight_:Z

    .line 11293
    iget-boolean p1, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$Link;->hasMixFork_:Z

    iget-boolean v0, p3, Landroid/car/hardware/xpu/XpuProtoMessageVW$Link;->hasMixFork_:Z

    invoke-interface {p2, p1, p1, v0, v0}, Lcom/android/carsdk/protobuf/GeneratedMessageLite$Visitor;->visitBoolean(ZZZZ)Z

    move-result p1

    iput-boolean p1, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$Link;->hasMixFork_:Z

    .line 11295
    iget-boolean p1, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$Link;->isAtService_:Z

    iget-boolean v0, p3, Landroid/car/hardware/xpu/XpuProtoMessageVW$Link;->isAtService_:Z

    invoke-interface {p2, p1, p1, v0, v0}, Lcom/android/carsdk/protobuf/GeneratedMessageLite$Visitor;->visitBoolean(ZZZZ)Z

    move-result p1

    iput-boolean p1, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$Link;->isAtService_:Z

    .line 11297
    iget p1, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$Link;->speed_:I

    if-eqz p1, :cond_1c

    move v0, v2

    goto :goto_19

    :cond_1c
    move v0, v1

    :goto_19
    iget v3, p3, Landroid/car/hardware/xpu/XpuProtoMessageVW$Link;->speed_:I

    if-eqz v3, :cond_1d

    move v4, v2

    goto :goto_1a

    :cond_1d
    move v4, v1

    :goto_1a
    invoke-interface {p2, v0, p1, v4, v3}, Lcom/android/carsdk/protobuf/GeneratedMessageLite$Visitor;->visitInt(ZIZI)I

    move-result p1

    iput p1, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$Link;->speed_:I

    .line 11299
    iget p1, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$Link;->roadFacilityCount_:I

    if-eqz p1, :cond_1e

    move v0, v2

    goto :goto_1b

    :cond_1e
    move v0, v1

    :goto_1b
    iget v3, p3, Landroid/car/hardware/xpu/XpuProtoMessageVW$Link;->roadFacilityCount_:I

    if-eqz v3, :cond_1f

    move v4, v2

    goto :goto_1c

    :cond_1f
    move v4, v1

    :goto_1c
    invoke-interface {p2, v0, p1, v4, v3}, Lcom/android/carsdk/protobuf/GeneratedMessageLite$Visitor;->visitInt(ZIZI)I

    move-result p1

    iput p1, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$Link;->roadFacilityCount_:I

    .line 11301
    iget-object p1, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$Link;->roadFacilities_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    iget-object v0, p3, Landroid/car/hardware/xpu/XpuProtoMessageVW$Link;->roadFacilities_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    invoke-interface {p2, p1, v0}, Lcom/android/carsdk/protobuf/GeneratedMessageLite$Visitor;->visitList(Lcom/android/carsdk/protobuf/Internal$ProtobufList;Lcom/android/carsdk/protobuf/Internal$ProtobufList;)Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    move-result-object p1

    iput-object p1, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$Link;->roadFacilities_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    .line 11302
    iget-object p1, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$Link;->roadSlopInfo_:Landroid/car/hardware/xpu/XpuProtoMessageVW$RoadSlopeInfo;

    iget-object v0, p3, Landroid/car/hardware/xpu/XpuProtoMessageVW$Link;->roadSlopInfo_:Landroid/car/hardware/xpu/XpuProtoMessageVW$RoadSlopeInfo;

    invoke-interface {p2, p1, v0}, Lcom/android/carsdk/protobuf/GeneratedMessageLite$Visitor;->visitMessage(Lcom/android/carsdk/protobuf/MessageLite;Lcom/android/carsdk/protobuf/MessageLite;)Lcom/android/carsdk/protobuf/MessageLite;

    move-result-object p1

    check-cast p1, Landroid/car/hardware/xpu/XpuProtoMessageVW$RoadSlopeInfo;

    iput-object p1, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$Link;->roadSlopInfo_:Landroid/car/hardware/xpu/XpuProtoMessageVW$RoadSlopeInfo;

    .line 11303
    iget-object p1, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$Link;->slopeInfos_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    iget-object v0, p3, Landroid/car/hardware/xpu/XpuProtoMessageVW$Link;->slopeInfos_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    invoke-interface {p2, p1, v0}, Lcom/android/carsdk/protobuf/GeneratedMessageLite$Visitor;->visitList(Lcom/android/carsdk/protobuf/Internal$ProtobufList;Lcom/android/carsdk/protobuf/Internal$ProtobufList;)Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    move-result-object p1

    iput-object p1, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$Link;->slopeInfos_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    .line 11304
    iget p1, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$Link;->assistantAction_:I

    if-eqz p1, :cond_20

    move v0, v2

    goto :goto_1d

    :cond_20
    move v0, v1

    :goto_1d
    iget v3, p3, Landroid/car/hardware/xpu/XpuProtoMessageVW$Link;->assistantAction_:I

    if-eqz v3, :cond_21

    move v4, v2

    goto :goto_1e

    :cond_21
    move v4, v1

    :goto_1e
    invoke-interface {p2, v0, p1, v4, v3}, Lcom/android/carsdk/protobuf/GeneratedMessageLite$Visitor;->visitInt(ZIZI)I

    move-result p1

    iput p1, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$Link;->assistantAction_:I

    .line 11306
    iget p1, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$Link;->mainAction_:I

    if-eqz p1, :cond_22

    move v0, v2

    goto :goto_1f

    :cond_22
    move v0, v1

    :goto_1f
    iget v3, p3, Landroid/car/hardware/xpu/XpuProtoMessageVW$Link;->mainAction_:I

    if-eqz v3, :cond_23

    move v1, v2

    :cond_23
    invoke-interface {p2, v0, p1, v1, v3}, Lcom/android/carsdk/protobuf/GeneratedMessageLite$Visitor;->visitInt(ZIZI)I

    move-result p1

    iput p1, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$Link;->mainAction_:I

    .line 11308
    iget-object p1, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$Link;->cameras_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    iget-object v0, p3, Landroid/car/hardware/xpu/XpuProtoMessageVW$Link;->cameras_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    invoke-interface {p2, p1, v0}, Lcom/android/carsdk/protobuf/GeneratedMessageLite$Visitor;->visitList(Lcom/android/carsdk/protobuf/Internal$ProtobufList;Lcom/android/carsdk/protobuf/Internal$ProtobufList;)Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    move-result-object p1

    iput-object p1, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$Link;->cameras_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    .line 11309
    sget-object p1, Lcom/android/carsdk/protobuf/GeneratedMessageLite$MergeFromVisitor;->INSTANCE:Lcom/android/carsdk/protobuf/GeneratedMessageLite$MergeFromVisitor;

    if-ne p2, p1, :cond_24

    .line 11311
    iget p1, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$Link;->bitField0_:I

    iget p2, p3, Landroid/car/hardware/xpu/XpuProtoMessageVW$Link;->bitField0_:I

    or-int/2addr p1, p2

    iput p1, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$Link;->bitField0_:I

    :cond_24
    return-object p0

    .line 11258
    :pswitch_4
    new-instance p1, Landroid/car/hardware/xpu/XpuProtoMessageVW$Link$Builder;

    invoke-direct {p1, v0}, Landroid/car/hardware/xpu/XpuProtoMessageVW$Link$Builder;-><init>(Landroid/car/hardware/xpu/XpuProtoMessageVW$1;)V

    return-object p1

    .line 11251
    :pswitch_5
    iget-object p1, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$Link;->v2Points_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    invoke-interface {p1}, Lcom/android/carsdk/protobuf/Internal$ProtobufList;->makeImmutable()V

    .line 11252
    iget-object p1, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$Link;->roadFacilities_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    invoke-interface {p1}, Lcom/android/carsdk/protobuf/Internal$ProtobufList;->makeImmutable()V

    .line 11253
    iget-object p1, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$Link;->slopeInfos_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    invoke-interface {p1}, Lcom/android/carsdk/protobuf/Internal$ProtobufList;->makeImmutable()V

    .line 11254
    iget-object p1, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$Link;->cameras_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    invoke-interface {p1}, Lcom/android/carsdk/protobuf/Internal$ProtobufList;->makeImmutable()V

    return-object v0

    .line 11248
    :pswitch_6
    sget-object p1, Landroid/car/hardware/xpu/XpuProtoMessageVW$Link;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuProtoMessageVW$Link;

    return-object p1

    .line 11245
    :pswitch_7
    new-instance p1, Landroid/car/hardware/xpu/XpuProtoMessageVW$Link;

    invoke-direct {p1}, Landroid/car/hardware/xpu/XpuProtoMessageVW$Link;-><init>()V

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
        0x0 -> :sswitch_1a
        0x8 -> :sswitch_19
        0x10 -> :sswitch_18
        0x18 -> :sswitch_17
        0x20 -> :sswitch_16
        0x28 -> :sswitch_15
        0x30 -> :sswitch_14
        0x38 -> :sswitch_13
        0x40 -> :sswitch_12
        0x48 -> :sswitch_11
        0x52 -> :sswitch_10
        0x5a -> :sswitch_f
        0x61 -> :sswitch_e
        0x68 -> :sswitch_d
        0x72 -> :sswitch_c
        0x78 -> :sswitch_b
        0x80 -> :sswitch_a
        0x88 -> :sswitch_9
        0x90 -> :sswitch_8
        0x98 -> :sswitch_7
        0xa0 -> :sswitch_6
        0xaa -> :sswitch_5
        0xb2 -> :sswitch_4
        0xba -> :sswitch_3
        0xc0 -> :sswitch_2
        0xc8 -> :sswitch_1
        0xda -> :sswitch_0
    .end sparse-switch
.end method

.method public getAssistantAction()I
    .locals 1

    .line 9683
    iget v0, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$Link;->assistantAction_:I

    return v0
.end method

.method public getCameras(I)Landroid/car/hardware/xpu/XpuProtoMessageVW$Camera;
    .locals 1

    .line 9776
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$Link;->cameras_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1}, Lcom/android/carsdk/protobuf/Internal$ProtobufList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/car/hardware/xpu/XpuProtoMessageVW$Camera;

    return-object p1
.end method

.method public getCamerasCount()I
    .locals 1

    .line 9766
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$Link;->cameras_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    invoke-interface {v0}, Lcom/android/carsdk/protobuf/Internal$ProtobufList;->size()I

    move-result v0

    return v0
.end method

.method public getCamerasList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/car/hardware/xpu/XpuProtoMessageVW$Camera;",
            ">;"
        }
    .end annotation

    .line 9745
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$Link;->cameras_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    return-object v0
.end method

.method public getCamerasOrBuilder(I)Landroid/car/hardware/xpu/XpuProtoMessageVW$CameraOrBuilder;
    .locals 1

    .line 9787
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$Link;->cameras_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1}, Lcom/android/carsdk/protobuf/Internal$ProtobufList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/car/hardware/xpu/XpuProtoMessageVW$CameraOrBuilder;

    return-object p1
.end method

.method public getCamerasOrBuilderList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "+",
            "Landroid/car/hardware/xpu/XpuProtoMessageVW$CameraOrBuilder;",
            ">;"
        }
    .end annotation

    .line 9756
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$Link;->cameras_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    return-object v0
.end method

.method public getFormwayType()I
    .locals 1

    .line 8793
    iget v0, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$Link;->formwayType_:I

    return v0
.end method

.method public getHasMixFork()Z
    .locals 1

    .line 9299
    iget-boolean v0, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$Link;->hasMixFork_:Z

    return v0
.end method

.method public getHasMultiOut()Z
    .locals 1

    .line 9253
    iget-boolean v0, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$Link;->hasMultiOut_:Z

    return v0
.end method

.method public getHasParallelRoad()Z
    .locals 1

    .line 8862
    iget-boolean v0, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$Link;->hasParallelRoad_:Z

    return v0
.end method

.method public getHasTrafficLight()Z
    .locals 1

    .line 9276
    iget-boolean v0, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$Link;->hasTrafficLight_:Z

    return v0
.end method

.method public getHeightDiffData()Landroid/car/hardware/xpu/XpuProtoMessageVW$HeightDiffData;
    .locals 1

    .line 8960
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$Link;->heightDiffData_:Landroid/car/hardware/xpu/XpuProtoMessageVW$HeightDiffData;

    if-nez v0, :cond_0

    invoke-static {}, Landroid/car/hardware/xpu/XpuProtoMessageVW$HeightDiffData;->getDefaultInstance()Landroid/car/hardware/xpu/XpuProtoMessageVW$HeightDiffData;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public getId()J
    .locals 2

    .line 8747
    iget-wide v0, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$Link;->id_:J

    return-wide v0
.end method

.method public getIsAtService()Z
    .locals 1

    .line 9322
    iget-boolean v0, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$Link;->isAtService_:Z

    return v0
.end method

.method public getIsOverHead()Z
    .locals 1

    .line 8839
    iget-boolean v0, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$Link;->isOverHead_:Z

    return v0
.end method

.method public getLaneNum()I
    .locals 1

    .line 8931
    iget v0, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$Link;->laneNum_:I

    return v0
.end method

.method public getLength()D
    .locals 2

    .line 9126
    iget-wide v0, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$Link;->length_:D

    return-wide v0
.end method

.method public getLinkDirection()I
    .locals 1

    .line 8885
    iget v0, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$Link;->linkDirection_:I

    return v0
.end method

.method public getLinkType()I
    .locals 1

    .line 8770
    iget v0, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$Link;->linkType_:I

    return v0
.end method

.method public getMainAction()I
    .locals 1

    .line 9710
    iget v0, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$Link;->mainAction_:I

    return v0
.end method

.method public getOwnership()I
    .locals 1

    .line 9154
    iget v0, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$Link;->ownership_:I

    return v0
.end method

.method public getRoadClass()I
    .locals 1

    .line 8816
    iget v0, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$Link;->roadClass_:I

    return v0
.end method

.method public getRoadDirection()I
    .locals 1

    .line 8908
    iget v0, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$Link;->roadDirection_:I

    return v0
.end method

.method public getRoadFacilities(I)Landroid/car/hardware/xpu/XpuProtoMessageVW$RoadFacility;
    .locals 1

    .line 9410
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$Link;->roadFacilities_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1}, Lcom/android/carsdk/protobuf/Internal$ProtobufList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/car/hardware/xpu/XpuProtoMessageVW$RoadFacility;

    return-object p1
.end method

.method public getRoadFacilitiesCount()I
    .locals 1

    .line 9404
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$Link;->roadFacilities_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    invoke-interface {v0}, Lcom/android/carsdk/protobuf/Internal$ProtobufList;->size()I

    move-result v0

    return v0
.end method

.method public getRoadFacilitiesList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/car/hardware/xpu/XpuProtoMessageVW$RoadFacility;",
            ">;"
        }
    .end annotation

    .line 9391
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$Link;->roadFacilities_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    return-object v0
.end method

.method public getRoadFacilitiesOrBuilder(I)Landroid/car/hardware/xpu/XpuProtoMessageVW$RoadFacilityOrBuilder;
    .locals 1

    .line 9417
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$Link;->roadFacilities_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1}, Lcom/android/carsdk/protobuf/Internal$ProtobufList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/car/hardware/xpu/XpuProtoMessageVW$RoadFacilityOrBuilder;

    return-object p1
.end method

.method public getRoadFacilitiesOrBuilderList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "+",
            "Landroid/car/hardware/xpu/XpuProtoMessageVW$RoadFacilityOrBuilder;",
            ">;"
        }
    .end annotation

    .line 9398
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$Link;->roadFacilities_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    return-object v0
.end method

.method public getRoadFacilityCount()I
    .locals 1

    .line 9368
    iget v0, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$Link;->roadFacilityCount_:I

    return v0
.end method

.method public getRoadName()Ljava/lang/String;
    .locals 1

    .line 9191
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$Link;->roadName_:Ljava/lang/String;

    return-object v0
.end method

.method public getRoadNameBytes()Lcom/android/carsdk/protobuf/ByteString;
    .locals 1

    .line 9202
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$Link;->roadName_:Ljava/lang/String;

    invoke-static {v0}, Lcom/android/carsdk/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/android/carsdk/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getRoadSlopInfo()Landroid/car/hardware/xpu/XpuProtoMessageVW$RoadSlopeInfo;
    .locals 1

    .line 9517
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$Link;->roadSlopInfo_:Landroid/car/hardware/xpu/XpuProtoMessageVW$RoadSlopeInfo;

    if-nez v0, :cond_0

    invoke-static {}, Landroid/car/hardware/xpu/XpuProtoMessageVW$RoadSlopeInfo;->getDefaultInstance()Landroid/car/hardware/xpu/XpuProtoMessageVW$RoadSlopeInfo;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public getSerializedSize()I
    .locals 6

    .line 9994
    iget v0, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$Link;->memoizedSerializedSize:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    return v0

    .line 9998
    :cond_0
    iget-wide v0, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$Link;->id_:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    const/4 v3, 0x0

    if-eqz v2, :cond_1

    const/4 v2, 0x1

    .line 10000
    invoke-static {v2, v0, v1}, Lcom/android/carsdk/protobuf/CodedOutputStream;->computeInt64Size(IJ)I

    move-result v0

    add-int/2addr v0, v3

    goto :goto_0

    :cond_1
    move v0, v3

    .line 10002
    :goto_0
    iget v1, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$Link;->linkType_:I

    if-eqz v1, :cond_2

    const/4 v2, 0x2

    .line 10004
    invoke-static {v2, v1}, Lcom/android/carsdk/protobuf/CodedOutputStream;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 10006
    :cond_2
    iget v1, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$Link;->formwayType_:I

    if-eqz v1, :cond_3

    const/4 v2, 0x3

    .line 10008
    invoke-static {v2, v1}, Lcom/android/carsdk/protobuf/CodedOutputStream;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 10010
    :cond_3
    iget v1, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$Link;->roadClass_:I

    if-eqz v1, :cond_4

    const/4 v2, 0x4

    .line 10012
    invoke-static {v2, v1}, Lcom/android/carsdk/protobuf/CodedOutputStream;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 10014
    :cond_4
    iget-boolean v1, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$Link;->isOverHead_:Z

    if-eqz v1, :cond_5

    const/4 v2, 0x5

    .line 10016
    invoke-static {v2, v1}, Lcom/android/carsdk/protobuf/CodedOutputStream;->computeBoolSize(IZ)I

    move-result v1

    add-int/2addr v0, v1

    .line 10018
    :cond_5
    iget-boolean v1, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$Link;->hasParallelRoad_:Z

    if-eqz v1, :cond_6

    const/4 v2, 0x6

    .line 10020
    invoke-static {v2, v1}, Lcom/android/carsdk/protobuf/CodedOutputStream;->computeBoolSize(IZ)I

    move-result v1

    add-int/2addr v0, v1

    .line 10022
    :cond_6
    iget v1, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$Link;->linkDirection_:I

    if-eqz v1, :cond_7

    const/4 v2, 0x7

    .line 10024
    invoke-static {v2, v1}, Lcom/android/carsdk/protobuf/CodedOutputStream;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 10026
    :cond_7
    iget v1, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$Link;->roadDirection_:I

    if-eqz v1, :cond_8

    const/16 v2, 0x8

    .line 10028
    invoke-static {v2, v1}, Lcom/android/carsdk/protobuf/CodedOutputStream;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 10030
    :cond_8
    iget v1, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$Link;->laneNum_:I

    if-eqz v1, :cond_9

    const/16 v2, 0x9

    .line 10032
    invoke-static {v2, v1}, Lcom/android/carsdk/protobuf/CodedOutputStream;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 10034
    :cond_9
    iget-object v1, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$Link;->heightDiffData_:Landroid/car/hardware/xpu/XpuProtoMessageVW$HeightDiffData;

    if-eqz v1, :cond_a

    const/16 v1, 0xa

    .line 10036
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuProtoMessageVW$Link;->getHeightDiffData()Landroid/car/hardware/xpu/XpuProtoMessageVW$HeightDiffData;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/carsdk/protobuf/CodedOutputStream;->computeMessageSize(ILcom/android/carsdk/protobuf/MessageLite;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_a
    move v1, v3

    .line 10038
    :goto_1
    iget-object v2, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$Link;->v2Points_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    invoke-interface {v2}, Lcom/android/carsdk/protobuf/Internal$ProtobufList;->size()I

    move-result v2

    if-ge v1, v2, :cond_b

    const/16 v2, 0xb

    .line 10039
    iget-object v4, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$Link;->v2Points_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    .line 10040
    invoke-interface {v4, v1}, Lcom/android/carsdk/protobuf/Internal$ProtobufList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/carsdk/protobuf/MessageLite;

    invoke-static {v2, v4}, Lcom/android/carsdk/protobuf/CodedOutputStream;->computeMessageSize(ILcom/android/carsdk/protobuf/MessageLite;)I

    move-result v2

    add-int/2addr v0, v2

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 10042
    :cond_b
    iget-wide v1, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$Link;->length_:D

    const-wide/16 v4, 0x0

    cmpl-double v4, v1, v4

    if-eqz v4, :cond_c

    const/16 v4, 0xc

    .line 10044
    invoke-static {v4, v1, v2}, Lcom/android/carsdk/protobuf/CodedOutputStream;->computeDoubleSize(ID)I

    move-result v1

    add-int/2addr v0, v1

    .line 10046
    :cond_c
    iget v1, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$Link;->ownership_:I

    if-eqz v1, :cond_d

    const/16 v2, 0xd

    .line 10048
    invoke-static {v2, v1}, Lcom/android/carsdk/protobuf/CodedOutputStream;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 10050
    :cond_d
    iget-object v1, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$Link;->roadName_:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_e

    const/16 v1, 0xe

    .line 10052
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuProtoMessageVW$Link;->getRoadName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/carsdk/protobuf/CodedOutputStream;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 10054
    :cond_e
    iget-boolean v1, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$Link;->hasMultiOut_:Z

    if-eqz v1, :cond_f

    const/16 v2, 0xf

    .line 10056
    invoke-static {v2, v1}, Lcom/android/carsdk/protobuf/CodedOutputStream;->computeBoolSize(IZ)I

    move-result v1

    add-int/2addr v0, v1

    .line 10058
    :cond_f
    iget-boolean v1, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$Link;->hasTrafficLight_:Z

    if-eqz v1, :cond_10

    const/16 v2, 0x10

    .line 10060
    invoke-static {v2, v1}, Lcom/android/carsdk/protobuf/CodedOutputStream;->computeBoolSize(IZ)I

    move-result v1

    add-int/2addr v0, v1

    .line 10062
    :cond_10
    iget-boolean v1, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$Link;->hasMixFork_:Z

    if-eqz v1, :cond_11

    const/16 v2, 0x11

    .line 10064
    invoke-static {v2, v1}, Lcom/android/carsdk/protobuf/CodedOutputStream;->computeBoolSize(IZ)I

    move-result v1

    add-int/2addr v0, v1

    .line 10066
    :cond_11
    iget-boolean v1, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$Link;->isAtService_:Z

    if-eqz v1, :cond_12

    const/16 v2, 0x12

    .line 10068
    invoke-static {v2, v1}, Lcom/android/carsdk/protobuf/CodedOutputStream;->computeBoolSize(IZ)I

    move-result v1

    add-int/2addr v0, v1

    .line 10070
    :cond_12
    iget v1, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$Link;->speed_:I

    if-eqz v1, :cond_13

    const/16 v2, 0x13

    .line 10072
    invoke-static {v2, v1}, Lcom/android/carsdk/protobuf/CodedOutputStream;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 10074
    :cond_13
    iget v1, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$Link;->roadFacilityCount_:I

    if-eqz v1, :cond_14

    const/16 v2, 0x14

    .line 10076
    invoke-static {v2, v1}, Lcom/android/carsdk/protobuf/CodedOutputStream;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    :cond_14
    move v1, v3

    .line 10078
    :goto_2
    iget-object v2, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$Link;->roadFacilities_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    invoke-interface {v2}, Lcom/android/carsdk/protobuf/Internal$ProtobufList;->size()I

    move-result v2

    if-ge v1, v2, :cond_15

    const/16 v2, 0x15

    .line 10079
    iget-object v4, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$Link;->roadFacilities_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    .line 10080
    invoke-interface {v4, v1}, Lcom/android/carsdk/protobuf/Internal$ProtobufList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/carsdk/protobuf/MessageLite;

    invoke-static {v2, v4}, Lcom/android/carsdk/protobuf/CodedOutputStream;->computeMessageSize(ILcom/android/carsdk/protobuf/MessageLite;)I

    move-result v2

    add-int/2addr v0, v2

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 10082
    :cond_15
    iget-object v1, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$Link;->roadSlopInfo_:Landroid/car/hardware/xpu/XpuProtoMessageVW$RoadSlopeInfo;

    if-eqz v1, :cond_16

    const/16 v1, 0x16

    .line 10084
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuProtoMessageVW$Link;->getRoadSlopInfo()Landroid/car/hardware/xpu/XpuProtoMessageVW$RoadSlopeInfo;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/carsdk/protobuf/CodedOutputStream;->computeMessageSize(ILcom/android/carsdk/protobuf/MessageLite;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_16
    move v1, v3

    .line 10086
    :goto_3
    iget-object v2, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$Link;->slopeInfos_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    invoke-interface {v2}, Lcom/android/carsdk/protobuf/Internal$ProtobufList;->size()I

    move-result v2

    if-ge v1, v2, :cond_17

    const/16 v2, 0x17

    .line 10087
    iget-object v4, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$Link;->slopeInfos_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    .line 10088
    invoke-interface {v4, v1}, Lcom/android/carsdk/protobuf/Internal$ProtobufList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/carsdk/protobuf/MessageLite;

    invoke-static {v2, v4}, Lcom/android/carsdk/protobuf/CodedOutputStream;->computeMessageSize(ILcom/android/carsdk/protobuf/MessageLite;)I

    move-result v2

    add-int/2addr v0, v2

    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 10090
    :cond_17
    iget v1, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$Link;->assistantAction_:I

    if-eqz v1, :cond_18

    const/16 v2, 0x18

    .line 10092
    invoke-static {v2, v1}, Lcom/android/carsdk/protobuf/CodedOutputStream;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 10094
    :cond_18
    iget v1, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$Link;->mainAction_:I

    if-eqz v1, :cond_19

    const/16 v2, 0x19

    .line 10096
    invoke-static {v2, v1}, Lcom/android/carsdk/protobuf/CodedOutputStream;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 10098
    :cond_19
    :goto_4
    iget-object v1, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$Link;->cameras_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    invoke-interface {v1}, Lcom/android/carsdk/protobuf/Internal$ProtobufList;->size()I

    move-result v1

    if-ge v3, v1, :cond_1a

    const/16 v1, 0x1b

    .line 10099
    iget-object v2, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$Link;->cameras_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    .line 10100
    invoke-interface {v2, v3}, Lcom/android/carsdk/protobuf/Internal$ProtobufList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/carsdk/protobuf/MessageLite;

    invoke-static {v1, v2}, Lcom/android/carsdk/protobuf/CodedOutputStream;->computeMessageSize(ILcom/android/carsdk/protobuf/MessageLite;)I

    move-result v1

    add-int/2addr v0, v1

    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    .line 10102
    :cond_1a
    iput v0, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$Link;->memoizedSerializedSize:I

    return v0
.end method

.method public getSlopeInfos(I)Landroid/car/hardware/xpu/XpuProtoMessageVW$SlopeInfo;
    .locals 1

    .line 9582
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$Link;->slopeInfos_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1}, Lcom/android/carsdk/protobuf/Internal$ProtobufList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/car/hardware/xpu/XpuProtoMessageVW$SlopeInfo;

    return-object p1
.end method

.method public getSlopeInfosCount()I
    .locals 1

    .line 9576
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$Link;->slopeInfos_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    invoke-interface {v0}, Lcom/android/carsdk/protobuf/Internal$ProtobufList;->size()I

    move-result v0

    return v0
.end method

.method public getSlopeInfosList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/car/hardware/xpu/XpuProtoMessageVW$SlopeInfo;",
            ">;"
        }
    .end annotation

    .line 9563
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$Link;->slopeInfos_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    return-object v0
.end method

.method public getSlopeInfosOrBuilder(I)Landroid/car/hardware/xpu/XpuProtoMessageVW$SlopeInfoOrBuilder;
    .locals 1

    .line 9589
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$Link;->slopeInfos_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1}, Lcom/android/carsdk/protobuf/Internal$ProtobufList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/car/hardware/xpu/XpuProtoMessageVW$SlopeInfoOrBuilder;

    return-object p1
.end method

.method public getSlopeInfosOrBuilderList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "+",
            "Landroid/car/hardware/xpu/XpuProtoMessageVW$SlopeInfoOrBuilder;",
            ">;"
        }
    .end annotation

    .line 9570
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$Link;->slopeInfos_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    return-object v0
.end method

.method public getSpeed()I
    .locals 1

    .line 9345
    iget v0, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$Link;->speed_:I

    return v0
.end method

.method public getV2Points(I)Landroid/car/hardware/xpu/XpuProtoMessageVW$V2_Point;
    .locals 1

    .line 9025
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$Link;->v2Points_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1}, Lcom/android/carsdk/protobuf/Internal$ProtobufList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/car/hardware/xpu/XpuProtoMessageVW$V2_Point;

    return-object p1
.end method

.method public getV2PointsCount()I
    .locals 1

    .line 9019
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$Link;->v2Points_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    invoke-interface {v0}, Lcom/android/carsdk/protobuf/Internal$ProtobufList;->size()I

    move-result v0

    return v0
.end method

.method public getV2PointsList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/car/hardware/xpu/XpuProtoMessageVW$V2_Point;",
            ">;"
        }
    .end annotation

    .line 9006
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$Link;->v2Points_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    return-object v0
.end method

.method public getV2PointsOrBuilder(I)Landroid/car/hardware/xpu/XpuProtoMessageVW$V2_PointOrBuilder;
    .locals 1

    .line 9032
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$Link;->v2Points_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1}, Lcom/android/carsdk/protobuf/Internal$ProtobufList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/car/hardware/xpu/XpuProtoMessageVW$V2_PointOrBuilder;

    return-object p1
.end method

.method public getV2PointsOrBuilderList()Ljava/util/List;
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

    .line 9013
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$Link;->v2Points_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    return-object v0
.end method

.method public hasHeightDiffData()Z
    .locals 1

    .line 8954
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$Link;->heightDiffData_:Landroid/car/hardware/xpu/XpuProtoMessageVW$HeightDiffData;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasRoadSlopInfo()Z
    .locals 1

    .line 9511
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$Link;->roadSlopInfo_:Landroid/car/hardware/xpu/XpuProtoMessageVW$RoadSlopeInfo;

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

    .line 9913
    iget-wide v0, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$Link;->id_:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    .line 9914
    invoke-virtual {p1, v2, v0, v1}, Lcom/android/carsdk/protobuf/CodedOutputStream;->writeInt64(IJ)V

    .line 9916
    :cond_0
    iget v0, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$Link;->linkType_:I

    if-eqz v0, :cond_1

    const/4 v1, 0x2

    .line 9917
    invoke-virtual {p1, v1, v0}, Lcom/android/carsdk/protobuf/CodedOutputStream;->writeInt32(II)V

    .line 9919
    :cond_1
    iget v0, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$Link;->formwayType_:I

    if-eqz v0, :cond_2

    const/4 v1, 0x3

    .line 9920
    invoke-virtual {p1, v1, v0}, Lcom/android/carsdk/protobuf/CodedOutputStream;->writeInt32(II)V

    .line 9922
    :cond_2
    iget v0, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$Link;->roadClass_:I

    if-eqz v0, :cond_3

    const/4 v1, 0x4

    .line 9923
    invoke-virtual {p1, v1, v0}, Lcom/android/carsdk/protobuf/CodedOutputStream;->writeInt32(II)V

    .line 9925
    :cond_3
    iget-boolean v0, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$Link;->isOverHead_:Z

    if-eqz v0, :cond_4

    const/4 v1, 0x5

    .line 9926
    invoke-virtual {p1, v1, v0}, Lcom/android/carsdk/protobuf/CodedOutputStream;->writeBool(IZ)V

    .line 9928
    :cond_4
    iget-boolean v0, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$Link;->hasParallelRoad_:Z

    if-eqz v0, :cond_5

    const/4 v1, 0x6

    .line 9929
    invoke-virtual {p1, v1, v0}, Lcom/android/carsdk/protobuf/CodedOutputStream;->writeBool(IZ)V

    .line 9931
    :cond_5
    iget v0, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$Link;->linkDirection_:I

    if-eqz v0, :cond_6

    const/4 v1, 0x7

    .line 9932
    invoke-virtual {p1, v1, v0}, Lcom/android/carsdk/protobuf/CodedOutputStream;->writeInt32(II)V

    .line 9934
    :cond_6
    iget v0, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$Link;->roadDirection_:I

    if-eqz v0, :cond_7

    const/16 v1, 0x8

    .line 9935
    invoke-virtual {p1, v1, v0}, Lcom/android/carsdk/protobuf/CodedOutputStream;->writeInt32(II)V

    .line 9937
    :cond_7
    iget v0, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$Link;->laneNum_:I

    if-eqz v0, :cond_8

    const/16 v1, 0x9

    .line 9938
    invoke-virtual {p1, v1, v0}, Lcom/android/carsdk/protobuf/CodedOutputStream;->writeInt32(II)V

    .line 9940
    :cond_8
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$Link;->heightDiffData_:Landroid/car/hardware/xpu/XpuProtoMessageVW$HeightDiffData;

    if-eqz v0, :cond_9

    const/16 v0, 0xa

    .line 9941
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuProtoMessageVW$Link;->getHeightDiffData()Landroid/car/hardware/xpu/XpuProtoMessageVW$HeightDiffData;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/android/carsdk/protobuf/CodedOutputStream;->writeMessage(ILcom/android/carsdk/protobuf/MessageLite;)V

    :cond_9
    const/4 v0, 0x0

    move v1, v0

    .line 9943
    :goto_0
    iget-object v2, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$Link;->v2Points_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    invoke-interface {v2}, Lcom/android/carsdk/protobuf/Internal$ProtobufList;->size()I

    move-result v2

    if-ge v1, v2, :cond_a

    const/16 v2, 0xb

    .line 9944
    iget-object v3, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$Link;->v2Points_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    invoke-interface {v3, v1}, Lcom/android/carsdk/protobuf/Internal$ProtobufList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/carsdk/protobuf/MessageLite;

    invoke-virtual {p1, v2, v3}, Lcom/android/carsdk/protobuf/CodedOutputStream;->writeMessage(ILcom/android/carsdk/protobuf/MessageLite;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 9946
    :cond_a
    iget-wide v1, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$Link;->length_:D

    const-wide/16 v3, 0x0

    cmpl-double v3, v1, v3

    if-eqz v3, :cond_b

    const/16 v3, 0xc

    .line 9947
    invoke-virtual {p1, v3, v1, v2}, Lcom/android/carsdk/protobuf/CodedOutputStream;->writeDouble(ID)V

    .line 9949
    :cond_b
    iget v1, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$Link;->ownership_:I

    if-eqz v1, :cond_c

    const/16 v2, 0xd

    .line 9950
    invoke-virtual {p1, v2, v1}, Lcom/android/carsdk/protobuf/CodedOutputStream;->writeInt32(II)V

    .line 9952
    :cond_c
    iget-object v1, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$Link;->roadName_:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_d

    const/16 v1, 0xe

    .line 9953
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuProtoMessageVW$Link;->getRoadName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Lcom/android/carsdk/protobuf/CodedOutputStream;->writeString(ILjava/lang/String;)V

    .line 9955
    :cond_d
    iget-boolean v1, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$Link;->hasMultiOut_:Z

    if-eqz v1, :cond_e

    const/16 v2, 0xf

    .line 9956
    invoke-virtual {p1, v2, v1}, Lcom/android/carsdk/protobuf/CodedOutputStream;->writeBool(IZ)V

    .line 9958
    :cond_e
    iget-boolean v1, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$Link;->hasTrafficLight_:Z

    if-eqz v1, :cond_f

    const/16 v2, 0x10

    .line 9959
    invoke-virtual {p1, v2, v1}, Lcom/android/carsdk/protobuf/CodedOutputStream;->writeBool(IZ)V

    .line 9961
    :cond_f
    iget-boolean v1, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$Link;->hasMixFork_:Z

    if-eqz v1, :cond_10

    const/16 v2, 0x11

    .line 9962
    invoke-virtual {p1, v2, v1}, Lcom/android/carsdk/protobuf/CodedOutputStream;->writeBool(IZ)V

    .line 9964
    :cond_10
    iget-boolean v1, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$Link;->isAtService_:Z

    if-eqz v1, :cond_11

    const/16 v2, 0x12

    .line 9965
    invoke-virtual {p1, v2, v1}, Lcom/android/carsdk/protobuf/CodedOutputStream;->writeBool(IZ)V

    .line 9967
    :cond_11
    iget v1, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$Link;->speed_:I

    if-eqz v1, :cond_12

    const/16 v2, 0x13

    .line 9968
    invoke-virtual {p1, v2, v1}, Lcom/android/carsdk/protobuf/CodedOutputStream;->writeInt32(II)V

    .line 9970
    :cond_12
    iget v1, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$Link;->roadFacilityCount_:I

    if-eqz v1, :cond_13

    const/16 v2, 0x14

    .line 9971
    invoke-virtual {p1, v2, v1}, Lcom/android/carsdk/protobuf/CodedOutputStream;->writeInt32(II)V

    :cond_13
    move v1, v0

    .line 9973
    :goto_1
    iget-object v2, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$Link;->roadFacilities_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    invoke-interface {v2}, Lcom/android/carsdk/protobuf/Internal$ProtobufList;->size()I

    move-result v2

    if-ge v1, v2, :cond_14

    const/16 v2, 0x15

    .line 9974
    iget-object v3, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$Link;->roadFacilities_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    invoke-interface {v3, v1}, Lcom/android/carsdk/protobuf/Internal$ProtobufList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/carsdk/protobuf/MessageLite;

    invoke-virtual {p1, v2, v3}, Lcom/android/carsdk/protobuf/CodedOutputStream;->writeMessage(ILcom/android/carsdk/protobuf/MessageLite;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 9976
    :cond_14
    iget-object v1, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$Link;->roadSlopInfo_:Landroid/car/hardware/xpu/XpuProtoMessageVW$RoadSlopeInfo;

    if-eqz v1, :cond_15

    const/16 v1, 0x16

    .line 9977
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuProtoMessageVW$Link;->getRoadSlopInfo()Landroid/car/hardware/xpu/XpuProtoMessageVW$RoadSlopeInfo;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Lcom/android/carsdk/protobuf/CodedOutputStream;->writeMessage(ILcom/android/carsdk/protobuf/MessageLite;)V

    :cond_15
    move v1, v0

    .line 9979
    :goto_2
    iget-object v2, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$Link;->slopeInfos_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    invoke-interface {v2}, Lcom/android/carsdk/protobuf/Internal$ProtobufList;->size()I

    move-result v2

    if-ge v1, v2, :cond_16

    const/16 v2, 0x17

    .line 9980
    iget-object v3, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$Link;->slopeInfos_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    invoke-interface {v3, v1}, Lcom/android/carsdk/protobuf/Internal$ProtobufList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/carsdk/protobuf/MessageLite;

    invoke-virtual {p1, v2, v3}, Lcom/android/carsdk/protobuf/CodedOutputStream;->writeMessage(ILcom/android/carsdk/protobuf/MessageLite;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 9982
    :cond_16
    iget v1, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$Link;->assistantAction_:I

    if-eqz v1, :cond_17

    const/16 v2, 0x18

    .line 9983
    invoke-virtual {p1, v2, v1}, Lcom/android/carsdk/protobuf/CodedOutputStream;->writeInt32(II)V

    .line 9985
    :cond_17
    iget v1, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$Link;->mainAction_:I

    if-eqz v1, :cond_18

    const/16 v2, 0x19

    .line 9986
    invoke-virtual {p1, v2, v1}, Lcom/android/carsdk/protobuf/CodedOutputStream;->writeInt32(II)V

    .line 9988
    :cond_18
    :goto_3
    iget-object v1, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$Link;->cameras_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    invoke-interface {v1}, Lcom/android/carsdk/protobuf/Internal$ProtobufList;->size()I

    move-result v1

    if-ge v0, v1, :cond_19

    const/16 v1, 0x1b

    .line 9989
    iget-object v2, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$Link;->cameras_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    invoke-interface {v2, v0}, Lcom/android/carsdk/protobuf/Internal$ProtobufList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/carsdk/protobuf/MessageLite;

    invoke-virtual {p1, v1, v2}, Lcom/android/carsdk/protobuf/CodedOutputStream;->writeMessage(ILcom/android/carsdk/protobuf/MessageLite;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_19
    return-void
.end method
