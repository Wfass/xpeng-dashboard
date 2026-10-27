.class public final Landroid/car/hardware/xpu/XpuFNgpRouteMessage;
.super Ljava/lang/Object;
.source "XpuFNgpRouteMessage.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/car/hardware/xpu/XpuFNgpRouteMessage$InternalMap;,
        Landroid/car/hardware/xpu/XpuFNgpRouteMessage$InternalMapOrBuilder;,
        Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Boundary;,
        Landroid/car/hardware/xpu/XpuFNgpRouteMessage$BoundaryOrBuilder;,
        Landroid/car/hardware/xpu/XpuFNgpRouteMessage$SpeedBump;,
        Landroid/car/hardware/xpu/XpuFNgpRouteMessage$SpeedBumpOrBuilder;,
        Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Slot;,
        Landroid/car/hardware/xpu/XpuFNgpRouteMessage$SlotOrBuilder;,
        Landroid/car/hardware/xpu/XpuFNgpRouteMessage$PolylineForCdu;,
        Landroid/car/hardware/xpu/XpuFNgpRouteMessage$PolylineForCduOrBuilder;,
        Landroid/car/hardware/xpu/XpuFNgpRouteMessage$PolygonForCdu;,
        Landroid/car/hardware/xpu/XpuFNgpRouteMessage$PolygonForCduOrBuilder;,
        Landroid/car/hardware/xpu/XpuFNgpRouteMessage$SemanticTrajectoryPose;,
        Landroid/car/hardware/xpu/XpuFNgpRouteMessage$SemanticTrajectoryPoseOrBuilder;,
        Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Header;,
        Landroid/car/hardware/xpu/XpuFNgpRouteMessage$HeaderOrBuilder;,
        Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FngpXpuCduRouteCmd;,
        Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FngpXpuCduRouteCmdOrBuilder;,
        Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Rotation;,
        Landroid/car/hardware/xpu/XpuFNgpRouteMessage$RotationOrBuilder;,
        Landroid/car/hardware/xpu/XpuFNgpRouteMessage$ParkingTabInfo;,
        Landroid/car/hardware/xpu/XpuFNgpRouteMessage$ParkingTabInfoOrBuilder;,
        Landroid/car/hardware/xpu/XpuFNgpRouteMessage$InternalMapInfo;,
        Landroid/car/hardware/xpu/XpuFNgpRouteMessage$InternalMapInfoOrBuilder;,
        Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Point3f;,
        Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Point3fOrBuilder;,
        Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRecordingState;,
        Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRecordingStateOrBuilder;,
        Landroid/car/hardware/xpu/XpuFNgpRouteMessage$CustomStatusMsg;,
        Landroid/car/hardware/xpu/XpuFNgpRouteMessage$CustomStatusMsgOrBuilder;,
        Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpEmulatorNavigation;,
        Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpEmulatorNavigationOrBuilder;,
        Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteWayPointsSpecified;,
        Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteWayPointsSpecifiedOrBuilder;,
        Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteDetail;,
        Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteDetailOrBuilder;,
        Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteDetailList;,
        Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteDetailListOrBuilder;,
        Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBriefList;,
        Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBriefListOrBuilder;,
        Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief;,
        Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBriefOrBuilder;,
        Landroid/car/hardware/xpu/XpuFNgpRouteMessage$SegmentInfo;,
        Landroid/car/hardware/xpu/XpuFNgpRouteMessage$SegmentInfoOrBuilder;,
        Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Point;,
        Landroid/car/hardware/xpu/XpuFNgpRouteMessage$PointOrBuilder;,
        Landroid/car/hardware/xpu/XpuFNgpRouteMessage$EgoUndergroundParkingLotState;,
        Landroid/car/hardware/xpu/XpuFNgpRouteMessage$BoundaryAscription;,
        Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FngpXpuCduRouteCmdType;,
        Landroid/car/hardware/xpu/XpuFNgpRouteMessage$RecordingAutoSaveType;,
        Landroid/car/hardware/xpu/XpuFNgpRouteMessage$EgoInternalRoadState;,
        Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FngpInternalRouteType;,
        Landroid/car/hardware/xpu/XpuFNgpRouteMessage$SelectType;,
        Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FngpRouteSlotLeaveParkingType;,
        Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FngpRouteSlotPreferType;,
        Landroid/car/hardware/xpu/XpuFNgpRouteMessage$SlotShapeType;,
        Landroid/car/hardware/xpu/XpuFNgpRouteMessage$PriorityInfo;,
        Landroid/car/hardware/xpu/XpuFNgpRouteMessage$StateRemindType;,
        Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpStatus;,
        Landroid/car/hardware/xpu/XpuFNgpRouteMessage$ManeuverDirection;,
        Landroid/car/hardware/xpu/XpuFNgpRouteMessage$ManeuverType;,
        Landroid/car/hardware/xpu/XpuFNgpRouteMessage$PathType;,
        Landroid/car/hardware/xpu/XpuFNgpRouteMessage$UsingRawRouteType;,
        Landroid/car/hardware/xpu/XpuFNgpRouteMessage$PathLearnStatus;,
        Landroid/car/hardware/xpu/XpuFNgpRouteMessage$SegmentAvailableStatus;
    }
.end annotation


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static registerAllExtensions(Lcom/android/carsdk/protobuf/ExtensionRegistryLite;)V
    .locals 0

    return-void
.end method
