.class public final Landroid/car/hardware/xpu/XpuProtoMessage$Path;
.super Lcom/android/carsdk/protobuf/GeneratedMessageLite;
.source "XpuProtoMessage.java"

# interfaces
.implements Landroid/car/hardware/xpu/XpuProtoMessage$PathOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/car/hardware/xpu/XpuProtoMessage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Path"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/car/hardware/xpu/XpuProtoMessage$Path$Builder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/carsdk/protobuf/GeneratedMessageLite<",
        "Landroid/car/hardware/xpu/XpuProtoMessage$Path;",
        "Landroid/car/hardware/xpu/XpuProtoMessage$Path$Builder;",
        ">;",
        "Landroid/car/hardware/xpu/XpuProtoMessage$PathOrBuilder;"
    }
.end annotation


# static fields
.field public static final CAMERAS_FIELD_NUMBER:I = 0x4

.field public static final DATA_VERSION_FIELD_NUMBER:I = 0x1

.field private static final DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuProtoMessage$Path;

.field public static final FORBIDDEN_INFO_COUNT_FIELD_NUMBER:I = 0xb

.field public static final FORBIDDEN_INFO_FIELD_NUMBER:I = 0xc

.field public static final INNER_TRAFFIC_INCIDENTS_FIELD_NUMBER:I = 0xa

.field public static final INNER_TRAFFIC_INCIDENT_COUNT_FIELD_NUMBER:I = 0x8

.field public static final LANE_INFOS_FIELD_NUMBER:I = 0xe

.field public static final LENGTH_FIELD_NUMBER:I = 0x6

.field public static final MANEUVER_INFOS_FIELD_NUMBER:I = 0xf

.field public static final OUTER_TRAFFIC_INCIDENTS_FIELD_NUMBER:I = 0x9

.field public static final OUTER_TRAFFIC_INCIDENT_COUNT_FIELD_NUMBER:I = 0x7

.field private static volatile PARSER:Lcom/android/carsdk/protobuf/Parser; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/carsdk/protobuf/Parser<",
            "Landroid/car/hardware/xpu/XpuProtoMessage$Path;",
            ">;"
        }
    .end annotation
.end field

.field public static final SEGMENTS_FIELD_NUMBER:I = 0x2

.field public static final TRAFFIC_LIGHTS_FIELD_NUMBER:I = 0x3

.field public static final VIA_POINT_INFOS_FIELD_NUMBER:I = 0x5


# instance fields
.field private bitField0_:I

.field private cameras_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/carsdk/protobuf/Internal$ProtobufList<",
            "Landroid/car/hardware/xpu/XpuProtoMessage$Camera;",
            ">;"
        }
    .end annotation
.end field

.field private dataVersion_:J

.field private forbiddenInfo12_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/carsdk/protobuf/Internal$ProtobufList<",
            "Landroid/car/hardware/xpu/XpuProtoMessage$ForbiddenInfo;",
            ">;"
        }
    .end annotation
.end field

.field private forbiddenInfoCount11_:I

.field private innerTrafficIncidentCount_:I

.field private innerTrafficIncidents_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/carsdk/protobuf/Internal$ProtobufList<",
            "Landroid/car/hardware/xpu/XpuProtoMessage$TrafficIncident;",
            ">;"
        }
    .end annotation
.end field

.field private laneInfos_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/carsdk/protobuf/Internal$ProtobufList<",
            "Landroid/car/hardware/xpu/XpuXNgpNaviInfo$LaneInfo;",
            ">;"
        }
    .end annotation
.end field

.field private length_:D

.field private maneuverInfos_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/carsdk/protobuf/Internal$ProtobufList<",
            "Landroid/car/hardware/xpu/XpuXNgpNaviInfo$ManeuverInfo;",
            ">;"
        }
    .end annotation
.end field

.field private outerTrafficIncidentCount_:I

.field private outerTrafficIncidents_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/carsdk/protobuf/Internal$ProtobufList<",
            "Landroid/car/hardware/xpu/XpuProtoMessage$TrafficIncident;",
            ">;"
        }
    .end annotation
.end field

.field private segments_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/carsdk/protobuf/Internal$ProtobufList<",
            "Landroid/car/hardware/xpu/XpuProtoMessage$Segment;",
            ">;"
        }
    .end annotation
.end field

.field private trafficLights_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/carsdk/protobuf/Internal$ProtobufList<",
            "Landroid/car/hardware/xpu/XpuProtoMessage$V2_Point;",
            ">;"
        }
    .end annotation
.end field

.field private viaPointInfos_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/carsdk/protobuf/Internal$ProtobufList<",
            "Landroid/car/hardware/xpu/XpuProtoMessage$ViaPointInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 18287
    new-instance v0, Landroid/car/hardware/xpu/XpuProtoMessage$Path;

    invoke-direct {v0}, Landroid/car/hardware/xpu/XpuProtoMessage$Path;-><init>()V

    sput-object v0, Landroid/car/hardware/xpu/XpuProtoMessage$Path;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuProtoMessage$Path;

    .line 18288
    invoke-virtual {v0}, Landroid/car/hardware/xpu/XpuProtoMessage$Path;->makeImmutable()V

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .line 15545
    invoke-direct {p0}, Lcom/android/carsdk/protobuf/GeneratedMessageLite;-><init>()V

    const-wide/16 v0, 0x0

    .line 15546
    iput-wide v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$Path;->dataVersion_:J

    .line 15547
    invoke-static {}, Landroid/car/hardware/xpu/XpuProtoMessage$Path;->emptyProtobufList()Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    move-result-object v0

    iput-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$Path;->segments_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    .line 15548
    invoke-static {}, Landroid/car/hardware/xpu/XpuProtoMessage$Path;->emptyProtobufList()Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    move-result-object v0

    iput-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$Path;->trafficLights_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    .line 15549
    invoke-static {}, Landroid/car/hardware/xpu/XpuProtoMessage$Path;->emptyProtobufList()Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    move-result-object v0

    iput-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$Path;->cameras_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    .line 15550
    invoke-static {}, Landroid/car/hardware/xpu/XpuProtoMessage$Path;->emptyProtobufList()Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    move-result-object v0

    iput-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$Path;->viaPointInfos_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    const-wide/16 v0, 0x0

    .line 15551
    iput-wide v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$Path;->length_:D

    const/4 v0, 0x0

    .line 15552
    iput v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$Path;->outerTrafficIncidentCount_:I

    .line 15553
    iput v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$Path;->innerTrafficIncidentCount_:I

    .line 15554
    invoke-static {}, Landroid/car/hardware/xpu/XpuProtoMessage$Path;->emptyProtobufList()Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    move-result-object v1

    iput-object v1, p0, Landroid/car/hardware/xpu/XpuProtoMessage$Path;->outerTrafficIncidents_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    .line 15555
    invoke-static {}, Landroid/car/hardware/xpu/XpuProtoMessage$Path;->emptyProtobufList()Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    move-result-object v1

    iput-object v1, p0, Landroid/car/hardware/xpu/XpuProtoMessage$Path;->innerTrafficIncidents_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    .line 15556
    iput v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$Path;->forbiddenInfoCount11_:I

    .line 15557
    invoke-static {}, Landroid/car/hardware/xpu/XpuProtoMessage$Path;->emptyProtobufList()Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    move-result-object v0

    iput-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$Path;->forbiddenInfo12_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    .line 15558
    invoke-static {}, Landroid/car/hardware/xpu/XpuProtoMessage$Path;->emptyProtobufList()Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    move-result-object v0

    iput-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$Path;->laneInfos_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    .line 15559
    invoke-static {}, Landroid/car/hardware/xpu/XpuProtoMessage$Path;->emptyProtobufList()Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    move-result-object v0

    iput-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$Path;->maneuverInfos_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    return-void
.end method

.method static synthetic access$34700()Landroid/car/hardware/xpu/XpuProtoMessage$Path;
    .locals 1

    .line 15540
    sget-object v0, Landroid/car/hardware/xpu/XpuProtoMessage$Path;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuProtoMessage$Path;

    return-object v0
.end method

.method static synthetic access$34800(Landroid/car/hardware/xpu/XpuProtoMessage$Path;J)V
    .locals 0

    .line 15540
    invoke-direct {p0, p1, p2}, Landroid/car/hardware/xpu/XpuProtoMessage$Path;->setDataVersion(J)V

    return-void
.end method

.method static synthetic access$34900(Landroid/car/hardware/xpu/XpuProtoMessage$Path;)V
    .locals 0

    .line 15540
    invoke-direct {p0}, Landroid/car/hardware/xpu/XpuProtoMessage$Path;->clearDataVersion()V

    return-void
.end method

.method static synthetic access$35000(Landroid/car/hardware/xpu/XpuProtoMessage$Path;ILandroid/car/hardware/xpu/XpuProtoMessage$Segment;)V
    .locals 0

    .line 15540
    invoke-direct {p0, p1, p2}, Landroid/car/hardware/xpu/XpuProtoMessage$Path;->setSegments(ILandroid/car/hardware/xpu/XpuProtoMessage$Segment;)V

    return-void
.end method

.method static synthetic access$35100(Landroid/car/hardware/xpu/XpuProtoMessage$Path;ILandroid/car/hardware/xpu/XpuProtoMessage$Segment$Builder;)V
    .locals 0

    .line 15540
    invoke-direct {p0, p1, p2}, Landroid/car/hardware/xpu/XpuProtoMessage$Path;->setSegments(ILandroid/car/hardware/xpu/XpuProtoMessage$Segment$Builder;)V

    return-void
.end method

.method static synthetic access$35200(Landroid/car/hardware/xpu/XpuProtoMessage$Path;Landroid/car/hardware/xpu/XpuProtoMessage$Segment;)V
    .locals 0

    .line 15540
    invoke-direct {p0, p1}, Landroid/car/hardware/xpu/XpuProtoMessage$Path;->addSegments(Landroid/car/hardware/xpu/XpuProtoMessage$Segment;)V

    return-void
.end method

.method static synthetic access$35300(Landroid/car/hardware/xpu/XpuProtoMessage$Path;ILandroid/car/hardware/xpu/XpuProtoMessage$Segment;)V
    .locals 0

    .line 15540
    invoke-direct {p0, p1, p2}, Landroid/car/hardware/xpu/XpuProtoMessage$Path;->addSegments(ILandroid/car/hardware/xpu/XpuProtoMessage$Segment;)V

    return-void
.end method

.method static synthetic access$35400(Landroid/car/hardware/xpu/XpuProtoMessage$Path;Landroid/car/hardware/xpu/XpuProtoMessage$Segment$Builder;)V
    .locals 0

    .line 15540
    invoke-direct {p0, p1}, Landroid/car/hardware/xpu/XpuProtoMessage$Path;->addSegments(Landroid/car/hardware/xpu/XpuProtoMessage$Segment$Builder;)V

    return-void
.end method

.method static synthetic access$35500(Landroid/car/hardware/xpu/XpuProtoMessage$Path;ILandroid/car/hardware/xpu/XpuProtoMessage$Segment$Builder;)V
    .locals 0

    .line 15540
    invoke-direct {p0, p1, p2}, Landroid/car/hardware/xpu/XpuProtoMessage$Path;->addSegments(ILandroid/car/hardware/xpu/XpuProtoMessage$Segment$Builder;)V

    return-void
.end method

.method static synthetic access$35600(Landroid/car/hardware/xpu/XpuProtoMessage$Path;Ljava/lang/Iterable;)V
    .locals 0

    .line 15540
    invoke-direct {p0, p1}, Landroid/car/hardware/xpu/XpuProtoMessage$Path;->addAllSegments(Ljava/lang/Iterable;)V

    return-void
.end method

.method static synthetic access$35700(Landroid/car/hardware/xpu/XpuProtoMessage$Path;)V
    .locals 0

    .line 15540
    invoke-direct {p0}, Landroid/car/hardware/xpu/XpuProtoMessage$Path;->clearSegments()V

    return-void
.end method

.method static synthetic access$35800(Landroid/car/hardware/xpu/XpuProtoMessage$Path;I)V
    .locals 0

    .line 15540
    invoke-direct {p0, p1}, Landroid/car/hardware/xpu/XpuProtoMessage$Path;->removeSegments(I)V

    return-void
.end method

.method static synthetic access$35900(Landroid/car/hardware/xpu/XpuProtoMessage$Path;ILandroid/car/hardware/xpu/XpuProtoMessage$V2_Point;)V
    .locals 0

    .line 15540
    invoke-direct {p0, p1, p2}, Landroid/car/hardware/xpu/XpuProtoMessage$Path;->setTrafficLights(ILandroid/car/hardware/xpu/XpuProtoMessage$V2_Point;)V

    return-void
.end method

.method static synthetic access$36000(Landroid/car/hardware/xpu/XpuProtoMessage$Path;ILandroid/car/hardware/xpu/XpuProtoMessage$V2_Point$Builder;)V
    .locals 0

    .line 15540
    invoke-direct {p0, p1, p2}, Landroid/car/hardware/xpu/XpuProtoMessage$Path;->setTrafficLights(ILandroid/car/hardware/xpu/XpuProtoMessage$V2_Point$Builder;)V

    return-void
.end method

.method static synthetic access$36100(Landroid/car/hardware/xpu/XpuProtoMessage$Path;Landroid/car/hardware/xpu/XpuProtoMessage$V2_Point;)V
    .locals 0

    .line 15540
    invoke-direct {p0, p1}, Landroid/car/hardware/xpu/XpuProtoMessage$Path;->addTrafficLights(Landroid/car/hardware/xpu/XpuProtoMessage$V2_Point;)V

    return-void
.end method

.method static synthetic access$36200(Landroid/car/hardware/xpu/XpuProtoMessage$Path;ILandroid/car/hardware/xpu/XpuProtoMessage$V2_Point;)V
    .locals 0

    .line 15540
    invoke-direct {p0, p1, p2}, Landroid/car/hardware/xpu/XpuProtoMessage$Path;->addTrafficLights(ILandroid/car/hardware/xpu/XpuProtoMessage$V2_Point;)V

    return-void
.end method

.method static synthetic access$36300(Landroid/car/hardware/xpu/XpuProtoMessage$Path;Landroid/car/hardware/xpu/XpuProtoMessage$V2_Point$Builder;)V
    .locals 0

    .line 15540
    invoke-direct {p0, p1}, Landroid/car/hardware/xpu/XpuProtoMessage$Path;->addTrafficLights(Landroid/car/hardware/xpu/XpuProtoMessage$V2_Point$Builder;)V

    return-void
.end method

.method static synthetic access$36400(Landroid/car/hardware/xpu/XpuProtoMessage$Path;ILandroid/car/hardware/xpu/XpuProtoMessage$V2_Point$Builder;)V
    .locals 0

    .line 15540
    invoke-direct {p0, p1, p2}, Landroid/car/hardware/xpu/XpuProtoMessage$Path;->addTrafficLights(ILandroid/car/hardware/xpu/XpuProtoMessage$V2_Point$Builder;)V

    return-void
.end method

.method static synthetic access$36500(Landroid/car/hardware/xpu/XpuProtoMessage$Path;Ljava/lang/Iterable;)V
    .locals 0

    .line 15540
    invoke-direct {p0, p1}, Landroid/car/hardware/xpu/XpuProtoMessage$Path;->addAllTrafficLights(Ljava/lang/Iterable;)V

    return-void
.end method

.method static synthetic access$36600(Landroid/car/hardware/xpu/XpuProtoMessage$Path;)V
    .locals 0

    .line 15540
    invoke-direct {p0}, Landroid/car/hardware/xpu/XpuProtoMessage$Path;->clearTrafficLights()V

    return-void
.end method

.method static synthetic access$36700(Landroid/car/hardware/xpu/XpuProtoMessage$Path;I)V
    .locals 0

    .line 15540
    invoke-direct {p0, p1}, Landroid/car/hardware/xpu/XpuProtoMessage$Path;->removeTrafficLights(I)V

    return-void
.end method

.method static synthetic access$36800(Landroid/car/hardware/xpu/XpuProtoMessage$Path;ILandroid/car/hardware/xpu/XpuProtoMessage$Camera;)V
    .locals 0

    .line 15540
    invoke-direct {p0, p1, p2}, Landroid/car/hardware/xpu/XpuProtoMessage$Path;->setCameras(ILandroid/car/hardware/xpu/XpuProtoMessage$Camera;)V

    return-void
.end method

.method static synthetic access$36900(Landroid/car/hardware/xpu/XpuProtoMessage$Path;ILandroid/car/hardware/xpu/XpuProtoMessage$Camera$Builder;)V
    .locals 0

    .line 15540
    invoke-direct {p0, p1, p2}, Landroid/car/hardware/xpu/XpuProtoMessage$Path;->setCameras(ILandroid/car/hardware/xpu/XpuProtoMessage$Camera$Builder;)V

    return-void
.end method

.method static synthetic access$37000(Landroid/car/hardware/xpu/XpuProtoMessage$Path;Landroid/car/hardware/xpu/XpuProtoMessage$Camera;)V
    .locals 0

    .line 15540
    invoke-direct {p0, p1}, Landroid/car/hardware/xpu/XpuProtoMessage$Path;->addCameras(Landroid/car/hardware/xpu/XpuProtoMessage$Camera;)V

    return-void
.end method

.method static synthetic access$37100(Landroid/car/hardware/xpu/XpuProtoMessage$Path;ILandroid/car/hardware/xpu/XpuProtoMessage$Camera;)V
    .locals 0

    .line 15540
    invoke-direct {p0, p1, p2}, Landroid/car/hardware/xpu/XpuProtoMessage$Path;->addCameras(ILandroid/car/hardware/xpu/XpuProtoMessage$Camera;)V

    return-void
.end method

.method static synthetic access$37200(Landroid/car/hardware/xpu/XpuProtoMessage$Path;Landroid/car/hardware/xpu/XpuProtoMessage$Camera$Builder;)V
    .locals 0

    .line 15540
    invoke-direct {p0, p1}, Landroid/car/hardware/xpu/XpuProtoMessage$Path;->addCameras(Landroid/car/hardware/xpu/XpuProtoMessage$Camera$Builder;)V

    return-void
.end method

.method static synthetic access$37300(Landroid/car/hardware/xpu/XpuProtoMessage$Path;ILandroid/car/hardware/xpu/XpuProtoMessage$Camera$Builder;)V
    .locals 0

    .line 15540
    invoke-direct {p0, p1, p2}, Landroid/car/hardware/xpu/XpuProtoMessage$Path;->addCameras(ILandroid/car/hardware/xpu/XpuProtoMessage$Camera$Builder;)V

    return-void
.end method

.method static synthetic access$37400(Landroid/car/hardware/xpu/XpuProtoMessage$Path;Ljava/lang/Iterable;)V
    .locals 0

    .line 15540
    invoke-direct {p0, p1}, Landroid/car/hardware/xpu/XpuProtoMessage$Path;->addAllCameras(Ljava/lang/Iterable;)V

    return-void
.end method

.method static synthetic access$37500(Landroid/car/hardware/xpu/XpuProtoMessage$Path;)V
    .locals 0

    .line 15540
    invoke-direct {p0}, Landroid/car/hardware/xpu/XpuProtoMessage$Path;->clearCameras()V

    return-void
.end method

.method static synthetic access$37600(Landroid/car/hardware/xpu/XpuProtoMessage$Path;I)V
    .locals 0

    .line 15540
    invoke-direct {p0, p1}, Landroid/car/hardware/xpu/XpuProtoMessage$Path;->removeCameras(I)V

    return-void
.end method

.method static synthetic access$37700(Landroid/car/hardware/xpu/XpuProtoMessage$Path;ILandroid/car/hardware/xpu/XpuProtoMessage$ViaPointInfo;)V
    .locals 0

    .line 15540
    invoke-direct {p0, p1, p2}, Landroid/car/hardware/xpu/XpuProtoMessage$Path;->setViaPointInfos(ILandroid/car/hardware/xpu/XpuProtoMessage$ViaPointInfo;)V

    return-void
.end method

.method static synthetic access$37800(Landroid/car/hardware/xpu/XpuProtoMessage$Path;ILandroid/car/hardware/xpu/XpuProtoMessage$ViaPointInfo$Builder;)V
    .locals 0

    .line 15540
    invoke-direct {p0, p1, p2}, Landroid/car/hardware/xpu/XpuProtoMessage$Path;->setViaPointInfos(ILandroid/car/hardware/xpu/XpuProtoMessage$ViaPointInfo$Builder;)V

    return-void
.end method

.method static synthetic access$37900(Landroid/car/hardware/xpu/XpuProtoMessage$Path;Landroid/car/hardware/xpu/XpuProtoMessage$ViaPointInfo;)V
    .locals 0

    .line 15540
    invoke-direct {p0, p1}, Landroid/car/hardware/xpu/XpuProtoMessage$Path;->addViaPointInfos(Landroid/car/hardware/xpu/XpuProtoMessage$ViaPointInfo;)V

    return-void
.end method

.method static synthetic access$38000(Landroid/car/hardware/xpu/XpuProtoMessage$Path;ILandroid/car/hardware/xpu/XpuProtoMessage$ViaPointInfo;)V
    .locals 0

    .line 15540
    invoke-direct {p0, p1, p2}, Landroid/car/hardware/xpu/XpuProtoMessage$Path;->addViaPointInfos(ILandroid/car/hardware/xpu/XpuProtoMessage$ViaPointInfo;)V

    return-void
.end method

.method static synthetic access$38100(Landroid/car/hardware/xpu/XpuProtoMessage$Path;Landroid/car/hardware/xpu/XpuProtoMessage$ViaPointInfo$Builder;)V
    .locals 0

    .line 15540
    invoke-direct {p0, p1}, Landroid/car/hardware/xpu/XpuProtoMessage$Path;->addViaPointInfos(Landroid/car/hardware/xpu/XpuProtoMessage$ViaPointInfo$Builder;)V

    return-void
.end method

.method static synthetic access$38200(Landroid/car/hardware/xpu/XpuProtoMessage$Path;ILandroid/car/hardware/xpu/XpuProtoMessage$ViaPointInfo$Builder;)V
    .locals 0

    .line 15540
    invoke-direct {p0, p1, p2}, Landroid/car/hardware/xpu/XpuProtoMessage$Path;->addViaPointInfos(ILandroid/car/hardware/xpu/XpuProtoMessage$ViaPointInfo$Builder;)V

    return-void
.end method

.method static synthetic access$38300(Landroid/car/hardware/xpu/XpuProtoMessage$Path;Ljava/lang/Iterable;)V
    .locals 0

    .line 15540
    invoke-direct {p0, p1}, Landroid/car/hardware/xpu/XpuProtoMessage$Path;->addAllViaPointInfos(Ljava/lang/Iterable;)V

    return-void
.end method

.method static synthetic access$38400(Landroid/car/hardware/xpu/XpuProtoMessage$Path;)V
    .locals 0

    .line 15540
    invoke-direct {p0}, Landroid/car/hardware/xpu/XpuProtoMessage$Path;->clearViaPointInfos()V

    return-void
.end method

.method static synthetic access$38500(Landroid/car/hardware/xpu/XpuProtoMessage$Path;I)V
    .locals 0

    .line 15540
    invoke-direct {p0, p1}, Landroid/car/hardware/xpu/XpuProtoMessage$Path;->removeViaPointInfos(I)V

    return-void
.end method

.method static synthetic access$38600(Landroid/car/hardware/xpu/XpuProtoMessage$Path;D)V
    .locals 0

    .line 15540
    invoke-direct {p0, p1, p2}, Landroid/car/hardware/xpu/XpuProtoMessage$Path;->setLength(D)V

    return-void
.end method

.method static synthetic access$38700(Landroid/car/hardware/xpu/XpuProtoMessage$Path;)V
    .locals 0

    .line 15540
    invoke-direct {p0}, Landroid/car/hardware/xpu/XpuProtoMessage$Path;->clearLength()V

    return-void
.end method

.method static synthetic access$38800(Landroid/car/hardware/xpu/XpuProtoMessage$Path;I)V
    .locals 0

    .line 15540
    invoke-direct {p0, p1}, Landroid/car/hardware/xpu/XpuProtoMessage$Path;->setOuterTrafficIncidentCount(I)V

    return-void
.end method

.method static synthetic access$38900(Landroid/car/hardware/xpu/XpuProtoMessage$Path;)V
    .locals 0

    .line 15540
    invoke-direct {p0}, Landroid/car/hardware/xpu/XpuProtoMessage$Path;->clearOuterTrafficIncidentCount()V

    return-void
.end method

.method static synthetic access$39000(Landroid/car/hardware/xpu/XpuProtoMessage$Path;I)V
    .locals 0

    .line 15540
    invoke-direct {p0, p1}, Landroid/car/hardware/xpu/XpuProtoMessage$Path;->setInnerTrafficIncidentCount(I)V

    return-void
.end method

.method static synthetic access$39100(Landroid/car/hardware/xpu/XpuProtoMessage$Path;)V
    .locals 0

    .line 15540
    invoke-direct {p0}, Landroid/car/hardware/xpu/XpuProtoMessage$Path;->clearInnerTrafficIncidentCount()V

    return-void
.end method

.method static synthetic access$39200(Landroid/car/hardware/xpu/XpuProtoMessage$Path;ILandroid/car/hardware/xpu/XpuProtoMessage$TrafficIncident;)V
    .locals 0

    .line 15540
    invoke-direct {p0, p1, p2}, Landroid/car/hardware/xpu/XpuProtoMessage$Path;->setOuterTrafficIncidents(ILandroid/car/hardware/xpu/XpuProtoMessage$TrafficIncident;)V

    return-void
.end method

.method static synthetic access$39300(Landroid/car/hardware/xpu/XpuProtoMessage$Path;ILandroid/car/hardware/xpu/XpuProtoMessage$TrafficIncident$Builder;)V
    .locals 0

    .line 15540
    invoke-direct {p0, p1, p2}, Landroid/car/hardware/xpu/XpuProtoMessage$Path;->setOuterTrafficIncidents(ILandroid/car/hardware/xpu/XpuProtoMessage$TrafficIncident$Builder;)V

    return-void
.end method

.method static synthetic access$39400(Landroid/car/hardware/xpu/XpuProtoMessage$Path;Landroid/car/hardware/xpu/XpuProtoMessage$TrafficIncident;)V
    .locals 0

    .line 15540
    invoke-direct {p0, p1}, Landroid/car/hardware/xpu/XpuProtoMessage$Path;->addOuterTrafficIncidents(Landroid/car/hardware/xpu/XpuProtoMessage$TrafficIncident;)V

    return-void
.end method

.method static synthetic access$39500(Landroid/car/hardware/xpu/XpuProtoMessage$Path;ILandroid/car/hardware/xpu/XpuProtoMessage$TrafficIncident;)V
    .locals 0

    .line 15540
    invoke-direct {p0, p1, p2}, Landroid/car/hardware/xpu/XpuProtoMessage$Path;->addOuterTrafficIncidents(ILandroid/car/hardware/xpu/XpuProtoMessage$TrafficIncident;)V

    return-void
.end method

.method static synthetic access$39600(Landroid/car/hardware/xpu/XpuProtoMessage$Path;Landroid/car/hardware/xpu/XpuProtoMessage$TrafficIncident$Builder;)V
    .locals 0

    .line 15540
    invoke-direct {p0, p1}, Landroid/car/hardware/xpu/XpuProtoMessage$Path;->addOuterTrafficIncidents(Landroid/car/hardware/xpu/XpuProtoMessage$TrafficIncident$Builder;)V

    return-void
.end method

.method static synthetic access$39700(Landroid/car/hardware/xpu/XpuProtoMessage$Path;ILandroid/car/hardware/xpu/XpuProtoMessage$TrafficIncident$Builder;)V
    .locals 0

    .line 15540
    invoke-direct {p0, p1, p2}, Landroid/car/hardware/xpu/XpuProtoMessage$Path;->addOuterTrafficIncidents(ILandroid/car/hardware/xpu/XpuProtoMessage$TrafficIncident$Builder;)V

    return-void
.end method

.method static synthetic access$39800(Landroid/car/hardware/xpu/XpuProtoMessage$Path;Ljava/lang/Iterable;)V
    .locals 0

    .line 15540
    invoke-direct {p0, p1}, Landroid/car/hardware/xpu/XpuProtoMessage$Path;->addAllOuterTrafficIncidents(Ljava/lang/Iterable;)V

    return-void
.end method

.method static synthetic access$39900(Landroid/car/hardware/xpu/XpuProtoMessage$Path;)V
    .locals 0

    .line 15540
    invoke-direct {p0}, Landroid/car/hardware/xpu/XpuProtoMessage$Path;->clearOuterTrafficIncidents()V

    return-void
.end method

.method static synthetic access$40000(Landroid/car/hardware/xpu/XpuProtoMessage$Path;I)V
    .locals 0

    .line 15540
    invoke-direct {p0, p1}, Landroid/car/hardware/xpu/XpuProtoMessage$Path;->removeOuterTrafficIncidents(I)V

    return-void
.end method

.method static synthetic access$40100(Landroid/car/hardware/xpu/XpuProtoMessage$Path;ILandroid/car/hardware/xpu/XpuProtoMessage$TrafficIncident;)V
    .locals 0

    .line 15540
    invoke-direct {p0, p1, p2}, Landroid/car/hardware/xpu/XpuProtoMessage$Path;->setInnerTrafficIncidents(ILandroid/car/hardware/xpu/XpuProtoMessage$TrafficIncident;)V

    return-void
.end method

.method static synthetic access$40200(Landroid/car/hardware/xpu/XpuProtoMessage$Path;ILandroid/car/hardware/xpu/XpuProtoMessage$TrafficIncident$Builder;)V
    .locals 0

    .line 15540
    invoke-direct {p0, p1, p2}, Landroid/car/hardware/xpu/XpuProtoMessage$Path;->setInnerTrafficIncidents(ILandroid/car/hardware/xpu/XpuProtoMessage$TrafficIncident$Builder;)V

    return-void
.end method

.method static synthetic access$40300(Landroid/car/hardware/xpu/XpuProtoMessage$Path;Landroid/car/hardware/xpu/XpuProtoMessage$TrafficIncident;)V
    .locals 0

    .line 15540
    invoke-direct {p0, p1}, Landroid/car/hardware/xpu/XpuProtoMessage$Path;->addInnerTrafficIncidents(Landroid/car/hardware/xpu/XpuProtoMessage$TrafficIncident;)V

    return-void
.end method

.method static synthetic access$40400(Landroid/car/hardware/xpu/XpuProtoMessage$Path;ILandroid/car/hardware/xpu/XpuProtoMessage$TrafficIncident;)V
    .locals 0

    .line 15540
    invoke-direct {p0, p1, p2}, Landroid/car/hardware/xpu/XpuProtoMessage$Path;->addInnerTrafficIncidents(ILandroid/car/hardware/xpu/XpuProtoMessage$TrafficIncident;)V

    return-void
.end method

.method static synthetic access$40500(Landroid/car/hardware/xpu/XpuProtoMessage$Path;Landroid/car/hardware/xpu/XpuProtoMessage$TrafficIncident$Builder;)V
    .locals 0

    .line 15540
    invoke-direct {p0, p1}, Landroid/car/hardware/xpu/XpuProtoMessage$Path;->addInnerTrafficIncidents(Landroid/car/hardware/xpu/XpuProtoMessage$TrafficIncident$Builder;)V

    return-void
.end method

.method static synthetic access$40600(Landroid/car/hardware/xpu/XpuProtoMessage$Path;ILandroid/car/hardware/xpu/XpuProtoMessage$TrafficIncident$Builder;)V
    .locals 0

    .line 15540
    invoke-direct {p0, p1, p2}, Landroid/car/hardware/xpu/XpuProtoMessage$Path;->addInnerTrafficIncidents(ILandroid/car/hardware/xpu/XpuProtoMessage$TrafficIncident$Builder;)V

    return-void
.end method

.method static synthetic access$40700(Landroid/car/hardware/xpu/XpuProtoMessage$Path;Ljava/lang/Iterable;)V
    .locals 0

    .line 15540
    invoke-direct {p0, p1}, Landroid/car/hardware/xpu/XpuProtoMessage$Path;->addAllInnerTrafficIncidents(Ljava/lang/Iterable;)V

    return-void
.end method

.method static synthetic access$40800(Landroid/car/hardware/xpu/XpuProtoMessage$Path;)V
    .locals 0

    .line 15540
    invoke-direct {p0}, Landroid/car/hardware/xpu/XpuProtoMessage$Path;->clearInnerTrafficIncidents()V

    return-void
.end method

.method static synthetic access$40900(Landroid/car/hardware/xpu/XpuProtoMessage$Path;I)V
    .locals 0

    .line 15540
    invoke-direct {p0, p1}, Landroid/car/hardware/xpu/XpuProtoMessage$Path;->removeInnerTrafficIncidents(I)V

    return-void
.end method

.method static synthetic access$41000(Landroid/car/hardware/xpu/XpuProtoMessage$Path;I)V
    .locals 0

    .line 15540
    invoke-direct {p0, p1}, Landroid/car/hardware/xpu/XpuProtoMessage$Path;->setForbiddenInfoCount11(I)V

    return-void
.end method

.method static synthetic access$41100(Landroid/car/hardware/xpu/XpuProtoMessage$Path;)V
    .locals 0

    .line 15540
    invoke-direct {p0}, Landroid/car/hardware/xpu/XpuProtoMessage$Path;->clearForbiddenInfoCount11()V

    return-void
.end method

.method static synthetic access$41200(Landroid/car/hardware/xpu/XpuProtoMessage$Path;ILandroid/car/hardware/xpu/XpuProtoMessage$ForbiddenInfo;)V
    .locals 0

    .line 15540
    invoke-direct {p0, p1, p2}, Landroid/car/hardware/xpu/XpuProtoMessage$Path;->setForbiddenInfo12(ILandroid/car/hardware/xpu/XpuProtoMessage$ForbiddenInfo;)V

    return-void
.end method

.method static synthetic access$41300(Landroid/car/hardware/xpu/XpuProtoMessage$Path;ILandroid/car/hardware/xpu/XpuProtoMessage$ForbiddenInfo$Builder;)V
    .locals 0

    .line 15540
    invoke-direct {p0, p1, p2}, Landroid/car/hardware/xpu/XpuProtoMessage$Path;->setForbiddenInfo12(ILandroid/car/hardware/xpu/XpuProtoMessage$ForbiddenInfo$Builder;)V

    return-void
.end method

.method static synthetic access$41400(Landroid/car/hardware/xpu/XpuProtoMessage$Path;Landroid/car/hardware/xpu/XpuProtoMessage$ForbiddenInfo;)V
    .locals 0

    .line 15540
    invoke-direct {p0, p1}, Landroid/car/hardware/xpu/XpuProtoMessage$Path;->addForbiddenInfo12(Landroid/car/hardware/xpu/XpuProtoMessage$ForbiddenInfo;)V

    return-void
.end method

.method static synthetic access$41500(Landroid/car/hardware/xpu/XpuProtoMessage$Path;ILandroid/car/hardware/xpu/XpuProtoMessage$ForbiddenInfo;)V
    .locals 0

    .line 15540
    invoke-direct {p0, p1, p2}, Landroid/car/hardware/xpu/XpuProtoMessage$Path;->addForbiddenInfo12(ILandroid/car/hardware/xpu/XpuProtoMessage$ForbiddenInfo;)V

    return-void
.end method

.method static synthetic access$41600(Landroid/car/hardware/xpu/XpuProtoMessage$Path;Landroid/car/hardware/xpu/XpuProtoMessage$ForbiddenInfo$Builder;)V
    .locals 0

    .line 15540
    invoke-direct {p0, p1}, Landroid/car/hardware/xpu/XpuProtoMessage$Path;->addForbiddenInfo12(Landroid/car/hardware/xpu/XpuProtoMessage$ForbiddenInfo$Builder;)V

    return-void
.end method

.method static synthetic access$41700(Landroid/car/hardware/xpu/XpuProtoMessage$Path;ILandroid/car/hardware/xpu/XpuProtoMessage$ForbiddenInfo$Builder;)V
    .locals 0

    .line 15540
    invoke-direct {p0, p1, p2}, Landroid/car/hardware/xpu/XpuProtoMessage$Path;->addForbiddenInfo12(ILandroid/car/hardware/xpu/XpuProtoMessage$ForbiddenInfo$Builder;)V

    return-void
.end method

.method static synthetic access$41800(Landroid/car/hardware/xpu/XpuProtoMessage$Path;Ljava/lang/Iterable;)V
    .locals 0

    .line 15540
    invoke-direct {p0, p1}, Landroid/car/hardware/xpu/XpuProtoMessage$Path;->addAllForbiddenInfo12(Ljava/lang/Iterable;)V

    return-void
.end method

.method static synthetic access$41900(Landroid/car/hardware/xpu/XpuProtoMessage$Path;)V
    .locals 0

    .line 15540
    invoke-direct {p0}, Landroid/car/hardware/xpu/XpuProtoMessage$Path;->clearForbiddenInfo12()V

    return-void
.end method

.method static synthetic access$42000(Landroid/car/hardware/xpu/XpuProtoMessage$Path;I)V
    .locals 0

    .line 15540
    invoke-direct {p0, p1}, Landroid/car/hardware/xpu/XpuProtoMessage$Path;->removeForbiddenInfo12(I)V

    return-void
.end method

.method static synthetic access$42100(Landroid/car/hardware/xpu/XpuProtoMessage$Path;ILandroid/car/hardware/xpu/XpuXNgpNaviInfo$LaneInfo;)V
    .locals 0

    .line 15540
    invoke-direct {p0, p1, p2}, Landroid/car/hardware/xpu/XpuProtoMessage$Path;->setLaneInfos(ILandroid/car/hardware/xpu/XpuXNgpNaviInfo$LaneInfo;)V

    return-void
.end method

.method static synthetic access$42200(Landroid/car/hardware/xpu/XpuProtoMessage$Path;ILandroid/car/hardware/xpu/XpuXNgpNaviInfo$LaneInfo$Builder;)V
    .locals 0

    .line 15540
    invoke-direct {p0, p1, p2}, Landroid/car/hardware/xpu/XpuProtoMessage$Path;->setLaneInfos(ILandroid/car/hardware/xpu/XpuXNgpNaviInfo$LaneInfo$Builder;)V

    return-void
.end method

.method static synthetic access$42300(Landroid/car/hardware/xpu/XpuProtoMessage$Path;Landroid/car/hardware/xpu/XpuXNgpNaviInfo$LaneInfo;)V
    .locals 0

    .line 15540
    invoke-direct {p0, p1}, Landroid/car/hardware/xpu/XpuProtoMessage$Path;->addLaneInfos(Landroid/car/hardware/xpu/XpuXNgpNaviInfo$LaneInfo;)V

    return-void
.end method

.method static synthetic access$42400(Landroid/car/hardware/xpu/XpuProtoMessage$Path;ILandroid/car/hardware/xpu/XpuXNgpNaviInfo$LaneInfo;)V
    .locals 0

    .line 15540
    invoke-direct {p0, p1, p2}, Landroid/car/hardware/xpu/XpuProtoMessage$Path;->addLaneInfos(ILandroid/car/hardware/xpu/XpuXNgpNaviInfo$LaneInfo;)V

    return-void
.end method

.method static synthetic access$42500(Landroid/car/hardware/xpu/XpuProtoMessage$Path;Landroid/car/hardware/xpu/XpuXNgpNaviInfo$LaneInfo$Builder;)V
    .locals 0

    .line 15540
    invoke-direct {p0, p1}, Landroid/car/hardware/xpu/XpuProtoMessage$Path;->addLaneInfos(Landroid/car/hardware/xpu/XpuXNgpNaviInfo$LaneInfo$Builder;)V

    return-void
.end method

.method static synthetic access$42600(Landroid/car/hardware/xpu/XpuProtoMessage$Path;ILandroid/car/hardware/xpu/XpuXNgpNaviInfo$LaneInfo$Builder;)V
    .locals 0

    .line 15540
    invoke-direct {p0, p1, p2}, Landroid/car/hardware/xpu/XpuProtoMessage$Path;->addLaneInfos(ILandroid/car/hardware/xpu/XpuXNgpNaviInfo$LaneInfo$Builder;)V

    return-void
.end method

.method static synthetic access$42700(Landroid/car/hardware/xpu/XpuProtoMessage$Path;Ljava/lang/Iterable;)V
    .locals 0

    .line 15540
    invoke-direct {p0, p1}, Landroid/car/hardware/xpu/XpuProtoMessage$Path;->addAllLaneInfos(Ljava/lang/Iterable;)V

    return-void
.end method

.method static synthetic access$42800(Landroid/car/hardware/xpu/XpuProtoMessage$Path;)V
    .locals 0

    .line 15540
    invoke-direct {p0}, Landroid/car/hardware/xpu/XpuProtoMessage$Path;->clearLaneInfos()V

    return-void
.end method

.method static synthetic access$42900(Landroid/car/hardware/xpu/XpuProtoMessage$Path;I)V
    .locals 0

    .line 15540
    invoke-direct {p0, p1}, Landroid/car/hardware/xpu/XpuProtoMessage$Path;->removeLaneInfos(I)V

    return-void
.end method

.method static synthetic access$43000(Landroid/car/hardware/xpu/XpuProtoMessage$Path;ILandroid/car/hardware/xpu/XpuXNgpNaviInfo$ManeuverInfo;)V
    .locals 0

    .line 15540
    invoke-direct {p0, p1, p2}, Landroid/car/hardware/xpu/XpuProtoMessage$Path;->setManeuverInfos(ILandroid/car/hardware/xpu/XpuXNgpNaviInfo$ManeuverInfo;)V

    return-void
.end method

.method static synthetic access$43100(Landroid/car/hardware/xpu/XpuProtoMessage$Path;ILandroid/car/hardware/xpu/XpuXNgpNaviInfo$ManeuverInfo$Builder;)V
    .locals 0

    .line 15540
    invoke-direct {p0, p1, p2}, Landroid/car/hardware/xpu/XpuProtoMessage$Path;->setManeuverInfos(ILandroid/car/hardware/xpu/XpuXNgpNaviInfo$ManeuverInfo$Builder;)V

    return-void
.end method

.method static synthetic access$43200(Landroid/car/hardware/xpu/XpuProtoMessage$Path;Landroid/car/hardware/xpu/XpuXNgpNaviInfo$ManeuverInfo;)V
    .locals 0

    .line 15540
    invoke-direct {p0, p1}, Landroid/car/hardware/xpu/XpuProtoMessage$Path;->addManeuverInfos(Landroid/car/hardware/xpu/XpuXNgpNaviInfo$ManeuverInfo;)V

    return-void
.end method

.method static synthetic access$43300(Landroid/car/hardware/xpu/XpuProtoMessage$Path;ILandroid/car/hardware/xpu/XpuXNgpNaviInfo$ManeuverInfo;)V
    .locals 0

    .line 15540
    invoke-direct {p0, p1, p2}, Landroid/car/hardware/xpu/XpuProtoMessage$Path;->addManeuverInfos(ILandroid/car/hardware/xpu/XpuXNgpNaviInfo$ManeuverInfo;)V

    return-void
.end method

.method static synthetic access$43400(Landroid/car/hardware/xpu/XpuProtoMessage$Path;Landroid/car/hardware/xpu/XpuXNgpNaviInfo$ManeuverInfo$Builder;)V
    .locals 0

    .line 15540
    invoke-direct {p0, p1}, Landroid/car/hardware/xpu/XpuProtoMessage$Path;->addManeuverInfos(Landroid/car/hardware/xpu/XpuXNgpNaviInfo$ManeuverInfo$Builder;)V

    return-void
.end method

.method static synthetic access$43500(Landroid/car/hardware/xpu/XpuProtoMessage$Path;ILandroid/car/hardware/xpu/XpuXNgpNaviInfo$ManeuverInfo$Builder;)V
    .locals 0

    .line 15540
    invoke-direct {p0, p1, p2}, Landroid/car/hardware/xpu/XpuProtoMessage$Path;->addManeuverInfos(ILandroid/car/hardware/xpu/XpuXNgpNaviInfo$ManeuverInfo$Builder;)V

    return-void
.end method

.method static synthetic access$43600(Landroid/car/hardware/xpu/XpuProtoMessage$Path;Ljava/lang/Iterable;)V
    .locals 0

    .line 15540
    invoke-direct {p0, p1}, Landroid/car/hardware/xpu/XpuProtoMessage$Path;->addAllManeuverInfos(Ljava/lang/Iterable;)V

    return-void
.end method

.method static synthetic access$43700(Landroid/car/hardware/xpu/XpuProtoMessage$Path;)V
    .locals 0

    .line 15540
    invoke-direct {p0}, Landroid/car/hardware/xpu/XpuProtoMessage$Path;->clearManeuverInfos()V

    return-void
.end method

.method static synthetic access$43800(Landroid/car/hardware/xpu/XpuProtoMessage$Path;I)V
    .locals 0

    .line 15540
    invoke-direct {p0, p1}, Landroid/car/hardware/xpu/XpuProtoMessage$Path;->removeManeuverInfos(I)V

    return-void
.end method

.method private addAllCameras(Ljava/lang/Iterable;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Landroid/car/hardware/xpu/XpuProtoMessage$Camera;",
            ">;)V"
        }
    .end annotation

    .line 15927
    invoke-direct {p0}, Landroid/car/hardware/xpu/XpuProtoMessage$Path;->ensureCamerasIsMutable()V

    .line 15928
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$Path;->cameras_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    invoke-static {p1, v0}, Lcom/android/carsdk/protobuf/AbstractMessageLite;->addAll(Ljava/lang/Iterable;Ljava/util/Collection;)V

    return-void
.end method

.method private addAllForbiddenInfo12(Ljava/lang/Iterable;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Landroid/car/hardware/xpu/XpuProtoMessage$ForbiddenInfo;",
            ">;)V"
        }
    .end annotation

    .line 16518
    invoke-direct {p0}, Landroid/car/hardware/xpu/XpuProtoMessage$Path;->ensureForbiddenInfo12IsMutable()V

    .line 16519
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$Path;->forbiddenInfo12_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    invoke-static {p1, v0}, Lcom/android/carsdk/protobuf/AbstractMessageLite;->addAll(Ljava/lang/Iterable;Ljava/util/Collection;)V

    return-void
.end method

.method private addAllInnerTrafficIncidents(Ljava/lang/Iterable;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Landroid/car/hardware/xpu/XpuProtoMessage$TrafficIncident;",
            ">;)V"
        }
    .end annotation

    .line 16371
    invoke-direct {p0}, Landroid/car/hardware/xpu/XpuProtoMessage$Path;->ensureInnerTrafficIncidentsIsMutable()V

    .line 16372
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$Path;->innerTrafficIncidents_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    invoke-static {p1, v0}, Lcom/android/carsdk/protobuf/AbstractMessageLite;->addAll(Ljava/lang/Iterable;Ljava/util/Collection;)V

    return-void
.end method

.method private addAllLaneInfos(Ljava/lang/Iterable;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Landroid/car/hardware/xpu/XpuXNgpNaviInfo$LaneInfo;",
            ">;)V"
        }
    .end annotation

    .line 16686
    invoke-direct {p0}, Landroid/car/hardware/xpu/XpuProtoMessage$Path;->ensureLaneInfosIsMutable()V

    .line 16687
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$Path;->laneInfos_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    invoke-static {p1, v0}, Lcom/android/carsdk/protobuf/AbstractMessageLite;->addAll(Ljava/lang/Iterable;Ljava/util/Collection;)V

    return-void
.end method

.method private addAllManeuverInfos(Ljava/lang/Iterable;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Landroid/car/hardware/xpu/XpuXNgpNaviInfo$ManeuverInfo;",
            ">;)V"
        }
    .end annotation

    .line 16814
    invoke-direct {p0}, Landroid/car/hardware/xpu/XpuProtoMessage$Path;->ensureManeuverInfosIsMutable()V

    .line 16815
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$Path;->maneuverInfos_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    invoke-static {p1, v0}, Lcom/android/carsdk/protobuf/AbstractMessageLite;->addAll(Ljava/lang/Iterable;Ljava/util/Collection;)V

    return-void
.end method

.method private addAllOuterTrafficIncidents(Ljava/lang/Iterable;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Landroid/car/hardware/xpu/XpuProtoMessage$TrafficIncident;",
            ">;)V"
        }
    .end annotation

    .line 16251
    invoke-direct {p0}, Landroid/car/hardware/xpu/XpuProtoMessage$Path;->ensureOuterTrafficIncidentsIsMutable()V

    .line 16252
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$Path;->outerTrafficIncidents_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    invoke-static {p1, v0}, Lcom/android/carsdk/protobuf/AbstractMessageLite;->addAll(Ljava/lang/Iterable;Ljava/util/Collection;)V

    return-void
.end method

.method private addAllSegments(Ljava/lang/Iterable;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Landroid/car/hardware/xpu/XpuProtoMessage$Segment;",
            ">;)V"
        }
    .end annotation

    .line 15687
    invoke-direct {p0}, Landroid/car/hardware/xpu/XpuProtoMessage$Path;->ensureSegmentsIsMutable()V

    .line 15688
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$Path;->segments_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    invoke-static {p1, v0}, Lcom/android/carsdk/protobuf/AbstractMessageLite;->addAll(Ljava/lang/Iterable;Ljava/util/Collection;)V

    return-void
.end method

.method private addAllTrafficLights(Ljava/lang/Iterable;)V
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

    .line 15807
    invoke-direct {p0}, Landroid/car/hardware/xpu/XpuProtoMessage$Path;->ensureTrafficLightsIsMutable()V

    .line 15808
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$Path;->trafficLights_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    invoke-static {p1, v0}, Lcom/android/carsdk/protobuf/AbstractMessageLite;->addAll(Ljava/lang/Iterable;Ljava/util/Collection;)V

    return-void
.end method

.method private addAllViaPointInfos(Ljava/lang/Iterable;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Landroid/car/hardware/xpu/XpuProtoMessage$ViaPointInfo;",
            ">;)V"
        }
    .end annotation

    .line 16047
    invoke-direct {p0}, Landroid/car/hardware/xpu/XpuProtoMessage$Path;->ensureViaPointInfosIsMutable()V

    .line 16048
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$Path;->viaPointInfos_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    invoke-static {p1, v0}, Lcom/android/carsdk/protobuf/AbstractMessageLite;->addAll(Ljava/lang/Iterable;Ljava/util/Collection;)V

    return-void
.end method

.method private addCameras(ILandroid/car/hardware/xpu/XpuProtoMessage$Camera$Builder;)V
    .locals 1

    .line 15919
    invoke-direct {p0}, Landroid/car/hardware/xpu/XpuProtoMessage$Path;->ensureCamerasIsMutable()V

    .line 15920
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$Path;->cameras_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    invoke-virtual {p2}, Landroid/car/hardware/xpu/XpuProtoMessage$Camera$Builder;->build()Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object p2

    check-cast p2, Landroid/car/hardware/xpu/XpuProtoMessage$Camera;

    invoke-interface {v0, p1, p2}, Lcom/android/carsdk/protobuf/Internal$ProtobufList;->add(ILjava/lang/Object;)V

    return-void
.end method

.method private addCameras(ILandroid/car/hardware/xpu/XpuProtoMessage$Camera;)V
    .locals 1

    .line 15901
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 15903
    invoke-direct {p0}, Landroid/car/hardware/xpu/XpuProtoMessage$Path;->ensureCamerasIsMutable()V

    .line 15904
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$Path;->cameras_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1, p2}, Lcom/android/carsdk/protobuf/Internal$ProtobufList;->add(ILjava/lang/Object;)V

    return-void
.end method

.method private addCameras(Landroid/car/hardware/xpu/XpuProtoMessage$Camera$Builder;)V
    .locals 1

    .line 15911
    invoke-direct {p0}, Landroid/car/hardware/xpu/XpuProtoMessage$Path;->ensureCamerasIsMutable()V

    .line 15912
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$Path;->cameras_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    invoke-virtual {p1}, Landroid/car/hardware/xpu/XpuProtoMessage$Camera$Builder;->build()Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Landroid/car/hardware/xpu/XpuProtoMessage$Camera;

    invoke-interface {v0, p1}, Lcom/android/carsdk/protobuf/Internal$ProtobufList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private addCameras(Landroid/car/hardware/xpu/XpuProtoMessage$Camera;)V
    .locals 1

    .line 15890
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 15892
    invoke-direct {p0}, Landroid/car/hardware/xpu/XpuProtoMessage$Path;->ensureCamerasIsMutable()V

    .line 15893
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$Path;->cameras_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1}, Lcom/android/carsdk/protobuf/Internal$ProtobufList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private addForbiddenInfo12(ILandroid/car/hardware/xpu/XpuProtoMessage$ForbiddenInfo$Builder;)V
    .locals 1

    .line 16510
    invoke-direct {p0}, Landroid/car/hardware/xpu/XpuProtoMessage$Path;->ensureForbiddenInfo12IsMutable()V

    .line 16511
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$Path;->forbiddenInfo12_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    invoke-virtual {p2}, Landroid/car/hardware/xpu/XpuProtoMessage$ForbiddenInfo$Builder;->build()Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object p2

    check-cast p2, Landroid/car/hardware/xpu/XpuProtoMessage$ForbiddenInfo;

    invoke-interface {v0, p1, p2}, Lcom/android/carsdk/protobuf/Internal$ProtobufList;->add(ILjava/lang/Object;)V

    return-void
.end method

.method private addForbiddenInfo12(ILandroid/car/hardware/xpu/XpuProtoMessage$ForbiddenInfo;)V
    .locals 1

    .line 16492
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 16494
    invoke-direct {p0}, Landroid/car/hardware/xpu/XpuProtoMessage$Path;->ensureForbiddenInfo12IsMutable()V

    .line 16495
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$Path;->forbiddenInfo12_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1, p2}, Lcom/android/carsdk/protobuf/Internal$ProtobufList;->add(ILjava/lang/Object;)V

    return-void
.end method

.method private addForbiddenInfo12(Landroid/car/hardware/xpu/XpuProtoMessage$ForbiddenInfo$Builder;)V
    .locals 1

    .line 16502
    invoke-direct {p0}, Landroid/car/hardware/xpu/XpuProtoMessage$Path;->ensureForbiddenInfo12IsMutable()V

    .line 16503
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$Path;->forbiddenInfo12_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    invoke-virtual {p1}, Landroid/car/hardware/xpu/XpuProtoMessage$ForbiddenInfo$Builder;->build()Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Landroid/car/hardware/xpu/XpuProtoMessage$ForbiddenInfo;

    invoke-interface {v0, p1}, Lcom/android/carsdk/protobuf/Internal$ProtobufList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private addForbiddenInfo12(Landroid/car/hardware/xpu/XpuProtoMessage$ForbiddenInfo;)V
    .locals 1

    .line 16481
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 16483
    invoke-direct {p0}, Landroid/car/hardware/xpu/XpuProtoMessage$Path;->ensureForbiddenInfo12IsMutable()V

    .line 16484
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$Path;->forbiddenInfo12_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1}, Lcom/android/carsdk/protobuf/Internal$ProtobufList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private addInnerTrafficIncidents(ILandroid/car/hardware/xpu/XpuProtoMessage$TrafficIncident$Builder;)V
    .locals 1

    .line 16363
    invoke-direct {p0}, Landroid/car/hardware/xpu/XpuProtoMessage$Path;->ensureInnerTrafficIncidentsIsMutable()V

    .line 16364
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$Path;->innerTrafficIncidents_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    invoke-virtual {p2}, Landroid/car/hardware/xpu/XpuProtoMessage$TrafficIncident$Builder;->build()Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object p2

    check-cast p2, Landroid/car/hardware/xpu/XpuProtoMessage$TrafficIncident;

    invoke-interface {v0, p1, p2}, Lcom/android/carsdk/protobuf/Internal$ProtobufList;->add(ILjava/lang/Object;)V

    return-void
.end method

.method private addInnerTrafficIncidents(ILandroid/car/hardware/xpu/XpuProtoMessage$TrafficIncident;)V
    .locals 1

    .line 16345
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 16347
    invoke-direct {p0}, Landroid/car/hardware/xpu/XpuProtoMessage$Path;->ensureInnerTrafficIncidentsIsMutable()V

    .line 16348
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$Path;->innerTrafficIncidents_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1, p2}, Lcom/android/carsdk/protobuf/Internal$ProtobufList;->add(ILjava/lang/Object;)V

    return-void
.end method

.method private addInnerTrafficIncidents(Landroid/car/hardware/xpu/XpuProtoMessage$TrafficIncident$Builder;)V
    .locals 1

    .line 16355
    invoke-direct {p0}, Landroid/car/hardware/xpu/XpuProtoMessage$Path;->ensureInnerTrafficIncidentsIsMutable()V

    .line 16356
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$Path;->innerTrafficIncidents_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    invoke-virtual {p1}, Landroid/car/hardware/xpu/XpuProtoMessage$TrafficIncident$Builder;->build()Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Landroid/car/hardware/xpu/XpuProtoMessage$TrafficIncident;

    invoke-interface {v0, p1}, Lcom/android/carsdk/protobuf/Internal$ProtobufList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private addInnerTrafficIncidents(Landroid/car/hardware/xpu/XpuProtoMessage$TrafficIncident;)V
    .locals 1

    .line 16334
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 16336
    invoke-direct {p0}, Landroid/car/hardware/xpu/XpuProtoMessage$Path;->ensureInnerTrafficIncidentsIsMutable()V

    .line 16337
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$Path;->innerTrafficIncidents_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1}, Lcom/android/carsdk/protobuf/Internal$ProtobufList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private addLaneInfos(ILandroid/car/hardware/xpu/XpuXNgpNaviInfo$LaneInfo$Builder;)V
    .locals 1

    .line 16674
    invoke-direct {p0}, Landroid/car/hardware/xpu/XpuProtoMessage$Path;->ensureLaneInfosIsMutable()V

    .line 16675
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$Path;->laneInfos_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    invoke-virtual {p2}, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$LaneInfo$Builder;->build()Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object p2

    check-cast p2, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$LaneInfo;

    invoke-interface {v0, p1, p2}, Lcom/android/carsdk/protobuf/Internal$ProtobufList;->add(ILjava/lang/Object;)V

    return-void
.end method

.method private addLaneInfos(ILandroid/car/hardware/xpu/XpuXNgpNaviInfo$LaneInfo;)V
    .locals 1

    .line 16648
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 16650
    invoke-direct {p0}, Landroid/car/hardware/xpu/XpuProtoMessage$Path;->ensureLaneInfosIsMutable()V

    .line 16651
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$Path;->laneInfos_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1, p2}, Lcom/android/carsdk/protobuf/Internal$ProtobufList;->add(ILjava/lang/Object;)V

    return-void
.end method

.method private addLaneInfos(Landroid/car/hardware/xpu/XpuXNgpNaviInfo$LaneInfo$Builder;)V
    .locals 1

    .line 16662
    invoke-direct {p0}, Landroid/car/hardware/xpu/XpuProtoMessage$Path;->ensureLaneInfosIsMutable()V

    .line 16663
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$Path;->laneInfos_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    invoke-virtual {p1}, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$LaneInfo$Builder;->build()Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$LaneInfo;

    invoke-interface {v0, p1}, Lcom/android/carsdk/protobuf/Internal$ProtobufList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private addLaneInfos(Landroid/car/hardware/xpu/XpuXNgpNaviInfo$LaneInfo;)V
    .locals 1

    .line 16633
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 16635
    invoke-direct {p0}, Landroid/car/hardware/xpu/XpuProtoMessage$Path;->ensureLaneInfosIsMutable()V

    .line 16636
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$Path;->laneInfos_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1}, Lcom/android/carsdk/protobuf/Internal$ProtobufList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private addManeuverInfos(ILandroid/car/hardware/xpu/XpuXNgpNaviInfo$ManeuverInfo$Builder;)V
    .locals 1

    .line 16806
    invoke-direct {p0}, Landroid/car/hardware/xpu/XpuProtoMessage$Path;->ensureManeuverInfosIsMutable()V

    .line 16807
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$Path;->maneuverInfos_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    invoke-virtual {p2}, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$ManeuverInfo$Builder;->build()Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object p2

    check-cast p2, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$ManeuverInfo;

    invoke-interface {v0, p1, p2}, Lcom/android/carsdk/protobuf/Internal$ProtobufList;->add(ILjava/lang/Object;)V

    return-void
.end method

.method private addManeuverInfos(ILandroid/car/hardware/xpu/XpuXNgpNaviInfo$ManeuverInfo;)V
    .locals 1

    .line 16788
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 16790
    invoke-direct {p0}, Landroid/car/hardware/xpu/XpuProtoMessage$Path;->ensureManeuverInfosIsMutable()V

    .line 16791
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$Path;->maneuverInfos_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1, p2}, Lcom/android/carsdk/protobuf/Internal$ProtobufList;->add(ILjava/lang/Object;)V

    return-void
.end method

.method private addManeuverInfos(Landroid/car/hardware/xpu/XpuXNgpNaviInfo$ManeuverInfo$Builder;)V
    .locals 1

    .line 16798
    invoke-direct {p0}, Landroid/car/hardware/xpu/XpuProtoMessage$Path;->ensureManeuverInfosIsMutable()V

    .line 16799
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$Path;->maneuverInfos_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    invoke-virtual {p1}, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$ManeuverInfo$Builder;->build()Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$ManeuverInfo;

    invoke-interface {v0, p1}, Lcom/android/carsdk/protobuf/Internal$ProtobufList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private addManeuverInfos(Landroid/car/hardware/xpu/XpuXNgpNaviInfo$ManeuverInfo;)V
    .locals 1

    .line 16777
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 16779
    invoke-direct {p0}, Landroid/car/hardware/xpu/XpuProtoMessage$Path;->ensureManeuverInfosIsMutable()V

    .line 16780
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$Path;->maneuverInfos_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1}, Lcom/android/carsdk/protobuf/Internal$ProtobufList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private addOuterTrafficIncidents(ILandroid/car/hardware/xpu/XpuProtoMessage$TrafficIncident$Builder;)V
    .locals 1

    .line 16243
    invoke-direct {p0}, Landroid/car/hardware/xpu/XpuProtoMessage$Path;->ensureOuterTrafficIncidentsIsMutable()V

    .line 16244
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$Path;->outerTrafficIncidents_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    invoke-virtual {p2}, Landroid/car/hardware/xpu/XpuProtoMessage$TrafficIncident$Builder;->build()Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object p2

    check-cast p2, Landroid/car/hardware/xpu/XpuProtoMessage$TrafficIncident;

    invoke-interface {v0, p1, p2}, Lcom/android/carsdk/protobuf/Internal$ProtobufList;->add(ILjava/lang/Object;)V

    return-void
.end method

.method private addOuterTrafficIncidents(ILandroid/car/hardware/xpu/XpuProtoMessage$TrafficIncident;)V
    .locals 1

    .line 16225
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 16227
    invoke-direct {p0}, Landroid/car/hardware/xpu/XpuProtoMessage$Path;->ensureOuterTrafficIncidentsIsMutable()V

    .line 16228
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$Path;->outerTrafficIncidents_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1, p2}, Lcom/android/carsdk/protobuf/Internal$ProtobufList;->add(ILjava/lang/Object;)V

    return-void
.end method

.method private addOuterTrafficIncidents(Landroid/car/hardware/xpu/XpuProtoMessage$TrafficIncident$Builder;)V
    .locals 1

    .line 16235
    invoke-direct {p0}, Landroid/car/hardware/xpu/XpuProtoMessage$Path;->ensureOuterTrafficIncidentsIsMutable()V

    .line 16236
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$Path;->outerTrafficIncidents_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    invoke-virtual {p1}, Landroid/car/hardware/xpu/XpuProtoMessage$TrafficIncident$Builder;->build()Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Landroid/car/hardware/xpu/XpuProtoMessage$TrafficIncident;

    invoke-interface {v0, p1}, Lcom/android/carsdk/protobuf/Internal$ProtobufList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private addOuterTrafficIncidents(Landroid/car/hardware/xpu/XpuProtoMessage$TrafficIncident;)V
    .locals 1

    .line 16214
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 16216
    invoke-direct {p0}, Landroid/car/hardware/xpu/XpuProtoMessage$Path;->ensureOuterTrafficIncidentsIsMutable()V

    .line 16217
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$Path;->outerTrafficIncidents_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1}, Lcom/android/carsdk/protobuf/Internal$ProtobufList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private addSegments(ILandroid/car/hardware/xpu/XpuProtoMessage$Segment$Builder;)V
    .locals 1

    .line 15679
    invoke-direct {p0}, Landroid/car/hardware/xpu/XpuProtoMessage$Path;->ensureSegmentsIsMutable()V

    .line 15680
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$Path;->segments_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    invoke-virtual {p2}, Landroid/car/hardware/xpu/XpuProtoMessage$Segment$Builder;->build()Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object p2

    check-cast p2, Landroid/car/hardware/xpu/XpuProtoMessage$Segment;

    invoke-interface {v0, p1, p2}, Lcom/android/carsdk/protobuf/Internal$ProtobufList;->add(ILjava/lang/Object;)V

    return-void
.end method

.method private addSegments(ILandroid/car/hardware/xpu/XpuProtoMessage$Segment;)V
    .locals 1

    .line 15661
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 15663
    invoke-direct {p0}, Landroid/car/hardware/xpu/XpuProtoMessage$Path;->ensureSegmentsIsMutable()V

    .line 15664
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$Path;->segments_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1, p2}, Lcom/android/carsdk/protobuf/Internal$ProtobufList;->add(ILjava/lang/Object;)V

    return-void
.end method

.method private addSegments(Landroid/car/hardware/xpu/XpuProtoMessage$Segment$Builder;)V
    .locals 1

    .line 15671
    invoke-direct {p0}, Landroid/car/hardware/xpu/XpuProtoMessage$Path;->ensureSegmentsIsMutable()V

    .line 15672
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$Path;->segments_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    invoke-virtual {p1}, Landroid/car/hardware/xpu/XpuProtoMessage$Segment$Builder;->build()Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Landroid/car/hardware/xpu/XpuProtoMessage$Segment;

    invoke-interface {v0, p1}, Lcom/android/carsdk/protobuf/Internal$ProtobufList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private addSegments(Landroid/car/hardware/xpu/XpuProtoMessage$Segment;)V
    .locals 1

    .line 15650
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 15652
    invoke-direct {p0}, Landroid/car/hardware/xpu/XpuProtoMessage$Path;->ensureSegmentsIsMutable()V

    .line 15653
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$Path;->segments_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1}, Lcom/android/carsdk/protobuf/Internal$ProtobufList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private addTrafficLights(ILandroid/car/hardware/xpu/XpuProtoMessage$V2_Point$Builder;)V
    .locals 1

    .line 15799
    invoke-direct {p0}, Landroid/car/hardware/xpu/XpuProtoMessage$Path;->ensureTrafficLightsIsMutable()V

    .line 15800
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$Path;->trafficLights_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    invoke-virtual {p2}, Landroid/car/hardware/xpu/XpuProtoMessage$V2_Point$Builder;->build()Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object p2

    check-cast p2, Landroid/car/hardware/xpu/XpuProtoMessage$V2_Point;

    invoke-interface {v0, p1, p2}, Lcom/android/carsdk/protobuf/Internal$ProtobufList;->add(ILjava/lang/Object;)V

    return-void
.end method

.method private addTrafficLights(ILandroid/car/hardware/xpu/XpuProtoMessage$V2_Point;)V
    .locals 1

    .line 15781
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 15783
    invoke-direct {p0}, Landroid/car/hardware/xpu/XpuProtoMessage$Path;->ensureTrafficLightsIsMutable()V

    .line 15784
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$Path;->trafficLights_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1, p2}, Lcom/android/carsdk/protobuf/Internal$ProtobufList;->add(ILjava/lang/Object;)V

    return-void
.end method

.method private addTrafficLights(Landroid/car/hardware/xpu/XpuProtoMessage$V2_Point$Builder;)V
    .locals 1

    .line 15791
    invoke-direct {p0}, Landroid/car/hardware/xpu/XpuProtoMessage$Path;->ensureTrafficLightsIsMutable()V

    .line 15792
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$Path;->trafficLights_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    invoke-virtual {p1}, Landroid/car/hardware/xpu/XpuProtoMessage$V2_Point$Builder;->build()Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Landroid/car/hardware/xpu/XpuProtoMessage$V2_Point;

    invoke-interface {v0, p1}, Lcom/android/carsdk/protobuf/Internal$ProtobufList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private addTrafficLights(Landroid/car/hardware/xpu/XpuProtoMessage$V2_Point;)V
    .locals 1

    .line 15770
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 15772
    invoke-direct {p0}, Landroid/car/hardware/xpu/XpuProtoMessage$Path;->ensureTrafficLightsIsMutable()V

    .line 15773
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$Path;->trafficLights_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1}, Lcom/android/carsdk/protobuf/Internal$ProtobufList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private addViaPointInfos(ILandroid/car/hardware/xpu/XpuProtoMessage$ViaPointInfo$Builder;)V
    .locals 1

    .line 16039
    invoke-direct {p0}, Landroid/car/hardware/xpu/XpuProtoMessage$Path;->ensureViaPointInfosIsMutable()V

    .line 16040
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$Path;->viaPointInfos_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    invoke-virtual {p2}, Landroid/car/hardware/xpu/XpuProtoMessage$ViaPointInfo$Builder;->build()Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object p2

    check-cast p2, Landroid/car/hardware/xpu/XpuProtoMessage$ViaPointInfo;

    invoke-interface {v0, p1, p2}, Lcom/android/carsdk/protobuf/Internal$ProtobufList;->add(ILjava/lang/Object;)V

    return-void
.end method

.method private addViaPointInfos(ILandroid/car/hardware/xpu/XpuProtoMessage$ViaPointInfo;)V
    .locals 1

    .line 16021
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 16023
    invoke-direct {p0}, Landroid/car/hardware/xpu/XpuProtoMessage$Path;->ensureViaPointInfosIsMutable()V

    .line 16024
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$Path;->viaPointInfos_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1, p2}, Lcom/android/carsdk/protobuf/Internal$ProtobufList;->add(ILjava/lang/Object;)V

    return-void
.end method

.method private addViaPointInfos(Landroid/car/hardware/xpu/XpuProtoMessage$ViaPointInfo$Builder;)V
    .locals 1

    .line 16031
    invoke-direct {p0}, Landroid/car/hardware/xpu/XpuProtoMessage$Path;->ensureViaPointInfosIsMutable()V

    .line 16032
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$Path;->viaPointInfos_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    invoke-virtual {p1}, Landroid/car/hardware/xpu/XpuProtoMessage$ViaPointInfo$Builder;->build()Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Landroid/car/hardware/xpu/XpuProtoMessage$ViaPointInfo;

    invoke-interface {v0, p1}, Lcom/android/carsdk/protobuf/Internal$ProtobufList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private addViaPointInfos(Landroid/car/hardware/xpu/XpuProtoMessage$ViaPointInfo;)V
    .locals 1

    .line 16010
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 16012
    invoke-direct {p0}, Landroid/car/hardware/xpu/XpuProtoMessage$Path;->ensureViaPointInfosIsMutable()V

    .line 16013
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$Path;->viaPointInfos_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1}, Lcom/android/carsdk/protobuf/Internal$ProtobufList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private clearCameras()V
    .locals 1

    .line 15935
    invoke-static {}, Landroid/car/hardware/xpu/XpuProtoMessage$Path;->emptyProtobufList()Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    move-result-object v0

    iput-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$Path;->cameras_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    return-void
.end method

.method private clearDataVersion()V
    .locals 2

    const-wide/16 v0, 0x0

    .line 15582
    iput-wide v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$Path;->dataVersion_:J

    return-void
.end method

.method private clearForbiddenInfo12()V
    .locals 1

    .line 16526
    invoke-static {}, Landroid/car/hardware/xpu/XpuProtoMessage$Path;->emptyProtobufList()Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    move-result-object v0

    iput-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$Path;->forbiddenInfo12_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    return-void
.end method

.method private clearForbiddenInfoCount11()V
    .locals 1

    const/4 v0, 0x0

    .line 16411
    iput v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$Path;->forbiddenInfoCount11_:I

    return-void
.end method

.method private clearInnerTrafficIncidentCount()V
    .locals 1

    const/4 v0, 0x0

    .line 16146
    iput v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$Path;->innerTrafficIncidentCount_:I

    return-void
.end method

.method private clearInnerTrafficIncidents()V
    .locals 1

    .line 16379
    invoke-static {}, Landroid/car/hardware/xpu/XpuProtoMessage$Path;->emptyProtobufList()Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    move-result-object v0

    iput-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$Path;->innerTrafficIncidents_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    return-void
.end method

.method private clearLaneInfos()V
    .locals 1

    .line 16698
    invoke-static {}, Landroid/car/hardware/xpu/XpuProtoMessage$Path;->emptyProtobufList()Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    move-result-object v0

    iput-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$Path;->laneInfos_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    return-void
.end method

.method private clearLength()V
    .locals 2

    const-wide/16 v0, 0x0

    .line 16085
    iput-wide v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$Path;->length_:D

    return-void
.end method

.method private clearManeuverInfos()V
    .locals 1

    .line 16822
    invoke-static {}, Landroid/car/hardware/xpu/XpuProtoMessage$Path;->emptyProtobufList()Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    move-result-object v0

    iput-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$Path;->maneuverInfos_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    return-void
.end method

.method private clearOuterTrafficIncidentCount()V
    .locals 1

    const/4 v0, 0x0

    .line 16123
    iput v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$Path;->outerTrafficIncidentCount_:I

    return-void
.end method

.method private clearOuterTrafficIncidents()V
    .locals 1

    .line 16259
    invoke-static {}, Landroid/car/hardware/xpu/XpuProtoMessage$Path;->emptyProtobufList()Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    move-result-object v0

    iput-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$Path;->outerTrafficIncidents_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    return-void
.end method

.method private clearSegments()V
    .locals 1

    .line 15695
    invoke-static {}, Landroid/car/hardware/xpu/XpuProtoMessage$Path;->emptyProtobufList()Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    move-result-object v0

    iput-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$Path;->segments_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    return-void
.end method

.method private clearTrafficLights()V
    .locals 1

    .line 15815
    invoke-static {}, Landroid/car/hardware/xpu/XpuProtoMessage$Path;->emptyProtobufList()Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    move-result-object v0

    iput-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$Path;->trafficLights_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    return-void
.end method

.method private clearViaPointInfos()V
    .locals 1

    .line 16055
    invoke-static {}, Landroid/car/hardware/xpu/XpuProtoMessage$Path;->emptyProtobufList()Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    move-result-object v0

    iput-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$Path;->viaPointInfos_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    return-void
.end method

.method private ensureCamerasIsMutable()V
    .locals 1

    .line 15860
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$Path;->cameras_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    invoke-interface {v0}, Lcom/android/carsdk/protobuf/Internal$ProtobufList;->isModifiable()Z

    move-result v0

    if-nez v0, :cond_0

    .line 15861
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$Path;->cameras_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    .line 15862
    invoke-static {v0}, Lcom/android/carsdk/protobuf/GeneratedMessageLite;->mutableCopy(Lcom/android/carsdk/protobuf/Internal$ProtobufList;)Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    move-result-object v0

    iput-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$Path;->cameras_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    :cond_0
    return-void
.end method

.method private ensureForbiddenInfo12IsMutable()V
    .locals 1

    .line 16451
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$Path;->forbiddenInfo12_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    invoke-interface {v0}, Lcom/android/carsdk/protobuf/Internal$ProtobufList;->isModifiable()Z

    move-result v0

    if-nez v0, :cond_0

    .line 16452
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$Path;->forbiddenInfo12_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    .line 16453
    invoke-static {v0}, Lcom/android/carsdk/protobuf/GeneratedMessageLite;->mutableCopy(Lcom/android/carsdk/protobuf/Internal$ProtobufList;)Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    move-result-object v0

    iput-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$Path;->forbiddenInfo12_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    :cond_0
    return-void
.end method

.method private ensureInnerTrafficIncidentsIsMutable()V
    .locals 1

    .line 16304
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$Path;->innerTrafficIncidents_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    invoke-interface {v0}, Lcom/android/carsdk/protobuf/Internal$ProtobufList;->isModifiable()Z

    move-result v0

    if-nez v0, :cond_0

    .line 16305
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$Path;->innerTrafficIncidents_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    .line 16306
    invoke-static {v0}, Lcom/android/carsdk/protobuf/GeneratedMessageLite;->mutableCopy(Lcom/android/carsdk/protobuf/Internal$ProtobufList;)Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    move-result-object v0

    iput-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$Path;->innerTrafficIncidents_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    :cond_0
    return-void
.end method

.method private ensureLaneInfosIsMutable()V
    .locals 1

    .line 16591
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$Path;->laneInfos_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    invoke-interface {v0}, Lcom/android/carsdk/protobuf/Internal$ProtobufList;->isModifiable()Z

    move-result v0

    if-nez v0, :cond_0

    .line 16592
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$Path;->laneInfos_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    .line 16593
    invoke-static {v0}, Lcom/android/carsdk/protobuf/GeneratedMessageLite;->mutableCopy(Lcom/android/carsdk/protobuf/Internal$ProtobufList;)Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    move-result-object v0

    iput-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$Path;->laneInfos_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    :cond_0
    return-void
.end method

.method private ensureManeuverInfosIsMutable()V
    .locals 1

    .line 16747
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$Path;->maneuverInfos_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    invoke-interface {v0}, Lcom/android/carsdk/protobuf/Internal$ProtobufList;->isModifiable()Z

    move-result v0

    if-nez v0, :cond_0

    .line 16748
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$Path;->maneuverInfos_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    .line 16749
    invoke-static {v0}, Lcom/android/carsdk/protobuf/GeneratedMessageLite;->mutableCopy(Lcom/android/carsdk/protobuf/Internal$ProtobufList;)Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    move-result-object v0

    iput-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$Path;->maneuverInfos_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    :cond_0
    return-void
.end method

.method private ensureOuterTrafficIncidentsIsMutable()V
    .locals 1

    .line 16184
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$Path;->outerTrafficIncidents_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    invoke-interface {v0}, Lcom/android/carsdk/protobuf/Internal$ProtobufList;->isModifiable()Z

    move-result v0

    if-nez v0, :cond_0

    .line 16185
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$Path;->outerTrafficIncidents_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    .line 16186
    invoke-static {v0}, Lcom/android/carsdk/protobuf/GeneratedMessageLite;->mutableCopy(Lcom/android/carsdk/protobuf/Internal$ProtobufList;)Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    move-result-object v0

    iput-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$Path;->outerTrafficIncidents_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    :cond_0
    return-void
.end method

.method private ensureSegmentsIsMutable()V
    .locals 1

    .line 15620
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$Path;->segments_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    invoke-interface {v0}, Lcom/android/carsdk/protobuf/Internal$ProtobufList;->isModifiable()Z

    move-result v0

    if-nez v0, :cond_0

    .line 15621
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$Path;->segments_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    .line 15622
    invoke-static {v0}, Lcom/android/carsdk/protobuf/GeneratedMessageLite;->mutableCopy(Lcom/android/carsdk/protobuf/Internal$ProtobufList;)Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    move-result-object v0

    iput-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$Path;->segments_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    :cond_0
    return-void
.end method

.method private ensureTrafficLightsIsMutable()V
    .locals 1

    .line 15740
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$Path;->trafficLights_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    invoke-interface {v0}, Lcom/android/carsdk/protobuf/Internal$ProtobufList;->isModifiable()Z

    move-result v0

    if-nez v0, :cond_0

    .line 15741
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$Path;->trafficLights_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    .line 15742
    invoke-static {v0}, Lcom/android/carsdk/protobuf/GeneratedMessageLite;->mutableCopy(Lcom/android/carsdk/protobuf/Internal$ProtobufList;)Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    move-result-object v0

    iput-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$Path;->trafficLights_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    :cond_0
    return-void
.end method

.method private ensureViaPointInfosIsMutable()V
    .locals 1

    .line 15980
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$Path;->viaPointInfos_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    invoke-interface {v0}, Lcom/android/carsdk/protobuf/Internal$ProtobufList;->isModifiable()Z

    move-result v0

    if-nez v0, :cond_0

    .line 15981
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$Path;->viaPointInfos_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    .line 15982
    invoke-static {v0}, Lcom/android/carsdk/protobuf/GeneratedMessageLite;->mutableCopy(Lcom/android/carsdk/protobuf/Internal$ProtobufList;)Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    move-result-object v0

    iput-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$Path;->viaPointInfos_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    :cond_0
    return-void
.end method

.method public static getDefaultInstance()Landroid/car/hardware/xpu/XpuProtoMessage$Path;
    .locals 1

    .line 18292
    sget-object v0, Landroid/car/hardware/xpu/XpuProtoMessage$Path;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuProtoMessage$Path;

    return-object v0
.end method

.method public static newBuilder()Landroid/car/hardware/xpu/XpuProtoMessage$Path$Builder;
    .locals 1

    .line 17005
    sget-object v0, Landroid/car/hardware/xpu/XpuProtoMessage$Path;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuProtoMessage$Path;

    invoke-virtual {v0}, Landroid/car/hardware/xpu/XpuProtoMessage$Path;->toBuilder()Lcom/android/carsdk/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Landroid/car/hardware/xpu/XpuProtoMessage$Path$Builder;

    return-object v0
.end method

.method public static newBuilder(Landroid/car/hardware/xpu/XpuProtoMessage$Path;)Landroid/car/hardware/xpu/XpuProtoMessage$Path$Builder;
    .locals 1

    .line 17008
    sget-object v0, Landroid/car/hardware/xpu/XpuProtoMessage$Path;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuProtoMessage$Path;

    invoke-virtual {v0}, Landroid/car/hardware/xpu/XpuProtoMessage$Path;->toBuilder()Lcom/android/carsdk/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Landroid/car/hardware/xpu/XpuProtoMessage$Path$Builder;

    invoke-virtual {v0, p0}, Landroid/car/hardware/xpu/XpuProtoMessage$Path$Builder;->mergeFrom(Lcom/android/carsdk/protobuf/GeneratedMessageLite;)Lcom/android/carsdk/protobuf/GeneratedMessageLite$Builder;

    move-result-object p0

    check-cast p0, Landroid/car/hardware/xpu/XpuProtoMessage$Path$Builder;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Landroid/car/hardware/xpu/XpuProtoMessage$Path;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 16982
    sget-object v0, Landroid/car/hardware/xpu/XpuProtoMessage$Path;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuProtoMessage$Path;

    invoke-static {v0, p0}, Landroid/car/hardware/xpu/XpuProtoMessage$Path;->parseDelimitedFrom(Lcom/android/carsdk/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Landroid/car/hardware/xpu/XpuProtoMessage$Path;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/android/carsdk/protobuf/ExtensionRegistryLite;)Landroid/car/hardware/xpu/XpuProtoMessage$Path;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 16988
    sget-object v0, Landroid/car/hardware/xpu/XpuProtoMessage$Path;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuProtoMessage$Path;

    invoke-static {v0, p0, p1}, Landroid/car/hardware/xpu/XpuProtoMessage$Path;->parseDelimitedFrom(Lcom/android/carsdk/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/android/carsdk/protobuf/ExtensionRegistryLite;)Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Landroid/car/hardware/xpu/XpuProtoMessage$Path;

    return-object p0
.end method

.method public static parseFrom(Lcom/android/carsdk/protobuf/ByteString;)Landroid/car/hardware/xpu/XpuProtoMessage$Path;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/carsdk/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 16946
    sget-object v0, Landroid/car/hardware/xpu/XpuProtoMessage$Path;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuProtoMessage$Path;

    invoke-static {v0, p0}, Lcom/android/carsdk/protobuf/GeneratedMessageLite;->parseFrom(Lcom/android/carsdk/protobuf/GeneratedMessageLite;Lcom/android/carsdk/protobuf/ByteString;)Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Landroid/car/hardware/xpu/XpuProtoMessage$Path;

    return-object p0
.end method

.method public static parseFrom(Lcom/android/carsdk/protobuf/ByteString;Lcom/android/carsdk/protobuf/ExtensionRegistryLite;)Landroid/car/hardware/xpu/XpuProtoMessage$Path;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/carsdk/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 16953
    sget-object v0, Landroid/car/hardware/xpu/XpuProtoMessage$Path;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuProtoMessage$Path;

    invoke-static {v0, p0, p1}, Lcom/android/carsdk/protobuf/GeneratedMessageLite;->parseFrom(Lcom/android/carsdk/protobuf/GeneratedMessageLite;Lcom/android/carsdk/protobuf/ByteString;Lcom/android/carsdk/protobuf/ExtensionRegistryLite;)Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Landroid/car/hardware/xpu/XpuProtoMessage$Path;

    return-object p0
.end method

.method public static parseFrom(Lcom/android/carsdk/protobuf/CodedInputStream;)Landroid/car/hardware/xpu/XpuProtoMessage$Path;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 16993
    sget-object v0, Landroid/car/hardware/xpu/XpuProtoMessage$Path;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuProtoMessage$Path;

    invoke-static {v0, p0}, Lcom/android/carsdk/protobuf/GeneratedMessageLite;->parseFrom(Lcom/android/carsdk/protobuf/GeneratedMessageLite;Lcom/android/carsdk/protobuf/CodedInputStream;)Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Landroid/car/hardware/xpu/XpuProtoMessage$Path;

    return-object p0
.end method

.method public static parseFrom(Lcom/android/carsdk/protobuf/CodedInputStream;Lcom/android/carsdk/protobuf/ExtensionRegistryLite;)Landroid/car/hardware/xpu/XpuProtoMessage$Path;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 17000
    sget-object v0, Landroid/car/hardware/xpu/XpuProtoMessage$Path;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuProtoMessage$Path;

    invoke-static {v0, p0, p1}, Lcom/android/carsdk/protobuf/GeneratedMessageLite;->parseFrom(Lcom/android/carsdk/protobuf/GeneratedMessageLite;Lcom/android/carsdk/protobuf/CodedInputStream;Lcom/android/carsdk/protobuf/ExtensionRegistryLite;)Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Landroid/car/hardware/xpu/XpuProtoMessage$Path;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Landroid/car/hardware/xpu/XpuProtoMessage$Path;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 16970
    sget-object v0, Landroid/car/hardware/xpu/XpuProtoMessage$Path;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuProtoMessage$Path;

    invoke-static {v0, p0}, Lcom/android/carsdk/protobuf/GeneratedMessageLite;->parseFrom(Lcom/android/carsdk/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Landroid/car/hardware/xpu/XpuProtoMessage$Path;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/android/carsdk/protobuf/ExtensionRegistryLite;)Landroid/car/hardware/xpu/XpuProtoMessage$Path;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 16977
    sget-object v0, Landroid/car/hardware/xpu/XpuProtoMessage$Path;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuProtoMessage$Path;

    invoke-static {v0, p0, p1}, Lcom/android/carsdk/protobuf/GeneratedMessageLite;->parseFrom(Lcom/android/carsdk/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/android/carsdk/protobuf/ExtensionRegistryLite;)Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Landroid/car/hardware/xpu/XpuProtoMessage$Path;

    return-object p0
.end method

.method public static parseFrom([B)Landroid/car/hardware/xpu/XpuProtoMessage$Path;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/carsdk/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 16958
    sget-object v0, Landroid/car/hardware/xpu/XpuProtoMessage$Path;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuProtoMessage$Path;

    invoke-static {v0, p0}, Lcom/android/carsdk/protobuf/GeneratedMessageLite;->parseFrom(Lcom/android/carsdk/protobuf/GeneratedMessageLite;[B)Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Landroid/car/hardware/xpu/XpuProtoMessage$Path;

    return-object p0
.end method

.method public static parseFrom([BLcom/android/carsdk/protobuf/ExtensionRegistryLite;)Landroid/car/hardware/xpu/XpuProtoMessage$Path;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/carsdk/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 16965
    sget-object v0, Landroid/car/hardware/xpu/XpuProtoMessage$Path;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuProtoMessage$Path;

    invoke-static {v0, p0, p1}, Lcom/android/carsdk/protobuf/GeneratedMessageLite;->parseFrom(Lcom/android/carsdk/protobuf/GeneratedMessageLite;[BLcom/android/carsdk/protobuf/ExtensionRegistryLite;)Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Landroid/car/hardware/xpu/XpuProtoMessage$Path;

    return-object p0
.end method

.method public static parser()Lcom/android/carsdk/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/android/carsdk/protobuf/Parser<",
            "Landroid/car/hardware/xpu/XpuProtoMessage$Path;",
            ">;"
        }
    .end annotation

    .line 18298
    sget-object v0, Landroid/car/hardware/xpu/XpuProtoMessage$Path;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuProtoMessage$Path;

    invoke-virtual {v0}, Landroid/car/hardware/xpu/XpuProtoMessage$Path;->getParserForType()Lcom/android/carsdk/protobuf/Parser;

    move-result-object v0

    return-object v0
.end method

.method private removeCameras(I)V
    .locals 1

    .line 15941
    invoke-direct {p0}, Landroid/car/hardware/xpu/XpuProtoMessage$Path;->ensureCamerasIsMutable()V

    .line 15942
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$Path;->cameras_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1}, Lcom/android/carsdk/protobuf/Internal$ProtobufList;->remove(I)Ljava/lang/Object;

    return-void
.end method

.method private removeForbiddenInfo12(I)V
    .locals 1

    .line 16532
    invoke-direct {p0}, Landroid/car/hardware/xpu/XpuProtoMessage$Path;->ensureForbiddenInfo12IsMutable()V

    .line 16533
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$Path;->forbiddenInfo12_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1}, Lcom/android/carsdk/protobuf/Internal$ProtobufList;->remove(I)Ljava/lang/Object;

    return-void
.end method

.method private removeInnerTrafficIncidents(I)V
    .locals 1

    .line 16385
    invoke-direct {p0}, Landroid/car/hardware/xpu/XpuProtoMessage$Path;->ensureInnerTrafficIncidentsIsMutable()V

    .line 16386
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$Path;->innerTrafficIncidents_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1}, Lcom/android/carsdk/protobuf/Internal$ProtobufList;->remove(I)Ljava/lang/Object;

    return-void
.end method

.method private removeLaneInfos(I)V
    .locals 1

    .line 16708
    invoke-direct {p0}, Landroid/car/hardware/xpu/XpuProtoMessage$Path;->ensureLaneInfosIsMutable()V

    .line 16709
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$Path;->laneInfos_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1}, Lcom/android/carsdk/protobuf/Internal$ProtobufList;->remove(I)Ljava/lang/Object;

    return-void
.end method

.method private removeManeuverInfos(I)V
    .locals 1

    .line 16828
    invoke-direct {p0}, Landroid/car/hardware/xpu/XpuProtoMessage$Path;->ensureManeuverInfosIsMutable()V

    .line 16829
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$Path;->maneuverInfos_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1}, Lcom/android/carsdk/protobuf/Internal$ProtobufList;->remove(I)Ljava/lang/Object;

    return-void
.end method

.method private removeOuterTrafficIncidents(I)V
    .locals 1

    .line 16265
    invoke-direct {p0}, Landroid/car/hardware/xpu/XpuProtoMessage$Path;->ensureOuterTrafficIncidentsIsMutable()V

    .line 16266
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$Path;->outerTrafficIncidents_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1}, Lcom/android/carsdk/protobuf/Internal$ProtobufList;->remove(I)Ljava/lang/Object;

    return-void
.end method

.method private removeSegments(I)V
    .locals 1

    .line 15701
    invoke-direct {p0}, Landroid/car/hardware/xpu/XpuProtoMessage$Path;->ensureSegmentsIsMutable()V

    .line 15702
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$Path;->segments_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1}, Lcom/android/carsdk/protobuf/Internal$ProtobufList;->remove(I)Ljava/lang/Object;

    return-void
.end method

.method private removeTrafficLights(I)V
    .locals 1

    .line 15821
    invoke-direct {p0}, Landroid/car/hardware/xpu/XpuProtoMessage$Path;->ensureTrafficLightsIsMutable()V

    .line 15822
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$Path;->trafficLights_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1}, Lcom/android/carsdk/protobuf/Internal$ProtobufList;->remove(I)Ljava/lang/Object;

    return-void
.end method

.method private removeViaPointInfos(I)V
    .locals 1

    .line 16061
    invoke-direct {p0}, Landroid/car/hardware/xpu/XpuProtoMessage$Path;->ensureViaPointInfosIsMutable()V

    .line 16062
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$Path;->viaPointInfos_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1}, Lcom/android/carsdk/protobuf/Internal$ProtobufList;->remove(I)Ljava/lang/Object;

    return-void
.end method

.method private setCameras(ILandroid/car/hardware/xpu/XpuProtoMessage$Camera$Builder;)V
    .locals 1

    .line 15882
    invoke-direct {p0}, Landroid/car/hardware/xpu/XpuProtoMessage$Path;->ensureCamerasIsMutable()V

    .line 15883
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$Path;->cameras_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    invoke-virtual {p2}, Landroid/car/hardware/xpu/XpuProtoMessage$Camera$Builder;->build()Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object p2

    check-cast p2, Landroid/car/hardware/xpu/XpuProtoMessage$Camera;

    invoke-interface {v0, p1, p2}, Lcom/android/carsdk/protobuf/Internal$ProtobufList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private setCameras(ILandroid/car/hardware/xpu/XpuProtoMessage$Camera;)V
    .locals 1

    .line 15872
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 15874
    invoke-direct {p0}, Landroid/car/hardware/xpu/XpuProtoMessage$Path;->ensureCamerasIsMutable()V

    .line 15875
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$Path;->cameras_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1, p2}, Lcom/android/carsdk/protobuf/Internal$ProtobufList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private setDataVersion(J)V
    .locals 0

    .line 15575
    iput-wide p1, p0, Landroid/car/hardware/xpu/XpuProtoMessage$Path;->dataVersion_:J

    return-void
.end method

.method private setForbiddenInfo12(ILandroid/car/hardware/xpu/XpuProtoMessage$ForbiddenInfo$Builder;)V
    .locals 1

    .line 16473
    invoke-direct {p0}, Landroid/car/hardware/xpu/XpuProtoMessage$Path;->ensureForbiddenInfo12IsMutable()V

    .line 16474
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$Path;->forbiddenInfo12_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    invoke-virtual {p2}, Landroid/car/hardware/xpu/XpuProtoMessage$ForbiddenInfo$Builder;->build()Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object p2

    check-cast p2, Landroid/car/hardware/xpu/XpuProtoMessage$ForbiddenInfo;

    invoke-interface {v0, p1, p2}, Lcom/android/carsdk/protobuf/Internal$ProtobufList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private setForbiddenInfo12(ILandroid/car/hardware/xpu/XpuProtoMessage$ForbiddenInfo;)V
    .locals 1

    .line 16463
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 16465
    invoke-direct {p0}, Landroid/car/hardware/xpu/XpuProtoMessage$Path;->ensureForbiddenInfo12IsMutable()V

    .line 16466
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$Path;->forbiddenInfo12_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1, p2}, Lcom/android/carsdk/protobuf/Internal$ProtobufList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private setForbiddenInfoCount11(I)V
    .locals 0

    .line 16404
    iput p1, p0, Landroid/car/hardware/xpu/XpuProtoMessage$Path;->forbiddenInfoCount11_:I

    return-void
.end method

.method private setInnerTrafficIncidentCount(I)V
    .locals 0

    .line 16139
    iput p1, p0, Landroid/car/hardware/xpu/XpuProtoMessage$Path;->innerTrafficIncidentCount_:I

    return-void
.end method

.method private setInnerTrafficIncidents(ILandroid/car/hardware/xpu/XpuProtoMessage$TrafficIncident$Builder;)V
    .locals 1

    .line 16326
    invoke-direct {p0}, Landroid/car/hardware/xpu/XpuProtoMessage$Path;->ensureInnerTrafficIncidentsIsMutable()V

    .line 16327
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$Path;->innerTrafficIncidents_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    invoke-virtual {p2}, Landroid/car/hardware/xpu/XpuProtoMessage$TrafficIncident$Builder;->build()Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object p2

    check-cast p2, Landroid/car/hardware/xpu/XpuProtoMessage$TrafficIncident;

    invoke-interface {v0, p1, p2}, Lcom/android/carsdk/protobuf/Internal$ProtobufList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private setInnerTrafficIncidents(ILandroid/car/hardware/xpu/XpuProtoMessage$TrafficIncident;)V
    .locals 1

    .line 16316
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 16318
    invoke-direct {p0}, Landroid/car/hardware/xpu/XpuProtoMessage$Path;->ensureInnerTrafficIncidentsIsMutable()V

    .line 16319
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$Path;->innerTrafficIncidents_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1, p2}, Lcom/android/carsdk/protobuf/Internal$ProtobufList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private setLaneInfos(ILandroid/car/hardware/xpu/XpuXNgpNaviInfo$LaneInfo$Builder;)V
    .locals 1

    .line 16621
    invoke-direct {p0}, Landroid/car/hardware/xpu/XpuProtoMessage$Path;->ensureLaneInfosIsMutable()V

    .line 16622
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$Path;->laneInfos_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    invoke-virtual {p2}, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$LaneInfo$Builder;->build()Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object p2

    check-cast p2, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$LaneInfo;

    invoke-interface {v0, p1, p2}, Lcom/android/carsdk/protobuf/Internal$ProtobufList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private setLaneInfos(ILandroid/car/hardware/xpu/XpuXNgpNaviInfo$LaneInfo;)V
    .locals 1

    .line 16607
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 16609
    invoke-direct {p0}, Landroid/car/hardware/xpu/XpuProtoMessage$Path;->ensureLaneInfosIsMutable()V

    .line 16610
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$Path;->laneInfos_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1, p2}, Lcom/android/carsdk/protobuf/Internal$ProtobufList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private setLength(D)V
    .locals 0

    .line 16078
    iput-wide p1, p0, Landroid/car/hardware/xpu/XpuProtoMessage$Path;->length_:D

    return-void
.end method

.method private setManeuverInfos(ILandroid/car/hardware/xpu/XpuXNgpNaviInfo$ManeuverInfo$Builder;)V
    .locals 1

    .line 16769
    invoke-direct {p0}, Landroid/car/hardware/xpu/XpuProtoMessage$Path;->ensureManeuverInfosIsMutable()V

    .line 16770
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$Path;->maneuverInfos_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    invoke-virtual {p2}, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$ManeuverInfo$Builder;->build()Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object p2

    check-cast p2, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$ManeuverInfo;

    invoke-interface {v0, p1, p2}, Lcom/android/carsdk/protobuf/Internal$ProtobufList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private setManeuverInfos(ILandroid/car/hardware/xpu/XpuXNgpNaviInfo$ManeuverInfo;)V
    .locals 1

    .line 16759
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 16761
    invoke-direct {p0}, Landroid/car/hardware/xpu/XpuProtoMessage$Path;->ensureManeuverInfosIsMutable()V

    .line 16762
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$Path;->maneuverInfos_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1, p2}, Lcom/android/carsdk/protobuf/Internal$ProtobufList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private setOuterTrafficIncidentCount(I)V
    .locals 0

    .line 16111
    iput p1, p0, Landroid/car/hardware/xpu/XpuProtoMessage$Path;->outerTrafficIncidentCount_:I

    return-void
.end method

.method private setOuterTrafficIncidents(ILandroid/car/hardware/xpu/XpuProtoMessage$TrafficIncident$Builder;)V
    .locals 1

    .line 16206
    invoke-direct {p0}, Landroid/car/hardware/xpu/XpuProtoMessage$Path;->ensureOuterTrafficIncidentsIsMutable()V

    .line 16207
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$Path;->outerTrafficIncidents_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    invoke-virtual {p2}, Landroid/car/hardware/xpu/XpuProtoMessage$TrafficIncident$Builder;->build()Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object p2

    check-cast p2, Landroid/car/hardware/xpu/XpuProtoMessage$TrafficIncident;

    invoke-interface {v0, p1, p2}, Lcom/android/carsdk/protobuf/Internal$ProtobufList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private setOuterTrafficIncidents(ILandroid/car/hardware/xpu/XpuProtoMessage$TrafficIncident;)V
    .locals 1

    .line 16196
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 16198
    invoke-direct {p0}, Landroid/car/hardware/xpu/XpuProtoMessage$Path;->ensureOuterTrafficIncidentsIsMutable()V

    .line 16199
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$Path;->outerTrafficIncidents_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1, p2}, Lcom/android/carsdk/protobuf/Internal$ProtobufList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private setSegments(ILandroid/car/hardware/xpu/XpuProtoMessage$Segment$Builder;)V
    .locals 1

    .line 15642
    invoke-direct {p0}, Landroid/car/hardware/xpu/XpuProtoMessage$Path;->ensureSegmentsIsMutable()V

    .line 15643
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$Path;->segments_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    invoke-virtual {p2}, Landroid/car/hardware/xpu/XpuProtoMessage$Segment$Builder;->build()Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object p2

    check-cast p2, Landroid/car/hardware/xpu/XpuProtoMessage$Segment;

    invoke-interface {v0, p1, p2}, Lcom/android/carsdk/protobuf/Internal$ProtobufList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private setSegments(ILandroid/car/hardware/xpu/XpuProtoMessage$Segment;)V
    .locals 1

    .line 15632
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 15634
    invoke-direct {p0}, Landroid/car/hardware/xpu/XpuProtoMessage$Path;->ensureSegmentsIsMutable()V

    .line 15635
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$Path;->segments_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1, p2}, Lcom/android/carsdk/protobuf/Internal$ProtobufList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private setTrafficLights(ILandroid/car/hardware/xpu/XpuProtoMessage$V2_Point$Builder;)V
    .locals 1

    .line 15762
    invoke-direct {p0}, Landroid/car/hardware/xpu/XpuProtoMessage$Path;->ensureTrafficLightsIsMutable()V

    .line 15763
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$Path;->trafficLights_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    invoke-virtual {p2}, Landroid/car/hardware/xpu/XpuProtoMessage$V2_Point$Builder;->build()Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object p2

    check-cast p2, Landroid/car/hardware/xpu/XpuProtoMessage$V2_Point;

    invoke-interface {v0, p1, p2}, Lcom/android/carsdk/protobuf/Internal$ProtobufList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private setTrafficLights(ILandroid/car/hardware/xpu/XpuProtoMessage$V2_Point;)V
    .locals 1

    .line 15752
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 15754
    invoke-direct {p0}, Landroid/car/hardware/xpu/XpuProtoMessage$Path;->ensureTrafficLightsIsMutable()V

    .line 15755
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$Path;->trafficLights_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1, p2}, Lcom/android/carsdk/protobuf/Internal$ProtobufList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private setViaPointInfos(ILandroid/car/hardware/xpu/XpuProtoMessage$ViaPointInfo$Builder;)V
    .locals 1

    .line 16002
    invoke-direct {p0}, Landroid/car/hardware/xpu/XpuProtoMessage$Path;->ensureViaPointInfosIsMutable()V

    .line 16003
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$Path;->viaPointInfos_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    invoke-virtual {p2}, Landroid/car/hardware/xpu/XpuProtoMessage$ViaPointInfo$Builder;->build()Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object p2

    check-cast p2, Landroid/car/hardware/xpu/XpuProtoMessage$ViaPointInfo;

    invoke-interface {v0, p1, p2}, Lcom/android/carsdk/protobuf/Internal$ProtobufList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private setViaPointInfos(ILandroid/car/hardware/xpu/XpuProtoMessage$ViaPointInfo;)V
    .locals 1

    .line 15992
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 15994
    invoke-direct {p0}, Landroid/car/hardware/xpu/XpuProtoMessage$Path;->ensureViaPointInfosIsMutable()V

    .line 15995
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$Path;->viaPointInfos_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1, p2}, Lcom/android/carsdk/protobuf/Internal$ProtobufList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method protected final dynamicMethod(Lcom/android/carsdk/protobuf/GeneratedMessageLite$MethodToInvoke;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 10

    .line 18081
    sget-object v0, Landroid/car/hardware/xpu/XpuProtoMessage$1;->$SwitchMap$com$google$protobuf$GeneratedMessageLite$MethodToInvoke:[I

    invoke-virtual {p1}, Lcom/android/carsdk/protobuf/GeneratedMessageLite$MethodToInvoke;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x1

    packed-switch p1, :pswitch_data_0

    .line 18280
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1

    .line 18271
    :pswitch_0
    sget-object p1, Landroid/car/hardware/xpu/XpuProtoMessage$Path;->PARSER:Lcom/android/carsdk/protobuf/Parser;

    if-nez p1, :cond_1

    const-class p1, Landroid/car/hardware/xpu/XpuProtoMessage$Path;

    monitor-enter p1

    .line 18272
    :try_start_0
    sget-object p2, Landroid/car/hardware/xpu/XpuProtoMessage$Path;->PARSER:Lcom/android/carsdk/protobuf/Parser;

    if-nez p2, :cond_0

    .line 18273
    new-instance p2, Lcom/android/carsdk/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;

    sget-object p3, Landroid/car/hardware/xpu/XpuProtoMessage$Path;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuProtoMessage$Path;

    invoke-direct {p2, p3}, Lcom/android/carsdk/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;-><init>(Lcom/android/carsdk/protobuf/GeneratedMessageLite;)V

    sput-object p2, Landroid/car/hardware/xpu/XpuProtoMessage$Path;->PARSER:Lcom/android/carsdk/protobuf/Parser;

    .line 18275
    :cond_0
    monitor-exit p1

    goto :goto_0

    :catchall_0
    move-exception p2

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p2

    .line 18277
    :cond_1
    :goto_0
    sget-object p1, Landroid/car/hardware/xpu/XpuProtoMessage$Path;->PARSER:Lcom/android/carsdk/protobuf/Parser;

    return-object p1

    .line 18132
    :pswitch_1
    check-cast p2, Lcom/android/carsdk/protobuf/CodedInputStream;

    .line 18134
    check-cast p3, Lcom/android/carsdk/protobuf/ExtensionRegistryLite;

    :cond_2
    :goto_1
    if-nez v1, :cond_c

    .line 18139
    :try_start_1
    invoke-virtual {p2}, Lcom/android/carsdk/protobuf/CodedInputStream;->readTag()I

    move-result p1

    sparse-switch p1, :sswitch_data_0

    .line 18145
    invoke-virtual {p2, p1}, Lcom/android/carsdk/protobuf/CodedInputStream;->skipField(I)Z

    move-result p1

    goto/16 :goto_3

    .line 18248
    :sswitch_0
    iget-object p1, p0, Landroid/car/hardware/xpu/XpuProtoMessage$Path;->maneuverInfos_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    invoke-interface {p1}, Lcom/android/carsdk/protobuf/Internal$ProtobufList;->isModifiable()Z

    move-result p1

    if-nez p1, :cond_3

    .line 18249
    iget-object p1, p0, Landroid/car/hardware/xpu/XpuProtoMessage$Path;->maneuverInfos_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    .line 18250
    invoke-static {p1}, Lcom/android/carsdk/protobuf/GeneratedMessageLite;->mutableCopy(Lcom/android/carsdk/protobuf/Internal$ProtobufList;)Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    move-result-object p1

    iput-object p1, p0, Landroid/car/hardware/xpu/XpuProtoMessage$Path;->maneuverInfos_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    .line 18252
    :cond_3
    iget-object p1, p0, Landroid/car/hardware/xpu/XpuProtoMessage$Path;->maneuverInfos_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    .line 18253
    invoke-static {}, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$ManeuverInfo;->parser()Lcom/android/carsdk/protobuf/Parser;

    move-result-object v0

    invoke-virtual {p2, v0, p3}, Lcom/android/carsdk/protobuf/CodedInputStream;->readMessage(Lcom/android/carsdk/protobuf/Parser;Lcom/android/carsdk/protobuf/ExtensionRegistryLite;)Lcom/android/carsdk/protobuf/MessageLite;

    move-result-object v0

    check-cast v0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$ManeuverInfo;

    .line 18252
    invoke-interface {p1, v0}, Lcom/android/carsdk/protobuf/Internal$ProtobufList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 18239
    :sswitch_1
    iget-object p1, p0, Landroid/car/hardware/xpu/XpuProtoMessage$Path;->laneInfos_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    invoke-interface {p1}, Lcom/android/carsdk/protobuf/Internal$ProtobufList;->isModifiable()Z

    move-result p1

    if-nez p1, :cond_4

    .line 18240
    iget-object p1, p0, Landroid/car/hardware/xpu/XpuProtoMessage$Path;->laneInfos_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    .line 18241
    invoke-static {p1}, Lcom/android/carsdk/protobuf/GeneratedMessageLite;->mutableCopy(Lcom/android/carsdk/protobuf/Internal$ProtobufList;)Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    move-result-object p1

    iput-object p1, p0, Landroid/car/hardware/xpu/XpuProtoMessage$Path;->laneInfos_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    .line 18243
    :cond_4
    iget-object p1, p0, Landroid/car/hardware/xpu/XpuProtoMessage$Path;->laneInfos_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    .line 18244
    invoke-static {}, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$LaneInfo;->parser()Lcom/android/carsdk/protobuf/Parser;

    move-result-object v0

    invoke-virtual {p2, v0, p3}, Lcom/android/carsdk/protobuf/CodedInputStream;->readMessage(Lcom/android/carsdk/protobuf/Parser;Lcom/android/carsdk/protobuf/ExtensionRegistryLite;)Lcom/android/carsdk/protobuf/MessageLite;

    move-result-object v0

    check-cast v0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$LaneInfo;

    .line 18243
    invoke-interface {p1, v0}, Lcom/android/carsdk/protobuf/Internal$ProtobufList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 18230
    :sswitch_2
    iget-object p1, p0, Landroid/car/hardware/xpu/XpuProtoMessage$Path;->forbiddenInfo12_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    invoke-interface {p1}, Lcom/android/carsdk/protobuf/Internal$ProtobufList;->isModifiable()Z

    move-result p1

    if-nez p1, :cond_5

    .line 18231
    iget-object p1, p0, Landroid/car/hardware/xpu/XpuProtoMessage$Path;->forbiddenInfo12_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    .line 18232
    invoke-static {p1}, Lcom/android/carsdk/protobuf/GeneratedMessageLite;->mutableCopy(Lcom/android/carsdk/protobuf/Internal$ProtobufList;)Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    move-result-object p1

    iput-object p1, p0, Landroid/car/hardware/xpu/XpuProtoMessage$Path;->forbiddenInfo12_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    .line 18234
    :cond_5
    iget-object p1, p0, Landroid/car/hardware/xpu/XpuProtoMessage$Path;->forbiddenInfo12_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    .line 18235
    invoke-static {}, Landroid/car/hardware/xpu/XpuProtoMessage$ForbiddenInfo;->parser()Lcom/android/carsdk/protobuf/Parser;

    move-result-object v0

    invoke-virtual {p2, v0, p3}, Lcom/android/carsdk/protobuf/CodedInputStream;->readMessage(Lcom/android/carsdk/protobuf/Parser;Lcom/android/carsdk/protobuf/ExtensionRegistryLite;)Lcom/android/carsdk/protobuf/MessageLite;

    move-result-object v0

    check-cast v0, Landroid/car/hardware/xpu/XpuProtoMessage$ForbiddenInfo;

    .line 18234
    invoke-interface {p1, v0}, Lcom/android/carsdk/protobuf/Internal$ProtobufList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 18226
    :sswitch_3
    invoke-virtual {p2}, Lcom/android/carsdk/protobuf/CodedInputStream;->readInt32()I

    move-result p1

    iput p1, p0, Landroid/car/hardware/xpu/XpuProtoMessage$Path;->forbiddenInfoCount11_:I

    goto :goto_1

    .line 18216
    :sswitch_4
    iget-object p1, p0, Landroid/car/hardware/xpu/XpuProtoMessage$Path;->innerTrafficIncidents_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    invoke-interface {p1}, Lcom/android/carsdk/protobuf/Internal$ProtobufList;->isModifiable()Z

    move-result p1

    if-nez p1, :cond_6

    .line 18217
    iget-object p1, p0, Landroid/car/hardware/xpu/XpuProtoMessage$Path;->innerTrafficIncidents_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    .line 18218
    invoke-static {p1}, Lcom/android/carsdk/protobuf/GeneratedMessageLite;->mutableCopy(Lcom/android/carsdk/protobuf/Internal$ProtobufList;)Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    move-result-object p1

    iput-object p1, p0, Landroid/car/hardware/xpu/XpuProtoMessage$Path;->innerTrafficIncidents_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    .line 18220
    :cond_6
    iget-object p1, p0, Landroid/car/hardware/xpu/XpuProtoMessage$Path;->innerTrafficIncidents_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    .line 18221
    invoke-static {}, Landroid/car/hardware/xpu/XpuProtoMessage$TrafficIncident;->parser()Lcom/android/carsdk/protobuf/Parser;

    move-result-object v0

    invoke-virtual {p2, v0, p3}, Lcom/android/carsdk/protobuf/CodedInputStream;->readMessage(Lcom/android/carsdk/protobuf/Parser;Lcom/android/carsdk/protobuf/ExtensionRegistryLite;)Lcom/android/carsdk/protobuf/MessageLite;

    move-result-object v0

    check-cast v0, Landroid/car/hardware/xpu/XpuProtoMessage$TrafficIncident;

    .line 18220
    invoke-interface {p1, v0}, Lcom/android/carsdk/protobuf/Internal$ProtobufList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 18207
    :sswitch_5
    iget-object p1, p0, Landroid/car/hardware/xpu/XpuProtoMessage$Path;->outerTrafficIncidents_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    invoke-interface {p1}, Lcom/android/carsdk/protobuf/Internal$ProtobufList;->isModifiable()Z

    move-result p1

    if-nez p1, :cond_7

    .line 18208
    iget-object p1, p0, Landroid/car/hardware/xpu/XpuProtoMessage$Path;->outerTrafficIncidents_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    .line 18209
    invoke-static {p1}, Lcom/android/carsdk/protobuf/GeneratedMessageLite;->mutableCopy(Lcom/android/carsdk/protobuf/Internal$ProtobufList;)Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    move-result-object p1

    iput-object p1, p0, Landroid/car/hardware/xpu/XpuProtoMessage$Path;->outerTrafficIncidents_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    .line 18211
    :cond_7
    iget-object p1, p0, Landroid/car/hardware/xpu/XpuProtoMessage$Path;->outerTrafficIncidents_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    .line 18212
    invoke-static {}, Landroid/car/hardware/xpu/XpuProtoMessage$TrafficIncident;->parser()Lcom/android/carsdk/protobuf/Parser;

    move-result-object v0

    invoke-virtual {p2, v0, p3}, Lcom/android/carsdk/protobuf/CodedInputStream;->readMessage(Lcom/android/carsdk/protobuf/Parser;Lcom/android/carsdk/protobuf/ExtensionRegistryLite;)Lcom/android/carsdk/protobuf/MessageLite;

    move-result-object v0

    check-cast v0, Landroid/car/hardware/xpu/XpuProtoMessage$TrafficIncident;

    .line 18211
    invoke-interface {p1, v0}, Lcom/android/carsdk/protobuf/Internal$ProtobufList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 18203
    :sswitch_6
    invoke-virtual {p2}, Lcom/android/carsdk/protobuf/CodedInputStream;->readInt32()I

    move-result p1

    iput p1, p0, Landroid/car/hardware/xpu/XpuProtoMessage$Path;->innerTrafficIncidentCount_:I

    goto/16 :goto_1

    .line 18198
    :sswitch_7
    invoke-virtual {p2}, Lcom/android/carsdk/protobuf/CodedInputStream;->readInt32()I

    move-result p1

    iput p1, p0, Landroid/car/hardware/xpu/XpuProtoMessage$Path;->outerTrafficIncidentCount_:I

    goto/16 :goto_1

    .line 18193
    :sswitch_8
    invoke-virtual {p2}, Lcom/android/carsdk/protobuf/CodedInputStream;->readDouble()D

    move-result-wide v3

    iput-wide v3, p0, Landroid/car/hardware/xpu/XpuProtoMessage$Path;->length_:D

    goto/16 :goto_1

    .line 18183
    :sswitch_9
    iget-object p1, p0, Landroid/car/hardware/xpu/XpuProtoMessage$Path;->viaPointInfos_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    invoke-interface {p1}, Lcom/android/carsdk/protobuf/Internal$ProtobufList;->isModifiable()Z

    move-result p1

    if-nez p1, :cond_8

    .line 18184
    iget-object p1, p0, Landroid/car/hardware/xpu/XpuProtoMessage$Path;->viaPointInfos_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    .line 18185
    invoke-static {p1}, Lcom/android/carsdk/protobuf/GeneratedMessageLite;->mutableCopy(Lcom/android/carsdk/protobuf/Internal$ProtobufList;)Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    move-result-object p1

    iput-object p1, p0, Landroid/car/hardware/xpu/XpuProtoMessage$Path;->viaPointInfos_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    .line 18187
    :cond_8
    iget-object p1, p0, Landroid/car/hardware/xpu/XpuProtoMessage$Path;->viaPointInfos_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    .line 18188
    invoke-static {}, Landroid/car/hardware/xpu/XpuProtoMessage$ViaPointInfo;->parser()Lcom/android/carsdk/protobuf/Parser;

    move-result-object v0

    invoke-virtual {p2, v0, p3}, Lcom/android/carsdk/protobuf/CodedInputStream;->readMessage(Lcom/android/carsdk/protobuf/Parser;Lcom/android/carsdk/protobuf/ExtensionRegistryLite;)Lcom/android/carsdk/protobuf/MessageLite;

    move-result-object v0

    check-cast v0, Landroid/car/hardware/xpu/XpuProtoMessage$ViaPointInfo;

    .line 18187
    invoke-interface {p1, v0}, Lcom/android/carsdk/protobuf/Internal$ProtobufList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 18174
    :sswitch_a
    iget-object p1, p0, Landroid/car/hardware/xpu/XpuProtoMessage$Path;->cameras_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    invoke-interface {p1}, Lcom/android/carsdk/protobuf/Internal$ProtobufList;->isModifiable()Z

    move-result p1

    if-nez p1, :cond_9

    .line 18175
    iget-object p1, p0, Landroid/car/hardware/xpu/XpuProtoMessage$Path;->cameras_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    .line 18176
    invoke-static {p1}, Lcom/android/carsdk/protobuf/GeneratedMessageLite;->mutableCopy(Lcom/android/carsdk/protobuf/Internal$ProtobufList;)Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    move-result-object p1

    iput-object p1, p0, Landroid/car/hardware/xpu/XpuProtoMessage$Path;->cameras_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    .line 18178
    :cond_9
    iget-object p1, p0, Landroid/car/hardware/xpu/XpuProtoMessage$Path;->cameras_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    .line 18179
    invoke-static {}, Landroid/car/hardware/xpu/XpuProtoMessage$Camera;->parser()Lcom/android/carsdk/protobuf/Parser;

    move-result-object v0

    invoke-virtual {p2, v0, p3}, Lcom/android/carsdk/protobuf/CodedInputStream;->readMessage(Lcom/android/carsdk/protobuf/Parser;Lcom/android/carsdk/protobuf/ExtensionRegistryLite;)Lcom/android/carsdk/protobuf/MessageLite;

    move-result-object v0

    check-cast v0, Landroid/car/hardware/xpu/XpuProtoMessage$Camera;

    .line 18178
    invoke-interface {p1, v0}, Lcom/android/carsdk/protobuf/Internal$ProtobufList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 18165
    :sswitch_b
    iget-object p1, p0, Landroid/car/hardware/xpu/XpuProtoMessage$Path;->trafficLights_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    invoke-interface {p1}, Lcom/android/carsdk/protobuf/Internal$ProtobufList;->isModifiable()Z

    move-result p1

    if-nez p1, :cond_a

    .line 18166
    iget-object p1, p0, Landroid/car/hardware/xpu/XpuProtoMessage$Path;->trafficLights_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    .line 18167
    invoke-static {p1}, Lcom/android/carsdk/protobuf/GeneratedMessageLite;->mutableCopy(Lcom/android/carsdk/protobuf/Internal$ProtobufList;)Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    move-result-object p1

    iput-object p1, p0, Landroid/car/hardware/xpu/XpuProtoMessage$Path;->trafficLights_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    .line 18169
    :cond_a
    iget-object p1, p0, Landroid/car/hardware/xpu/XpuProtoMessage$Path;->trafficLights_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    .line 18170
    invoke-static {}, Landroid/car/hardware/xpu/XpuProtoMessage$V2_Point;->parser()Lcom/android/carsdk/protobuf/Parser;

    move-result-object v0

    invoke-virtual {p2, v0, p3}, Lcom/android/carsdk/protobuf/CodedInputStream;->readMessage(Lcom/android/carsdk/protobuf/Parser;Lcom/android/carsdk/protobuf/ExtensionRegistryLite;)Lcom/android/carsdk/protobuf/MessageLite;

    move-result-object v0

    check-cast v0, Landroid/car/hardware/xpu/XpuProtoMessage$V2_Point;

    .line 18169
    invoke-interface {p1, v0}, Lcom/android/carsdk/protobuf/Internal$ProtobufList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 18156
    :sswitch_c
    iget-object p1, p0, Landroid/car/hardware/xpu/XpuProtoMessage$Path;->segments_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    invoke-interface {p1}, Lcom/android/carsdk/protobuf/Internal$ProtobufList;->isModifiable()Z

    move-result p1

    if-nez p1, :cond_b

    .line 18157
    iget-object p1, p0, Landroid/car/hardware/xpu/XpuProtoMessage$Path;->segments_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    .line 18158
    invoke-static {p1}, Lcom/android/carsdk/protobuf/GeneratedMessageLite;->mutableCopy(Lcom/android/carsdk/protobuf/Internal$ProtobufList;)Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    move-result-object p1

    iput-object p1, p0, Landroid/car/hardware/xpu/XpuProtoMessage$Path;->segments_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    .line 18160
    :cond_b
    iget-object p1, p0, Landroid/car/hardware/xpu/XpuProtoMessage$Path;->segments_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    .line 18161
    invoke-static {}, Landroid/car/hardware/xpu/XpuProtoMessage$Segment;->parser()Lcom/android/carsdk/protobuf/Parser;

    move-result-object v0

    invoke-virtual {p2, v0, p3}, Lcom/android/carsdk/protobuf/CodedInputStream;->readMessage(Lcom/android/carsdk/protobuf/Parser;Lcom/android/carsdk/protobuf/ExtensionRegistryLite;)Lcom/android/carsdk/protobuf/MessageLite;

    move-result-object v0

    check-cast v0, Landroid/car/hardware/xpu/XpuProtoMessage$Segment;

    .line 18160
    invoke-interface {p1, v0}, Lcom/android/carsdk/protobuf/Internal$ProtobufList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 18152
    :sswitch_d
    invoke-virtual {p2}, Lcom/android/carsdk/protobuf/CodedInputStream;->readUInt64()J

    move-result-wide v3

    iput-wide v3, p0, Landroid/car/hardware/xpu/XpuProtoMessage$Path;->dataVersion_:J
    :try_end_1
    .catch Lcom/android/carsdk/protobuf/InvalidProtocolBufferException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto/16 :goto_1

    :goto_2
    :sswitch_e
    move v1, v2

    goto/16 :goto_1

    :goto_3
    if-nez p1, :cond_2

    goto :goto_2

    :catchall_1
    move-exception p1

    goto :goto_4

    :catch_0
    move-exception p1

    .line 18261
    :try_start_2
    new-instance p2, Ljava/lang/RuntimeException;

    new-instance p3, Lcom/android/carsdk/protobuf/InvalidProtocolBufferException;

    .line 18263
    invoke-virtual {p1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p3, p1}, Lcom/android/carsdk/protobuf/InvalidProtocolBufferException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, p0}, Lcom/android/carsdk/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/android/carsdk/protobuf/MessageLite;)Lcom/android/carsdk/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p2

    :catch_1
    move-exception p1

    .line 18259
    new-instance p2, Ljava/lang/RuntimeException;

    invoke-virtual {p1, p0}, Lcom/android/carsdk/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/android/carsdk/protobuf/MessageLite;)Lcom/android/carsdk/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 18264
    :goto_4
    throw p1

    .line 18268
    :cond_c
    :pswitch_2
    sget-object p1, Landroid/car/hardware/xpu/XpuProtoMessage$Path;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuProtoMessage$Path;

    return-object p1

    .line 18104
    :pswitch_3
    check-cast p2, Lcom/android/carsdk/protobuf/GeneratedMessageLite$Visitor;

    .line 18105
    check-cast p3, Landroid/car/hardware/xpu/XpuProtoMessage$Path;

    .line 18106
    iget-wide v5, p0, Landroid/car/hardware/xpu/XpuProtoMessage$Path;->dataVersion_:J

    const-wide/16 v3, 0x0

    cmp-long p1, v5, v3

    if-eqz p1, :cond_d

    move p1, v2

    goto :goto_5

    :cond_d
    move p1, v1

    :goto_5
    iget-wide v8, p3, Landroid/car/hardware/xpu/XpuProtoMessage$Path;->dataVersion_:J

    cmp-long v0, v8, v3

    if-eqz v0, :cond_e

    move v7, v2

    goto :goto_6

    :cond_e
    move v7, v1

    :goto_6
    move-object v3, p2

    move v4, p1

    invoke-interface/range {v3 .. v9}, Lcom/android/carsdk/protobuf/GeneratedMessageLite$Visitor;->visitLong(ZJZJ)J

    move-result-wide v3

    iput-wide v3, p0, Landroid/car/hardware/xpu/XpuProtoMessage$Path;->dataVersion_:J

    .line 18108
    iget-object p1, p0, Landroid/car/hardware/xpu/XpuProtoMessage$Path;->segments_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    iget-object v0, p3, Landroid/car/hardware/xpu/XpuProtoMessage$Path;->segments_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    invoke-interface {p2, p1, v0}, Lcom/android/carsdk/protobuf/GeneratedMessageLite$Visitor;->visitList(Lcom/android/carsdk/protobuf/Internal$ProtobufList;Lcom/android/carsdk/protobuf/Internal$ProtobufList;)Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    move-result-object p1

    iput-object p1, p0, Landroid/car/hardware/xpu/XpuProtoMessage$Path;->segments_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    .line 18109
    iget-object p1, p0, Landroid/car/hardware/xpu/XpuProtoMessage$Path;->trafficLights_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    iget-object v0, p3, Landroid/car/hardware/xpu/XpuProtoMessage$Path;->trafficLights_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    invoke-interface {p2, p1, v0}, Lcom/android/carsdk/protobuf/GeneratedMessageLite$Visitor;->visitList(Lcom/android/carsdk/protobuf/Internal$ProtobufList;Lcom/android/carsdk/protobuf/Internal$ProtobufList;)Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    move-result-object p1

    iput-object p1, p0, Landroid/car/hardware/xpu/XpuProtoMessage$Path;->trafficLights_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    .line 18110
    iget-object p1, p0, Landroid/car/hardware/xpu/XpuProtoMessage$Path;->cameras_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    iget-object v0, p3, Landroid/car/hardware/xpu/XpuProtoMessage$Path;->cameras_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    invoke-interface {p2, p1, v0}, Lcom/android/carsdk/protobuf/GeneratedMessageLite$Visitor;->visitList(Lcom/android/carsdk/protobuf/Internal$ProtobufList;Lcom/android/carsdk/protobuf/Internal$ProtobufList;)Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    move-result-object p1

    iput-object p1, p0, Landroid/car/hardware/xpu/XpuProtoMessage$Path;->cameras_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    .line 18111
    iget-object p1, p0, Landroid/car/hardware/xpu/XpuProtoMessage$Path;->viaPointInfos_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    iget-object v0, p3, Landroid/car/hardware/xpu/XpuProtoMessage$Path;->viaPointInfos_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    invoke-interface {p2, p1, v0}, Lcom/android/carsdk/protobuf/GeneratedMessageLite$Visitor;->visitList(Lcom/android/carsdk/protobuf/Internal$ProtobufList;Lcom/android/carsdk/protobuf/Internal$ProtobufList;)Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    move-result-object p1

    iput-object p1, p0, Landroid/car/hardware/xpu/XpuProtoMessage$Path;->viaPointInfos_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    .line 18112
    iget-wide v5, p0, Landroid/car/hardware/xpu/XpuProtoMessage$Path;->length_:D

    const-wide/16 v3, 0x0

    cmpl-double p1, v5, v3

    if-eqz p1, :cond_f

    move p1, v2

    goto :goto_7

    :cond_f
    move p1, v1

    :goto_7
    iget-wide v8, p3, Landroid/car/hardware/xpu/XpuProtoMessage$Path;->length_:D

    cmpl-double v0, v8, v3

    if-eqz v0, :cond_10

    move v7, v2

    goto :goto_8

    :cond_10
    move v7, v1

    :goto_8
    move-object v3, p2

    move v4, p1

    invoke-interface/range {v3 .. v9}, Lcom/android/carsdk/protobuf/GeneratedMessageLite$Visitor;->visitDouble(ZDZD)D

    move-result-wide v3

    iput-wide v3, p0, Landroid/car/hardware/xpu/XpuProtoMessage$Path;->length_:D

    .line 18114
    iget p1, p0, Landroid/car/hardware/xpu/XpuProtoMessage$Path;->outerTrafficIncidentCount_:I

    if-eqz p1, :cond_11

    move v0, v2

    goto :goto_9

    :cond_11
    move v0, v1

    :goto_9
    iget v3, p3, Landroid/car/hardware/xpu/XpuProtoMessage$Path;->outerTrafficIncidentCount_:I

    if-eqz v3, :cond_12

    move v4, v2

    goto :goto_a

    :cond_12
    move v4, v1

    :goto_a
    invoke-interface {p2, v0, p1, v4, v3}, Lcom/android/carsdk/protobuf/GeneratedMessageLite$Visitor;->visitInt(ZIZI)I

    move-result p1

    iput p1, p0, Landroid/car/hardware/xpu/XpuProtoMessage$Path;->outerTrafficIncidentCount_:I

    .line 18116
    iget p1, p0, Landroid/car/hardware/xpu/XpuProtoMessage$Path;->innerTrafficIncidentCount_:I

    if-eqz p1, :cond_13

    move v0, v2

    goto :goto_b

    :cond_13
    move v0, v1

    :goto_b
    iget v3, p3, Landroid/car/hardware/xpu/XpuProtoMessage$Path;->innerTrafficIncidentCount_:I

    if-eqz v3, :cond_14

    move v4, v2

    goto :goto_c

    :cond_14
    move v4, v1

    :goto_c
    invoke-interface {p2, v0, p1, v4, v3}, Lcom/android/carsdk/protobuf/GeneratedMessageLite$Visitor;->visitInt(ZIZI)I

    move-result p1

    iput p1, p0, Landroid/car/hardware/xpu/XpuProtoMessage$Path;->innerTrafficIncidentCount_:I

    .line 18118
    iget-object p1, p0, Landroid/car/hardware/xpu/XpuProtoMessage$Path;->outerTrafficIncidents_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    iget-object v0, p3, Landroid/car/hardware/xpu/XpuProtoMessage$Path;->outerTrafficIncidents_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    invoke-interface {p2, p1, v0}, Lcom/android/carsdk/protobuf/GeneratedMessageLite$Visitor;->visitList(Lcom/android/carsdk/protobuf/Internal$ProtobufList;Lcom/android/carsdk/protobuf/Internal$ProtobufList;)Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    move-result-object p1

    iput-object p1, p0, Landroid/car/hardware/xpu/XpuProtoMessage$Path;->outerTrafficIncidents_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    .line 18119
    iget-object p1, p0, Landroid/car/hardware/xpu/XpuProtoMessage$Path;->innerTrafficIncidents_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    iget-object v0, p3, Landroid/car/hardware/xpu/XpuProtoMessage$Path;->innerTrafficIncidents_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    invoke-interface {p2, p1, v0}, Lcom/android/carsdk/protobuf/GeneratedMessageLite$Visitor;->visitList(Lcom/android/carsdk/protobuf/Internal$ProtobufList;Lcom/android/carsdk/protobuf/Internal$ProtobufList;)Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    move-result-object p1

    iput-object p1, p0, Landroid/car/hardware/xpu/XpuProtoMessage$Path;->innerTrafficIncidents_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    .line 18120
    iget p1, p0, Landroid/car/hardware/xpu/XpuProtoMessage$Path;->forbiddenInfoCount11_:I

    if-eqz p1, :cond_15

    move v0, v2

    goto :goto_d

    :cond_15
    move v0, v1

    :goto_d
    iget v3, p3, Landroid/car/hardware/xpu/XpuProtoMessage$Path;->forbiddenInfoCount11_:I

    if-eqz v3, :cond_16

    move v1, v2

    :cond_16
    invoke-interface {p2, v0, p1, v1, v3}, Lcom/android/carsdk/protobuf/GeneratedMessageLite$Visitor;->visitInt(ZIZI)I

    move-result p1

    iput p1, p0, Landroid/car/hardware/xpu/XpuProtoMessage$Path;->forbiddenInfoCount11_:I

    .line 18122
    iget-object p1, p0, Landroid/car/hardware/xpu/XpuProtoMessage$Path;->forbiddenInfo12_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    iget-object v0, p3, Landroid/car/hardware/xpu/XpuProtoMessage$Path;->forbiddenInfo12_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    invoke-interface {p2, p1, v0}, Lcom/android/carsdk/protobuf/GeneratedMessageLite$Visitor;->visitList(Lcom/android/carsdk/protobuf/Internal$ProtobufList;Lcom/android/carsdk/protobuf/Internal$ProtobufList;)Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    move-result-object p1

    iput-object p1, p0, Landroid/car/hardware/xpu/XpuProtoMessage$Path;->forbiddenInfo12_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    .line 18123
    iget-object p1, p0, Landroid/car/hardware/xpu/XpuProtoMessage$Path;->laneInfos_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    iget-object v0, p3, Landroid/car/hardware/xpu/XpuProtoMessage$Path;->laneInfos_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    invoke-interface {p2, p1, v0}, Lcom/android/carsdk/protobuf/GeneratedMessageLite$Visitor;->visitList(Lcom/android/carsdk/protobuf/Internal$ProtobufList;Lcom/android/carsdk/protobuf/Internal$ProtobufList;)Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    move-result-object p1

    iput-object p1, p0, Landroid/car/hardware/xpu/XpuProtoMessage$Path;->laneInfos_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    .line 18124
    iget-object p1, p0, Landroid/car/hardware/xpu/XpuProtoMessage$Path;->maneuverInfos_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    iget-object v0, p3, Landroid/car/hardware/xpu/XpuProtoMessage$Path;->maneuverInfos_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    invoke-interface {p2, p1, v0}, Lcom/android/carsdk/protobuf/GeneratedMessageLite$Visitor;->visitList(Lcom/android/carsdk/protobuf/Internal$ProtobufList;Lcom/android/carsdk/protobuf/Internal$ProtobufList;)Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    move-result-object p1

    iput-object p1, p0, Landroid/car/hardware/xpu/XpuProtoMessage$Path;->maneuverInfos_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    .line 18125
    sget-object p1, Lcom/android/carsdk/protobuf/GeneratedMessageLite$MergeFromVisitor;->INSTANCE:Lcom/android/carsdk/protobuf/GeneratedMessageLite$MergeFromVisitor;

    if-ne p2, p1, :cond_17

    .line 18127
    iget p1, p0, Landroid/car/hardware/xpu/XpuProtoMessage$Path;->bitField0_:I

    iget p2, p3, Landroid/car/hardware/xpu/XpuProtoMessage$Path;->bitField0_:I

    or-int/2addr p1, p2

    iput p1, p0, Landroid/car/hardware/xpu/XpuProtoMessage$Path;->bitField0_:I

    :cond_17
    return-object p0

    .line 18101
    :pswitch_4
    new-instance p1, Landroid/car/hardware/xpu/XpuProtoMessage$Path$Builder;

    invoke-direct {p1, v0}, Landroid/car/hardware/xpu/XpuProtoMessage$Path$Builder;-><init>(Landroid/car/hardware/xpu/XpuProtoMessage$1;)V

    return-object p1

    .line 18089
    :pswitch_5
    iget-object p1, p0, Landroid/car/hardware/xpu/XpuProtoMessage$Path;->segments_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    invoke-interface {p1}, Lcom/android/carsdk/protobuf/Internal$ProtobufList;->makeImmutable()V

    .line 18090
    iget-object p1, p0, Landroid/car/hardware/xpu/XpuProtoMessage$Path;->trafficLights_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    invoke-interface {p1}, Lcom/android/carsdk/protobuf/Internal$ProtobufList;->makeImmutable()V

    .line 18091
    iget-object p1, p0, Landroid/car/hardware/xpu/XpuProtoMessage$Path;->cameras_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    invoke-interface {p1}, Lcom/android/carsdk/protobuf/Internal$ProtobufList;->makeImmutable()V

    .line 18092
    iget-object p1, p0, Landroid/car/hardware/xpu/XpuProtoMessage$Path;->viaPointInfos_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    invoke-interface {p1}, Lcom/android/carsdk/protobuf/Internal$ProtobufList;->makeImmutable()V

    .line 18093
    iget-object p1, p0, Landroid/car/hardware/xpu/XpuProtoMessage$Path;->outerTrafficIncidents_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    invoke-interface {p1}, Lcom/android/carsdk/protobuf/Internal$ProtobufList;->makeImmutable()V

    .line 18094
    iget-object p1, p0, Landroid/car/hardware/xpu/XpuProtoMessage$Path;->innerTrafficIncidents_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    invoke-interface {p1}, Lcom/android/carsdk/protobuf/Internal$ProtobufList;->makeImmutable()V

    .line 18095
    iget-object p1, p0, Landroid/car/hardware/xpu/XpuProtoMessage$Path;->forbiddenInfo12_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    invoke-interface {p1}, Lcom/android/carsdk/protobuf/Internal$ProtobufList;->makeImmutable()V

    .line 18096
    iget-object p1, p0, Landroid/car/hardware/xpu/XpuProtoMessage$Path;->laneInfos_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    invoke-interface {p1}, Lcom/android/carsdk/protobuf/Internal$ProtobufList;->makeImmutable()V

    .line 18097
    iget-object p1, p0, Landroid/car/hardware/xpu/XpuProtoMessage$Path;->maneuverInfos_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    invoke-interface {p1}, Lcom/android/carsdk/protobuf/Internal$ProtobufList;->makeImmutable()V

    return-object v0

    .line 18086
    :pswitch_6
    sget-object p1, Landroid/car/hardware/xpu/XpuProtoMessage$Path;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuProtoMessage$Path;

    return-object p1

    .line 18083
    :pswitch_7
    new-instance p1, Landroid/car/hardware/xpu/XpuProtoMessage$Path;

    invoke-direct {p1}, Landroid/car/hardware/xpu/XpuProtoMessage$Path;-><init>()V

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
        0x0 -> :sswitch_e
        0x8 -> :sswitch_d
        0x12 -> :sswitch_c
        0x1a -> :sswitch_b
        0x22 -> :sswitch_a
        0x2a -> :sswitch_9
        0x31 -> :sswitch_8
        0x38 -> :sswitch_7
        0x40 -> :sswitch_6
        0x4a -> :sswitch_5
        0x52 -> :sswitch_4
        0x58 -> :sswitch_3
        0x62 -> :sswitch_2
        0x72 -> :sswitch_1
        0x7a -> :sswitch_0
    .end sparse-switch
.end method

.method public getCameras(I)Landroid/car/hardware/xpu/XpuProtoMessage$Camera;
    .locals 1

    .line 15850
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$Path;->cameras_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1}, Lcom/android/carsdk/protobuf/Internal$ProtobufList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/car/hardware/xpu/XpuProtoMessage$Camera;

    return-object p1
.end method

.method public getCamerasCount()I
    .locals 1

    .line 15844
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$Path;->cameras_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

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
            "Landroid/car/hardware/xpu/XpuProtoMessage$Camera;",
            ">;"
        }
    .end annotation

    .line 15831
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$Path;->cameras_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    return-object v0
.end method

.method public getCamerasOrBuilder(I)Landroid/car/hardware/xpu/XpuProtoMessage$CameraOrBuilder;
    .locals 1

    .line 15857
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$Path;->cameras_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1}, Lcom/android/carsdk/protobuf/Internal$ProtobufList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/car/hardware/xpu/XpuProtoMessage$CameraOrBuilder;

    return-object p1
.end method

.method public getCamerasOrBuilderList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "+",
            "Landroid/car/hardware/xpu/XpuProtoMessage$CameraOrBuilder;",
            ">;"
        }
    .end annotation

    .line 15838
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$Path;->cameras_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    return-object v0
.end method

.method public getDataVersion()J
    .locals 2

    .line 15568
    iget-wide v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$Path;->dataVersion_:J

    return-wide v0
.end method

.method public getForbiddenInfo12(I)Landroid/car/hardware/xpu/XpuProtoMessage$ForbiddenInfo;
    .locals 1

    .line 16441
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$Path;->forbiddenInfo12_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1}, Lcom/android/carsdk/protobuf/Internal$ProtobufList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/car/hardware/xpu/XpuProtoMessage$ForbiddenInfo;

    return-object p1
.end method

.method public getForbiddenInfo12Count()I
    .locals 1

    .line 16435
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$Path;->forbiddenInfo12_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    invoke-interface {v0}, Lcom/android/carsdk/protobuf/Internal$ProtobufList;->size()I

    move-result v0

    return v0
.end method

.method public getForbiddenInfo12List()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/car/hardware/xpu/XpuProtoMessage$ForbiddenInfo;",
            ">;"
        }
    .end annotation

    .line 16422
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$Path;->forbiddenInfo12_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    return-object v0
.end method

.method public getForbiddenInfo12OrBuilder(I)Landroid/car/hardware/xpu/XpuProtoMessage$ForbiddenInfoOrBuilder;
    .locals 1

    .line 16448
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$Path;->forbiddenInfo12_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1}, Lcom/android/carsdk/protobuf/Internal$ProtobufList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/car/hardware/xpu/XpuProtoMessage$ForbiddenInfoOrBuilder;

    return-object p1
.end method

.method public getForbiddenInfo12OrBuilderList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "+",
            "Landroid/car/hardware/xpu/XpuProtoMessage$ForbiddenInfoOrBuilder;",
            ">;"
        }
    .end annotation

    .line 16429
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$Path;->forbiddenInfo12_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    return-object v0
.end method

.method public getForbiddenInfoCount11()I
    .locals 1

    .line 16397
    iget v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$Path;->forbiddenInfoCount11_:I

    return v0
.end method

.method public getInnerTrafficIncidentCount()I
    .locals 1

    .line 16132
    iget v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$Path;->innerTrafficIncidentCount_:I

    return v0
.end method

.method public getInnerTrafficIncidents(I)Landroid/car/hardware/xpu/XpuProtoMessage$TrafficIncident;
    .locals 1

    .line 16294
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$Path;->innerTrafficIncidents_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1}, Lcom/android/carsdk/protobuf/Internal$ProtobufList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/car/hardware/xpu/XpuProtoMessage$TrafficIncident;

    return-object p1
.end method

.method public getInnerTrafficIncidentsCount()I
    .locals 1

    .line 16288
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$Path;->innerTrafficIncidents_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    invoke-interface {v0}, Lcom/android/carsdk/protobuf/Internal$ProtobufList;->size()I

    move-result v0

    return v0
.end method

.method public getInnerTrafficIncidentsList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/car/hardware/xpu/XpuProtoMessage$TrafficIncident;",
            ">;"
        }
    .end annotation

    .line 16275
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$Path;->innerTrafficIncidents_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    return-object v0
.end method

.method public getInnerTrafficIncidentsOrBuilder(I)Landroid/car/hardware/xpu/XpuProtoMessage$TrafficIncidentOrBuilder;
    .locals 1

    .line 16301
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$Path;->innerTrafficIncidents_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1}, Lcom/android/carsdk/protobuf/Internal$ProtobufList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/car/hardware/xpu/XpuProtoMessage$TrafficIncidentOrBuilder;

    return-object p1
.end method

.method public getInnerTrafficIncidentsOrBuilderList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "+",
            "Landroid/car/hardware/xpu/XpuProtoMessage$TrafficIncidentOrBuilder;",
            ">;"
        }
    .end annotation

    .line 16282
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$Path;->innerTrafficIncidents_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    return-object v0
.end method

.method public getLaneInfos(I)Landroid/car/hardware/xpu/XpuXNgpNaviInfo$LaneInfo;
    .locals 1

    .line 16577
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$Path;->laneInfos_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1}, Lcom/android/carsdk/protobuf/Internal$ProtobufList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$LaneInfo;

    return-object p1
.end method

.method public getLaneInfosCount()I
    .locals 1

    .line 16567
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$Path;->laneInfos_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    invoke-interface {v0}, Lcom/android/carsdk/protobuf/Internal$ProtobufList;->size()I

    move-result v0

    return v0
.end method

.method public getLaneInfosList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/car/hardware/xpu/XpuXNgpNaviInfo$LaneInfo;",
            ">;"
        }
    .end annotation

    .line 16546
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$Path;->laneInfos_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    return-object v0
.end method

.method public getLaneInfosOrBuilder(I)Landroid/car/hardware/xpu/XpuXNgpNaviInfo$LaneInfoOrBuilder;
    .locals 1

    .line 16588
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$Path;->laneInfos_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1}, Lcom/android/carsdk/protobuf/Internal$ProtobufList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$LaneInfoOrBuilder;

    return-object p1
.end method

.method public getLaneInfosOrBuilderList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "+",
            "Landroid/car/hardware/xpu/XpuXNgpNaviInfo$LaneInfoOrBuilder;",
            ">;"
        }
    .end annotation

    .line 16557
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$Path;->laneInfos_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    return-object v0
.end method

.method public getLength()D
    .locals 2

    .line 16071
    iget-wide v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$Path;->length_:D

    return-wide v0
.end method

.method public getManeuverInfos(I)Landroid/car/hardware/xpu/XpuXNgpNaviInfo$ManeuverInfo;
    .locals 1

    .line 16737
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$Path;->maneuverInfos_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1}, Lcom/android/carsdk/protobuf/Internal$ProtobufList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$ManeuverInfo;

    return-object p1
.end method

.method public getManeuverInfosCount()I
    .locals 1

    .line 16731
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$Path;->maneuverInfos_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    invoke-interface {v0}, Lcom/android/carsdk/protobuf/Internal$ProtobufList;->size()I

    move-result v0

    return v0
.end method

.method public getManeuverInfosList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/car/hardware/xpu/XpuXNgpNaviInfo$ManeuverInfo;",
            ">;"
        }
    .end annotation

    .line 16718
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$Path;->maneuverInfos_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    return-object v0
.end method

.method public getManeuverInfosOrBuilder(I)Landroid/car/hardware/xpu/XpuXNgpNaviInfo$ManeuverInfoOrBuilder;
    .locals 1

    .line 16744
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$Path;->maneuverInfos_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1}, Lcom/android/carsdk/protobuf/Internal$ProtobufList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$ManeuverInfoOrBuilder;

    return-object p1
.end method

.method public getManeuverInfosOrBuilderList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "+",
            "Landroid/car/hardware/xpu/XpuXNgpNaviInfo$ManeuverInfoOrBuilder;",
            ">;"
        }
    .end annotation

    .line 16725
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$Path;->maneuverInfos_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    return-object v0
.end method

.method public getOuterTrafficIncidentCount()I
    .locals 1

    .line 16099
    iget v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$Path;->outerTrafficIncidentCount_:I

    return v0
.end method

.method public getOuterTrafficIncidents(I)Landroid/car/hardware/xpu/XpuProtoMessage$TrafficIncident;
    .locals 1

    .line 16174
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$Path;->outerTrafficIncidents_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1}, Lcom/android/carsdk/protobuf/Internal$ProtobufList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/car/hardware/xpu/XpuProtoMessage$TrafficIncident;

    return-object p1
.end method

.method public getOuterTrafficIncidentsCount()I
    .locals 1

    .line 16168
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$Path;->outerTrafficIncidents_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    invoke-interface {v0}, Lcom/android/carsdk/protobuf/Internal$ProtobufList;->size()I

    move-result v0

    return v0
.end method

.method public getOuterTrafficIncidentsList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/car/hardware/xpu/XpuProtoMessage$TrafficIncident;",
            ">;"
        }
    .end annotation

    .line 16155
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$Path;->outerTrafficIncidents_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    return-object v0
.end method

.method public getOuterTrafficIncidentsOrBuilder(I)Landroid/car/hardware/xpu/XpuProtoMessage$TrafficIncidentOrBuilder;
    .locals 1

    .line 16181
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$Path;->outerTrafficIncidents_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1}, Lcom/android/carsdk/protobuf/Internal$ProtobufList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/car/hardware/xpu/XpuProtoMessage$TrafficIncidentOrBuilder;

    return-object p1
.end method

.method public getOuterTrafficIncidentsOrBuilderList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "+",
            "Landroid/car/hardware/xpu/XpuProtoMessage$TrafficIncidentOrBuilder;",
            ">;"
        }
    .end annotation

    .line 16162
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$Path;->outerTrafficIncidents_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    return-object v0
.end method

.method public getSegments(I)Landroid/car/hardware/xpu/XpuProtoMessage$Segment;
    .locals 1

    .line 15610
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$Path;->segments_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1}, Lcom/android/carsdk/protobuf/Internal$ProtobufList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/car/hardware/xpu/XpuProtoMessage$Segment;

    return-object p1
.end method

.method public getSegmentsCount()I
    .locals 1

    .line 15604
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$Path;->segments_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    invoke-interface {v0}, Lcom/android/carsdk/protobuf/Internal$ProtobufList;->size()I

    move-result v0

    return v0
.end method

.method public getSegmentsList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/car/hardware/xpu/XpuProtoMessage$Segment;",
            ">;"
        }
    .end annotation

    .line 15591
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$Path;->segments_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    return-object v0
.end method

.method public getSegmentsOrBuilder(I)Landroid/car/hardware/xpu/XpuProtoMessage$SegmentOrBuilder;
    .locals 1

    .line 15617
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$Path;->segments_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1}, Lcom/android/carsdk/protobuf/Internal$ProtobufList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/car/hardware/xpu/XpuProtoMessage$SegmentOrBuilder;

    return-object p1
.end method

.method public getSegmentsOrBuilderList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "+",
            "Landroid/car/hardware/xpu/XpuProtoMessage$SegmentOrBuilder;",
            ">;"
        }
    .end annotation

    .line 15598
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$Path;->segments_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    return-object v0
.end method

.method public getSerializedSize()I
    .locals 6

    .line 16879
    iget v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$Path;->memoizedSerializedSize:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    return v0

    .line 16883
    :cond_0
    iget-wide v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$Path;->dataVersion_:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    const/4 v3, 0x0

    if-eqz v2, :cond_1

    const/4 v2, 0x1

    .line 16885
    invoke-static {v2, v0, v1}, Lcom/android/carsdk/protobuf/CodedOutputStream;->computeUInt64Size(IJ)I

    move-result v0

    add-int/2addr v0, v3

    goto :goto_0

    :cond_1
    move v0, v3

    :goto_0
    move v1, v3

    .line 16887
    :goto_1
    iget-object v2, p0, Landroid/car/hardware/xpu/XpuProtoMessage$Path;->segments_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    invoke-interface {v2}, Lcom/android/carsdk/protobuf/Internal$ProtobufList;->size()I

    move-result v2

    if-ge v1, v2, :cond_2

    const/4 v2, 0x2

    .line 16888
    iget-object v4, p0, Landroid/car/hardware/xpu/XpuProtoMessage$Path;->segments_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    .line 16889
    invoke-interface {v4, v1}, Lcom/android/carsdk/protobuf/Internal$ProtobufList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/carsdk/protobuf/MessageLite;

    invoke-static {v2, v4}, Lcom/android/carsdk/protobuf/CodedOutputStream;->computeMessageSize(ILcom/android/carsdk/protobuf/MessageLite;)I

    move-result v2

    add-int/2addr v0, v2

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_2
    move v1, v3

    .line 16891
    :goto_2
    iget-object v2, p0, Landroid/car/hardware/xpu/XpuProtoMessage$Path;->trafficLights_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    invoke-interface {v2}, Lcom/android/carsdk/protobuf/Internal$ProtobufList;->size()I

    move-result v2

    if-ge v1, v2, :cond_3

    const/4 v2, 0x3

    .line 16892
    iget-object v4, p0, Landroid/car/hardware/xpu/XpuProtoMessage$Path;->trafficLights_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    .line 16893
    invoke-interface {v4, v1}, Lcom/android/carsdk/protobuf/Internal$ProtobufList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/carsdk/protobuf/MessageLite;

    invoke-static {v2, v4}, Lcom/android/carsdk/protobuf/CodedOutputStream;->computeMessageSize(ILcom/android/carsdk/protobuf/MessageLite;)I

    move-result v2

    add-int/2addr v0, v2

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_3
    move v1, v3

    .line 16895
    :goto_3
    iget-object v2, p0, Landroid/car/hardware/xpu/XpuProtoMessage$Path;->cameras_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    invoke-interface {v2}, Lcom/android/carsdk/protobuf/Internal$ProtobufList;->size()I

    move-result v2

    if-ge v1, v2, :cond_4

    const/4 v2, 0x4

    .line 16896
    iget-object v4, p0, Landroid/car/hardware/xpu/XpuProtoMessage$Path;->cameras_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    .line 16897
    invoke-interface {v4, v1}, Lcom/android/carsdk/protobuf/Internal$ProtobufList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/carsdk/protobuf/MessageLite;

    invoke-static {v2, v4}, Lcom/android/carsdk/protobuf/CodedOutputStream;->computeMessageSize(ILcom/android/carsdk/protobuf/MessageLite;)I

    move-result v2

    add-int/2addr v0, v2

    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_4
    move v1, v3

    .line 16899
    :goto_4
    iget-object v2, p0, Landroid/car/hardware/xpu/XpuProtoMessage$Path;->viaPointInfos_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    invoke-interface {v2}, Lcom/android/carsdk/protobuf/Internal$ProtobufList;->size()I

    move-result v2

    if-ge v1, v2, :cond_5

    const/4 v2, 0x5

    .line 16900
    iget-object v4, p0, Landroid/car/hardware/xpu/XpuProtoMessage$Path;->viaPointInfos_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    .line 16901
    invoke-interface {v4, v1}, Lcom/android/carsdk/protobuf/Internal$ProtobufList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/carsdk/protobuf/MessageLite;

    invoke-static {v2, v4}, Lcom/android/carsdk/protobuf/CodedOutputStream;->computeMessageSize(ILcom/android/carsdk/protobuf/MessageLite;)I

    move-result v2

    add-int/2addr v0, v2

    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 16903
    :cond_5
    iget-wide v1, p0, Landroid/car/hardware/xpu/XpuProtoMessage$Path;->length_:D

    const-wide/16 v4, 0x0

    cmpl-double v4, v1, v4

    if-eqz v4, :cond_6

    const/4 v4, 0x6

    .line 16905
    invoke-static {v4, v1, v2}, Lcom/android/carsdk/protobuf/CodedOutputStream;->computeDoubleSize(ID)I

    move-result v1

    add-int/2addr v0, v1

    .line 16907
    :cond_6
    iget v1, p0, Landroid/car/hardware/xpu/XpuProtoMessage$Path;->outerTrafficIncidentCount_:I

    if-eqz v1, :cond_7

    const/4 v2, 0x7

    .line 16909
    invoke-static {v2, v1}, Lcom/android/carsdk/protobuf/CodedOutputStream;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 16911
    :cond_7
    iget v1, p0, Landroid/car/hardware/xpu/XpuProtoMessage$Path;->innerTrafficIncidentCount_:I

    if-eqz v1, :cond_8

    const/16 v2, 0x8

    .line 16913
    invoke-static {v2, v1}, Lcom/android/carsdk/protobuf/CodedOutputStream;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    :cond_8
    move v1, v3

    .line 16915
    :goto_5
    iget-object v2, p0, Landroid/car/hardware/xpu/XpuProtoMessage$Path;->outerTrafficIncidents_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    invoke-interface {v2}, Lcom/android/carsdk/protobuf/Internal$ProtobufList;->size()I

    move-result v2

    if-ge v1, v2, :cond_9

    const/16 v2, 0x9

    .line 16916
    iget-object v4, p0, Landroid/car/hardware/xpu/XpuProtoMessage$Path;->outerTrafficIncidents_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    .line 16917
    invoke-interface {v4, v1}, Lcom/android/carsdk/protobuf/Internal$ProtobufList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/carsdk/protobuf/MessageLite;

    invoke-static {v2, v4}, Lcom/android/carsdk/protobuf/CodedOutputStream;->computeMessageSize(ILcom/android/carsdk/protobuf/MessageLite;)I

    move-result v2

    add-int/2addr v0, v2

    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    :cond_9
    move v1, v3

    .line 16919
    :goto_6
    iget-object v2, p0, Landroid/car/hardware/xpu/XpuProtoMessage$Path;->innerTrafficIncidents_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    invoke-interface {v2}, Lcom/android/carsdk/protobuf/Internal$ProtobufList;->size()I

    move-result v2

    if-ge v1, v2, :cond_a

    const/16 v2, 0xa

    .line 16920
    iget-object v4, p0, Landroid/car/hardware/xpu/XpuProtoMessage$Path;->innerTrafficIncidents_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    .line 16921
    invoke-interface {v4, v1}, Lcom/android/carsdk/protobuf/Internal$ProtobufList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/carsdk/protobuf/MessageLite;

    invoke-static {v2, v4}, Lcom/android/carsdk/protobuf/CodedOutputStream;->computeMessageSize(ILcom/android/carsdk/protobuf/MessageLite;)I

    move-result v2

    add-int/2addr v0, v2

    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    .line 16923
    :cond_a
    iget v1, p0, Landroid/car/hardware/xpu/XpuProtoMessage$Path;->forbiddenInfoCount11_:I

    if-eqz v1, :cond_b

    const/16 v2, 0xb

    .line 16925
    invoke-static {v2, v1}, Lcom/android/carsdk/protobuf/CodedOutputStream;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    :cond_b
    move v1, v3

    .line 16927
    :goto_7
    iget-object v2, p0, Landroid/car/hardware/xpu/XpuProtoMessage$Path;->forbiddenInfo12_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    invoke-interface {v2}, Lcom/android/carsdk/protobuf/Internal$ProtobufList;->size()I

    move-result v2

    if-ge v1, v2, :cond_c

    const/16 v2, 0xc

    .line 16928
    iget-object v4, p0, Landroid/car/hardware/xpu/XpuProtoMessage$Path;->forbiddenInfo12_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    .line 16929
    invoke-interface {v4, v1}, Lcom/android/carsdk/protobuf/Internal$ProtobufList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/carsdk/protobuf/MessageLite;

    invoke-static {v2, v4}, Lcom/android/carsdk/protobuf/CodedOutputStream;->computeMessageSize(ILcom/android/carsdk/protobuf/MessageLite;)I

    move-result v2

    add-int/2addr v0, v2

    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    :cond_c
    move v1, v3

    .line 16931
    :goto_8
    iget-object v2, p0, Landroid/car/hardware/xpu/XpuProtoMessage$Path;->laneInfos_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    invoke-interface {v2}, Lcom/android/carsdk/protobuf/Internal$ProtobufList;->size()I

    move-result v2

    if-ge v1, v2, :cond_d

    const/16 v2, 0xe

    .line 16932
    iget-object v4, p0, Landroid/car/hardware/xpu/XpuProtoMessage$Path;->laneInfos_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    .line 16933
    invoke-interface {v4, v1}, Lcom/android/carsdk/protobuf/Internal$ProtobufList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/carsdk/protobuf/MessageLite;

    invoke-static {v2, v4}, Lcom/android/carsdk/protobuf/CodedOutputStream;->computeMessageSize(ILcom/android/carsdk/protobuf/MessageLite;)I

    move-result v2

    add-int/2addr v0, v2

    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    .line 16935
    :cond_d
    :goto_9
    iget-object v1, p0, Landroid/car/hardware/xpu/XpuProtoMessage$Path;->maneuverInfos_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    invoke-interface {v1}, Lcom/android/carsdk/protobuf/Internal$ProtobufList;->size()I

    move-result v1

    if-ge v3, v1, :cond_e

    const/16 v1, 0xf

    .line 16936
    iget-object v2, p0, Landroid/car/hardware/xpu/XpuProtoMessage$Path;->maneuverInfos_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    .line 16937
    invoke-interface {v2, v3}, Lcom/android/carsdk/protobuf/Internal$ProtobufList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/carsdk/protobuf/MessageLite;

    invoke-static {v1, v2}, Lcom/android/carsdk/protobuf/CodedOutputStream;->computeMessageSize(ILcom/android/carsdk/protobuf/MessageLite;)I

    move-result v1

    add-int/2addr v0, v1

    add-int/lit8 v3, v3, 0x1

    goto :goto_9

    .line 16939
    :cond_e
    iput v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$Path;->memoizedSerializedSize:I

    return v0
.end method

.method public getTrafficLights(I)Landroid/car/hardware/xpu/XpuProtoMessage$V2_Point;
    .locals 1

    .line 15730
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$Path;->trafficLights_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1}, Lcom/android/carsdk/protobuf/Internal$ProtobufList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/car/hardware/xpu/XpuProtoMessage$V2_Point;

    return-object p1
.end method

.method public getTrafficLightsCount()I
    .locals 1

    .line 15724
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$Path;->trafficLights_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    invoke-interface {v0}, Lcom/android/carsdk/protobuf/Internal$ProtobufList;->size()I

    move-result v0

    return v0
.end method

.method public getTrafficLightsList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/car/hardware/xpu/XpuProtoMessage$V2_Point;",
            ">;"
        }
    .end annotation

    .line 15711
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$Path;->trafficLights_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    return-object v0
.end method

.method public getTrafficLightsOrBuilder(I)Landroid/car/hardware/xpu/XpuProtoMessage$V2_PointOrBuilder;
    .locals 1

    .line 15737
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$Path;->trafficLights_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1}, Lcom/android/carsdk/protobuf/Internal$ProtobufList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/car/hardware/xpu/XpuProtoMessage$V2_PointOrBuilder;

    return-object p1
.end method

.method public getTrafficLightsOrBuilderList()Ljava/util/List;
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

    .line 15718
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$Path;->trafficLights_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    return-object v0
.end method

.method public getViaPointInfos(I)Landroid/car/hardware/xpu/XpuProtoMessage$ViaPointInfo;
    .locals 1

    .line 15970
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$Path;->viaPointInfos_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1}, Lcom/android/carsdk/protobuf/Internal$ProtobufList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/car/hardware/xpu/XpuProtoMessage$ViaPointInfo;

    return-object p1
.end method

.method public getViaPointInfosCount()I
    .locals 1

    .line 15964
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$Path;->viaPointInfos_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    invoke-interface {v0}, Lcom/android/carsdk/protobuf/Internal$ProtobufList;->size()I

    move-result v0

    return v0
.end method

.method public getViaPointInfosList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/car/hardware/xpu/XpuProtoMessage$ViaPointInfo;",
            ">;"
        }
    .end annotation

    .line 15951
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$Path;->viaPointInfos_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    return-object v0
.end method

.method public getViaPointInfosOrBuilder(I)Landroid/car/hardware/xpu/XpuProtoMessage$ViaPointInfoOrBuilder;
    .locals 1

    .line 15977
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$Path;->viaPointInfos_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1}, Lcom/android/carsdk/protobuf/Internal$ProtobufList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/car/hardware/xpu/XpuProtoMessage$ViaPointInfoOrBuilder;

    return-object p1
.end method

.method public getViaPointInfosOrBuilderList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "+",
            "Landroid/car/hardware/xpu/XpuProtoMessage$ViaPointInfoOrBuilder;",
            ">;"
        }
    .end annotation

    .line 15958
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$Path;->viaPointInfos_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    return-object v0
.end method

.method public writeTo(Lcom/android/carsdk/protobuf/CodedOutputStream;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 16834
    iget-wide v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$Path;->dataVersion_:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    .line 16835
    invoke-virtual {p1, v2, v0, v1}, Lcom/android/carsdk/protobuf/CodedOutputStream;->writeUInt64(IJ)V

    :cond_0
    const/4 v0, 0x0

    move v1, v0

    .line 16837
    :goto_0
    iget-object v2, p0, Landroid/car/hardware/xpu/XpuProtoMessage$Path;->segments_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    invoke-interface {v2}, Lcom/android/carsdk/protobuf/Internal$ProtobufList;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    const/4 v2, 0x2

    .line 16838
    iget-object v3, p0, Landroid/car/hardware/xpu/XpuProtoMessage$Path;->segments_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    invoke-interface {v3, v1}, Lcom/android/carsdk/protobuf/Internal$ProtobufList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/carsdk/protobuf/MessageLite;

    invoke-virtual {p1, v2, v3}, Lcom/android/carsdk/protobuf/CodedOutputStream;->writeMessage(ILcom/android/carsdk/protobuf/MessageLite;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    move v1, v0

    .line 16840
    :goto_1
    iget-object v2, p0, Landroid/car/hardware/xpu/XpuProtoMessage$Path;->trafficLights_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    invoke-interface {v2}, Lcom/android/carsdk/protobuf/Internal$ProtobufList;->size()I

    move-result v2

    if-ge v1, v2, :cond_2

    const/4 v2, 0x3

    .line 16841
    iget-object v3, p0, Landroid/car/hardware/xpu/XpuProtoMessage$Path;->trafficLights_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    invoke-interface {v3, v1}, Lcom/android/carsdk/protobuf/Internal$ProtobufList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/carsdk/protobuf/MessageLite;

    invoke-virtual {p1, v2, v3}, Lcom/android/carsdk/protobuf/CodedOutputStream;->writeMessage(ILcom/android/carsdk/protobuf/MessageLite;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_2
    move v1, v0

    .line 16843
    :goto_2
    iget-object v2, p0, Landroid/car/hardware/xpu/XpuProtoMessage$Path;->cameras_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    invoke-interface {v2}, Lcom/android/carsdk/protobuf/Internal$ProtobufList;->size()I

    move-result v2

    if-ge v1, v2, :cond_3

    const/4 v2, 0x4

    .line 16844
    iget-object v3, p0, Landroid/car/hardware/xpu/XpuProtoMessage$Path;->cameras_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    invoke-interface {v3, v1}, Lcom/android/carsdk/protobuf/Internal$ProtobufList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/carsdk/protobuf/MessageLite;

    invoke-virtual {p1, v2, v3}, Lcom/android/carsdk/protobuf/CodedOutputStream;->writeMessage(ILcom/android/carsdk/protobuf/MessageLite;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_3
    move v1, v0

    .line 16846
    :goto_3
    iget-object v2, p0, Landroid/car/hardware/xpu/XpuProtoMessage$Path;->viaPointInfos_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    invoke-interface {v2}, Lcom/android/carsdk/protobuf/Internal$ProtobufList;->size()I

    move-result v2

    if-ge v1, v2, :cond_4

    const/4 v2, 0x5

    .line 16847
    iget-object v3, p0, Landroid/car/hardware/xpu/XpuProtoMessage$Path;->viaPointInfos_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    invoke-interface {v3, v1}, Lcom/android/carsdk/protobuf/Internal$ProtobufList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/carsdk/protobuf/MessageLite;

    invoke-virtual {p1, v2, v3}, Lcom/android/carsdk/protobuf/CodedOutputStream;->writeMessage(ILcom/android/carsdk/protobuf/MessageLite;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 16849
    :cond_4
    iget-wide v1, p0, Landroid/car/hardware/xpu/XpuProtoMessage$Path;->length_:D

    const-wide/16 v3, 0x0

    cmpl-double v3, v1, v3

    if-eqz v3, :cond_5

    const/4 v3, 0x6

    .line 16850
    invoke-virtual {p1, v3, v1, v2}, Lcom/android/carsdk/protobuf/CodedOutputStream;->writeDouble(ID)V

    .line 16852
    :cond_5
    iget v1, p0, Landroid/car/hardware/xpu/XpuProtoMessage$Path;->outerTrafficIncidentCount_:I

    if-eqz v1, :cond_6

    const/4 v2, 0x7

    .line 16853
    invoke-virtual {p1, v2, v1}, Lcom/android/carsdk/protobuf/CodedOutputStream;->writeInt32(II)V

    .line 16855
    :cond_6
    iget v1, p0, Landroid/car/hardware/xpu/XpuProtoMessage$Path;->innerTrafficIncidentCount_:I

    if-eqz v1, :cond_7

    const/16 v2, 0x8

    .line 16856
    invoke-virtual {p1, v2, v1}, Lcom/android/carsdk/protobuf/CodedOutputStream;->writeInt32(II)V

    :cond_7
    move v1, v0

    .line 16858
    :goto_4
    iget-object v2, p0, Landroid/car/hardware/xpu/XpuProtoMessage$Path;->outerTrafficIncidents_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    invoke-interface {v2}, Lcom/android/carsdk/protobuf/Internal$ProtobufList;->size()I

    move-result v2

    if-ge v1, v2, :cond_8

    const/16 v2, 0x9

    .line 16859
    iget-object v3, p0, Landroid/car/hardware/xpu/XpuProtoMessage$Path;->outerTrafficIncidents_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    invoke-interface {v3, v1}, Lcom/android/carsdk/protobuf/Internal$ProtobufList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/carsdk/protobuf/MessageLite;

    invoke-virtual {p1, v2, v3}, Lcom/android/carsdk/protobuf/CodedOutputStream;->writeMessage(ILcom/android/carsdk/protobuf/MessageLite;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    :cond_8
    move v1, v0

    .line 16861
    :goto_5
    iget-object v2, p0, Landroid/car/hardware/xpu/XpuProtoMessage$Path;->innerTrafficIncidents_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    invoke-interface {v2}, Lcom/android/carsdk/protobuf/Internal$ProtobufList;->size()I

    move-result v2

    if-ge v1, v2, :cond_9

    const/16 v2, 0xa

    .line 16862
    iget-object v3, p0, Landroid/car/hardware/xpu/XpuProtoMessage$Path;->innerTrafficIncidents_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    invoke-interface {v3, v1}, Lcom/android/carsdk/protobuf/Internal$ProtobufList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/carsdk/protobuf/MessageLite;

    invoke-virtual {p1, v2, v3}, Lcom/android/carsdk/protobuf/CodedOutputStream;->writeMessage(ILcom/android/carsdk/protobuf/MessageLite;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 16864
    :cond_9
    iget v1, p0, Landroid/car/hardware/xpu/XpuProtoMessage$Path;->forbiddenInfoCount11_:I

    if-eqz v1, :cond_a

    const/16 v2, 0xb

    .line 16865
    invoke-virtual {p1, v2, v1}, Lcom/android/carsdk/protobuf/CodedOutputStream;->writeInt32(II)V

    :cond_a
    move v1, v0

    .line 16867
    :goto_6
    iget-object v2, p0, Landroid/car/hardware/xpu/XpuProtoMessage$Path;->forbiddenInfo12_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    invoke-interface {v2}, Lcom/android/carsdk/protobuf/Internal$ProtobufList;->size()I

    move-result v2

    if-ge v1, v2, :cond_b

    const/16 v2, 0xc

    .line 16868
    iget-object v3, p0, Landroid/car/hardware/xpu/XpuProtoMessage$Path;->forbiddenInfo12_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    invoke-interface {v3, v1}, Lcom/android/carsdk/protobuf/Internal$ProtobufList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/carsdk/protobuf/MessageLite;

    invoke-virtual {p1, v2, v3}, Lcom/android/carsdk/protobuf/CodedOutputStream;->writeMessage(ILcom/android/carsdk/protobuf/MessageLite;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    :cond_b
    move v1, v0

    .line 16870
    :goto_7
    iget-object v2, p0, Landroid/car/hardware/xpu/XpuProtoMessage$Path;->laneInfos_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    invoke-interface {v2}, Lcom/android/carsdk/protobuf/Internal$ProtobufList;->size()I

    move-result v2

    if-ge v1, v2, :cond_c

    const/16 v2, 0xe

    .line 16871
    iget-object v3, p0, Landroid/car/hardware/xpu/XpuProtoMessage$Path;->laneInfos_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    invoke-interface {v3, v1}, Lcom/android/carsdk/protobuf/Internal$ProtobufList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/carsdk/protobuf/MessageLite;

    invoke-virtual {p1, v2, v3}, Lcom/android/carsdk/protobuf/CodedOutputStream;->writeMessage(ILcom/android/carsdk/protobuf/MessageLite;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 16873
    :cond_c
    :goto_8
    iget-object v1, p0, Landroid/car/hardware/xpu/XpuProtoMessage$Path;->maneuverInfos_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    invoke-interface {v1}, Lcom/android/carsdk/protobuf/Internal$ProtobufList;->size()I

    move-result v1

    if-ge v0, v1, :cond_d

    const/16 v1, 0xf

    .line 16874
    iget-object v2, p0, Landroid/car/hardware/xpu/XpuProtoMessage$Path;->maneuverInfos_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    invoke-interface {v2, v0}, Lcom/android/carsdk/protobuf/Internal$ProtobufList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/carsdk/protobuf/MessageLite;

    invoke-virtual {p1, v1, v2}, Lcom/android/carsdk/protobuf/CodedOutputStream;->writeMessage(ILcom/android/carsdk/protobuf/MessageLite;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_8

    :cond_d
    return-void
.end method
