.class public final Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpEmulatorNavigation;
.super Lcom/android/carsdk/protobuf/GeneratedMessageLite;
.source "XpuFNgpRouteMessage.java"

# interfaces
.implements Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpEmulatorNavigationOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/car/hardware/xpu/XpuFNgpRouteMessage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "FNgpEmulatorNavigation"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpEmulatorNavigation$Builder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/carsdk/protobuf/GeneratedMessageLite<",
        "Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpEmulatorNavigation;",
        "Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpEmulatorNavigation$Builder;",
        ">;",
        "Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpEmulatorNavigationOrBuilder;"
    }
.end annotation


# static fields
.field public static final ARRIVE_TIME_FIELD_NUMBER:I = 0x7

.field public static final CURRENT_LOCAL_POINT_FIELD_NUMBER:I = 0xf

.field public static final CURRENT_LOCAL_ROTATION_FIELD_NUMBER:I = 0x10

.field public static final CURRENT_LONLAT_POINT_FIELD_NUMBER:I = 0x3

.field public static final CURRENT_OFFSET_FIELD_NUMBER:I = 0xb

.field public static final CURRENT_POINT_INDEX_IN_V2LIST_FIELD_NUMBER:I = 0x2

.field private static final DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpEmulatorNavigation;

.field public static final EGO_INTERNAL_ROAD_STATE_FIELD_NUMBER:I = 0xe

.field public static final END_INTERNAL_PASSED_MILEAGE_FIELD_NUMBER:I = 0x12

.field public static final END_POINT_NAME_FIELD_NUMBER:I = 0xd

.field public static final END_SLOT_SHAPE_FIELD_NUMBER:I = 0x11

.field public static final MANEUVER_DIRECTION_FIELD_NUMBER:I = 0x9

.field public static final MANEUVER_DISTANCE_FIELD_NUMBER:I = 0xa

.field public static final MANEUVER_TYPE_FIELD_NUMBER:I = 0x8

.field public static final OFFSET_SEGMENT_LIST_FIELD_NUMBER:I = 0xc

.field private static volatile PARSER:Lcom/android/carsdk/protobuf/Parser; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/carsdk/protobuf/Parser<",
            "Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpEmulatorNavigation;",
            ">;"
        }
    .end annotation
.end field

.field public static final PASSED_MILEAGE_FIELD_NUMBER:I = 0x5

.field public static final PATH_TYPE_FIELD_NUMBER:I = 0x13

.field public static final PREDICT_TIME_DURATION_FIELD_NUMBER:I = 0x6

.field public static final REMAIN_MILEAGE_FIELD_NUMBER:I = 0x4

.field public static final ROUTE_ID_FIELD_NUMBER:I = 0x1


# instance fields
.field private arriveTime_:J

.field private bitField0_:I

.field private currentLocalPoint_:Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Point;

.field private currentLocalRotation_:Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Rotation;

.field private currentLonlatPoint_:Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Point;

.field private currentOffset_:I

.field private currentPointIndexInV2List_:I

.field private egoInternalRoadState_:I

.field private endInternalPassedMileage_:I

.field private endPointName_:Ljava/lang/String;

.field private endSlotShape_:I

.field private maneuverDirection_:I

.field private maneuverDistance_:I

.field private maneuverType_:I

.field private offsetSegmentList_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/carsdk/protobuf/Internal$ProtobufList<",
            "Landroid/car/hardware/xpu/XpuFNgpRouteMessage$SegmentInfo;",
            ">;"
        }
    .end annotation
.end field

.field private passedMileage_:I

.field private pathType_:I

.field private predictTimeDuration_:J

.field private remainMileage_:I

.field private routeId_:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 15527
    new-instance v0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpEmulatorNavigation;

    invoke-direct {v0}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpEmulatorNavigation;-><init>()V

    sput-object v0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpEmulatorNavigation;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpEmulatorNavigation;

    .line 15528
    invoke-virtual {v0}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpEmulatorNavigation;->makeImmutable()V

    return-void
.end method

.method private constructor <init>()V
    .locals 3

    .line 12930
    invoke-direct {p0}, Lcom/android/carsdk/protobuf/GeneratedMessageLite;-><init>()V

    const-wide/16 v0, 0x0

    .line 12931
    iput-wide v0, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpEmulatorNavigation;->routeId_:J

    const/4 v2, 0x0

    .line 12932
    iput v2, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpEmulatorNavigation;->currentPointIndexInV2List_:I

    .line 12933
    iput v2, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpEmulatorNavigation;->remainMileage_:I

    .line 12934
    iput v2, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpEmulatorNavigation;->passedMileage_:I

    .line 12935
    iput-wide v0, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpEmulatorNavigation;->predictTimeDuration_:J

    .line 12936
    iput-wide v0, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpEmulatorNavigation;->arriveTime_:J

    .line 12937
    iput v2, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpEmulatorNavigation;->maneuverType_:I

    .line 12938
    iput v2, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpEmulatorNavigation;->maneuverDirection_:I

    .line 12939
    iput v2, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpEmulatorNavigation;->maneuverDistance_:I

    .line 12940
    iput v2, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpEmulatorNavigation;->currentOffset_:I

    .line 12941
    invoke-static {}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpEmulatorNavigation;->emptyProtobufList()Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    move-result-object v0

    iput-object v0, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpEmulatorNavigation;->offsetSegmentList_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    const-string v0, ""

    .line 12942
    iput-object v0, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpEmulatorNavigation;->endPointName_:Ljava/lang/String;

    .line 12943
    iput v2, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpEmulatorNavigation;->egoInternalRoadState_:I

    .line 12944
    iput v2, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpEmulatorNavigation;->endSlotShape_:I

    .line 12945
    iput v2, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpEmulatorNavigation;->endInternalPassedMileage_:I

    .line 12946
    iput v2, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpEmulatorNavigation;->pathType_:I

    return-void
.end method

.method static synthetic access$20500()Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpEmulatorNavigation;
    .locals 1

    .line 12925
    sget-object v0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpEmulatorNavigation;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpEmulatorNavigation;

    return-object v0
.end method

.method static synthetic access$20600(Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpEmulatorNavigation;J)V
    .locals 0

    .line 12925
    invoke-direct {p0, p1, p2}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpEmulatorNavigation;->setRouteId(J)V

    return-void
.end method

.method static synthetic access$20700(Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpEmulatorNavigation;)V
    .locals 0

    .line 12925
    invoke-direct {p0}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpEmulatorNavigation;->clearRouteId()V

    return-void
.end method

.method static synthetic access$20800(Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpEmulatorNavigation;I)V
    .locals 0

    .line 12925
    invoke-direct {p0, p1}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpEmulatorNavigation;->setCurrentPointIndexInV2List(I)V

    return-void
.end method

.method static synthetic access$20900(Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpEmulatorNavigation;)V
    .locals 0

    .line 12925
    invoke-direct {p0}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpEmulatorNavigation;->clearCurrentPointIndexInV2List()V

    return-void
.end method

.method static synthetic access$21000(Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpEmulatorNavigation;Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Point;)V
    .locals 0

    .line 12925
    invoke-direct {p0, p1}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpEmulatorNavigation;->setCurrentLonlatPoint(Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Point;)V

    return-void
.end method

.method static synthetic access$21100(Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpEmulatorNavigation;Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Point$Builder;)V
    .locals 0

    .line 12925
    invoke-direct {p0, p1}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpEmulatorNavigation;->setCurrentLonlatPoint(Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Point$Builder;)V

    return-void
.end method

.method static synthetic access$21200(Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpEmulatorNavigation;Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Point;)V
    .locals 0

    .line 12925
    invoke-direct {p0, p1}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpEmulatorNavigation;->mergeCurrentLonlatPoint(Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Point;)V

    return-void
.end method

.method static synthetic access$21300(Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpEmulatorNavigation;)V
    .locals 0

    .line 12925
    invoke-direct {p0}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpEmulatorNavigation;->clearCurrentLonlatPoint()V

    return-void
.end method

.method static synthetic access$21400(Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpEmulatorNavigation;I)V
    .locals 0

    .line 12925
    invoke-direct {p0, p1}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpEmulatorNavigation;->setRemainMileage(I)V

    return-void
.end method

.method static synthetic access$21500(Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpEmulatorNavigation;)V
    .locals 0

    .line 12925
    invoke-direct {p0}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpEmulatorNavigation;->clearRemainMileage()V

    return-void
.end method

.method static synthetic access$21600(Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpEmulatorNavigation;I)V
    .locals 0

    .line 12925
    invoke-direct {p0, p1}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpEmulatorNavigation;->setPassedMileage(I)V

    return-void
.end method

.method static synthetic access$21700(Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpEmulatorNavigation;)V
    .locals 0

    .line 12925
    invoke-direct {p0}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpEmulatorNavigation;->clearPassedMileage()V

    return-void
.end method

.method static synthetic access$21800(Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpEmulatorNavigation;J)V
    .locals 0

    .line 12925
    invoke-direct {p0, p1, p2}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpEmulatorNavigation;->setPredictTimeDuration(J)V

    return-void
.end method

.method static synthetic access$21900(Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpEmulatorNavigation;)V
    .locals 0

    .line 12925
    invoke-direct {p0}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpEmulatorNavigation;->clearPredictTimeDuration()V

    return-void
.end method

.method static synthetic access$22000(Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpEmulatorNavigation;J)V
    .locals 0

    .line 12925
    invoke-direct {p0, p1, p2}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpEmulatorNavigation;->setArriveTime(J)V

    return-void
.end method

.method static synthetic access$22100(Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpEmulatorNavigation;)V
    .locals 0

    .line 12925
    invoke-direct {p0}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpEmulatorNavigation;->clearArriveTime()V

    return-void
.end method

.method static synthetic access$22200(Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpEmulatorNavigation;I)V
    .locals 0

    .line 12925
    invoke-direct {p0, p1}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpEmulatorNavigation;->setManeuverTypeValue(I)V

    return-void
.end method

.method static synthetic access$22300(Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpEmulatorNavigation;Landroid/car/hardware/xpu/XpuFNgpRouteMessage$ManeuverType;)V
    .locals 0

    .line 12925
    invoke-direct {p0, p1}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpEmulatorNavigation;->setManeuverType(Landroid/car/hardware/xpu/XpuFNgpRouteMessage$ManeuverType;)V

    return-void
.end method

.method static synthetic access$22400(Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpEmulatorNavigation;)V
    .locals 0

    .line 12925
    invoke-direct {p0}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpEmulatorNavigation;->clearManeuverType()V

    return-void
.end method

.method static synthetic access$22500(Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpEmulatorNavigation;I)V
    .locals 0

    .line 12925
    invoke-direct {p0, p1}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpEmulatorNavigation;->setManeuverDirectionValue(I)V

    return-void
.end method

.method static synthetic access$22600(Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpEmulatorNavigation;Landroid/car/hardware/xpu/XpuFNgpRouteMessage$ManeuverDirection;)V
    .locals 0

    .line 12925
    invoke-direct {p0, p1}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpEmulatorNavigation;->setManeuverDirection(Landroid/car/hardware/xpu/XpuFNgpRouteMessage$ManeuverDirection;)V

    return-void
.end method

.method static synthetic access$22700(Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpEmulatorNavigation;)V
    .locals 0

    .line 12925
    invoke-direct {p0}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpEmulatorNavigation;->clearManeuverDirection()V

    return-void
.end method

.method static synthetic access$22800(Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpEmulatorNavigation;I)V
    .locals 0

    .line 12925
    invoke-direct {p0, p1}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpEmulatorNavigation;->setManeuverDistance(I)V

    return-void
.end method

.method static synthetic access$22900(Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpEmulatorNavigation;)V
    .locals 0

    .line 12925
    invoke-direct {p0}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpEmulatorNavigation;->clearManeuverDistance()V

    return-void
.end method

.method static synthetic access$23000(Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpEmulatorNavigation;I)V
    .locals 0

    .line 12925
    invoke-direct {p0, p1}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpEmulatorNavigation;->setCurrentOffset(I)V

    return-void
.end method

.method static synthetic access$23100(Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpEmulatorNavigation;)V
    .locals 0

    .line 12925
    invoke-direct {p0}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpEmulatorNavigation;->clearCurrentOffset()V

    return-void
.end method

.method static synthetic access$23200(Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpEmulatorNavigation;ILandroid/car/hardware/xpu/XpuFNgpRouteMessage$SegmentInfo;)V
    .locals 0

    .line 12925
    invoke-direct {p0, p1, p2}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpEmulatorNavigation;->setOffsetSegmentList(ILandroid/car/hardware/xpu/XpuFNgpRouteMessage$SegmentInfo;)V

    return-void
.end method

.method static synthetic access$23300(Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpEmulatorNavigation;ILandroid/car/hardware/xpu/XpuFNgpRouteMessage$SegmentInfo$Builder;)V
    .locals 0

    .line 12925
    invoke-direct {p0, p1, p2}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpEmulatorNavigation;->setOffsetSegmentList(ILandroid/car/hardware/xpu/XpuFNgpRouteMessage$SegmentInfo$Builder;)V

    return-void
.end method

.method static synthetic access$23400(Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpEmulatorNavigation;Landroid/car/hardware/xpu/XpuFNgpRouteMessage$SegmentInfo;)V
    .locals 0

    .line 12925
    invoke-direct {p0, p1}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpEmulatorNavigation;->addOffsetSegmentList(Landroid/car/hardware/xpu/XpuFNgpRouteMessage$SegmentInfo;)V

    return-void
.end method

.method static synthetic access$23500(Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpEmulatorNavigation;ILandroid/car/hardware/xpu/XpuFNgpRouteMessage$SegmentInfo;)V
    .locals 0

    .line 12925
    invoke-direct {p0, p1, p2}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpEmulatorNavigation;->addOffsetSegmentList(ILandroid/car/hardware/xpu/XpuFNgpRouteMessage$SegmentInfo;)V

    return-void
.end method

.method static synthetic access$23600(Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpEmulatorNavigation;Landroid/car/hardware/xpu/XpuFNgpRouteMessage$SegmentInfo$Builder;)V
    .locals 0

    .line 12925
    invoke-direct {p0, p1}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpEmulatorNavigation;->addOffsetSegmentList(Landroid/car/hardware/xpu/XpuFNgpRouteMessage$SegmentInfo$Builder;)V

    return-void
.end method

.method static synthetic access$23700(Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpEmulatorNavigation;ILandroid/car/hardware/xpu/XpuFNgpRouteMessage$SegmentInfo$Builder;)V
    .locals 0

    .line 12925
    invoke-direct {p0, p1, p2}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpEmulatorNavigation;->addOffsetSegmentList(ILandroid/car/hardware/xpu/XpuFNgpRouteMessage$SegmentInfo$Builder;)V

    return-void
.end method

.method static synthetic access$23800(Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpEmulatorNavigation;Ljava/lang/Iterable;)V
    .locals 0

    .line 12925
    invoke-direct {p0, p1}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpEmulatorNavigation;->addAllOffsetSegmentList(Ljava/lang/Iterable;)V

    return-void
.end method

.method static synthetic access$23900(Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpEmulatorNavigation;)V
    .locals 0

    .line 12925
    invoke-direct {p0}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpEmulatorNavigation;->clearOffsetSegmentList()V

    return-void
.end method

.method static synthetic access$24000(Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpEmulatorNavigation;I)V
    .locals 0

    .line 12925
    invoke-direct {p0, p1}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpEmulatorNavigation;->removeOffsetSegmentList(I)V

    return-void
.end method

.method static synthetic access$24100(Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpEmulatorNavigation;Ljava/lang/String;)V
    .locals 0

    .line 12925
    invoke-direct {p0, p1}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpEmulatorNavigation;->setEndPointName(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$24200(Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpEmulatorNavigation;)V
    .locals 0

    .line 12925
    invoke-direct {p0}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpEmulatorNavigation;->clearEndPointName()V

    return-void
.end method

.method static synthetic access$24300(Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpEmulatorNavigation;Lcom/android/carsdk/protobuf/ByteString;)V
    .locals 0

    .line 12925
    invoke-direct {p0, p1}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpEmulatorNavigation;->setEndPointNameBytes(Lcom/android/carsdk/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$24400(Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpEmulatorNavigation;I)V
    .locals 0

    .line 12925
    invoke-direct {p0, p1}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpEmulatorNavigation;->setEgoInternalRoadStateValue(I)V

    return-void
.end method

.method static synthetic access$24500(Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpEmulatorNavigation;Landroid/car/hardware/xpu/XpuFNgpRouteMessage$EgoInternalRoadState;)V
    .locals 0

    .line 12925
    invoke-direct {p0, p1}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpEmulatorNavigation;->setEgoInternalRoadState(Landroid/car/hardware/xpu/XpuFNgpRouteMessage$EgoInternalRoadState;)V

    return-void
.end method

.method static synthetic access$24600(Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpEmulatorNavigation;)V
    .locals 0

    .line 12925
    invoke-direct {p0}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpEmulatorNavigation;->clearEgoInternalRoadState()V

    return-void
.end method

.method static synthetic access$24700(Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpEmulatorNavigation;Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Point;)V
    .locals 0

    .line 12925
    invoke-direct {p0, p1}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpEmulatorNavigation;->setCurrentLocalPoint(Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Point;)V

    return-void
.end method

.method static synthetic access$24800(Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpEmulatorNavigation;Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Point$Builder;)V
    .locals 0

    .line 12925
    invoke-direct {p0, p1}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpEmulatorNavigation;->setCurrentLocalPoint(Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Point$Builder;)V

    return-void
.end method

.method static synthetic access$24900(Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpEmulatorNavigation;Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Point;)V
    .locals 0

    .line 12925
    invoke-direct {p0, p1}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpEmulatorNavigation;->mergeCurrentLocalPoint(Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Point;)V

    return-void
.end method

.method static synthetic access$25000(Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpEmulatorNavigation;)V
    .locals 0

    .line 12925
    invoke-direct {p0}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpEmulatorNavigation;->clearCurrentLocalPoint()V

    return-void
.end method

.method static synthetic access$25100(Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpEmulatorNavigation;Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Rotation;)V
    .locals 0

    .line 12925
    invoke-direct {p0, p1}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpEmulatorNavigation;->setCurrentLocalRotation(Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Rotation;)V

    return-void
.end method

.method static synthetic access$25200(Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpEmulatorNavigation;Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Rotation$Builder;)V
    .locals 0

    .line 12925
    invoke-direct {p0, p1}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpEmulatorNavigation;->setCurrentLocalRotation(Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Rotation$Builder;)V

    return-void
.end method

.method static synthetic access$25300(Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpEmulatorNavigation;Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Rotation;)V
    .locals 0

    .line 12925
    invoke-direct {p0, p1}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpEmulatorNavigation;->mergeCurrentLocalRotation(Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Rotation;)V

    return-void
.end method

.method static synthetic access$25400(Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpEmulatorNavigation;)V
    .locals 0

    .line 12925
    invoke-direct {p0}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpEmulatorNavigation;->clearCurrentLocalRotation()V

    return-void
.end method

.method static synthetic access$25500(Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpEmulatorNavigation;I)V
    .locals 0

    .line 12925
    invoke-direct {p0, p1}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpEmulatorNavigation;->setEndSlotShapeValue(I)V

    return-void
.end method

.method static synthetic access$25600(Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpEmulatorNavigation;Landroid/car/hardware/xpu/XpuFNgpRouteMessage$SlotShapeType;)V
    .locals 0

    .line 12925
    invoke-direct {p0, p1}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpEmulatorNavigation;->setEndSlotShape(Landroid/car/hardware/xpu/XpuFNgpRouteMessage$SlotShapeType;)V

    return-void
.end method

.method static synthetic access$25700(Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpEmulatorNavigation;)V
    .locals 0

    .line 12925
    invoke-direct {p0}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpEmulatorNavigation;->clearEndSlotShape()V

    return-void
.end method

.method static synthetic access$25800(Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpEmulatorNavigation;I)V
    .locals 0

    .line 12925
    invoke-direct {p0, p1}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpEmulatorNavigation;->setEndInternalPassedMileage(I)V

    return-void
.end method

.method static synthetic access$25900(Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpEmulatorNavigation;)V
    .locals 0

    .line 12925
    invoke-direct {p0}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpEmulatorNavigation;->clearEndInternalPassedMileage()V

    return-void
.end method

.method static synthetic access$26000(Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpEmulatorNavigation;I)V
    .locals 0

    .line 12925
    invoke-direct {p0, p1}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpEmulatorNavigation;->setPathTypeValue(I)V

    return-void
.end method

.method static synthetic access$26100(Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpEmulatorNavigation;Landroid/car/hardware/xpu/XpuFNgpRouteMessage$PathType;)V
    .locals 0

    .line 12925
    invoke-direct {p0, p1}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpEmulatorNavigation;->setPathType(Landroid/car/hardware/xpu/XpuFNgpRouteMessage$PathType;)V

    return-void
.end method

.method static synthetic access$26200(Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpEmulatorNavigation;)V
    .locals 0

    .line 12925
    invoke-direct {p0}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpEmulatorNavigation;->clearPathType()V

    return-void
.end method

.method private addAllOffsetSegmentList(Ljava/lang/Iterable;)V
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

    .line 13582
    invoke-direct {p0}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpEmulatorNavigation;->ensureOffsetSegmentListIsMutable()V

    .line 13583
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpEmulatorNavigation;->offsetSegmentList_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    invoke-static {p1, v0}, Lcom/android/carsdk/protobuf/AbstractMessageLite;->addAll(Ljava/lang/Iterable;Ljava/util/Collection;)V

    return-void
.end method

.method private addOffsetSegmentList(ILandroid/car/hardware/xpu/XpuFNgpRouteMessage$SegmentInfo$Builder;)V
    .locals 1

    .line 13570
    invoke-direct {p0}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpEmulatorNavigation;->ensureOffsetSegmentListIsMutable()V

    .line 13571
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpEmulatorNavigation;->offsetSegmentList_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    invoke-virtual {p2}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$SegmentInfo$Builder;->build()Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object p2

    check-cast p2, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$SegmentInfo;

    invoke-interface {v0, p1, p2}, Lcom/android/carsdk/protobuf/Internal$ProtobufList;->add(ILjava/lang/Object;)V

    return-void
.end method

.method private addOffsetSegmentList(ILandroid/car/hardware/xpu/XpuFNgpRouteMessage$SegmentInfo;)V
    .locals 1

    .line 13544
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 13546
    invoke-direct {p0}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpEmulatorNavigation;->ensureOffsetSegmentListIsMutable()V

    .line 13547
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpEmulatorNavigation;->offsetSegmentList_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1, p2}, Lcom/android/carsdk/protobuf/Internal$ProtobufList;->add(ILjava/lang/Object;)V

    return-void
.end method

.method private addOffsetSegmentList(Landroid/car/hardware/xpu/XpuFNgpRouteMessage$SegmentInfo$Builder;)V
    .locals 1

    .line 13558
    invoke-direct {p0}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpEmulatorNavigation;->ensureOffsetSegmentListIsMutable()V

    .line 13559
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpEmulatorNavigation;->offsetSegmentList_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    invoke-virtual {p1}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$SegmentInfo$Builder;->build()Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$SegmentInfo;

    invoke-interface {v0, p1}, Lcom/android/carsdk/protobuf/Internal$ProtobufList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private addOffsetSegmentList(Landroid/car/hardware/xpu/XpuFNgpRouteMessage$SegmentInfo;)V
    .locals 1

    .line 13529
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 13531
    invoke-direct {p0}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpEmulatorNavigation;->ensureOffsetSegmentListIsMutable()V

    .line 13532
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpEmulatorNavigation;->offsetSegmentList_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1}, Lcom/android/carsdk/protobuf/Internal$ProtobufList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private clearArriveTime()V
    .locals 2

    const-wide/16 v0, 0x0

    .line 13232
    iput-wide v0, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpEmulatorNavigation;->arriveTime_:J

    return-void
.end method

.method private clearCurrentLocalPoint()V
    .locals 1

    const/4 v0, 0x0

    .line 13805
    iput-object v0, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpEmulatorNavigation;->currentLocalPoint_:Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Point;

    return-void
.end method

.method private clearCurrentLocalRotation()V
    .locals 1

    const/4 v0, 0x0

    .line 13881
    iput-object v0, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpEmulatorNavigation;->currentLocalRotation_:Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Rotation;

    return-void
.end method

.method private clearCurrentLonlatPoint()V
    .locals 1

    const/4 v0, 0x0

    .line 13091
    iput-object v0, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpEmulatorNavigation;->currentLonlatPoint_:Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Point;

    return-void
.end method

.method private clearCurrentOffset()V
    .locals 1

    const/4 v0, 0x0

    .line 13429
    iput v0, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpEmulatorNavigation;->currentOffset_:I

    return-void
.end method

.method private clearCurrentPointIndexInV2List()V
    .locals 1

    const/4 v0, 0x0

    .line 13016
    iput v0, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpEmulatorNavigation;->currentPointIndexInV2List_:I

    return-void
.end method

.method private clearEgoInternalRoadState()V
    .locals 1

    const/4 v0, 0x0

    .line 13730
    iput v0, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpEmulatorNavigation;->egoInternalRoadState_:I

    return-void
.end method

.method private clearEndInternalPassedMileage()V
    .locals 1

    const/4 v0, 0x0

    .line 13976
    iput v0, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpEmulatorNavigation;->endInternalPassedMileage_:I

    return-void
.end method

.method private clearEndPointName()V
    .locals 1

    .line 13655
    invoke-static {}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpEmulatorNavigation;->getDefaultInstance()Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpEmulatorNavigation;

    move-result-object v0

    invoke-virtual {v0}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpEmulatorNavigation;->getEndPointName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpEmulatorNavigation;->endPointName_:Ljava/lang/String;

    return-void
.end method

.method private clearEndSlotShape()V
    .locals 1

    const/4 v0, 0x0

    .line 13941
    iput v0, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpEmulatorNavigation;->endSlotShape_:I

    return-void
.end method

.method private clearManeuverDirection()V
    .locals 1

    const/4 v0, 0x0

    .line 13350
    iput v0, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpEmulatorNavigation;->maneuverDirection_:I

    return-void
.end method

.method private clearManeuverDistance()V
    .locals 1

    const/4 v0, 0x0

    .line 13385
    iput v0, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpEmulatorNavigation;->maneuverDistance_:I

    return-void
.end method

.method private clearManeuverType()V
    .locals 1

    const/4 v0, 0x0

    .line 13291
    iput v0, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpEmulatorNavigation;->maneuverType_:I

    return-void
.end method

.method private clearOffsetSegmentList()V
    .locals 1

    .line 13594
    invoke-static {}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpEmulatorNavigation;->emptyProtobufList()Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    move-result-object v0

    iput-object v0, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpEmulatorNavigation;->offsetSegmentList_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    return-void
.end method

.method private clearPassedMileage()V
    .locals 1

    const/4 v0, 0x0

    .line 13162
    iput v0, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpEmulatorNavigation;->passedMileage_:I

    return-void
.end method

.method private clearPathType()V
    .locals 1

    const/4 v0, 0x0

    .line 14035
    iput v0, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpEmulatorNavigation;->pathType_:I

    return-void
.end method

.method private clearPredictTimeDuration()V
    .locals 2

    const-wide/16 v0, 0x0

    .line 13197
    iput-wide v0, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpEmulatorNavigation;->predictTimeDuration_:J

    return-void
.end method

.method private clearRemainMileage()V
    .locals 1

    const/4 v0, 0x0

    .line 13127
    iput v0, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpEmulatorNavigation;->remainMileage_:I

    return-void
.end method

.method private clearRouteId()V
    .locals 2

    const-wide/16 v0, 0x0

    .line 12981
    iput-wide v0, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpEmulatorNavigation;->routeId_:J

    return-void
.end method

.method private ensureOffsetSegmentListIsMutable()V
    .locals 1

    .line 13487
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpEmulatorNavigation;->offsetSegmentList_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    invoke-interface {v0}, Lcom/android/carsdk/protobuf/Internal$ProtobufList;->isModifiable()Z

    move-result v0

    if-nez v0, :cond_0

    .line 13488
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpEmulatorNavigation;->offsetSegmentList_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    .line 13489
    invoke-static {v0}, Lcom/android/carsdk/protobuf/GeneratedMessageLite;->mutableCopy(Lcom/android/carsdk/protobuf/Internal$ProtobufList;)Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    move-result-object v0

    iput-object v0, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpEmulatorNavigation;->offsetSegmentList_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    :cond_0
    return-void
.end method

.method public static getDefaultInstance()Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpEmulatorNavigation;
    .locals 1

    .line 15532
    sget-object v0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpEmulatorNavigation;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpEmulatorNavigation;

    return-object v0
.end method

.method private mergeCurrentLocalPoint(Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Point;)V
    .locals 2

    .line 13789
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpEmulatorNavigation;->currentLocalPoint_:Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Point;

    if-eqz v0, :cond_0

    .line 13790
    invoke-static {}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Point;->getDefaultInstance()Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Point;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 13791
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpEmulatorNavigation;->currentLocalPoint_:Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Point;

    .line 13792
    invoke-static {v0}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Point;->newBuilder(Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Point;)Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Point$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Point$Builder;->mergeFrom(Lcom/android/carsdk/protobuf/GeneratedMessageLite;)Lcom/android/carsdk/protobuf/GeneratedMessageLite$Builder;

    move-result-object p1

    check-cast p1, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Point$Builder;

    invoke-virtual {p1}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Point$Builder;->buildPartial()Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Point;

    iput-object p1, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpEmulatorNavigation;->currentLocalPoint_:Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Point;

    goto :goto_0

    .line 13794
    :cond_0
    iput-object p1, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpEmulatorNavigation;->currentLocalPoint_:Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Point;

    :goto_0
    return-void
.end method

.method private mergeCurrentLocalRotation(Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Rotation;)V
    .locals 2

    .line 13865
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpEmulatorNavigation;->currentLocalRotation_:Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Rotation;

    if-eqz v0, :cond_0

    .line 13866
    invoke-static {}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Rotation;->getDefaultInstance()Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Rotation;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 13867
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpEmulatorNavigation;->currentLocalRotation_:Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Rotation;

    .line 13868
    invoke-static {v0}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Rotation;->newBuilder(Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Rotation;)Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Rotation$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Rotation$Builder;->mergeFrom(Lcom/android/carsdk/protobuf/GeneratedMessageLite;)Lcom/android/carsdk/protobuf/GeneratedMessageLite$Builder;

    move-result-object p1

    check-cast p1, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Rotation$Builder;

    invoke-virtual {p1}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Rotation$Builder;->buildPartial()Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Rotation;

    iput-object p1, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpEmulatorNavigation;->currentLocalRotation_:Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Rotation;

    goto :goto_0

    .line 13870
    :cond_0
    iput-object p1, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpEmulatorNavigation;->currentLocalRotation_:Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Rotation;

    :goto_0
    return-void
.end method

.method private mergeCurrentLonlatPoint(Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Point;)V
    .locals 2

    .line 13075
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpEmulatorNavigation;->currentLonlatPoint_:Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Point;

    if-eqz v0, :cond_0

    .line 13076
    invoke-static {}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Point;->getDefaultInstance()Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Point;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 13077
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpEmulatorNavigation;->currentLonlatPoint_:Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Point;

    .line 13078
    invoke-static {v0}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Point;->newBuilder(Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Point;)Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Point$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Point$Builder;->mergeFrom(Lcom/android/carsdk/protobuf/GeneratedMessageLite;)Lcom/android/carsdk/protobuf/GeneratedMessageLite$Builder;

    move-result-object p1

    check-cast p1, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Point$Builder;

    invoke-virtual {p1}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Point$Builder;->buildPartial()Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Point;

    iput-object p1, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpEmulatorNavigation;->currentLonlatPoint_:Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Point;

    goto :goto_0

    .line 13080
    :cond_0
    iput-object p1, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpEmulatorNavigation;->currentLonlatPoint_:Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Point;

    :goto_0
    return-void
.end method

.method public static newBuilder()Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpEmulatorNavigation$Builder;
    .locals 1

    .line 14246
    sget-object v0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpEmulatorNavigation;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpEmulatorNavigation;

    invoke-virtual {v0}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpEmulatorNavigation;->toBuilder()Lcom/android/carsdk/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpEmulatorNavigation$Builder;

    return-object v0
.end method

.method public static newBuilder(Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpEmulatorNavigation;)Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpEmulatorNavigation$Builder;
    .locals 1

    .line 14249
    sget-object v0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpEmulatorNavigation;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpEmulatorNavigation;

    invoke-virtual {v0}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpEmulatorNavigation;->toBuilder()Lcom/android/carsdk/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpEmulatorNavigation$Builder;

    invoke-virtual {v0, p0}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpEmulatorNavigation$Builder;->mergeFrom(Lcom/android/carsdk/protobuf/GeneratedMessageLite;)Lcom/android/carsdk/protobuf/GeneratedMessageLite$Builder;

    move-result-object p0

    check-cast p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpEmulatorNavigation$Builder;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpEmulatorNavigation;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 14223
    sget-object v0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpEmulatorNavigation;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpEmulatorNavigation;

    invoke-static {v0, p0}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpEmulatorNavigation;->parseDelimitedFrom(Lcom/android/carsdk/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpEmulatorNavigation;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/android/carsdk/protobuf/ExtensionRegistryLite;)Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpEmulatorNavigation;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 14229
    sget-object v0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpEmulatorNavigation;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpEmulatorNavigation;

    invoke-static {v0, p0, p1}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpEmulatorNavigation;->parseDelimitedFrom(Lcom/android/carsdk/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/android/carsdk/protobuf/ExtensionRegistryLite;)Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpEmulatorNavigation;

    return-object p0
.end method

.method public static parseFrom(Lcom/android/carsdk/protobuf/ByteString;)Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpEmulatorNavigation;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/carsdk/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 14187
    sget-object v0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpEmulatorNavigation;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpEmulatorNavigation;

    invoke-static {v0, p0}, Lcom/android/carsdk/protobuf/GeneratedMessageLite;->parseFrom(Lcom/android/carsdk/protobuf/GeneratedMessageLite;Lcom/android/carsdk/protobuf/ByteString;)Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpEmulatorNavigation;

    return-object p0
.end method

.method public static parseFrom(Lcom/android/carsdk/protobuf/ByteString;Lcom/android/carsdk/protobuf/ExtensionRegistryLite;)Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpEmulatorNavigation;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/carsdk/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 14194
    sget-object v0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpEmulatorNavigation;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpEmulatorNavigation;

    invoke-static {v0, p0, p1}, Lcom/android/carsdk/protobuf/GeneratedMessageLite;->parseFrom(Lcom/android/carsdk/protobuf/GeneratedMessageLite;Lcom/android/carsdk/protobuf/ByteString;Lcom/android/carsdk/protobuf/ExtensionRegistryLite;)Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpEmulatorNavigation;

    return-object p0
.end method

.method public static parseFrom(Lcom/android/carsdk/protobuf/CodedInputStream;)Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpEmulatorNavigation;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 14234
    sget-object v0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpEmulatorNavigation;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpEmulatorNavigation;

    invoke-static {v0, p0}, Lcom/android/carsdk/protobuf/GeneratedMessageLite;->parseFrom(Lcom/android/carsdk/protobuf/GeneratedMessageLite;Lcom/android/carsdk/protobuf/CodedInputStream;)Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpEmulatorNavigation;

    return-object p0
.end method

.method public static parseFrom(Lcom/android/carsdk/protobuf/CodedInputStream;Lcom/android/carsdk/protobuf/ExtensionRegistryLite;)Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpEmulatorNavigation;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 14241
    sget-object v0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpEmulatorNavigation;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpEmulatorNavigation;

    invoke-static {v0, p0, p1}, Lcom/android/carsdk/protobuf/GeneratedMessageLite;->parseFrom(Lcom/android/carsdk/protobuf/GeneratedMessageLite;Lcom/android/carsdk/protobuf/CodedInputStream;Lcom/android/carsdk/protobuf/ExtensionRegistryLite;)Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpEmulatorNavigation;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpEmulatorNavigation;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 14211
    sget-object v0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpEmulatorNavigation;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpEmulatorNavigation;

    invoke-static {v0, p0}, Lcom/android/carsdk/protobuf/GeneratedMessageLite;->parseFrom(Lcom/android/carsdk/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpEmulatorNavigation;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/android/carsdk/protobuf/ExtensionRegistryLite;)Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpEmulatorNavigation;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 14218
    sget-object v0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpEmulatorNavigation;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpEmulatorNavigation;

    invoke-static {v0, p0, p1}, Lcom/android/carsdk/protobuf/GeneratedMessageLite;->parseFrom(Lcom/android/carsdk/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/android/carsdk/protobuf/ExtensionRegistryLite;)Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpEmulatorNavigation;

    return-object p0
.end method

.method public static parseFrom([B)Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpEmulatorNavigation;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/carsdk/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 14199
    sget-object v0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpEmulatorNavigation;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpEmulatorNavigation;

    invoke-static {v0, p0}, Lcom/android/carsdk/protobuf/GeneratedMessageLite;->parseFrom(Lcom/android/carsdk/protobuf/GeneratedMessageLite;[B)Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpEmulatorNavigation;

    return-object p0
.end method

.method public static parseFrom([BLcom/android/carsdk/protobuf/ExtensionRegistryLite;)Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpEmulatorNavigation;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/carsdk/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 14206
    sget-object v0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpEmulatorNavigation;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpEmulatorNavigation;

    invoke-static {v0, p0, p1}, Lcom/android/carsdk/protobuf/GeneratedMessageLite;->parseFrom(Lcom/android/carsdk/protobuf/GeneratedMessageLite;[BLcom/android/carsdk/protobuf/ExtensionRegistryLite;)Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpEmulatorNavigation;

    return-object p0
.end method

.method public static parser()Lcom/android/carsdk/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/android/carsdk/protobuf/Parser<",
            "Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpEmulatorNavigation;",
            ">;"
        }
    .end annotation

    .line 15538
    sget-object v0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpEmulatorNavigation;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpEmulatorNavigation;

    invoke-virtual {v0}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpEmulatorNavigation;->getParserForType()Lcom/android/carsdk/protobuf/Parser;

    move-result-object v0

    return-object v0
.end method

.method private removeOffsetSegmentList(I)V
    .locals 1

    .line 13604
    invoke-direct {p0}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpEmulatorNavigation;->ensureOffsetSegmentListIsMutable()V

    .line 13605
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpEmulatorNavigation;->offsetSegmentList_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1}, Lcom/android/carsdk/protobuf/Internal$ProtobufList;->remove(I)Ljava/lang/Object;

    return-void
.end method

.method private setArriveTime(J)V
    .locals 0

    .line 13221
    iput-wide p1, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpEmulatorNavigation;->arriveTime_:J

    return-void
.end method

.method private setCurrentLocalPoint(Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Point$Builder;)V
    .locals 0

    .line 13778
    invoke-virtual {p1}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Point$Builder;->build()Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Point;

    iput-object p1, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpEmulatorNavigation;->currentLocalPoint_:Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Point;

    return-void
.end method

.method private setCurrentLocalPoint(Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Point;)V
    .locals 0

    .line 13764
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 13766
    iput-object p1, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpEmulatorNavigation;->currentLocalPoint_:Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Point;

    return-void
.end method

.method private setCurrentLocalRotation(Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Rotation$Builder;)V
    .locals 0

    .line 13854
    invoke-virtual {p1}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Rotation$Builder;->build()Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Rotation;

    iput-object p1, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpEmulatorNavigation;->currentLocalRotation_:Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Rotation;

    return-void
.end method

.method private setCurrentLocalRotation(Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Rotation;)V
    .locals 0

    .line 13840
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 13842
    iput-object p1, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpEmulatorNavigation;->currentLocalRotation_:Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Rotation;

    return-void
.end method

.method private setCurrentLonlatPoint(Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Point$Builder;)V
    .locals 0

    .line 13064
    invoke-virtual {p1}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Point$Builder;->build()Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Point;

    iput-object p1, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpEmulatorNavigation;->currentLonlatPoint_:Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Point;

    return-void
.end method

.method private setCurrentLonlatPoint(Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Point;)V
    .locals 0

    .line 13050
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 13052
    iput-object p1, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpEmulatorNavigation;->currentLonlatPoint_:Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Point;

    return-void
.end method

.method private setCurrentOffset(I)V
    .locals 0

    .line 13415
    iput p1, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpEmulatorNavigation;->currentOffset_:I

    return-void
.end method

.method private setCurrentPointIndexInV2List(I)V
    .locals 0

    .line 13005
    iput p1, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpEmulatorNavigation;->currentPointIndexInV2List_:I

    return-void
.end method

.method private setEgoInternalRoadState(Landroid/car/hardware/xpu/XpuFNgpRouteMessage$EgoInternalRoadState;)V
    .locals 0

    .line 13716
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 13719
    invoke-virtual {p1}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$EgoInternalRoadState;->getNumber()I

    move-result p1

    iput p1, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpEmulatorNavigation;->egoInternalRoadState_:I

    return-void
.end method

.method private setEgoInternalRoadStateValue(I)V
    .locals 0

    .line 13705
    iput p1, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpEmulatorNavigation;->egoInternalRoadState_:I

    return-void
.end method

.method private setEndInternalPassedMileage(I)V
    .locals 0

    .line 13965
    iput p1, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpEmulatorNavigation;->endInternalPassedMileage_:I

    return-void
.end method

.method private setEndPointName(Ljava/lang/String;)V
    .locals 0

    .line 13641
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 13644
    iput-object p1, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpEmulatorNavigation;->endPointName_:Ljava/lang/String;

    return-void
.end method

.method private setEndPointNameBytes(Lcom/android/carsdk/protobuf/ByteString;)V
    .locals 0

    .line 13667
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 13669
    invoke-static {p1}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpEmulatorNavigation;->checkByteStringIsUtf8(Lcom/android/carsdk/protobuf/ByteString;)V

    .line 13671
    invoke-virtual {p1}, Lcom/android/carsdk/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpEmulatorNavigation;->endPointName_:Ljava/lang/String;

    return-void
.end method

.method private setEndSlotShape(Landroid/car/hardware/xpu/XpuFNgpRouteMessage$SlotShapeType;)V
    .locals 0

    .line 13927
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 13930
    invoke-virtual {p1}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$SlotShapeType;->getNumber()I

    move-result p1

    iput p1, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpEmulatorNavigation;->endSlotShape_:I

    return-void
.end method

.method private setEndSlotShapeValue(I)V
    .locals 0

    .line 13916
    iput p1, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpEmulatorNavigation;->endSlotShape_:I

    return-void
.end method

.method private setManeuverDirection(Landroid/car/hardware/xpu/XpuFNgpRouteMessage$ManeuverDirection;)V
    .locals 0

    .line 13336
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 13339
    invoke-virtual {p1}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$ManeuverDirection;->getNumber()I

    move-result p1

    iput p1, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpEmulatorNavigation;->maneuverDirection_:I

    return-void
.end method

.method private setManeuverDirectionValue(I)V
    .locals 0

    .line 13325
    iput p1, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpEmulatorNavigation;->maneuverDirection_:I

    return-void
.end method

.method private setManeuverDistance(I)V
    .locals 0

    .line 13374
    iput p1, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpEmulatorNavigation;->maneuverDistance_:I

    return-void
.end method

.method private setManeuverType(Landroid/car/hardware/xpu/XpuFNgpRouteMessage$ManeuverType;)V
    .locals 0

    .line 13277
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 13280
    invoke-virtual {p1}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$ManeuverType;->getNumber()I

    move-result p1

    iput p1, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpEmulatorNavigation;->maneuverType_:I

    return-void
.end method

.method private setManeuverTypeValue(I)V
    .locals 0

    .line 13266
    iput p1, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpEmulatorNavigation;->maneuverType_:I

    return-void
.end method

.method private setOffsetSegmentList(ILandroid/car/hardware/xpu/XpuFNgpRouteMessage$SegmentInfo$Builder;)V
    .locals 1

    .line 13517
    invoke-direct {p0}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpEmulatorNavigation;->ensureOffsetSegmentListIsMutable()V

    .line 13518
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpEmulatorNavigation;->offsetSegmentList_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    invoke-virtual {p2}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$SegmentInfo$Builder;->build()Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object p2

    check-cast p2, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$SegmentInfo;

    invoke-interface {v0, p1, p2}, Lcom/android/carsdk/protobuf/Internal$ProtobufList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private setOffsetSegmentList(ILandroid/car/hardware/xpu/XpuFNgpRouteMessage$SegmentInfo;)V
    .locals 1

    .line 13503
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 13505
    invoke-direct {p0}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpEmulatorNavigation;->ensureOffsetSegmentListIsMutable()V

    .line 13506
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpEmulatorNavigation;->offsetSegmentList_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1, p2}, Lcom/android/carsdk/protobuf/Internal$ProtobufList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private setPassedMileage(I)V
    .locals 0

    .line 13151
    iput p1, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpEmulatorNavigation;->passedMileage_:I

    return-void
.end method

.method private setPathType(Landroid/car/hardware/xpu/XpuFNgpRouteMessage$PathType;)V
    .locals 0

    .line 14021
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 14024
    invoke-virtual {p1}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$PathType;->getNumber()I

    move-result p1

    iput p1, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpEmulatorNavigation;->pathType_:I

    return-void
.end method

.method private setPathTypeValue(I)V
    .locals 0

    .line 14010
    iput p1, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpEmulatorNavigation;->pathType_:I

    return-void
.end method

.method private setPredictTimeDuration(J)V
    .locals 0

    .line 13186
    iput-wide p1, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpEmulatorNavigation;->predictTimeDuration_:J

    return-void
.end method

.method private setRemainMileage(I)V
    .locals 0

    .line 13116
    iput p1, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpEmulatorNavigation;->remainMileage_:I

    return-void
.end method

.method private setRouteId(J)V
    .locals 0

    .line 12970
    iput-wide p1, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpEmulatorNavigation;->routeId_:J

    return-void
.end method


# virtual methods
.method protected final dynamicMethod(Lcom/android/carsdk/protobuf/GeneratedMessageLite$MethodToInvoke;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 12

    .line 15296
    sget-object v0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$1;->$SwitchMap$com$google$protobuf$GeneratedMessageLite$MethodToInvoke:[I

    invoke-virtual {p1}, Lcom/android/carsdk/protobuf/GeneratedMessageLite$MethodToInvoke;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x1

    packed-switch p1, :pswitch_data_0

    .line 15520
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1

    .line 15511
    :pswitch_0
    sget-object p1, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpEmulatorNavigation;->PARSER:Lcom/android/carsdk/protobuf/Parser;

    if-nez p1, :cond_1

    const-class p1, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpEmulatorNavigation;

    monitor-enter p1

    .line 15512
    :try_start_0
    sget-object p2, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpEmulatorNavigation;->PARSER:Lcom/android/carsdk/protobuf/Parser;

    if-nez p2, :cond_0

    .line 15513
    new-instance p2, Lcom/android/carsdk/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;

    sget-object p3, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpEmulatorNavigation;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpEmulatorNavigation;

    invoke-direct {p2, p3}, Lcom/android/carsdk/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;-><init>(Lcom/android/carsdk/protobuf/GeneratedMessageLite;)V

    sput-object p2, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpEmulatorNavigation;->PARSER:Lcom/android/carsdk/protobuf/Parser;

    .line 15515
    :cond_0
    monitor-exit p1

    goto :goto_0

    :catchall_0
    move-exception p2

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p2

    .line 15517
    :cond_1
    :goto_0
    sget-object p1, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpEmulatorNavigation;->PARSER:Lcom/android/carsdk/protobuf/Parser;

    return-object p1

    .line 15349
    :pswitch_1
    check-cast p2, Lcom/android/carsdk/protobuf/CodedInputStream;

    .line 15351
    check-cast p3, Lcom/android/carsdk/protobuf/ExtensionRegistryLite;

    :cond_2
    :goto_1
    if-nez v1, :cond_7

    .line 15356
    :try_start_1
    invoke-virtual {p2}, Lcom/android/carsdk/protobuf/CodedInputStream;->readTag()I

    move-result p1

    sparse-switch p1, :sswitch_data_0

    .line 15362
    invoke-virtual {p2, p1}, Lcom/android/carsdk/protobuf/CodedInputStream;->skipField(I)Z

    move-result p1

    goto/16 :goto_6

    .line 15491
    :sswitch_0
    invoke-virtual {p2}, Lcom/android/carsdk/protobuf/CodedInputStream;->readEnum()I

    move-result p1

    .line 15493
    iput p1, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpEmulatorNavigation;->pathType_:I

    goto :goto_1

    .line 15487
    :sswitch_1
    invoke-virtual {p2}, Lcom/android/carsdk/protobuf/CodedInputStream;->readInt32()I

    move-result p1

    iput p1, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpEmulatorNavigation;->endInternalPassedMileage_:I

    goto :goto_1

    .line 15480
    :sswitch_2
    invoke-virtual {p2}, Lcom/android/carsdk/protobuf/CodedInputStream;->readEnum()I

    move-result p1

    .line 15482
    iput p1, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpEmulatorNavigation;->endSlotShape_:I

    goto :goto_1

    .line 15468
    :sswitch_3
    iget-object p1, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpEmulatorNavigation;->currentLocalRotation_:Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Rotation;

    if-eqz p1, :cond_3

    .line 15469
    invoke-virtual {p1}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Rotation;->toBuilder()Lcom/android/carsdk/protobuf/GeneratedMessageLite$Builder;

    move-result-object p1

    check-cast p1, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Rotation$Builder;

    goto :goto_2

    :cond_3
    move-object p1, v0

    .line 15471
    :goto_2
    invoke-static {}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Rotation;->parser()Lcom/android/carsdk/protobuf/Parser;

    move-result-object v3

    invoke-virtual {p2, v3, p3}, Lcom/android/carsdk/protobuf/CodedInputStream;->readMessage(Lcom/android/carsdk/protobuf/Parser;Lcom/android/carsdk/protobuf/ExtensionRegistryLite;)Lcom/android/carsdk/protobuf/MessageLite;

    move-result-object v3

    check-cast v3, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Rotation;

    iput-object v3, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpEmulatorNavigation;->currentLocalRotation_:Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Rotation;

    if-eqz p1, :cond_2

    .line 15473
    invoke-virtual {p1, v3}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Rotation$Builder;->mergeFrom(Lcom/android/carsdk/protobuf/GeneratedMessageLite;)Lcom/android/carsdk/protobuf/GeneratedMessageLite$Builder;

    .line 15474
    invoke-virtual {p1}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Rotation$Builder;->buildPartial()Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Rotation;

    iput-object p1, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpEmulatorNavigation;->currentLocalRotation_:Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Rotation;

    goto :goto_1

    .line 15455
    :sswitch_4
    iget-object p1, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpEmulatorNavigation;->currentLocalPoint_:Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Point;

    if-eqz p1, :cond_4

    .line 15456
    invoke-virtual {p1}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Point;->toBuilder()Lcom/android/carsdk/protobuf/GeneratedMessageLite$Builder;

    move-result-object p1

    check-cast p1, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Point$Builder;

    goto :goto_3

    :cond_4
    move-object p1, v0

    .line 15458
    :goto_3
    invoke-static {}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Point;->parser()Lcom/android/carsdk/protobuf/Parser;

    move-result-object v3

    invoke-virtual {p2, v3, p3}, Lcom/android/carsdk/protobuf/CodedInputStream;->readMessage(Lcom/android/carsdk/protobuf/Parser;Lcom/android/carsdk/protobuf/ExtensionRegistryLite;)Lcom/android/carsdk/protobuf/MessageLite;

    move-result-object v3

    check-cast v3, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Point;

    iput-object v3, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpEmulatorNavigation;->currentLocalPoint_:Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Point;

    if-eqz p1, :cond_2

    .line 15460
    invoke-virtual {p1, v3}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Point$Builder;->mergeFrom(Lcom/android/carsdk/protobuf/GeneratedMessageLite;)Lcom/android/carsdk/protobuf/GeneratedMessageLite$Builder;

    .line 15461
    invoke-virtual {p1}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Point$Builder;->buildPartial()Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Point;

    iput-object p1, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpEmulatorNavigation;->currentLocalPoint_:Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Point;

    goto :goto_1

    .line 15448
    :sswitch_5
    invoke-virtual {p2}, Lcom/android/carsdk/protobuf/CodedInputStream;->readEnum()I

    move-result p1

    .line 15450
    iput p1, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpEmulatorNavigation;->egoInternalRoadState_:I

    goto :goto_1

    .line 15442
    :sswitch_6
    invoke-virtual {p2}, Lcom/android/carsdk/protobuf/CodedInputStream;->readStringRequireUtf8()Ljava/lang/String;

    move-result-object p1

    .line 15444
    iput-object p1, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpEmulatorNavigation;->endPointName_:Ljava/lang/String;

    goto :goto_1

    .line 15433
    :sswitch_7
    iget-object p1, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpEmulatorNavigation;->offsetSegmentList_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    invoke-interface {p1}, Lcom/android/carsdk/protobuf/Internal$ProtobufList;->isModifiable()Z

    move-result p1

    if-nez p1, :cond_5

    .line 15434
    iget-object p1, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpEmulatorNavigation;->offsetSegmentList_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    .line 15435
    invoke-static {p1}, Lcom/android/carsdk/protobuf/GeneratedMessageLite;->mutableCopy(Lcom/android/carsdk/protobuf/Internal$ProtobufList;)Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    move-result-object p1

    iput-object p1, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpEmulatorNavigation;->offsetSegmentList_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    .line 15437
    :cond_5
    iget-object p1, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpEmulatorNavigation;->offsetSegmentList_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    .line 15438
    invoke-static {}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$SegmentInfo;->parser()Lcom/android/carsdk/protobuf/Parser;

    move-result-object v3

    invoke-virtual {p2, v3, p3}, Lcom/android/carsdk/protobuf/CodedInputStream;->readMessage(Lcom/android/carsdk/protobuf/Parser;Lcom/android/carsdk/protobuf/ExtensionRegistryLite;)Lcom/android/carsdk/protobuf/MessageLite;

    move-result-object v3

    check-cast v3, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$SegmentInfo;

    .line 15437
    invoke-interface {p1, v3}, Lcom/android/carsdk/protobuf/Internal$ProtobufList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 15429
    :sswitch_8
    invoke-virtual {p2}, Lcom/android/carsdk/protobuf/CodedInputStream;->readInt32()I

    move-result p1

    iput p1, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpEmulatorNavigation;->currentOffset_:I

    goto/16 :goto_1

    .line 15424
    :sswitch_9
    invoke-virtual {p2}, Lcom/android/carsdk/protobuf/CodedInputStream;->readInt32()I

    move-result p1

    iput p1, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpEmulatorNavigation;->maneuverDistance_:I

    goto/16 :goto_1

    .line 15417
    :sswitch_a
    invoke-virtual {p2}, Lcom/android/carsdk/protobuf/CodedInputStream;->readEnum()I

    move-result p1

    .line 15419
    iput p1, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpEmulatorNavigation;->maneuverDirection_:I

    goto/16 :goto_1

    .line 15411
    :sswitch_b
    invoke-virtual {p2}, Lcom/android/carsdk/protobuf/CodedInputStream;->readEnum()I

    move-result p1

    .line 15413
    iput p1, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpEmulatorNavigation;->maneuverType_:I

    goto/16 :goto_1

    .line 15407
    :sswitch_c
    invoke-virtual {p2}, Lcom/android/carsdk/protobuf/CodedInputStream;->readInt64()J

    move-result-wide v3

    iput-wide v3, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpEmulatorNavigation;->arriveTime_:J

    goto/16 :goto_1

    .line 15402
    :sswitch_d
    invoke-virtual {p2}, Lcom/android/carsdk/protobuf/CodedInputStream;->readInt64()J

    move-result-wide v3

    iput-wide v3, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpEmulatorNavigation;->predictTimeDuration_:J

    goto/16 :goto_1

    .line 15397
    :sswitch_e
    invoke-virtual {p2}, Lcom/android/carsdk/protobuf/CodedInputStream;->readInt32()I

    move-result p1

    iput p1, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpEmulatorNavigation;->passedMileage_:I

    goto/16 :goto_1

    .line 15392
    :sswitch_f
    invoke-virtual {p2}, Lcom/android/carsdk/protobuf/CodedInputStream;->readInt32()I

    move-result p1

    iput p1, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpEmulatorNavigation;->remainMileage_:I

    goto/16 :goto_1

    .line 15379
    :sswitch_10
    iget-object p1, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpEmulatorNavigation;->currentLonlatPoint_:Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Point;

    if-eqz p1, :cond_6

    .line 15380
    invoke-virtual {p1}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Point;->toBuilder()Lcom/android/carsdk/protobuf/GeneratedMessageLite$Builder;

    move-result-object p1

    check-cast p1, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Point$Builder;

    goto :goto_4

    :cond_6
    move-object p1, v0

    .line 15382
    :goto_4
    invoke-static {}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Point;->parser()Lcom/android/carsdk/protobuf/Parser;

    move-result-object v3

    invoke-virtual {p2, v3, p3}, Lcom/android/carsdk/protobuf/CodedInputStream;->readMessage(Lcom/android/carsdk/protobuf/Parser;Lcom/android/carsdk/protobuf/ExtensionRegistryLite;)Lcom/android/carsdk/protobuf/MessageLite;

    move-result-object v3

    check-cast v3, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Point;

    iput-object v3, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpEmulatorNavigation;->currentLonlatPoint_:Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Point;

    if-eqz p1, :cond_2

    .line 15384
    invoke-virtual {p1, v3}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Point$Builder;->mergeFrom(Lcom/android/carsdk/protobuf/GeneratedMessageLite;)Lcom/android/carsdk/protobuf/GeneratedMessageLite$Builder;

    .line 15385
    invoke-virtual {p1}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Point$Builder;->buildPartial()Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Point;

    iput-object p1, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpEmulatorNavigation;->currentLonlatPoint_:Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Point;

    goto/16 :goto_1

    .line 15374
    :sswitch_11
    invoke-virtual {p2}, Lcom/android/carsdk/protobuf/CodedInputStream;->readInt32()I

    move-result p1

    iput p1, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpEmulatorNavigation;->currentPointIndexInV2List_:I

    goto/16 :goto_1

    .line 15369
    :sswitch_12
    invoke-virtual {p2}, Lcom/android/carsdk/protobuf/CodedInputStream;->readInt64()J

    move-result-wide v3

    iput-wide v3, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpEmulatorNavigation;->routeId_:J
    :try_end_1
    .catch Lcom/android/carsdk/protobuf/InvalidProtocolBufferException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto/16 :goto_1

    :goto_5
    :sswitch_13
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

    .line 15501
    :try_start_2
    new-instance p2, Ljava/lang/RuntimeException;

    new-instance p3, Lcom/android/carsdk/protobuf/InvalidProtocolBufferException;

    .line 15503
    invoke-virtual {p1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p3, p1}, Lcom/android/carsdk/protobuf/InvalidProtocolBufferException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, p0}, Lcom/android/carsdk/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/android/carsdk/protobuf/MessageLite;)Lcom/android/carsdk/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p2

    :catch_1
    move-exception p1

    .line 15499
    new-instance p2, Ljava/lang/RuntimeException;

    invoke-virtual {p1, p0}, Lcom/android/carsdk/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/android/carsdk/protobuf/MessageLite;)Lcom/android/carsdk/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 15504
    :goto_7
    throw p1

    .line 15508
    :cond_7
    :pswitch_2
    sget-object p1, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpEmulatorNavigation;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpEmulatorNavigation;

    return-object p1

    .line 15311
    :pswitch_3
    check-cast p2, Lcom/android/carsdk/protobuf/GeneratedMessageLite$Visitor;

    .line 15312
    check-cast p3, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpEmulatorNavigation;

    .line 15313
    iget-wide v5, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpEmulatorNavigation;->routeId_:J

    const-wide/16 v10, 0x0

    cmp-long p1, v5, v10

    if-eqz p1, :cond_8

    move v4, v2

    goto :goto_8

    :cond_8
    move v4, v1

    :goto_8
    iget-wide v8, p3, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpEmulatorNavigation;->routeId_:J

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

    iput-wide v3, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpEmulatorNavigation;->routeId_:J

    .line 15315
    iget p1, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpEmulatorNavigation;->currentPointIndexInV2List_:I

    if-eqz p1, :cond_a

    move v0, v2

    goto :goto_a

    :cond_a
    move v0, v1

    :goto_a
    iget v3, p3, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpEmulatorNavigation;->currentPointIndexInV2List_:I

    if-eqz v3, :cond_b

    move v4, v2

    goto :goto_b

    :cond_b
    move v4, v1

    :goto_b
    invoke-interface {p2, v0, p1, v4, v3}, Lcom/android/carsdk/protobuf/GeneratedMessageLite$Visitor;->visitInt(ZIZI)I

    move-result p1

    iput p1, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpEmulatorNavigation;->currentPointIndexInV2List_:I

    .line 15317
    iget-object p1, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpEmulatorNavigation;->currentLonlatPoint_:Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Point;

    iget-object v0, p3, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpEmulatorNavigation;->currentLonlatPoint_:Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Point;

    invoke-interface {p2, p1, v0}, Lcom/android/carsdk/protobuf/GeneratedMessageLite$Visitor;->visitMessage(Lcom/android/carsdk/protobuf/MessageLite;Lcom/android/carsdk/protobuf/MessageLite;)Lcom/android/carsdk/protobuf/MessageLite;

    move-result-object p1

    check-cast p1, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Point;

    iput-object p1, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpEmulatorNavigation;->currentLonlatPoint_:Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Point;

    .line 15318
    iget p1, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpEmulatorNavigation;->remainMileage_:I

    if-eqz p1, :cond_c

    move v0, v2

    goto :goto_c

    :cond_c
    move v0, v1

    :goto_c
    iget v3, p3, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpEmulatorNavigation;->remainMileage_:I

    if-eqz v3, :cond_d

    move v4, v2

    goto :goto_d

    :cond_d
    move v4, v1

    :goto_d
    invoke-interface {p2, v0, p1, v4, v3}, Lcom/android/carsdk/protobuf/GeneratedMessageLite$Visitor;->visitInt(ZIZI)I

    move-result p1

    iput p1, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpEmulatorNavigation;->remainMileage_:I

    .line 15320
    iget p1, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpEmulatorNavigation;->passedMileage_:I

    if-eqz p1, :cond_e

    move v0, v2

    goto :goto_e

    :cond_e
    move v0, v1

    :goto_e
    iget v3, p3, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpEmulatorNavigation;->passedMileage_:I

    if-eqz v3, :cond_f

    move v4, v2

    goto :goto_f

    :cond_f
    move v4, v1

    :goto_f
    invoke-interface {p2, v0, p1, v4, v3}, Lcom/android/carsdk/protobuf/GeneratedMessageLite$Visitor;->visitInt(ZIZI)I

    move-result p1

    iput p1, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpEmulatorNavigation;->passedMileage_:I

    .line 15322
    iget-wide v5, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpEmulatorNavigation;->predictTimeDuration_:J

    cmp-long p1, v5, v10

    if-eqz p1, :cond_10

    move v4, v2

    goto :goto_10

    :cond_10
    move v4, v1

    :goto_10
    iget-wide v8, p3, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpEmulatorNavigation;->predictTimeDuration_:J

    cmp-long p1, v8, v10

    if-eqz p1, :cond_11

    move v7, v2

    goto :goto_11

    :cond_11
    move v7, v1

    :goto_11
    move-object v3, p2

    invoke-interface/range {v3 .. v9}, Lcom/android/carsdk/protobuf/GeneratedMessageLite$Visitor;->visitLong(ZJZJ)J

    move-result-wide v3

    iput-wide v3, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpEmulatorNavigation;->predictTimeDuration_:J

    .line 15324
    iget-wide v5, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpEmulatorNavigation;->arriveTime_:J

    cmp-long p1, v5, v10

    if-eqz p1, :cond_12

    move v4, v2

    goto :goto_12

    :cond_12
    move v4, v1

    :goto_12
    iget-wide v8, p3, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpEmulatorNavigation;->arriveTime_:J

    cmp-long p1, v8, v10

    if-eqz p1, :cond_13

    move v7, v2

    goto :goto_13

    :cond_13
    move v7, v1

    :goto_13
    move-object v3, p2

    invoke-interface/range {v3 .. v9}, Lcom/android/carsdk/protobuf/GeneratedMessageLite$Visitor;->visitLong(ZJZJ)J

    move-result-wide v3

    iput-wide v3, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpEmulatorNavigation;->arriveTime_:J

    .line 15326
    iget p1, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpEmulatorNavigation;->maneuverType_:I

    if-eqz p1, :cond_14

    move v0, v2

    goto :goto_14

    :cond_14
    move v0, v1

    :goto_14
    iget v3, p3, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpEmulatorNavigation;->maneuverType_:I

    if-eqz v3, :cond_15

    move v4, v2

    goto :goto_15

    :cond_15
    move v4, v1

    :goto_15
    invoke-interface {p2, v0, p1, v4, v3}, Lcom/android/carsdk/protobuf/GeneratedMessageLite$Visitor;->visitInt(ZIZI)I

    move-result p1

    iput p1, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpEmulatorNavigation;->maneuverType_:I

    .line 15327
    iget p1, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpEmulatorNavigation;->maneuverDirection_:I

    if-eqz p1, :cond_16

    move v0, v2

    goto :goto_16

    :cond_16
    move v0, v1

    :goto_16
    iget v3, p3, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpEmulatorNavigation;->maneuverDirection_:I

    if-eqz v3, :cond_17

    move v4, v2

    goto :goto_17

    :cond_17
    move v4, v1

    :goto_17
    invoke-interface {p2, v0, p1, v4, v3}, Lcom/android/carsdk/protobuf/GeneratedMessageLite$Visitor;->visitInt(ZIZI)I

    move-result p1

    iput p1, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpEmulatorNavigation;->maneuverDirection_:I

    .line 15328
    iget p1, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpEmulatorNavigation;->maneuverDistance_:I

    if-eqz p1, :cond_18

    move v0, v2

    goto :goto_18

    :cond_18
    move v0, v1

    :goto_18
    iget v3, p3, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpEmulatorNavigation;->maneuverDistance_:I

    if-eqz v3, :cond_19

    move v4, v2

    goto :goto_19

    :cond_19
    move v4, v1

    :goto_19
    invoke-interface {p2, v0, p1, v4, v3}, Lcom/android/carsdk/protobuf/GeneratedMessageLite$Visitor;->visitInt(ZIZI)I

    move-result p1

    iput p1, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpEmulatorNavigation;->maneuverDistance_:I

    .line 15330
    iget p1, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpEmulatorNavigation;->currentOffset_:I

    if-eqz p1, :cond_1a

    move v0, v2

    goto :goto_1a

    :cond_1a
    move v0, v1

    :goto_1a
    iget v3, p3, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpEmulatorNavigation;->currentOffset_:I

    if-eqz v3, :cond_1b

    move v4, v2

    goto :goto_1b

    :cond_1b
    move v4, v1

    :goto_1b
    invoke-interface {p2, v0, p1, v4, v3}, Lcom/android/carsdk/protobuf/GeneratedMessageLite$Visitor;->visitInt(ZIZI)I

    move-result p1

    iput p1, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpEmulatorNavigation;->currentOffset_:I

    .line 15332
    iget-object p1, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpEmulatorNavigation;->offsetSegmentList_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    iget-object v0, p3, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpEmulatorNavigation;->offsetSegmentList_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    invoke-interface {p2, p1, v0}, Lcom/android/carsdk/protobuf/GeneratedMessageLite$Visitor;->visitList(Lcom/android/carsdk/protobuf/Internal$ProtobufList;Lcom/android/carsdk/protobuf/Internal$ProtobufList;)Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    move-result-object p1

    iput-object p1, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpEmulatorNavigation;->offsetSegmentList_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    .line 15333
    iget-object p1, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpEmulatorNavigation;->endPointName_:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result p1

    xor-int/2addr p1, v2

    iget-object v0, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpEmulatorNavigation;->endPointName_:Ljava/lang/String;

    iget-object v3, p3, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpEmulatorNavigation;->endPointName_:Ljava/lang/String;

    .line 15334
    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    xor-int/2addr v3, v2

    iget-object v4, p3, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpEmulatorNavigation;->endPointName_:Ljava/lang/String;

    .line 15333
    invoke-interface {p2, p1, v0, v3, v4}, Lcom/android/carsdk/protobuf/GeneratedMessageLite$Visitor;->visitString(ZLjava/lang/String;ZLjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpEmulatorNavigation;->endPointName_:Ljava/lang/String;

    .line 15335
    iget p1, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpEmulatorNavigation;->egoInternalRoadState_:I

    if-eqz p1, :cond_1c

    move v0, v2

    goto :goto_1c

    :cond_1c
    move v0, v1

    :goto_1c
    iget v3, p3, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpEmulatorNavigation;->egoInternalRoadState_:I

    if-eqz v3, :cond_1d

    move v4, v2

    goto :goto_1d

    :cond_1d
    move v4, v1

    :goto_1d
    invoke-interface {p2, v0, p1, v4, v3}, Lcom/android/carsdk/protobuf/GeneratedMessageLite$Visitor;->visitInt(ZIZI)I

    move-result p1

    iput p1, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpEmulatorNavigation;->egoInternalRoadState_:I

    .line 15336
    iget-object p1, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpEmulatorNavigation;->currentLocalPoint_:Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Point;

    iget-object v0, p3, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpEmulatorNavigation;->currentLocalPoint_:Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Point;

    invoke-interface {p2, p1, v0}, Lcom/android/carsdk/protobuf/GeneratedMessageLite$Visitor;->visitMessage(Lcom/android/carsdk/protobuf/MessageLite;Lcom/android/carsdk/protobuf/MessageLite;)Lcom/android/carsdk/protobuf/MessageLite;

    move-result-object p1

    check-cast p1, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Point;

    iput-object p1, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpEmulatorNavigation;->currentLocalPoint_:Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Point;

    .line 15337
    iget-object p1, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpEmulatorNavigation;->currentLocalRotation_:Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Rotation;

    iget-object v0, p3, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpEmulatorNavigation;->currentLocalRotation_:Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Rotation;

    invoke-interface {p2, p1, v0}, Lcom/android/carsdk/protobuf/GeneratedMessageLite$Visitor;->visitMessage(Lcom/android/carsdk/protobuf/MessageLite;Lcom/android/carsdk/protobuf/MessageLite;)Lcom/android/carsdk/protobuf/MessageLite;

    move-result-object p1

    check-cast p1, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Rotation;

    iput-object p1, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpEmulatorNavigation;->currentLocalRotation_:Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Rotation;

    .line 15338
    iget p1, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpEmulatorNavigation;->endSlotShape_:I

    if-eqz p1, :cond_1e

    move v0, v2

    goto :goto_1e

    :cond_1e
    move v0, v1

    :goto_1e
    iget v3, p3, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpEmulatorNavigation;->endSlotShape_:I

    if-eqz v3, :cond_1f

    move v4, v2

    goto :goto_1f

    :cond_1f
    move v4, v1

    :goto_1f
    invoke-interface {p2, v0, p1, v4, v3}, Lcom/android/carsdk/protobuf/GeneratedMessageLite$Visitor;->visitInt(ZIZI)I

    move-result p1

    iput p1, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpEmulatorNavigation;->endSlotShape_:I

    .line 15339
    iget p1, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpEmulatorNavigation;->endInternalPassedMileage_:I

    if-eqz p1, :cond_20

    move v0, v2

    goto :goto_20

    :cond_20
    move v0, v1

    :goto_20
    iget v3, p3, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpEmulatorNavigation;->endInternalPassedMileage_:I

    if-eqz v3, :cond_21

    move v4, v2

    goto :goto_21

    :cond_21
    move v4, v1

    :goto_21
    invoke-interface {p2, v0, p1, v4, v3}, Lcom/android/carsdk/protobuf/GeneratedMessageLite$Visitor;->visitInt(ZIZI)I

    move-result p1

    iput p1, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpEmulatorNavigation;->endInternalPassedMileage_:I

    .line 15341
    iget p1, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpEmulatorNavigation;->pathType_:I

    if-eqz p1, :cond_22

    move v0, v2

    goto :goto_22

    :cond_22
    move v0, v1

    :goto_22
    iget v3, p3, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpEmulatorNavigation;->pathType_:I

    if-eqz v3, :cond_23

    move v1, v2

    :cond_23
    invoke-interface {p2, v0, p1, v1, v3}, Lcom/android/carsdk/protobuf/GeneratedMessageLite$Visitor;->visitInt(ZIZI)I

    move-result p1

    iput p1, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpEmulatorNavigation;->pathType_:I

    .line 15342
    sget-object p1, Lcom/android/carsdk/protobuf/GeneratedMessageLite$MergeFromVisitor;->INSTANCE:Lcom/android/carsdk/protobuf/GeneratedMessageLite$MergeFromVisitor;

    if-ne p2, p1, :cond_24

    .line 15344
    iget p1, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpEmulatorNavigation;->bitField0_:I

    iget p2, p3, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpEmulatorNavigation;->bitField0_:I

    or-int/2addr p1, p2

    iput p1, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpEmulatorNavigation;->bitField0_:I

    :cond_24
    return-object p0

    .line 15308
    :pswitch_4
    new-instance p1, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpEmulatorNavigation$Builder;

    invoke-direct {p1, v0}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpEmulatorNavigation$Builder;-><init>(Landroid/car/hardware/xpu/XpuFNgpRouteMessage$1;)V

    return-object p1

    .line 15304
    :pswitch_5
    iget-object p1, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpEmulatorNavigation;->offsetSegmentList_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    invoke-interface {p1}, Lcom/android/carsdk/protobuf/Internal$ProtobufList;->makeImmutable()V

    return-object v0

    .line 15301
    :pswitch_6
    sget-object p1, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpEmulatorNavigation;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpEmulatorNavigation;

    return-object p1

    .line 15298
    :pswitch_7
    new-instance p1, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpEmulatorNavigation;

    invoke-direct {p1}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpEmulatorNavigation;-><init>()V

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
        0x0 -> :sswitch_13
        0x8 -> :sswitch_12
        0x10 -> :sswitch_11
        0x1a -> :sswitch_10
        0x20 -> :sswitch_f
        0x28 -> :sswitch_e
        0x30 -> :sswitch_d
        0x38 -> :sswitch_c
        0x40 -> :sswitch_b
        0x48 -> :sswitch_a
        0x50 -> :sswitch_9
        0x58 -> :sswitch_8
        0x62 -> :sswitch_7
        0x6a -> :sswitch_6
        0x70 -> :sswitch_5
        0x7a -> :sswitch_4
        0x82 -> :sswitch_3
        0x88 -> :sswitch_2
        0x90 -> :sswitch_1
        0x98 -> :sswitch_0
    .end sparse-switch
.end method

.method public getArriveTime()J
    .locals 2

    .line 13210
    iget-wide v0, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpEmulatorNavigation;->arriveTime_:J

    return-wide v0
.end method

.method public getCurrentLocalPoint()Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Point;
    .locals 1

    .line 13753
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpEmulatorNavigation;->currentLocalPoint_:Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Point;

    if-nez v0, :cond_0

    invoke-static {}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Point;->getDefaultInstance()Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Point;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public getCurrentLocalRotation()Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Rotation;
    .locals 1

    .line 13829
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpEmulatorNavigation;->currentLocalRotation_:Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Rotation;

    if-nez v0, :cond_0

    invoke-static {}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Rotation;->getDefaultInstance()Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Rotation;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public getCurrentLonlatPoint()Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Point;
    .locals 1

    .line 13039
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpEmulatorNavigation;->currentLonlatPoint_:Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Point;

    if-nez v0, :cond_0

    invoke-static {}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Point;->getDefaultInstance()Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Point;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public getCurrentOffset()I
    .locals 1

    .line 13401
    iget v0, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpEmulatorNavigation;->currentOffset_:I

    return v0
.end method

.method public getCurrentPointIndexInV2List()I
    .locals 1

    .line 12994
    iget v0, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpEmulatorNavigation;->currentPointIndexInV2List_:I

    return v0
.end method

.method public getEgoInternalRoadState()Landroid/car/hardware/xpu/XpuFNgpRouteMessage$EgoInternalRoadState;
    .locals 1

    .line 13694
    iget v0, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpEmulatorNavigation;->egoInternalRoadState_:I

    invoke-static {v0}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$EgoInternalRoadState;->forNumber(I)Landroid/car/hardware/xpu/XpuFNgpRouteMessage$EgoInternalRoadState;

    move-result-object v0

    if-nez v0, :cond_0

    .line 13695
    sget-object v0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$EgoInternalRoadState;->UNRECOGNIZED:Landroid/car/hardware/xpu/XpuFNgpRouteMessage$EgoInternalRoadState;

    :cond_0
    return-object v0
.end method

.method public getEgoInternalRoadStateValue()I
    .locals 1

    .line 13684
    iget v0, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpEmulatorNavigation;->egoInternalRoadState_:I

    return v0
.end method

.method public getEndInternalPassedMileage()I
    .locals 1

    .line 13954
    iget v0, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpEmulatorNavigation;->endInternalPassedMileage_:I

    return v0
.end method

.method public getEndPointName()Ljava/lang/String;
    .locals 1

    .line 13618
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpEmulatorNavigation;->endPointName_:Ljava/lang/String;

    return-object v0
.end method

.method public getEndPointNameBytes()Lcom/android/carsdk/protobuf/ByteString;
    .locals 1

    .line 13629
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpEmulatorNavigation;->endPointName_:Ljava/lang/String;

    invoke-static {v0}, Lcom/android/carsdk/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/android/carsdk/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getEndSlotShape()Landroid/car/hardware/xpu/XpuFNgpRouteMessage$SlotShapeType;
    .locals 1

    .line 13905
    iget v0, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpEmulatorNavigation;->endSlotShape_:I

    invoke-static {v0}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$SlotShapeType;->forNumber(I)Landroid/car/hardware/xpu/XpuFNgpRouteMessage$SlotShapeType;

    move-result-object v0

    if-nez v0, :cond_0

    .line 13906
    sget-object v0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$SlotShapeType;->UNRECOGNIZED:Landroid/car/hardware/xpu/XpuFNgpRouteMessage$SlotShapeType;

    :cond_0
    return-object v0
.end method

.method public getEndSlotShapeValue()I
    .locals 1

    .line 13895
    iget v0, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpEmulatorNavigation;->endSlotShape_:I

    return v0
.end method

.method public getManeuverDirection()Landroid/car/hardware/xpu/XpuFNgpRouteMessage$ManeuverDirection;
    .locals 1

    .line 13314
    iget v0, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpEmulatorNavigation;->maneuverDirection_:I

    invoke-static {v0}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$ManeuverDirection;->forNumber(I)Landroid/car/hardware/xpu/XpuFNgpRouteMessage$ManeuverDirection;

    move-result-object v0

    if-nez v0, :cond_0

    .line 13315
    sget-object v0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$ManeuverDirection;->UNRECOGNIZED:Landroid/car/hardware/xpu/XpuFNgpRouteMessage$ManeuverDirection;

    :cond_0
    return-object v0
.end method

.method public getManeuverDirectionValue()I
    .locals 1

    .line 13304
    iget v0, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpEmulatorNavigation;->maneuverDirection_:I

    return v0
.end method

.method public getManeuverDistance()I
    .locals 1

    .line 13363
    iget v0, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpEmulatorNavigation;->maneuverDistance_:I

    return v0
.end method

.method public getManeuverType()Landroid/car/hardware/xpu/XpuFNgpRouteMessage$ManeuverType;
    .locals 1

    .line 13255
    iget v0, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpEmulatorNavigation;->maneuverType_:I

    invoke-static {v0}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$ManeuverType;->forNumber(I)Landroid/car/hardware/xpu/XpuFNgpRouteMessage$ManeuverType;

    move-result-object v0

    if-nez v0, :cond_0

    .line 13256
    sget-object v0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$ManeuverType;->UNRECOGNIZED:Landroid/car/hardware/xpu/XpuFNgpRouteMessage$ManeuverType;

    :cond_0
    return-object v0
.end method

.method public getManeuverTypeValue()I
    .locals 1

    .line 13245
    iget v0, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpEmulatorNavigation;->maneuverType_:I

    return v0
.end method

.method public getOffsetSegmentList(I)Landroid/car/hardware/xpu/XpuFNgpRouteMessage$SegmentInfo;
    .locals 1

    .line 13473
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpEmulatorNavigation;->offsetSegmentList_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1}, Lcom/android/carsdk/protobuf/Internal$ProtobufList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$SegmentInfo;

    return-object p1
.end method

.method public getOffsetSegmentListCount()I
    .locals 1

    .line 13463
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpEmulatorNavigation;->offsetSegmentList_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    invoke-interface {v0}, Lcom/android/carsdk/protobuf/Internal$ProtobufList;->size()I

    move-result v0

    return v0
.end method

.method public getOffsetSegmentListList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/car/hardware/xpu/XpuFNgpRouteMessage$SegmentInfo;",
            ">;"
        }
    .end annotation

    .line 13442
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpEmulatorNavigation;->offsetSegmentList_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    return-object v0
.end method

.method public getOffsetSegmentListOrBuilder(I)Landroid/car/hardware/xpu/XpuFNgpRouteMessage$SegmentInfoOrBuilder;
    .locals 1

    .line 13484
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpEmulatorNavigation;->offsetSegmentList_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1}, Lcom/android/carsdk/protobuf/Internal$ProtobufList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$SegmentInfoOrBuilder;

    return-object p1
.end method

.method public getOffsetSegmentListOrBuilderList()Ljava/util/List;
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

    .line 13453
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpEmulatorNavigation;->offsetSegmentList_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    return-object v0
.end method

.method public getPassedMileage()I
    .locals 1

    .line 13140
    iget v0, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpEmulatorNavigation;->passedMileage_:I

    return v0
.end method

.method public getPathType()Landroid/car/hardware/xpu/XpuFNgpRouteMessage$PathType;
    .locals 1

    .line 13999
    iget v0, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpEmulatorNavigation;->pathType_:I

    invoke-static {v0}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$PathType;->forNumber(I)Landroid/car/hardware/xpu/XpuFNgpRouteMessage$PathType;

    move-result-object v0

    if-nez v0, :cond_0

    .line 14000
    sget-object v0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$PathType;->UNRECOGNIZED:Landroid/car/hardware/xpu/XpuFNgpRouteMessage$PathType;

    :cond_0
    return-object v0
.end method

.method public getPathTypeValue()I
    .locals 1

    .line 13989
    iget v0, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpEmulatorNavigation;->pathType_:I

    return v0
.end method

.method public getPredictTimeDuration()J
    .locals 2

    .line 13175
    iget-wide v0, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpEmulatorNavigation;->predictTimeDuration_:J

    return-wide v0
.end method

.method public getRemainMileage()I
    .locals 1

    .line 13105
    iget v0, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpEmulatorNavigation;->remainMileage_:I

    return v0
.end method

.method public getRouteId()J
    .locals 2

    .line 12959
    iget-wide v0, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpEmulatorNavigation;->routeId_:J

    return-wide v0
.end method

.method public getSerializedSize()I
    .locals 8

    .line 14100
    iget v0, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpEmulatorNavigation;->memoizedSerializedSize:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    return v0

    .line 14104
    :cond_0
    iget-wide v0, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpEmulatorNavigation;->routeId_:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    const/4 v5, 0x0

    if-eqz v4, :cond_1

    const/4 v4, 0x1

    .line 14106
    invoke-static {v4, v0, v1}, Lcom/android/carsdk/protobuf/CodedOutputStream;->computeInt64Size(IJ)I

    move-result v0

    add-int/2addr v0, v5

    goto :goto_0

    :cond_1
    move v0, v5

    .line 14108
    :goto_0
    iget v1, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpEmulatorNavigation;->currentPointIndexInV2List_:I

    if-eqz v1, :cond_2

    const/4 v4, 0x2

    .line 14110
    invoke-static {v4, v1}, Lcom/android/carsdk/protobuf/CodedOutputStream;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 14112
    :cond_2
    iget-object v1, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpEmulatorNavigation;->currentLonlatPoint_:Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Point;

    if-eqz v1, :cond_3

    const/4 v1, 0x3

    .line 14114
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpEmulatorNavigation;->getCurrentLonlatPoint()Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Point;

    move-result-object v4

    invoke-static {v1, v4}, Lcom/android/carsdk/protobuf/CodedOutputStream;->computeMessageSize(ILcom/android/carsdk/protobuf/MessageLite;)I

    move-result v1

    add-int/2addr v0, v1

    .line 14116
    :cond_3
    iget v1, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpEmulatorNavigation;->remainMileage_:I

    if-eqz v1, :cond_4

    const/4 v4, 0x4

    .line 14118
    invoke-static {v4, v1}, Lcom/android/carsdk/protobuf/CodedOutputStream;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 14120
    :cond_4
    iget v1, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpEmulatorNavigation;->passedMileage_:I

    if-eqz v1, :cond_5

    const/4 v4, 0x5

    .line 14122
    invoke-static {v4, v1}, Lcom/android/carsdk/protobuf/CodedOutputStream;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 14124
    :cond_5
    iget-wide v6, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpEmulatorNavigation;->predictTimeDuration_:J

    cmp-long v1, v6, v2

    if-eqz v1, :cond_6

    const/4 v1, 0x6

    .line 14126
    invoke-static {v1, v6, v7}, Lcom/android/carsdk/protobuf/CodedOutputStream;->computeInt64Size(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 14128
    :cond_6
    iget-wide v6, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpEmulatorNavigation;->arriveTime_:J

    cmp-long v1, v6, v2

    if-eqz v1, :cond_7

    const/4 v1, 0x7

    .line 14130
    invoke-static {v1, v6, v7}, Lcom/android/carsdk/protobuf/CodedOutputStream;->computeInt64Size(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 14132
    :cond_7
    iget v1, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpEmulatorNavigation;->maneuverType_:I

    sget-object v2, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$ManeuverType;->TURN_DEFAULT:Landroid/car/hardware/xpu/XpuFNgpRouteMessage$ManeuverType;

    invoke-virtual {v2}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$ManeuverType;->getNumber()I

    move-result v2

    if-eq v1, v2, :cond_8

    const/16 v1, 0x8

    .line 14133
    iget v2, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpEmulatorNavigation;->maneuverType_:I

    .line 14134
    invoke-static {v1, v2}, Lcom/android/carsdk/protobuf/CodedOutputStream;->computeEnumSize(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 14136
    :cond_8
    iget v1, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpEmulatorNavigation;->maneuverDirection_:I

    sget-object v2, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$ManeuverDirection;->DEFAULT:Landroid/car/hardware/xpu/XpuFNgpRouteMessage$ManeuverDirection;

    invoke-virtual {v2}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$ManeuverDirection;->getNumber()I

    move-result v2

    if-eq v1, v2, :cond_9

    const/16 v1, 0x9

    .line 14137
    iget v2, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpEmulatorNavigation;->maneuverDirection_:I

    .line 14138
    invoke-static {v1, v2}, Lcom/android/carsdk/protobuf/CodedOutputStream;->computeEnumSize(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 14140
    :cond_9
    iget v1, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpEmulatorNavigation;->maneuverDistance_:I

    if-eqz v1, :cond_a

    const/16 v2, 0xa

    .line 14142
    invoke-static {v2, v1}, Lcom/android/carsdk/protobuf/CodedOutputStream;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 14144
    :cond_a
    iget v1, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpEmulatorNavigation;->currentOffset_:I

    if-eqz v1, :cond_b

    const/16 v2, 0xb

    .line 14146
    invoke-static {v2, v1}, Lcom/android/carsdk/protobuf/CodedOutputStream;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 14148
    :cond_b
    :goto_1
    iget-object v1, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpEmulatorNavigation;->offsetSegmentList_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    invoke-interface {v1}, Lcom/android/carsdk/protobuf/Internal$ProtobufList;->size()I

    move-result v1

    if-ge v5, v1, :cond_c

    const/16 v1, 0xc

    .line 14149
    iget-object v2, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpEmulatorNavigation;->offsetSegmentList_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    .line 14150
    invoke-interface {v2, v5}, Lcom/android/carsdk/protobuf/Internal$ProtobufList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/carsdk/protobuf/MessageLite;

    invoke-static {v1, v2}, Lcom/android/carsdk/protobuf/CodedOutputStream;->computeMessageSize(ILcom/android/carsdk/protobuf/MessageLite;)I

    move-result v1

    add-int/2addr v0, v1

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 14152
    :cond_c
    iget-object v1, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpEmulatorNavigation;->endPointName_:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_d

    const/16 v1, 0xd

    .line 14154
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpEmulatorNavigation;->getEndPointName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/carsdk/protobuf/CodedOutputStream;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 14156
    :cond_d
    iget v1, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpEmulatorNavigation;->egoInternalRoadState_:I

    sget-object v2, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$EgoInternalRoadState;->NOT_IN_INTERNAL_ROAD:Landroid/car/hardware/xpu/XpuFNgpRouteMessage$EgoInternalRoadState;

    invoke-virtual {v2}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$EgoInternalRoadState;->getNumber()I

    move-result v2

    if-eq v1, v2, :cond_e

    const/16 v1, 0xe

    .line 14157
    iget v2, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpEmulatorNavigation;->egoInternalRoadState_:I

    .line 14158
    invoke-static {v1, v2}, Lcom/android/carsdk/protobuf/CodedOutputStream;->computeEnumSize(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 14160
    :cond_e
    iget-object v1, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpEmulatorNavigation;->currentLocalPoint_:Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Point;

    if-eqz v1, :cond_f

    const/16 v1, 0xf

    .line 14162
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpEmulatorNavigation;->getCurrentLocalPoint()Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Point;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/carsdk/protobuf/CodedOutputStream;->computeMessageSize(ILcom/android/carsdk/protobuf/MessageLite;)I

    move-result v1

    add-int/2addr v0, v1

    .line 14164
    :cond_f
    iget-object v1, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpEmulatorNavigation;->currentLocalRotation_:Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Rotation;

    if-eqz v1, :cond_10

    const/16 v1, 0x10

    .line 14166
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpEmulatorNavigation;->getCurrentLocalRotation()Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Rotation;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/carsdk/protobuf/CodedOutputStream;->computeMessageSize(ILcom/android/carsdk/protobuf/MessageLite;)I

    move-result v1

    add-int/2addr v0, v1

    .line 14168
    :cond_10
    iget v1, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpEmulatorNavigation;->endSlotShape_:I

    sget-object v2, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$SlotShapeType;->Unknown:Landroid/car/hardware/xpu/XpuFNgpRouteMessage$SlotShapeType;

    invoke-virtual {v2}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$SlotShapeType;->getNumber()I

    move-result v2

    if-eq v1, v2, :cond_11

    const/16 v1, 0x11

    .line 14169
    iget v2, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpEmulatorNavigation;->endSlotShape_:I

    .line 14170
    invoke-static {v1, v2}, Lcom/android/carsdk/protobuf/CodedOutputStream;->computeEnumSize(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 14172
    :cond_11
    iget v1, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpEmulatorNavigation;->endInternalPassedMileage_:I

    if-eqz v1, :cond_12

    const/16 v2, 0x12

    .line 14174
    invoke-static {v2, v1}, Lcom/android/carsdk/protobuf/CodedOutputStream;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 14176
    :cond_12
    iget v1, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpEmulatorNavigation;->pathType_:I

    sget-object v2, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$PathType;->RESERVED:Landroid/car/hardware/xpu/XpuFNgpRouteMessage$PathType;

    invoke-virtual {v2}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$PathType;->getNumber()I

    move-result v2

    if-eq v1, v2, :cond_13

    const/16 v1, 0x13

    .line 14177
    iget v2, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpEmulatorNavigation;->pathType_:I

    .line 14178
    invoke-static {v1, v2}, Lcom/android/carsdk/protobuf/CodedOutputStream;->computeEnumSize(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 14180
    :cond_13
    iput v0, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpEmulatorNavigation;->memoizedSerializedSize:I

    return v0
.end method

.method public hasCurrentLocalPoint()Z
    .locals 1

    .line 13743
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpEmulatorNavigation;->currentLocalPoint_:Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Point;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasCurrentLocalRotation()Z
    .locals 1

    .line 13819
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpEmulatorNavigation;->currentLocalRotation_:Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Rotation;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasCurrentLonlatPoint()Z
    .locals 1

    .line 13029
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpEmulatorNavigation;->currentLonlatPoint_:Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Point;

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

    .line 14040
    iget-wide v0, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpEmulatorNavigation;->routeId_:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    const/4 v4, 0x1

    .line 14041
    invoke-virtual {p1, v4, v0, v1}, Lcom/android/carsdk/protobuf/CodedOutputStream;->writeInt64(IJ)V

    .line 14043
    :cond_0
    iget v0, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpEmulatorNavigation;->currentPointIndexInV2List_:I

    if-eqz v0, :cond_1

    const/4 v1, 0x2

    .line 14044
    invoke-virtual {p1, v1, v0}, Lcom/android/carsdk/protobuf/CodedOutputStream;->writeInt32(II)V

    .line 14046
    :cond_1
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpEmulatorNavigation;->currentLonlatPoint_:Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Point;

    if-eqz v0, :cond_2

    const/4 v0, 0x3

    .line 14047
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpEmulatorNavigation;->getCurrentLonlatPoint()Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Point;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/android/carsdk/protobuf/CodedOutputStream;->writeMessage(ILcom/android/carsdk/protobuf/MessageLite;)V

    .line 14049
    :cond_2
    iget v0, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpEmulatorNavigation;->remainMileage_:I

    if-eqz v0, :cond_3

    const/4 v1, 0x4

    .line 14050
    invoke-virtual {p1, v1, v0}, Lcom/android/carsdk/protobuf/CodedOutputStream;->writeInt32(II)V

    .line 14052
    :cond_3
    iget v0, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpEmulatorNavigation;->passedMileage_:I

    if-eqz v0, :cond_4

    const/4 v1, 0x5

    .line 14053
    invoke-virtual {p1, v1, v0}, Lcom/android/carsdk/protobuf/CodedOutputStream;->writeInt32(II)V

    .line 14055
    :cond_4
    iget-wide v0, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpEmulatorNavigation;->predictTimeDuration_:J

    cmp-long v4, v0, v2

    if-eqz v4, :cond_5

    const/4 v4, 0x6

    .line 14056
    invoke-virtual {p1, v4, v0, v1}, Lcom/android/carsdk/protobuf/CodedOutputStream;->writeInt64(IJ)V

    .line 14058
    :cond_5
    iget-wide v0, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpEmulatorNavigation;->arriveTime_:J

    cmp-long v2, v0, v2

    if-eqz v2, :cond_6

    const/4 v2, 0x7

    .line 14059
    invoke-virtual {p1, v2, v0, v1}, Lcom/android/carsdk/protobuf/CodedOutputStream;->writeInt64(IJ)V

    .line 14061
    :cond_6
    iget v0, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpEmulatorNavigation;->maneuverType_:I

    sget-object v1, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$ManeuverType;->TURN_DEFAULT:Landroid/car/hardware/xpu/XpuFNgpRouteMessage$ManeuverType;

    invoke-virtual {v1}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$ManeuverType;->getNumber()I

    move-result v1

    if-eq v0, v1, :cond_7

    const/16 v0, 0x8

    .line 14062
    iget v1, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpEmulatorNavigation;->maneuverType_:I

    invoke-virtual {p1, v0, v1}, Lcom/android/carsdk/protobuf/CodedOutputStream;->writeEnum(II)V

    .line 14064
    :cond_7
    iget v0, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpEmulatorNavigation;->maneuverDirection_:I

    sget-object v1, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$ManeuverDirection;->DEFAULT:Landroid/car/hardware/xpu/XpuFNgpRouteMessage$ManeuverDirection;

    invoke-virtual {v1}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$ManeuverDirection;->getNumber()I

    move-result v1

    if-eq v0, v1, :cond_8

    const/16 v0, 0x9

    .line 14065
    iget v1, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpEmulatorNavigation;->maneuverDirection_:I

    invoke-virtual {p1, v0, v1}, Lcom/android/carsdk/protobuf/CodedOutputStream;->writeEnum(II)V

    .line 14067
    :cond_8
    iget v0, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpEmulatorNavigation;->maneuverDistance_:I

    if-eqz v0, :cond_9

    const/16 v1, 0xa

    .line 14068
    invoke-virtual {p1, v1, v0}, Lcom/android/carsdk/protobuf/CodedOutputStream;->writeInt32(II)V

    .line 14070
    :cond_9
    iget v0, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpEmulatorNavigation;->currentOffset_:I

    if-eqz v0, :cond_a

    const/16 v1, 0xb

    .line 14071
    invoke-virtual {p1, v1, v0}, Lcom/android/carsdk/protobuf/CodedOutputStream;->writeInt32(II)V

    :cond_a
    const/4 v0, 0x0

    .line 14073
    :goto_0
    iget-object v1, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpEmulatorNavigation;->offsetSegmentList_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    invoke-interface {v1}, Lcom/android/carsdk/protobuf/Internal$ProtobufList;->size()I

    move-result v1

    if-ge v0, v1, :cond_b

    const/16 v1, 0xc

    .line 14074
    iget-object v2, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpEmulatorNavigation;->offsetSegmentList_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    invoke-interface {v2, v0}, Lcom/android/carsdk/protobuf/Internal$ProtobufList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/carsdk/protobuf/MessageLite;

    invoke-virtual {p1, v1, v2}, Lcom/android/carsdk/protobuf/CodedOutputStream;->writeMessage(ILcom/android/carsdk/protobuf/MessageLite;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 14076
    :cond_b
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpEmulatorNavigation;->endPointName_:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_c

    const/16 v0, 0xd

    .line 14077
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpEmulatorNavigation;->getEndPointName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/android/carsdk/protobuf/CodedOutputStream;->writeString(ILjava/lang/String;)V

    .line 14079
    :cond_c
    iget v0, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpEmulatorNavigation;->egoInternalRoadState_:I

    sget-object v1, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$EgoInternalRoadState;->NOT_IN_INTERNAL_ROAD:Landroid/car/hardware/xpu/XpuFNgpRouteMessage$EgoInternalRoadState;

    invoke-virtual {v1}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$EgoInternalRoadState;->getNumber()I

    move-result v1

    if-eq v0, v1, :cond_d

    const/16 v0, 0xe

    .line 14080
    iget v1, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpEmulatorNavigation;->egoInternalRoadState_:I

    invoke-virtual {p1, v0, v1}, Lcom/android/carsdk/protobuf/CodedOutputStream;->writeEnum(II)V

    .line 14082
    :cond_d
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpEmulatorNavigation;->currentLocalPoint_:Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Point;

    if-eqz v0, :cond_e

    const/16 v0, 0xf

    .line 14083
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpEmulatorNavigation;->getCurrentLocalPoint()Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Point;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/android/carsdk/protobuf/CodedOutputStream;->writeMessage(ILcom/android/carsdk/protobuf/MessageLite;)V

    .line 14085
    :cond_e
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpEmulatorNavigation;->currentLocalRotation_:Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Rotation;

    if-eqz v0, :cond_f

    const/16 v0, 0x10

    .line 14086
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpEmulatorNavigation;->getCurrentLocalRotation()Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Rotation;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/android/carsdk/protobuf/CodedOutputStream;->writeMessage(ILcom/android/carsdk/protobuf/MessageLite;)V

    .line 14088
    :cond_f
    iget v0, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpEmulatorNavigation;->endSlotShape_:I

    sget-object v1, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$SlotShapeType;->Unknown:Landroid/car/hardware/xpu/XpuFNgpRouteMessage$SlotShapeType;

    invoke-virtual {v1}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$SlotShapeType;->getNumber()I

    move-result v1

    if-eq v0, v1, :cond_10

    const/16 v0, 0x11

    .line 14089
    iget v1, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpEmulatorNavigation;->endSlotShape_:I

    invoke-virtual {p1, v0, v1}, Lcom/android/carsdk/protobuf/CodedOutputStream;->writeEnum(II)V

    .line 14091
    :cond_10
    iget v0, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpEmulatorNavigation;->endInternalPassedMileage_:I

    if-eqz v0, :cond_11

    const/16 v1, 0x12

    .line 14092
    invoke-virtual {p1, v1, v0}, Lcom/android/carsdk/protobuf/CodedOutputStream;->writeInt32(II)V

    .line 14094
    :cond_11
    iget v0, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpEmulatorNavigation;->pathType_:I

    sget-object v1, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$PathType;->RESERVED:Landroid/car/hardware/xpu/XpuFNgpRouteMessage$PathType;

    invoke-virtual {v1}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$PathType;->getNumber()I

    move-result v1

    if-eq v0, v1, :cond_12

    const/16 v0, 0x13

    .line 14095
    iget v1, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpEmulatorNavigation;->pathType_:I

    invoke-virtual {p1, v0, v1}, Lcom/android/carsdk/protobuf/CodedOutputStream;->writeEnum(II)V

    :cond_12
    return-void
.end method
