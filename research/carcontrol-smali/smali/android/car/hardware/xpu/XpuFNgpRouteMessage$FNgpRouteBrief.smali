.class public final Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief;
.super Lcom/android/carsdk/protobuf/GeneratedMessageLite;
.source "XpuFNgpRouteMessage.java"

# interfaces
.implements Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBriefOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/car/hardware/xpu/XpuFNgpRouteMessage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "FNgpRouteBrief"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief$Builder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/carsdk/protobuf/GeneratedMessageLite<",
        "Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief;",
        "Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief$Builder;",
        ">;",
        "Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBriefOrBuilder;"
    }
.end annotation


# static fields
.field public static final BEGIN_LONLAT_POINT_FIELD_NUMBER:I = 0x3

.field public static final BEGIN_POINT_NAME_FIELD_NUMBER:I = 0x4

.field public static final CLUSTER_NUMBER_FIELD_NUMBER:I = 0x15

.field public static final CREATE_TIME_FIELD_NUMBER:I = 0x8

.field public static final CUSTOM_STATUS_MSG_FIELD_NUMBER:I = 0x1b

.field private static final DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief;

.field public static final EGO_INTERNAL_ROAD_STATE_FIELD_NUMBER:I = 0x20

.field public static final END_LONLAT_POINT_FIELD_NUMBER:I = 0x5

.field public static final END_POINT_NAME_FIELD_NUMBER:I = 0x6

.field public static final END_SLOT_SHAPE_FIELD_NUMBER:I = 0x1d

.field public static final FNGP_STATUS_FIELD_NUMBER:I = 0xc

.field public static final INTERNAL_MAP_INFO_LIST_FIELD_NUMBER:I = 0x22

.field public static final INTERNAL_ROUTE_TYPE_LIST_FIELD_NUMBER:I = 0x21

.field public static final IS_CUSTOM_FIELD_NUMBER:I = 0x1a

.field public static final IS_LOCK_FIELD_NUMBER:I = 0xb

.field public static final IS_NAVI_END_MATCH_FIELD_NUMBER:I = 0x14

.field public static final IS_RENAMED_ROUTE_FIELD_NUMBER:I = 0x13

.field public static final IS_SELECTED_FIELD_NUMBER:I = 0x9

.field public static final LAST_USE_TIME_FIELD_NUMBER:I = 0xa

.field public static final LEARN_STATUS_FIELD_NUMBER:I = 0x16

.field public static final NAME_FIELD_NUMBER:I = 0xf

.field private static volatile PARSER:Lcom/android/carsdk/protobuf/Parser; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/carsdk/protobuf/Parser<",
            "Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief;",
            ">;"
        }
    .end annotation
.end field

.field public static final PATH_TYPE_FIELD_NUMBER:I = 0xd

.field public static final PREDICT_TIME_DURATION_FIELD_NUMBER:I = 0x7

.field public static final PRIORITY_FIELD_NUMBER:I = 0xe

.field public static final PRIORITY_INFO_FIELD_NUMBER:I = 0x12

.field public static final ROUTE_ID_FIELD_NUMBER:I = 0x1

.field public static final ROUTE_SCORE_FIELD_NUMBER:I = 0x17

.field public static final ROUTE_SELECTED_TIMESTAMP_FIELD_NUMBER:I = 0x23

.field public static final ROUTE_SHOW_STATUS_FIELD_NUMBER:I = 0x11

.field public static final SELECT_TYPE_FIELD_NUMBER:I = 0x1e

.field public static final SLOT_PREFER_TYPE_FIELD_NUMBER:I = 0x1f

.field public static final START_END_CLUSTER_NUMBER_FIELD_NUMBER:I = 0x19

.field public static final START_SLOT_SHAPE_FIELD_NUMBER:I = 0x1c

.field public static final TOTAL_MILEAGE_FIELD_NUMBER:I = 0x2

.field public static final TOTAL_ODD_MILAGE_FIELD_NUMBER:I = 0x10

.field public static final USING_RAW_ROUTE_TYPE_FIELD_NUMBER:I = 0x18

.field private static final internalRouteTypeList_converter_:Lcom/android/carsdk/protobuf/Internal$ListAdapter$Converter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/carsdk/protobuf/Internal$ListAdapter$Converter<",
            "Ljava/lang/Integer;",
            "Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FngpInternalRouteType;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private beginLonlatPoint_:Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Point;

.field private beginPointName_:Ljava/lang/String;

.field private bitField0_:I

.field private bitField1_:I

.field private clusterNumber_:I

.field private createTime_:J

.field private customStatusMsg_:Landroid/car/hardware/xpu/XpuFNgpRouteMessage$CustomStatusMsg;

.field private egoInternalRoadState_:I

.field private endLonlatPoint_:Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Point;

.field private endPointName_:Ljava/lang/String;

.field private endSlotShape_:I

.field private fngpStatus_:I

.field private internalMapInfoList_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/carsdk/protobuf/Internal$ProtobufList<",
            "Landroid/car/hardware/xpu/XpuFNgpRouteMessage$InternalMapInfo;",
            ">;"
        }
    .end annotation
.end field

.field private internalRouteTypeList_:Lcom/android/carsdk/protobuf/Internal$IntList;

.field private isCustom_:I

.field private isLock_:Z

.field private isNaviEndMatch_:I

.field private isRenamedRoute_:I

.field private isSelected_:Z

.field private lastUseTime_:J

.field private learnStatus_:I

.field private name_:Ljava/lang/String;

.field private pathType_:I

.field private predictTimeDuration_:J

.field private priorityInfo_:I

.field private priority_:I

.field private routeId_:J

.field private routeScore_:D

.field private routeSelectedTimestamp_:J

.field private routeShowStatus_:I

.field private selectType_:I

.field private slotPreferType_:I

.field private startEndClusterNumber_:I

.field private startSlotShape_:I

.field private totalMileage_:I

.field private totalOddMilage_:I

.field private usingRawRouteType_:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 6162
    new-instance v0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief$1;

    invoke-direct {v0}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief$1;-><init>()V

    sput-object v0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief;->internalRouteTypeList_converter_:Lcom/android/carsdk/protobuf/Internal$ListAdapter$Converter;

    .line 9080
    new-instance v0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief;

    invoke-direct {v0}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief;-><init>()V

    sput-object v0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief;

    .line 9081
    invoke-virtual {v0}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief;->makeImmutable()V

    return-void
.end method

.method private constructor <init>()V
    .locals 5

    .line 4550
    invoke-direct {p0}, Lcom/android/carsdk/protobuf/GeneratedMessageLite;-><init>()V

    const-wide/16 v0, 0x0

    .line 4551
    iput-wide v0, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief;->routeId_:J

    const/4 v2, 0x0

    .line 4552
    iput v2, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief;->totalMileage_:I

    const-string v3, ""

    .line 4553
    iput-object v3, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief;->beginPointName_:Ljava/lang/String;

    .line 4554
    iput-object v3, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief;->endPointName_:Ljava/lang/String;

    .line 4555
    iput-wide v0, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief;->predictTimeDuration_:J

    .line 4556
    iput-wide v0, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief;->createTime_:J

    .line 4557
    iput-boolean v2, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief;->isSelected_:Z

    .line 4558
    iput-wide v0, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief;->lastUseTime_:J

    .line 4559
    iput-boolean v2, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief;->isLock_:Z

    .line 4560
    iput v2, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief;->fngpStatus_:I

    .line 4561
    iput v2, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief;->pathType_:I

    .line 4562
    iput v2, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief;->priority_:I

    .line 4563
    iput-object v3, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief;->name_:Ljava/lang/String;

    .line 4564
    iput v2, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief;->totalOddMilage_:I

    .line 4565
    iput v2, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief;->routeShowStatus_:I

    .line 4566
    iput v2, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief;->priorityInfo_:I

    .line 4567
    iput v2, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief;->isRenamedRoute_:I

    .line 4568
    iput v2, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief;->isNaviEndMatch_:I

    .line 4569
    iput v2, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief;->clusterNumber_:I

    .line 4570
    iput v2, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief;->learnStatus_:I

    const-wide/16 v3, 0x0

    .line 4571
    iput-wide v3, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief;->routeScore_:D

    .line 4572
    iput v2, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief;->usingRawRouteType_:I

    .line 4573
    iput v2, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief;->startEndClusterNumber_:I

    .line 4574
    iput v2, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief;->isCustom_:I

    .line 4575
    iput v2, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief;->startSlotShape_:I

    .line 4576
    iput v2, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief;->endSlotShape_:I

    .line 4577
    iput v2, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief;->selectType_:I

    .line 4578
    iput v2, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief;->slotPreferType_:I

    .line 4579
    iput v2, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief;->egoInternalRoadState_:I

    .line 4580
    invoke-static {}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief;->emptyIntList()Lcom/android/carsdk/protobuf/Internal$IntList;

    move-result-object v2

    iput-object v2, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief;->internalRouteTypeList_:Lcom/android/carsdk/protobuf/Internal$IntList;

    .line 4581
    invoke-static {}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief;->emptyProtobufList()Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    move-result-object v2

    iput-object v2, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief;->internalMapInfoList_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    .line 4582
    iput-wide v0, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief;->routeSelectedTimestamp_:J

    return-void
.end method

.method static synthetic access$10000(Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief;I)V
    .locals 0

    .line 4545
    invoke-direct {p0, p1}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief;->setSelectTypeValue(I)V

    return-void
.end method

.method static synthetic access$10100(Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief;Landroid/car/hardware/xpu/XpuFNgpRouteMessage$SelectType;)V
    .locals 0

    .line 4545
    invoke-direct {p0, p1}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief;->setSelectType(Landroid/car/hardware/xpu/XpuFNgpRouteMessage$SelectType;)V

    return-void
.end method

.method static synthetic access$10200(Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief;)V
    .locals 0

    .line 4545
    invoke-direct {p0}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief;->clearSelectType()V

    return-void
.end method

.method static synthetic access$10300(Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief;I)V
    .locals 0

    .line 4545
    invoke-direct {p0, p1}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief;->setSlotPreferTypeValue(I)V

    return-void
.end method

.method static synthetic access$10400(Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief;Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FngpRouteSlotPreferType;)V
    .locals 0

    .line 4545
    invoke-direct {p0, p1}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief;->setSlotPreferType(Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FngpRouteSlotPreferType;)V

    return-void
.end method

.method static synthetic access$10500(Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief;)V
    .locals 0

    .line 4545
    invoke-direct {p0}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief;->clearSlotPreferType()V

    return-void
.end method

.method static synthetic access$10600(Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief;I)V
    .locals 0

    .line 4545
    invoke-direct {p0, p1}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief;->setEgoInternalRoadStateValue(I)V

    return-void
.end method

.method static synthetic access$10700(Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief;Landroid/car/hardware/xpu/XpuFNgpRouteMessage$EgoInternalRoadState;)V
    .locals 0

    .line 4545
    invoke-direct {p0, p1}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief;->setEgoInternalRoadState(Landroid/car/hardware/xpu/XpuFNgpRouteMessage$EgoInternalRoadState;)V

    return-void
.end method

.method static synthetic access$10800(Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief;)V
    .locals 0

    .line 4545
    invoke-direct {p0}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief;->clearEgoInternalRoadState()V

    return-void
.end method

.method static synthetic access$10900(Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief;ILandroid/car/hardware/xpu/XpuFNgpRouteMessage$FngpInternalRouteType;)V
    .locals 0

    .line 4545
    invoke-direct {p0, p1, p2}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief;->setInternalRouteTypeList(ILandroid/car/hardware/xpu/XpuFNgpRouteMessage$FngpInternalRouteType;)V

    return-void
.end method

.method static synthetic access$11000(Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief;Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FngpInternalRouteType;)V
    .locals 0

    .line 4545
    invoke-direct {p0, p1}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief;->addInternalRouteTypeList(Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FngpInternalRouteType;)V

    return-void
.end method

.method static synthetic access$11100(Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief;Ljava/lang/Iterable;)V
    .locals 0

    .line 4545
    invoke-direct {p0, p1}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief;->addAllInternalRouteTypeList(Ljava/lang/Iterable;)V

    return-void
.end method

.method static synthetic access$11200(Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief;)V
    .locals 0

    .line 4545
    invoke-direct {p0}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief;->clearInternalRouteTypeList()V

    return-void
.end method

.method static synthetic access$11300(Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief;II)V
    .locals 0

    .line 4545
    invoke-direct {p0, p1, p2}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief;->setInternalRouteTypeListValue(II)V

    return-void
.end method

.method static synthetic access$11400(Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief;I)V
    .locals 0

    .line 4545
    invoke-direct {p0, p1}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief;->addInternalRouteTypeListValue(I)V

    return-void
.end method

.method static synthetic access$11500(Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief;Ljava/lang/Iterable;)V
    .locals 0

    .line 4545
    invoke-direct {p0, p1}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief;->addAllInternalRouteTypeListValue(Ljava/lang/Iterable;)V

    return-void
.end method

.method static synthetic access$11600(Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief;ILandroid/car/hardware/xpu/XpuFNgpRouteMessage$InternalMapInfo;)V
    .locals 0

    .line 4545
    invoke-direct {p0, p1, p2}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief;->setInternalMapInfoList(ILandroid/car/hardware/xpu/XpuFNgpRouteMessage$InternalMapInfo;)V

    return-void
.end method

.method static synthetic access$11700(Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief;ILandroid/car/hardware/xpu/XpuFNgpRouteMessage$InternalMapInfo$Builder;)V
    .locals 0

    .line 4545
    invoke-direct {p0, p1, p2}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief;->setInternalMapInfoList(ILandroid/car/hardware/xpu/XpuFNgpRouteMessage$InternalMapInfo$Builder;)V

    return-void
.end method

.method static synthetic access$11800(Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief;Landroid/car/hardware/xpu/XpuFNgpRouteMessage$InternalMapInfo;)V
    .locals 0

    .line 4545
    invoke-direct {p0, p1}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief;->addInternalMapInfoList(Landroid/car/hardware/xpu/XpuFNgpRouteMessage$InternalMapInfo;)V

    return-void
.end method

.method static synthetic access$11900(Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief;ILandroid/car/hardware/xpu/XpuFNgpRouteMessage$InternalMapInfo;)V
    .locals 0

    .line 4545
    invoke-direct {p0, p1, p2}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief;->addInternalMapInfoList(ILandroid/car/hardware/xpu/XpuFNgpRouteMessage$InternalMapInfo;)V

    return-void
.end method

.method static synthetic access$12000(Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief;Landroid/car/hardware/xpu/XpuFNgpRouteMessage$InternalMapInfo$Builder;)V
    .locals 0

    .line 4545
    invoke-direct {p0, p1}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief;->addInternalMapInfoList(Landroid/car/hardware/xpu/XpuFNgpRouteMessage$InternalMapInfo$Builder;)V

    return-void
.end method

.method static synthetic access$12100(Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief;ILandroid/car/hardware/xpu/XpuFNgpRouteMessage$InternalMapInfo$Builder;)V
    .locals 0

    .line 4545
    invoke-direct {p0, p1, p2}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief;->addInternalMapInfoList(ILandroid/car/hardware/xpu/XpuFNgpRouteMessage$InternalMapInfo$Builder;)V

    return-void
.end method

.method static synthetic access$12200(Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief;Ljava/lang/Iterable;)V
    .locals 0

    .line 4545
    invoke-direct {p0, p1}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief;->addAllInternalMapInfoList(Ljava/lang/Iterable;)V

    return-void
.end method

.method static synthetic access$12300(Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief;)V
    .locals 0

    .line 4545
    invoke-direct {p0}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief;->clearInternalMapInfoList()V

    return-void
.end method

.method static synthetic access$12400(Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief;I)V
    .locals 0

    .line 4545
    invoke-direct {p0, p1}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief;->removeInternalMapInfoList(I)V

    return-void
.end method

.method static synthetic access$12500(Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief;J)V
    .locals 0

    .line 4545
    invoke-direct {p0, p1, p2}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief;->setRouteSelectedTimestamp(J)V

    return-void
.end method

.method static synthetic access$12600(Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief;)V
    .locals 0

    .line 4545
    invoke-direct {p0}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief;->clearRouteSelectedTimestamp()V

    return-void
.end method

.method static synthetic access$2500()Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief;
    .locals 1

    .line 4545
    sget-object v0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief;

    return-object v0
.end method

.method static synthetic access$2600(Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief;J)V
    .locals 0

    .line 4545
    invoke-direct {p0, p1, p2}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief;->setRouteId(J)V

    return-void
.end method

.method static synthetic access$2700(Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief;)V
    .locals 0

    .line 4545
    invoke-direct {p0}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief;->clearRouteId()V

    return-void
.end method

.method static synthetic access$2800(Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief;I)V
    .locals 0

    .line 4545
    invoke-direct {p0, p1}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief;->setTotalMileage(I)V

    return-void
.end method

.method static synthetic access$2900(Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief;)V
    .locals 0

    .line 4545
    invoke-direct {p0}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief;->clearTotalMileage()V

    return-void
.end method

.method static synthetic access$3000(Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief;Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Point;)V
    .locals 0

    .line 4545
    invoke-direct {p0, p1}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief;->setBeginLonlatPoint(Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Point;)V

    return-void
.end method

.method static synthetic access$3100(Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief;Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Point$Builder;)V
    .locals 0

    .line 4545
    invoke-direct {p0, p1}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief;->setBeginLonlatPoint(Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Point$Builder;)V

    return-void
.end method

.method static synthetic access$3200(Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief;Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Point;)V
    .locals 0

    .line 4545
    invoke-direct {p0, p1}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief;->mergeBeginLonlatPoint(Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Point;)V

    return-void
.end method

.method static synthetic access$3300(Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief;)V
    .locals 0

    .line 4545
    invoke-direct {p0}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief;->clearBeginLonlatPoint()V

    return-void
.end method

.method static synthetic access$3400(Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief;Ljava/lang/String;)V
    .locals 0

    .line 4545
    invoke-direct {p0, p1}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief;->setBeginPointName(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$3500(Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief;)V
    .locals 0

    .line 4545
    invoke-direct {p0}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief;->clearBeginPointName()V

    return-void
.end method

.method static synthetic access$3600(Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief;Lcom/android/carsdk/protobuf/ByteString;)V
    .locals 0

    .line 4545
    invoke-direct {p0, p1}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief;->setBeginPointNameBytes(Lcom/android/carsdk/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$3700(Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief;Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Point;)V
    .locals 0

    .line 4545
    invoke-direct {p0, p1}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief;->setEndLonlatPoint(Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Point;)V

    return-void
.end method

.method static synthetic access$3800(Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief;Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Point$Builder;)V
    .locals 0

    .line 4545
    invoke-direct {p0, p1}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief;->setEndLonlatPoint(Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Point$Builder;)V

    return-void
.end method

.method static synthetic access$3900(Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief;Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Point;)V
    .locals 0

    .line 4545
    invoke-direct {p0, p1}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief;->mergeEndLonlatPoint(Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Point;)V

    return-void
.end method

.method static synthetic access$4000(Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief;)V
    .locals 0

    .line 4545
    invoke-direct {p0}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief;->clearEndLonlatPoint()V

    return-void
.end method

.method static synthetic access$4100(Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief;Ljava/lang/String;)V
    .locals 0

    .line 4545
    invoke-direct {p0, p1}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief;->setEndPointName(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$4200(Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief;)V
    .locals 0

    .line 4545
    invoke-direct {p0}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief;->clearEndPointName()V

    return-void
.end method

.method static synthetic access$4300(Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief;Lcom/android/carsdk/protobuf/ByteString;)V
    .locals 0

    .line 4545
    invoke-direct {p0, p1}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief;->setEndPointNameBytes(Lcom/android/carsdk/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$4400(Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief;J)V
    .locals 0

    .line 4545
    invoke-direct {p0, p1, p2}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief;->setPredictTimeDuration(J)V

    return-void
.end method

.method static synthetic access$4500(Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief;)V
    .locals 0

    .line 4545
    invoke-direct {p0}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief;->clearPredictTimeDuration()V

    return-void
.end method

.method static synthetic access$4600(Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief;J)V
    .locals 0

    .line 4545
    invoke-direct {p0, p1, p2}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief;->setCreateTime(J)V

    return-void
.end method

.method static synthetic access$4700(Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief;)V
    .locals 0

    .line 4545
    invoke-direct {p0}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief;->clearCreateTime()V

    return-void
.end method

.method static synthetic access$4800(Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief;Z)V
    .locals 0

    .line 4545
    invoke-direct {p0, p1}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief;->setIsSelected(Z)V

    return-void
.end method

.method static synthetic access$4900(Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief;)V
    .locals 0

    .line 4545
    invoke-direct {p0}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief;->clearIsSelected()V

    return-void
.end method

.method static synthetic access$5000(Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief;J)V
    .locals 0

    .line 4545
    invoke-direct {p0, p1, p2}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief;->setLastUseTime(J)V

    return-void
.end method

.method static synthetic access$5100(Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief;)V
    .locals 0

    .line 4545
    invoke-direct {p0}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief;->clearLastUseTime()V

    return-void
.end method

.method static synthetic access$5200(Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief;Z)V
    .locals 0

    .line 4545
    invoke-direct {p0, p1}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief;->setIsLock(Z)V

    return-void
.end method

.method static synthetic access$5300(Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief;)V
    .locals 0

    .line 4545
    invoke-direct {p0}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief;->clearIsLock()V

    return-void
.end method

.method static synthetic access$5400(Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief;I)V
    .locals 0

    .line 4545
    invoke-direct {p0, p1}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief;->setFngpStatusValue(I)V

    return-void
.end method

.method static synthetic access$5500(Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief;Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpStatus;)V
    .locals 0

    .line 4545
    invoke-direct {p0, p1}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief;->setFngpStatus(Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpStatus;)V

    return-void
.end method

.method static synthetic access$5600(Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief;)V
    .locals 0

    .line 4545
    invoke-direct {p0}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief;->clearFngpStatus()V

    return-void
.end method

.method static synthetic access$5700(Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief;I)V
    .locals 0

    .line 4545
    invoke-direct {p0, p1}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief;->setPathTypeValue(I)V

    return-void
.end method

.method static synthetic access$5800(Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief;Landroid/car/hardware/xpu/XpuFNgpRouteMessage$PathType;)V
    .locals 0

    .line 4545
    invoke-direct {p0, p1}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief;->setPathType(Landroid/car/hardware/xpu/XpuFNgpRouteMessage$PathType;)V

    return-void
.end method

.method static synthetic access$5900(Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief;)V
    .locals 0

    .line 4545
    invoke-direct {p0}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief;->clearPathType()V

    return-void
.end method

.method static synthetic access$6000(Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief;I)V
    .locals 0

    .line 4545
    invoke-direct {p0, p1}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief;->setPriority(I)V

    return-void
.end method

.method static synthetic access$6100(Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief;)V
    .locals 0

    .line 4545
    invoke-direct {p0}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief;->clearPriority()V

    return-void
.end method

.method static synthetic access$6200(Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief;Ljava/lang/String;)V
    .locals 0

    .line 4545
    invoke-direct {p0, p1}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief;->setName(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$6300(Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief;)V
    .locals 0

    .line 4545
    invoke-direct {p0}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief;->clearName()V

    return-void
.end method

.method static synthetic access$6400(Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief;Lcom/android/carsdk/protobuf/ByteString;)V
    .locals 0

    .line 4545
    invoke-direct {p0, p1}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief;->setNameBytes(Lcom/android/carsdk/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$6500(Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief;I)V
    .locals 0

    .line 4545
    invoke-direct {p0, p1}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief;->setTotalOddMilage(I)V

    return-void
.end method

.method static synthetic access$6600(Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief;)V
    .locals 0

    .line 4545
    invoke-direct {p0}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief;->clearTotalOddMilage()V

    return-void
.end method

.method static synthetic access$6700(Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief;I)V
    .locals 0

    .line 4545
    invoke-direct {p0, p1}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief;->setRouteShowStatus(I)V

    return-void
.end method

.method static synthetic access$6800(Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief;)V
    .locals 0

    .line 4545
    invoke-direct {p0}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief;->clearRouteShowStatus()V

    return-void
.end method

.method static synthetic access$6900(Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief;I)V
    .locals 0

    .line 4545
    invoke-direct {p0, p1}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief;->setPriorityInfoValue(I)V

    return-void
.end method

.method static synthetic access$7000(Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief;Landroid/car/hardware/xpu/XpuFNgpRouteMessage$PriorityInfo;)V
    .locals 0

    .line 4545
    invoke-direct {p0, p1}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief;->setPriorityInfo(Landroid/car/hardware/xpu/XpuFNgpRouteMessage$PriorityInfo;)V

    return-void
.end method

.method static synthetic access$7100(Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief;)V
    .locals 0

    .line 4545
    invoke-direct {p0}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief;->clearPriorityInfo()V

    return-void
.end method

.method static synthetic access$7200(Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief;I)V
    .locals 0

    .line 4545
    invoke-direct {p0, p1}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief;->setIsRenamedRoute(I)V

    return-void
.end method

.method static synthetic access$7300(Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief;)V
    .locals 0

    .line 4545
    invoke-direct {p0}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief;->clearIsRenamedRoute()V

    return-void
.end method

.method static synthetic access$7400(Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief;I)V
    .locals 0

    .line 4545
    invoke-direct {p0, p1}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief;->setIsNaviEndMatch(I)V

    return-void
.end method

.method static synthetic access$7500(Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief;)V
    .locals 0

    .line 4545
    invoke-direct {p0}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief;->clearIsNaviEndMatch()V

    return-void
.end method

.method static synthetic access$7600(Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief;I)V
    .locals 0

    .line 4545
    invoke-direct {p0, p1}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief;->setClusterNumber(I)V

    return-void
.end method

.method static synthetic access$7700(Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief;)V
    .locals 0

    .line 4545
    invoke-direct {p0}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief;->clearClusterNumber()V

    return-void
.end method

.method static synthetic access$7800(Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief;I)V
    .locals 0

    .line 4545
    invoke-direct {p0, p1}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief;->setLearnStatusValue(I)V

    return-void
.end method

.method static synthetic access$7900(Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief;Landroid/car/hardware/xpu/XpuFNgpRouteMessage$PathLearnStatus;)V
    .locals 0

    .line 4545
    invoke-direct {p0, p1}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief;->setLearnStatus(Landroid/car/hardware/xpu/XpuFNgpRouteMessage$PathLearnStatus;)V

    return-void
.end method

.method static synthetic access$8000(Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief;)V
    .locals 0

    .line 4545
    invoke-direct {p0}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief;->clearLearnStatus()V

    return-void
.end method

.method static synthetic access$8100(Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief;D)V
    .locals 0

    .line 4545
    invoke-direct {p0, p1, p2}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief;->setRouteScore(D)V

    return-void
.end method

.method static synthetic access$8200(Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief;)V
    .locals 0

    .line 4545
    invoke-direct {p0}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief;->clearRouteScore()V

    return-void
.end method

.method static synthetic access$8300(Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief;I)V
    .locals 0

    .line 4545
    invoke-direct {p0, p1}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief;->setUsingRawRouteTypeValue(I)V

    return-void
.end method

.method static synthetic access$8400(Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief;Landroid/car/hardware/xpu/XpuFNgpRouteMessage$UsingRawRouteType;)V
    .locals 0

    .line 4545
    invoke-direct {p0, p1}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief;->setUsingRawRouteType(Landroid/car/hardware/xpu/XpuFNgpRouteMessage$UsingRawRouteType;)V

    return-void
.end method

.method static synthetic access$8500(Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief;)V
    .locals 0

    .line 4545
    invoke-direct {p0}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief;->clearUsingRawRouteType()V

    return-void
.end method

.method static synthetic access$8600(Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief;I)V
    .locals 0

    .line 4545
    invoke-direct {p0, p1}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief;->setStartEndClusterNumber(I)V

    return-void
.end method

.method static synthetic access$8700(Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief;)V
    .locals 0

    .line 4545
    invoke-direct {p0}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief;->clearStartEndClusterNumber()V

    return-void
.end method

.method static synthetic access$8800(Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief;I)V
    .locals 0

    .line 4545
    invoke-direct {p0, p1}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief;->setIsCustom(I)V

    return-void
.end method

.method static synthetic access$8900(Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief;)V
    .locals 0

    .line 4545
    invoke-direct {p0}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief;->clearIsCustom()V

    return-void
.end method

.method static synthetic access$9000(Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief;Landroid/car/hardware/xpu/XpuFNgpRouteMessage$CustomStatusMsg;)V
    .locals 0

    .line 4545
    invoke-direct {p0, p1}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief;->setCustomStatusMsg(Landroid/car/hardware/xpu/XpuFNgpRouteMessage$CustomStatusMsg;)V

    return-void
.end method

.method static synthetic access$9100(Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief;Landroid/car/hardware/xpu/XpuFNgpRouteMessage$CustomStatusMsg$Builder;)V
    .locals 0

    .line 4545
    invoke-direct {p0, p1}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief;->setCustomStatusMsg(Landroid/car/hardware/xpu/XpuFNgpRouteMessage$CustomStatusMsg$Builder;)V

    return-void
.end method

.method static synthetic access$9200(Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief;Landroid/car/hardware/xpu/XpuFNgpRouteMessage$CustomStatusMsg;)V
    .locals 0

    .line 4545
    invoke-direct {p0, p1}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief;->mergeCustomStatusMsg(Landroid/car/hardware/xpu/XpuFNgpRouteMessage$CustomStatusMsg;)V

    return-void
.end method

.method static synthetic access$9300(Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief;)V
    .locals 0

    .line 4545
    invoke-direct {p0}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief;->clearCustomStatusMsg()V

    return-void
.end method

.method static synthetic access$9400(Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief;I)V
    .locals 0

    .line 4545
    invoke-direct {p0, p1}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief;->setStartSlotShapeValue(I)V

    return-void
.end method

.method static synthetic access$9500(Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief;Landroid/car/hardware/xpu/XpuFNgpRouteMessage$SlotShapeType;)V
    .locals 0

    .line 4545
    invoke-direct {p0, p1}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief;->setStartSlotShape(Landroid/car/hardware/xpu/XpuFNgpRouteMessage$SlotShapeType;)V

    return-void
.end method

.method static synthetic access$9600(Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief;)V
    .locals 0

    .line 4545
    invoke-direct {p0}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief;->clearStartSlotShape()V

    return-void
.end method

.method static synthetic access$9700(Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief;I)V
    .locals 0

    .line 4545
    invoke-direct {p0, p1}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief;->setEndSlotShapeValue(I)V

    return-void
.end method

.method static synthetic access$9800(Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief;Landroid/car/hardware/xpu/XpuFNgpRouteMessage$SlotShapeType;)V
    .locals 0

    .line 4545
    invoke-direct {p0, p1}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief;->setEndSlotShape(Landroid/car/hardware/xpu/XpuFNgpRouteMessage$SlotShapeType;)V

    return-void
.end method

.method static synthetic access$9900(Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief;)V
    .locals 0

    .line 4545
    invoke-direct {p0}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief;->clearEndSlotShape()V

    return-void
.end method

.method private addAllInternalMapInfoList(Ljava/lang/Iterable;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Landroid/car/hardware/xpu/XpuFNgpRouteMessage$InternalMapInfo;",
            ">;)V"
        }
    .end annotation

    .line 6469
    invoke-direct {p0}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief;->ensureInternalMapInfoListIsMutable()V

    .line 6470
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief;->internalMapInfoList_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    invoke-static {p1, v0}, Lcom/android/carsdk/protobuf/AbstractMessageLite;->addAll(Ljava/lang/Iterable;Ljava/util/Collection;)V

    return-void
.end method

.method private addAllInternalRouteTypeList(Ljava/lang/Iterable;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FngpInternalRouteType;",
            ">;)V"
        }
    .end annotation

    .line 6266
    invoke-direct {p0}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief;->ensureInternalRouteTypeListIsMutable()V

    .line 6267
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FngpInternalRouteType;

    .line 6268
    iget-object v1, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief;->internalRouteTypeList_:Lcom/android/carsdk/protobuf/Internal$IntList;

    invoke-virtual {v0}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FngpInternalRouteType;->getNumber()I

    move-result v0

    invoke-interface {v1, v0}, Lcom/android/carsdk/protobuf/Internal$IntList;->addInt(I)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private addAllInternalRouteTypeListValue(Ljava/lang/Iterable;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 6313
    invoke-direct {p0}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief;->ensureInternalRouteTypeListIsMutable()V

    .line 6314
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 6315
    iget-object v1, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief;->internalRouteTypeList_:Lcom/android/carsdk/protobuf/Internal$IntList;

    invoke-interface {v1, v0}, Lcom/android/carsdk/protobuf/Internal$IntList;->addInt(I)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private addInternalMapInfoList(ILandroid/car/hardware/xpu/XpuFNgpRouteMessage$InternalMapInfo$Builder;)V
    .locals 1

    .line 6457
    invoke-direct {p0}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief;->ensureInternalMapInfoListIsMutable()V

    .line 6458
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief;->internalMapInfoList_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    invoke-virtual {p2}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$InternalMapInfo$Builder;->build()Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object p2

    check-cast p2, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$InternalMapInfo;

    invoke-interface {v0, p1, p2}, Lcom/android/carsdk/protobuf/Internal$ProtobufList;->add(ILjava/lang/Object;)V

    return-void
.end method

.method private addInternalMapInfoList(ILandroid/car/hardware/xpu/XpuFNgpRouteMessage$InternalMapInfo;)V
    .locals 1

    .line 6431
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6433
    invoke-direct {p0}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief;->ensureInternalMapInfoListIsMutable()V

    .line 6434
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief;->internalMapInfoList_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1, p2}, Lcom/android/carsdk/protobuf/Internal$ProtobufList;->add(ILjava/lang/Object;)V

    return-void
.end method

.method private addInternalMapInfoList(Landroid/car/hardware/xpu/XpuFNgpRouteMessage$InternalMapInfo$Builder;)V
    .locals 1

    .line 6445
    invoke-direct {p0}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief;->ensureInternalMapInfoListIsMutable()V

    .line 6446
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief;->internalMapInfoList_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    invoke-virtual {p1}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$InternalMapInfo$Builder;->build()Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$InternalMapInfo;

    invoke-interface {v0, p1}, Lcom/android/carsdk/protobuf/Internal$ProtobufList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private addInternalMapInfoList(Landroid/car/hardware/xpu/XpuFNgpRouteMessage$InternalMapInfo;)V
    .locals 1

    .line 6416
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6418
    invoke-direct {p0}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief;->ensureInternalMapInfoListIsMutable()V

    .line 6419
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief;->internalMapInfoList_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1}, Lcom/android/carsdk/protobuf/Internal$ProtobufList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private addInternalRouteTypeList(Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FngpInternalRouteType;)V
    .locals 1

    .line 6252
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6254
    invoke-direct {p0}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief;->ensureInternalRouteTypeListIsMutable()V

    .line 6255
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief;->internalRouteTypeList_:Lcom/android/carsdk/protobuf/Internal$IntList;

    invoke-virtual {p1}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FngpInternalRouteType;->getNumber()I

    move-result p1

    invoke-interface {v0, p1}, Lcom/android/carsdk/protobuf/Internal$IntList;->addInt(I)V

    return-void
.end method

.method private addInternalRouteTypeListValue(I)V
    .locals 1

    .line 6301
    invoke-direct {p0}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief;->ensureInternalRouteTypeListIsMutable()V

    .line 6302
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief;->internalRouteTypeList_:Lcom/android/carsdk/protobuf/Internal$IntList;

    invoke-interface {v0, p1}, Lcom/android/carsdk/protobuf/Internal$IntList;->addInt(I)V

    return-void
.end method

.method private clearBeginLonlatPoint()V
    .locals 1

    const/4 v0, 0x0

    .line 4728
    iput-object v0, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief;->beginLonlatPoint_:Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Point;

    return-void
.end method

.method private clearBeginPointName()V
    .locals 1

    .line 4779
    invoke-static {}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief;->getDefaultInstance()Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief;

    move-result-object v0

    invoke-virtual {v0}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief;->getBeginPointName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief;->beginPointName_:Ljava/lang/String;

    return-void
.end method

.method private clearClusterNumber()V
    .locals 1

    const/4 v0, 0x0

    .line 5562
    iput v0, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief;->clusterNumber_:I

    return-void
.end method

.method private clearCreateTime()V
    .locals 2

    const-wide/16 v0, 0x0

    .line 5007
    iput-wide v0, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief;->createTime_:J

    return-void
.end method

.method private clearCustomStatusMsg()V
    .locals 1

    const/4 v0, 0x0

    .line 5860
    iput-object v0, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief;->customStatusMsg_:Landroid/car/hardware/xpu/XpuFNgpRouteMessage$CustomStatusMsg;

    return-void
.end method

.method private clearEgoInternalRoadState()V
    .locals 1

    const/4 v0, 0x0

    .line 6156
    iput v0, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief;->egoInternalRoadState_:I

    return-void
.end method

.method private clearEndLonlatPoint()V
    .locals 1

    const/4 v0, 0x0

    .line 4870
    iput-object v0, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief;->endLonlatPoint_:Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Point;

    return-void
.end method

.method private clearEndPointName()V
    .locals 1

    .line 4921
    invoke-static {}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief;->getDefaultInstance()Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief;

    move-result-object v0

    invoke-virtual {v0}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief;->getEndPointName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief;->endPointName_:Ljava/lang/String;

    return-void
.end method

.method private clearEndSlotShape()V
    .locals 1

    const/4 v0, 0x0

    .line 5979
    iput v0, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief;->endSlotShape_:I

    return-void
.end method

.method private clearFngpStatus()V
    .locals 1

    const/4 v0, 0x0

    .line 5168
    iput v0, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief;->fngpStatus_:I

    return-void
.end method

.method private clearInternalMapInfoList()V
    .locals 1

    .line 6481
    invoke-static {}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief;->emptyProtobufList()Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    move-result-object v0

    iput-object v0, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief;->internalMapInfoList_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    return-void
.end method

.method private clearInternalRouteTypeList()V
    .locals 1

    .line 6279
    invoke-static {}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief;->emptyIntList()Lcom/android/carsdk/protobuf/Internal$IntList;

    move-result-object v0

    iput-object v0, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief;->internalRouteTypeList_:Lcom/android/carsdk/protobuf/Internal$IntList;

    return-void
.end method

.method private clearIsCustom()V
    .locals 1

    const/4 v0, 0x0

    .line 5785
    iput v0, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief;->isCustom_:I

    return-void
.end method

.method private clearIsLock()V
    .locals 1

    const/4 v0, 0x0

    .line 5109
    iput-boolean v0, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief;->isLock_:Z

    return-void
.end method

.method private clearIsNaviEndMatch()V
    .locals 1

    const/4 v0, 0x0

    .line 5527
    iput v0, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief;->isNaviEndMatch_:I

    return-void
.end method

.method private clearIsRenamedRoute()V
    .locals 1

    const/4 v0, 0x0

    .line 5492
    iput v0, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief;->isRenamedRoute_:I

    return-void
.end method

.method private clearIsSelected()V
    .locals 1

    const/4 v0, 0x0

    .line 5042
    iput-boolean v0, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief;->isSelected_:Z

    return-void
.end method

.method private clearLastUseTime()V
    .locals 2

    const-wide/16 v0, 0x0

    .line 5077
    iput-wide v0, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief;->lastUseTime_:J

    return-void
.end method

.method private clearLearnStatus()V
    .locals 1

    const/4 v0, 0x0

    .line 5621
    iput v0, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief;->learnStatus_:I

    return-void
.end method

.method private clearName()V
    .locals 1

    .line 5312
    invoke-static {}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief;->getDefaultInstance()Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief;

    move-result-object v0

    invoke-virtual {v0}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief;->name_:Ljava/lang/String;

    return-void
.end method

.method private clearPathType()V
    .locals 1

    const/4 v0, 0x0

    .line 5227
    iput v0, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief;->pathType_:I

    return-void
.end method

.method private clearPredictTimeDuration()V
    .locals 2

    const-wide/16 v0, 0x0

    .line 4972
    iput-wide v0, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief;->predictTimeDuration_:J

    return-void
.end method

.method private clearPriority()V
    .locals 1

    const/4 v0, 0x0

    .line 5262
    iput v0, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief;->priority_:I

    return-void
.end method

.method private clearPriorityInfo()V
    .locals 1

    const/4 v0, 0x0

    .line 5457
    iput v0, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief;->priorityInfo_:I

    return-void
.end method

.method private clearRouteId()V
    .locals 2

    const-wide/16 v0, 0x0

    .line 4618
    iput-wide v0, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief;->routeId_:J

    return-void
.end method

.method private clearRouteScore()V
    .locals 2

    const-wide/16 v0, 0x0

    .line 5656
    iput-wide v0, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief;->routeScore_:D

    return-void
.end method

.method private clearRouteSelectedTimestamp()V
    .locals 2

    const-wide/16 v0, 0x0

    .line 6527
    iput-wide v0, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief;->routeSelectedTimestamp_:J

    return-void
.end method

.method private clearRouteShowStatus()V
    .locals 1

    const/4 v0, 0x0

    .line 5398
    iput v0, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief;->routeShowStatus_:I

    return-void
.end method

.method private clearSelectType()V
    .locals 1

    const/4 v0, 0x0

    .line 6038
    iput v0, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief;->selectType_:I

    return-void
.end method

.method private clearSlotPreferType()V
    .locals 1

    const/4 v0, 0x0

    .line 6097
    iput v0, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief;->slotPreferType_:I

    return-void
.end method

.method private clearStartEndClusterNumber()V
    .locals 1

    const/4 v0, 0x0

    .line 5750
    iput v0, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief;->startEndClusterNumber_:I

    return-void
.end method

.method private clearStartSlotShape()V
    .locals 1

    const/4 v0, 0x0

    .line 5920
    iput v0, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief;->startSlotShape_:I

    return-void
.end method

.method private clearTotalMileage()V
    .locals 1

    const/4 v0, 0x0

    .line 4653
    iput v0, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief;->totalMileage_:I

    return-void
.end method

.method private clearTotalOddMilage()V
    .locals 1

    const/4 v0, 0x0

    .line 5363
    iput v0, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief;->totalOddMilage_:I

    return-void
.end method

.method private clearUsingRawRouteType()V
    .locals 1

    const/4 v0, 0x0

    .line 5715
    iput v0, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief;->usingRawRouteType_:I

    return-void
.end method

.method private ensureInternalMapInfoListIsMutable()V
    .locals 1

    .line 6374
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief;->internalMapInfoList_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    invoke-interface {v0}, Lcom/android/carsdk/protobuf/Internal$ProtobufList;->isModifiable()Z

    move-result v0

    if-nez v0, :cond_0

    .line 6375
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief;->internalMapInfoList_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    .line 6376
    invoke-static {v0}, Lcom/android/carsdk/protobuf/GeneratedMessageLite;->mutableCopy(Lcom/android/carsdk/protobuf/Internal$ProtobufList;)Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    move-result-object v0

    iput-object v0, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief;->internalMapInfoList_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    :cond_0
    return-void
.end method

.method private ensureInternalRouteTypeListIsMutable()V
    .locals 1

    .line 6223
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief;->internalRouteTypeList_:Lcom/android/carsdk/protobuf/Internal$IntList;

    invoke-interface {v0}, Lcom/android/carsdk/protobuf/Internal$IntList;->isModifiable()Z

    move-result v0

    if-nez v0, :cond_0

    .line 6224
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief;->internalRouteTypeList_:Lcom/android/carsdk/protobuf/Internal$IntList;

    .line 6225
    invoke-static {v0}, Lcom/android/carsdk/protobuf/GeneratedMessageLite;->mutableCopy(Lcom/android/carsdk/protobuf/Internal$IntList;)Lcom/android/carsdk/protobuf/Internal$IntList;

    move-result-object v0

    iput-object v0, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief;->internalRouteTypeList_:Lcom/android/carsdk/protobuf/Internal$IntList;

    :cond_0
    return-void
.end method

.method public static getDefaultInstance()Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief;
    .locals 1

    .line 9085
    sget-object v0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief;

    return-object v0
.end method

.method private mergeBeginLonlatPoint(Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Point;)V
    .locals 2

    .line 4712
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief;->beginLonlatPoint_:Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Point;

    if-eqz v0, :cond_0

    .line 4713
    invoke-static {}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Point;->getDefaultInstance()Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Point;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 4714
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief;->beginLonlatPoint_:Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Point;

    .line 4715
    invoke-static {v0}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Point;->newBuilder(Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Point;)Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Point$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Point$Builder;->mergeFrom(Lcom/android/carsdk/protobuf/GeneratedMessageLite;)Lcom/android/carsdk/protobuf/GeneratedMessageLite$Builder;

    move-result-object p1

    check-cast p1, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Point$Builder;

    invoke-virtual {p1}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Point$Builder;->buildPartial()Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Point;

    iput-object p1, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief;->beginLonlatPoint_:Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Point;

    goto :goto_0

    .line 4717
    :cond_0
    iput-object p1, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief;->beginLonlatPoint_:Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Point;

    :goto_0
    return-void
.end method

.method private mergeCustomStatusMsg(Landroid/car/hardware/xpu/XpuFNgpRouteMessage$CustomStatusMsg;)V
    .locals 2

    .line 5844
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief;->customStatusMsg_:Landroid/car/hardware/xpu/XpuFNgpRouteMessage$CustomStatusMsg;

    if-eqz v0, :cond_0

    .line 5845
    invoke-static {}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$CustomStatusMsg;->getDefaultInstance()Landroid/car/hardware/xpu/XpuFNgpRouteMessage$CustomStatusMsg;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 5846
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief;->customStatusMsg_:Landroid/car/hardware/xpu/XpuFNgpRouteMessage$CustomStatusMsg;

    .line 5847
    invoke-static {v0}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$CustomStatusMsg;->newBuilder(Landroid/car/hardware/xpu/XpuFNgpRouteMessage$CustomStatusMsg;)Landroid/car/hardware/xpu/XpuFNgpRouteMessage$CustomStatusMsg$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$CustomStatusMsg$Builder;->mergeFrom(Lcom/android/carsdk/protobuf/GeneratedMessageLite;)Lcom/android/carsdk/protobuf/GeneratedMessageLite$Builder;

    move-result-object p1

    check-cast p1, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$CustomStatusMsg$Builder;

    invoke-virtual {p1}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$CustomStatusMsg$Builder;->buildPartial()Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$CustomStatusMsg;

    iput-object p1, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief;->customStatusMsg_:Landroid/car/hardware/xpu/XpuFNgpRouteMessage$CustomStatusMsg;

    goto :goto_0

    .line 5849
    :cond_0
    iput-object p1, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief;->customStatusMsg_:Landroid/car/hardware/xpu/XpuFNgpRouteMessage$CustomStatusMsg;

    :goto_0
    return-void
.end method

.method private mergeEndLonlatPoint(Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Point;)V
    .locals 2

    .line 4854
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief;->endLonlatPoint_:Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Point;

    if-eqz v0, :cond_0

    .line 4855
    invoke-static {}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Point;->getDefaultInstance()Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Point;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 4856
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief;->endLonlatPoint_:Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Point;

    .line 4857
    invoke-static {v0}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Point;->newBuilder(Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Point;)Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Point$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Point$Builder;->mergeFrom(Lcom/android/carsdk/protobuf/GeneratedMessageLite;)Lcom/android/carsdk/protobuf/GeneratedMessageLite$Builder;

    move-result-object p1

    check-cast p1, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Point$Builder;

    invoke-virtual {p1}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Point$Builder;->buildPartial()Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Point;

    iput-object p1, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief;->endLonlatPoint_:Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Point;

    goto :goto_0

    .line 4859
    :cond_0
    iput-object p1, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief;->endLonlatPoint_:Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Point;

    :goto_0
    return-void
.end method

.method public static newBuilder()Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief$Builder;
    .locals 1

    .line 6856
    sget-object v0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief;

    invoke-virtual {v0}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief;->toBuilder()Lcom/android/carsdk/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief$Builder;

    return-object v0
.end method

.method public static newBuilder(Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief;)Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief$Builder;
    .locals 1

    .line 6859
    sget-object v0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief;

    invoke-virtual {v0}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief;->toBuilder()Lcom/android/carsdk/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief$Builder;

    invoke-virtual {v0, p0}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief$Builder;->mergeFrom(Lcom/android/carsdk/protobuf/GeneratedMessageLite;)Lcom/android/carsdk/protobuf/GeneratedMessageLite$Builder;

    move-result-object p0

    check-cast p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief$Builder;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 6833
    sget-object v0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief;

    invoke-static {v0, p0}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief;->parseDelimitedFrom(Lcom/android/carsdk/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/android/carsdk/protobuf/ExtensionRegistryLite;)Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 6839
    sget-object v0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief;

    invoke-static {v0, p0, p1}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief;->parseDelimitedFrom(Lcom/android/carsdk/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/android/carsdk/protobuf/ExtensionRegistryLite;)Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief;

    return-object p0
.end method

.method public static parseFrom(Lcom/android/carsdk/protobuf/ByteString;)Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/carsdk/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 6797
    sget-object v0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief;

    invoke-static {v0, p0}, Lcom/android/carsdk/protobuf/GeneratedMessageLite;->parseFrom(Lcom/android/carsdk/protobuf/GeneratedMessageLite;Lcom/android/carsdk/protobuf/ByteString;)Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief;

    return-object p0
.end method

.method public static parseFrom(Lcom/android/carsdk/protobuf/ByteString;Lcom/android/carsdk/protobuf/ExtensionRegistryLite;)Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/carsdk/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 6804
    sget-object v0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief;

    invoke-static {v0, p0, p1}, Lcom/android/carsdk/protobuf/GeneratedMessageLite;->parseFrom(Lcom/android/carsdk/protobuf/GeneratedMessageLite;Lcom/android/carsdk/protobuf/ByteString;Lcom/android/carsdk/protobuf/ExtensionRegistryLite;)Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief;

    return-object p0
.end method

.method public static parseFrom(Lcom/android/carsdk/protobuf/CodedInputStream;)Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 6844
    sget-object v0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief;

    invoke-static {v0, p0}, Lcom/android/carsdk/protobuf/GeneratedMessageLite;->parseFrom(Lcom/android/carsdk/protobuf/GeneratedMessageLite;Lcom/android/carsdk/protobuf/CodedInputStream;)Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief;

    return-object p0
.end method

.method public static parseFrom(Lcom/android/carsdk/protobuf/CodedInputStream;Lcom/android/carsdk/protobuf/ExtensionRegistryLite;)Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 6851
    sget-object v0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief;

    invoke-static {v0, p0, p1}, Lcom/android/carsdk/protobuf/GeneratedMessageLite;->parseFrom(Lcom/android/carsdk/protobuf/GeneratedMessageLite;Lcom/android/carsdk/protobuf/CodedInputStream;Lcom/android/carsdk/protobuf/ExtensionRegistryLite;)Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 6821
    sget-object v0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief;

    invoke-static {v0, p0}, Lcom/android/carsdk/protobuf/GeneratedMessageLite;->parseFrom(Lcom/android/carsdk/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/android/carsdk/protobuf/ExtensionRegistryLite;)Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 6828
    sget-object v0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief;

    invoke-static {v0, p0, p1}, Lcom/android/carsdk/protobuf/GeneratedMessageLite;->parseFrom(Lcom/android/carsdk/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/android/carsdk/protobuf/ExtensionRegistryLite;)Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief;

    return-object p0
.end method

.method public static parseFrom([B)Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/carsdk/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 6809
    sget-object v0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief;

    invoke-static {v0, p0}, Lcom/android/carsdk/protobuf/GeneratedMessageLite;->parseFrom(Lcom/android/carsdk/protobuf/GeneratedMessageLite;[B)Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief;

    return-object p0
.end method

.method public static parseFrom([BLcom/android/carsdk/protobuf/ExtensionRegistryLite;)Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/carsdk/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 6816
    sget-object v0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief;

    invoke-static {v0, p0, p1}, Lcom/android/carsdk/protobuf/GeneratedMessageLite;->parseFrom(Lcom/android/carsdk/protobuf/GeneratedMessageLite;[BLcom/android/carsdk/protobuf/ExtensionRegistryLite;)Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief;

    return-object p0
.end method

.method public static parser()Lcom/android/carsdk/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/android/carsdk/protobuf/Parser<",
            "Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief;",
            ">;"
        }
    .end annotation

    .line 9091
    sget-object v0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief;

    invoke-virtual {v0}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief;->getParserForType()Lcom/android/carsdk/protobuf/Parser;

    move-result-object v0

    return-object v0
.end method

.method private removeInternalMapInfoList(I)V
    .locals 1

    .line 6491
    invoke-direct {p0}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief;->ensureInternalMapInfoListIsMutable()V

    .line 6492
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief;->internalMapInfoList_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1}, Lcom/android/carsdk/protobuf/Internal$ProtobufList;->remove(I)Ljava/lang/Object;

    return-void
.end method

.method private setBeginLonlatPoint(Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Point$Builder;)V
    .locals 0

    .line 4701
    invoke-virtual {p1}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Point$Builder;->build()Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Point;

    iput-object p1, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief;->beginLonlatPoint_:Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Point;

    return-void
.end method

.method private setBeginLonlatPoint(Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Point;)V
    .locals 0

    .line 4687
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4689
    iput-object p1, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief;->beginLonlatPoint_:Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Point;

    return-void
.end method

.method private setBeginPointName(Ljava/lang/String;)V
    .locals 0

    .line 4765
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4768
    iput-object p1, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief;->beginPointName_:Ljava/lang/String;

    return-void
.end method

.method private setBeginPointNameBytes(Lcom/android/carsdk/protobuf/ByteString;)V
    .locals 0

    .line 4791
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4793
    invoke-static {p1}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief;->checkByteStringIsUtf8(Lcom/android/carsdk/protobuf/ByteString;)V

    .line 4795
    invoke-virtual {p1}, Lcom/android/carsdk/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief;->beginPointName_:Ljava/lang/String;

    return-void
.end method

.method private setClusterNumber(I)V
    .locals 0

    .line 5551
    iput p1, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief;->clusterNumber_:I

    return-void
.end method

.method private setCreateTime(J)V
    .locals 0

    .line 4996
    iput-wide p1, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief;->createTime_:J

    return-void
.end method

.method private setCustomStatusMsg(Landroid/car/hardware/xpu/XpuFNgpRouteMessage$CustomStatusMsg$Builder;)V
    .locals 0

    .line 5833
    invoke-virtual {p1}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$CustomStatusMsg$Builder;->build()Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$CustomStatusMsg;

    iput-object p1, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief;->customStatusMsg_:Landroid/car/hardware/xpu/XpuFNgpRouteMessage$CustomStatusMsg;

    return-void
.end method

.method private setCustomStatusMsg(Landroid/car/hardware/xpu/XpuFNgpRouteMessage$CustomStatusMsg;)V
    .locals 0

    .line 5819
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 5821
    iput-object p1, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief;->customStatusMsg_:Landroid/car/hardware/xpu/XpuFNgpRouteMessage$CustomStatusMsg;

    return-void
.end method

.method private setEgoInternalRoadState(Landroid/car/hardware/xpu/XpuFNgpRouteMessage$EgoInternalRoadState;)V
    .locals 0

    .line 6142
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6145
    invoke-virtual {p1}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$EgoInternalRoadState;->getNumber()I

    move-result p1

    iput p1, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief;->egoInternalRoadState_:I

    return-void
.end method

.method private setEgoInternalRoadStateValue(I)V
    .locals 0

    .line 6131
    iput p1, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief;->egoInternalRoadState_:I

    return-void
.end method

.method private setEndLonlatPoint(Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Point$Builder;)V
    .locals 0

    .line 4843
    invoke-virtual {p1}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Point$Builder;->build()Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Point;

    iput-object p1, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief;->endLonlatPoint_:Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Point;

    return-void
.end method

.method private setEndLonlatPoint(Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Point;)V
    .locals 0

    .line 4829
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4831
    iput-object p1, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief;->endLonlatPoint_:Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Point;

    return-void
.end method

.method private setEndPointName(Ljava/lang/String;)V
    .locals 0

    .line 4907
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4910
    iput-object p1, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief;->endPointName_:Ljava/lang/String;

    return-void
.end method

.method private setEndPointNameBytes(Lcom/android/carsdk/protobuf/ByteString;)V
    .locals 0

    .line 4933
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4935
    invoke-static {p1}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief;->checkByteStringIsUtf8(Lcom/android/carsdk/protobuf/ByteString;)V

    .line 4937
    invoke-virtual {p1}, Lcom/android/carsdk/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief;->endPointName_:Ljava/lang/String;

    return-void
.end method

.method private setEndSlotShape(Landroid/car/hardware/xpu/XpuFNgpRouteMessage$SlotShapeType;)V
    .locals 0

    .line 5965
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 5968
    invoke-virtual {p1}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$SlotShapeType;->getNumber()I

    move-result p1

    iput p1, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief;->endSlotShape_:I

    return-void
.end method

.method private setEndSlotShapeValue(I)V
    .locals 0

    .line 5954
    iput p1, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief;->endSlotShape_:I

    return-void
.end method

.method private setFngpStatus(Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpStatus;)V
    .locals 0

    .line 5154
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 5157
    invoke-virtual {p1}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpStatus;->getNumber()I

    move-result p1

    iput p1, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief;->fngpStatus_:I

    return-void
.end method

.method private setFngpStatusValue(I)V
    .locals 0

    .line 5143
    iput p1, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief;->fngpStatus_:I

    return-void
.end method

.method private setInternalMapInfoList(ILandroid/car/hardware/xpu/XpuFNgpRouteMessage$InternalMapInfo$Builder;)V
    .locals 1

    .line 6404
    invoke-direct {p0}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief;->ensureInternalMapInfoListIsMutable()V

    .line 6405
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief;->internalMapInfoList_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    invoke-virtual {p2}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$InternalMapInfo$Builder;->build()Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object p2

    check-cast p2, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$InternalMapInfo;

    invoke-interface {v0, p1, p2}, Lcom/android/carsdk/protobuf/Internal$ProtobufList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private setInternalMapInfoList(ILandroid/car/hardware/xpu/XpuFNgpRouteMessage$InternalMapInfo;)V
    .locals 1

    .line 6390
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6392
    invoke-direct {p0}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief;->ensureInternalMapInfoListIsMutable()V

    .line 6393
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief;->internalMapInfoList_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1, p2}, Lcom/android/carsdk/protobuf/Internal$ProtobufList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private setInternalRouteTypeList(ILandroid/car/hardware/xpu/XpuFNgpRouteMessage$FngpInternalRouteType;)V
    .locals 1

    .line 6238
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6240
    invoke-direct {p0}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief;->ensureInternalRouteTypeListIsMutable()V

    .line 6241
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief;->internalRouteTypeList_:Lcom/android/carsdk/protobuf/Internal$IntList;

    invoke-virtual {p2}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FngpInternalRouteType;->getNumber()I

    move-result p2

    invoke-interface {v0, p1, p2}, Lcom/android/carsdk/protobuf/Internal$IntList;->setInt(II)I

    return-void
.end method

.method private setInternalRouteTypeListValue(II)V
    .locals 1

    .line 6290
    invoke-direct {p0}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief;->ensureInternalRouteTypeListIsMutable()V

    .line 6291
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief;->internalRouteTypeList_:Lcom/android/carsdk/protobuf/Internal$IntList;

    invoke-interface {v0, p1, p2}, Lcom/android/carsdk/protobuf/Internal$IntList;->setInt(II)I

    return-void
.end method

.method private setIsCustom(I)V
    .locals 0

    .line 5774
    iput p1, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief;->isCustom_:I

    return-void
.end method

.method private setIsLock(Z)V
    .locals 0

    .line 5099
    iput-boolean p1, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief;->isLock_:Z

    return-void
.end method

.method private setIsNaviEndMatch(I)V
    .locals 0

    .line 5516
    iput p1, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief;->isNaviEndMatch_:I

    return-void
.end method

.method private setIsRenamedRoute(I)V
    .locals 0

    .line 5481
    iput p1, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief;->isRenamedRoute_:I

    return-void
.end method

.method private setIsSelected(Z)V
    .locals 0

    .line 5031
    iput-boolean p1, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief;->isSelected_:Z

    return-void
.end method

.method private setLastUseTime(J)V
    .locals 0

    .line 5066
    iput-wide p1, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief;->lastUseTime_:J

    return-void
.end method

.method private setLearnStatus(Landroid/car/hardware/xpu/XpuFNgpRouteMessage$PathLearnStatus;)V
    .locals 0

    .line 5607
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 5610
    invoke-virtual {p1}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$PathLearnStatus;->getNumber()I

    move-result p1

    iput p1, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief;->learnStatus_:I

    return-void
.end method

.method private setLearnStatusValue(I)V
    .locals 0

    .line 5596
    iput p1, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief;->learnStatus_:I

    return-void
.end method

.method private setName(Ljava/lang/String;)V
    .locals 0

    .line 5298
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 5301
    iput-object p1, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief;->name_:Ljava/lang/String;

    return-void
.end method

.method private setNameBytes(Lcom/android/carsdk/protobuf/ByteString;)V
    .locals 0

    .line 5324
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 5326
    invoke-static {p1}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief;->checkByteStringIsUtf8(Lcom/android/carsdk/protobuf/ByteString;)V

    .line 5328
    invoke-virtual {p1}, Lcom/android/carsdk/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief;->name_:Ljava/lang/String;

    return-void
.end method

.method private setPathType(Landroid/car/hardware/xpu/XpuFNgpRouteMessage$PathType;)V
    .locals 0

    .line 5213
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 5216
    invoke-virtual {p1}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$PathType;->getNumber()I

    move-result p1

    iput p1, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief;->pathType_:I

    return-void
.end method

.method private setPathTypeValue(I)V
    .locals 0

    .line 5202
    iput p1, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief;->pathType_:I

    return-void
.end method

.method private setPredictTimeDuration(J)V
    .locals 0

    .line 4961
    iput-wide p1, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief;->predictTimeDuration_:J

    return-void
.end method

.method private setPriority(I)V
    .locals 0

    .line 5251
    iput p1, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief;->priority_:I

    return-void
.end method

.method private setPriorityInfo(Landroid/car/hardware/xpu/XpuFNgpRouteMessage$PriorityInfo;)V
    .locals 0

    .line 5443
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 5446
    invoke-virtual {p1}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$PriorityInfo;->getNumber()I

    move-result p1

    iput p1, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief;->priorityInfo_:I

    return-void
.end method

.method private setPriorityInfoValue(I)V
    .locals 0

    .line 5432
    iput p1, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief;->priorityInfo_:I

    return-void
.end method

.method private setRouteId(J)V
    .locals 0

    .line 4607
    iput-wide p1, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief;->routeId_:J

    return-void
.end method

.method private setRouteScore(D)V
    .locals 0

    .line 5645
    iput-wide p1, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief;->routeScore_:D

    return-void
.end method

.method private setRouteSelectedTimestamp(J)V
    .locals 0

    .line 6516
    iput-wide p1, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief;->routeSelectedTimestamp_:J

    return-void
.end method

.method private setRouteShowStatus(I)V
    .locals 0

    .line 5387
    iput p1, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief;->routeShowStatus_:I

    return-void
.end method

.method private setSelectType(Landroid/car/hardware/xpu/XpuFNgpRouteMessage$SelectType;)V
    .locals 0

    .line 6024
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6027
    invoke-virtual {p1}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$SelectType;->getNumber()I

    move-result p1

    iput p1, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief;->selectType_:I

    return-void
.end method

.method private setSelectTypeValue(I)V
    .locals 0

    .line 6013
    iput p1, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief;->selectType_:I

    return-void
.end method

.method private setSlotPreferType(Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FngpRouteSlotPreferType;)V
    .locals 0

    .line 6083
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6086
    invoke-virtual {p1}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FngpRouteSlotPreferType;->getNumber()I

    move-result p1

    iput p1, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief;->slotPreferType_:I

    return-void
.end method

.method private setSlotPreferTypeValue(I)V
    .locals 0

    .line 6072
    iput p1, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief;->slotPreferType_:I

    return-void
.end method

.method private setStartEndClusterNumber(I)V
    .locals 0

    .line 5739
    iput p1, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief;->startEndClusterNumber_:I

    return-void
.end method

.method private setStartSlotShape(Landroid/car/hardware/xpu/XpuFNgpRouteMessage$SlotShapeType;)V
    .locals 0

    .line 5906
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 5909
    invoke-virtual {p1}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$SlotShapeType;->getNumber()I

    move-result p1

    iput p1, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief;->startSlotShape_:I

    return-void
.end method

.method private setStartSlotShapeValue(I)V
    .locals 0

    .line 5895
    iput p1, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief;->startSlotShape_:I

    return-void
.end method

.method private setTotalMileage(I)V
    .locals 0

    .line 4642
    iput p1, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief;->totalMileage_:I

    return-void
.end method

.method private setTotalOddMilage(I)V
    .locals 0

    .line 5352
    iput p1, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief;->totalOddMilage_:I

    return-void
.end method

.method private setUsingRawRouteType(Landroid/car/hardware/xpu/XpuFNgpRouteMessage$UsingRawRouteType;)V
    .locals 0

    .line 5701
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 5704
    invoke-virtual {p1}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$UsingRawRouteType;->getNumber()I

    move-result p1

    iput p1, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief;->usingRawRouteType_:I

    return-void
.end method

.method private setUsingRawRouteTypeValue(I)V
    .locals 0

    .line 5690
    iput p1, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief;->usingRawRouteType_:I

    return-void
.end method


# virtual methods
.method protected final dynamicMethod(Lcom/android/carsdk/protobuf/GeneratedMessageLite$MethodToInvoke;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 12

    .line 8718
    sget-object v0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$1;->$SwitchMap$com$google$protobuf$GeneratedMessageLite$MethodToInvoke:[I

    invoke-virtual {p1}, Lcom/android/carsdk/protobuf/GeneratedMessageLite$MethodToInvoke;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x1

    packed-switch p1, :pswitch_data_0

    .line 9073
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1

    .line 9064
    :pswitch_0
    sget-object p1, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief;->PARSER:Lcom/android/carsdk/protobuf/Parser;

    if-nez p1, :cond_1

    const-class p1, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief;

    monitor-enter p1

    .line 9065
    :try_start_0
    sget-object p2, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief;->PARSER:Lcom/android/carsdk/protobuf/Parser;

    if-nez p2, :cond_0

    .line 9066
    new-instance p2, Lcom/android/carsdk/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;

    sget-object p3, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief;

    invoke-direct {p2, p3}, Lcom/android/carsdk/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;-><init>(Lcom/android/carsdk/protobuf/GeneratedMessageLite;)V

    sput-object p2, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief;->PARSER:Lcom/android/carsdk/protobuf/Parser;

    .line 9068
    :cond_0
    monitor-exit p1

    goto :goto_0

    :catchall_0
    move-exception p2

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p2

    .line 9070
    :cond_1
    :goto_0
    sget-object p1, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief;->PARSER:Lcom/android/carsdk/protobuf/Parser;

    return-object p1

    .line 8799
    :pswitch_1
    check-cast p2, Lcom/android/carsdk/protobuf/CodedInputStream;

    .line 8801
    check-cast p3, Lcom/android/carsdk/protobuf/ExtensionRegistryLite;

    :cond_2
    :goto_1
    if-nez v1, :cond_a

    .line 8806
    :try_start_1
    invoke-virtual {p2}, Lcom/android/carsdk/protobuf/CodedInputStream;->readTag()I

    move-result p1

    sparse-switch p1, :sswitch_data_0

    .line 8812
    invoke-virtual {p2, p1}, Lcom/android/carsdk/protobuf/CodedInputStream;->skipField(I)Z

    move-result p1

    goto/16 :goto_7

    .line 9046
    :sswitch_0
    invoke-virtual {p2}, Lcom/android/carsdk/protobuf/CodedInputStream;->readInt64()J

    move-result-wide v3

    iput-wide v3, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief;->routeSelectedTimestamp_:J

    goto :goto_1

    .line 9036
    :sswitch_1
    iget-object p1, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief;->internalMapInfoList_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    invoke-interface {p1}, Lcom/android/carsdk/protobuf/Internal$ProtobufList;->isModifiable()Z

    move-result p1

    if-nez p1, :cond_3

    .line 9037
    iget-object p1, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief;->internalMapInfoList_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    .line 9038
    invoke-static {p1}, Lcom/android/carsdk/protobuf/GeneratedMessageLite;->mutableCopy(Lcom/android/carsdk/protobuf/Internal$ProtobufList;)Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    move-result-object p1

    iput-object p1, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief;->internalMapInfoList_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    .line 9040
    :cond_3
    iget-object p1, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief;->internalMapInfoList_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    .line 9041
    invoke-static {}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$InternalMapInfo;->parser()Lcom/android/carsdk/protobuf/Parser;

    move-result-object v3

    invoke-virtual {p2, v3, p3}, Lcom/android/carsdk/protobuf/CodedInputStream;->readMessage(Lcom/android/carsdk/protobuf/Parser;Lcom/android/carsdk/protobuf/ExtensionRegistryLite;)Lcom/android/carsdk/protobuf/MessageLite;

    move-result-object v3

    check-cast v3, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$InternalMapInfo;

    .line 9040
    invoke-interface {p1, v3}, Lcom/android/carsdk/protobuf/Internal$ProtobufList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 9023
    :sswitch_2
    iget-object p1, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief;->internalRouteTypeList_:Lcom/android/carsdk/protobuf/Internal$IntList;

    invoke-interface {p1}, Lcom/android/carsdk/protobuf/Internal$IntList;->isModifiable()Z

    move-result p1

    if-nez p1, :cond_4

    .line 9024
    iget-object p1, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief;->internalRouteTypeList_:Lcom/android/carsdk/protobuf/Internal$IntList;

    .line 9025
    invoke-static {p1}, Lcom/android/carsdk/protobuf/GeneratedMessageLite;->mutableCopy(Lcom/android/carsdk/protobuf/Internal$IntList;)Lcom/android/carsdk/protobuf/Internal$IntList;

    move-result-object p1

    iput-object p1, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief;->internalRouteTypeList_:Lcom/android/carsdk/protobuf/Internal$IntList;

    .line 9027
    :cond_4
    invoke-virtual {p2}, Lcom/android/carsdk/protobuf/CodedInputStream;->readRawVarint32()I

    move-result p1

    .line 9028
    invoke-virtual {p2, p1}, Lcom/android/carsdk/protobuf/CodedInputStream;->pushLimit(I)I

    move-result p1

    .line 9029
    :goto_2
    invoke-virtual {p2}, Lcom/android/carsdk/protobuf/CodedInputStream;->getBytesUntilLimit()I

    move-result v3

    if-lez v3, :cond_5

    .line 9030
    iget-object v3, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief;->internalRouteTypeList_:Lcom/android/carsdk/protobuf/Internal$IntList;

    invoke-virtual {p2}, Lcom/android/carsdk/protobuf/CodedInputStream;->readEnum()I

    move-result v4

    invoke-interface {v3, v4}, Lcom/android/carsdk/protobuf/Internal$IntList;->addInt(I)V

    goto :goto_2

    .line 9032
    :cond_5
    invoke-virtual {p2, p1}, Lcom/android/carsdk/protobuf/CodedInputStream;->popLimit(I)V

    goto :goto_1

    .line 9015
    :sswitch_3
    iget-object p1, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief;->internalRouteTypeList_:Lcom/android/carsdk/protobuf/Internal$IntList;

    invoke-interface {p1}, Lcom/android/carsdk/protobuf/Internal$IntList;->isModifiable()Z

    move-result p1

    if-nez p1, :cond_6

    .line 9016
    iget-object p1, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief;->internalRouteTypeList_:Lcom/android/carsdk/protobuf/Internal$IntList;

    .line 9017
    invoke-static {p1}, Lcom/android/carsdk/protobuf/GeneratedMessageLite;->mutableCopy(Lcom/android/carsdk/protobuf/Internal$IntList;)Lcom/android/carsdk/protobuf/Internal$IntList;

    move-result-object p1

    iput-object p1, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief;->internalRouteTypeList_:Lcom/android/carsdk/protobuf/Internal$IntList;

    .line 9019
    :cond_6
    iget-object p1, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief;->internalRouteTypeList_:Lcom/android/carsdk/protobuf/Internal$IntList;

    invoke-virtual {p2}, Lcom/android/carsdk/protobuf/CodedInputStream;->readEnum()I

    move-result v3

    invoke-interface {p1, v3}, Lcom/android/carsdk/protobuf/Internal$IntList;->addInt(I)V

    goto :goto_1

    .line 9009
    :sswitch_4
    invoke-virtual {p2}, Lcom/android/carsdk/protobuf/CodedInputStream;->readEnum()I

    move-result p1

    .line 9011
    iput p1, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief;->egoInternalRoadState_:I

    goto/16 :goto_1

    .line 9003
    :sswitch_5
    invoke-virtual {p2}, Lcom/android/carsdk/protobuf/CodedInputStream;->readEnum()I

    move-result p1

    .line 9005
    iput p1, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief;->slotPreferType_:I

    goto/16 :goto_1

    .line 8997
    :sswitch_6
    invoke-virtual {p2}, Lcom/android/carsdk/protobuf/CodedInputStream;->readEnum()I

    move-result p1

    .line 8999
    iput p1, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief;->selectType_:I

    goto/16 :goto_1

    .line 8991
    :sswitch_7
    invoke-virtual {p2}, Lcom/android/carsdk/protobuf/CodedInputStream;->readEnum()I

    move-result p1

    .line 8993
    iput p1, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief;->endSlotShape_:I

    goto/16 :goto_1

    .line 8985
    :sswitch_8
    invoke-virtual {p2}, Lcom/android/carsdk/protobuf/CodedInputStream;->readEnum()I

    move-result p1

    .line 8987
    iput p1, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief;->startSlotShape_:I

    goto/16 :goto_1

    .line 8973
    :sswitch_9
    iget-object p1, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief;->customStatusMsg_:Landroid/car/hardware/xpu/XpuFNgpRouteMessage$CustomStatusMsg;

    if-eqz p1, :cond_7

    .line 8974
    invoke-virtual {p1}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$CustomStatusMsg;->toBuilder()Lcom/android/carsdk/protobuf/GeneratedMessageLite$Builder;

    move-result-object p1

    check-cast p1, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$CustomStatusMsg$Builder;

    goto :goto_3

    :cond_7
    move-object p1, v0

    .line 8976
    :goto_3
    invoke-static {}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$CustomStatusMsg;->parser()Lcom/android/carsdk/protobuf/Parser;

    move-result-object v3

    invoke-virtual {p2, v3, p3}, Lcom/android/carsdk/protobuf/CodedInputStream;->readMessage(Lcom/android/carsdk/protobuf/Parser;Lcom/android/carsdk/protobuf/ExtensionRegistryLite;)Lcom/android/carsdk/protobuf/MessageLite;

    move-result-object v3

    check-cast v3, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$CustomStatusMsg;

    iput-object v3, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief;->customStatusMsg_:Landroid/car/hardware/xpu/XpuFNgpRouteMessage$CustomStatusMsg;

    if-eqz p1, :cond_2

    .line 8978
    invoke-virtual {p1, v3}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$CustomStatusMsg$Builder;->mergeFrom(Lcom/android/carsdk/protobuf/GeneratedMessageLite;)Lcom/android/carsdk/protobuf/GeneratedMessageLite$Builder;

    .line 8979
    invoke-virtual {p1}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$CustomStatusMsg$Builder;->buildPartial()Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$CustomStatusMsg;

    iput-object p1, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief;->customStatusMsg_:Landroid/car/hardware/xpu/XpuFNgpRouteMessage$CustomStatusMsg;

    goto/16 :goto_1

    .line 8968
    :sswitch_a
    invoke-virtual {p2}, Lcom/android/carsdk/protobuf/CodedInputStream;->readInt32()I

    move-result p1

    iput p1, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief;->isCustom_:I

    goto/16 :goto_1

    .line 8963
    :sswitch_b
    invoke-virtual {p2}, Lcom/android/carsdk/protobuf/CodedInputStream;->readInt32()I

    move-result p1

    iput p1, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief;->startEndClusterNumber_:I

    goto/16 :goto_1

    .line 8956
    :sswitch_c
    invoke-virtual {p2}, Lcom/android/carsdk/protobuf/CodedInputStream;->readEnum()I

    move-result p1

    .line 8958
    iput p1, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief;->usingRawRouteType_:I

    goto/16 :goto_1

    .line 8952
    :sswitch_d
    invoke-virtual {p2}, Lcom/android/carsdk/protobuf/CodedInputStream;->readDouble()D

    move-result-wide v3

    iput-wide v3, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief;->routeScore_:D

    goto/16 :goto_1

    .line 8945
    :sswitch_e
    invoke-virtual {p2}, Lcom/android/carsdk/protobuf/CodedInputStream;->readEnum()I

    move-result p1

    .line 8947
    iput p1, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief;->learnStatus_:I

    goto/16 :goto_1

    .line 8941
    :sswitch_f
    invoke-virtual {p2}, Lcom/android/carsdk/protobuf/CodedInputStream;->readInt32()I

    move-result p1

    iput p1, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief;->clusterNumber_:I

    goto/16 :goto_1

    .line 8936
    :sswitch_10
    invoke-virtual {p2}, Lcom/android/carsdk/protobuf/CodedInputStream;->readInt32()I

    move-result p1

    iput p1, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief;->isNaviEndMatch_:I

    goto/16 :goto_1

    .line 8931
    :sswitch_11
    invoke-virtual {p2}, Lcom/android/carsdk/protobuf/CodedInputStream;->readInt32()I

    move-result p1

    iput p1, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief;->isRenamedRoute_:I

    goto/16 :goto_1

    .line 8924
    :sswitch_12
    invoke-virtual {p2}, Lcom/android/carsdk/protobuf/CodedInputStream;->readEnum()I

    move-result p1

    .line 8926
    iput p1, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief;->priorityInfo_:I

    goto/16 :goto_1

    .line 8920
    :sswitch_13
    invoke-virtual {p2}, Lcom/android/carsdk/protobuf/CodedInputStream;->readInt32()I

    move-result p1

    iput p1, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief;->routeShowStatus_:I

    goto/16 :goto_1

    .line 8915
    :sswitch_14
    invoke-virtual {p2}, Lcom/android/carsdk/protobuf/CodedInputStream;->readInt32()I

    move-result p1

    iput p1, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief;->totalOddMilage_:I

    goto/16 :goto_1

    .line 8908
    :sswitch_15
    invoke-virtual {p2}, Lcom/android/carsdk/protobuf/CodedInputStream;->readStringRequireUtf8()Ljava/lang/String;

    move-result-object p1

    .line 8910
    iput-object p1, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief;->name_:Ljava/lang/String;

    goto/16 :goto_1

    .line 8904
    :sswitch_16
    invoke-virtual {p2}, Lcom/android/carsdk/protobuf/CodedInputStream;->readInt32()I

    move-result p1

    iput p1, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief;->priority_:I

    goto/16 :goto_1

    .line 8897
    :sswitch_17
    invoke-virtual {p2}, Lcom/android/carsdk/protobuf/CodedInputStream;->readEnum()I

    move-result p1

    .line 8899
    iput p1, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief;->pathType_:I

    goto/16 :goto_1

    .line 8891
    :sswitch_18
    invoke-virtual {p2}, Lcom/android/carsdk/protobuf/CodedInputStream;->readEnum()I

    move-result p1

    .line 8893
    iput p1, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief;->fngpStatus_:I

    goto/16 :goto_1

    .line 8887
    :sswitch_19
    invoke-virtual {p2}, Lcom/android/carsdk/protobuf/CodedInputStream;->readBool()Z

    move-result p1

    iput-boolean p1, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief;->isLock_:Z

    goto/16 :goto_1

    .line 8882
    :sswitch_1a
    invoke-virtual {p2}, Lcom/android/carsdk/protobuf/CodedInputStream;->readInt64()J

    move-result-wide v3

    iput-wide v3, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief;->lastUseTime_:J

    goto/16 :goto_1

    .line 8877
    :sswitch_1b
    invoke-virtual {p2}, Lcom/android/carsdk/protobuf/CodedInputStream;->readBool()Z

    move-result p1

    iput-boolean p1, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief;->isSelected_:Z

    goto/16 :goto_1

    .line 8872
    :sswitch_1c
    invoke-virtual {p2}, Lcom/android/carsdk/protobuf/CodedInputStream;->readInt64()J

    move-result-wide v3

    iput-wide v3, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief;->createTime_:J

    goto/16 :goto_1

    .line 8867
    :sswitch_1d
    invoke-virtual {p2}, Lcom/android/carsdk/protobuf/CodedInputStream;->readInt64()J

    move-result-wide v3

    iput-wide v3, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief;->predictTimeDuration_:J

    goto/16 :goto_1

    .line 8860
    :sswitch_1e
    invoke-virtual {p2}, Lcom/android/carsdk/protobuf/CodedInputStream;->readStringRequireUtf8()Ljava/lang/String;

    move-result-object p1

    .line 8862
    iput-object p1, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief;->endPointName_:Ljava/lang/String;

    goto/16 :goto_1

    .line 8848
    :sswitch_1f
    iget-object p1, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief;->endLonlatPoint_:Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Point;

    if-eqz p1, :cond_8

    .line 8849
    invoke-virtual {p1}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Point;->toBuilder()Lcom/android/carsdk/protobuf/GeneratedMessageLite$Builder;

    move-result-object p1

    check-cast p1, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Point$Builder;

    goto :goto_4

    :cond_8
    move-object p1, v0

    .line 8851
    :goto_4
    invoke-static {}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Point;->parser()Lcom/android/carsdk/protobuf/Parser;

    move-result-object v3

    invoke-virtual {p2, v3, p3}, Lcom/android/carsdk/protobuf/CodedInputStream;->readMessage(Lcom/android/carsdk/protobuf/Parser;Lcom/android/carsdk/protobuf/ExtensionRegistryLite;)Lcom/android/carsdk/protobuf/MessageLite;

    move-result-object v3

    check-cast v3, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Point;

    iput-object v3, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief;->endLonlatPoint_:Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Point;

    if-eqz p1, :cond_2

    .line 8853
    invoke-virtual {p1, v3}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Point$Builder;->mergeFrom(Lcom/android/carsdk/protobuf/GeneratedMessageLite;)Lcom/android/carsdk/protobuf/GeneratedMessageLite$Builder;

    .line 8854
    invoke-virtual {p1}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Point$Builder;->buildPartial()Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Point;

    iput-object p1, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief;->endLonlatPoint_:Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Point;

    goto/16 :goto_1

    .line 8841
    :sswitch_20
    invoke-virtual {p2}, Lcom/android/carsdk/protobuf/CodedInputStream;->readStringRequireUtf8()Ljava/lang/String;

    move-result-object p1

    .line 8843
    iput-object p1, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief;->beginPointName_:Ljava/lang/String;

    goto/16 :goto_1

    .line 8829
    :sswitch_21
    iget-object p1, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief;->beginLonlatPoint_:Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Point;

    if-eqz p1, :cond_9

    .line 8830
    invoke-virtual {p1}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Point;->toBuilder()Lcom/android/carsdk/protobuf/GeneratedMessageLite$Builder;

    move-result-object p1

    check-cast p1, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Point$Builder;

    goto :goto_5

    :cond_9
    move-object p1, v0

    .line 8832
    :goto_5
    invoke-static {}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Point;->parser()Lcom/android/carsdk/protobuf/Parser;

    move-result-object v3

    invoke-virtual {p2, v3, p3}, Lcom/android/carsdk/protobuf/CodedInputStream;->readMessage(Lcom/android/carsdk/protobuf/Parser;Lcom/android/carsdk/protobuf/ExtensionRegistryLite;)Lcom/android/carsdk/protobuf/MessageLite;

    move-result-object v3

    check-cast v3, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Point;

    iput-object v3, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief;->beginLonlatPoint_:Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Point;

    if-eqz p1, :cond_2

    .line 8834
    invoke-virtual {p1, v3}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Point$Builder;->mergeFrom(Lcom/android/carsdk/protobuf/GeneratedMessageLite;)Lcom/android/carsdk/protobuf/GeneratedMessageLite$Builder;

    .line 8835
    invoke-virtual {p1}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Point$Builder;->buildPartial()Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Point;

    iput-object p1, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief;->beginLonlatPoint_:Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Point;

    goto/16 :goto_1

    .line 8824
    :sswitch_22
    invoke-virtual {p2}, Lcom/android/carsdk/protobuf/CodedInputStream;->readInt32()I

    move-result p1

    iput p1, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief;->totalMileage_:I

    goto/16 :goto_1

    .line 8819
    :sswitch_23
    invoke-virtual {p2}, Lcom/android/carsdk/protobuf/CodedInputStream;->readInt64()J

    move-result-wide v3

    iput-wide v3, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief;->routeId_:J
    :try_end_1
    .catch Lcom/android/carsdk/protobuf/InvalidProtocolBufferException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto/16 :goto_1

    :goto_6
    :sswitch_24
    move v1, v2

    goto/16 :goto_1

    :goto_7
    if-nez p1, :cond_2

    goto :goto_6

    :catchall_1
    move-exception p1

    goto :goto_8

    :catch_0
    move-exception p1

    .line 9054
    :try_start_2
    new-instance p2, Ljava/lang/RuntimeException;

    new-instance p3, Lcom/android/carsdk/protobuf/InvalidProtocolBufferException;

    .line 9056
    invoke-virtual {p1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p3, p1}, Lcom/android/carsdk/protobuf/InvalidProtocolBufferException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, p0}, Lcom/android/carsdk/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/android/carsdk/protobuf/MessageLite;)Lcom/android/carsdk/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p2

    :catch_1
    move-exception p1

    .line 9052
    new-instance p2, Ljava/lang/RuntimeException;

    invoke-virtual {p1, p0}, Lcom/android/carsdk/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/android/carsdk/protobuf/MessageLite;)Lcom/android/carsdk/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 9057
    :goto_8
    throw p1

    .line 9061
    :cond_a
    :pswitch_2
    sget-object p1, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief;

    return-object p1

    .line 8734
    :pswitch_3
    check-cast p2, Lcom/android/carsdk/protobuf/GeneratedMessageLite$Visitor;

    .line 8735
    check-cast p3, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief;

    .line 8736
    iget-wide v5, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief;->routeId_:J

    const-wide/16 v10, 0x0

    cmp-long p1, v5, v10

    if-eqz p1, :cond_b

    move v4, v2

    goto :goto_9

    :cond_b
    move v4, v1

    :goto_9
    iget-wide v8, p3, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief;->routeId_:J

    cmp-long p1, v8, v10

    if-eqz p1, :cond_c

    move v7, v2

    goto :goto_a

    :cond_c
    move v7, v1

    :goto_a
    move-object v3, p2

    invoke-interface/range {v3 .. v9}, Lcom/android/carsdk/protobuf/GeneratedMessageLite$Visitor;->visitLong(ZJZJ)J

    move-result-wide v3

    iput-wide v3, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief;->routeId_:J

    .line 8738
    iget p1, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief;->totalMileage_:I

    if-eqz p1, :cond_d

    move v0, v2

    goto :goto_b

    :cond_d
    move v0, v1

    :goto_b
    iget v3, p3, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief;->totalMileage_:I

    if-eqz v3, :cond_e

    move v4, v2

    goto :goto_c

    :cond_e
    move v4, v1

    :goto_c
    invoke-interface {p2, v0, p1, v4, v3}, Lcom/android/carsdk/protobuf/GeneratedMessageLite$Visitor;->visitInt(ZIZI)I

    move-result p1

    iput p1, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief;->totalMileage_:I

    .line 8740
    iget-object p1, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief;->beginLonlatPoint_:Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Point;

    iget-object v0, p3, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief;->beginLonlatPoint_:Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Point;

    invoke-interface {p2, p1, v0}, Lcom/android/carsdk/protobuf/GeneratedMessageLite$Visitor;->visitMessage(Lcom/android/carsdk/protobuf/MessageLite;Lcom/android/carsdk/protobuf/MessageLite;)Lcom/android/carsdk/protobuf/MessageLite;

    move-result-object p1

    check-cast p1, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Point;

    iput-object p1, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief;->beginLonlatPoint_:Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Point;

    .line 8741
    iget-object p1, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief;->beginPointName_:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result p1

    xor-int/2addr p1, v2

    iget-object v0, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief;->beginPointName_:Ljava/lang/String;

    iget-object v3, p3, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief;->beginPointName_:Ljava/lang/String;

    .line 8742
    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    xor-int/2addr v3, v2

    iget-object v4, p3, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief;->beginPointName_:Ljava/lang/String;

    .line 8741
    invoke-interface {p2, p1, v0, v3, v4}, Lcom/android/carsdk/protobuf/GeneratedMessageLite$Visitor;->visitString(ZLjava/lang/String;ZLjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief;->beginPointName_:Ljava/lang/String;

    .line 8743
    iget-object p1, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief;->endLonlatPoint_:Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Point;

    iget-object v0, p3, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief;->endLonlatPoint_:Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Point;

    invoke-interface {p2, p1, v0}, Lcom/android/carsdk/protobuf/GeneratedMessageLite$Visitor;->visitMessage(Lcom/android/carsdk/protobuf/MessageLite;Lcom/android/carsdk/protobuf/MessageLite;)Lcom/android/carsdk/protobuf/MessageLite;

    move-result-object p1

    check-cast p1, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Point;

    iput-object p1, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief;->endLonlatPoint_:Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Point;

    .line 8744
    iget-object p1, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief;->endPointName_:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result p1

    xor-int/2addr p1, v2

    iget-object v0, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief;->endPointName_:Ljava/lang/String;

    iget-object v3, p3, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief;->endPointName_:Ljava/lang/String;

    .line 8745
    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    xor-int/2addr v3, v2

    iget-object v4, p3, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief;->endPointName_:Ljava/lang/String;

    .line 8744
    invoke-interface {p2, p1, v0, v3, v4}, Lcom/android/carsdk/protobuf/GeneratedMessageLite$Visitor;->visitString(ZLjava/lang/String;ZLjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief;->endPointName_:Ljava/lang/String;

    .line 8746
    iget-wide v5, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief;->predictTimeDuration_:J

    cmp-long p1, v5, v10

    if-eqz p1, :cond_f

    move v4, v2

    goto :goto_d

    :cond_f
    move v4, v1

    :goto_d
    iget-wide v8, p3, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief;->predictTimeDuration_:J

    cmp-long p1, v8, v10

    if-eqz p1, :cond_10

    move v7, v2

    goto :goto_e

    :cond_10
    move v7, v1

    :goto_e
    move-object v3, p2

    invoke-interface/range {v3 .. v9}, Lcom/android/carsdk/protobuf/GeneratedMessageLite$Visitor;->visitLong(ZJZJ)J

    move-result-wide v3

    iput-wide v3, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief;->predictTimeDuration_:J

    .line 8748
    iget-wide v5, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief;->createTime_:J

    cmp-long p1, v5, v10

    if-eqz p1, :cond_11

    move v4, v2

    goto :goto_f

    :cond_11
    move v4, v1

    :goto_f
    iget-wide v8, p3, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief;->createTime_:J

    cmp-long p1, v8, v10

    if-eqz p1, :cond_12

    move v7, v2

    goto :goto_10

    :cond_12
    move v7, v1

    :goto_10
    move-object v3, p2

    invoke-interface/range {v3 .. v9}, Lcom/android/carsdk/protobuf/GeneratedMessageLite$Visitor;->visitLong(ZJZJ)J

    move-result-wide v3

    iput-wide v3, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief;->createTime_:J

    .line 8750
    iget-boolean p1, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief;->isSelected_:Z

    iget-boolean v0, p3, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief;->isSelected_:Z

    invoke-interface {p2, p1, p1, v0, v0}, Lcom/android/carsdk/protobuf/GeneratedMessageLite$Visitor;->visitBoolean(ZZZZ)Z

    move-result p1

    iput-boolean p1, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief;->isSelected_:Z

    .line 8752
    iget-wide v5, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief;->lastUseTime_:J

    cmp-long p1, v5, v10

    if-eqz p1, :cond_13

    move v4, v2

    goto :goto_11

    :cond_13
    move v4, v1

    :goto_11
    iget-wide v8, p3, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief;->lastUseTime_:J

    cmp-long p1, v8, v10

    if-eqz p1, :cond_14

    move v7, v2

    goto :goto_12

    :cond_14
    move v7, v1

    :goto_12
    move-object v3, p2

    invoke-interface/range {v3 .. v9}, Lcom/android/carsdk/protobuf/GeneratedMessageLite$Visitor;->visitLong(ZJZJ)J

    move-result-wide v3

    iput-wide v3, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief;->lastUseTime_:J

    .line 8754
    iget-boolean p1, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief;->isLock_:Z

    iget-boolean v0, p3, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief;->isLock_:Z

    invoke-interface {p2, p1, p1, v0, v0}, Lcom/android/carsdk/protobuf/GeneratedMessageLite$Visitor;->visitBoolean(ZZZZ)Z

    move-result p1

    iput-boolean p1, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief;->isLock_:Z

    .line 8756
    iget p1, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief;->fngpStatus_:I

    if-eqz p1, :cond_15

    move v0, v2

    goto :goto_13

    :cond_15
    move v0, v1

    :goto_13
    iget v3, p3, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief;->fngpStatus_:I

    if-eqz v3, :cond_16

    move v4, v2

    goto :goto_14

    :cond_16
    move v4, v1

    :goto_14
    invoke-interface {p2, v0, p1, v4, v3}, Lcom/android/carsdk/protobuf/GeneratedMessageLite$Visitor;->visitInt(ZIZI)I

    move-result p1

    iput p1, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief;->fngpStatus_:I

    .line 8757
    iget p1, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief;->pathType_:I

    if-eqz p1, :cond_17

    move v0, v2

    goto :goto_15

    :cond_17
    move v0, v1

    :goto_15
    iget v3, p3, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief;->pathType_:I

    if-eqz v3, :cond_18

    move v4, v2

    goto :goto_16

    :cond_18
    move v4, v1

    :goto_16
    invoke-interface {p2, v0, p1, v4, v3}, Lcom/android/carsdk/protobuf/GeneratedMessageLite$Visitor;->visitInt(ZIZI)I

    move-result p1

    iput p1, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief;->pathType_:I

    .line 8758
    iget p1, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief;->priority_:I

    if-eqz p1, :cond_19

    move v0, v2

    goto :goto_17

    :cond_19
    move v0, v1

    :goto_17
    iget v3, p3, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief;->priority_:I

    if-eqz v3, :cond_1a

    move v4, v2

    goto :goto_18

    :cond_1a
    move v4, v1

    :goto_18
    invoke-interface {p2, v0, p1, v4, v3}, Lcom/android/carsdk/protobuf/GeneratedMessageLite$Visitor;->visitInt(ZIZI)I

    move-result p1

    iput p1, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief;->priority_:I

    .line 8760
    iget-object p1, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief;->name_:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result p1

    xor-int/2addr p1, v2

    iget-object v0, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief;->name_:Ljava/lang/String;

    iget-object v3, p3, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief;->name_:Ljava/lang/String;

    .line 8761
    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    xor-int/2addr v3, v2

    iget-object v4, p3, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief;->name_:Ljava/lang/String;

    .line 8760
    invoke-interface {p2, p1, v0, v3, v4}, Lcom/android/carsdk/protobuf/GeneratedMessageLite$Visitor;->visitString(ZLjava/lang/String;ZLjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief;->name_:Ljava/lang/String;

    .line 8762
    iget p1, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief;->totalOddMilage_:I

    if-eqz p1, :cond_1b

    move v0, v2

    goto :goto_19

    :cond_1b
    move v0, v1

    :goto_19
    iget v3, p3, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief;->totalOddMilage_:I

    if-eqz v3, :cond_1c

    move v4, v2

    goto :goto_1a

    :cond_1c
    move v4, v1

    :goto_1a
    invoke-interface {p2, v0, p1, v4, v3}, Lcom/android/carsdk/protobuf/GeneratedMessageLite$Visitor;->visitInt(ZIZI)I

    move-result p1

    iput p1, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief;->totalOddMilage_:I

    .line 8764
    iget p1, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief;->routeShowStatus_:I

    if-eqz p1, :cond_1d

    move v0, v2

    goto :goto_1b

    :cond_1d
    move v0, v1

    :goto_1b
    iget v3, p3, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief;->routeShowStatus_:I

    if-eqz v3, :cond_1e

    move v4, v2

    goto :goto_1c

    :cond_1e
    move v4, v1

    :goto_1c
    invoke-interface {p2, v0, p1, v4, v3}, Lcom/android/carsdk/protobuf/GeneratedMessageLite$Visitor;->visitInt(ZIZI)I

    move-result p1

    iput p1, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief;->routeShowStatus_:I

    .line 8766
    iget p1, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief;->priorityInfo_:I

    if-eqz p1, :cond_1f

    move v0, v2

    goto :goto_1d

    :cond_1f
    move v0, v1

    :goto_1d
    iget v3, p3, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief;->priorityInfo_:I

    if-eqz v3, :cond_20

    move v4, v2

    goto :goto_1e

    :cond_20
    move v4, v1

    :goto_1e
    invoke-interface {p2, v0, p1, v4, v3}, Lcom/android/carsdk/protobuf/GeneratedMessageLite$Visitor;->visitInt(ZIZI)I

    move-result p1

    iput p1, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief;->priorityInfo_:I

    .line 8767
    iget p1, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief;->isRenamedRoute_:I

    if-eqz p1, :cond_21

    move v0, v2

    goto :goto_1f

    :cond_21
    move v0, v1

    :goto_1f
    iget v3, p3, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief;->isRenamedRoute_:I

    if-eqz v3, :cond_22

    move v4, v2

    goto :goto_20

    :cond_22
    move v4, v1

    :goto_20
    invoke-interface {p2, v0, p1, v4, v3}, Lcom/android/carsdk/protobuf/GeneratedMessageLite$Visitor;->visitInt(ZIZI)I

    move-result p1

    iput p1, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief;->isRenamedRoute_:I

    .line 8769
    iget p1, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief;->isNaviEndMatch_:I

    if-eqz p1, :cond_23

    move v0, v2

    goto :goto_21

    :cond_23
    move v0, v1

    :goto_21
    iget v3, p3, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief;->isNaviEndMatch_:I

    if-eqz v3, :cond_24

    move v4, v2

    goto :goto_22

    :cond_24
    move v4, v1

    :goto_22
    invoke-interface {p2, v0, p1, v4, v3}, Lcom/android/carsdk/protobuf/GeneratedMessageLite$Visitor;->visitInt(ZIZI)I

    move-result p1

    iput p1, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief;->isNaviEndMatch_:I

    .line 8771
    iget p1, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief;->clusterNumber_:I

    if-eqz p1, :cond_25

    move v0, v2

    goto :goto_23

    :cond_25
    move v0, v1

    :goto_23
    iget v3, p3, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief;->clusterNumber_:I

    if-eqz v3, :cond_26

    move v4, v2

    goto :goto_24

    :cond_26
    move v4, v1

    :goto_24
    invoke-interface {p2, v0, p1, v4, v3}, Lcom/android/carsdk/protobuf/GeneratedMessageLite$Visitor;->visitInt(ZIZI)I

    move-result p1

    iput p1, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief;->clusterNumber_:I

    .line 8773
    iget p1, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief;->learnStatus_:I

    if-eqz p1, :cond_27

    move v0, v2

    goto :goto_25

    :cond_27
    move v0, v1

    :goto_25
    iget v3, p3, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief;->learnStatus_:I

    if-eqz v3, :cond_28

    move v4, v2

    goto :goto_26

    :cond_28
    move v4, v1

    :goto_26
    invoke-interface {p2, v0, p1, v4, v3}, Lcom/android/carsdk/protobuf/GeneratedMessageLite$Visitor;->visitInt(ZIZI)I

    move-result p1

    iput p1, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief;->learnStatus_:I

    .line 8774
    iget-wide v5, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief;->routeScore_:D

    const-wide/16 v3, 0x0

    cmpl-double p1, v5, v3

    if-eqz p1, :cond_29

    move p1, v2

    goto :goto_27

    :cond_29
    move p1, v1

    :goto_27
    iget-wide v8, p3, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief;->routeScore_:D

    cmpl-double v0, v8, v3

    if-eqz v0, :cond_2a

    move v7, v2

    goto :goto_28

    :cond_2a
    move v7, v1

    :goto_28
    move-object v3, p2

    move v4, p1

    invoke-interface/range {v3 .. v9}, Lcom/android/carsdk/protobuf/GeneratedMessageLite$Visitor;->visitDouble(ZDZD)D

    move-result-wide v3

    iput-wide v3, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief;->routeScore_:D

    .line 8776
    iget p1, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief;->usingRawRouteType_:I

    if-eqz p1, :cond_2b

    move v0, v2

    goto :goto_29

    :cond_2b
    move v0, v1

    :goto_29
    iget v3, p3, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief;->usingRawRouteType_:I

    if-eqz v3, :cond_2c

    move v4, v2

    goto :goto_2a

    :cond_2c
    move v4, v1

    :goto_2a
    invoke-interface {p2, v0, p1, v4, v3}, Lcom/android/carsdk/protobuf/GeneratedMessageLite$Visitor;->visitInt(ZIZI)I

    move-result p1

    iput p1, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief;->usingRawRouteType_:I

    .line 8777
    iget p1, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief;->startEndClusterNumber_:I

    if-eqz p1, :cond_2d

    move v0, v2

    goto :goto_2b

    :cond_2d
    move v0, v1

    :goto_2b
    iget v3, p3, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief;->startEndClusterNumber_:I

    if-eqz v3, :cond_2e

    move v4, v2

    goto :goto_2c

    :cond_2e
    move v4, v1

    :goto_2c
    invoke-interface {p2, v0, p1, v4, v3}, Lcom/android/carsdk/protobuf/GeneratedMessageLite$Visitor;->visitInt(ZIZI)I

    move-result p1

    iput p1, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief;->startEndClusterNumber_:I

    .line 8779
    iget p1, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief;->isCustom_:I

    if-eqz p1, :cond_2f

    move v0, v2

    goto :goto_2d

    :cond_2f
    move v0, v1

    :goto_2d
    iget v3, p3, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief;->isCustom_:I

    if-eqz v3, :cond_30

    move v4, v2

    goto :goto_2e

    :cond_30
    move v4, v1

    :goto_2e
    invoke-interface {p2, v0, p1, v4, v3}, Lcom/android/carsdk/protobuf/GeneratedMessageLite$Visitor;->visitInt(ZIZI)I

    move-result p1

    iput p1, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief;->isCustom_:I

    .line 8781
    iget-object p1, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief;->customStatusMsg_:Landroid/car/hardware/xpu/XpuFNgpRouteMessage$CustomStatusMsg;

    iget-object v0, p3, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief;->customStatusMsg_:Landroid/car/hardware/xpu/XpuFNgpRouteMessage$CustomStatusMsg;

    invoke-interface {p2, p1, v0}, Lcom/android/carsdk/protobuf/GeneratedMessageLite$Visitor;->visitMessage(Lcom/android/carsdk/protobuf/MessageLite;Lcom/android/carsdk/protobuf/MessageLite;)Lcom/android/carsdk/protobuf/MessageLite;

    move-result-object p1

    check-cast p1, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$CustomStatusMsg;

    iput-object p1, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief;->customStatusMsg_:Landroid/car/hardware/xpu/XpuFNgpRouteMessage$CustomStatusMsg;

    .line 8782
    iget p1, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief;->startSlotShape_:I

    if-eqz p1, :cond_31

    move v0, v2

    goto :goto_2f

    :cond_31
    move v0, v1

    :goto_2f
    iget v3, p3, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief;->startSlotShape_:I

    if-eqz v3, :cond_32

    move v4, v2

    goto :goto_30

    :cond_32
    move v4, v1

    :goto_30
    invoke-interface {p2, v0, p1, v4, v3}, Lcom/android/carsdk/protobuf/GeneratedMessageLite$Visitor;->visitInt(ZIZI)I

    move-result p1

    iput p1, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief;->startSlotShape_:I

    .line 8783
    iget p1, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief;->endSlotShape_:I

    if-eqz p1, :cond_33

    move v0, v2

    goto :goto_31

    :cond_33
    move v0, v1

    :goto_31
    iget v3, p3, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief;->endSlotShape_:I

    if-eqz v3, :cond_34

    move v4, v2

    goto :goto_32

    :cond_34
    move v4, v1

    :goto_32
    invoke-interface {p2, v0, p1, v4, v3}, Lcom/android/carsdk/protobuf/GeneratedMessageLite$Visitor;->visitInt(ZIZI)I

    move-result p1

    iput p1, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief;->endSlotShape_:I

    .line 8784
    iget p1, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief;->selectType_:I

    if-eqz p1, :cond_35

    move v0, v2

    goto :goto_33

    :cond_35
    move v0, v1

    :goto_33
    iget v3, p3, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief;->selectType_:I

    if-eqz v3, :cond_36

    move v4, v2

    goto :goto_34

    :cond_36
    move v4, v1

    :goto_34
    invoke-interface {p2, v0, p1, v4, v3}, Lcom/android/carsdk/protobuf/GeneratedMessageLite$Visitor;->visitInt(ZIZI)I

    move-result p1

    iput p1, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief;->selectType_:I

    .line 8785
    iget p1, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief;->slotPreferType_:I

    if-eqz p1, :cond_37

    move v0, v2

    goto :goto_35

    :cond_37
    move v0, v1

    :goto_35
    iget v3, p3, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief;->slotPreferType_:I

    if-eqz v3, :cond_38

    move v4, v2

    goto :goto_36

    :cond_38
    move v4, v1

    :goto_36
    invoke-interface {p2, v0, p1, v4, v3}, Lcom/android/carsdk/protobuf/GeneratedMessageLite$Visitor;->visitInt(ZIZI)I

    move-result p1

    iput p1, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief;->slotPreferType_:I

    .line 8786
    iget p1, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief;->egoInternalRoadState_:I

    if-eqz p1, :cond_39

    move v0, v2

    goto :goto_37

    :cond_39
    move v0, v1

    :goto_37
    iget v3, p3, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief;->egoInternalRoadState_:I

    if-eqz v3, :cond_3a

    move v4, v2

    goto :goto_38

    :cond_3a
    move v4, v1

    :goto_38
    invoke-interface {p2, v0, p1, v4, v3}, Lcom/android/carsdk/protobuf/GeneratedMessageLite$Visitor;->visitInt(ZIZI)I

    move-result p1

    iput p1, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief;->egoInternalRoadState_:I

    .line 8787
    iget-object p1, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief;->internalRouteTypeList_:Lcom/android/carsdk/protobuf/Internal$IntList;

    iget-object v0, p3, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief;->internalRouteTypeList_:Lcom/android/carsdk/protobuf/Internal$IntList;

    invoke-interface {p2, p1, v0}, Lcom/android/carsdk/protobuf/GeneratedMessageLite$Visitor;->visitIntList(Lcom/android/carsdk/protobuf/Internal$IntList;Lcom/android/carsdk/protobuf/Internal$IntList;)Lcom/android/carsdk/protobuf/Internal$IntList;

    move-result-object p1

    iput-object p1, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief;->internalRouteTypeList_:Lcom/android/carsdk/protobuf/Internal$IntList;

    .line 8788
    iget-object p1, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief;->internalMapInfoList_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    iget-object v0, p3, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief;->internalMapInfoList_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    invoke-interface {p2, p1, v0}, Lcom/android/carsdk/protobuf/GeneratedMessageLite$Visitor;->visitList(Lcom/android/carsdk/protobuf/Internal$ProtobufList;Lcom/android/carsdk/protobuf/Internal$ProtobufList;)Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    move-result-object p1

    iput-object p1, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief;->internalMapInfoList_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    .line 8789
    iget-wide v3, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief;->routeSelectedTimestamp_:J

    cmp-long p1, v3, v10

    if-eqz p1, :cond_3b

    move p1, v2

    goto :goto_39

    :cond_3b
    move p1, v1

    :goto_39
    iget-wide v5, p3, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief;->routeSelectedTimestamp_:J

    cmp-long v0, v5, v10

    if-eqz v0, :cond_3c

    move v7, v2

    goto :goto_3a

    :cond_3c
    move v7, v1

    :goto_3a
    move-object v0, p2

    move v1, p1

    move-wide v2, v3

    move v4, v7

    invoke-interface/range {v0 .. v6}, Lcom/android/carsdk/protobuf/GeneratedMessageLite$Visitor;->visitLong(ZJZJ)J

    move-result-wide v0

    iput-wide v0, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief;->routeSelectedTimestamp_:J

    .line 8791
    sget-object p1, Lcom/android/carsdk/protobuf/GeneratedMessageLite$MergeFromVisitor;->INSTANCE:Lcom/android/carsdk/protobuf/GeneratedMessageLite$MergeFromVisitor;

    if-ne p2, p1, :cond_3d

    .line 8793
    iget p1, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief;->bitField0_:I

    iget p2, p3, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief;->bitField0_:I

    or-int/2addr p1, p2

    iput p1, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief;->bitField0_:I

    .line 8794
    iget p1, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief;->bitField1_:I

    iget p2, p3, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief;->bitField1_:I

    or-int/2addr p1, p2

    iput p1, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief;->bitField1_:I

    :cond_3d
    return-object p0

    .line 8731
    :pswitch_4
    new-instance p1, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief$Builder;

    invoke-direct {p1, v0}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief$Builder;-><init>(Landroid/car/hardware/xpu/XpuFNgpRouteMessage$1;)V

    return-object p1

    .line 8726
    :pswitch_5
    iget-object p1, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief;->internalRouteTypeList_:Lcom/android/carsdk/protobuf/Internal$IntList;

    invoke-interface {p1}, Lcom/android/carsdk/protobuf/Internal$IntList;->makeImmutable()V

    .line 8727
    iget-object p1, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief;->internalMapInfoList_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    invoke-interface {p1}, Lcom/android/carsdk/protobuf/Internal$ProtobufList;->makeImmutable()V

    return-object v0

    .line 8723
    :pswitch_6
    sget-object p1, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief;

    return-object p1

    .line 8720
    :pswitch_7
    new-instance p1, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief;

    invoke-direct {p1}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief;-><init>()V

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
        0x0 -> :sswitch_24
        0x8 -> :sswitch_23
        0x10 -> :sswitch_22
        0x1a -> :sswitch_21
        0x22 -> :sswitch_20
        0x2a -> :sswitch_1f
        0x32 -> :sswitch_1e
        0x38 -> :sswitch_1d
        0x40 -> :sswitch_1c
        0x48 -> :sswitch_1b
        0x50 -> :sswitch_1a
        0x58 -> :sswitch_19
        0x60 -> :sswitch_18
        0x68 -> :sswitch_17
        0x70 -> :sswitch_16
        0x7a -> :sswitch_15
        0x80 -> :sswitch_14
        0x88 -> :sswitch_13
        0x90 -> :sswitch_12
        0x98 -> :sswitch_11
        0xa0 -> :sswitch_10
        0xa8 -> :sswitch_f
        0xb0 -> :sswitch_e
        0xb9 -> :sswitch_d
        0xc0 -> :sswitch_c
        0xc8 -> :sswitch_b
        0xd0 -> :sswitch_a
        0xda -> :sswitch_9
        0xe0 -> :sswitch_8
        0xe8 -> :sswitch_7
        0xf0 -> :sswitch_6
        0xf8 -> :sswitch_5
        0x100 -> :sswitch_4
        0x108 -> :sswitch_3
        0x10a -> :sswitch_2
        0x112 -> :sswitch_1
        0x118 -> :sswitch_0
    .end sparse-switch
.end method

.method public getBeginLonlatPoint()Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Point;
    .locals 1

    .line 4676
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief;->beginLonlatPoint_:Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Point;

    if-nez v0, :cond_0

    invoke-static {}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Point;->getDefaultInstance()Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Point;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public getBeginPointName()Ljava/lang/String;
    .locals 1

    .line 4742
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief;->beginPointName_:Ljava/lang/String;

    return-object v0
.end method

.method public getBeginPointNameBytes()Lcom/android/carsdk/protobuf/ByteString;
    .locals 1

    .line 4753
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief;->beginPointName_:Ljava/lang/String;

    invoke-static {v0}, Lcom/android/carsdk/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/android/carsdk/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getClusterNumber()I
    .locals 1

    .line 5540
    iget v0, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief;->clusterNumber_:I

    return v0
.end method

.method public getCreateTime()J
    .locals 2

    .line 4985
    iget-wide v0, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief;->createTime_:J

    return-wide v0
.end method

.method public getCustomStatusMsg()Landroid/car/hardware/xpu/XpuFNgpRouteMessage$CustomStatusMsg;
    .locals 1

    .line 5808
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief;->customStatusMsg_:Landroid/car/hardware/xpu/XpuFNgpRouteMessage$CustomStatusMsg;

    if-nez v0, :cond_0

    invoke-static {}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$CustomStatusMsg;->getDefaultInstance()Landroid/car/hardware/xpu/XpuFNgpRouteMessage$CustomStatusMsg;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public getEgoInternalRoadState()Landroid/car/hardware/xpu/XpuFNgpRouteMessage$EgoInternalRoadState;
    .locals 1

    .line 6120
    iget v0, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief;->egoInternalRoadState_:I

    invoke-static {v0}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$EgoInternalRoadState;->forNumber(I)Landroid/car/hardware/xpu/XpuFNgpRouteMessage$EgoInternalRoadState;

    move-result-object v0

    if-nez v0, :cond_0

    .line 6121
    sget-object v0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$EgoInternalRoadState;->UNRECOGNIZED:Landroid/car/hardware/xpu/XpuFNgpRouteMessage$EgoInternalRoadState;

    :cond_0
    return-object v0
.end method

.method public getEgoInternalRoadStateValue()I
    .locals 1

    .line 6110
    iget v0, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief;->egoInternalRoadState_:I

    return v0
.end method

.method public getEndLonlatPoint()Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Point;
    .locals 1

    .line 4818
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief;->endLonlatPoint_:Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Point;

    if-nez v0, :cond_0

    invoke-static {}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Point;->getDefaultInstance()Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Point;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public getEndPointName()Ljava/lang/String;
    .locals 1

    .line 4884
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief;->endPointName_:Ljava/lang/String;

    return-object v0
.end method

.method public getEndPointNameBytes()Lcom/android/carsdk/protobuf/ByteString;
    .locals 1

    .line 4895
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief;->endPointName_:Ljava/lang/String;

    invoke-static {v0}, Lcom/android/carsdk/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/android/carsdk/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getEndSlotShape()Landroid/car/hardware/xpu/XpuFNgpRouteMessage$SlotShapeType;
    .locals 1

    .line 5943
    iget v0, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief;->endSlotShape_:I

    invoke-static {v0}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$SlotShapeType;->forNumber(I)Landroid/car/hardware/xpu/XpuFNgpRouteMessage$SlotShapeType;

    move-result-object v0

    if-nez v0, :cond_0

    .line 5944
    sget-object v0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$SlotShapeType;->UNRECOGNIZED:Landroid/car/hardware/xpu/XpuFNgpRouteMessage$SlotShapeType;

    :cond_0
    return-object v0
.end method

.method public getEndSlotShapeValue()I
    .locals 1

    .line 5933
    iget v0, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief;->endSlotShape_:I

    return v0
.end method

.method public getFngpStatus()Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpStatus;
    .locals 1

    .line 5132
    iget v0, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief;->fngpStatus_:I

    invoke-static {v0}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpStatus;->forNumber(I)Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpStatus;

    move-result-object v0

    if-nez v0, :cond_0

    .line 5133
    sget-object v0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpStatus;->UNRECOGNIZED:Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpStatus;

    :cond_0
    return-object v0
.end method

.method public getFngpStatusValue()I
    .locals 1

    .line 5122
    iget v0, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief;->fngpStatus_:I

    return v0
.end method

.method public getInternalMapInfoList(I)Landroid/car/hardware/xpu/XpuFNgpRouteMessage$InternalMapInfo;
    .locals 1

    .line 6360
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief;->internalMapInfoList_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1}, Lcom/android/carsdk/protobuf/Internal$ProtobufList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$InternalMapInfo;

    return-object p1
.end method

.method public getInternalMapInfoListCount()I
    .locals 1

    .line 6350
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief;->internalMapInfoList_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    invoke-interface {v0}, Lcom/android/carsdk/protobuf/Internal$ProtobufList;->size()I

    move-result v0

    return v0
.end method

.method public getInternalMapInfoListList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/car/hardware/xpu/XpuFNgpRouteMessage$InternalMapInfo;",
            ">;"
        }
    .end annotation

    .line 6329
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief;->internalMapInfoList_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    return-object v0
.end method

.method public getInternalMapInfoListOrBuilder(I)Landroid/car/hardware/xpu/XpuFNgpRouteMessage$InternalMapInfoOrBuilder;
    .locals 1

    .line 6371
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief;->internalMapInfoList_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1}, Lcom/android/carsdk/protobuf/Internal$ProtobufList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$InternalMapInfoOrBuilder;

    return-object p1
.end method

.method public getInternalMapInfoListOrBuilderList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "+",
            "Landroid/car/hardware/xpu/XpuFNgpRouteMessage$InternalMapInfoOrBuilder;",
            ">;"
        }
    .end annotation

    .line 6340
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief;->internalMapInfoList_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    return-object v0
.end method

.method public getInternalRouteTypeList(I)Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FngpInternalRouteType;
    .locals 2

    .line 6199
    sget-object v0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief;->internalRouteTypeList_converter_:Lcom/android/carsdk/protobuf/Internal$ListAdapter$Converter;

    iget-object v1, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief;->internalRouteTypeList_:Lcom/android/carsdk/protobuf/Internal$IntList;

    invoke-interface {v1, p1}, Lcom/android/carsdk/protobuf/Internal$IntList;->getInt(I)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/android/carsdk/protobuf/Internal$ListAdapter$Converter;->convert(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FngpInternalRouteType;

    return-object p1
.end method

.method public getInternalRouteTypeListCount()I
    .locals 1

    .line 6189
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief;->internalRouteTypeList_:Lcom/android/carsdk/protobuf/Internal$IntList;

    invoke-interface {v0}, Lcom/android/carsdk/protobuf/Internal$IntList;->size()I

    move-result v0

    return v0
.end method

.method public getInternalRouteTypeListList()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FngpInternalRouteType;",
            ">;"
        }
    .end annotation

    .line 6178
    new-instance v0, Lcom/android/carsdk/protobuf/Internal$ListAdapter;

    iget-object v1, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief;->internalRouteTypeList_:Lcom/android/carsdk/protobuf/Internal$IntList;

    sget-object v2, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief;->internalRouteTypeList_converter_:Lcom/android/carsdk/protobuf/Internal$ListAdapter$Converter;

    invoke-direct {v0, v1, v2}, Lcom/android/carsdk/protobuf/Internal$ListAdapter;-><init>(Ljava/util/List;Lcom/android/carsdk/protobuf/Internal$ListAdapter$Converter;)V

    return-object v0
.end method

.method public getInternalRouteTypeListValue(I)I
    .locals 1

    .line 6220
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief;->internalRouteTypeList_:Lcom/android/carsdk/protobuf/Internal$IntList;

    invoke-interface {v0, p1}, Lcom/android/carsdk/protobuf/Internal$IntList;->getInt(I)I

    move-result p1

    return p1
.end method

.method public getInternalRouteTypeListValueList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 6210
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief;->internalRouteTypeList_:Lcom/android/carsdk/protobuf/Internal$IntList;

    return-object v0
.end method

.method public getIsCustom()I
    .locals 1

    .line 5763
    iget v0, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief;->isCustom_:I

    return v0
.end method

.method public getIsLock()Z
    .locals 1

    .line 5089
    iget-boolean v0, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief;->isLock_:Z

    return v0
.end method

.method public getIsNaviEndMatch()I
    .locals 1

    .line 5505
    iget v0, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief;->isNaviEndMatch_:I

    return v0
.end method

.method public getIsRenamedRoute()I
    .locals 1

    .line 5470
    iget v0, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief;->isRenamedRoute_:I

    return v0
.end method

.method public getIsSelected()Z
    .locals 1

    .line 5020
    iget-boolean v0, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief;->isSelected_:Z

    return v0
.end method

.method public getLastUseTime()J
    .locals 2

    .line 5055
    iget-wide v0, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief;->lastUseTime_:J

    return-wide v0
.end method

.method public getLearnStatus()Landroid/car/hardware/xpu/XpuFNgpRouteMessage$PathLearnStatus;
    .locals 1

    .line 5585
    iget v0, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief;->learnStatus_:I

    invoke-static {v0}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$PathLearnStatus;->forNumber(I)Landroid/car/hardware/xpu/XpuFNgpRouteMessage$PathLearnStatus;

    move-result-object v0

    if-nez v0, :cond_0

    .line 5586
    sget-object v0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$PathLearnStatus;->UNRECOGNIZED:Landroid/car/hardware/xpu/XpuFNgpRouteMessage$PathLearnStatus;

    :cond_0
    return-object v0
.end method

.method public getLearnStatusValue()I
    .locals 1

    .line 5575
    iget v0, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief;->learnStatus_:I

    return v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 5275
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief;->name_:Ljava/lang/String;

    return-object v0
.end method

.method public getNameBytes()Lcom/android/carsdk/protobuf/ByteString;
    .locals 1

    .line 5286
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief;->name_:Ljava/lang/String;

    invoke-static {v0}, Lcom/android/carsdk/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/android/carsdk/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getPathType()Landroid/car/hardware/xpu/XpuFNgpRouteMessage$PathType;
    .locals 1

    .line 5191
    iget v0, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief;->pathType_:I

    invoke-static {v0}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$PathType;->forNumber(I)Landroid/car/hardware/xpu/XpuFNgpRouteMessage$PathType;

    move-result-object v0

    if-nez v0, :cond_0

    .line 5192
    sget-object v0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$PathType;->UNRECOGNIZED:Landroid/car/hardware/xpu/XpuFNgpRouteMessage$PathType;

    :cond_0
    return-object v0
.end method

.method public getPathTypeValue()I
    .locals 1

    .line 5181
    iget v0, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief;->pathType_:I

    return v0
.end method

.method public getPredictTimeDuration()J
    .locals 2

    .line 4950
    iget-wide v0, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief;->predictTimeDuration_:J

    return-wide v0
.end method

.method public getPriority()I
    .locals 1

    .line 5240
    iget v0, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief;->priority_:I

    return v0
.end method

.method public getPriorityInfo()Landroid/car/hardware/xpu/XpuFNgpRouteMessage$PriorityInfo;
    .locals 1

    .line 5421
    iget v0, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief;->priorityInfo_:I

    invoke-static {v0}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$PriorityInfo;->forNumber(I)Landroid/car/hardware/xpu/XpuFNgpRouteMessage$PriorityInfo;

    move-result-object v0

    if-nez v0, :cond_0

    .line 5422
    sget-object v0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$PriorityInfo;->UNRECOGNIZED:Landroid/car/hardware/xpu/XpuFNgpRouteMessage$PriorityInfo;

    :cond_0
    return-object v0
.end method

.method public getPriorityInfoValue()I
    .locals 1

    .line 5411
    iget v0, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief;->priorityInfo_:I

    return v0
.end method

.method public getRouteId()J
    .locals 2

    .line 4596
    iget-wide v0, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief;->routeId_:J

    return-wide v0
.end method

.method public getRouteScore()D
    .locals 2

    .line 5634
    iget-wide v0, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief;->routeScore_:D

    return-wide v0
.end method

.method public getRouteSelectedTimestamp()J
    .locals 2

    .line 6505
    iget-wide v0, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief;->routeSelectedTimestamp_:J

    return-wide v0
.end method

.method public getRouteShowStatus()I
    .locals 1

    .line 5376
    iget v0, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief;->routeShowStatus_:I

    return v0
.end method

.method public getSelectType()Landroid/car/hardware/xpu/XpuFNgpRouteMessage$SelectType;
    .locals 1

    .line 6002
    iget v0, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief;->selectType_:I

    invoke-static {v0}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$SelectType;->forNumber(I)Landroid/car/hardware/xpu/XpuFNgpRouteMessage$SelectType;

    move-result-object v0

    if-nez v0, :cond_0

    .line 6003
    sget-object v0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$SelectType;->UNRECOGNIZED:Landroid/car/hardware/xpu/XpuFNgpRouteMessage$SelectType;

    :cond_0
    return-object v0
.end method

.method public getSelectTypeValue()I
    .locals 1

    .line 5992
    iget v0, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief;->selectType_:I

    return v0
.end method

.method public getSerializedSize()I
    .locals 10

    .line 6641
    iget v0, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief;->memoizedSerializedSize:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    return v0

    .line 6645
    :cond_0
    iget-wide v0, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief;->routeId_:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    const/4 v5, 0x0

    if-eqz v4, :cond_1

    const/4 v4, 0x1

    .line 6647
    invoke-static {v4, v0, v1}, Lcom/android/carsdk/protobuf/CodedOutputStream;->computeInt64Size(IJ)I

    move-result v0

    add-int/2addr v0, v5

    goto :goto_0

    :cond_1
    move v0, v5

    .line 6649
    :goto_0
    iget v1, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief;->totalMileage_:I

    const/4 v4, 0x2

    if-eqz v1, :cond_2

    .line 6651
    invoke-static {v4, v1}, Lcom/android/carsdk/protobuf/CodedOutputStream;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 6653
    :cond_2
    iget-object v1, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief;->beginLonlatPoint_:Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Point;

    if-eqz v1, :cond_3

    const/4 v1, 0x3

    .line 6655
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief;->getBeginLonlatPoint()Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Point;

    move-result-object v6

    invoke-static {v1, v6}, Lcom/android/carsdk/protobuf/CodedOutputStream;->computeMessageSize(ILcom/android/carsdk/protobuf/MessageLite;)I

    move-result v1

    add-int/2addr v0, v1

    .line 6657
    :cond_3
    iget-object v1, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief;->beginPointName_:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_4

    const/4 v1, 0x4

    .line 6659
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief;->getBeginPointName()Ljava/lang/String;

    move-result-object v6

    invoke-static {v1, v6}, Lcom/android/carsdk/protobuf/CodedOutputStream;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 6661
    :cond_4
    iget-object v1, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief;->endLonlatPoint_:Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Point;

    if-eqz v1, :cond_5

    const/4 v1, 0x5

    .line 6663
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief;->getEndLonlatPoint()Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Point;

    move-result-object v6

    invoke-static {v1, v6}, Lcom/android/carsdk/protobuf/CodedOutputStream;->computeMessageSize(ILcom/android/carsdk/protobuf/MessageLite;)I

    move-result v1

    add-int/2addr v0, v1

    .line 6665
    :cond_5
    iget-object v1, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief;->endPointName_:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_6

    const/4 v1, 0x6

    .line 6667
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief;->getEndPointName()Ljava/lang/String;

    move-result-object v6

    invoke-static {v1, v6}, Lcom/android/carsdk/protobuf/CodedOutputStream;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 6669
    :cond_6
    iget-wide v6, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief;->predictTimeDuration_:J

    cmp-long v1, v6, v2

    if-eqz v1, :cond_7

    const/4 v1, 0x7

    .line 6671
    invoke-static {v1, v6, v7}, Lcom/android/carsdk/protobuf/CodedOutputStream;->computeInt64Size(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 6673
    :cond_7
    iget-wide v6, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief;->createTime_:J

    cmp-long v1, v6, v2

    if-eqz v1, :cond_8

    const/16 v1, 0x8

    .line 6675
    invoke-static {v1, v6, v7}, Lcom/android/carsdk/protobuf/CodedOutputStream;->computeInt64Size(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 6677
    :cond_8
    iget-boolean v1, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief;->isSelected_:Z

    if-eqz v1, :cond_9

    const/16 v6, 0x9

    .line 6679
    invoke-static {v6, v1}, Lcom/android/carsdk/protobuf/CodedOutputStream;->computeBoolSize(IZ)I

    move-result v1

    add-int/2addr v0, v1

    .line 6681
    :cond_9
    iget-wide v6, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief;->lastUseTime_:J

    cmp-long v1, v6, v2

    if-eqz v1, :cond_a

    const/16 v1, 0xa

    .line 6683
    invoke-static {v1, v6, v7}, Lcom/android/carsdk/protobuf/CodedOutputStream;->computeInt64Size(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 6685
    :cond_a
    iget-boolean v1, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief;->isLock_:Z

    if-eqz v1, :cond_b

    const/16 v6, 0xb

    .line 6687
    invoke-static {v6, v1}, Lcom/android/carsdk/protobuf/CodedOutputStream;->computeBoolSize(IZ)I

    move-result v1

    add-int/2addr v0, v1

    .line 6689
    :cond_b
    iget v1, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief;->fngpStatus_:I

    sget-object v6, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpStatus;->FNGP_STATUS_NOT_AVAILABLE:Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpStatus;

    invoke-virtual {v6}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpStatus;->getNumber()I

    move-result v6

    if-eq v1, v6, :cond_c

    const/16 v1, 0xc

    .line 6690
    iget v6, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief;->fngpStatus_:I

    .line 6691
    invoke-static {v1, v6}, Lcom/android/carsdk/protobuf/CodedOutputStream;->computeEnumSize(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 6693
    :cond_c
    iget v1, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief;->pathType_:I

    sget-object v6, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$PathType;->RESERVED:Landroid/car/hardware/xpu/XpuFNgpRouteMessage$PathType;

    invoke-virtual {v6}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$PathType;->getNumber()I

    move-result v6

    if-eq v1, v6, :cond_d

    const/16 v1, 0xd

    .line 6694
    iget v6, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief;->pathType_:I

    .line 6695
    invoke-static {v1, v6}, Lcom/android/carsdk/protobuf/CodedOutputStream;->computeEnumSize(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 6697
    :cond_d
    iget v1, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief;->priority_:I

    if-eqz v1, :cond_e

    const/16 v6, 0xe

    .line 6699
    invoke-static {v6, v1}, Lcom/android/carsdk/protobuf/CodedOutputStream;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 6701
    :cond_e
    iget-object v1, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief;->name_:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_f

    const/16 v1, 0xf

    .line 6703
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-static {v1, v6}, Lcom/android/carsdk/protobuf/CodedOutputStream;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 6705
    :cond_f
    iget v1, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief;->totalOddMilage_:I

    if-eqz v1, :cond_10

    const/16 v6, 0x10

    .line 6707
    invoke-static {v6, v1}, Lcom/android/carsdk/protobuf/CodedOutputStream;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 6709
    :cond_10
    iget v1, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief;->routeShowStatus_:I

    if-eqz v1, :cond_11

    const/16 v6, 0x11

    .line 6711
    invoke-static {v6, v1}, Lcom/android/carsdk/protobuf/CodedOutputStream;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 6713
    :cond_11
    iget v1, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief;->priorityInfo_:I

    sget-object v6, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$PriorityInfo;->FNGP_NO_LABEL:Landroid/car/hardware/xpu/XpuFNgpRouteMessage$PriorityInfo;

    invoke-virtual {v6}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$PriorityInfo;->getNumber()I

    move-result v6

    if-eq v1, v6, :cond_12

    const/16 v1, 0x12

    .line 6714
    iget v6, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief;->priorityInfo_:I

    .line 6715
    invoke-static {v1, v6}, Lcom/android/carsdk/protobuf/CodedOutputStream;->computeEnumSize(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 6717
    :cond_12
    iget v1, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief;->isRenamedRoute_:I

    if-eqz v1, :cond_13

    const/16 v6, 0x13

    .line 6719
    invoke-static {v6, v1}, Lcom/android/carsdk/protobuf/CodedOutputStream;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 6721
    :cond_13
    iget v1, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief;->isNaviEndMatch_:I

    if-eqz v1, :cond_14

    const/16 v6, 0x14

    .line 6723
    invoke-static {v6, v1}, Lcom/android/carsdk/protobuf/CodedOutputStream;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 6725
    :cond_14
    iget v1, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief;->clusterNumber_:I

    if-eqz v1, :cond_15

    const/16 v6, 0x15

    .line 6727
    invoke-static {v6, v1}, Lcom/android/carsdk/protobuf/CodedOutputStream;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 6729
    :cond_15
    iget v1, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief;->learnStatus_:I

    sget-object v6, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$PathLearnStatus;->kPathLearnDefault:Landroid/car/hardware/xpu/XpuFNgpRouteMessage$PathLearnStatus;

    invoke-virtual {v6}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$PathLearnStatus;->getNumber()I

    move-result v6

    if-eq v1, v6, :cond_16

    const/16 v1, 0x16

    .line 6730
    iget v6, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief;->learnStatus_:I

    .line 6731
    invoke-static {v1, v6}, Lcom/android/carsdk/protobuf/CodedOutputStream;->computeEnumSize(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 6733
    :cond_16
    iget-wide v6, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief;->routeScore_:D

    const-wide/16 v8, 0x0

    cmpl-double v1, v6, v8

    if-eqz v1, :cond_17

    const/16 v1, 0x17

    .line 6735
    invoke-static {v1, v6, v7}, Lcom/android/carsdk/protobuf/CodedOutputStream;->computeDoubleSize(ID)I

    move-result v1

    add-int/2addr v0, v1

    .line 6737
    :cond_17
    iget v1, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief;->usingRawRouteType_:I

    sget-object v6, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$UsingRawRouteType;->kRouteRaw:Landroid/car/hardware/xpu/XpuFNgpRouteMessage$UsingRawRouteType;

    invoke-virtual {v6}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$UsingRawRouteType;->getNumber()I

    move-result v6

    if-eq v1, v6, :cond_18

    const/16 v1, 0x18

    .line 6738
    iget v6, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief;->usingRawRouteType_:I

    .line 6739
    invoke-static {v1, v6}, Lcom/android/carsdk/protobuf/CodedOutputStream;->computeEnumSize(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 6741
    :cond_18
    iget v1, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief;->startEndClusterNumber_:I

    if-eqz v1, :cond_19

    const/16 v6, 0x19

    .line 6743
    invoke-static {v6, v1}, Lcom/android/carsdk/protobuf/CodedOutputStream;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 6745
    :cond_19
    iget v1, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief;->isCustom_:I

    if-eqz v1, :cond_1a

    const/16 v6, 0x1a

    .line 6747
    invoke-static {v6, v1}, Lcom/android/carsdk/protobuf/CodedOutputStream;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 6749
    :cond_1a
    iget-object v1, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief;->customStatusMsg_:Landroid/car/hardware/xpu/XpuFNgpRouteMessage$CustomStatusMsg;

    if-eqz v1, :cond_1b

    const/16 v1, 0x1b

    .line 6751
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief;->getCustomStatusMsg()Landroid/car/hardware/xpu/XpuFNgpRouteMessage$CustomStatusMsg;

    move-result-object v6

    invoke-static {v1, v6}, Lcom/android/carsdk/protobuf/CodedOutputStream;->computeMessageSize(ILcom/android/carsdk/protobuf/MessageLite;)I

    move-result v1

    add-int/2addr v0, v1

    .line 6753
    :cond_1b
    iget v1, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief;->startSlotShape_:I

    sget-object v6, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$SlotShapeType;->Unknown:Landroid/car/hardware/xpu/XpuFNgpRouteMessage$SlotShapeType;

    invoke-virtual {v6}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$SlotShapeType;->getNumber()I

    move-result v6

    if-eq v1, v6, :cond_1c

    const/16 v1, 0x1c

    .line 6754
    iget v6, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief;->startSlotShape_:I

    .line 6755
    invoke-static {v1, v6}, Lcom/android/carsdk/protobuf/CodedOutputStream;->computeEnumSize(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 6757
    :cond_1c
    iget v1, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief;->endSlotShape_:I

    sget-object v6, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$SlotShapeType;->Unknown:Landroid/car/hardware/xpu/XpuFNgpRouteMessage$SlotShapeType;

    invoke-virtual {v6}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$SlotShapeType;->getNumber()I

    move-result v6

    if-eq v1, v6, :cond_1d

    const/16 v1, 0x1d

    .line 6758
    iget v6, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief;->endSlotShape_:I

    .line 6759
    invoke-static {v1, v6}, Lcom/android/carsdk/protobuf/CodedOutputStream;->computeEnumSize(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 6761
    :cond_1d
    iget v1, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief;->selectType_:I

    sget-object v6, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$SelectType;->NOT_AUTO_SELECTED:Landroid/car/hardware/xpu/XpuFNgpRouteMessage$SelectType;

    invoke-virtual {v6}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$SelectType;->getNumber()I

    move-result v6

    if-eq v1, v6, :cond_1e

    const/16 v1, 0x1e

    .line 6762
    iget v6, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief;->selectType_:I

    .line 6763
    invoke-static {v1, v6}, Lcom/android/carsdk/protobuf/CodedOutputStream;->computeEnumSize(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 6765
    :cond_1e
    iget v1, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief;->slotPreferType_:I

    sget-object v6, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FngpRouteSlotPreferType;->DEFAULT_PARKING_PREFER:Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FngpRouteSlotPreferType;

    invoke-virtual {v6}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FngpRouteSlotPreferType;->getNumber()I

    move-result v6

    if-eq v1, v6, :cond_1f

    const/16 v1, 0x1f

    .line 6766
    iget v6, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief;->slotPreferType_:I

    .line 6767
    invoke-static {v1, v6}, Lcom/android/carsdk/protobuf/CodedOutputStream;->computeEnumSize(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 6769
    :cond_1f
    iget v1, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief;->egoInternalRoadState_:I

    sget-object v6, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$EgoInternalRoadState;->NOT_IN_INTERNAL_ROAD:Landroid/car/hardware/xpu/XpuFNgpRouteMessage$EgoInternalRoadState;

    invoke-virtual {v6}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$EgoInternalRoadState;->getNumber()I

    move-result v6

    if-eq v1, v6, :cond_20

    const/16 v1, 0x20

    .line 6770
    iget v6, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief;->egoInternalRoadState_:I

    .line 6771
    invoke-static {v1, v6}, Lcom/android/carsdk/protobuf/CodedOutputStream;->computeEnumSize(II)I

    move-result v1

    add-int/2addr v0, v1

    :cond_20
    move v1, v5

    move v6, v1

    .line 6775
    :goto_1
    iget-object v7, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief;->internalRouteTypeList_:Lcom/android/carsdk/protobuf/Internal$IntList;

    invoke-interface {v7}, Lcom/android/carsdk/protobuf/Internal$IntList;->size()I

    move-result v7

    if-ge v1, v7, :cond_21

    .line 6776
    iget-object v7, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief;->internalRouteTypeList_:Lcom/android/carsdk/protobuf/Internal$IntList;

    .line 6777
    invoke-interface {v7, v1}, Lcom/android/carsdk/protobuf/Internal$IntList;->getInt(I)I

    move-result v7

    invoke-static {v7}, Lcom/android/carsdk/protobuf/CodedOutputStream;->computeEnumSizeNoTag(I)I

    move-result v7

    add-int/2addr v6, v7

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_21
    add-int/2addr v0, v6

    .line 6780
    iget-object v1, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief;->internalRouteTypeList_:Lcom/android/carsdk/protobuf/Internal$IntList;

    invoke-interface {v1}, Lcom/android/carsdk/protobuf/Internal$IntList;->size()I

    move-result v1

    mul-int/2addr v1, v4

    add-int/2addr v0, v1

    .line 6782
    :goto_2
    iget-object v1, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief;->internalMapInfoList_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    invoke-interface {v1}, Lcom/android/carsdk/protobuf/Internal$ProtobufList;->size()I

    move-result v1

    if-ge v5, v1, :cond_22

    const/16 v1, 0x22

    .line 6783
    iget-object v4, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief;->internalMapInfoList_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    .line 6784
    invoke-interface {v4, v5}, Lcom/android/carsdk/protobuf/Internal$ProtobufList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/carsdk/protobuf/MessageLite;

    invoke-static {v1, v4}, Lcom/android/carsdk/protobuf/CodedOutputStream;->computeMessageSize(ILcom/android/carsdk/protobuf/MessageLite;)I

    move-result v1

    add-int/2addr v0, v1

    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 6786
    :cond_22
    iget-wide v4, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief;->routeSelectedTimestamp_:J

    cmp-long v1, v4, v2

    if-eqz v1, :cond_23

    const/16 v1, 0x23

    .line 6788
    invoke-static {v1, v4, v5}, Lcom/android/carsdk/protobuf/CodedOutputStream;->computeInt64Size(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 6790
    :cond_23
    iput v0, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief;->memoizedSerializedSize:I

    return v0
.end method

.method public getSlotPreferType()Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FngpRouteSlotPreferType;
    .locals 1

    .line 6061
    iget v0, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief;->slotPreferType_:I

    invoke-static {v0}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FngpRouteSlotPreferType;->forNumber(I)Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FngpRouteSlotPreferType;

    move-result-object v0

    if-nez v0, :cond_0

    .line 6062
    sget-object v0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FngpRouteSlotPreferType;->UNRECOGNIZED:Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FngpRouteSlotPreferType;

    :cond_0
    return-object v0
.end method

.method public getSlotPreferTypeValue()I
    .locals 1

    .line 6051
    iget v0, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief;->slotPreferType_:I

    return v0
.end method

.method public getStartEndClusterNumber()I
    .locals 1

    .line 5728
    iget v0, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief;->startEndClusterNumber_:I

    return v0
.end method

.method public getStartSlotShape()Landroid/car/hardware/xpu/XpuFNgpRouteMessage$SlotShapeType;
    .locals 1

    .line 5884
    iget v0, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief;->startSlotShape_:I

    invoke-static {v0}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$SlotShapeType;->forNumber(I)Landroid/car/hardware/xpu/XpuFNgpRouteMessage$SlotShapeType;

    move-result-object v0

    if-nez v0, :cond_0

    .line 5885
    sget-object v0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$SlotShapeType;->UNRECOGNIZED:Landroid/car/hardware/xpu/XpuFNgpRouteMessage$SlotShapeType;

    :cond_0
    return-object v0
.end method

.method public getStartSlotShapeValue()I
    .locals 1

    .line 5874
    iget v0, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief;->startSlotShape_:I

    return v0
.end method

.method public getTotalMileage()I
    .locals 1

    .line 4631
    iget v0, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief;->totalMileage_:I

    return v0
.end method

.method public getTotalOddMilage()I
    .locals 1

    .line 5341
    iget v0, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief;->totalOddMilage_:I

    return v0
.end method

.method public getUsingRawRouteType()Landroid/car/hardware/xpu/XpuFNgpRouteMessage$UsingRawRouteType;
    .locals 1

    .line 5679
    iget v0, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief;->usingRawRouteType_:I

    invoke-static {v0}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$UsingRawRouteType;->forNumber(I)Landroid/car/hardware/xpu/XpuFNgpRouteMessage$UsingRawRouteType;

    move-result-object v0

    if-nez v0, :cond_0

    .line 5680
    sget-object v0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$UsingRawRouteType;->UNRECOGNIZED:Landroid/car/hardware/xpu/XpuFNgpRouteMessage$UsingRawRouteType;

    :cond_0
    return-object v0
.end method

.method public getUsingRawRouteTypeValue()I
    .locals 1

    .line 5669
    iget v0, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief;->usingRawRouteType_:I

    return v0
.end method

.method public hasBeginLonlatPoint()Z
    .locals 1

    .line 4666
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief;->beginLonlatPoint_:Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Point;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasCustomStatusMsg()Z
    .locals 1

    .line 5798
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief;->customStatusMsg_:Landroid/car/hardware/xpu/XpuFNgpRouteMessage$CustomStatusMsg;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasEndLonlatPoint()Z
    .locals 1

    .line 4808
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief;->endLonlatPoint_:Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Point;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public writeTo(Lcom/android/carsdk/protobuf/CodedOutputStream;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 6532
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief;->getSerializedSize()I

    .line 6533
    iget-wide v0, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief;->routeId_:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    const/4 v4, 0x1

    .line 6534
    invoke-virtual {p1, v4, v0, v1}, Lcom/android/carsdk/protobuf/CodedOutputStream;->writeInt64(IJ)V

    .line 6536
    :cond_0
    iget v0, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief;->totalMileage_:I

    if-eqz v0, :cond_1

    const/4 v1, 0x2

    .line 6537
    invoke-virtual {p1, v1, v0}, Lcom/android/carsdk/protobuf/CodedOutputStream;->writeInt32(II)V

    .line 6539
    :cond_1
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief;->beginLonlatPoint_:Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Point;

    if-eqz v0, :cond_2

    const/4 v0, 0x3

    .line 6540
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief;->getBeginLonlatPoint()Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Point;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/android/carsdk/protobuf/CodedOutputStream;->writeMessage(ILcom/android/carsdk/protobuf/MessageLite;)V

    .line 6542
    :cond_2
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief;->beginPointName_:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    const/4 v0, 0x4

    .line 6543
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief;->getBeginPointName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/android/carsdk/protobuf/CodedOutputStream;->writeString(ILjava/lang/String;)V

    .line 6545
    :cond_3
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief;->endLonlatPoint_:Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Point;

    if-eqz v0, :cond_4

    const/4 v0, 0x5

    .line 6546
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief;->getEndLonlatPoint()Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Point;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/android/carsdk/protobuf/CodedOutputStream;->writeMessage(ILcom/android/carsdk/protobuf/MessageLite;)V

    .line 6548
    :cond_4
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief;->endPointName_:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_5

    const/4 v0, 0x6

    .line 6549
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief;->getEndPointName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/android/carsdk/protobuf/CodedOutputStream;->writeString(ILjava/lang/String;)V

    .line 6551
    :cond_5
    iget-wide v0, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief;->predictTimeDuration_:J

    cmp-long v4, v0, v2

    if-eqz v4, :cond_6

    const/4 v4, 0x7

    .line 6552
    invoke-virtual {p1, v4, v0, v1}, Lcom/android/carsdk/protobuf/CodedOutputStream;->writeInt64(IJ)V

    .line 6554
    :cond_6
    iget-wide v0, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief;->createTime_:J

    cmp-long v4, v0, v2

    if-eqz v4, :cond_7

    const/16 v4, 0x8

    .line 6555
    invoke-virtual {p1, v4, v0, v1}, Lcom/android/carsdk/protobuf/CodedOutputStream;->writeInt64(IJ)V

    .line 6557
    :cond_7
    iget-boolean v0, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief;->isSelected_:Z

    if-eqz v0, :cond_8

    const/16 v1, 0x9

    .line 6558
    invoke-virtual {p1, v1, v0}, Lcom/android/carsdk/protobuf/CodedOutputStream;->writeBool(IZ)V

    .line 6560
    :cond_8
    iget-wide v0, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief;->lastUseTime_:J

    cmp-long v4, v0, v2

    if-eqz v4, :cond_9

    const/16 v4, 0xa

    .line 6561
    invoke-virtual {p1, v4, v0, v1}, Lcom/android/carsdk/protobuf/CodedOutputStream;->writeInt64(IJ)V

    .line 6563
    :cond_9
    iget-boolean v0, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief;->isLock_:Z

    if-eqz v0, :cond_a

    const/16 v1, 0xb

    .line 6564
    invoke-virtual {p1, v1, v0}, Lcom/android/carsdk/protobuf/CodedOutputStream;->writeBool(IZ)V

    .line 6566
    :cond_a
    iget v0, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief;->fngpStatus_:I

    sget-object v1, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpStatus;->FNGP_STATUS_NOT_AVAILABLE:Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpStatus;

    invoke-virtual {v1}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpStatus;->getNumber()I

    move-result v1

    if-eq v0, v1, :cond_b

    const/16 v0, 0xc

    .line 6567
    iget v1, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief;->fngpStatus_:I

    invoke-virtual {p1, v0, v1}, Lcom/android/carsdk/protobuf/CodedOutputStream;->writeEnum(II)V

    .line 6569
    :cond_b
    iget v0, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief;->pathType_:I

    sget-object v1, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$PathType;->RESERVED:Landroid/car/hardware/xpu/XpuFNgpRouteMessage$PathType;

    invoke-virtual {v1}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$PathType;->getNumber()I

    move-result v1

    if-eq v0, v1, :cond_c

    const/16 v0, 0xd

    .line 6570
    iget v1, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief;->pathType_:I

    invoke-virtual {p1, v0, v1}, Lcom/android/carsdk/protobuf/CodedOutputStream;->writeEnum(II)V

    .line 6572
    :cond_c
    iget v0, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief;->priority_:I

    if-eqz v0, :cond_d

    const/16 v1, 0xe

    .line 6573
    invoke-virtual {p1, v1, v0}, Lcom/android/carsdk/protobuf/CodedOutputStream;->writeInt32(II)V

    .line 6575
    :cond_d
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief;->name_:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_e

    const/16 v0, 0xf

    .line 6576
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/android/carsdk/protobuf/CodedOutputStream;->writeString(ILjava/lang/String;)V

    .line 6578
    :cond_e
    iget v0, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief;->totalOddMilage_:I

    if-eqz v0, :cond_f

    const/16 v1, 0x10

    .line 6579
    invoke-virtual {p1, v1, v0}, Lcom/android/carsdk/protobuf/CodedOutputStream;->writeInt32(II)V

    .line 6581
    :cond_f
    iget v0, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief;->routeShowStatus_:I

    if-eqz v0, :cond_10

    const/16 v1, 0x11

    .line 6582
    invoke-virtual {p1, v1, v0}, Lcom/android/carsdk/protobuf/CodedOutputStream;->writeInt32(II)V

    .line 6584
    :cond_10
    iget v0, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief;->priorityInfo_:I

    sget-object v1, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$PriorityInfo;->FNGP_NO_LABEL:Landroid/car/hardware/xpu/XpuFNgpRouteMessage$PriorityInfo;

    invoke-virtual {v1}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$PriorityInfo;->getNumber()I

    move-result v1

    if-eq v0, v1, :cond_11

    const/16 v0, 0x12

    .line 6585
    iget v1, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief;->priorityInfo_:I

    invoke-virtual {p1, v0, v1}, Lcom/android/carsdk/protobuf/CodedOutputStream;->writeEnum(II)V

    .line 6587
    :cond_11
    iget v0, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief;->isRenamedRoute_:I

    if-eqz v0, :cond_12

    const/16 v1, 0x13

    .line 6588
    invoke-virtual {p1, v1, v0}, Lcom/android/carsdk/protobuf/CodedOutputStream;->writeInt32(II)V

    .line 6590
    :cond_12
    iget v0, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief;->isNaviEndMatch_:I

    if-eqz v0, :cond_13

    const/16 v1, 0x14

    .line 6591
    invoke-virtual {p1, v1, v0}, Lcom/android/carsdk/protobuf/CodedOutputStream;->writeInt32(II)V

    .line 6593
    :cond_13
    iget v0, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief;->clusterNumber_:I

    if-eqz v0, :cond_14

    const/16 v1, 0x15

    .line 6594
    invoke-virtual {p1, v1, v0}, Lcom/android/carsdk/protobuf/CodedOutputStream;->writeInt32(II)V

    .line 6596
    :cond_14
    iget v0, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief;->learnStatus_:I

    sget-object v1, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$PathLearnStatus;->kPathLearnDefault:Landroid/car/hardware/xpu/XpuFNgpRouteMessage$PathLearnStatus;

    invoke-virtual {v1}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$PathLearnStatus;->getNumber()I

    move-result v1

    if-eq v0, v1, :cond_15

    const/16 v0, 0x16

    .line 6597
    iget v1, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief;->learnStatus_:I

    invoke-virtual {p1, v0, v1}, Lcom/android/carsdk/protobuf/CodedOutputStream;->writeEnum(II)V

    .line 6599
    :cond_15
    iget-wide v0, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief;->routeScore_:D

    const-wide/16 v4, 0x0

    cmpl-double v4, v0, v4

    if-eqz v4, :cond_16

    const/16 v4, 0x17

    .line 6600
    invoke-virtual {p1, v4, v0, v1}, Lcom/android/carsdk/protobuf/CodedOutputStream;->writeDouble(ID)V

    .line 6602
    :cond_16
    iget v0, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief;->usingRawRouteType_:I

    sget-object v1, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$UsingRawRouteType;->kRouteRaw:Landroid/car/hardware/xpu/XpuFNgpRouteMessage$UsingRawRouteType;

    invoke-virtual {v1}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$UsingRawRouteType;->getNumber()I

    move-result v1

    if-eq v0, v1, :cond_17

    const/16 v0, 0x18

    .line 6603
    iget v1, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief;->usingRawRouteType_:I

    invoke-virtual {p1, v0, v1}, Lcom/android/carsdk/protobuf/CodedOutputStream;->writeEnum(II)V

    .line 6605
    :cond_17
    iget v0, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief;->startEndClusterNumber_:I

    if-eqz v0, :cond_18

    const/16 v1, 0x19

    .line 6606
    invoke-virtual {p1, v1, v0}, Lcom/android/carsdk/protobuf/CodedOutputStream;->writeInt32(II)V

    .line 6608
    :cond_18
    iget v0, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief;->isCustom_:I

    if-eqz v0, :cond_19

    const/16 v1, 0x1a

    .line 6609
    invoke-virtual {p1, v1, v0}, Lcom/android/carsdk/protobuf/CodedOutputStream;->writeInt32(II)V

    .line 6611
    :cond_19
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief;->customStatusMsg_:Landroid/car/hardware/xpu/XpuFNgpRouteMessage$CustomStatusMsg;

    if-eqz v0, :cond_1a

    const/16 v0, 0x1b

    .line 6612
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief;->getCustomStatusMsg()Landroid/car/hardware/xpu/XpuFNgpRouteMessage$CustomStatusMsg;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/android/carsdk/protobuf/CodedOutputStream;->writeMessage(ILcom/android/carsdk/protobuf/MessageLite;)V

    .line 6614
    :cond_1a
    iget v0, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief;->startSlotShape_:I

    sget-object v1, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$SlotShapeType;->Unknown:Landroid/car/hardware/xpu/XpuFNgpRouteMessage$SlotShapeType;

    invoke-virtual {v1}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$SlotShapeType;->getNumber()I

    move-result v1

    if-eq v0, v1, :cond_1b

    const/16 v0, 0x1c

    .line 6615
    iget v1, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief;->startSlotShape_:I

    invoke-virtual {p1, v0, v1}, Lcom/android/carsdk/protobuf/CodedOutputStream;->writeEnum(II)V

    .line 6617
    :cond_1b
    iget v0, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief;->endSlotShape_:I

    sget-object v1, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$SlotShapeType;->Unknown:Landroid/car/hardware/xpu/XpuFNgpRouteMessage$SlotShapeType;

    invoke-virtual {v1}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$SlotShapeType;->getNumber()I

    move-result v1

    if-eq v0, v1, :cond_1c

    const/16 v0, 0x1d

    .line 6618
    iget v1, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief;->endSlotShape_:I

    invoke-virtual {p1, v0, v1}, Lcom/android/carsdk/protobuf/CodedOutputStream;->writeEnum(II)V

    .line 6620
    :cond_1c
    iget v0, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief;->selectType_:I

    sget-object v1, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$SelectType;->NOT_AUTO_SELECTED:Landroid/car/hardware/xpu/XpuFNgpRouteMessage$SelectType;

    invoke-virtual {v1}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$SelectType;->getNumber()I

    move-result v1

    if-eq v0, v1, :cond_1d

    const/16 v0, 0x1e

    .line 6621
    iget v1, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief;->selectType_:I

    invoke-virtual {p1, v0, v1}, Lcom/android/carsdk/protobuf/CodedOutputStream;->writeEnum(II)V

    .line 6623
    :cond_1d
    iget v0, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief;->slotPreferType_:I

    sget-object v1, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FngpRouteSlotPreferType;->DEFAULT_PARKING_PREFER:Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FngpRouteSlotPreferType;

    invoke-virtual {v1}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FngpRouteSlotPreferType;->getNumber()I

    move-result v1

    if-eq v0, v1, :cond_1e

    const/16 v0, 0x1f

    .line 6624
    iget v1, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief;->slotPreferType_:I

    invoke-virtual {p1, v0, v1}, Lcom/android/carsdk/protobuf/CodedOutputStream;->writeEnum(II)V

    .line 6626
    :cond_1e
    iget v0, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief;->egoInternalRoadState_:I

    sget-object v1, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$EgoInternalRoadState;->NOT_IN_INTERNAL_ROAD:Landroid/car/hardware/xpu/XpuFNgpRouteMessage$EgoInternalRoadState;

    invoke-virtual {v1}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$EgoInternalRoadState;->getNumber()I

    move-result v1

    if-eq v0, v1, :cond_1f

    const/16 v0, 0x20

    .line 6627
    iget v1, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief;->egoInternalRoadState_:I

    invoke-virtual {p1, v0, v1}, Lcom/android/carsdk/protobuf/CodedOutputStream;->writeEnum(II)V

    :cond_1f
    const/4 v0, 0x0

    move v1, v0

    .line 6629
    :goto_0
    iget-object v4, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief;->internalRouteTypeList_:Lcom/android/carsdk/protobuf/Internal$IntList;

    invoke-interface {v4}, Lcom/android/carsdk/protobuf/Internal$IntList;->size()I

    move-result v4

    if-ge v1, v4, :cond_20

    const/16 v4, 0x21

    .line 6630
    iget-object v5, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief;->internalRouteTypeList_:Lcom/android/carsdk/protobuf/Internal$IntList;

    invoke-interface {v5, v1}, Lcom/android/carsdk/protobuf/Internal$IntList;->getInt(I)I

    move-result v5

    invoke-virtual {p1, v4, v5}, Lcom/android/carsdk/protobuf/CodedOutputStream;->writeEnum(II)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 6632
    :cond_20
    :goto_1
    iget-object v1, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief;->internalMapInfoList_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    invoke-interface {v1}, Lcom/android/carsdk/protobuf/Internal$ProtobufList;->size()I

    move-result v1

    if-ge v0, v1, :cond_21

    const/16 v1, 0x22

    .line 6633
    iget-object v4, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief;->internalMapInfoList_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    invoke-interface {v4, v0}, Lcom/android/carsdk/protobuf/Internal$ProtobufList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/carsdk/protobuf/MessageLite;

    invoke-virtual {p1, v1, v4}, Lcom/android/carsdk/protobuf/CodedOutputStream;->writeMessage(ILcom/android/carsdk/protobuf/MessageLite;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 6635
    :cond_21
    iget-wide v0, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief;->routeSelectedTimestamp_:J

    cmp-long v2, v0, v2

    if-eqz v2, :cond_22

    const/16 v2, 0x23

    .line 6636
    invoke-virtual {p1, v2, v0, v1}, Lcom/android/carsdk/protobuf/CodedOutputStream;->writeInt64(IJ)V

    :cond_22
    return-void
.end method
