.class public final Landroid/car/hardware/xpu/XpuProtoMessage$Link;
.super Lcom/android/carsdk/protobuf/GeneratedMessageLite;
.source "XpuProtoMessage.java"

# interfaces
.implements Landroid/car/hardware/xpu/XpuProtoMessage$LinkOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/car/hardware/xpu/XpuProtoMessage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Link"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/car/hardware/xpu/XpuProtoMessage$Link$Builder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/carsdk/protobuf/GeneratedMessageLite<",
        "Landroid/car/hardware/xpu/XpuProtoMessage$Link;",
        "Landroid/car/hardware/xpu/XpuProtoMessage$Link$Builder;",
        ">;",
        "Landroid/car/hardware/xpu/XpuProtoMessage$LinkOrBuilder;"
    }
.end annotation


# static fields
.field public static final ASSISTANT_ACTION_FIELD_NUMBER:I = 0x18

.field private static final DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuProtoMessage$Link;

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

.field public static final OWNERSHIP_FIELD_NUMBER:I = 0xd

.field private static volatile PARSER:Lcom/android/carsdk/protobuf/Parser; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/carsdk/protobuf/Parser<",
            "Landroid/car/hardware/xpu/XpuProtoMessage$Link;",
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

.field private formwayType_:I

.field private hasMixFork_:Z

.field private hasMultiOut_:Z

.field private hasParallelRoad_:Z

.field private hasTrafficLight_:Z

.field private heightDiffData_:Landroid/car/hardware/xpu/XpuProtoMessage$HeightDiffData;

.field private id_:J

.field private isAtService_:Z

.field private isOverHead_:Z

.field private laneNum_:I

.field private length_:D

.field private linkDirection_:I

.field private linkType_:I

.field private ownership_:I

.field private roadClass_:I

.field private roadDirection_:I

.field private roadFacilities_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/carsdk/protobuf/Internal$ProtobufList<",
            "Landroid/car/hardware/xpu/XpuProtoMessage$RoadFacility;",
            ">;"
        }
    .end annotation
.end field

.field private roadFacilityCount_:I

.field private roadName_:Ljava/lang/String;

.field private roadSlopInfo_:Landroid/car/hardware/xpu/XpuProtoMessage$RoadSlopeInfo;

.field private slopeInfos_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/carsdk/protobuf/Internal$ProtobufList<",
            "Landroid/car/hardware/xpu/XpuProtoMessage$SlopeInfo;",
            ">;"
        }
    .end annotation
.end field

.field private speed_:I

.field private v2Points_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/carsdk/protobuf/Internal$ProtobufList<",
            "Landroid/car/hardware/xpu/XpuProtoMessage$V2_Point;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 11329
    new-instance v0, Landroid/car/hardware/xpu/XpuProtoMessage$Link;

    invoke-direct {v0}, Landroid/car/hardware/xpu/XpuProtoMessage$Link;-><init>()V

    sput-object v0, Landroid/car/hardware/xpu/XpuProtoMessage$Link;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuProtoMessage$Link;

    .line 11330
    invoke-virtual {v0}, Landroid/car/hardware/xpu/XpuProtoMessage$Link;->makeImmutable()V

    return-void
.end method

.method private constructor <init>()V
    .locals 3

    .line 8940
    invoke-direct {p0}, Lcom/android/carsdk/protobuf/GeneratedMessageLite;-><init>()V

    const-wide/16 v0, 0x0

    .line 8941
    iput-wide v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$Link;->id_:J

    const/4 v0, 0x0

    .line 8942
    iput v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$Link;->linkType_:I

    .line 8943
    iput v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$Link;->formwayType_:I

    .line 8944
    iput v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$Link;->roadClass_:I

    .line 8945
    iput-boolean v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$Link;->isOverHead_:Z

    .line 8946
    iput-boolean v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$Link;->hasParallelRoad_:Z

    .line 8947
    iput v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$Link;->linkDirection_:I

    .line 8948
    iput v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$Link;->roadDirection_:I

    .line 8949
    iput v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$Link;->laneNum_:I

    .line 8950
    invoke-static {}, Landroid/car/hardware/xpu/XpuProtoMessage$Link;->emptyProtobufList()Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    move-result-object v1

    iput-object v1, p0, Landroid/car/hardware/xpu/XpuProtoMessage$Link;->v2Points_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    const-wide/16 v1, 0x0

    .line 8951
    iput-wide v1, p0, Landroid/car/hardware/xpu/XpuProtoMessage$Link;->length_:D

    .line 8952
    iput v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$Link;->ownership_:I

    const-string v1, ""

    .line 8953
    iput-object v1, p0, Landroid/car/hardware/xpu/XpuProtoMessage$Link;->roadName_:Ljava/lang/String;

    .line 8954
    iput-boolean v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$Link;->hasMultiOut_:Z

    .line 8955
    iput-boolean v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$Link;->hasTrafficLight_:Z

    .line 8956
    iput-boolean v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$Link;->hasMixFork_:Z

    .line 8957
    iput-boolean v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$Link;->isAtService_:Z

    .line 8958
    iput v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$Link;->speed_:I

    .line 8959
    iput v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$Link;->roadFacilityCount_:I

    .line 8960
    invoke-static {}, Landroid/car/hardware/xpu/XpuProtoMessage$Link;->emptyProtobufList()Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    move-result-object v1

    iput-object v1, p0, Landroid/car/hardware/xpu/XpuProtoMessage$Link;->roadFacilities_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    .line 8961
    invoke-static {}, Landroid/car/hardware/xpu/XpuProtoMessage$Link;->emptyProtobufList()Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    move-result-object v1

    iput-object v1, p0, Landroid/car/hardware/xpu/XpuProtoMessage$Link;->slopeInfos_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    .line 8962
    iput v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$Link;->assistantAction_:I

    return-void
.end method

.method static synthetic access$17100()Landroid/car/hardware/xpu/XpuProtoMessage$Link;
    .locals 1

    .line 8935
    sget-object v0, Landroid/car/hardware/xpu/XpuProtoMessage$Link;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuProtoMessage$Link;

    return-object v0
.end method

.method static synthetic access$17200(Landroid/car/hardware/xpu/XpuProtoMessage$Link;J)V
    .locals 0

    .line 8935
    invoke-direct {p0, p1, p2}, Landroid/car/hardware/xpu/XpuProtoMessage$Link;->setId(J)V

    return-void
.end method

.method static synthetic access$17300(Landroid/car/hardware/xpu/XpuProtoMessage$Link;)V
    .locals 0

    .line 8935
    invoke-direct {p0}, Landroid/car/hardware/xpu/XpuProtoMessage$Link;->clearId()V

    return-void
.end method

.method static synthetic access$17400(Landroid/car/hardware/xpu/XpuProtoMessage$Link;I)V
    .locals 0

    .line 8935
    invoke-direct {p0, p1}, Landroid/car/hardware/xpu/XpuProtoMessage$Link;->setLinkType(I)V

    return-void
.end method

.method static synthetic access$17500(Landroid/car/hardware/xpu/XpuProtoMessage$Link;)V
    .locals 0

    .line 8935
    invoke-direct {p0}, Landroid/car/hardware/xpu/XpuProtoMessage$Link;->clearLinkType()V

    return-void
.end method

.method static synthetic access$17600(Landroid/car/hardware/xpu/XpuProtoMessage$Link;I)V
    .locals 0

    .line 8935
    invoke-direct {p0, p1}, Landroid/car/hardware/xpu/XpuProtoMessage$Link;->setFormwayType(I)V

    return-void
.end method

.method static synthetic access$17700(Landroid/car/hardware/xpu/XpuProtoMessage$Link;)V
    .locals 0

    .line 8935
    invoke-direct {p0}, Landroid/car/hardware/xpu/XpuProtoMessage$Link;->clearFormwayType()V

    return-void
.end method

.method static synthetic access$17800(Landroid/car/hardware/xpu/XpuProtoMessage$Link;I)V
    .locals 0

    .line 8935
    invoke-direct {p0, p1}, Landroid/car/hardware/xpu/XpuProtoMessage$Link;->setRoadClass(I)V

    return-void
.end method

.method static synthetic access$17900(Landroid/car/hardware/xpu/XpuProtoMessage$Link;)V
    .locals 0

    .line 8935
    invoke-direct {p0}, Landroid/car/hardware/xpu/XpuProtoMessage$Link;->clearRoadClass()V

    return-void
.end method

.method static synthetic access$18000(Landroid/car/hardware/xpu/XpuProtoMessage$Link;Z)V
    .locals 0

    .line 8935
    invoke-direct {p0, p1}, Landroid/car/hardware/xpu/XpuProtoMessage$Link;->setIsOverHead(Z)V

    return-void
.end method

.method static synthetic access$18100(Landroid/car/hardware/xpu/XpuProtoMessage$Link;)V
    .locals 0

    .line 8935
    invoke-direct {p0}, Landroid/car/hardware/xpu/XpuProtoMessage$Link;->clearIsOverHead()V

    return-void
.end method

.method static synthetic access$18200(Landroid/car/hardware/xpu/XpuProtoMessage$Link;Z)V
    .locals 0

    .line 8935
    invoke-direct {p0, p1}, Landroid/car/hardware/xpu/XpuProtoMessage$Link;->setHasParallelRoad(Z)V

    return-void
.end method

.method static synthetic access$18300(Landroid/car/hardware/xpu/XpuProtoMessage$Link;)V
    .locals 0

    .line 8935
    invoke-direct {p0}, Landroid/car/hardware/xpu/XpuProtoMessage$Link;->clearHasParallelRoad()V

    return-void
.end method

.method static synthetic access$18400(Landroid/car/hardware/xpu/XpuProtoMessage$Link;I)V
    .locals 0

    .line 8935
    invoke-direct {p0, p1}, Landroid/car/hardware/xpu/XpuProtoMessage$Link;->setLinkDirection(I)V

    return-void
.end method

.method static synthetic access$18500(Landroid/car/hardware/xpu/XpuProtoMessage$Link;)V
    .locals 0

    .line 8935
    invoke-direct {p0}, Landroid/car/hardware/xpu/XpuProtoMessage$Link;->clearLinkDirection()V

    return-void
.end method

.method static synthetic access$18600(Landroid/car/hardware/xpu/XpuProtoMessage$Link;I)V
    .locals 0

    .line 8935
    invoke-direct {p0, p1}, Landroid/car/hardware/xpu/XpuProtoMessage$Link;->setRoadDirection(I)V

    return-void
.end method

.method static synthetic access$18700(Landroid/car/hardware/xpu/XpuProtoMessage$Link;)V
    .locals 0

    .line 8935
    invoke-direct {p0}, Landroid/car/hardware/xpu/XpuProtoMessage$Link;->clearRoadDirection()V

    return-void
.end method

.method static synthetic access$18800(Landroid/car/hardware/xpu/XpuProtoMessage$Link;I)V
    .locals 0

    .line 8935
    invoke-direct {p0, p1}, Landroid/car/hardware/xpu/XpuProtoMessage$Link;->setLaneNum(I)V

    return-void
.end method

.method static synthetic access$18900(Landroid/car/hardware/xpu/XpuProtoMessage$Link;)V
    .locals 0

    .line 8935
    invoke-direct {p0}, Landroid/car/hardware/xpu/XpuProtoMessage$Link;->clearLaneNum()V

    return-void
.end method

.method static synthetic access$19000(Landroid/car/hardware/xpu/XpuProtoMessage$Link;Landroid/car/hardware/xpu/XpuProtoMessage$HeightDiffData;)V
    .locals 0

    .line 8935
    invoke-direct {p0, p1}, Landroid/car/hardware/xpu/XpuProtoMessage$Link;->setHeightDiffData(Landroid/car/hardware/xpu/XpuProtoMessage$HeightDiffData;)V

    return-void
.end method

.method static synthetic access$19100(Landroid/car/hardware/xpu/XpuProtoMessage$Link;Landroid/car/hardware/xpu/XpuProtoMessage$HeightDiffData$Builder;)V
    .locals 0

    .line 8935
    invoke-direct {p0, p1}, Landroid/car/hardware/xpu/XpuProtoMessage$Link;->setHeightDiffData(Landroid/car/hardware/xpu/XpuProtoMessage$HeightDiffData$Builder;)V

    return-void
.end method

.method static synthetic access$19200(Landroid/car/hardware/xpu/XpuProtoMessage$Link;Landroid/car/hardware/xpu/XpuProtoMessage$HeightDiffData;)V
    .locals 0

    .line 8935
    invoke-direct {p0, p1}, Landroid/car/hardware/xpu/XpuProtoMessage$Link;->mergeHeightDiffData(Landroid/car/hardware/xpu/XpuProtoMessage$HeightDiffData;)V

    return-void
.end method

.method static synthetic access$19300(Landroid/car/hardware/xpu/XpuProtoMessage$Link;)V
    .locals 0

    .line 8935
    invoke-direct {p0}, Landroid/car/hardware/xpu/XpuProtoMessage$Link;->clearHeightDiffData()V

    return-void
.end method

.method static synthetic access$19400(Landroid/car/hardware/xpu/XpuProtoMessage$Link;ILandroid/car/hardware/xpu/XpuProtoMessage$V2_Point;)V
    .locals 0

    .line 8935
    invoke-direct {p0, p1, p2}, Landroid/car/hardware/xpu/XpuProtoMessage$Link;->setV2Points(ILandroid/car/hardware/xpu/XpuProtoMessage$V2_Point;)V

    return-void
.end method

.method static synthetic access$19500(Landroid/car/hardware/xpu/XpuProtoMessage$Link;ILandroid/car/hardware/xpu/XpuProtoMessage$V2_Point$Builder;)V
    .locals 0

    .line 8935
    invoke-direct {p0, p1, p2}, Landroid/car/hardware/xpu/XpuProtoMessage$Link;->setV2Points(ILandroid/car/hardware/xpu/XpuProtoMessage$V2_Point$Builder;)V

    return-void
.end method

.method static synthetic access$19600(Landroid/car/hardware/xpu/XpuProtoMessage$Link;Landroid/car/hardware/xpu/XpuProtoMessage$V2_Point;)V
    .locals 0

    .line 8935
    invoke-direct {p0, p1}, Landroid/car/hardware/xpu/XpuProtoMessage$Link;->addV2Points(Landroid/car/hardware/xpu/XpuProtoMessage$V2_Point;)V

    return-void
.end method

.method static synthetic access$19700(Landroid/car/hardware/xpu/XpuProtoMessage$Link;ILandroid/car/hardware/xpu/XpuProtoMessage$V2_Point;)V
    .locals 0

    .line 8935
    invoke-direct {p0, p1, p2}, Landroid/car/hardware/xpu/XpuProtoMessage$Link;->addV2Points(ILandroid/car/hardware/xpu/XpuProtoMessage$V2_Point;)V

    return-void
.end method

.method static synthetic access$19800(Landroid/car/hardware/xpu/XpuProtoMessage$Link;Landroid/car/hardware/xpu/XpuProtoMessage$V2_Point$Builder;)V
    .locals 0

    .line 8935
    invoke-direct {p0, p1}, Landroid/car/hardware/xpu/XpuProtoMessage$Link;->addV2Points(Landroid/car/hardware/xpu/XpuProtoMessage$V2_Point$Builder;)V

    return-void
.end method

.method static synthetic access$19900(Landroid/car/hardware/xpu/XpuProtoMessage$Link;ILandroid/car/hardware/xpu/XpuProtoMessage$V2_Point$Builder;)V
    .locals 0

    .line 8935
    invoke-direct {p0, p1, p2}, Landroid/car/hardware/xpu/XpuProtoMessage$Link;->addV2Points(ILandroid/car/hardware/xpu/XpuProtoMessage$V2_Point$Builder;)V

    return-void
.end method

.method static synthetic access$20000(Landroid/car/hardware/xpu/XpuProtoMessage$Link;Ljava/lang/Iterable;)V
    .locals 0

    .line 8935
    invoke-direct {p0, p1}, Landroid/car/hardware/xpu/XpuProtoMessage$Link;->addAllV2Points(Ljava/lang/Iterable;)V

    return-void
.end method

.method static synthetic access$20100(Landroid/car/hardware/xpu/XpuProtoMessage$Link;)V
    .locals 0

    .line 8935
    invoke-direct {p0}, Landroid/car/hardware/xpu/XpuProtoMessage$Link;->clearV2Points()V

    return-void
.end method

.method static synthetic access$20200(Landroid/car/hardware/xpu/XpuProtoMessage$Link;I)V
    .locals 0

    .line 8935
    invoke-direct {p0, p1}, Landroid/car/hardware/xpu/XpuProtoMessage$Link;->removeV2Points(I)V

    return-void
.end method

.method static synthetic access$20300(Landroid/car/hardware/xpu/XpuProtoMessage$Link;D)V
    .locals 0

    .line 8935
    invoke-direct {p0, p1, p2}, Landroid/car/hardware/xpu/XpuProtoMessage$Link;->setLength(D)V

    return-void
.end method

.method static synthetic access$20400(Landroid/car/hardware/xpu/XpuProtoMessage$Link;)V
    .locals 0

    .line 8935
    invoke-direct {p0}, Landroid/car/hardware/xpu/XpuProtoMessage$Link;->clearLength()V

    return-void
.end method

.method static synthetic access$20500(Landroid/car/hardware/xpu/XpuProtoMessage$Link;I)V
    .locals 0

    .line 8935
    invoke-direct {p0, p1}, Landroid/car/hardware/xpu/XpuProtoMessage$Link;->setOwnership(I)V

    return-void
.end method

.method static synthetic access$20600(Landroid/car/hardware/xpu/XpuProtoMessage$Link;)V
    .locals 0

    .line 8935
    invoke-direct {p0}, Landroid/car/hardware/xpu/XpuProtoMessage$Link;->clearOwnership()V

    return-void
.end method

.method static synthetic access$20700(Landroid/car/hardware/xpu/XpuProtoMessage$Link;Ljava/lang/String;)V
    .locals 0

    .line 8935
    invoke-direct {p0, p1}, Landroid/car/hardware/xpu/XpuProtoMessage$Link;->setRoadName(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$20800(Landroid/car/hardware/xpu/XpuProtoMessage$Link;)V
    .locals 0

    .line 8935
    invoke-direct {p0}, Landroid/car/hardware/xpu/XpuProtoMessage$Link;->clearRoadName()V

    return-void
.end method

.method static synthetic access$20900(Landroid/car/hardware/xpu/XpuProtoMessage$Link;Lcom/android/carsdk/protobuf/ByteString;)V
    .locals 0

    .line 8935
    invoke-direct {p0, p1}, Landroid/car/hardware/xpu/XpuProtoMessage$Link;->setRoadNameBytes(Lcom/android/carsdk/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$21000(Landroid/car/hardware/xpu/XpuProtoMessage$Link;Z)V
    .locals 0

    .line 8935
    invoke-direct {p0, p1}, Landroid/car/hardware/xpu/XpuProtoMessage$Link;->setHasMultiOut(Z)V

    return-void
.end method

.method static synthetic access$21100(Landroid/car/hardware/xpu/XpuProtoMessage$Link;)V
    .locals 0

    .line 8935
    invoke-direct {p0}, Landroid/car/hardware/xpu/XpuProtoMessage$Link;->clearHasMultiOut()V

    return-void
.end method

.method static synthetic access$21200(Landroid/car/hardware/xpu/XpuProtoMessage$Link;Z)V
    .locals 0

    .line 8935
    invoke-direct {p0, p1}, Landroid/car/hardware/xpu/XpuProtoMessage$Link;->setHasTrafficLight(Z)V

    return-void
.end method

.method static synthetic access$21300(Landroid/car/hardware/xpu/XpuProtoMessage$Link;)V
    .locals 0

    .line 8935
    invoke-direct {p0}, Landroid/car/hardware/xpu/XpuProtoMessage$Link;->clearHasTrafficLight()V

    return-void
.end method

.method static synthetic access$21400(Landroid/car/hardware/xpu/XpuProtoMessage$Link;Z)V
    .locals 0

    .line 8935
    invoke-direct {p0, p1}, Landroid/car/hardware/xpu/XpuProtoMessage$Link;->setHasMixFork(Z)V

    return-void
.end method

.method static synthetic access$21500(Landroid/car/hardware/xpu/XpuProtoMessage$Link;)V
    .locals 0

    .line 8935
    invoke-direct {p0}, Landroid/car/hardware/xpu/XpuProtoMessage$Link;->clearHasMixFork()V

    return-void
.end method

.method static synthetic access$21600(Landroid/car/hardware/xpu/XpuProtoMessage$Link;Z)V
    .locals 0

    .line 8935
    invoke-direct {p0, p1}, Landroid/car/hardware/xpu/XpuProtoMessage$Link;->setIsAtService(Z)V

    return-void
.end method

.method static synthetic access$21700(Landroid/car/hardware/xpu/XpuProtoMessage$Link;)V
    .locals 0

    .line 8935
    invoke-direct {p0}, Landroid/car/hardware/xpu/XpuProtoMessage$Link;->clearIsAtService()V

    return-void
.end method

.method static synthetic access$21800(Landroid/car/hardware/xpu/XpuProtoMessage$Link;I)V
    .locals 0

    .line 8935
    invoke-direct {p0, p1}, Landroid/car/hardware/xpu/XpuProtoMessage$Link;->setSpeed(I)V

    return-void
.end method

.method static synthetic access$21900(Landroid/car/hardware/xpu/XpuProtoMessage$Link;)V
    .locals 0

    .line 8935
    invoke-direct {p0}, Landroid/car/hardware/xpu/XpuProtoMessage$Link;->clearSpeed()V

    return-void
.end method

.method static synthetic access$22000(Landroid/car/hardware/xpu/XpuProtoMessage$Link;I)V
    .locals 0

    .line 8935
    invoke-direct {p0, p1}, Landroid/car/hardware/xpu/XpuProtoMessage$Link;->setRoadFacilityCount(I)V

    return-void
.end method

.method static synthetic access$22100(Landroid/car/hardware/xpu/XpuProtoMessage$Link;)V
    .locals 0

    .line 8935
    invoke-direct {p0}, Landroid/car/hardware/xpu/XpuProtoMessage$Link;->clearRoadFacilityCount()V

    return-void
.end method

.method static synthetic access$22200(Landroid/car/hardware/xpu/XpuProtoMessage$Link;ILandroid/car/hardware/xpu/XpuProtoMessage$RoadFacility;)V
    .locals 0

    .line 8935
    invoke-direct {p0, p1, p2}, Landroid/car/hardware/xpu/XpuProtoMessage$Link;->setRoadFacilities(ILandroid/car/hardware/xpu/XpuProtoMessage$RoadFacility;)V

    return-void
.end method

.method static synthetic access$22300(Landroid/car/hardware/xpu/XpuProtoMessage$Link;ILandroid/car/hardware/xpu/XpuProtoMessage$RoadFacility$Builder;)V
    .locals 0

    .line 8935
    invoke-direct {p0, p1, p2}, Landroid/car/hardware/xpu/XpuProtoMessage$Link;->setRoadFacilities(ILandroid/car/hardware/xpu/XpuProtoMessage$RoadFacility$Builder;)V

    return-void
.end method

.method static synthetic access$22400(Landroid/car/hardware/xpu/XpuProtoMessage$Link;Landroid/car/hardware/xpu/XpuProtoMessage$RoadFacility;)V
    .locals 0

    .line 8935
    invoke-direct {p0, p1}, Landroid/car/hardware/xpu/XpuProtoMessage$Link;->addRoadFacilities(Landroid/car/hardware/xpu/XpuProtoMessage$RoadFacility;)V

    return-void
.end method

.method static synthetic access$22500(Landroid/car/hardware/xpu/XpuProtoMessage$Link;ILandroid/car/hardware/xpu/XpuProtoMessage$RoadFacility;)V
    .locals 0

    .line 8935
    invoke-direct {p0, p1, p2}, Landroid/car/hardware/xpu/XpuProtoMessage$Link;->addRoadFacilities(ILandroid/car/hardware/xpu/XpuProtoMessage$RoadFacility;)V

    return-void
.end method

.method static synthetic access$22600(Landroid/car/hardware/xpu/XpuProtoMessage$Link;Landroid/car/hardware/xpu/XpuProtoMessage$RoadFacility$Builder;)V
    .locals 0

    .line 8935
    invoke-direct {p0, p1}, Landroid/car/hardware/xpu/XpuProtoMessage$Link;->addRoadFacilities(Landroid/car/hardware/xpu/XpuProtoMessage$RoadFacility$Builder;)V

    return-void
.end method

.method static synthetic access$22700(Landroid/car/hardware/xpu/XpuProtoMessage$Link;ILandroid/car/hardware/xpu/XpuProtoMessage$RoadFacility$Builder;)V
    .locals 0

    .line 8935
    invoke-direct {p0, p1, p2}, Landroid/car/hardware/xpu/XpuProtoMessage$Link;->addRoadFacilities(ILandroid/car/hardware/xpu/XpuProtoMessage$RoadFacility$Builder;)V

    return-void
.end method

.method static synthetic access$22800(Landroid/car/hardware/xpu/XpuProtoMessage$Link;Ljava/lang/Iterable;)V
    .locals 0

    .line 8935
    invoke-direct {p0, p1}, Landroid/car/hardware/xpu/XpuProtoMessage$Link;->addAllRoadFacilities(Ljava/lang/Iterable;)V

    return-void
.end method

.method static synthetic access$22900(Landroid/car/hardware/xpu/XpuProtoMessage$Link;)V
    .locals 0

    .line 8935
    invoke-direct {p0}, Landroid/car/hardware/xpu/XpuProtoMessage$Link;->clearRoadFacilities()V

    return-void
.end method

.method static synthetic access$23000(Landroid/car/hardware/xpu/XpuProtoMessage$Link;I)V
    .locals 0

    .line 8935
    invoke-direct {p0, p1}, Landroid/car/hardware/xpu/XpuProtoMessage$Link;->removeRoadFacilities(I)V

    return-void
.end method

.method static synthetic access$23100(Landroid/car/hardware/xpu/XpuProtoMessage$Link;Landroid/car/hardware/xpu/XpuProtoMessage$RoadSlopeInfo;)V
    .locals 0

    .line 8935
    invoke-direct {p0, p1}, Landroid/car/hardware/xpu/XpuProtoMessage$Link;->setRoadSlopInfo(Landroid/car/hardware/xpu/XpuProtoMessage$RoadSlopeInfo;)V

    return-void
.end method

.method static synthetic access$23200(Landroid/car/hardware/xpu/XpuProtoMessage$Link;Landroid/car/hardware/xpu/XpuProtoMessage$RoadSlopeInfo$Builder;)V
    .locals 0

    .line 8935
    invoke-direct {p0, p1}, Landroid/car/hardware/xpu/XpuProtoMessage$Link;->setRoadSlopInfo(Landroid/car/hardware/xpu/XpuProtoMessage$RoadSlopeInfo$Builder;)V

    return-void
.end method

.method static synthetic access$23300(Landroid/car/hardware/xpu/XpuProtoMessage$Link;Landroid/car/hardware/xpu/XpuProtoMessage$RoadSlopeInfo;)V
    .locals 0

    .line 8935
    invoke-direct {p0, p1}, Landroid/car/hardware/xpu/XpuProtoMessage$Link;->mergeRoadSlopInfo(Landroid/car/hardware/xpu/XpuProtoMessage$RoadSlopeInfo;)V

    return-void
.end method

.method static synthetic access$23400(Landroid/car/hardware/xpu/XpuProtoMessage$Link;)V
    .locals 0

    .line 8935
    invoke-direct {p0}, Landroid/car/hardware/xpu/XpuProtoMessage$Link;->clearRoadSlopInfo()V

    return-void
.end method

.method static synthetic access$23500(Landroid/car/hardware/xpu/XpuProtoMessage$Link;ILandroid/car/hardware/xpu/XpuProtoMessage$SlopeInfo;)V
    .locals 0

    .line 8935
    invoke-direct {p0, p1, p2}, Landroid/car/hardware/xpu/XpuProtoMessage$Link;->setSlopeInfos(ILandroid/car/hardware/xpu/XpuProtoMessage$SlopeInfo;)V

    return-void
.end method

.method static synthetic access$23600(Landroid/car/hardware/xpu/XpuProtoMessage$Link;ILandroid/car/hardware/xpu/XpuProtoMessage$SlopeInfo$Builder;)V
    .locals 0

    .line 8935
    invoke-direct {p0, p1, p2}, Landroid/car/hardware/xpu/XpuProtoMessage$Link;->setSlopeInfos(ILandroid/car/hardware/xpu/XpuProtoMessage$SlopeInfo$Builder;)V

    return-void
.end method

.method static synthetic access$23700(Landroid/car/hardware/xpu/XpuProtoMessage$Link;Landroid/car/hardware/xpu/XpuProtoMessage$SlopeInfo;)V
    .locals 0

    .line 8935
    invoke-direct {p0, p1}, Landroid/car/hardware/xpu/XpuProtoMessage$Link;->addSlopeInfos(Landroid/car/hardware/xpu/XpuProtoMessage$SlopeInfo;)V

    return-void
.end method

.method static synthetic access$23800(Landroid/car/hardware/xpu/XpuProtoMessage$Link;ILandroid/car/hardware/xpu/XpuProtoMessage$SlopeInfo;)V
    .locals 0

    .line 8935
    invoke-direct {p0, p1, p2}, Landroid/car/hardware/xpu/XpuProtoMessage$Link;->addSlopeInfos(ILandroid/car/hardware/xpu/XpuProtoMessage$SlopeInfo;)V

    return-void
.end method

.method static synthetic access$23900(Landroid/car/hardware/xpu/XpuProtoMessage$Link;Landroid/car/hardware/xpu/XpuProtoMessage$SlopeInfo$Builder;)V
    .locals 0

    .line 8935
    invoke-direct {p0, p1}, Landroid/car/hardware/xpu/XpuProtoMessage$Link;->addSlopeInfos(Landroid/car/hardware/xpu/XpuProtoMessage$SlopeInfo$Builder;)V

    return-void
.end method

.method static synthetic access$24000(Landroid/car/hardware/xpu/XpuProtoMessage$Link;ILandroid/car/hardware/xpu/XpuProtoMessage$SlopeInfo$Builder;)V
    .locals 0

    .line 8935
    invoke-direct {p0, p1, p2}, Landroid/car/hardware/xpu/XpuProtoMessage$Link;->addSlopeInfos(ILandroid/car/hardware/xpu/XpuProtoMessage$SlopeInfo$Builder;)V

    return-void
.end method

.method static synthetic access$24100(Landroid/car/hardware/xpu/XpuProtoMessage$Link;Ljava/lang/Iterable;)V
    .locals 0

    .line 8935
    invoke-direct {p0, p1}, Landroid/car/hardware/xpu/XpuProtoMessage$Link;->addAllSlopeInfos(Ljava/lang/Iterable;)V

    return-void
.end method

.method static synthetic access$24200(Landroid/car/hardware/xpu/XpuProtoMessage$Link;)V
    .locals 0

    .line 8935
    invoke-direct {p0}, Landroid/car/hardware/xpu/XpuProtoMessage$Link;->clearSlopeInfos()V

    return-void
.end method

.method static synthetic access$24300(Landroid/car/hardware/xpu/XpuProtoMessage$Link;I)V
    .locals 0

    .line 8935
    invoke-direct {p0, p1}, Landroid/car/hardware/xpu/XpuProtoMessage$Link;->removeSlopeInfos(I)V

    return-void
.end method

.method static synthetic access$24400(Landroid/car/hardware/xpu/XpuProtoMessage$Link;I)V
    .locals 0

    .line 8935
    invoke-direct {p0, p1}, Landroid/car/hardware/xpu/XpuProtoMessage$Link;->setAssistantAction(I)V

    return-void
.end method

.method static synthetic access$24500(Landroid/car/hardware/xpu/XpuProtoMessage$Link;)V
    .locals 0

    .line 8935
    invoke-direct {p0}, Landroid/car/hardware/xpu/XpuProtoMessage$Link;->clearAssistantAction()V

    return-void
.end method

.method private addAllRoadFacilities(Ljava/lang/Iterable;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Landroid/car/hardware/xpu/XpuProtoMessage$RoadFacility;",
            ">;)V"
        }
    .end annotation

    .line 9711
    invoke-direct {p0}, Landroid/car/hardware/xpu/XpuProtoMessage$Link;->ensureRoadFacilitiesIsMutable()V

    .line 9712
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$Link;->roadFacilities_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

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
            "Landroid/car/hardware/xpu/XpuProtoMessage$SlopeInfo;",
            ">;)V"
        }
    .end annotation

    .line 9883
    invoke-direct {p0}, Landroid/car/hardware/xpu/XpuProtoMessage$Link;->ensureSlopeInfosIsMutable()V

    .line 9884
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$Link;->slopeInfos_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

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
            "Landroid/car/hardware/xpu/XpuProtoMessage$V2_Point;",
            ">;)V"
        }
    .end annotation

    .line 9326
    invoke-direct {p0}, Landroid/car/hardware/xpu/XpuProtoMessage$Link;->ensureV2PointsIsMutable()V

    .line 9327
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$Link;->v2Points_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    invoke-static {p1, v0}, Lcom/android/carsdk/protobuf/AbstractMessageLite;->addAll(Ljava/lang/Iterable;Ljava/util/Collection;)V

    return-void
.end method

.method private addRoadFacilities(ILandroid/car/hardware/xpu/XpuProtoMessage$RoadFacility$Builder;)V
    .locals 1

    .line 9703
    invoke-direct {p0}, Landroid/car/hardware/xpu/XpuProtoMessage$Link;->ensureRoadFacilitiesIsMutable()V

    .line 9704
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$Link;->roadFacilities_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    invoke-virtual {p2}, Landroid/car/hardware/xpu/XpuProtoMessage$RoadFacility$Builder;->build()Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object p2

    check-cast p2, Landroid/car/hardware/xpu/XpuProtoMessage$RoadFacility;

    invoke-interface {v0, p1, p2}, Lcom/android/carsdk/protobuf/Internal$ProtobufList;->add(ILjava/lang/Object;)V

    return-void
.end method

.method private addRoadFacilities(ILandroid/car/hardware/xpu/XpuProtoMessage$RoadFacility;)V
    .locals 1

    .line 9685
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 9687
    invoke-direct {p0}, Landroid/car/hardware/xpu/XpuProtoMessage$Link;->ensureRoadFacilitiesIsMutable()V

    .line 9688
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$Link;->roadFacilities_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1, p2}, Lcom/android/carsdk/protobuf/Internal$ProtobufList;->add(ILjava/lang/Object;)V

    return-void
.end method

.method private addRoadFacilities(Landroid/car/hardware/xpu/XpuProtoMessage$RoadFacility$Builder;)V
    .locals 1

    .line 9695
    invoke-direct {p0}, Landroid/car/hardware/xpu/XpuProtoMessage$Link;->ensureRoadFacilitiesIsMutable()V

    .line 9696
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$Link;->roadFacilities_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    invoke-virtual {p1}, Landroid/car/hardware/xpu/XpuProtoMessage$RoadFacility$Builder;->build()Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Landroid/car/hardware/xpu/XpuProtoMessage$RoadFacility;

    invoke-interface {v0, p1}, Lcom/android/carsdk/protobuf/Internal$ProtobufList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private addRoadFacilities(Landroid/car/hardware/xpu/XpuProtoMessage$RoadFacility;)V
    .locals 1

    .line 9674
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 9676
    invoke-direct {p0}, Landroid/car/hardware/xpu/XpuProtoMessage$Link;->ensureRoadFacilitiesIsMutable()V

    .line 9677
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$Link;->roadFacilities_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1}, Lcom/android/carsdk/protobuf/Internal$ProtobufList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private addSlopeInfos(ILandroid/car/hardware/xpu/XpuProtoMessage$SlopeInfo$Builder;)V
    .locals 1

    .line 9875
    invoke-direct {p0}, Landroid/car/hardware/xpu/XpuProtoMessage$Link;->ensureSlopeInfosIsMutable()V

    .line 9876
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$Link;->slopeInfos_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    invoke-virtual {p2}, Landroid/car/hardware/xpu/XpuProtoMessage$SlopeInfo$Builder;->build()Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object p2

    check-cast p2, Landroid/car/hardware/xpu/XpuProtoMessage$SlopeInfo;

    invoke-interface {v0, p1, p2}, Lcom/android/carsdk/protobuf/Internal$ProtobufList;->add(ILjava/lang/Object;)V

    return-void
.end method

.method private addSlopeInfos(ILandroid/car/hardware/xpu/XpuProtoMessage$SlopeInfo;)V
    .locals 1

    .line 9857
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 9859
    invoke-direct {p0}, Landroid/car/hardware/xpu/XpuProtoMessage$Link;->ensureSlopeInfosIsMutable()V

    .line 9860
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$Link;->slopeInfos_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1, p2}, Lcom/android/carsdk/protobuf/Internal$ProtobufList;->add(ILjava/lang/Object;)V

    return-void
.end method

.method private addSlopeInfos(Landroid/car/hardware/xpu/XpuProtoMessage$SlopeInfo$Builder;)V
    .locals 1

    .line 9867
    invoke-direct {p0}, Landroid/car/hardware/xpu/XpuProtoMessage$Link;->ensureSlopeInfosIsMutable()V

    .line 9868
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$Link;->slopeInfos_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    invoke-virtual {p1}, Landroid/car/hardware/xpu/XpuProtoMessage$SlopeInfo$Builder;->build()Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Landroid/car/hardware/xpu/XpuProtoMessage$SlopeInfo;

    invoke-interface {v0, p1}, Lcom/android/carsdk/protobuf/Internal$ProtobufList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private addSlopeInfos(Landroid/car/hardware/xpu/XpuProtoMessage$SlopeInfo;)V
    .locals 1

    .line 9846
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 9848
    invoke-direct {p0}, Landroid/car/hardware/xpu/XpuProtoMessage$Link;->ensureSlopeInfosIsMutable()V

    .line 9849
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$Link;->slopeInfos_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1}, Lcom/android/carsdk/protobuf/Internal$ProtobufList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private addV2Points(ILandroid/car/hardware/xpu/XpuProtoMessage$V2_Point$Builder;)V
    .locals 1

    .line 9318
    invoke-direct {p0}, Landroid/car/hardware/xpu/XpuProtoMessage$Link;->ensureV2PointsIsMutable()V

    .line 9319
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$Link;->v2Points_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    invoke-virtual {p2}, Landroid/car/hardware/xpu/XpuProtoMessage$V2_Point$Builder;->build()Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object p2

    check-cast p2, Landroid/car/hardware/xpu/XpuProtoMessage$V2_Point;

    invoke-interface {v0, p1, p2}, Lcom/android/carsdk/protobuf/Internal$ProtobufList;->add(ILjava/lang/Object;)V

    return-void
.end method

.method private addV2Points(ILandroid/car/hardware/xpu/XpuProtoMessage$V2_Point;)V
    .locals 1

    .line 9300
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 9302
    invoke-direct {p0}, Landroid/car/hardware/xpu/XpuProtoMessage$Link;->ensureV2PointsIsMutable()V

    .line 9303
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$Link;->v2Points_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1, p2}, Lcom/android/carsdk/protobuf/Internal$ProtobufList;->add(ILjava/lang/Object;)V

    return-void
.end method

.method private addV2Points(Landroid/car/hardware/xpu/XpuProtoMessage$V2_Point$Builder;)V
    .locals 1

    .line 9310
    invoke-direct {p0}, Landroid/car/hardware/xpu/XpuProtoMessage$Link;->ensureV2PointsIsMutable()V

    .line 9311
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$Link;->v2Points_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    invoke-virtual {p1}, Landroid/car/hardware/xpu/XpuProtoMessage$V2_Point$Builder;->build()Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Landroid/car/hardware/xpu/XpuProtoMessage$V2_Point;

    invoke-interface {v0, p1}, Lcom/android/carsdk/protobuf/Internal$ProtobufList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private addV2Points(Landroid/car/hardware/xpu/XpuProtoMessage$V2_Point;)V
    .locals 1

    .line 9289
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 9291
    invoke-direct {p0}, Landroid/car/hardware/xpu/XpuProtoMessage$Link;->ensureV2PointsIsMutable()V

    .line 9292
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$Link;->v2Points_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1}, Lcom/android/carsdk/protobuf/Internal$ProtobufList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private clearAssistantAction()V
    .locals 1

    const/4 v0, 0x0

    .line 9921
    iput v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$Link;->assistantAction_:I

    return-void
.end method

.method private clearFormwayType()V
    .locals 1

    const/4 v0, 0x0

    .line 9031
    iput v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$Link;->formwayType_:I

    return-void
.end method

.method private clearHasMixFork()V
    .locals 1

    const/4 v0, 0x0

    .line 9537
    iput-boolean v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$Link;->hasMixFork_:Z

    return-void
.end method

.method private clearHasMultiOut()V
    .locals 1

    const/4 v0, 0x0

    .line 9491
    iput-boolean v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$Link;->hasMultiOut_:Z

    return-void
.end method

.method private clearHasParallelRoad()V
    .locals 1

    const/4 v0, 0x0

    .line 9100
    iput-boolean v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$Link;->hasParallelRoad_:Z

    return-void
.end method

.method private clearHasTrafficLight()V
    .locals 1

    const/4 v0, 0x0

    .line 9514
    iput-boolean v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$Link;->hasTrafficLight_:Z

    return-void
.end method

.method private clearHeightDiffData()V
    .locals 1

    const/4 v0, 0x0

    .line 9220
    iput-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$Link;->heightDiffData_:Landroid/car/hardware/xpu/XpuProtoMessage$HeightDiffData;

    return-void
.end method

.method private clearId()V
    .locals 2

    const-wide/16 v0, 0x0

    .line 8985
    iput-wide v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$Link;->id_:J

    return-void
.end method

.method private clearIsAtService()V
    .locals 1

    const/4 v0, 0x0

    .line 9560
    iput-boolean v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$Link;->isAtService_:Z

    return-void
.end method

.method private clearIsOverHead()V
    .locals 1

    const/4 v0, 0x0

    .line 9077
    iput-boolean v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$Link;->isOverHead_:Z

    return-void
.end method

.method private clearLaneNum()V
    .locals 1

    const/4 v0, 0x0

    .line 9169
    iput v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$Link;->laneNum_:I

    return-void
.end method

.method private clearLength()V
    .locals 2

    const-wide/16 v0, 0x0

    .line 9364
    iput-wide v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$Link;->length_:D

    return-void
.end method

.method private clearLinkDirection()V
    .locals 1

    const/4 v0, 0x0

    .line 9123
    iput v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$Link;->linkDirection_:I

    return-void
.end method

.method private clearLinkType()V
    .locals 1

    const/4 v0, 0x0

    .line 9008
    iput v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$Link;->linkType_:I

    return-void
.end method

.method private clearOwnership()V
    .locals 1

    const/4 v0, 0x0

    .line 9402
    iput v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$Link;->ownership_:I

    return-void
.end method

.method private clearRoadClass()V
    .locals 1

    const/4 v0, 0x0

    .line 9054
    iput v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$Link;->roadClass_:I

    return-void
.end method

.method private clearRoadDirection()V
    .locals 1

    const/4 v0, 0x0

    .line 9146
    iput v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$Link;->roadDirection_:I

    return-void
.end method

.method private clearRoadFacilities()V
    .locals 1

    .line 9719
    invoke-static {}, Landroid/car/hardware/xpu/XpuProtoMessage$Link;->emptyProtobufList()Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    move-result-object v0

    iput-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$Link;->roadFacilities_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    return-void
.end method

.method private clearRoadFacilityCount()V
    .locals 1

    const/4 v0, 0x0

    .line 9606
    iput v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$Link;->roadFacilityCount_:I

    return-void
.end method

.method private clearRoadName()V
    .locals 1

    .line 9452
    invoke-static {}, Landroid/car/hardware/xpu/XpuProtoMessage$Link;->getDefaultInstance()Landroid/car/hardware/xpu/XpuProtoMessage$Link;

    move-result-object v0

    invoke-virtual {v0}, Landroid/car/hardware/xpu/XpuProtoMessage$Link;->getRoadName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$Link;->roadName_:Ljava/lang/String;

    return-void
.end method

.method private clearRoadSlopInfo()V
    .locals 1

    const/4 v0, 0x0

    .line 9777
    iput-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$Link;->roadSlopInfo_:Landroid/car/hardware/xpu/XpuProtoMessage$RoadSlopeInfo;

    return-void
.end method

.method private clearSlopeInfos()V
    .locals 1

    .line 9891
    invoke-static {}, Landroid/car/hardware/xpu/XpuProtoMessage$Link;->emptyProtobufList()Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    move-result-object v0

    iput-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$Link;->slopeInfos_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    return-void
.end method

.method private clearSpeed()V
    .locals 1

    const/4 v0, 0x0

    .line 9583
    iput v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$Link;->speed_:I

    return-void
.end method

.method private clearV2Points()V
    .locals 1

    .line 9334
    invoke-static {}, Landroid/car/hardware/xpu/XpuProtoMessage$Link;->emptyProtobufList()Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    move-result-object v0

    iput-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$Link;->v2Points_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    return-void
.end method

.method private ensureRoadFacilitiesIsMutable()V
    .locals 1

    .line 9644
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$Link;->roadFacilities_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    invoke-interface {v0}, Lcom/android/carsdk/protobuf/Internal$ProtobufList;->isModifiable()Z

    move-result v0

    if-nez v0, :cond_0

    .line 9645
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$Link;->roadFacilities_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    .line 9646
    invoke-static {v0}, Lcom/android/carsdk/protobuf/GeneratedMessageLite;->mutableCopy(Lcom/android/carsdk/protobuf/Internal$ProtobufList;)Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    move-result-object v0

    iput-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$Link;->roadFacilities_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    :cond_0
    return-void
.end method

.method private ensureSlopeInfosIsMutable()V
    .locals 1

    .line 9816
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$Link;->slopeInfos_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    invoke-interface {v0}, Lcom/android/carsdk/protobuf/Internal$ProtobufList;->isModifiable()Z

    move-result v0

    if-nez v0, :cond_0

    .line 9817
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$Link;->slopeInfos_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    .line 9818
    invoke-static {v0}, Lcom/android/carsdk/protobuf/GeneratedMessageLite;->mutableCopy(Lcom/android/carsdk/protobuf/Internal$ProtobufList;)Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    move-result-object v0

    iput-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$Link;->slopeInfos_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    :cond_0
    return-void
.end method

.method private ensureV2PointsIsMutable()V
    .locals 1

    .line 9259
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$Link;->v2Points_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    invoke-interface {v0}, Lcom/android/carsdk/protobuf/Internal$ProtobufList;->isModifiable()Z

    move-result v0

    if-nez v0, :cond_0

    .line 9260
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$Link;->v2Points_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    .line 9261
    invoke-static {v0}, Lcom/android/carsdk/protobuf/GeneratedMessageLite;->mutableCopy(Lcom/android/carsdk/protobuf/Internal$ProtobufList;)Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    move-result-object v0

    iput-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$Link;->v2Points_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    :cond_0
    return-void
.end method

.method public static getDefaultInstance()Landroid/car/hardware/xpu/XpuProtoMessage$Link;
    .locals 1

    .line 11334
    sget-object v0, Landroid/car/hardware/xpu/XpuProtoMessage$Link;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuProtoMessage$Link;

    return-object v0
.end method

.method private mergeHeightDiffData(Landroid/car/hardware/xpu/XpuProtoMessage$HeightDiffData;)V
    .locals 2

    .line 9208
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$Link;->heightDiffData_:Landroid/car/hardware/xpu/XpuProtoMessage$HeightDiffData;

    if-eqz v0, :cond_0

    .line 9209
    invoke-static {}, Landroid/car/hardware/xpu/XpuProtoMessage$HeightDiffData;->getDefaultInstance()Landroid/car/hardware/xpu/XpuProtoMessage$HeightDiffData;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 9210
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$Link;->heightDiffData_:Landroid/car/hardware/xpu/XpuProtoMessage$HeightDiffData;

    .line 9211
    invoke-static {v0}, Landroid/car/hardware/xpu/XpuProtoMessage$HeightDiffData;->newBuilder(Landroid/car/hardware/xpu/XpuProtoMessage$HeightDiffData;)Landroid/car/hardware/xpu/XpuProtoMessage$HeightDiffData$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/car/hardware/xpu/XpuProtoMessage$HeightDiffData$Builder;->mergeFrom(Lcom/android/carsdk/protobuf/GeneratedMessageLite;)Lcom/android/carsdk/protobuf/GeneratedMessageLite$Builder;

    move-result-object p1

    check-cast p1, Landroid/car/hardware/xpu/XpuProtoMessage$HeightDiffData$Builder;

    invoke-virtual {p1}, Landroid/car/hardware/xpu/XpuProtoMessage$HeightDiffData$Builder;->buildPartial()Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Landroid/car/hardware/xpu/XpuProtoMessage$HeightDiffData;

    iput-object p1, p0, Landroid/car/hardware/xpu/XpuProtoMessage$Link;->heightDiffData_:Landroid/car/hardware/xpu/XpuProtoMessage$HeightDiffData;

    goto :goto_0

    .line 9213
    :cond_0
    iput-object p1, p0, Landroid/car/hardware/xpu/XpuProtoMessage$Link;->heightDiffData_:Landroid/car/hardware/xpu/XpuProtoMessage$HeightDiffData;

    :goto_0
    return-void
.end method

.method private mergeRoadSlopInfo(Landroid/car/hardware/xpu/XpuProtoMessage$RoadSlopeInfo;)V
    .locals 2

    .line 9765
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$Link;->roadSlopInfo_:Landroid/car/hardware/xpu/XpuProtoMessage$RoadSlopeInfo;

    if-eqz v0, :cond_0

    .line 9766
    invoke-static {}, Landroid/car/hardware/xpu/XpuProtoMessage$RoadSlopeInfo;->getDefaultInstance()Landroid/car/hardware/xpu/XpuProtoMessage$RoadSlopeInfo;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 9767
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$Link;->roadSlopInfo_:Landroid/car/hardware/xpu/XpuProtoMessage$RoadSlopeInfo;

    .line 9768
    invoke-static {v0}, Landroid/car/hardware/xpu/XpuProtoMessage$RoadSlopeInfo;->newBuilder(Landroid/car/hardware/xpu/XpuProtoMessage$RoadSlopeInfo;)Landroid/car/hardware/xpu/XpuProtoMessage$RoadSlopeInfo$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/car/hardware/xpu/XpuProtoMessage$RoadSlopeInfo$Builder;->mergeFrom(Lcom/android/carsdk/protobuf/GeneratedMessageLite;)Lcom/android/carsdk/protobuf/GeneratedMessageLite$Builder;

    move-result-object p1

    check-cast p1, Landroid/car/hardware/xpu/XpuProtoMessage$RoadSlopeInfo$Builder;

    invoke-virtual {p1}, Landroid/car/hardware/xpu/XpuProtoMessage$RoadSlopeInfo$Builder;->buildPartial()Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Landroid/car/hardware/xpu/XpuProtoMessage$RoadSlopeInfo;

    iput-object p1, p0, Landroid/car/hardware/xpu/XpuProtoMessage$Link;->roadSlopInfo_:Landroid/car/hardware/xpu/XpuProtoMessage$RoadSlopeInfo;

    goto :goto_0

    .line 9770
    :cond_0
    iput-object p1, p0, Landroid/car/hardware/xpu/XpuProtoMessage$Link;->roadSlopInfo_:Landroid/car/hardware/xpu/XpuProtoMessage$RoadSlopeInfo;

    :goto_0
    return-void
.end method

.method public static newBuilder()Landroid/car/hardware/xpu/XpuProtoMessage$Link$Builder;
    .locals 1

    .line 10167
    sget-object v0, Landroid/car/hardware/xpu/XpuProtoMessage$Link;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuProtoMessage$Link;

    invoke-virtual {v0}, Landroid/car/hardware/xpu/XpuProtoMessage$Link;->toBuilder()Lcom/android/carsdk/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Landroid/car/hardware/xpu/XpuProtoMessage$Link$Builder;

    return-object v0
.end method

.method public static newBuilder(Landroid/car/hardware/xpu/XpuProtoMessage$Link;)Landroid/car/hardware/xpu/XpuProtoMessage$Link$Builder;
    .locals 1

    .line 10170
    sget-object v0, Landroid/car/hardware/xpu/XpuProtoMessage$Link;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuProtoMessage$Link;

    invoke-virtual {v0}, Landroid/car/hardware/xpu/XpuProtoMessage$Link;->toBuilder()Lcom/android/carsdk/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Landroid/car/hardware/xpu/XpuProtoMessage$Link$Builder;

    invoke-virtual {v0, p0}, Landroid/car/hardware/xpu/XpuProtoMessage$Link$Builder;->mergeFrom(Lcom/android/carsdk/protobuf/GeneratedMessageLite;)Lcom/android/carsdk/protobuf/GeneratedMessageLite$Builder;

    move-result-object p0

    check-cast p0, Landroid/car/hardware/xpu/XpuProtoMessage$Link$Builder;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Landroid/car/hardware/xpu/XpuProtoMessage$Link;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 10144
    sget-object v0, Landroid/car/hardware/xpu/XpuProtoMessage$Link;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuProtoMessage$Link;

    invoke-static {v0, p0}, Landroid/car/hardware/xpu/XpuProtoMessage$Link;->parseDelimitedFrom(Lcom/android/carsdk/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Landroid/car/hardware/xpu/XpuProtoMessage$Link;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/android/carsdk/protobuf/ExtensionRegistryLite;)Landroid/car/hardware/xpu/XpuProtoMessage$Link;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 10150
    sget-object v0, Landroid/car/hardware/xpu/XpuProtoMessage$Link;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuProtoMessage$Link;

    invoke-static {v0, p0, p1}, Landroid/car/hardware/xpu/XpuProtoMessage$Link;->parseDelimitedFrom(Lcom/android/carsdk/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/android/carsdk/protobuf/ExtensionRegistryLite;)Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Landroid/car/hardware/xpu/XpuProtoMessage$Link;

    return-object p0
.end method

.method public static parseFrom(Lcom/android/carsdk/protobuf/ByteString;)Landroid/car/hardware/xpu/XpuProtoMessage$Link;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/carsdk/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 10108
    sget-object v0, Landroid/car/hardware/xpu/XpuProtoMessage$Link;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuProtoMessage$Link;

    invoke-static {v0, p0}, Lcom/android/carsdk/protobuf/GeneratedMessageLite;->parseFrom(Lcom/android/carsdk/protobuf/GeneratedMessageLite;Lcom/android/carsdk/protobuf/ByteString;)Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Landroid/car/hardware/xpu/XpuProtoMessage$Link;

    return-object p0
.end method

.method public static parseFrom(Lcom/android/carsdk/protobuf/ByteString;Lcom/android/carsdk/protobuf/ExtensionRegistryLite;)Landroid/car/hardware/xpu/XpuProtoMessage$Link;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/carsdk/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 10115
    sget-object v0, Landroid/car/hardware/xpu/XpuProtoMessage$Link;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuProtoMessage$Link;

    invoke-static {v0, p0, p1}, Lcom/android/carsdk/protobuf/GeneratedMessageLite;->parseFrom(Lcom/android/carsdk/protobuf/GeneratedMessageLite;Lcom/android/carsdk/protobuf/ByteString;Lcom/android/carsdk/protobuf/ExtensionRegistryLite;)Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Landroid/car/hardware/xpu/XpuProtoMessage$Link;

    return-object p0
.end method

.method public static parseFrom(Lcom/android/carsdk/protobuf/CodedInputStream;)Landroid/car/hardware/xpu/XpuProtoMessage$Link;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 10155
    sget-object v0, Landroid/car/hardware/xpu/XpuProtoMessage$Link;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuProtoMessage$Link;

    invoke-static {v0, p0}, Lcom/android/carsdk/protobuf/GeneratedMessageLite;->parseFrom(Lcom/android/carsdk/protobuf/GeneratedMessageLite;Lcom/android/carsdk/protobuf/CodedInputStream;)Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Landroid/car/hardware/xpu/XpuProtoMessage$Link;

    return-object p0
.end method

.method public static parseFrom(Lcom/android/carsdk/protobuf/CodedInputStream;Lcom/android/carsdk/protobuf/ExtensionRegistryLite;)Landroid/car/hardware/xpu/XpuProtoMessage$Link;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 10162
    sget-object v0, Landroid/car/hardware/xpu/XpuProtoMessage$Link;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuProtoMessage$Link;

    invoke-static {v0, p0, p1}, Lcom/android/carsdk/protobuf/GeneratedMessageLite;->parseFrom(Lcom/android/carsdk/protobuf/GeneratedMessageLite;Lcom/android/carsdk/protobuf/CodedInputStream;Lcom/android/carsdk/protobuf/ExtensionRegistryLite;)Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Landroid/car/hardware/xpu/XpuProtoMessage$Link;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Landroid/car/hardware/xpu/XpuProtoMessage$Link;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 10132
    sget-object v0, Landroid/car/hardware/xpu/XpuProtoMessage$Link;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuProtoMessage$Link;

    invoke-static {v0, p0}, Lcom/android/carsdk/protobuf/GeneratedMessageLite;->parseFrom(Lcom/android/carsdk/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Landroid/car/hardware/xpu/XpuProtoMessage$Link;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/android/carsdk/protobuf/ExtensionRegistryLite;)Landroid/car/hardware/xpu/XpuProtoMessage$Link;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 10139
    sget-object v0, Landroid/car/hardware/xpu/XpuProtoMessage$Link;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuProtoMessage$Link;

    invoke-static {v0, p0, p1}, Lcom/android/carsdk/protobuf/GeneratedMessageLite;->parseFrom(Lcom/android/carsdk/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/android/carsdk/protobuf/ExtensionRegistryLite;)Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Landroid/car/hardware/xpu/XpuProtoMessage$Link;

    return-object p0
.end method

.method public static parseFrom([B)Landroid/car/hardware/xpu/XpuProtoMessage$Link;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/carsdk/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 10120
    sget-object v0, Landroid/car/hardware/xpu/XpuProtoMessage$Link;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuProtoMessage$Link;

    invoke-static {v0, p0}, Lcom/android/carsdk/protobuf/GeneratedMessageLite;->parseFrom(Lcom/android/carsdk/protobuf/GeneratedMessageLite;[B)Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Landroid/car/hardware/xpu/XpuProtoMessage$Link;

    return-object p0
.end method

.method public static parseFrom([BLcom/android/carsdk/protobuf/ExtensionRegistryLite;)Landroid/car/hardware/xpu/XpuProtoMessage$Link;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/carsdk/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 10127
    sget-object v0, Landroid/car/hardware/xpu/XpuProtoMessage$Link;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuProtoMessage$Link;

    invoke-static {v0, p0, p1}, Lcom/android/carsdk/protobuf/GeneratedMessageLite;->parseFrom(Lcom/android/carsdk/protobuf/GeneratedMessageLite;[BLcom/android/carsdk/protobuf/ExtensionRegistryLite;)Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Landroid/car/hardware/xpu/XpuProtoMessage$Link;

    return-object p0
.end method

.method public static parser()Lcom/android/carsdk/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/android/carsdk/protobuf/Parser<",
            "Landroid/car/hardware/xpu/XpuProtoMessage$Link;",
            ">;"
        }
    .end annotation

    .line 11340
    sget-object v0, Landroid/car/hardware/xpu/XpuProtoMessage$Link;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuProtoMessage$Link;

    invoke-virtual {v0}, Landroid/car/hardware/xpu/XpuProtoMessage$Link;->getParserForType()Lcom/android/carsdk/protobuf/Parser;

    move-result-object v0

    return-object v0
.end method

.method private removeRoadFacilities(I)V
    .locals 1

    .line 9725
    invoke-direct {p0}, Landroid/car/hardware/xpu/XpuProtoMessage$Link;->ensureRoadFacilitiesIsMutable()V

    .line 9726
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$Link;->roadFacilities_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1}, Lcom/android/carsdk/protobuf/Internal$ProtobufList;->remove(I)Ljava/lang/Object;

    return-void
.end method

.method private removeSlopeInfos(I)V
    .locals 1

    .line 9897
    invoke-direct {p0}, Landroid/car/hardware/xpu/XpuProtoMessage$Link;->ensureSlopeInfosIsMutable()V

    .line 9898
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$Link;->slopeInfos_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1}, Lcom/android/carsdk/protobuf/Internal$ProtobufList;->remove(I)Ljava/lang/Object;

    return-void
.end method

.method private removeV2Points(I)V
    .locals 1

    .line 9340
    invoke-direct {p0}, Landroid/car/hardware/xpu/XpuProtoMessage$Link;->ensureV2PointsIsMutable()V

    .line 9341
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$Link;->v2Points_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1}, Lcom/android/carsdk/protobuf/Internal$ProtobufList;->remove(I)Ljava/lang/Object;

    return-void
.end method

.method private setAssistantAction(I)V
    .locals 0

    .line 9914
    iput p1, p0, Landroid/car/hardware/xpu/XpuProtoMessage$Link;->assistantAction_:I

    return-void
.end method

.method private setFormwayType(I)V
    .locals 0

    .line 9024
    iput p1, p0, Landroid/car/hardware/xpu/XpuProtoMessage$Link;->formwayType_:I

    return-void
.end method

.method private setHasMixFork(Z)V
    .locals 0

    .line 9530
    iput-boolean p1, p0, Landroid/car/hardware/xpu/XpuProtoMessage$Link;->hasMixFork_:Z

    return-void
.end method

.method private setHasMultiOut(Z)V
    .locals 0

    .line 9484
    iput-boolean p1, p0, Landroid/car/hardware/xpu/XpuProtoMessage$Link;->hasMultiOut_:Z

    return-void
.end method

.method private setHasParallelRoad(Z)V
    .locals 0

    .line 9093
    iput-boolean p1, p0, Landroid/car/hardware/xpu/XpuProtoMessage$Link;->hasParallelRoad_:Z

    return-void
.end method

.method private setHasTrafficLight(Z)V
    .locals 0

    .line 9507
    iput-boolean p1, p0, Landroid/car/hardware/xpu/XpuProtoMessage$Link;->hasTrafficLight_:Z

    return-void
.end method

.method private setHeightDiffData(Landroid/car/hardware/xpu/XpuProtoMessage$HeightDiffData$Builder;)V
    .locals 0

    .line 9201
    invoke-virtual {p1}, Landroid/car/hardware/xpu/XpuProtoMessage$HeightDiffData$Builder;->build()Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Landroid/car/hardware/xpu/XpuProtoMessage$HeightDiffData;

    iput-object p1, p0, Landroid/car/hardware/xpu/XpuProtoMessage$Link;->heightDiffData_:Landroid/car/hardware/xpu/XpuProtoMessage$HeightDiffData;

    return-void
.end method

.method private setHeightDiffData(Landroid/car/hardware/xpu/XpuProtoMessage$HeightDiffData;)V
    .locals 0

    .line 9191
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 9193
    iput-object p1, p0, Landroid/car/hardware/xpu/XpuProtoMessage$Link;->heightDiffData_:Landroid/car/hardware/xpu/XpuProtoMessage$HeightDiffData;

    return-void
.end method

.method private setId(J)V
    .locals 0

    .line 8978
    iput-wide p1, p0, Landroid/car/hardware/xpu/XpuProtoMessage$Link;->id_:J

    return-void
.end method

.method private setIsAtService(Z)V
    .locals 0

    .line 9553
    iput-boolean p1, p0, Landroid/car/hardware/xpu/XpuProtoMessage$Link;->isAtService_:Z

    return-void
.end method

.method private setIsOverHead(Z)V
    .locals 0

    .line 9070
    iput-boolean p1, p0, Landroid/car/hardware/xpu/XpuProtoMessage$Link;->isOverHead_:Z

    return-void
.end method

.method private setLaneNum(I)V
    .locals 0

    .line 9162
    iput p1, p0, Landroid/car/hardware/xpu/XpuProtoMessage$Link;->laneNum_:I

    return-void
.end method

.method private setLength(D)V
    .locals 0

    .line 9357
    iput-wide p1, p0, Landroid/car/hardware/xpu/XpuProtoMessage$Link;->length_:D

    return-void
.end method

.method private setLinkDirection(I)V
    .locals 0

    .line 9116
    iput p1, p0, Landroid/car/hardware/xpu/XpuProtoMessage$Link;->linkDirection_:I

    return-void
.end method

.method private setLinkType(I)V
    .locals 0

    .line 9001
    iput p1, p0, Landroid/car/hardware/xpu/XpuProtoMessage$Link;->linkType_:I

    return-void
.end method

.method private setOwnership(I)V
    .locals 0

    .line 9390
    iput p1, p0, Landroid/car/hardware/xpu/XpuProtoMessage$Link;->ownership_:I

    return-void
.end method

.method private setRoadClass(I)V
    .locals 0

    .line 9047
    iput p1, p0, Landroid/car/hardware/xpu/XpuProtoMessage$Link;->roadClass_:I

    return-void
.end method

.method private setRoadDirection(I)V
    .locals 0

    .line 9139
    iput p1, p0, Landroid/car/hardware/xpu/XpuProtoMessage$Link;->roadDirection_:I

    return-void
.end method

.method private setRoadFacilities(ILandroid/car/hardware/xpu/XpuProtoMessage$RoadFacility$Builder;)V
    .locals 1

    .line 9666
    invoke-direct {p0}, Landroid/car/hardware/xpu/XpuProtoMessage$Link;->ensureRoadFacilitiesIsMutable()V

    .line 9667
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$Link;->roadFacilities_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    invoke-virtual {p2}, Landroid/car/hardware/xpu/XpuProtoMessage$RoadFacility$Builder;->build()Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object p2

    check-cast p2, Landroid/car/hardware/xpu/XpuProtoMessage$RoadFacility;

    invoke-interface {v0, p1, p2}, Lcom/android/carsdk/protobuf/Internal$ProtobufList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private setRoadFacilities(ILandroid/car/hardware/xpu/XpuProtoMessage$RoadFacility;)V
    .locals 1

    .line 9656
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 9658
    invoke-direct {p0}, Landroid/car/hardware/xpu/XpuProtoMessage$Link;->ensureRoadFacilitiesIsMutable()V

    .line 9659
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$Link;->roadFacilities_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1, p2}, Lcom/android/carsdk/protobuf/Internal$ProtobufList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private setRoadFacilityCount(I)V
    .locals 0

    .line 9599
    iput p1, p0, Landroid/car/hardware/xpu/XpuProtoMessage$Link;->roadFacilityCount_:I

    return-void
.end method

.method private setRoadName(Ljava/lang/String;)V
    .locals 0

    .line 9438
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 9441
    iput-object p1, p0, Landroid/car/hardware/xpu/XpuProtoMessage$Link;->roadName_:Ljava/lang/String;

    return-void
.end method

.method private setRoadNameBytes(Lcom/android/carsdk/protobuf/ByteString;)V
    .locals 0

    .line 9464
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 9466
    invoke-static {p1}, Landroid/car/hardware/xpu/XpuProtoMessage$Link;->checkByteStringIsUtf8(Lcom/android/carsdk/protobuf/ByteString;)V

    .line 9468
    invoke-virtual {p1}, Lcom/android/carsdk/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Landroid/car/hardware/xpu/XpuProtoMessage$Link;->roadName_:Ljava/lang/String;

    return-void
.end method

.method private setRoadSlopInfo(Landroid/car/hardware/xpu/XpuProtoMessage$RoadSlopeInfo$Builder;)V
    .locals 0

    .line 9758
    invoke-virtual {p1}, Landroid/car/hardware/xpu/XpuProtoMessage$RoadSlopeInfo$Builder;->build()Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Landroid/car/hardware/xpu/XpuProtoMessage$RoadSlopeInfo;

    iput-object p1, p0, Landroid/car/hardware/xpu/XpuProtoMessage$Link;->roadSlopInfo_:Landroid/car/hardware/xpu/XpuProtoMessage$RoadSlopeInfo;

    return-void
.end method

.method private setRoadSlopInfo(Landroid/car/hardware/xpu/XpuProtoMessage$RoadSlopeInfo;)V
    .locals 0

    .line 9748
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 9750
    iput-object p1, p0, Landroid/car/hardware/xpu/XpuProtoMessage$Link;->roadSlopInfo_:Landroid/car/hardware/xpu/XpuProtoMessage$RoadSlopeInfo;

    return-void
.end method

.method private setSlopeInfos(ILandroid/car/hardware/xpu/XpuProtoMessage$SlopeInfo$Builder;)V
    .locals 1

    .line 9838
    invoke-direct {p0}, Landroid/car/hardware/xpu/XpuProtoMessage$Link;->ensureSlopeInfosIsMutable()V

    .line 9839
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$Link;->slopeInfos_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    invoke-virtual {p2}, Landroid/car/hardware/xpu/XpuProtoMessage$SlopeInfo$Builder;->build()Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object p2

    check-cast p2, Landroid/car/hardware/xpu/XpuProtoMessage$SlopeInfo;

    invoke-interface {v0, p1, p2}, Lcom/android/carsdk/protobuf/Internal$ProtobufList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private setSlopeInfos(ILandroid/car/hardware/xpu/XpuProtoMessage$SlopeInfo;)V
    .locals 1

    .line 9828
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 9830
    invoke-direct {p0}, Landroid/car/hardware/xpu/XpuProtoMessage$Link;->ensureSlopeInfosIsMutable()V

    .line 9831
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$Link;->slopeInfos_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1, p2}, Lcom/android/carsdk/protobuf/Internal$ProtobufList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private setSpeed(I)V
    .locals 0

    .line 9576
    iput p1, p0, Landroid/car/hardware/xpu/XpuProtoMessage$Link;->speed_:I

    return-void
.end method

.method private setV2Points(ILandroid/car/hardware/xpu/XpuProtoMessage$V2_Point$Builder;)V
    .locals 1

    .line 9281
    invoke-direct {p0}, Landroid/car/hardware/xpu/XpuProtoMessage$Link;->ensureV2PointsIsMutable()V

    .line 9282
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$Link;->v2Points_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    invoke-virtual {p2}, Landroid/car/hardware/xpu/XpuProtoMessage$V2_Point$Builder;->build()Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object p2

    check-cast p2, Landroid/car/hardware/xpu/XpuProtoMessage$V2_Point;

    invoke-interface {v0, p1, p2}, Lcom/android/carsdk/protobuf/Internal$ProtobufList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private setV2Points(ILandroid/car/hardware/xpu/XpuProtoMessage$V2_Point;)V
    .locals 1

    .line 9271
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 9273
    invoke-direct {p0}, Landroid/car/hardware/xpu/XpuProtoMessage$Link;->ensureV2PointsIsMutable()V

    .line 9274
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$Link;->v2Points_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1, p2}, Lcom/android/carsdk/protobuf/Internal$ProtobufList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method protected final dynamicMethod(Lcom/android/carsdk/protobuf/GeneratedMessageLite$MethodToInvoke;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 10

    .line 11062
    sget-object v0, Landroid/car/hardware/xpu/XpuProtoMessage$1;->$SwitchMap$com$google$protobuf$GeneratedMessageLite$MethodToInvoke:[I

    invoke-virtual {p1}, Lcom/android/carsdk/protobuf/GeneratedMessageLite$MethodToInvoke;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x1

    packed-switch p1, :pswitch_data_0

    .line 11322
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1

    .line 11313
    :pswitch_0
    sget-object p1, Landroid/car/hardware/xpu/XpuProtoMessage$Link;->PARSER:Lcom/android/carsdk/protobuf/Parser;

    if-nez p1, :cond_1

    const-class p1, Landroid/car/hardware/xpu/XpuProtoMessage$Link;

    monitor-enter p1

    .line 11314
    :try_start_0
    sget-object p2, Landroid/car/hardware/xpu/XpuProtoMessage$Link;->PARSER:Lcom/android/carsdk/protobuf/Parser;

    if-nez p2, :cond_0

    .line 11315
    new-instance p2, Lcom/android/carsdk/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;

    sget-object p3, Landroid/car/hardware/xpu/XpuProtoMessage$Link;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuProtoMessage$Link;

    invoke-direct {p2, p3}, Lcom/android/carsdk/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;-><init>(Lcom/android/carsdk/protobuf/GeneratedMessageLite;)V

    sput-object p2, Landroid/car/hardware/xpu/XpuProtoMessage$Link;->PARSER:Lcom/android/carsdk/protobuf/Parser;

    .line 11317
    :cond_0
    monitor-exit p1

    goto :goto_0

    :catchall_0
    move-exception p2

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p2

    .line 11319
    :cond_1
    :goto_0
    sget-object p1, Landroid/car/hardware/xpu/XpuProtoMessage$Link;->PARSER:Lcom/android/carsdk/protobuf/Parser;

    return-object p1

    .line 11131
    :pswitch_1
    check-cast p2, Lcom/android/carsdk/protobuf/CodedInputStream;

    .line 11133
    check-cast p3, Lcom/android/carsdk/protobuf/ExtensionRegistryLite;

    :cond_2
    :goto_1
    if-nez v1, :cond_8

    .line 11138
    :try_start_1
    invoke-virtual {p2}, Lcom/android/carsdk/protobuf/CodedInputStream;->readTag()I

    move-result p1

    sparse-switch p1, :sswitch_data_0

    .line 11144
    invoke-virtual {p2, p1}, Lcom/android/carsdk/protobuf/CodedInputStream;->skipField(I)Z

    move-result p1

    goto/16 :goto_5

    .line 11295
    :sswitch_0
    invoke-virtual {p2}, Lcom/android/carsdk/protobuf/CodedInputStream;->readInt32()I

    move-result p1

    iput p1, p0, Landroid/car/hardware/xpu/XpuProtoMessage$Link;->assistantAction_:I

    goto :goto_1

    .line 11285
    :sswitch_1
    iget-object p1, p0, Landroid/car/hardware/xpu/XpuProtoMessage$Link;->slopeInfos_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    invoke-interface {p1}, Lcom/android/carsdk/protobuf/Internal$ProtobufList;->isModifiable()Z

    move-result p1

    if-nez p1, :cond_3

    .line 11286
    iget-object p1, p0, Landroid/car/hardware/xpu/XpuProtoMessage$Link;->slopeInfos_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    .line 11287
    invoke-static {p1}, Lcom/android/carsdk/protobuf/GeneratedMessageLite;->mutableCopy(Lcom/android/carsdk/protobuf/Internal$ProtobufList;)Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    move-result-object p1

    iput-object p1, p0, Landroid/car/hardware/xpu/XpuProtoMessage$Link;->slopeInfos_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    .line 11289
    :cond_3
    iget-object p1, p0, Landroid/car/hardware/xpu/XpuProtoMessage$Link;->slopeInfos_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    .line 11290
    invoke-static {}, Landroid/car/hardware/xpu/XpuProtoMessage$SlopeInfo;->parser()Lcom/android/carsdk/protobuf/Parser;

    move-result-object v3

    invoke-virtual {p2, v3, p3}, Lcom/android/carsdk/protobuf/CodedInputStream;->readMessage(Lcom/android/carsdk/protobuf/Parser;Lcom/android/carsdk/protobuf/ExtensionRegistryLite;)Lcom/android/carsdk/protobuf/MessageLite;

    move-result-object v3

    check-cast v3, Landroid/car/hardware/xpu/XpuProtoMessage$SlopeInfo;

    .line 11289
    invoke-interface {p1, v3}, Lcom/android/carsdk/protobuf/Internal$ProtobufList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 11273
    :sswitch_2
    iget-object p1, p0, Landroid/car/hardware/xpu/XpuProtoMessage$Link;->roadSlopInfo_:Landroid/car/hardware/xpu/XpuProtoMessage$RoadSlopeInfo;

    if-eqz p1, :cond_4

    .line 11274
    invoke-virtual {p1}, Landroid/car/hardware/xpu/XpuProtoMessage$RoadSlopeInfo;->toBuilder()Lcom/android/carsdk/protobuf/GeneratedMessageLite$Builder;

    move-result-object p1

    check-cast p1, Landroid/car/hardware/xpu/XpuProtoMessage$RoadSlopeInfo$Builder;

    goto :goto_2

    :cond_4
    move-object p1, v0

    .line 11276
    :goto_2
    invoke-static {}, Landroid/car/hardware/xpu/XpuProtoMessage$RoadSlopeInfo;->parser()Lcom/android/carsdk/protobuf/Parser;

    move-result-object v3

    invoke-virtual {p2, v3, p3}, Lcom/android/carsdk/protobuf/CodedInputStream;->readMessage(Lcom/android/carsdk/protobuf/Parser;Lcom/android/carsdk/protobuf/ExtensionRegistryLite;)Lcom/android/carsdk/protobuf/MessageLite;

    move-result-object v3

    check-cast v3, Landroid/car/hardware/xpu/XpuProtoMessage$RoadSlopeInfo;

    iput-object v3, p0, Landroid/car/hardware/xpu/XpuProtoMessage$Link;->roadSlopInfo_:Landroid/car/hardware/xpu/XpuProtoMessage$RoadSlopeInfo;

    if-eqz p1, :cond_2

    .line 11278
    invoke-virtual {p1, v3}, Landroid/car/hardware/xpu/XpuProtoMessage$RoadSlopeInfo$Builder;->mergeFrom(Lcom/android/carsdk/protobuf/GeneratedMessageLite;)Lcom/android/carsdk/protobuf/GeneratedMessageLite$Builder;

    .line 11279
    invoke-virtual {p1}, Landroid/car/hardware/xpu/XpuProtoMessage$RoadSlopeInfo$Builder;->buildPartial()Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Landroid/car/hardware/xpu/XpuProtoMessage$RoadSlopeInfo;

    iput-object p1, p0, Landroid/car/hardware/xpu/XpuProtoMessage$Link;->roadSlopInfo_:Landroid/car/hardware/xpu/XpuProtoMessage$RoadSlopeInfo;

    goto :goto_1

    .line 11263
    :sswitch_3
    iget-object p1, p0, Landroid/car/hardware/xpu/XpuProtoMessage$Link;->roadFacilities_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    invoke-interface {p1}, Lcom/android/carsdk/protobuf/Internal$ProtobufList;->isModifiable()Z

    move-result p1

    if-nez p1, :cond_5

    .line 11264
    iget-object p1, p0, Landroid/car/hardware/xpu/XpuProtoMessage$Link;->roadFacilities_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    .line 11265
    invoke-static {p1}, Lcom/android/carsdk/protobuf/GeneratedMessageLite;->mutableCopy(Lcom/android/carsdk/protobuf/Internal$ProtobufList;)Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    move-result-object p1

    iput-object p1, p0, Landroid/car/hardware/xpu/XpuProtoMessage$Link;->roadFacilities_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    .line 11267
    :cond_5
    iget-object p1, p0, Landroid/car/hardware/xpu/XpuProtoMessage$Link;->roadFacilities_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    .line 11268
    invoke-static {}, Landroid/car/hardware/xpu/XpuProtoMessage$RoadFacility;->parser()Lcom/android/carsdk/protobuf/Parser;

    move-result-object v3

    invoke-virtual {p2, v3, p3}, Lcom/android/carsdk/protobuf/CodedInputStream;->readMessage(Lcom/android/carsdk/protobuf/Parser;Lcom/android/carsdk/protobuf/ExtensionRegistryLite;)Lcom/android/carsdk/protobuf/MessageLite;

    move-result-object v3

    check-cast v3, Landroid/car/hardware/xpu/XpuProtoMessage$RoadFacility;

    .line 11267
    invoke-interface {p1, v3}, Lcom/android/carsdk/protobuf/Internal$ProtobufList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 11259
    :sswitch_4
    invoke-virtual {p2}, Lcom/android/carsdk/protobuf/CodedInputStream;->readInt32()I

    move-result p1

    iput p1, p0, Landroid/car/hardware/xpu/XpuProtoMessage$Link;->roadFacilityCount_:I

    goto/16 :goto_1

    .line 11254
    :sswitch_5
    invoke-virtual {p2}, Lcom/android/carsdk/protobuf/CodedInputStream;->readInt32()I

    move-result p1

    iput p1, p0, Landroid/car/hardware/xpu/XpuProtoMessage$Link;->speed_:I

    goto/16 :goto_1

    .line 11249
    :sswitch_6
    invoke-virtual {p2}, Lcom/android/carsdk/protobuf/CodedInputStream;->readBool()Z

    move-result p1

    iput-boolean p1, p0, Landroid/car/hardware/xpu/XpuProtoMessage$Link;->isAtService_:Z

    goto/16 :goto_1

    .line 11244
    :sswitch_7
    invoke-virtual {p2}, Lcom/android/carsdk/protobuf/CodedInputStream;->readBool()Z

    move-result p1

    iput-boolean p1, p0, Landroid/car/hardware/xpu/XpuProtoMessage$Link;->hasMixFork_:Z

    goto/16 :goto_1

    .line 11239
    :sswitch_8
    invoke-virtual {p2}, Lcom/android/carsdk/protobuf/CodedInputStream;->readBool()Z

    move-result p1

    iput-boolean p1, p0, Landroid/car/hardware/xpu/XpuProtoMessage$Link;->hasTrafficLight_:Z

    goto/16 :goto_1

    .line 11234
    :sswitch_9
    invoke-virtual {p2}, Lcom/android/carsdk/protobuf/CodedInputStream;->readBool()Z

    move-result p1

    iput-boolean p1, p0, Landroid/car/hardware/xpu/XpuProtoMessage$Link;->hasMultiOut_:Z

    goto/16 :goto_1

    .line 11227
    :sswitch_a
    invoke-virtual {p2}, Lcom/android/carsdk/protobuf/CodedInputStream;->readStringRequireUtf8()Ljava/lang/String;

    move-result-object p1

    .line 11229
    iput-object p1, p0, Landroid/car/hardware/xpu/XpuProtoMessage$Link;->roadName_:Ljava/lang/String;

    goto/16 :goto_1

    .line 11223
    :sswitch_b
    invoke-virtual {p2}, Lcom/android/carsdk/protobuf/CodedInputStream;->readInt32()I

    move-result p1

    iput p1, p0, Landroid/car/hardware/xpu/XpuProtoMessage$Link;->ownership_:I

    goto/16 :goto_1

    .line 11218
    :sswitch_c
    invoke-virtual {p2}, Lcom/android/carsdk/protobuf/CodedInputStream;->readDouble()D

    move-result-wide v3

    iput-wide v3, p0, Landroid/car/hardware/xpu/XpuProtoMessage$Link;->length_:D

    goto/16 :goto_1

    .line 11208
    :sswitch_d
    iget-object p1, p0, Landroid/car/hardware/xpu/XpuProtoMessage$Link;->v2Points_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    invoke-interface {p1}, Lcom/android/carsdk/protobuf/Internal$ProtobufList;->isModifiable()Z

    move-result p1

    if-nez p1, :cond_6

    .line 11209
    iget-object p1, p0, Landroid/car/hardware/xpu/XpuProtoMessage$Link;->v2Points_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    .line 11210
    invoke-static {p1}, Lcom/android/carsdk/protobuf/GeneratedMessageLite;->mutableCopy(Lcom/android/carsdk/protobuf/Internal$ProtobufList;)Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    move-result-object p1

    iput-object p1, p0, Landroid/car/hardware/xpu/XpuProtoMessage$Link;->v2Points_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    .line 11212
    :cond_6
    iget-object p1, p0, Landroid/car/hardware/xpu/XpuProtoMessage$Link;->v2Points_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    .line 11213
    invoke-static {}, Landroid/car/hardware/xpu/XpuProtoMessage$V2_Point;->parser()Lcom/android/carsdk/protobuf/Parser;

    move-result-object v3

    invoke-virtual {p2, v3, p3}, Lcom/android/carsdk/protobuf/CodedInputStream;->readMessage(Lcom/android/carsdk/protobuf/Parser;Lcom/android/carsdk/protobuf/ExtensionRegistryLite;)Lcom/android/carsdk/protobuf/MessageLite;

    move-result-object v3

    check-cast v3, Landroid/car/hardware/xpu/XpuProtoMessage$V2_Point;

    .line 11212
    invoke-interface {p1, v3}, Lcom/android/carsdk/protobuf/Internal$ProtobufList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 11196
    :sswitch_e
    iget-object p1, p0, Landroid/car/hardware/xpu/XpuProtoMessage$Link;->heightDiffData_:Landroid/car/hardware/xpu/XpuProtoMessage$HeightDiffData;

    if-eqz p1, :cond_7

    .line 11197
    invoke-virtual {p1}, Landroid/car/hardware/xpu/XpuProtoMessage$HeightDiffData;->toBuilder()Lcom/android/carsdk/protobuf/GeneratedMessageLite$Builder;

    move-result-object p1

    check-cast p1, Landroid/car/hardware/xpu/XpuProtoMessage$HeightDiffData$Builder;

    goto :goto_3

    :cond_7
    move-object p1, v0

    .line 11199
    :goto_3
    invoke-static {}, Landroid/car/hardware/xpu/XpuProtoMessage$HeightDiffData;->parser()Lcom/android/carsdk/protobuf/Parser;

    move-result-object v3

    invoke-virtual {p2, v3, p3}, Lcom/android/carsdk/protobuf/CodedInputStream;->readMessage(Lcom/android/carsdk/protobuf/Parser;Lcom/android/carsdk/protobuf/ExtensionRegistryLite;)Lcom/android/carsdk/protobuf/MessageLite;

    move-result-object v3

    check-cast v3, Landroid/car/hardware/xpu/XpuProtoMessage$HeightDiffData;

    iput-object v3, p0, Landroid/car/hardware/xpu/XpuProtoMessage$Link;->heightDiffData_:Landroid/car/hardware/xpu/XpuProtoMessage$HeightDiffData;

    if-eqz p1, :cond_2

    .line 11201
    invoke-virtual {p1, v3}, Landroid/car/hardware/xpu/XpuProtoMessage$HeightDiffData$Builder;->mergeFrom(Lcom/android/carsdk/protobuf/GeneratedMessageLite;)Lcom/android/carsdk/protobuf/GeneratedMessageLite$Builder;

    .line 11202
    invoke-virtual {p1}, Landroid/car/hardware/xpu/XpuProtoMessage$HeightDiffData$Builder;->buildPartial()Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Landroid/car/hardware/xpu/XpuProtoMessage$HeightDiffData;

    iput-object p1, p0, Landroid/car/hardware/xpu/XpuProtoMessage$Link;->heightDiffData_:Landroid/car/hardware/xpu/XpuProtoMessage$HeightDiffData;

    goto/16 :goto_1

    .line 11191
    :sswitch_f
    invoke-virtual {p2}, Lcom/android/carsdk/protobuf/CodedInputStream;->readInt32()I

    move-result p1

    iput p1, p0, Landroid/car/hardware/xpu/XpuProtoMessage$Link;->laneNum_:I

    goto/16 :goto_1

    .line 11186
    :sswitch_10
    invoke-virtual {p2}, Lcom/android/carsdk/protobuf/CodedInputStream;->readInt32()I

    move-result p1

    iput p1, p0, Landroid/car/hardware/xpu/XpuProtoMessage$Link;->roadDirection_:I

    goto/16 :goto_1

    .line 11181
    :sswitch_11
    invoke-virtual {p2}, Lcom/android/carsdk/protobuf/CodedInputStream;->readInt32()I

    move-result p1

    iput p1, p0, Landroid/car/hardware/xpu/XpuProtoMessage$Link;->linkDirection_:I

    goto/16 :goto_1

    .line 11176
    :sswitch_12
    invoke-virtual {p2}, Lcom/android/carsdk/protobuf/CodedInputStream;->readBool()Z

    move-result p1

    iput-boolean p1, p0, Landroid/car/hardware/xpu/XpuProtoMessage$Link;->hasParallelRoad_:Z

    goto/16 :goto_1

    .line 11171
    :sswitch_13
    invoke-virtual {p2}, Lcom/android/carsdk/protobuf/CodedInputStream;->readBool()Z

    move-result p1

    iput-boolean p1, p0, Landroid/car/hardware/xpu/XpuProtoMessage$Link;->isOverHead_:Z

    goto/16 :goto_1

    .line 11166
    :sswitch_14
    invoke-virtual {p2}, Lcom/android/carsdk/protobuf/CodedInputStream;->readInt32()I

    move-result p1

    iput p1, p0, Landroid/car/hardware/xpu/XpuProtoMessage$Link;->roadClass_:I

    goto/16 :goto_1

    .line 11161
    :sswitch_15
    invoke-virtual {p2}, Lcom/android/carsdk/protobuf/CodedInputStream;->readInt32()I

    move-result p1

    iput p1, p0, Landroid/car/hardware/xpu/XpuProtoMessage$Link;->formwayType_:I

    goto/16 :goto_1

    .line 11156
    :sswitch_16
    invoke-virtual {p2}, Lcom/android/carsdk/protobuf/CodedInputStream;->readInt32()I

    move-result p1

    iput p1, p0, Landroid/car/hardware/xpu/XpuProtoMessage$Link;->linkType_:I

    goto/16 :goto_1

    .line 11151
    :sswitch_17
    invoke-virtual {p2}, Lcom/android/carsdk/protobuf/CodedInputStream;->readInt64()J

    move-result-wide v3

    iput-wide v3, p0, Landroid/car/hardware/xpu/XpuProtoMessage$Link;->id_:J
    :try_end_1
    .catch Lcom/android/carsdk/protobuf/InvalidProtocolBufferException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto/16 :goto_1

    :goto_4
    :sswitch_18
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

    .line 11303
    :try_start_2
    new-instance p2, Ljava/lang/RuntimeException;

    new-instance p3, Lcom/android/carsdk/protobuf/InvalidProtocolBufferException;

    .line 11305
    invoke-virtual {p1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p3, p1}, Lcom/android/carsdk/protobuf/InvalidProtocolBufferException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, p0}, Lcom/android/carsdk/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/android/carsdk/protobuf/MessageLite;)Lcom/android/carsdk/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p2

    :catch_1
    move-exception p1

    .line 11301
    new-instance p2, Ljava/lang/RuntimeException;

    invoke-virtual {p1, p0}, Lcom/android/carsdk/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/android/carsdk/protobuf/MessageLite;)Lcom/android/carsdk/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 11306
    :goto_6
    throw p1

    .line 11310
    :cond_8
    :pswitch_2
    sget-object p1, Landroid/car/hardware/xpu/XpuProtoMessage$Link;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuProtoMessage$Link;

    return-object p1

    .line 11079
    :pswitch_3
    check-cast p2, Lcom/android/carsdk/protobuf/GeneratedMessageLite$Visitor;

    .line 11080
    check-cast p3, Landroid/car/hardware/xpu/XpuProtoMessage$Link;

    .line 11081
    iget-wide v5, p0, Landroid/car/hardware/xpu/XpuProtoMessage$Link;->id_:J

    const-wide/16 v3, 0x0

    cmp-long p1, v5, v3

    if-eqz p1, :cond_9

    move p1, v2

    goto :goto_7

    :cond_9
    move p1, v1

    :goto_7
    iget-wide v8, p3, Landroid/car/hardware/xpu/XpuProtoMessage$Link;->id_:J

    cmp-long v0, v8, v3

    if-eqz v0, :cond_a

    move v7, v2

    goto :goto_8

    :cond_a
    move v7, v1

    :goto_8
    move-object v3, p2

    move v4, p1

    invoke-interface/range {v3 .. v9}, Lcom/android/carsdk/protobuf/GeneratedMessageLite$Visitor;->visitLong(ZJZJ)J

    move-result-wide v3

    iput-wide v3, p0, Landroid/car/hardware/xpu/XpuProtoMessage$Link;->id_:J

    .line 11083
    iget p1, p0, Landroid/car/hardware/xpu/XpuProtoMessage$Link;->linkType_:I

    if-eqz p1, :cond_b

    move v0, v2

    goto :goto_9

    :cond_b
    move v0, v1

    :goto_9
    iget v3, p3, Landroid/car/hardware/xpu/XpuProtoMessage$Link;->linkType_:I

    if-eqz v3, :cond_c

    move v4, v2

    goto :goto_a

    :cond_c
    move v4, v1

    :goto_a
    invoke-interface {p2, v0, p1, v4, v3}, Lcom/android/carsdk/protobuf/GeneratedMessageLite$Visitor;->visitInt(ZIZI)I

    move-result p1

    iput p1, p0, Landroid/car/hardware/xpu/XpuProtoMessage$Link;->linkType_:I

    .line 11085
    iget p1, p0, Landroid/car/hardware/xpu/XpuProtoMessage$Link;->formwayType_:I

    if-eqz p1, :cond_d

    move v0, v2

    goto :goto_b

    :cond_d
    move v0, v1

    :goto_b
    iget v3, p3, Landroid/car/hardware/xpu/XpuProtoMessage$Link;->formwayType_:I

    if-eqz v3, :cond_e

    move v4, v2

    goto :goto_c

    :cond_e
    move v4, v1

    :goto_c
    invoke-interface {p2, v0, p1, v4, v3}, Lcom/android/carsdk/protobuf/GeneratedMessageLite$Visitor;->visitInt(ZIZI)I

    move-result p1

    iput p1, p0, Landroid/car/hardware/xpu/XpuProtoMessage$Link;->formwayType_:I

    .line 11087
    iget p1, p0, Landroid/car/hardware/xpu/XpuProtoMessage$Link;->roadClass_:I

    if-eqz p1, :cond_f

    move v0, v2

    goto :goto_d

    :cond_f
    move v0, v1

    :goto_d
    iget v3, p3, Landroid/car/hardware/xpu/XpuProtoMessage$Link;->roadClass_:I

    if-eqz v3, :cond_10

    move v4, v2

    goto :goto_e

    :cond_10
    move v4, v1

    :goto_e
    invoke-interface {p2, v0, p1, v4, v3}, Lcom/android/carsdk/protobuf/GeneratedMessageLite$Visitor;->visitInt(ZIZI)I

    move-result p1

    iput p1, p0, Landroid/car/hardware/xpu/XpuProtoMessage$Link;->roadClass_:I

    .line 11089
    iget-boolean p1, p0, Landroid/car/hardware/xpu/XpuProtoMessage$Link;->isOverHead_:Z

    iget-boolean v0, p3, Landroid/car/hardware/xpu/XpuProtoMessage$Link;->isOverHead_:Z

    invoke-interface {p2, p1, p1, v0, v0}, Lcom/android/carsdk/protobuf/GeneratedMessageLite$Visitor;->visitBoolean(ZZZZ)Z

    move-result p1

    iput-boolean p1, p0, Landroid/car/hardware/xpu/XpuProtoMessage$Link;->isOverHead_:Z

    .line 11091
    iget-boolean p1, p0, Landroid/car/hardware/xpu/XpuProtoMessage$Link;->hasParallelRoad_:Z

    iget-boolean v0, p3, Landroid/car/hardware/xpu/XpuProtoMessage$Link;->hasParallelRoad_:Z

    invoke-interface {p2, p1, p1, v0, v0}, Lcom/android/carsdk/protobuf/GeneratedMessageLite$Visitor;->visitBoolean(ZZZZ)Z

    move-result p1

    iput-boolean p1, p0, Landroid/car/hardware/xpu/XpuProtoMessage$Link;->hasParallelRoad_:Z

    .line 11093
    iget p1, p0, Landroid/car/hardware/xpu/XpuProtoMessage$Link;->linkDirection_:I

    if-eqz p1, :cond_11

    move v0, v2

    goto :goto_f

    :cond_11
    move v0, v1

    :goto_f
    iget v3, p3, Landroid/car/hardware/xpu/XpuProtoMessage$Link;->linkDirection_:I

    if-eqz v3, :cond_12

    move v4, v2

    goto :goto_10

    :cond_12
    move v4, v1

    :goto_10
    invoke-interface {p2, v0, p1, v4, v3}, Lcom/android/carsdk/protobuf/GeneratedMessageLite$Visitor;->visitInt(ZIZI)I

    move-result p1

    iput p1, p0, Landroid/car/hardware/xpu/XpuProtoMessage$Link;->linkDirection_:I

    .line 11095
    iget p1, p0, Landroid/car/hardware/xpu/XpuProtoMessage$Link;->roadDirection_:I

    if-eqz p1, :cond_13

    move v0, v2

    goto :goto_11

    :cond_13
    move v0, v1

    :goto_11
    iget v3, p3, Landroid/car/hardware/xpu/XpuProtoMessage$Link;->roadDirection_:I

    if-eqz v3, :cond_14

    move v4, v2

    goto :goto_12

    :cond_14
    move v4, v1

    :goto_12
    invoke-interface {p2, v0, p1, v4, v3}, Lcom/android/carsdk/protobuf/GeneratedMessageLite$Visitor;->visitInt(ZIZI)I

    move-result p1

    iput p1, p0, Landroid/car/hardware/xpu/XpuProtoMessage$Link;->roadDirection_:I

    .line 11097
    iget p1, p0, Landroid/car/hardware/xpu/XpuProtoMessage$Link;->laneNum_:I

    if-eqz p1, :cond_15

    move v0, v2

    goto :goto_13

    :cond_15
    move v0, v1

    :goto_13
    iget v3, p3, Landroid/car/hardware/xpu/XpuProtoMessage$Link;->laneNum_:I

    if-eqz v3, :cond_16

    move v4, v2

    goto :goto_14

    :cond_16
    move v4, v1

    :goto_14
    invoke-interface {p2, v0, p1, v4, v3}, Lcom/android/carsdk/protobuf/GeneratedMessageLite$Visitor;->visitInt(ZIZI)I

    move-result p1

    iput p1, p0, Landroid/car/hardware/xpu/XpuProtoMessage$Link;->laneNum_:I

    .line 11099
    iget-object p1, p0, Landroid/car/hardware/xpu/XpuProtoMessage$Link;->heightDiffData_:Landroid/car/hardware/xpu/XpuProtoMessage$HeightDiffData;

    iget-object v0, p3, Landroid/car/hardware/xpu/XpuProtoMessage$Link;->heightDiffData_:Landroid/car/hardware/xpu/XpuProtoMessage$HeightDiffData;

    invoke-interface {p2, p1, v0}, Lcom/android/carsdk/protobuf/GeneratedMessageLite$Visitor;->visitMessage(Lcom/android/carsdk/protobuf/MessageLite;Lcom/android/carsdk/protobuf/MessageLite;)Lcom/android/carsdk/protobuf/MessageLite;

    move-result-object p1

    check-cast p1, Landroid/car/hardware/xpu/XpuProtoMessage$HeightDiffData;

    iput-object p1, p0, Landroid/car/hardware/xpu/XpuProtoMessage$Link;->heightDiffData_:Landroid/car/hardware/xpu/XpuProtoMessage$HeightDiffData;

    .line 11100
    iget-object p1, p0, Landroid/car/hardware/xpu/XpuProtoMessage$Link;->v2Points_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    iget-object v0, p3, Landroid/car/hardware/xpu/XpuProtoMessage$Link;->v2Points_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    invoke-interface {p2, p1, v0}, Lcom/android/carsdk/protobuf/GeneratedMessageLite$Visitor;->visitList(Lcom/android/carsdk/protobuf/Internal$ProtobufList;Lcom/android/carsdk/protobuf/Internal$ProtobufList;)Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    move-result-object p1

    iput-object p1, p0, Landroid/car/hardware/xpu/XpuProtoMessage$Link;->v2Points_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    .line 11101
    iget-wide v5, p0, Landroid/car/hardware/xpu/XpuProtoMessage$Link;->length_:D

    const-wide/16 v3, 0x0

    cmpl-double p1, v5, v3

    if-eqz p1, :cond_17

    move p1, v2

    goto :goto_15

    :cond_17
    move p1, v1

    :goto_15
    iget-wide v8, p3, Landroid/car/hardware/xpu/XpuProtoMessage$Link;->length_:D

    cmpl-double v0, v8, v3

    if-eqz v0, :cond_18

    move v7, v2

    goto :goto_16

    :cond_18
    move v7, v1

    :goto_16
    move-object v3, p2

    move v4, p1

    invoke-interface/range {v3 .. v9}, Lcom/android/carsdk/protobuf/GeneratedMessageLite$Visitor;->visitDouble(ZDZD)D

    move-result-wide v3

    iput-wide v3, p0, Landroid/car/hardware/xpu/XpuProtoMessage$Link;->length_:D

    .line 11103
    iget p1, p0, Landroid/car/hardware/xpu/XpuProtoMessage$Link;->ownership_:I

    if-eqz p1, :cond_19

    move v0, v2

    goto :goto_17

    :cond_19
    move v0, v1

    :goto_17
    iget v3, p3, Landroid/car/hardware/xpu/XpuProtoMessage$Link;->ownership_:I

    if-eqz v3, :cond_1a

    move v4, v2

    goto :goto_18

    :cond_1a
    move v4, v1

    :goto_18
    invoke-interface {p2, v0, p1, v4, v3}, Lcom/android/carsdk/protobuf/GeneratedMessageLite$Visitor;->visitInt(ZIZI)I

    move-result p1

    iput p1, p0, Landroid/car/hardware/xpu/XpuProtoMessage$Link;->ownership_:I

    .line 11105
    iget-object p1, p0, Landroid/car/hardware/xpu/XpuProtoMessage$Link;->roadName_:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result p1

    xor-int/2addr p1, v2

    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$Link;->roadName_:Ljava/lang/String;

    iget-object v3, p3, Landroid/car/hardware/xpu/XpuProtoMessage$Link;->roadName_:Ljava/lang/String;

    .line 11106
    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    xor-int/2addr v3, v2

    iget-object v4, p3, Landroid/car/hardware/xpu/XpuProtoMessage$Link;->roadName_:Ljava/lang/String;

    .line 11105
    invoke-interface {p2, p1, v0, v3, v4}, Lcom/android/carsdk/protobuf/GeneratedMessageLite$Visitor;->visitString(ZLjava/lang/String;ZLjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Landroid/car/hardware/xpu/XpuProtoMessage$Link;->roadName_:Ljava/lang/String;

    .line 11107
    iget-boolean p1, p0, Landroid/car/hardware/xpu/XpuProtoMessage$Link;->hasMultiOut_:Z

    iget-boolean v0, p3, Landroid/car/hardware/xpu/XpuProtoMessage$Link;->hasMultiOut_:Z

    invoke-interface {p2, p1, p1, v0, v0}, Lcom/android/carsdk/protobuf/GeneratedMessageLite$Visitor;->visitBoolean(ZZZZ)Z

    move-result p1

    iput-boolean p1, p0, Landroid/car/hardware/xpu/XpuProtoMessage$Link;->hasMultiOut_:Z

    .line 11109
    iget-boolean p1, p0, Landroid/car/hardware/xpu/XpuProtoMessage$Link;->hasTrafficLight_:Z

    iget-boolean v0, p3, Landroid/car/hardware/xpu/XpuProtoMessage$Link;->hasTrafficLight_:Z

    invoke-interface {p2, p1, p1, v0, v0}, Lcom/android/carsdk/protobuf/GeneratedMessageLite$Visitor;->visitBoolean(ZZZZ)Z

    move-result p1

    iput-boolean p1, p0, Landroid/car/hardware/xpu/XpuProtoMessage$Link;->hasTrafficLight_:Z

    .line 11111
    iget-boolean p1, p0, Landroid/car/hardware/xpu/XpuProtoMessage$Link;->hasMixFork_:Z

    iget-boolean v0, p3, Landroid/car/hardware/xpu/XpuProtoMessage$Link;->hasMixFork_:Z

    invoke-interface {p2, p1, p1, v0, v0}, Lcom/android/carsdk/protobuf/GeneratedMessageLite$Visitor;->visitBoolean(ZZZZ)Z

    move-result p1

    iput-boolean p1, p0, Landroid/car/hardware/xpu/XpuProtoMessage$Link;->hasMixFork_:Z

    .line 11113
    iget-boolean p1, p0, Landroid/car/hardware/xpu/XpuProtoMessage$Link;->isAtService_:Z

    iget-boolean v0, p3, Landroid/car/hardware/xpu/XpuProtoMessage$Link;->isAtService_:Z

    invoke-interface {p2, p1, p1, v0, v0}, Lcom/android/carsdk/protobuf/GeneratedMessageLite$Visitor;->visitBoolean(ZZZZ)Z

    move-result p1

    iput-boolean p1, p0, Landroid/car/hardware/xpu/XpuProtoMessage$Link;->isAtService_:Z

    .line 11115
    iget p1, p0, Landroid/car/hardware/xpu/XpuProtoMessage$Link;->speed_:I

    if-eqz p1, :cond_1b

    move v0, v2

    goto :goto_19

    :cond_1b
    move v0, v1

    :goto_19
    iget v3, p3, Landroid/car/hardware/xpu/XpuProtoMessage$Link;->speed_:I

    if-eqz v3, :cond_1c

    move v4, v2

    goto :goto_1a

    :cond_1c
    move v4, v1

    :goto_1a
    invoke-interface {p2, v0, p1, v4, v3}, Lcom/android/carsdk/protobuf/GeneratedMessageLite$Visitor;->visitInt(ZIZI)I

    move-result p1

    iput p1, p0, Landroid/car/hardware/xpu/XpuProtoMessage$Link;->speed_:I

    .line 11117
    iget p1, p0, Landroid/car/hardware/xpu/XpuProtoMessage$Link;->roadFacilityCount_:I

    if-eqz p1, :cond_1d

    move v0, v2

    goto :goto_1b

    :cond_1d
    move v0, v1

    :goto_1b
    iget v3, p3, Landroid/car/hardware/xpu/XpuProtoMessage$Link;->roadFacilityCount_:I

    if-eqz v3, :cond_1e

    move v4, v2

    goto :goto_1c

    :cond_1e
    move v4, v1

    :goto_1c
    invoke-interface {p2, v0, p1, v4, v3}, Lcom/android/carsdk/protobuf/GeneratedMessageLite$Visitor;->visitInt(ZIZI)I

    move-result p1

    iput p1, p0, Landroid/car/hardware/xpu/XpuProtoMessage$Link;->roadFacilityCount_:I

    .line 11119
    iget-object p1, p0, Landroid/car/hardware/xpu/XpuProtoMessage$Link;->roadFacilities_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    iget-object v0, p3, Landroid/car/hardware/xpu/XpuProtoMessage$Link;->roadFacilities_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    invoke-interface {p2, p1, v0}, Lcom/android/carsdk/protobuf/GeneratedMessageLite$Visitor;->visitList(Lcom/android/carsdk/protobuf/Internal$ProtobufList;Lcom/android/carsdk/protobuf/Internal$ProtobufList;)Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    move-result-object p1

    iput-object p1, p0, Landroid/car/hardware/xpu/XpuProtoMessage$Link;->roadFacilities_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    .line 11120
    iget-object p1, p0, Landroid/car/hardware/xpu/XpuProtoMessage$Link;->roadSlopInfo_:Landroid/car/hardware/xpu/XpuProtoMessage$RoadSlopeInfo;

    iget-object v0, p3, Landroid/car/hardware/xpu/XpuProtoMessage$Link;->roadSlopInfo_:Landroid/car/hardware/xpu/XpuProtoMessage$RoadSlopeInfo;

    invoke-interface {p2, p1, v0}, Lcom/android/carsdk/protobuf/GeneratedMessageLite$Visitor;->visitMessage(Lcom/android/carsdk/protobuf/MessageLite;Lcom/android/carsdk/protobuf/MessageLite;)Lcom/android/carsdk/protobuf/MessageLite;

    move-result-object p1

    check-cast p1, Landroid/car/hardware/xpu/XpuProtoMessage$RoadSlopeInfo;

    iput-object p1, p0, Landroid/car/hardware/xpu/XpuProtoMessage$Link;->roadSlopInfo_:Landroid/car/hardware/xpu/XpuProtoMessage$RoadSlopeInfo;

    .line 11121
    iget-object p1, p0, Landroid/car/hardware/xpu/XpuProtoMessage$Link;->slopeInfos_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    iget-object v0, p3, Landroid/car/hardware/xpu/XpuProtoMessage$Link;->slopeInfos_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    invoke-interface {p2, p1, v0}, Lcom/android/carsdk/protobuf/GeneratedMessageLite$Visitor;->visitList(Lcom/android/carsdk/protobuf/Internal$ProtobufList;Lcom/android/carsdk/protobuf/Internal$ProtobufList;)Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    move-result-object p1

    iput-object p1, p0, Landroid/car/hardware/xpu/XpuProtoMessage$Link;->slopeInfos_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    .line 11122
    iget p1, p0, Landroid/car/hardware/xpu/XpuProtoMessage$Link;->assistantAction_:I

    if-eqz p1, :cond_1f

    move v0, v2

    goto :goto_1d

    :cond_1f
    move v0, v1

    :goto_1d
    iget v3, p3, Landroid/car/hardware/xpu/XpuProtoMessage$Link;->assistantAction_:I

    if-eqz v3, :cond_20

    move v1, v2

    :cond_20
    invoke-interface {p2, v0, p1, v1, v3}, Lcom/android/carsdk/protobuf/GeneratedMessageLite$Visitor;->visitInt(ZIZI)I

    move-result p1

    iput p1, p0, Landroid/car/hardware/xpu/XpuProtoMessage$Link;->assistantAction_:I

    .line 11124
    sget-object p1, Lcom/android/carsdk/protobuf/GeneratedMessageLite$MergeFromVisitor;->INSTANCE:Lcom/android/carsdk/protobuf/GeneratedMessageLite$MergeFromVisitor;

    if-ne p2, p1, :cond_21

    .line 11126
    iget p1, p0, Landroid/car/hardware/xpu/XpuProtoMessage$Link;->bitField0_:I

    iget p2, p3, Landroid/car/hardware/xpu/XpuProtoMessage$Link;->bitField0_:I

    or-int/2addr p1, p2

    iput p1, p0, Landroid/car/hardware/xpu/XpuProtoMessage$Link;->bitField0_:I

    :cond_21
    return-object p0

    .line 11076
    :pswitch_4
    new-instance p1, Landroid/car/hardware/xpu/XpuProtoMessage$Link$Builder;

    invoke-direct {p1, v0}, Landroid/car/hardware/xpu/XpuProtoMessage$Link$Builder;-><init>(Landroid/car/hardware/xpu/XpuProtoMessage$1;)V

    return-object p1

    .line 11070
    :pswitch_5
    iget-object p1, p0, Landroid/car/hardware/xpu/XpuProtoMessage$Link;->v2Points_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    invoke-interface {p1}, Lcom/android/carsdk/protobuf/Internal$ProtobufList;->makeImmutable()V

    .line 11071
    iget-object p1, p0, Landroid/car/hardware/xpu/XpuProtoMessage$Link;->roadFacilities_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    invoke-interface {p1}, Lcom/android/carsdk/protobuf/Internal$ProtobufList;->makeImmutable()V

    .line 11072
    iget-object p1, p0, Landroid/car/hardware/xpu/XpuProtoMessage$Link;->slopeInfos_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    invoke-interface {p1}, Lcom/android/carsdk/protobuf/Internal$ProtobufList;->makeImmutable()V

    return-object v0

    .line 11067
    :pswitch_6
    sget-object p1, Landroid/car/hardware/xpu/XpuProtoMessage$Link;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuProtoMessage$Link;

    return-object p1

    .line 11064
    :pswitch_7
    new-instance p1, Landroid/car/hardware/xpu/XpuProtoMessage$Link;

    invoke-direct {p1}, Landroid/car/hardware/xpu/XpuProtoMessage$Link;-><init>()V

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
        0x0 -> :sswitch_18
        0x8 -> :sswitch_17
        0x10 -> :sswitch_16
        0x18 -> :sswitch_15
        0x20 -> :sswitch_14
        0x28 -> :sswitch_13
        0x30 -> :sswitch_12
        0x38 -> :sswitch_11
        0x40 -> :sswitch_10
        0x48 -> :sswitch_f
        0x52 -> :sswitch_e
        0x5a -> :sswitch_d
        0x61 -> :sswitch_c
        0x68 -> :sswitch_b
        0x72 -> :sswitch_a
        0x78 -> :sswitch_9
        0x80 -> :sswitch_8
        0x88 -> :sswitch_7
        0x90 -> :sswitch_6
        0x98 -> :sswitch_5
        0xa0 -> :sswitch_4
        0xaa -> :sswitch_3
        0xb2 -> :sswitch_2
        0xba -> :sswitch_1
        0xc0 -> :sswitch_0
    .end sparse-switch
.end method

.method public getAssistantAction()I
    .locals 1

    .line 9907
    iget v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$Link;->assistantAction_:I

    return v0
.end method

.method public getFormwayType()I
    .locals 1

    .line 9017
    iget v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$Link;->formwayType_:I

    return v0
.end method

.method public getHasMixFork()Z
    .locals 1

    .line 9523
    iget-boolean v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$Link;->hasMixFork_:Z

    return v0
.end method

.method public getHasMultiOut()Z
    .locals 1

    .line 9477
    iget-boolean v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$Link;->hasMultiOut_:Z

    return v0
.end method

.method public getHasParallelRoad()Z
    .locals 1

    .line 9086
    iget-boolean v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$Link;->hasParallelRoad_:Z

    return v0
.end method

.method public getHasTrafficLight()Z
    .locals 1

    .line 9500
    iget-boolean v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$Link;->hasTrafficLight_:Z

    return v0
.end method

.method public getHeightDiffData()Landroid/car/hardware/xpu/XpuProtoMessage$HeightDiffData;
    .locals 1

    .line 9184
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$Link;->heightDiffData_:Landroid/car/hardware/xpu/XpuProtoMessage$HeightDiffData;

    if-nez v0, :cond_0

    invoke-static {}, Landroid/car/hardware/xpu/XpuProtoMessage$HeightDiffData;->getDefaultInstance()Landroid/car/hardware/xpu/XpuProtoMessage$HeightDiffData;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public getId()J
    .locals 2

    .line 8971
    iget-wide v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$Link;->id_:J

    return-wide v0
.end method

.method public getIsAtService()Z
    .locals 1

    .line 9546
    iget-boolean v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$Link;->isAtService_:Z

    return v0
.end method

.method public getIsOverHead()Z
    .locals 1

    .line 9063
    iget-boolean v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$Link;->isOverHead_:Z

    return v0
.end method

.method public getLaneNum()I
    .locals 1

    .line 9155
    iget v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$Link;->laneNum_:I

    return v0
.end method

.method public getLength()D
    .locals 2

    .line 9350
    iget-wide v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$Link;->length_:D

    return-wide v0
.end method

.method public getLinkDirection()I
    .locals 1

    .line 9109
    iget v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$Link;->linkDirection_:I

    return v0
.end method

.method public getLinkType()I
    .locals 1

    .line 8994
    iget v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$Link;->linkType_:I

    return v0
.end method

.method public getOwnership()I
    .locals 1

    .line 9378
    iget v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$Link;->ownership_:I

    return v0
.end method

.method public getRoadClass()I
    .locals 1

    .line 9040
    iget v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$Link;->roadClass_:I

    return v0
.end method

.method public getRoadDirection()I
    .locals 1

    .line 9132
    iget v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$Link;->roadDirection_:I

    return v0
.end method

.method public getRoadFacilities(I)Landroid/car/hardware/xpu/XpuProtoMessage$RoadFacility;
    .locals 1

    .line 9634
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$Link;->roadFacilities_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1}, Lcom/android/carsdk/protobuf/Internal$ProtobufList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/car/hardware/xpu/XpuProtoMessage$RoadFacility;

    return-object p1
.end method

.method public getRoadFacilitiesCount()I
    .locals 1

    .line 9628
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$Link;->roadFacilities_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

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
            "Landroid/car/hardware/xpu/XpuProtoMessage$RoadFacility;",
            ">;"
        }
    .end annotation

    .line 9615
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$Link;->roadFacilities_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    return-object v0
.end method

.method public getRoadFacilitiesOrBuilder(I)Landroid/car/hardware/xpu/XpuProtoMessage$RoadFacilityOrBuilder;
    .locals 1

    .line 9641
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$Link;->roadFacilities_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1}, Lcom/android/carsdk/protobuf/Internal$ProtobufList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/car/hardware/xpu/XpuProtoMessage$RoadFacilityOrBuilder;

    return-object p1
.end method

.method public getRoadFacilitiesOrBuilderList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "+",
            "Landroid/car/hardware/xpu/XpuProtoMessage$RoadFacilityOrBuilder;",
            ">;"
        }
    .end annotation

    .line 9622
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$Link;->roadFacilities_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    return-object v0
.end method

.method public getRoadFacilityCount()I
    .locals 1

    .line 9592
    iget v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$Link;->roadFacilityCount_:I

    return v0
.end method

.method public getRoadName()Ljava/lang/String;
    .locals 1

    .line 9415
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$Link;->roadName_:Ljava/lang/String;

    return-object v0
.end method

.method public getRoadNameBytes()Lcom/android/carsdk/protobuf/ByteString;
    .locals 1

    .line 9426
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$Link;->roadName_:Ljava/lang/String;

    invoke-static {v0}, Lcom/android/carsdk/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/android/carsdk/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getRoadSlopInfo()Landroid/car/hardware/xpu/XpuProtoMessage$RoadSlopeInfo;
    .locals 1

    .line 9741
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$Link;->roadSlopInfo_:Landroid/car/hardware/xpu/XpuProtoMessage$RoadSlopeInfo;

    if-nez v0, :cond_0

    invoke-static {}, Landroid/car/hardware/xpu/XpuProtoMessage$RoadSlopeInfo;->getDefaultInstance()Landroid/car/hardware/xpu/XpuProtoMessage$RoadSlopeInfo;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public getSerializedSize()I
    .locals 6

    .line 10001
    iget v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$Link;->memoizedSerializedSize:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    return v0

    .line 10005
    :cond_0
    iget-wide v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$Link;->id_:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    const/4 v3, 0x0

    if-eqz v2, :cond_1

    const/4 v2, 0x1

    .line 10007
    invoke-static {v2, v0, v1}, Lcom/android/carsdk/protobuf/CodedOutputStream;->computeInt64Size(IJ)I

    move-result v0

    add-int/2addr v0, v3

    goto :goto_0

    :cond_1
    move v0, v3

    .line 10009
    :goto_0
    iget v1, p0, Landroid/car/hardware/xpu/XpuProtoMessage$Link;->linkType_:I

    if-eqz v1, :cond_2

    const/4 v2, 0x2

    .line 10011
    invoke-static {v2, v1}, Lcom/android/carsdk/protobuf/CodedOutputStream;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 10013
    :cond_2
    iget v1, p0, Landroid/car/hardware/xpu/XpuProtoMessage$Link;->formwayType_:I

    if-eqz v1, :cond_3

    const/4 v2, 0x3

    .line 10015
    invoke-static {v2, v1}, Lcom/android/carsdk/protobuf/CodedOutputStream;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 10017
    :cond_3
    iget v1, p0, Landroid/car/hardware/xpu/XpuProtoMessage$Link;->roadClass_:I

    if-eqz v1, :cond_4

    const/4 v2, 0x4

    .line 10019
    invoke-static {v2, v1}, Lcom/android/carsdk/protobuf/CodedOutputStream;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 10021
    :cond_4
    iget-boolean v1, p0, Landroid/car/hardware/xpu/XpuProtoMessage$Link;->isOverHead_:Z

    if-eqz v1, :cond_5

    const/4 v2, 0x5

    .line 10023
    invoke-static {v2, v1}, Lcom/android/carsdk/protobuf/CodedOutputStream;->computeBoolSize(IZ)I

    move-result v1

    add-int/2addr v0, v1

    .line 10025
    :cond_5
    iget-boolean v1, p0, Landroid/car/hardware/xpu/XpuProtoMessage$Link;->hasParallelRoad_:Z

    if-eqz v1, :cond_6

    const/4 v2, 0x6

    .line 10027
    invoke-static {v2, v1}, Lcom/android/carsdk/protobuf/CodedOutputStream;->computeBoolSize(IZ)I

    move-result v1

    add-int/2addr v0, v1

    .line 10029
    :cond_6
    iget v1, p0, Landroid/car/hardware/xpu/XpuProtoMessage$Link;->linkDirection_:I

    if-eqz v1, :cond_7

    const/4 v2, 0x7

    .line 10031
    invoke-static {v2, v1}, Lcom/android/carsdk/protobuf/CodedOutputStream;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 10033
    :cond_7
    iget v1, p0, Landroid/car/hardware/xpu/XpuProtoMessage$Link;->roadDirection_:I

    if-eqz v1, :cond_8

    const/16 v2, 0x8

    .line 10035
    invoke-static {v2, v1}, Lcom/android/carsdk/protobuf/CodedOutputStream;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 10037
    :cond_8
    iget v1, p0, Landroid/car/hardware/xpu/XpuProtoMessage$Link;->laneNum_:I

    if-eqz v1, :cond_9

    const/16 v2, 0x9

    .line 10039
    invoke-static {v2, v1}, Lcom/android/carsdk/protobuf/CodedOutputStream;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 10041
    :cond_9
    iget-object v1, p0, Landroid/car/hardware/xpu/XpuProtoMessage$Link;->heightDiffData_:Landroid/car/hardware/xpu/XpuProtoMessage$HeightDiffData;

    if-eqz v1, :cond_a

    const/16 v1, 0xa

    .line 10043
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuProtoMessage$Link;->getHeightDiffData()Landroid/car/hardware/xpu/XpuProtoMessage$HeightDiffData;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/carsdk/protobuf/CodedOutputStream;->computeMessageSize(ILcom/android/carsdk/protobuf/MessageLite;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_a
    move v1, v3

    .line 10045
    :goto_1
    iget-object v2, p0, Landroid/car/hardware/xpu/XpuProtoMessage$Link;->v2Points_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    invoke-interface {v2}, Lcom/android/carsdk/protobuf/Internal$ProtobufList;->size()I

    move-result v2

    if-ge v1, v2, :cond_b

    const/16 v2, 0xb

    .line 10046
    iget-object v4, p0, Landroid/car/hardware/xpu/XpuProtoMessage$Link;->v2Points_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    .line 10047
    invoke-interface {v4, v1}, Lcom/android/carsdk/protobuf/Internal$ProtobufList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/carsdk/protobuf/MessageLite;

    invoke-static {v2, v4}, Lcom/android/carsdk/protobuf/CodedOutputStream;->computeMessageSize(ILcom/android/carsdk/protobuf/MessageLite;)I

    move-result v2

    add-int/2addr v0, v2

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 10049
    :cond_b
    iget-wide v1, p0, Landroid/car/hardware/xpu/XpuProtoMessage$Link;->length_:D

    const-wide/16 v4, 0x0

    cmpl-double v4, v1, v4

    if-eqz v4, :cond_c

    const/16 v4, 0xc

    .line 10051
    invoke-static {v4, v1, v2}, Lcom/android/carsdk/protobuf/CodedOutputStream;->computeDoubleSize(ID)I

    move-result v1

    add-int/2addr v0, v1

    .line 10053
    :cond_c
    iget v1, p0, Landroid/car/hardware/xpu/XpuProtoMessage$Link;->ownership_:I

    if-eqz v1, :cond_d

    const/16 v2, 0xd

    .line 10055
    invoke-static {v2, v1}, Lcom/android/carsdk/protobuf/CodedOutputStream;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 10057
    :cond_d
    iget-object v1, p0, Landroid/car/hardware/xpu/XpuProtoMessage$Link;->roadName_:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_e

    const/16 v1, 0xe

    .line 10059
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuProtoMessage$Link;->getRoadName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/carsdk/protobuf/CodedOutputStream;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 10061
    :cond_e
    iget-boolean v1, p0, Landroid/car/hardware/xpu/XpuProtoMessage$Link;->hasMultiOut_:Z

    if-eqz v1, :cond_f

    const/16 v2, 0xf

    .line 10063
    invoke-static {v2, v1}, Lcom/android/carsdk/protobuf/CodedOutputStream;->computeBoolSize(IZ)I

    move-result v1

    add-int/2addr v0, v1

    .line 10065
    :cond_f
    iget-boolean v1, p0, Landroid/car/hardware/xpu/XpuProtoMessage$Link;->hasTrafficLight_:Z

    if-eqz v1, :cond_10

    const/16 v2, 0x10

    .line 10067
    invoke-static {v2, v1}, Lcom/android/carsdk/protobuf/CodedOutputStream;->computeBoolSize(IZ)I

    move-result v1

    add-int/2addr v0, v1

    .line 10069
    :cond_10
    iget-boolean v1, p0, Landroid/car/hardware/xpu/XpuProtoMessage$Link;->hasMixFork_:Z

    if-eqz v1, :cond_11

    const/16 v2, 0x11

    .line 10071
    invoke-static {v2, v1}, Lcom/android/carsdk/protobuf/CodedOutputStream;->computeBoolSize(IZ)I

    move-result v1

    add-int/2addr v0, v1

    .line 10073
    :cond_11
    iget-boolean v1, p0, Landroid/car/hardware/xpu/XpuProtoMessage$Link;->isAtService_:Z

    if-eqz v1, :cond_12

    const/16 v2, 0x12

    .line 10075
    invoke-static {v2, v1}, Lcom/android/carsdk/protobuf/CodedOutputStream;->computeBoolSize(IZ)I

    move-result v1

    add-int/2addr v0, v1

    .line 10077
    :cond_12
    iget v1, p0, Landroid/car/hardware/xpu/XpuProtoMessage$Link;->speed_:I

    if-eqz v1, :cond_13

    const/16 v2, 0x13

    .line 10079
    invoke-static {v2, v1}, Lcom/android/carsdk/protobuf/CodedOutputStream;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 10081
    :cond_13
    iget v1, p0, Landroid/car/hardware/xpu/XpuProtoMessage$Link;->roadFacilityCount_:I

    if-eqz v1, :cond_14

    const/16 v2, 0x14

    .line 10083
    invoke-static {v2, v1}, Lcom/android/carsdk/protobuf/CodedOutputStream;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    :cond_14
    move v1, v3

    .line 10085
    :goto_2
    iget-object v2, p0, Landroid/car/hardware/xpu/XpuProtoMessage$Link;->roadFacilities_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    invoke-interface {v2}, Lcom/android/carsdk/protobuf/Internal$ProtobufList;->size()I

    move-result v2

    if-ge v1, v2, :cond_15

    const/16 v2, 0x15

    .line 10086
    iget-object v4, p0, Landroid/car/hardware/xpu/XpuProtoMessage$Link;->roadFacilities_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    .line 10087
    invoke-interface {v4, v1}, Lcom/android/carsdk/protobuf/Internal$ProtobufList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/carsdk/protobuf/MessageLite;

    invoke-static {v2, v4}, Lcom/android/carsdk/protobuf/CodedOutputStream;->computeMessageSize(ILcom/android/carsdk/protobuf/MessageLite;)I

    move-result v2

    add-int/2addr v0, v2

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 10089
    :cond_15
    iget-object v1, p0, Landroid/car/hardware/xpu/XpuProtoMessage$Link;->roadSlopInfo_:Landroid/car/hardware/xpu/XpuProtoMessage$RoadSlopeInfo;

    if-eqz v1, :cond_16

    const/16 v1, 0x16

    .line 10091
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuProtoMessage$Link;->getRoadSlopInfo()Landroid/car/hardware/xpu/XpuProtoMessage$RoadSlopeInfo;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/carsdk/protobuf/CodedOutputStream;->computeMessageSize(ILcom/android/carsdk/protobuf/MessageLite;)I

    move-result v1

    add-int/2addr v0, v1

    .line 10093
    :cond_16
    :goto_3
    iget-object v1, p0, Landroid/car/hardware/xpu/XpuProtoMessage$Link;->slopeInfos_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    invoke-interface {v1}, Lcom/android/carsdk/protobuf/Internal$ProtobufList;->size()I

    move-result v1

    if-ge v3, v1, :cond_17

    const/16 v1, 0x17

    .line 10094
    iget-object v2, p0, Landroid/car/hardware/xpu/XpuProtoMessage$Link;->slopeInfos_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    .line 10095
    invoke-interface {v2, v3}, Lcom/android/carsdk/protobuf/Internal$ProtobufList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/carsdk/protobuf/MessageLite;

    invoke-static {v1, v2}, Lcom/android/carsdk/protobuf/CodedOutputStream;->computeMessageSize(ILcom/android/carsdk/protobuf/MessageLite;)I

    move-result v1

    add-int/2addr v0, v1

    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    .line 10097
    :cond_17
    iget v1, p0, Landroid/car/hardware/xpu/XpuProtoMessage$Link;->assistantAction_:I

    if-eqz v1, :cond_18

    const/16 v2, 0x18

    .line 10099
    invoke-static {v2, v1}, Lcom/android/carsdk/protobuf/CodedOutputStream;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 10101
    :cond_18
    iput v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$Link;->memoizedSerializedSize:I

    return v0
.end method

.method public getSlopeInfos(I)Landroid/car/hardware/xpu/XpuProtoMessage$SlopeInfo;
    .locals 1

    .line 9806
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$Link;->slopeInfos_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1}, Lcom/android/carsdk/protobuf/Internal$ProtobufList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/car/hardware/xpu/XpuProtoMessage$SlopeInfo;

    return-object p1
.end method

.method public getSlopeInfosCount()I
    .locals 1

    .line 9800
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$Link;->slopeInfos_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

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
            "Landroid/car/hardware/xpu/XpuProtoMessage$SlopeInfo;",
            ">;"
        }
    .end annotation

    .line 9787
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$Link;->slopeInfos_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    return-object v0
.end method

.method public getSlopeInfosOrBuilder(I)Landroid/car/hardware/xpu/XpuProtoMessage$SlopeInfoOrBuilder;
    .locals 1

    .line 9813
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$Link;->slopeInfos_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1}, Lcom/android/carsdk/protobuf/Internal$ProtobufList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/car/hardware/xpu/XpuProtoMessage$SlopeInfoOrBuilder;

    return-object p1
.end method

.method public getSlopeInfosOrBuilderList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "+",
            "Landroid/car/hardware/xpu/XpuProtoMessage$SlopeInfoOrBuilder;",
            ">;"
        }
    .end annotation

    .line 9794
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$Link;->slopeInfos_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    return-object v0
.end method

.method public getSpeed()I
    .locals 1

    .line 9569
    iget v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$Link;->speed_:I

    return v0
.end method

.method public getV2Points(I)Landroid/car/hardware/xpu/XpuProtoMessage$V2_Point;
    .locals 1

    .line 9249
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$Link;->v2Points_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1}, Lcom/android/carsdk/protobuf/Internal$ProtobufList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/car/hardware/xpu/XpuProtoMessage$V2_Point;

    return-object p1
.end method

.method public getV2PointsCount()I
    .locals 1

    .line 9243
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$Link;->v2Points_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

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
            "Landroid/car/hardware/xpu/XpuProtoMessage$V2_Point;",
            ">;"
        }
    .end annotation

    .line 9230
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$Link;->v2Points_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    return-object v0
.end method

.method public getV2PointsOrBuilder(I)Landroid/car/hardware/xpu/XpuProtoMessage$V2_PointOrBuilder;
    .locals 1

    .line 9256
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$Link;->v2Points_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1}, Lcom/android/carsdk/protobuf/Internal$ProtobufList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/car/hardware/xpu/XpuProtoMessage$V2_PointOrBuilder;

    return-object p1
.end method

.method public getV2PointsOrBuilderList()Ljava/util/List;
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

    .line 9237
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$Link;->v2Points_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    return-object v0
.end method

.method public hasHeightDiffData()Z
    .locals 1

    .line 9178
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$Link;->heightDiffData_:Landroid/car/hardware/xpu/XpuProtoMessage$HeightDiffData;

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

    .line 9735
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$Link;->roadSlopInfo_:Landroid/car/hardware/xpu/XpuProtoMessage$RoadSlopeInfo;

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

    .line 9926
    iget-wide v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$Link;->id_:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    .line 9927
    invoke-virtual {p1, v2, v0, v1}, Lcom/android/carsdk/protobuf/CodedOutputStream;->writeInt64(IJ)V

    .line 9929
    :cond_0
    iget v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$Link;->linkType_:I

    if-eqz v0, :cond_1

    const/4 v1, 0x2

    .line 9930
    invoke-virtual {p1, v1, v0}, Lcom/android/carsdk/protobuf/CodedOutputStream;->writeInt32(II)V

    .line 9932
    :cond_1
    iget v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$Link;->formwayType_:I

    if-eqz v0, :cond_2

    const/4 v1, 0x3

    .line 9933
    invoke-virtual {p1, v1, v0}, Lcom/android/carsdk/protobuf/CodedOutputStream;->writeInt32(II)V

    .line 9935
    :cond_2
    iget v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$Link;->roadClass_:I

    if-eqz v0, :cond_3

    const/4 v1, 0x4

    .line 9936
    invoke-virtual {p1, v1, v0}, Lcom/android/carsdk/protobuf/CodedOutputStream;->writeInt32(II)V

    .line 9938
    :cond_3
    iget-boolean v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$Link;->isOverHead_:Z

    if-eqz v0, :cond_4

    const/4 v1, 0x5

    .line 9939
    invoke-virtual {p1, v1, v0}, Lcom/android/carsdk/protobuf/CodedOutputStream;->writeBool(IZ)V

    .line 9941
    :cond_4
    iget-boolean v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$Link;->hasParallelRoad_:Z

    if-eqz v0, :cond_5

    const/4 v1, 0x6

    .line 9942
    invoke-virtual {p1, v1, v0}, Lcom/android/carsdk/protobuf/CodedOutputStream;->writeBool(IZ)V

    .line 9944
    :cond_5
    iget v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$Link;->linkDirection_:I

    if-eqz v0, :cond_6

    const/4 v1, 0x7

    .line 9945
    invoke-virtual {p1, v1, v0}, Lcom/android/carsdk/protobuf/CodedOutputStream;->writeInt32(II)V

    .line 9947
    :cond_6
    iget v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$Link;->roadDirection_:I

    if-eqz v0, :cond_7

    const/16 v1, 0x8

    .line 9948
    invoke-virtual {p1, v1, v0}, Lcom/android/carsdk/protobuf/CodedOutputStream;->writeInt32(II)V

    .line 9950
    :cond_7
    iget v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$Link;->laneNum_:I

    if-eqz v0, :cond_8

    const/16 v1, 0x9

    .line 9951
    invoke-virtual {p1, v1, v0}, Lcom/android/carsdk/protobuf/CodedOutputStream;->writeInt32(II)V

    .line 9953
    :cond_8
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$Link;->heightDiffData_:Landroid/car/hardware/xpu/XpuProtoMessage$HeightDiffData;

    if-eqz v0, :cond_9

    const/16 v0, 0xa

    .line 9954
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuProtoMessage$Link;->getHeightDiffData()Landroid/car/hardware/xpu/XpuProtoMessage$HeightDiffData;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/android/carsdk/protobuf/CodedOutputStream;->writeMessage(ILcom/android/carsdk/protobuf/MessageLite;)V

    :cond_9
    const/4 v0, 0x0

    move v1, v0

    .line 9956
    :goto_0
    iget-object v2, p0, Landroid/car/hardware/xpu/XpuProtoMessage$Link;->v2Points_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    invoke-interface {v2}, Lcom/android/carsdk/protobuf/Internal$ProtobufList;->size()I

    move-result v2

    if-ge v1, v2, :cond_a

    const/16 v2, 0xb

    .line 9957
    iget-object v3, p0, Landroid/car/hardware/xpu/XpuProtoMessage$Link;->v2Points_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    invoke-interface {v3, v1}, Lcom/android/carsdk/protobuf/Internal$ProtobufList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/carsdk/protobuf/MessageLite;

    invoke-virtual {p1, v2, v3}, Lcom/android/carsdk/protobuf/CodedOutputStream;->writeMessage(ILcom/android/carsdk/protobuf/MessageLite;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 9959
    :cond_a
    iget-wide v1, p0, Landroid/car/hardware/xpu/XpuProtoMessage$Link;->length_:D

    const-wide/16 v3, 0x0

    cmpl-double v3, v1, v3

    if-eqz v3, :cond_b

    const/16 v3, 0xc

    .line 9960
    invoke-virtual {p1, v3, v1, v2}, Lcom/android/carsdk/protobuf/CodedOutputStream;->writeDouble(ID)V

    .line 9962
    :cond_b
    iget v1, p0, Landroid/car/hardware/xpu/XpuProtoMessage$Link;->ownership_:I

    if-eqz v1, :cond_c

    const/16 v2, 0xd

    .line 9963
    invoke-virtual {p1, v2, v1}, Lcom/android/carsdk/protobuf/CodedOutputStream;->writeInt32(II)V

    .line 9965
    :cond_c
    iget-object v1, p0, Landroid/car/hardware/xpu/XpuProtoMessage$Link;->roadName_:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_d

    const/16 v1, 0xe

    .line 9966
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuProtoMessage$Link;->getRoadName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Lcom/android/carsdk/protobuf/CodedOutputStream;->writeString(ILjava/lang/String;)V

    .line 9968
    :cond_d
    iget-boolean v1, p0, Landroid/car/hardware/xpu/XpuProtoMessage$Link;->hasMultiOut_:Z

    if-eqz v1, :cond_e

    const/16 v2, 0xf

    .line 9969
    invoke-virtual {p1, v2, v1}, Lcom/android/carsdk/protobuf/CodedOutputStream;->writeBool(IZ)V

    .line 9971
    :cond_e
    iget-boolean v1, p0, Landroid/car/hardware/xpu/XpuProtoMessage$Link;->hasTrafficLight_:Z

    if-eqz v1, :cond_f

    const/16 v2, 0x10

    .line 9972
    invoke-virtual {p1, v2, v1}, Lcom/android/carsdk/protobuf/CodedOutputStream;->writeBool(IZ)V

    .line 9974
    :cond_f
    iget-boolean v1, p0, Landroid/car/hardware/xpu/XpuProtoMessage$Link;->hasMixFork_:Z

    if-eqz v1, :cond_10

    const/16 v2, 0x11

    .line 9975
    invoke-virtual {p1, v2, v1}, Lcom/android/carsdk/protobuf/CodedOutputStream;->writeBool(IZ)V

    .line 9977
    :cond_10
    iget-boolean v1, p0, Landroid/car/hardware/xpu/XpuProtoMessage$Link;->isAtService_:Z

    if-eqz v1, :cond_11

    const/16 v2, 0x12

    .line 9978
    invoke-virtual {p1, v2, v1}, Lcom/android/carsdk/protobuf/CodedOutputStream;->writeBool(IZ)V

    .line 9980
    :cond_11
    iget v1, p0, Landroid/car/hardware/xpu/XpuProtoMessage$Link;->speed_:I

    if-eqz v1, :cond_12

    const/16 v2, 0x13

    .line 9981
    invoke-virtual {p1, v2, v1}, Lcom/android/carsdk/protobuf/CodedOutputStream;->writeInt32(II)V

    .line 9983
    :cond_12
    iget v1, p0, Landroid/car/hardware/xpu/XpuProtoMessage$Link;->roadFacilityCount_:I

    if-eqz v1, :cond_13

    const/16 v2, 0x14

    .line 9984
    invoke-virtual {p1, v2, v1}, Lcom/android/carsdk/protobuf/CodedOutputStream;->writeInt32(II)V

    :cond_13
    move v1, v0

    .line 9986
    :goto_1
    iget-object v2, p0, Landroid/car/hardware/xpu/XpuProtoMessage$Link;->roadFacilities_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    invoke-interface {v2}, Lcom/android/carsdk/protobuf/Internal$ProtobufList;->size()I

    move-result v2

    if-ge v1, v2, :cond_14

    const/16 v2, 0x15

    .line 9987
    iget-object v3, p0, Landroid/car/hardware/xpu/XpuProtoMessage$Link;->roadFacilities_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    invoke-interface {v3, v1}, Lcom/android/carsdk/protobuf/Internal$ProtobufList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/carsdk/protobuf/MessageLite;

    invoke-virtual {p1, v2, v3}, Lcom/android/carsdk/protobuf/CodedOutputStream;->writeMessage(ILcom/android/carsdk/protobuf/MessageLite;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 9989
    :cond_14
    iget-object v1, p0, Landroid/car/hardware/xpu/XpuProtoMessage$Link;->roadSlopInfo_:Landroid/car/hardware/xpu/XpuProtoMessage$RoadSlopeInfo;

    if-eqz v1, :cond_15

    const/16 v1, 0x16

    .line 9990
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuProtoMessage$Link;->getRoadSlopInfo()Landroid/car/hardware/xpu/XpuProtoMessage$RoadSlopeInfo;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Lcom/android/carsdk/protobuf/CodedOutputStream;->writeMessage(ILcom/android/carsdk/protobuf/MessageLite;)V

    .line 9992
    :cond_15
    :goto_2
    iget-object v1, p0, Landroid/car/hardware/xpu/XpuProtoMessage$Link;->slopeInfos_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    invoke-interface {v1}, Lcom/android/carsdk/protobuf/Internal$ProtobufList;->size()I

    move-result v1

    if-ge v0, v1, :cond_16

    const/16 v1, 0x17

    .line 9993
    iget-object v2, p0, Landroid/car/hardware/xpu/XpuProtoMessage$Link;->slopeInfos_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    invoke-interface {v2, v0}, Lcom/android/carsdk/protobuf/Internal$ProtobufList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/carsdk/protobuf/MessageLite;

    invoke-virtual {p1, v1, v2}, Lcom/android/carsdk/protobuf/CodedOutputStream;->writeMessage(ILcom/android/carsdk/protobuf/MessageLite;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 9995
    :cond_16
    iget v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$Link;->assistantAction_:I

    if-eqz v0, :cond_17

    const/16 v1, 0x18

    .line 9996
    invoke-virtual {p1, v1, v0}, Lcom/android/carsdk/protobuf/CodedOutputStream;->writeInt32(II)V

    :cond_17
    return-void
.end method
