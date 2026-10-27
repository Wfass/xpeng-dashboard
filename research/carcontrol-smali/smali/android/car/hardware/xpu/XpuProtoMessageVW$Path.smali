.class public final Landroid/car/hardware/xpu/XpuProtoMessageVW$Path;
.super Lcom/android/carsdk/protobuf/GeneratedMessageLite;
.source "XpuProtoMessageVW.java"

# interfaces
.implements Landroid/car/hardware/xpu/XpuProtoMessageVW$PathOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/car/hardware/xpu/XpuProtoMessageVW;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Path"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/car/hardware/xpu/XpuProtoMessageVW$Path$Builder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/carsdk/protobuf/GeneratedMessageLite<",
        "Landroid/car/hardware/xpu/XpuProtoMessageVW$Path;",
        "Landroid/car/hardware/xpu/XpuProtoMessageVW$Path$Builder;",
        ">;",
        "Landroid/car/hardware/xpu/XpuProtoMessageVW$PathOrBuilder;"
    }
.end annotation


# static fields
.field public static final CAMERAS_FIELD_NUMBER:I = 0x4

.field public static final DATA_VERSION_FIELD_NUMBER:I = 0x1

.field private static final DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuProtoMessageVW$Path;

.field public static final FORBIDDEN_INFO_COUNT_FIELD_NUMBER:I = 0xb

.field public static final FORBIDDEN_INFO_FIELD_NUMBER:I = 0xc

.field public static final INNER_TRAFFIC_INCIDENTS_FIELD_NUMBER:I = 0xa

.field public static final INNER_TRAFFIC_INCIDENT_COUNT_FIELD_NUMBER:I = 0x8

.field public static final LENGTH_FIELD_NUMBER:I = 0x6

.field public static final OUTER_TRAFFIC_INCIDENTS_FIELD_NUMBER:I = 0x9

.field public static final OUTER_TRAFFIC_INCIDENT_COUNT_FIELD_NUMBER:I = 0x7

.field private static volatile PARSER:Lcom/android/carsdk/protobuf/Parser; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/carsdk/protobuf/Parser<",
            "Landroid/car/hardware/xpu/XpuProtoMessageVW$Path;",
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
            "Landroid/car/hardware/xpu/XpuProtoMessageVW$Camera;",
            ">;"
        }
    .end annotation
.end field

.field private dataVersion_:J

.field private forbiddenInfo12_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/carsdk/protobuf/Internal$ProtobufList<",
            "Landroid/car/hardware/xpu/XpuProtoMessageVW$ForbiddenInfo;",
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
            "Landroid/car/hardware/xpu/XpuProtoMessageVW$TrafficIncident;",
            ">;"
        }
    .end annotation
.end field

.field private length_:D

.field private outerTrafficIncidentCount_:I

.field private outerTrafficIncidents_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/carsdk/protobuf/Internal$ProtobufList<",
            "Landroid/car/hardware/xpu/XpuProtoMessageVW$TrafficIncident;",
            ">;"
        }
    .end annotation
.end field

.field private segments_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/carsdk/protobuf/Internal$ProtobufList<",
            "Landroid/car/hardware/xpu/XpuProtoMessageVW$Segment;",
            ">;"
        }
    .end annotation
.end field

.field private trafficLights_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/carsdk/protobuf/Internal$ProtobufList<",
            "Landroid/car/hardware/xpu/XpuProtoMessageVW$V2_Point;",
            ">;"
        }
    .end annotation
.end field

.field private viaPointInfos_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/carsdk/protobuf/Internal$ProtobufList<",
            "Landroid/car/hardware/xpu/XpuProtoMessageVW$ViaPointInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 18198
    new-instance v0, Landroid/car/hardware/xpu/XpuProtoMessageVW$Path;

    invoke-direct {v0}, Landroid/car/hardware/xpu/XpuProtoMessageVW$Path;-><init>()V

    sput-object v0, Landroid/car/hardware/xpu/XpuProtoMessageVW$Path;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuProtoMessageVW$Path;

    .line 18199
    invoke-virtual {v0}, Landroid/car/hardware/xpu/XpuProtoMessageVW$Path;->makeImmutable()V

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .line 16032
    invoke-direct {p0}, Lcom/android/carsdk/protobuf/GeneratedMessageLite;-><init>()V

    const-wide/16 v0, 0x0

    .line 16033
    iput-wide v0, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$Path;->dataVersion_:J

    .line 16034
    invoke-static {}, Landroid/car/hardware/xpu/XpuProtoMessageVW$Path;->emptyProtobufList()Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    move-result-object v0

    iput-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$Path;->segments_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    .line 16035
    invoke-static {}, Landroid/car/hardware/xpu/XpuProtoMessageVW$Path;->emptyProtobufList()Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    move-result-object v0

    iput-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$Path;->trafficLights_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    .line 16036
    invoke-static {}, Landroid/car/hardware/xpu/XpuProtoMessageVW$Path;->emptyProtobufList()Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    move-result-object v0

    iput-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$Path;->cameras_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    .line 16037
    invoke-static {}, Landroid/car/hardware/xpu/XpuProtoMessageVW$Path;->emptyProtobufList()Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    move-result-object v0

    iput-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$Path;->viaPointInfos_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    const-wide/16 v0, 0x0

    .line 16038
    iput-wide v0, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$Path;->length_:D

    const/4 v0, 0x0

    .line 16039
    iput v0, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$Path;->outerTrafficIncidentCount_:I

    .line 16040
    iput v0, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$Path;->innerTrafficIncidentCount_:I

    .line 16041
    invoke-static {}, Landroid/car/hardware/xpu/XpuProtoMessageVW$Path;->emptyProtobufList()Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    move-result-object v1

    iput-object v1, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$Path;->outerTrafficIncidents_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    .line 16042
    invoke-static {}, Landroid/car/hardware/xpu/XpuProtoMessageVW$Path;->emptyProtobufList()Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    move-result-object v1

    iput-object v1, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$Path;->innerTrafficIncidents_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    .line 16043
    iput v0, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$Path;->forbiddenInfoCount11_:I

    .line 16044
    invoke-static {}, Landroid/car/hardware/xpu/XpuProtoMessageVW$Path;->emptyProtobufList()Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    move-result-object v0

    iput-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$Path;->forbiddenInfo12_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    return-void
.end method

.method static synthetic access$36000()Landroid/car/hardware/xpu/XpuProtoMessageVW$Path;
    .locals 1

    .line 16027
    sget-object v0, Landroid/car/hardware/xpu/XpuProtoMessageVW$Path;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuProtoMessageVW$Path;

    return-object v0
.end method

.method static synthetic access$36100(Landroid/car/hardware/xpu/XpuProtoMessageVW$Path;J)V
    .locals 0

    .line 16027
    invoke-direct {p0, p1, p2}, Landroid/car/hardware/xpu/XpuProtoMessageVW$Path;->setDataVersion(J)V

    return-void
.end method

.method static synthetic access$36200(Landroid/car/hardware/xpu/XpuProtoMessageVW$Path;)V
    .locals 0

    .line 16027
    invoke-direct {p0}, Landroid/car/hardware/xpu/XpuProtoMessageVW$Path;->clearDataVersion()V

    return-void
.end method

.method static synthetic access$36300(Landroid/car/hardware/xpu/XpuProtoMessageVW$Path;ILandroid/car/hardware/xpu/XpuProtoMessageVW$Segment;)V
    .locals 0

    .line 16027
    invoke-direct {p0, p1, p2}, Landroid/car/hardware/xpu/XpuProtoMessageVW$Path;->setSegments(ILandroid/car/hardware/xpu/XpuProtoMessageVW$Segment;)V

    return-void
.end method

.method static synthetic access$36400(Landroid/car/hardware/xpu/XpuProtoMessageVW$Path;ILandroid/car/hardware/xpu/XpuProtoMessageVW$Segment$Builder;)V
    .locals 0

    .line 16027
    invoke-direct {p0, p1, p2}, Landroid/car/hardware/xpu/XpuProtoMessageVW$Path;->setSegments(ILandroid/car/hardware/xpu/XpuProtoMessageVW$Segment$Builder;)V

    return-void
.end method

.method static synthetic access$36500(Landroid/car/hardware/xpu/XpuProtoMessageVW$Path;Landroid/car/hardware/xpu/XpuProtoMessageVW$Segment;)V
    .locals 0

    .line 16027
    invoke-direct {p0, p1}, Landroid/car/hardware/xpu/XpuProtoMessageVW$Path;->addSegments(Landroid/car/hardware/xpu/XpuProtoMessageVW$Segment;)V

    return-void
.end method

.method static synthetic access$36600(Landroid/car/hardware/xpu/XpuProtoMessageVW$Path;ILandroid/car/hardware/xpu/XpuProtoMessageVW$Segment;)V
    .locals 0

    .line 16027
    invoke-direct {p0, p1, p2}, Landroid/car/hardware/xpu/XpuProtoMessageVW$Path;->addSegments(ILandroid/car/hardware/xpu/XpuProtoMessageVW$Segment;)V

    return-void
.end method

.method static synthetic access$36700(Landroid/car/hardware/xpu/XpuProtoMessageVW$Path;Landroid/car/hardware/xpu/XpuProtoMessageVW$Segment$Builder;)V
    .locals 0

    .line 16027
    invoke-direct {p0, p1}, Landroid/car/hardware/xpu/XpuProtoMessageVW$Path;->addSegments(Landroid/car/hardware/xpu/XpuProtoMessageVW$Segment$Builder;)V

    return-void
.end method

.method static synthetic access$36800(Landroid/car/hardware/xpu/XpuProtoMessageVW$Path;ILandroid/car/hardware/xpu/XpuProtoMessageVW$Segment$Builder;)V
    .locals 0

    .line 16027
    invoke-direct {p0, p1, p2}, Landroid/car/hardware/xpu/XpuProtoMessageVW$Path;->addSegments(ILandroid/car/hardware/xpu/XpuProtoMessageVW$Segment$Builder;)V

    return-void
.end method

.method static synthetic access$36900(Landroid/car/hardware/xpu/XpuProtoMessageVW$Path;Ljava/lang/Iterable;)V
    .locals 0

    .line 16027
    invoke-direct {p0, p1}, Landroid/car/hardware/xpu/XpuProtoMessageVW$Path;->addAllSegments(Ljava/lang/Iterable;)V

    return-void
.end method

.method static synthetic access$37000(Landroid/car/hardware/xpu/XpuProtoMessageVW$Path;)V
    .locals 0

    .line 16027
    invoke-direct {p0}, Landroid/car/hardware/xpu/XpuProtoMessageVW$Path;->clearSegments()V

    return-void
.end method

.method static synthetic access$37100(Landroid/car/hardware/xpu/XpuProtoMessageVW$Path;I)V
    .locals 0

    .line 16027
    invoke-direct {p0, p1}, Landroid/car/hardware/xpu/XpuProtoMessageVW$Path;->removeSegments(I)V

    return-void
.end method

.method static synthetic access$37200(Landroid/car/hardware/xpu/XpuProtoMessageVW$Path;ILandroid/car/hardware/xpu/XpuProtoMessageVW$V2_Point;)V
    .locals 0

    .line 16027
    invoke-direct {p0, p1, p2}, Landroid/car/hardware/xpu/XpuProtoMessageVW$Path;->setTrafficLights(ILandroid/car/hardware/xpu/XpuProtoMessageVW$V2_Point;)V

    return-void
.end method

.method static synthetic access$37300(Landroid/car/hardware/xpu/XpuProtoMessageVW$Path;ILandroid/car/hardware/xpu/XpuProtoMessageVW$V2_Point$Builder;)V
    .locals 0

    .line 16027
    invoke-direct {p0, p1, p2}, Landroid/car/hardware/xpu/XpuProtoMessageVW$Path;->setTrafficLights(ILandroid/car/hardware/xpu/XpuProtoMessageVW$V2_Point$Builder;)V

    return-void
.end method

.method static synthetic access$37400(Landroid/car/hardware/xpu/XpuProtoMessageVW$Path;Landroid/car/hardware/xpu/XpuProtoMessageVW$V2_Point;)V
    .locals 0

    .line 16027
    invoke-direct {p0, p1}, Landroid/car/hardware/xpu/XpuProtoMessageVW$Path;->addTrafficLights(Landroid/car/hardware/xpu/XpuProtoMessageVW$V2_Point;)V

    return-void
.end method

.method static synthetic access$37500(Landroid/car/hardware/xpu/XpuProtoMessageVW$Path;ILandroid/car/hardware/xpu/XpuProtoMessageVW$V2_Point;)V
    .locals 0

    .line 16027
    invoke-direct {p0, p1, p2}, Landroid/car/hardware/xpu/XpuProtoMessageVW$Path;->addTrafficLights(ILandroid/car/hardware/xpu/XpuProtoMessageVW$V2_Point;)V

    return-void
.end method

.method static synthetic access$37600(Landroid/car/hardware/xpu/XpuProtoMessageVW$Path;Landroid/car/hardware/xpu/XpuProtoMessageVW$V2_Point$Builder;)V
    .locals 0

    .line 16027
    invoke-direct {p0, p1}, Landroid/car/hardware/xpu/XpuProtoMessageVW$Path;->addTrafficLights(Landroid/car/hardware/xpu/XpuProtoMessageVW$V2_Point$Builder;)V

    return-void
.end method

.method static synthetic access$37700(Landroid/car/hardware/xpu/XpuProtoMessageVW$Path;ILandroid/car/hardware/xpu/XpuProtoMessageVW$V2_Point$Builder;)V
    .locals 0

    .line 16027
    invoke-direct {p0, p1, p2}, Landroid/car/hardware/xpu/XpuProtoMessageVW$Path;->addTrafficLights(ILandroid/car/hardware/xpu/XpuProtoMessageVW$V2_Point$Builder;)V

    return-void
.end method

.method static synthetic access$37800(Landroid/car/hardware/xpu/XpuProtoMessageVW$Path;Ljava/lang/Iterable;)V
    .locals 0

    .line 16027
    invoke-direct {p0, p1}, Landroid/car/hardware/xpu/XpuProtoMessageVW$Path;->addAllTrafficLights(Ljava/lang/Iterable;)V

    return-void
.end method

.method static synthetic access$37900(Landroid/car/hardware/xpu/XpuProtoMessageVW$Path;)V
    .locals 0

    .line 16027
    invoke-direct {p0}, Landroid/car/hardware/xpu/XpuProtoMessageVW$Path;->clearTrafficLights()V

    return-void
.end method

.method static synthetic access$38000(Landroid/car/hardware/xpu/XpuProtoMessageVW$Path;I)V
    .locals 0

    .line 16027
    invoke-direct {p0, p1}, Landroid/car/hardware/xpu/XpuProtoMessageVW$Path;->removeTrafficLights(I)V

    return-void
.end method

.method static synthetic access$38100(Landroid/car/hardware/xpu/XpuProtoMessageVW$Path;ILandroid/car/hardware/xpu/XpuProtoMessageVW$Camera;)V
    .locals 0

    .line 16027
    invoke-direct {p0, p1, p2}, Landroid/car/hardware/xpu/XpuProtoMessageVW$Path;->setCameras(ILandroid/car/hardware/xpu/XpuProtoMessageVW$Camera;)V

    return-void
.end method

.method static synthetic access$38200(Landroid/car/hardware/xpu/XpuProtoMessageVW$Path;ILandroid/car/hardware/xpu/XpuProtoMessageVW$Camera$Builder;)V
    .locals 0

    .line 16027
    invoke-direct {p0, p1, p2}, Landroid/car/hardware/xpu/XpuProtoMessageVW$Path;->setCameras(ILandroid/car/hardware/xpu/XpuProtoMessageVW$Camera$Builder;)V

    return-void
.end method

.method static synthetic access$38300(Landroid/car/hardware/xpu/XpuProtoMessageVW$Path;Landroid/car/hardware/xpu/XpuProtoMessageVW$Camera;)V
    .locals 0

    .line 16027
    invoke-direct {p0, p1}, Landroid/car/hardware/xpu/XpuProtoMessageVW$Path;->addCameras(Landroid/car/hardware/xpu/XpuProtoMessageVW$Camera;)V

    return-void
.end method

.method static synthetic access$38400(Landroid/car/hardware/xpu/XpuProtoMessageVW$Path;ILandroid/car/hardware/xpu/XpuProtoMessageVW$Camera;)V
    .locals 0

    .line 16027
    invoke-direct {p0, p1, p2}, Landroid/car/hardware/xpu/XpuProtoMessageVW$Path;->addCameras(ILandroid/car/hardware/xpu/XpuProtoMessageVW$Camera;)V

    return-void
.end method

.method static synthetic access$38500(Landroid/car/hardware/xpu/XpuProtoMessageVW$Path;Landroid/car/hardware/xpu/XpuProtoMessageVW$Camera$Builder;)V
    .locals 0

    .line 16027
    invoke-direct {p0, p1}, Landroid/car/hardware/xpu/XpuProtoMessageVW$Path;->addCameras(Landroid/car/hardware/xpu/XpuProtoMessageVW$Camera$Builder;)V

    return-void
.end method

.method static synthetic access$38600(Landroid/car/hardware/xpu/XpuProtoMessageVW$Path;ILandroid/car/hardware/xpu/XpuProtoMessageVW$Camera$Builder;)V
    .locals 0

    .line 16027
    invoke-direct {p0, p1, p2}, Landroid/car/hardware/xpu/XpuProtoMessageVW$Path;->addCameras(ILandroid/car/hardware/xpu/XpuProtoMessageVW$Camera$Builder;)V

    return-void
.end method

.method static synthetic access$38700(Landroid/car/hardware/xpu/XpuProtoMessageVW$Path;Ljava/lang/Iterable;)V
    .locals 0

    .line 16027
    invoke-direct {p0, p1}, Landroid/car/hardware/xpu/XpuProtoMessageVW$Path;->addAllCameras(Ljava/lang/Iterable;)V

    return-void
.end method

.method static synthetic access$38800(Landroid/car/hardware/xpu/XpuProtoMessageVW$Path;)V
    .locals 0

    .line 16027
    invoke-direct {p0}, Landroid/car/hardware/xpu/XpuProtoMessageVW$Path;->clearCameras()V

    return-void
.end method

.method static synthetic access$38900(Landroid/car/hardware/xpu/XpuProtoMessageVW$Path;I)V
    .locals 0

    .line 16027
    invoke-direct {p0, p1}, Landroid/car/hardware/xpu/XpuProtoMessageVW$Path;->removeCameras(I)V

    return-void
.end method

.method static synthetic access$39000(Landroid/car/hardware/xpu/XpuProtoMessageVW$Path;ILandroid/car/hardware/xpu/XpuProtoMessageVW$ViaPointInfo;)V
    .locals 0

    .line 16027
    invoke-direct {p0, p1, p2}, Landroid/car/hardware/xpu/XpuProtoMessageVW$Path;->setViaPointInfos(ILandroid/car/hardware/xpu/XpuProtoMessageVW$ViaPointInfo;)V

    return-void
.end method

.method static synthetic access$39100(Landroid/car/hardware/xpu/XpuProtoMessageVW$Path;ILandroid/car/hardware/xpu/XpuProtoMessageVW$ViaPointInfo$Builder;)V
    .locals 0

    .line 16027
    invoke-direct {p0, p1, p2}, Landroid/car/hardware/xpu/XpuProtoMessageVW$Path;->setViaPointInfos(ILandroid/car/hardware/xpu/XpuProtoMessageVW$ViaPointInfo$Builder;)V

    return-void
.end method

.method static synthetic access$39200(Landroid/car/hardware/xpu/XpuProtoMessageVW$Path;Landroid/car/hardware/xpu/XpuProtoMessageVW$ViaPointInfo;)V
    .locals 0

    .line 16027
    invoke-direct {p0, p1}, Landroid/car/hardware/xpu/XpuProtoMessageVW$Path;->addViaPointInfos(Landroid/car/hardware/xpu/XpuProtoMessageVW$ViaPointInfo;)V

    return-void
.end method

.method static synthetic access$39300(Landroid/car/hardware/xpu/XpuProtoMessageVW$Path;ILandroid/car/hardware/xpu/XpuProtoMessageVW$ViaPointInfo;)V
    .locals 0

    .line 16027
    invoke-direct {p0, p1, p2}, Landroid/car/hardware/xpu/XpuProtoMessageVW$Path;->addViaPointInfos(ILandroid/car/hardware/xpu/XpuProtoMessageVW$ViaPointInfo;)V

    return-void
.end method

.method static synthetic access$39400(Landroid/car/hardware/xpu/XpuProtoMessageVW$Path;Landroid/car/hardware/xpu/XpuProtoMessageVW$ViaPointInfo$Builder;)V
    .locals 0

    .line 16027
    invoke-direct {p0, p1}, Landroid/car/hardware/xpu/XpuProtoMessageVW$Path;->addViaPointInfos(Landroid/car/hardware/xpu/XpuProtoMessageVW$ViaPointInfo$Builder;)V

    return-void
.end method

.method static synthetic access$39500(Landroid/car/hardware/xpu/XpuProtoMessageVW$Path;ILandroid/car/hardware/xpu/XpuProtoMessageVW$ViaPointInfo$Builder;)V
    .locals 0

    .line 16027
    invoke-direct {p0, p1, p2}, Landroid/car/hardware/xpu/XpuProtoMessageVW$Path;->addViaPointInfos(ILandroid/car/hardware/xpu/XpuProtoMessageVW$ViaPointInfo$Builder;)V

    return-void
.end method

.method static synthetic access$39600(Landroid/car/hardware/xpu/XpuProtoMessageVW$Path;Ljava/lang/Iterable;)V
    .locals 0

    .line 16027
    invoke-direct {p0, p1}, Landroid/car/hardware/xpu/XpuProtoMessageVW$Path;->addAllViaPointInfos(Ljava/lang/Iterable;)V

    return-void
.end method

.method static synthetic access$39700(Landroid/car/hardware/xpu/XpuProtoMessageVW$Path;)V
    .locals 0

    .line 16027
    invoke-direct {p0}, Landroid/car/hardware/xpu/XpuProtoMessageVW$Path;->clearViaPointInfos()V

    return-void
.end method

.method static synthetic access$39800(Landroid/car/hardware/xpu/XpuProtoMessageVW$Path;I)V
    .locals 0

    .line 16027
    invoke-direct {p0, p1}, Landroid/car/hardware/xpu/XpuProtoMessageVW$Path;->removeViaPointInfos(I)V

    return-void
.end method

.method static synthetic access$39900(Landroid/car/hardware/xpu/XpuProtoMessageVW$Path;D)V
    .locals 0

    .line 16027
    invoke-direct {p0, p1, p2}, Landroid/car/hardware/xpu/XpuProtoMessageVW$Path;->setLength(D)V

    return-void
.end method

.method static synthetic access$40000(Landroid/car/hardware/xpu/XpuProtoMessageVW$Path;)V
    .locals 0

    .line 16027
    invoke-direct {p0}, Landroid/car/hardware/xpu/XpuProtoMessageVW$Path;->clearLength()V

    return-void
.end method

.method static synthetic access$40100(Landroid/car/hardware/xpu/XpuProtoMessageVW$Path;I)V
    .locals 0

    .line 16027
    invoke-direct {p0, p1}, Landroid/car/hardware/xpu/XpuProtoMessageVW$Path;->setOuterTrafficIncidentCount(I)V

    return-void
.end method

.method static synthetic access$40200(Landroid/car/hardware/xpu/XpuProtoMessageVW$Path;)V
    .locals 0

    .line 16027
    invoke-direct {p0}, Landroid/car/hardware/xpu/XpuProtoMessageVW$Path;->clearOuterTrafficIncidentCount()V

    return-void
.end method

.method static synthetic access$40300(Landroid/car/hardware/xpu/XpuProtoMessageVW$Path;I)V
    .locals 0

    .line 16027
    invoke-direct {p0, p1}, Landroid/car/hardware/xpu/XpuProtoMessageVW$Path;->setInnerTrafficIncidentCount(I)V

    return-void
.end method

.method static synthetic access$40400(Landroid/car/hardware/xpu/XpuProtoMessageVW$Path;)V
    .locals 0

    .line 16027
    invoke-direct {p0}, Landroid/car/hardware/xpu/XpuProtoMessageVW$Path;->clearInnerTrafficIncidentCount()V

    return-void
.end method

.method static synthetic access$40500(Landroid/car/hardware/xpu/XpuProtoMessageVW$Path;ILandroid/car/hardware/xpu/XpuProtoMessageVW$TrafficIncident;)V
    .locals 0

    .line 16027
    invoke-direct {p0, p1, p2}, Landroid/car/hardware/xpu/XpuProtoMessageVW$Path;->setOuterTrafficIncidents(ILandroid/car/hardware/xpu/XpuProtoMessageVW$TrafficIncident;)V

    return-void
.end method

.method static synthetic access$40600(Landroid/car/hardware/xpu/XpuProtoMessageVW$Path;ILandroid/car/hardware/xpu/XpuProtoMessageVW$TrafficIncident$Builder;)V
    .locals 0

    .line 16027
    invoke-direct {p0, p1, p2}, Landroid/car/hardware/xpu/XpuProtoMessageVW$Path;->setOuterTrafficIncidents(ILandroid/car/hardware/xpu/XpuProtoMessageVW$TrafficIncident$Builder;)V

    return-void
.end method

.method static synthetic access$40700(Landroid/car/hardware/xpu/XpuProtoMessageVW$Path;Landroid/car/hardware/xpu/XpuProtoMessageVW$TrafficIncident;)V
    .locals 0

    .line 16027
    invoke-direct {p0, p1}, Landroid/car/hardware/xpu/XpuProtoMessageVW$Path;->addOuterTrafficIncidents(Landroid/car/hardware/xpu/XpuProtoMessageVW$TrafficIncident;)V

    return-void
.end method

.method static synthetic access$40800(Landroid/car/hardware/xpu/XpuProtoMessageVW$Path;ILandroid/car/hardware/xpu/XpuProtoMessageVW$TrafficIncident;)V
    .locals 0

    .line 16027
    invoke-direct {p0, p1, p2}, Landroid/car/hardware/xpu/XpuProtoMessageVW$Path;->addOuterTrafficIncidents(ILandroid/car/hardware/xpu/XpuProtoMessageVW$TrafficIncident;)V

    return-void
.end method

.method static synthetic access$40900(Landroid/car/hardware/xpu/XpuProtoMessageVW$Path;Landroid/car/hardware/xpu/XpuProtoMessageVW$TrafficIncident$Builder;)V
    .locals 0

    .line 16027
    invoke-direct {p0, p1}, Landroid/car/hardware/xpu/XpuProtoMessageVW$Path;->addOuterTrafficIncidents(Landroid/car/hardware/xpu/XpuProtoMessageVW$TrafficIncident$Builder;)V

    return-void
.end method

.method static synthetic access$41000(Landroid/car/hardware/xpu/XpuProtoMessageVW$Path;ILandroid/car/hardware/xpu/XpuProtoMessageVW$TrafficIncident$Builder;)V
    .locals 0

    .line 16027
    invoke-direct {p0, p1, p2}, Landroid/car/hardware/xpu/XpuProtoMessageVW$Path;->addOuterTrafficIncidents(ILandroid/car/hardware/xpu/XpuProtoMessageVW$TrafficIncident$Builder;)V

    return-void
.end method

.method static synthetic access$41100(Landroid/car/hardware/xpu/XpuProtoMessageVW$Path;Ljava/lang/Iterable;)V
    .locals 0

    .line 16027
    invoke-direct {p0, p1}, Landroid/car/hardware/xpu/XpuProtoMessageVW$Path;->addAllOuterTrafficIncidents(Ljava/lang/Iterable;)V

    return-void
.end method

.method static synthetic access$41200(Landroid/car/hardware/xpu/XpuProtoMessageVW$Path;)V
    .locals 0

    .line 16027
    invoke-direct {p0}, Landroid/car/hardware/xpu/XpuProtoMessageVW$Path;->clearOuterTrafficIncidents()V

    return-void
.end method

.method static synthetic access$41300(Landroid/car/hardware/xpu/XpuProtoMessageVW$Path;I)V
    .locals 0

    .line 16027
    invoke-direct {p0, p1}, Landroid/car/hardware/xpu/XpuProtoMessageVW$Path;->removeOuterTrafficIncidents(I)V

    return-void
.end method

.method static synthetic access$41400(Landroid/car/hardware/xpu/XpuProtoMessageVW$Path;ILandroid/car/hardware/xpu/XpuProtoMessageVW$TrafficIncident;)V
    .locals 0

    .line 16027
    invoke-direct {p0, p1, p2}, Landroid/car/hardware/xpu/XpuProtoMessageVW$Path;->setInnerTrafficIncidents(ILandroid/car/hardware/xpu/XpuProtoMessageVW$TrafficIncident;)V

    return-void
.end method

.method static synthetic access$41500(Landroid/car/hardware/xpu/XpuProtoMessageVW$Path;ILandroid/car/hardware/xpu/XpuProtoMessageVW$TrafficIncident$Builder;)V
    .locals 0

    .line 16027
    invoke-direct {p0, p1, p2}, Landroid/car/hardware/xpu/XpuProtoMessageVW$Path;->setInnerTrafficIncidents(ILandroid/car/hardware/xpu/XpuProtoMessageVW$TrafficIncident$Builder;)V

    return-void
.end method

.method static synthetic access$41600(Landroid/car/hardware/xpu/XpuProtoMessageVW$Path;Landroid/car/hardware/xpu/XpuProtoMessageVW$TrafficIncident;)V
    .locals 0

    .line 16027
    invoke-direct {p0, p1}, Landroid/car/hardware/xpu/XpuProtoMessageVW$Path;->addInnerTrafficIncidents(Landroid/car/hardware/xpu/XpuProtoMessageVW$TrafficIncident;)V

    return-void
.end method

.method static synthetic access$41700(Landroid/car/hardware/xpu/XpuProtoMessageVW$Path;ILandroid/car/hardware/xpu/XpuProtoMessageVW$TrafficIncident;)V
    .locals 0

    .line 16027
    invoke-direct {p0, p1, p2}, Landroid/car/hardware/xpu/XpuProtoMessageVW$Path;->addInnerTrafficIncidents(ILandroid/car/hardware/xpu/XpuProtoMessageVW$TrafficIncident;)V

    return-void
.end method

.method static synthetic access$41800(Landroid/car/hardware/xpu/XpuProtoMessageVW$Path;Landroid/car/hardware/xpu/XpuProtoMessageVW$TrafficIncident$Builder;)V
    .locals 0

    .line 16027
    invoke-direct {p0, p1}, Landroid/car/hardware/xpu/XpuProtoMessageVW$Path;->addInnerTrafficIncidents(Landroid/car/hardware/xpu/XpuProtoMessageVW$TrafficIncident$Builder;)V

    return-void
.end method

.method static synthetic access$41900(Landroid/car/hardware/xpu/XpuProtoMessageVW$Path;ILandroid/car/hardware/xpu/XpuProtoMessageVW$TrafficIncident$Builder;)V
    .locals 0

    .line 16027
    invoke-direct {p0, p1, p2}, Landroid/car/hardware/xpu/XpuProtoMessageVW$Path;->addInnerTrafficIncidents(ILandroid/car/hardware/xpu/XpuProtoMessageVW$TrafficIncident$Builder;)V

    return-void
.end method

.method static synthetic access$42000(Landroid/car/hardware/xpu/XpuProtoMessageVW$Path;Ljava/lang/Iterable;)V
    .locals 0

    .line 16027
    invoke-direct {p0, p1}, Landroid/car/hardware/xpu/XpuProtoMessageVW$Path;->addAllInnerTrafficIncidents(Ljava/lang/Iterable;)V

    return-void
.end method

.method static synthetic access$42100(Landroid/car/hardware/xpu/XpuProtoMessageVW$Path;)V
    .locals 0

    .line 16027
    invoke-direct {p0}, Landroid/car/hardware/xpu/XpuProtoMessageVW$Path;->clearInnerTrafficIncidents()V

    return-void
.end method

.method static synthetic access$42200(Landroid/car/hardware/xpu/XpuProtoMessageVW$Path;I)V
    .locals 0

    .line 16027
    invoke-direct {p0, p1}, Landroid/car/hardware/xpu/XpuProtoMessageVW$Path;->removeInnerTrafficIncidents(I)V

    return-void
.end method

.method static synthetic access$42300(Landroid/car/hardware/xpu/XpuProtoMessageVW$Path;I)V
    .locals 0

    .line 16027
    invoke-direct {p0, p1}, Landroid/car/hardware/xpu/XpuProtoMessageVW$Path;->setForbiddenInfoCount11(I)V

    return-void
.end method

.method static synthetic access$42400(Landroid/car/hardware/xpu/XpuProtoMessageVW$Path;)V
    .locals 0

    .line 16027
    invoke-direct {p0}, Landroid/car/hardware/xpu/XpuProtoMessageVW$Path;->clearForbiddenInfoCount11()V

    return-void
.end method

.method static synthetic access$42500(Landroid/car/hardware/xpu/XpuProtoMessageVW$Path;ILandroid/car/hardware/xpu/XpuProtoMessageVW$ForbiddenInfo;)V
    .locals 0

    .line 16027
    invoke-direct {p0, p1, p2}, Landroid/car/hardware/xpu/XpuProtoMessageVW$Path;->setForbiddenInfo12(ILandroid/car/hardware/xpu/XpuProtoMessageVW$ForbiddenInfo;)V

    return-void
.end method

.method static synthetic access$42600(Landroid/car/hardware/xpu/XpuProtoMessageVW$Path;ILandroid/car/hardware/xpu/XpuProtoMessageVW$ForbiddenInfo$Builder;)V
    .locals 0

    .line 16027
    invoke-direct {p0, p1, p2}, Landroid/car/hardware/xpu/XpuProtoMessageVW$Path;->setForbiddenInfo12(ILandroid/car/hardware/xpu/XpuProtoMessageVW$ForbiddenInfo$Builder;)V

    return-void
.end method

.method static synthetic access$42700(Landroid/car/hardware/xpu/XpuProtoMessageVW$Path;Landroid/car/hardware/xpu/XpuProtoMessageVW$ForbiddenInfo;)V
    .locals 0

    .line 16027
    invoke-direct {p0, p1}, Landroid/car/hardware/xpu/XpuProtoMessageVW$Path;->addForbiddenInfo12(Landroid/car/hardware/xpu/XpuProtoMessageVW$ForbiddenInfo;)V

    return-void
.end method

.method static synthetic access$42800(Landroid/car/hardware/xpu/XpuProtoMessageVW$Path;ILandroid/car/hardware/xpu/XpuProtoMessageVW$ForbiddenInfo;)V
    .locals 0

    .line 16027
    invoke-direct {p0, p1, p2}, Landroid/car/hardware/xpu/XpuProtoMessageVW$Path;->addForbiddenInfo12(ILandroid/car/hardware/xpu/XpuProtoMessageVW$ForbiddenInfo;)V

    return-void
.end method

.method static synthetic access$42900(Landroid/car/hardware/xpu/XpuProtoMessageVW$Path;Landroid/car/hardware/xpu/XpuProtoMessageVW$ForbiddenInfo$Builder;)V
    .locals 0

    .line 16027
    invoke-direct {p0, p1}, Landroid/car/hardware/xpu/XpuProtoMessageVW$Path;->addForbiddenInfo12(Landroid/car/hardware/xpu/XpuProtoMessageVW$ForbiddenInfo$Builder;)V

    return-void
.end method

.method static synthetic access$43000(Landroid/car/hardware/xpu/XpuProtoMessageVW$Path;ILandroid/car/hardware/xpu/XpuProtoMessageVW$ForbiddenInfo$Builder;)V
    .locals 0

    .line 16027
    invoke-direct {p0, p1, p2}, Landroid/car/hardware/xpu/XpuProtoMessageVW$Path;->addForbiddenInfo12(ILandroid/car/hardware/xpu/XpuProtoMessageVW$ForbiddenInfo$Builder;)V

    return-void
.end method

.method static synthetic access$43100(Landroid/car/hardware/xpu/XpuProtoMessageVW$Path;Ljava/lang/Iterable;)V
    .locals 0

    .line 16027
    invoke-direct {p0, p1}, Landroid/car/hardware/xpu/XpuProtoMessageVW$Path;->addAllForbiddenInfo12(Ljava/lang/Iterable;)V

    return-void
.end method

.method static synthetic access$43200(Landroid/car/hardware/xpu/XpuProtoMessageVW$Path;)V
    .locals 0

    .line 16027
    invoke-direct {p0}, Landroid/car/hardware/xpu/XpuProtoMessageVW$Path;->clearForbiddenInfo12()V

    return-void
.end method

.method static synthetic access$43300(Landroid/car/hardware/xpu/XpuProtoMessageVW$Path;I)V
    .locals 0

    .line 16027
    invoke-direct {p0, p1}, Landroid/car/hardware/xpu/XpuProtoMessageVW$Path;->removeForbiddenInfo12(I)V

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

    .line 16412
    invoke-direct {p0}, Landroid/car/hardware/xpu/XpuProtoMessageVW$Path;->ensureCamerasIsMutable()V

    .line 16413
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$Path;->cameras_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

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
            "Landroid/car/hardware/xpu/XpuProtoMessageVW$ForbiddenInfo;",
            ">;)V"
        }
    .end annotation

    .line 17003
    invoke-direct {p0}, Landroid/car/hardware/xpu/XpuProtoMessageVW$Path;->ensureForbiddenInfo12IsMutable()V

    .line 17004
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$Path;->forbiddenInfo12_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

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
            "Landroid/car/hardware/xpu/XpuProtoMessageVW$TrafficIncident;",
            ">;)V"
        }
    .end annotation

    .line 16856
    invoke-direct {p0}, Landroid/car/hardware/xpu/XpuProtoMessageVW$Path;->ensureInnerTrafficIncidentsIsMutable()V

    .line 16857
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$Path;->innerTrafficIncidents_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

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
            "Landroid/car/hardware/xpu/XpuProtoMessageVW$TrafficIncident;",
            ">;)V"
        }
    .end annotation

    .line 16736
    invoke-direct {p0}, Landroid/car/hardware/xpu/XpuProtoMessageVW$Path;->ensureOuterTrafficIncidentsIsMutable()V

    .line 16737
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$Path;->outerTrafficIncidents_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

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
            "Landroid/car/hardware/xpu/XpuProtoMessageVW$Segment;",
            ">;)V"
        }
    .end annotation

    .line 16172
    invoke-direct {p0}, Landroid/car/hardware/xpu/XpuProtoMessageVW$Path;->ensureSegmentsIsMutable()V

    .line 16173
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$Path;->segments_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

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
            "Landroid/car/hardware/xpu/XpuProtoMessageVW$V2_Point;",
            ">;)V"
        }
    .end annotation

    .line 16292
    invoke-direct {p0}, Landroid/car/hardware/xpu/XpuProtoMessageVW$Path;->ensureTrafficLightsIsMutable()V

    .line 16293
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$Path;->trafficLights_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

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
            "Landroid/car/hardware/xpu/XpuProtoMessageVW$ViaPointInfo;",
            ">;)V"
        }
    .end annotation

    .line 16532
    invoke-direct {p0}, Landroid/car/hardware/xpu/XpuProtoMessageVW$Path;->ensureViaPointInfosIsMutable()V

    .line 16533
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$Path;->viaPointInfos_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    invoke-static {p1, v0}, Lcom/android/carsdk/protobuf/AbstractMessageLite;->addAll(Ljava/lang/Iterable;Ljava/util/Collection;)V

    return-void
.end method

.method private addCameras(ILandroid/car/hardware/xpu/XpuProtoMessageVW$Camera$Builder;)V
    .locals 1

    .line 16404
    invoke-direct {p0}, Landroid/car/hardware/xpu/XpuProtoMessageVW$Path;->ensureCamerasIsMutable()V

    .line 16405
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$Path;->cameras_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    invoke-virtual {p2}, Landroid/car/hardware/xpu/XpuProtoMessageVW$Camera$Builder;->build()Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object p2

    check-cast p2, Landroid/car/hardware/xpu/XpuProtoMessageVW$Camera;

    invoke-interface {v0, p1, p2}, Lcom/android/carsdk/protobuf/Internal$ProtobufList;->add(ILjava/lang/Object;)V

    return-void
.end method

.method private addCameras(ILandroid/car/hardware/xpu/XpuProtoMessageVW$Camera;)V
    .locals 1

    .line 16386
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 16388
    invoke-direct {p0}, Landroid/car/hardware/xpu/XpuProtoMessageVW$Path;->ensureCamerasIsMutable()V

    .line 16389
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$Path;->cameras_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1, p2}, Lcom/android/carsdk/protobuf/Internal$ProtobufList;->add(ILjava/lang/Object;)V

    return-void
.end method

.method private addCameras(Landroid/car/hardware/xpu/XpuProtoMessageVW$Camera$Builder;)V
    .locals 1

    .line 16396
    invoke-direct {p0}, Landroid/car/hardware/xpu/XpuProtoMessageVW$Path;->ensureCamerasIsMutable()V

    .line 16397
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$Path;->cameras_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    invoke-virtual {p1}, Landroid/car/hardware/xpu/XpuProtoMessageVW$Camera$Builder;->build()Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Landroid/car/hardware/xpu/XpuProtoMessageVW$Camera;

    invoke-interface {v0, p1}, Lcom/android/carsdk/protobuf/Internal$ProtobufList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private addCameras(Landroid/car/hardware/xpu/XpuProtoMessageVW$Camera;)V
    .locals 1

    .line 16375
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 16377
    invoke-direct {p0}, Landroid/car/hardware/xpu/XpuProtoMessageVW$Path;->ensureCamerasIsMutable()V

    .line 16378
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$Path;->cameras_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1}, Lcom/android/carsdk/protobuf/Internal$ProtobufList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private addForbiddenInfo12(ILandroid/car/hardware/xpu/XpuProtoMessageVW$ForbiddenInfo$Builder;)V
    .locals 1

    .line 16995
    invoke-direct {p0}, Landroid/car/hardware/xpu/XpuProtoMessageVW$Path;->ensureForbiddenInfo12IsMutable()V

    .line 16996
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$Path;->forbiddenInfo12_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    invoke-virtual {p2}, Landroid/car/hardware/xpu/XpuProtoMessageVW$ForbiddenInfo$Builder;->build()Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object p2

    check-cast p2, Landroid/car/hardware/xpu/XpuProtoMessageVW$ForbiddenInfo;

    invoke-interface {v0, p1, p2}, Lcom/android/carsdk/protobuf/Internal$ProtobufList;->add(ILjava/lang/Object;)V

    return-void
.end method

.method private addForbiddenInfo12(ILandroid/car/hardware/xpu/XpuProtoMessageVW$ForbiddenInfo;)V
    .locals 1

    .line 16977
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 16979
    invoke-direct {p0}, Landroid/car/hardware/xpu/XpuProtoMessageVW$Path;->ensureForbiddenInfo12IsMutable()V

    .line 16980
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$Path;->forbiddenInfo12_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1, p2}, Lcom/android/carsdk/protobuf/Internal$ProtobufList;->add(ILjava/lang/Object;)V

    return-void
.end method

.method private addForbiddenInfo12(Landroid/car/hardware/xpu/XpuProtoMessageVW$ForbiddenInfo$Builder;)V
    .locals 1

    .line 16987
    invoke-direct {p0}, Landroid/car/hardware/xpu/XpuProtoMessageVW$Path;->ensureForbiddenInfo12IsMutable()V

    .line 16988
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$Path;->forbiddenInfo12_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    invoke-virtual {p1}, Landroid/car/hardware/xpu/XpuProtoMessageVW$ForbiddenInfo$Builder;->build()Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Landroid/car/hardware/xpu/XpuProtoMessageVW$ForbiddenInfo;

    invoke-interface {v0, p1}, Lcom/android/carsdk/protobuf/Internal$ProtobufList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private addForbiddenInfo12(Landroid/car/hardware/xpu/XpuProtoMessageVW$ForbiddenInfo;)V
    .locals 1

    .line 16966
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 16968
    invoke-direct {p0}, Landroid/car/hardware/xpu/XpuProtoMessageVW$Path;->ensureForbiddenInfo12IsMutable()V

    .line 16969
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$Path;->forbiddenInfo12_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1}, Lcom/android/carsdk/protobuf/Internal$ProtobufList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private addInnerTrafficIncidents(ILandroid/car/hardware/xpu/XpuProtoMessageVW$TrafficIncident$Builder;)V
    .locals 1

    .line 16848
    invoke-direct {p0}, Landroid/car/hardware/xpu/XpuProtoMessageVW$Path;->ensureInnerTrafficIncidentsIsMutable()V

    .line 16849
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$Path;->innerTrafficIncidents_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    invoke-virtual {p2}, Landroid/car/hardware/xpu/XpuProtoMessageVW$TrafficIncident$Builder;->build()Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object p2

    check-cast p2, Landroid/car/hardware/xpu/XpuProtoMessageVW$TrafficIncident;

    invoke-interface {v0, p1, p2}, Lcom/android/carsdk/protobuf/Internal$ProtobufList;->add(ILjava/lang/Object;)V

    return-void
.end method

.method private addInnerTrafficIncidents(ILandroid/car/hardware/xpu/XpuProtoMessageVW$TrafficIncident;)V
    .locals 1

    .line 16830
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 16832
    invoke-direct {p0}, Landroid/car/hardware/xpu/XpuProtoMessageVW$Path;->ensureInnerTrafficIncidentsIsMutable()V

    .line 16833
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$Path;->innerTrafficIncidents_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1, p2}, Lcom/android/carsdk/protobuf/Internal$ProtobufList;->add(ILjava/lang/Object;)V

    return-void
.end method

.method private addInnerTrafficIncidents(Landroid/car/hardware/xpu/XpuProtoMessageVW$TrafficIncident$Builder;)V
    .locals 1

    .line 16840
    invoke-direct {p0}, Landroid/car/hardware/xpu/XpuProtoMessageVW$Path;->ensureInnerTrafficIncidentsIsMutable()V

    .line 16841
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$Path;->innerTrafficIncidents_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    invoke-virtual {p1}, Landroid/car/hardware/xpu/XpuProtoMessageVW$TrafficIncident$Builder;->build()Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Landroid/car/hardware/xpu/XpuProtoMessageVW$TrafficIncident;

    invoke-interface {v0, p1}, Lcom/android/carsdk/protobuf/Internal$ProtobufList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private addInnerTrafficIncidents(Landroid/car/hardware/xpu/XpuProtoMessageVW$TrafficIncident;)V
    .locals 1

    .line 16819
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 16821
    invoke-direct {p0}, Landroid/car/hardware/xpu/XpuProtoMessageVW$Path;->ensureInnerTrafficIncidentsIsMutable()V

    .line 16822
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$Path;->innerTrafficIncidents_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1}, Lcom/android/carsdk/protobuf/Internal$ProtobufList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private addOuterTrafficIncidents(ILandroid/car/hardware/xpu/XpuProtoMessageVW$TrafficIncident$Builder;)V
    .locals 1

    .line 16728
    invoke-direct {p0}, Landroid/car/hardware/xpu/XpuProtoMessageVW$Path;->ensureOuterTrafficIncidentsIsMutable()V

    .line 16729
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$Path;->outerTrafficIncidents_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    invoke-virtual {p2}, Landroid/car/hardware/xpu/XpuProtoMessageVW$TrafficIncident$Builder;->build()Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object p2

    check-cast p2, Landroid/car/hardware/xpu/XpuProtoMessageVW$TrafficIncident;

    invoke-interface {v0, p1, p2}, Lcom/android/carsdk/protobuf/Internal$ProtobufList;->add(ILjava/lang/Object;)V

    return-void
.end method

.method private addOuterTrafficIncidents(ILandroid/car/hardware/xpu/XpuProtoMessageVW$TrafficIncident;)V
    .locals 1

    .line 16710
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 16712
    invoke-direct {p0}, Landroid/car/hardware/xpu/XpuProtoMessageVW$Path;->ensureOuterTrafficIncidentsIsMutable()V

    .line 16713
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$Path;->outerTrafficIncidents_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1, p2}, Lcom/android/carsdk/protobuf/Internal$ProtobufList;->add(ILjava/lang/Object;)V

    return-void
.end method

.method private addOuterTrafficIncidents(Landroid/car/hardware/xpu/XpuProtoMessageVW$TrafficIncident$Builder;)V
    .locals 1

    .line 16720
    invoke-direct {p0}, Landroid/car/hardware/xpu/XpuProtoMessageVW$Path;->ensureOuterTrafficIncidentsIsMutable()V

    .line 16721
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$Path;->outerTrafficIncidents_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    invoke-virtual {p1}, Landroid/car/hardware/xpu/XpuProtoMessageVW$TrafficIncident$Builder;->build()Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Landroid/car/hardware/xpu/XpuProtoMessageVW$TrafficIncident;

    invoke-interface {v0, p1}, Lcom/android/carsdk/protobuf/Internal$ProtobufList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private addOuterTrafficIncidents(Landroid/car/hardware/xpu/XpuProtoMessageVW$TrafficIncident;)V
    .locals 1

    .line 16699
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 16701
    invoke-direct {p0}, Landroid/car/hardware/xpu/XpuProtoMessageVW$Path;->ensureOuterTrafficIncidentsIsMutable()V

    .line 16702
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$Path;->outerTrafficIncidents_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1}, Lcom/android/carsdk/protobuf/Internal$ProtobufList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private addSegments(ILandroid/car/hardware/xpu/XpuProtoMessageVW$Segment$Builder;)V
    .locals 1

    .line 16164
    invoke-direct {p0}, Landroid/car/hardware/xpu/XpuProtoMessageVW$Path;->ensureSegmentsIsMutable()V

    .line 16165
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$Path;->segments_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    invoke-virtual {p2}, Landroid/car/hardware/xpu/XpuProtoMessageVW$Segment$Builder;->build()Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object p2

    check-cast p2, Landroid/car/hardware/xpu/XpuProtoMessageVW$Segment;

    invoke-interface {v0, p1, p2}, Lcom/android/carsdk/protobuf/Internal$ProtobufList;->add(ILjava/lang/Object;)V

    return-void
.end method

.method private addSegments(ILandroid/car/hardware/xpu/XpuProtoMessageVW$Segment;)V
    .locals 1

    .line 16146
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 16148
    invoke-direct {p0}, Landroid/car/hardware/xpu/XpuProtoMessageVW$Path;->ensureSegmentsIsMutable()V

    .line 16149
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$Path;->segments_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1, p2}, Lcom/android/carsdk/protobuf/Internal$ProtobufList;->add(ILjava/lang/Object;)V

    return-void
.end method

.method private addSegments(Landroid/car/hardware/xpu/XpuProtoMessageVW$Segment$Builder;)V
    .locals 1

    .line 16156
    invoke-direct {p0}, Landroid/car/hardware/xpu/XpuProtoMessageVW$Path;->ensureSegmentsIsMutable()V

    .line 16157
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$Path;->segments_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    invoke-virtual {p1}, Landroid/car/hardware/xpu/XpuProtoMessageVW$Segment$Builder;->build()Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Landroid/car/hardware/xpu/XpuProtoMessageVW$Segment;

    invoke-interface {v0, p1}, Lcom/android/carsdk/protobuf/Internal$ProtobufList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private addSegments(Landroid/car/hardware/xpu/XpuProtoMessageVW$Segment;)V
    .locals 1

    .line 16135
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 16137
    invoke-direct {p0}, Landroid/car/hardware/xpu/XpuProtoMessageVW$Path;->ensureSegmentsIsMutable()V

    .line 16138
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$Path;->segments_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1}, Lcom/android/carsdk/protobuf/Internal$ProtobufList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private addTrafficLights(ILandroid/car/hardware/xpu/XpuProtoMessageVW$V2_Point$Builder;)V
    .locals 1

    .line 16284
    invoke-direct {p0}, Landroid/car/hardware/xpu/XpuProtoMessageVW$Path;->ensureTrafficLightsIsMutable()V

    .line 16285
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$Path;->trafficLights_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    invoke-virtual {p2}, Landroid/car/hardware/xpu/XpuProtoMessageVW$V2_Point$Builder;->build()Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object p2

    check-cast p2, Landroid/car/hardware/xpu/XpuProtoMessageVW$V2_Point;

    invoke-interface {v0, p1, p2}, Lcom/android/carsdk/protobuf/Internal$ProtobufList;->add(ILjava/lang/Object;)V

    return-void
.end method

.method private addTrafficLights(ILandroid/car/hardware/xpu/XpuProtoMessageVW$V2_Point;)V
    .locals 1

    .line 16266
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 16268
    invoke-direct {p0}, Landroid/car/hardware/xpu/XpuProtoMessageVW$Path;->ensureTrafficLightsIsMutable()V

    .line 16269
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$Path;->trafficLights_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1, p2}, Lcom/android/carsdk/protobuf/Internal$ProtobufList;->add(ILjava/lang/Object;)V

    return-void
.end method

.method private addTrafficLights(Landroid/car/hardware/xpu/XpuProtoMessageVW$V2_Point$Builder;)V
    .locals 1

    .line 16276
    invoke-direct {p0}, Landroid/car/hardware/xpu/XpuProtoMessageVW$Path;->ensureTrafficLightsIsMutable()V

    .line 16277
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$Path;->trafficLights_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    invoke-virtual {p1}, Landroid/car/hardware/xpu/XpuProtoMessageVW$V2_Point$Builder;->build()Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Landroid/car/hardware/xpu/XpuProtoMessageVW$V2_Point;

    invoke-interface {v0, p1}, Lcom/android/carsdk/protobuf/Internal$ProtobufList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private addTrafficLights(Landroid/car/hardware/xpu/XpuProtoMessageVW$V2_Point;)V
    .locals 1

    .line 16255
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 16257
    invoke-direct {p0}, Landroid/car/hardware/xpu/XpuProtoMessageVW$Path;->ensureTrafficLightsIsMutable()V

    .line 16258
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$Path;->trafficLights_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1}, Lcom/android/carsdk/protobuf/Internal$ProtobufList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private addViaPointInfos(ILandroid/car/hardware/xpu/XpuProtoMessageVW$ViaPointInfo$Builder;)V
    .locals 1

    .line 16524
    invoke-direct {p0}, Landroid/car/hardware/xpu/XpuProtoMessageVW$Path;->ensureViaPointInfosIsMutable()V

    .line 16525
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$Path;->viaPointInfos_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    invoke-virtual {p2}, Landroid/car/hardware/xpu/XpuProtoMessageVW$ViaPointInfo$Builder;->build()Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object p2

    check-cast p2, Landroid/car/hardware/xpu/XpuProtoMessageVW$ViaPointInfo;

    invoke-interface {v0, p1, p2}, Lcom/android/carsdk/protobuf/Internal$ProtobufList;->add(ILjava/lang/Object;)V

    return-void
.end method

.method private addViaPointInfos(ILandroid/car/hardware/xpu/XpuProtoMessageVW$ViaPointInfo;)V
    .locals 1

    .line 16506
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 16508
    invoke-direct {p0}, Landroid/car/hardware/xpu/XpuProtoMessageVW$Path;->ensureViaPointInfosIsMutable()V

    .line 16509
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$Path;->viaPointInfos_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1, p2}, Lcom/android/carsdk/protobuf/Internal$ProtobufList;->add(ILjava/lang/Object;)V

    return-void
.end method

.method private addViaPointInfos(Landroid/car/hardware/xpu/XpuProtoMessageVW$ViaPointInfo$Builder;)V
    .locals 1

    .line 16516
    invoke-direct {p0}, Landroid/car/hardware/xpu/XpuProtoMessageVW$Path;->ensureViaPointInfosIsMutable()V

    .line 16517
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$Path;->viaPointInfos_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    invoke-virtual {p1}, Landroid/car/hardware/xpu/XpuProtoMessageVW$ViaPointInfo$Builder;->build()Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Landroid/car/hardware/xpu/XpuProtoMessageVW$ViaPointInfo;

    invoke-interface {v0, p1}, Lcom/android/carsdk/protobuf/Internal$ProtobufList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private addViaPointInfos(Landroid/car/hardware/xpu/XpuProtoMessageVW$ViaPointInfo;)V
    .locals 1

    .line 16495
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 16497
    invoke-direct {p0}, Landroid/car/hardware/xpu/XpuProtoMessageVW$Path;->ensureViaPointInfosIsMutable()V

    .line 16498
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$Path;->viaPointInfos_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1}, Lcom/android/carsdk/protobuf/Internal$ProtobufList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private clearCameras()V
    .locals 1

    .line 16420
    invoke-static {}, Landroid/car/hardware/xpu/XpuProtoMessageVW$Path;->emptyProtobufList()Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    move-result-object v0

    iput-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$Path;->cameras_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    return-void
.end method

.method private clearDataVersion()V
    .locals 2

    const-wide/16 v0, 0x0

    .line 16067
    iput-wide v0, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$Path;->dataVersion_:J

    return-void
.end method

.method private clearForbiddenInfo12()V
    .locals 1

    .line 17011
    invoke-static {}, Landroid/car/hardware/xpu/XpuProtoMessageVW$Path;->emptyProtobufList()Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    move-result-object v0

    iput-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$Path;->forbiddenInfo12_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    return-void
.end method

.method private clearForbiddenInfoCount11()V
    .locals 1

    const/4 v0, 0x0

    .line 16896
    iput v0, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$Path;->forbiddenInfoCount11_:I

    return-void
.end method

.method private clearInnerTrafficIncidentCount()V
    .locals 1

    const/4 v0, 0x0

    .line 16631
    iput v0, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$Path;->innerTrafficIncidentCount_:I

    return-void
.end method

.method private clearInnerTrafficIncidents()V
    .locals 1

    .line 16864
    invoke-static {}, Landroid/car/hardware/xpu/XpuProtoMessageVW$Path;->emptyProtobufList()Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    move-result-object v0

    iput-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$Path;->innerTrafficIncidents_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    return-void
.end method

.method private clearLength()V
    .locals 2

    const-wide/16 v0, 0x0

    .line 16570
    iput-wide v0, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$Path;->length_:D

    return-void
.end method

.method private clearOuterTrafficIncidentCount()V
    .locals 1

    const/4 v0, 0x0

    .line 16608
    iput v0, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$Path;->outerTrafficIncidentCount_:I

    return-void
.end method

.method private clearOuterTrafficIncidents()V
    .locals 1

    .line 16744
    invoke-static {}, Landroid/car/hardware/xpu/XpuProtoMessageVW$Path;->emptyProtobufList()Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    move-result-object v0

    iput-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$Path;->outerTrafficIncidents_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    return-void
.end method

.method private clearSegments()V
    .locals 1

    .line 16180
    invoke-static {}, Landroid/car/hardware/xpu/XpuProtoMessageVW$Path;->emptyProtobufList()Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    move-result-object v0

    iput-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$Path;->segments_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    return-void
.end method

.method private clearTrafficLights()V
    .locals 1

    .line 16300
    invoke-static {}, Landroid/car/hardware/xpu/XpuProtoMessageVW$Path;->emptyProtobufList()Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    move-result-object v0

    iput-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$Path;->trafficLights_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    return-void
.end method

.method private clearViaPointInfos()V
    .locals 1

    .line 16540
    invoke-static {}, Landroid/car/hardware/xpu/XpuProtoMessageVW$Path;->emptyProtobufList()Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    move-result-object v0

    iput-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$Path;->viaPointInfos_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    return-void
.end method

.method private ensureCamerasIsMutable()V
    .locals 1

    .line 16345
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$Path;->cameras_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    invoke-interface {v0}, Lcom/android/carsdk/protobuf/Internal$ProtobufList;->isModifiable()Z

    move-result v0

    if-nez v0, :cond_0

    .line 16346
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$Path;->cameras_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    .line 16347
    invoke-static {v0}, Lcom/android/carsdk/protobuf/GeneratedMessageLite;->mutableCopy(Lcom/android/carsdk/protobuf/Internal$ProtobufList;)Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    move-result-object v0

    iput-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$Path;->cameras_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    :cond_0
    return-void
.end method

.method private ensureForbiddenInfo12IsMutable()V
    .locals 1

    .line 16936
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$Path;->forbiddenInfo12_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    invoke-interface {v0}, Lcom/android/carsdk/protobuf/Internal$ProtobufList;->isModifiable()Z

    move-result v0

    if-nez v0, :cond_0

    .line 16937
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$Path;->forbiddenInfo12_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    .line 16938
    invoke-static {v0}, Lcom/android/carsdk/protobuf/GeneratedMessageLite;->mutableCopy(Lcom/android/carsdk/protobuf/Internal$ProtobufList;)Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    move-result-object v0

    iput-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$Path;->forbiddenInfo12_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    :cond_0
    return-void
.end method

.method private ensureInnerTrafficIncidentsIsMutable()V
    .locals 1

    .line 16789
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$Path;->innerTrafficIncidents_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    invoke-interface {v0}, Lcom/android/carsdk/protobuf/Internal$ProtobufList;->isModifiable()Z

    move-result v0

    if-nez v0, :cond_0

    .line 16790
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$Path;->innerTrafficIncidents_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    .line 16791
    invoke-static {v0}, Lcom/android/carsdk/protobuf/GeneratedMessageLite;->mutableCopy(Lcom/android/carsdk/protobuf/Internal$ProtobufList;)Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    move-result-object v0

    iput-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$Path;->innerTrafficIncidents_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    :cond_0
    return-void
.end method

.method private ensureOuterTrafficIncidentsIsMutable()V
    .locals 1

    .line 16669
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$Path;->outerTrafficIncidents_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    invoke-interface {v0}, Lcom/android/carsdk/protobuf/Internal$ProtobufList;->isModifiable()Z

    move-result v0

    if-nez v0, :cond_0

    .line 16670
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$Path;->outerTrafficIncidents_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    .line 16671
    invoke-static {v0}, Lcom/android/carsdk/protobuf/GeneratedMessageLite;->mutableCopy(Lcom/android/carsdk/protobuf/Internal$ProtobufList;)Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    move-result-object v0

    iput-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$Path;->outerTrafficIncidents_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    :cond_0
    return-void
.end method

.method private ensureSegmentsIsMutable()V
    .locals 1

    .line 16105
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$Path;->segments_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    invoke-interface {v0}, Lcom/android/carsdk/protobuf/Internal$ProtobufList;->isModifiable()Z

    move-result v0

    if-nez v0, :cond_0

    .line 16106
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$Path;->segments_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    .line 16107
    invoke-static {v0}, Lcom/android/carsdk/protobuf/GeneratedMessageLite;->mutableCopy(Lcom/android/carsdk/protobuf/Internal$ProtobufList;)Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    move-result-object v0

    iput-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$Path;->segments_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    :cond_0
    return-void
.end method

.method private ensureTrafficLightsIsMutable()V
    .locals 1

    .line 16225
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$Path;->trafficLights_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    invoke-interface {v0}, Lcom/android/carsdk/protobuf/Internal$ProtobufList;->isModifiable()Z

    move-result v0

    if-nez v0, :cond_0

    .line 16226
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$Path;->trafficLights_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    .line 16227
    invoke-static {v0}, Lcom/android/carsdk/protobuf/GeneratedMessageLite;->mutableCopy(Lcom/android/carsdk/protobuf/Internal$ProtobufList;)Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    move-result-object v0

    iput-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$Path;->trafficLights_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    :cond_0
    return-void
.end method

.method private ensureViaPointInfosIsMutable()V
    .locals 1

    .line 16465
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$Path;->viaPointInfos_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    invoke-interface {v0}, Lcom/android/carsdk/protobuf/Internal$ProtobufList;->isModifiable()Z

    move-result v0

    if-nez v0, :cond_0

    .line 16466
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$Path;->viaPointInfos_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    .line 16467
    invoke-static {v0}, Lcom/android/carsdk/protobuf/GeneratedMessageLite;->mutableCopy(Lcom/android/carsdk/protobuf/Internal$ProtobufList;)Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    move-result-object v0

    iput-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$Path;->viaPointInfos_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    :cond_0
    return-void
.end method

.method public static getDefaultInstance()Landroid/car/hardware/xpu/XpuProtoMessageVW$Path;
    .locals 1

    .line 18203
    sget-object v0, Landroid/car/hardware/xpu/XpuProtoMessageVW$Path;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuProtoMessageVW$Path;

    return-object v0
.end method

.method public static newBuilder()Landroid/car/hardware/xpu/XpuProtoMessageVW$Path$Builder;
    .locals 1

    .line 17180
    sget-object v0, Landroid/car/hardware/xpu/XpuProtoMessageVW$Path;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuProtoMessageVW$Path;

    invoke-virtual {v0}, Landroid/car/hardware/xpu/XpuProtoMessageVW$Path;->toBuilder()Lcom/android/carsdk/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Landroid/car/hardware/xpu/XpuProtoMessageVW$Path$Builder;

    return-object v0
.end method

.method public static newBuilder(Landroid/car/hardware/xpu/XpuProtoMessageVW$Path;)Landroid/car/hardware/xpu/XpuProtoMessageVW$Path$Builder;
    .locals 1

    .line 17183
    sget-object v0, Landroid/car/hardware/xpu/XpuProtoMessageVW$Path;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuProtoMessageVW$Path;

    invoke-virtual {v0}, Landroid/car/hardware/xpu/XpuProtoMessageVW$Path;->toBuilder()Lcom/android/carsdk/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Landroid/car/hardware/xpu/XpuProtoMessageVW$Path$Builder;

    invoke-virtual {v0, p0}, Landroid/car/hardware/xpu/XpuProtoMessageVW$Path$Builder;->mergeFrom(Lcom/android/carsdk/protobuf/GeneratedMessageLite;)Lcom/android/carsdk/protobuf/GeneratedMessageLite$Builder;

    move-result-object p0

    check-cast p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$Path$Builder;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Landroid/car/hardware/xpu/XpuProtoMessageVW$Path;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 17157
    sget-object v0, Landroid/car/hardware/xpu/XpuProtoMessageVW$Path;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuProtoMessageVW$Path;

    invoke-static {v0, p0}, Landroid/car/hardware/xpu/XpuProtoMessageVW$Path;->parseDelimitedFrom(Lcom/android/carsdk/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$Path;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/android/carsdk/protobuf/ExtensionRegistryLite;)Landroid/car/hardware/xpu/XpuProtoMessageVW$Path;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 17163
    sget-object v0, Landroid/car/hardware/xpu/XpuProtoMessageVW$Path;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuProtoMessageVW$Path;

    invoke-static {v0, p0, p1}, Landroid/car/hardware/xpu/XpuProtoMessageVW$Path;->parseDelimitedFrom(Lcom/android/carsdk/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/android/carsdk/protobuf/ExtensionRegistryLite;)Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$Path;

    return-object p0
.end method

.method public static parseFrom(Lcom/android/carsdk/protobuf/ByteString;)Landroid/car/hardware/xpu/XpuProtoMessageVW$Path;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/carsdk/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 17121
    sget-object v0, Landroid/car/hardware/xpu/XpuProtoMessageVW$Path;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuProtoMessageVW$Path;

    invoke-static {v0, p0}, Lcom/android/carsdk/protobuf/GeneratedMessageLite;->parseFrom(Lcom/android/carsdk/protobuf/GeneratedMessageLite;Lcom/android/carsdk/protobuf/ByteString;)Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$Path;

    return-object p0
.end method

.method public static parseFrom(Lcom/android/carsdk/protobuf/ByteString;Lcom/android/carsdk/protobuf/ExtensionRegistryLite;)Landroid/car/hardware/xpu/XpuProtoMessageVW$Path;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/carsdk/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 17128
    sget-object v0, Landroid/car/hardware/xpu/XpuProtoMessageVW$Path;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuProtoMessageVW$Path;

    invoke-static {v0, p0, p1}, Lcom/android/carsdk/protobuf/GeneratedMessageLite;->parseFrom(Lcom/android/carsdk/protobuf/GeneratedMessageLite;Lcom/android/carsdk/protobuf/ByteString;Lcom/android/carsdk/protobuf/ExtensionRegistryLite;)Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$Path;

    return-object p0
.end method

.method public static parseFrom(Lcom/android/carsdk/protobuf/CodedInputStream;)Landroid/car/hardware/xpu/XpuProtoMessageVW$Path;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 17168
    sget-object v0, Landroid/car/hardware/xpu/XpuProtoMessageVW$Path;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuProtoMessageVW$Path;

    invoke-static {v0, p0}, Lcom/android/carsdk/protobuf/GeneratedMessageLite;->parseFrom(Lcom/android/carsdk/protobuf/GeneratedMessageLite;Lcom/android/carsdk/protobuf/CodedInputStream;)Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$Path;

    return-object p0
.end method

.method public static parseFrom(Lcom/android/carsdk/protobuf/CodedInputStream;Lcom/android/carsdk/protobuf/ExtensionRegistryLite;)Landroid/car/hardware/xpu/XpuProtoMessageVW$Path;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 17175
    sget-object v0, Landroid/car/hardware/xpu/XpuProtoMessageVW$Path;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuProtoMessageVW$Path;

    invoke-static {v0, p0, p1}, Lcom/android/carsdk/protobuf/GeneratedMessageLite;->parseFrom(Lcom/android/carsdk/protobuf/GeneratedMessageLite;Lcom/android/carsdk/protobuf/CodedInputStream;Lcom/android/carsdk/protobuf/ExtensionRegistryLite;)Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$Path;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Landroid/car/hardware/xpu/XpuProtoMessageVW$Path;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 17145
    sget-object v0, Landroid/car/hardware/xpu/XpuProtoMessageVW$Path;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuProtoMessageVW$Path;

    invoke-static {v0, p0}, Lcom/android/carsdk/protobuf/GeneratedMessageLite;->parseFrom(Lcom/android/carsdk/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$Path;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/android/carsdk/protobuf/ExtensionRegistryLite;)Landroid/car/hardware/xpu/XpuProtoMessageVW$Path;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 17152
    sget-object v0, Landroid/car/hardware/xpu/XpuProtoMessageVW$Path;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuProtoMessageVW$Path;

    invoke-static {v0, p0, p1}, Lcom/android/carsdk/protobuf/GeneratedMessageLite;->parseFrom(Lcom/android/carsdk/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/android/carsdk/protobuf/ExtensionRegistryLite;)Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$Path;

    return-object p0
.end method

.method public static parseFrom([B)Landroid/car/hardware/xpu/XpuProtoMessageVW$Path;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/carsdk/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 17133
    sget-object v0, Landroid/car/hardware/xpu/XpuProtoMessageVW$Path;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuProtoMessageVW$Path;

    invoke-static {v0, p0}, Lcom/android/carsdk/protobuf/GeneratedMessageLite;->parseFrom(Lcom/android/carsdk/protobuf/GeneratedMessageLite;[B)Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$Path;

    return-object p0
.end method

.method public static parseFrom([BLcom/android/carsdk/protobuf/ExtensionRegistryLite;)Landroid/car/hardware/xpu/XpuProtoMessageVW$Path;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/carsdk/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 17140
    sget-object v0, Landroid/car/hardware/xpu/XpuProtoMessageVW$Path;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuProtoMessageVW$Path;

    invoke-static {v0, p0, p1}, Lcom/android/carsdk/protobuf/GeneratedMessageLite;->parseFrom(Lcom/android/carsdk/protobuf/GeneratedMessageLite;[BLcom/android/carsdk/protobuf/ExtensionRegistryLite;)Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$Path;

    return-object p0
.end method

.method public static parser()Lcom/android/carsdk/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/android/carsdk/protobuf/Parser<",
            "Landroid/car/hardware/xpu/XpuProtoMessageVW$Path;",
            ">;"
        }
    .end annotation

    .line 18209
    sget-object v0, Landroid/car/hardware/xpu/XpuProtoMessageVW$Path;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuProtoMessageVW$Path;

    invoke-virtual {v0}, Landroid/car/hardware/xpu/XpuProtoMessageVW$Path;->getParserForType()Lcom/android/carsdk/protobuf/Parser;

    move-result-object v0

    return-object v0
.end method

.method private removeCameras(I)V
    .locals 1

    .line 16426
    invoke-direct {p0}, Landroid/car/hardware/xpu/XpuProtoMessageVW$Path;->ensureCamerasIsMutable()V

    .line 16427
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$Path;->cameras_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1}, Lcom/android/carsdk/protobuf/Internal$ProtobufList;->remove(I)Ljava/lang/Object;

    return-void
.end method

.method private removeForbiddenInfo12(I)V
    .locals 1

    .line 17017
    invoke-direct {p0}, Landroid/car/hardware/xpu/XpuProtoMessageVW$Path;->ensureForbiddenInfo12IsMutable()V

    .line 17018
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$Path;->forbiddenInfo12_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1}, Lcom/android/carsdk/protobuf/Internal$ProtobufList;->remove(I)Ljava/lang/Object;

    return-void
.end method

.method private removeInnerTrafficIncidents(I)V
    .locals 1

    .line 16870
    invoke-direct {p0}, Landroid/car/hardware/xpu/XpuProtoMessageVW$Path;->ensureInnerTrafficIncidentsIsMutable()V

    .line 16871
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$Path;->innerTrafficIncidents_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1}, Lcom/android/carsdk/protobuf/Internal$ProtobufList;->remove(I)Ljava/lang/Object;

    return-void
.end method

.method private removeOuterTrafficIncidents(I)V
    .locals 1

    .line 16750
    invoke-direct {p0}, Landroid/car/hardware/xpu/XpuProtoMessageVW$Path;->ensureOuterTrafficIncidentsIsMutable()V

    .line 16751
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$Path;->outerTrafficIncidents_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1}, Lcom/android/carsdk/protobuf/Internal$ProtobufList;->remove(I)Ljava/lang/Object;

    return-void
.end method

.method private removeSegments(I)V
    .locals 1

    .line 16186
    invoke-direct {p0}, Landroid/car/hardware/xpu/XpuProtoMessageVW$Path;->ensureSegmentsIsMutable()V

    .line 16187
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$Path;->segments_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1}, Lcom/android/carsdk/protobuf/Internal$ProtobufList;->remove(I)Ljava/lang/Object;

    return-void
.end method

.method private removeTrafficLights(I)V
    .locals 1

    .line 16306
    invoke-direct {p0}, Landroid/car/hardware/xpu/XpuProtoMessageVW$Path;->ensureTrafficLightsIsMutable()V

    .line 16307
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$Path;->trafficLights_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1}, Lcom/android/carsdk/protobuf/Internal$ProtobufList;->remove(I)Ljava/lang/Object;

    return-void
.end method

.method private removeViaPointInfos(I)V
    .locals 1

    .line 16546
    invoke-direct {p0}, Landroid/car/hardware/xpu/XpuProtoMessageVW$Path;->ensureViaPointInfosIsMutable()V

    .line 16547
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$Path;->viaPointInfos_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1}, Lcom/android/carsdk/protobuf/Internal$ProtobufList;->remove(I)Ljava/lang/Object;

    return-void
.end method

.method private setCameras(ILandroid/car/hardware/xpu/XpuProtoMessageVW$Camera$Builder;)V
    .locals 1

    .line 16367
    invoke-direct {p0}, Landroid/car/hardware/xpu/XpuProtoMessageVW$Path;->ensureCamerasIsMutable()V

    .line 16368
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$Path;->cameras_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    invoke-virtual {p2}, Landroid/car/hardware/xpu/XpuProtoMessageVW$Camera$Builder;->build()Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object p2

    check-cast p2, Landroid/car/hardware/xpu/XpuProtoMessageVW$Camera;

    invoke-interface {v0, p1, p2}, Lcom/android/carsdk/protobuf/Internal$ProtobufList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private setCameras(ILandroid/car/hardware/xpu/XpuProtoMessageVW$Camera;)V
    .locals 1

    .line 16357
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 16359
    invoke-direct {p0}, Landroid/car/hardware/xpu/XpuProtoMessageVW$Path;->ensureCamerasIsMutable()V

    .line 16360
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$Path;->cameras_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1, p2}, Lcom/android/carsdk/protobuf/Internal$ProtobufList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private setDataVersion(J)V
    .locals 0

    .line 16060
    iput-wide p1, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$Path;->dataVersion_:J

    return-void
.end method

.method private setForbiddenInfo12(ILandroid/car/hardware/xpu/XpuProtoMessageVW$ForbiddenInfo$Builder;)V
    .locals 1

    .line 16958
    invoke-direct {p0}, Landroid/car/hardware/xpu/XpuProtoMessageVW$Path;->ensureForbiddenInfo12IsMutable()V

    .line 16959
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$Path;->forbiddenInfo12_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    invoke-virtual {p2}, Landroid/car/hardware/xpu/XpuProtoMessageVW$ForbiddenInfo$Builder;->build()Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object p2

    check-cast p2, Landroid/car/hardware/xpu/XpuProtoMessageVW$ForbiddenInfo;

    invoke-interface {v0, p1, p2}, Lcom/android/carsdk/protobuf/Internal$ProtobufList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private setForbiddenInfo12(ILandroid/car/hardware/xpu/XpuProtoMessageVW$ForbiddenInfo;)V
    .locals 1

    .line 16948
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 16950
    invoke-direct {p0}, Landroid/car/hardware/xpu/XpuProtoMessageVW$Path;->ensureForbiddenInfo12IsMutable()V

    .line 16951
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$Path;->forbiddenInfo12_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1, p2}, Lcom/android/carsdk/protobuf/Internal$ProtobufList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private setForbiddenInfoCount11(I)V
    .locals 0

    .line 16889
    iput p1, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$Path;->forbiddenInfoCount11_:I

    return-void
.end method

.method private setInnerTrafficIncidentCount(I)V
    .locals 0

    .line 16624
    iput p1, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$Path;->innerTrafficIncidentCount_:I

    return-void
.end method

.method private setInnerTrafficIncidents(ILandroid/car/hardware/xpu/XpuProtoMessageVW$TrafficIncident$Builder;)V
    .locals 1

    .line 16811
    invoke-direct {p0}, Landroid/car/hardware/xpu/XpuProtoMessageVW$Path;->ensureInnerTrafficIncidentsIsMutable()V

    .line 16812
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$Path;->innerTrafficIncidents_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    invoke-virtual {p2}, Landroid/car/hardware/xpu/XpuProtoMessageVW$TrafficIncident$Builder;->build()Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object p2

    check-cast p2, Landroid/car/hardware/xpu/XpuProtoMessageVW$TrafficIncident;

    invoke-interface {v0, p1, p2}, Lcom/android/carsdk/protobuf/Internal$ProtobufList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private setInnerTrafficIncidents(ILandroid/car/hardware/xpu/XpuProtoMessageVW$TrafficIncident;)V
    .locals 1

    .line 16801
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 16803
    invoke-direct {p0}, Landroid/car/hardware/xpu/XpuProtoMessageVW$Path;->ensureInnerTrafficIncidentsIsMutable()V

    .line 16804
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$Path;->innerTrafficIncidents_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1, p2}, Lcom/android/carsdk/protobuf/Internal$ProtobufList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private setLength(D)V
    .locals 0

    .line 16563
    iput-wide p1, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$Path;->length_:D

    return-void
.end method

.method private setOuterTrafficIncidentCount(I)V
    .locals 0

    .line 16596
    iput p1, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$Path;->outerTrafficIncidentCount_:I

    return-void
.end method

.method private setOuterTrafficIncidents(ILandroid/car/hardware/xpu/XpuProtoMessageVW$TrafficIncident$Builder;)V
    .locals 1

    .line 16691
    invoke-direct {p0}, Landroid/car/hardware/xpu/XpuProtoMessageVW$Path;->ensureOuterTrafficIncidentsIsMutable()V

    .line 16692
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$Path;->outerTrafficIncidents_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    invoke-virtual {p2}, Landroid/car/hardware/xpu/XpuProtoMessageVW$TrafficIncident$Builder;->build()Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object p2

    check-cast p2, Landroid/car/hardware/xpu/XpuProtoMessageVW$TrafficIncident;

    invoke-interface {v0, p1, p2}, Lcom/android/carsdk/protobuf/Internal$ProtobufList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private setOuterTrafficIncidents(ILandroid/car/hardware/xpu/XpuProtoMessageVW$TrafficIncident;)V
    .locals 1

    .line 16681
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 16683
    invoke-direct {p0}, Landroid/car/hardware/xpu/XpuProtoMessageVW$Path;->ensureOuterTrafficIncidentsIsMutable()V

    .line 16684
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$Path;->outerTrafficIncidents_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1, p2}, Lcom/android/carsdk/protobuf/Internal$ProtobufList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private setSegments(ILandroid/car/hardware/xpu/XpuProtoMessageVW$Segment$Builder;)V
    .locals 1

    .line 16127
    invoke-direct {p0}, Landroid/car/hardware/xpu/XpuProtoMessageVW$Path;->ensureSegmentsIsMutable()V

    .line 16128
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$Path;->segments_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    invoke-virtual {p2}, Landroid/car/hardware/xpu/XpuProtoMessageVW$Segment$Builder;->build()Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object p2

    check-cast p2, Landroid/car/hardware/xpu/XpuProtoMessageVW$Segment;

    invoke-interface {v0, p1, p2}, Lcom/android/carsdk/protobuf/Internal$ProtobufList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private setSegments(ILandroid/car/hardware/xpu/XpuProtoMessageVW$Segment;)V
    .locals 1

    .line 16117
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 16119
    invoke-direct {p0}, Landroid/car/hardware/xpu/XpuProtoMessageVW$Path;->ensureSegmentsIsMutable()V

    .line 16120
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$Path;->segments_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1, p2}, Lcom/android/carsdk/protobuf/Internal$ProtobufList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private setTrafficLights(ILandroid/car/hardware/xpu/XpuProtoMessageVW$V2_Point$Builder;)V
    .locals 1

    .line 16247
    invoke-direct {p0}, Landroid/car/hardware/xpu/XpuProtoMessageVW$Path;->ensureTrafficLightsIsMutable()V

    .line 16248
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$Path;->trafficLights_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    invoke-virtual {p2}, Landroid/car/hardware/xpu/XpuProtoMessageVW$V2_Point$Builder;->build()Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object p2

    check-cast p2, Landroid/car/hardware/xpu/XpuProtoMessageVW$V2_Point;

    invoke-interface {v0, p1, p2}, Lcom/android/carsdk/protobuf/Internal$ProtobufList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private setTrafficLights(ILandroid/car/hardware/xpu/XpuProtoMessageVW$V2_Point;)V
    .locals 1

    .line 16237
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 16239
    invoke-direct {p0}, Landroid/car/hardware/xpu/XpuProtoMessageVW$Path;->ensureTrafficLightsIsMutable()V

    .line 16240
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$Path;->trafficLights_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1, p2}, Lcom/android/carsdk/protobuf/Internal$ProtobufList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private setViaPointInfos(ILandroid/car/hardware/xpu/XpuProtoMessageVW$ViaPointInfo$Builder;)V
    .locals 1

    .line 16487
    invoke-direct {p0}, Landroid/car/hardware/xpu/XpuProtoMessageVW$Path;->ensureViaPointInfosIsMutable()V

    .line 16488
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$Path;->viaPointInfos_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    invoke-virtual {p2}, Landroid/car/hardware/xpu/XpuProtoMessageVW$ViaPointInfo$Builder;->build()Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object p2

    check-cast p2, Landroid/car/hardware/xpu/XpuProtoMessageVW$ViaPointInfo;

    invoke-interface {v0, p1, p2}, Lcom/android/carsdk/protobuf/Internal$ProtobufList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private setViaPointInfos(ILandroid/car/hardware/xpu/XpuProtoMessageVW$ViaPointInfo;)V
    .locals 1

    .line 16477
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 16479
    invoke-direct {p0}, Landroid/car/hardware/xpu/XpuProtoMessageVW$Path;->ensureViaPointInfosIsMutable()V

    .line 16480
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$Path;->viaPointInfos_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1, p2}, Lcom/android/carsdk/protobuf/Internal$ProtobufList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method protected final dynamicMethod(Lcom/android/carsdk/protobuf/GeneratedMessageLite$MethodToInvoke;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 10

    .line 18014
    sget-object v0, Landroid/car/hardware/xpu/XpuProtoMessageVW$1;->$SwitchMap$com$google$protobuf$GeneratedMessageLite$MethodToInvoke:[I

    invoke-virtual {p1}, Lcom/android/carsdk/protobuf/GeneratedMessageLite$MethodToInvoke;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x1

    packed-switch p1, :pswitch_data_0

    .line 18191
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1

    .line 18182
    :pswitch_0
    sget-object p1, Landroid/car/hardware/xpu/XpuProtoMessageVW$Path;->PARSER:Lcom/android/carsdk/protobuf/Parser;

    if-nez p1, :cond_1

    const-class p1, Landroid/car/hardware/xpu/XpuProtoMessageVW$Path;

    monitor-enter p1

    .line 18183
    :try_start_0
    sget-object p2, Landroid/car/hardware/xpu/XpuProtoMessageVW$Path;->PARSER:Lcom/android/carsdk/protobuf/Parser;

    if-nez p2, :cond_0

    .line 18184
    new-instance p2, Lcom/android/carsdk/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;

    sget-object p3, Landroid/car/hardware/xpu/XpuProtoMessageVW$Path;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuProtoMessageVW$Path;

    invoke-direct {p2, p3}, Lcom/android/carsdk/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;-><init>(Lcom/android/carsdk/protobuf/GeneratedMessageLite;)V

    sput-object p2, Landroid/car/hardware/xpu/XpuProtoMessageVW$Path;->PARSER:Lcom/android/carsdk/protobuf/Parser;

    .line 18186
    :cond_0
    monitor-exit p1

    goto :goto_0

    :catchall_0
    move-exception p2

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p2

    .line 18188
    :cond_1
    :goto_0
    sget-object p1, Landroid/car/hardware/xpu/XpuProtoMessageVW$Path;->PARSER:Lcom/android/carsdk/protobuf/Parser;

    return-object p1

    .line 18061
    :pswitch_1
    check-cast p2, Lcom/android/carsdk/protobuf/CodedInputStream;

    .line 18063
    check-cast p3, Lcom/android/carsdk/protobuf/ExtensionRegistryLite;

    :cond_2
    :goto_1
    if-nez v1, :cond_a

    .line 18068
    :try_start_1
    invoke-virtual {p2}, Lcom/android/carsdk/protobuf/CodedInputStream;->readTag()I

    move-result p1

    sparse-switch p1, :sswitch_data_0

    .line 18074
    invoke-virtual {p2, p1}, Lcom/android/carsdk/protobuf/CodedInputStream;->skipField(I)Z

    move-result p1

    goto/16 :goto_3

    .line 18159
    :sswitch_0
    iget-object p1, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$Path;->forbiddenInfo12_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    invoke-interface {p1}, Lcom/android/carsdk/protobuf/Internal$ProtobufList;->isModifiable()Z

    move-result p1

    if-nez p1, :cond_3

    .line 18160
    iget-object p1, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$Path;->forbiddenInfo12_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    .line 18161
    invoke-static {p1}, Lcom/android/carsdk/protobuf/GeneratedMessageLite;->mutableCopy(Lcom/android/carsdk/protobuf/Internal$ProtobufList;)Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    move-result-object p1

    iput-object p1, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$Path;->forbiddenInfo12_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    .line 18163
    :cond_3
    iget-object p1, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$Path;->forbiddenInfo12_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    .line 18164
    invoke-static {}, Landroid/car/hardware/xpu/XpuProtoMessageVW$ForbiddenInfo;->parser()Lcom/android/carsdk/protobuf/Parser;

    move-result-object v0

    invoke-virtual {p2, v0, p3}, Lcom/android/carsdk/protobuf/CodedInputStream;->readMessage(Lcom/android/carsdk/protobuf/Parser;Lcom/android/carsdk/protobuf/ExtensionRegistryLite;)Lcom/android/carsdk/protobuf/MessageLite;

    move-result-object v0

    check-cast v0, Landroid/car/hardware/xpu/XpuProtoMessageVW$ForbiddenInfo;

    .line 18163
    invoke-interface {p1, v0}, Lcom/android/carsdk/protobuf/Internal$ProtobufList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 18155
    :sswitch_1
    invoke-virtual {p2}, Lcom/android/carsdk/protobuf/CodedInputStream;->readInt32()I

    move-result p1

    iput p1, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$Path;->forbiddenInfoCount11_:I

    goto :goto_1

    .line 18145
    :sswitch_2
    iget-object p1, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$Path;->innerTrafficIncidents_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    invoke-interface {p1}, Lcom/android/carsdk/protobuf/Internal$ProtobufList;->isModifiable()Z

    move-result p1

    if-nez p1, :cond_4

    .line 18146
    iget-object p1, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$Path;->innerTrafficIncidents_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    .line 18147
    invoke-static {p1}, Lcom/android/carsdk/protobuf/GeneratedMessageLite;->mutableCopy(Lcom/android/carsdk/protobuf/Internal$ProtobufList;)Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    move-result-object p1

    iput-object p1, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$Path;->innerTrafficIncidents_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    .line 18149
    :cond_4
    iget-object p1, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$Path;->innerTrafficIncidents_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    .line 18150
    invoke-static {}, Landroid/car/hardware/xpu/XpuProtoMessageVW$TrafficIncident;->parser()Lcom/android/carsdk/protobuf/Parser;

    move-result-object v0

    invoke-virtual {p2, v0, p3}, Lcom/android/carsdk/protobuf/CodedInputStream;->readMessage(Lcom/android/carsdk/protobuf/Parser;Lcom/android/carsdk/protobuf/ExtensionRegistryLite;)Lcom/android/carsdk/protobuf/MessageLite;

    move-result-object v0

    check-cast v0, Landroid/car/hardware/xpu/XpuProtoMessageVW$TrafficIncident;

    .line 18149
    invoke-interface {p1, v0}, Lcom/android/carsdk/protobuf/Internal$ProtobufList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 18136
    :sswitch_3
    iget-object p1, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$Path;->outerTrafficIncidents_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    invoke-interface {p1}, Lcom/android/carsdk/protobuf/Internal$ProtobufList;->isModifiable()Z

    move-result p1

    if-nez p1, :cond_5

    .line 18137
    iget-object p1, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$Path;->outerTrafficIncidents_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    .line 18138
    invoke-static {p1}, Lcom/android/carsdk/protobuf/GeneratedMessageLite;->mutableCopy(Lcom/android/carsdk/protobuf/Internal$ProtobufList;)Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    move-result-object p1

    iput-object p1, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$Path;->outerTrafficIncidents_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    .line 18140
    :cond_5
    iget-object p1, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$Path;->outerTrafficIncidents_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    .line 18141
    invoke-static {}, Landroid/car/hardware/xpu/XpuProtoMessageVW$TrafficIncident;->parser()Lcom/android/carsdk/protobuf/Parser;

    move-result-object v0

    invoke-virtual {p2, v0, p3}, Lcom/android/carsdk/protobuf/CodedInputStream;->readMessage(Lcom/android/carsdk/protobuf/Parser;Lcom/android/carsdk/protobuf/ExtensionRegistryLite;)Lcom/android/carsdk/protobuf/MessageLite;

    move-result-object v0

    check-cast v0, Landroid/car/hardware/xpu/XpuProtoMessageVW$TrafficIncident;

    .line 18140
    invoke-interface {p1, v0}, Lcom/android/carsdk/protobuf/Internal$ProtobufList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 18132
    :sswitch_4
    invoke-virtual {p2}, Lcom/android/carsdk/protobuf/CodedInputStream;->readInt32()I

    move-result p1

    iput p1, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$Path;->innerTrafficIncidentCount_:I

    goto :goto_1

    .line 18127
    :sswitch_5
    invoke-virtual {p2}, Lcom/android/carsdk/protobuf/CodedInputStream;->readInt32()I

    move-result p1

    iput p1, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$Path;->outerTrafficIncidentCount_:I

    goto/16 :goto_1

    .line 18122
    :sswitch_6
    invoke-virtual {p2}, Lcom/android/carsdk/protobuf/CodedInputStream;->readDouble()D

    move-result-wide v3

    iput-wide v3, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$Path;->length_:D

    goto/16 :goto_1

    .line 18112
    :sswitch_7
    iget-object p1, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$Path;->viaPointInfos_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    invoke-interface {p1}, Lcom/android/carsdk/protobuf/Internal$ProtobufList;->isModifiable()Z

    move-result p1

    if-nez p1, :cond_6

    .line 18113
    iget-object p1, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$Path;->viaPointInfos_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    .line 18114
    invoke-static {p1}, Lcom/android/carsdk/protobuf/GeneratedMessageLite;->mutableCopy(Lcom/android/carsdk/protobuf/Internal$ProtobufList;)Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    move-result-object p1

    iput-object p1, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$Path;->viaPointInfos_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    .line 18116
    :cond_6
    iget-object p1, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$Path;->viaPointInfos_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    .line 18117
    invoke-static {}, Landroid/car/hardware/xpu/XpuProtoMessageVW$ViaPointInfo;->parser()Lcom/android/carsdk/protobuf/Parser;

    move-result-object v0

    invoke-virtual {p2, v0, p3}, Lcom/android/carsdk/protobuf/CodedInputStream;->readMessage(Lcom/android/carsdk/protobuf/Parser;Lcom/android/carsdk/protobuf/ExtensionRegistryLite;)Lcom/android/carsdk/protobuf/MessageLite;

    move-result-object v0

    check-cast v0, Landroid/car/hardware/xpu/XpuProtoMessageVW$ViaPointInfo;

    .line 18116
    invoke-interface {p1, v0}, Lcom/android/carsdk/protobuf/Internal$ProtobufList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 18103
    :sswitch_8
    iget-object p1, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$Path;->cameras_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    invoke-interface {p1}, Lcom/android/carsdk/protobuf/Internal$ProtobufList;->isModifiable()Z

    move-result p1

    if-nez p1, :cond_7

    .line 18104
    iget-object p1, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$Path;->cameras_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    .line 18105
    invoke-static {p1}, Lcom/android/carsdk/protobuf/GeneratedMessageLite;->mutableCopy(Lcom/android/carsdk/protobuf/Internal$ProtobufList;)Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    move-result-object p1

    iput-object p1, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$Path;->cameras_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    .line 18107
    :cond_7
    iget-object p1, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$Path;->cameras_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    .line 18108
    invoke-static {}, Landroid/car/hardware/xpu/XpuProtoMessageVW$Camera;->parser()Lcom/android/carsdk/protobuf/Parser;

    move-result-object v0

    invoke-virtual {p2, v0, p3}, Lcom/android/carsdk/protobuf/CodedInputStream;->readMessage(Lcom/android/carsdk/protobuf/Parser;Lcom/android/carsdk/protobuf/ExtensionRegistryLite;)Lcom/android/carsdk/protobuf/MessageLite;

    move-result-object v0

    check-cast v0, Landroid/car/hardware/xpu/XpuProtoMessageVW$Camera;

    .line 18107
    invoke-interface {p1, v0}, Lcom/android/carsdk/protobuf/Internal$ProtobufList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 18094
    :sswitch_9
    iget-object p1, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$Path;->trafficLights_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    invoke-interface {p1}, Lcom/android/carsdk/protobuf/Internal$ProtobufList;->isModifiable()Z

    move-result p1

    if-nez p1, :cond_8

    .line 18095
    iget-object p1, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$Path;->trafficLights_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    .line 18096
    invoke-static {p1}, Lcom/android/carsdk/protobuf/GeneratedMessageLite;->mutableCopy(Lcom/android/carsdk/protobuf/Internal$ProtobufList;)Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    move-result-object p1

    iput-object p1, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$Path;->trafficLights_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    .line 18098
    :cond_8
    iget-object p1, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$Path;->trafficLights_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    .line 18099
    invoke-static {}, Landroid/car/hardware/xpu/XpuProtoMessageVW$V2_Point;->parser()Lcom/android/carsdk/protobuf/Parser;

    move-result-object v0

    invoke-virtual {p2, v0, p3}, Lcom/android/carsdk/protobuf/CodedInputStream;->readMessage(Lcom/android/carsdk/protobuf/Parser;Lcom/android/carsdk/protobuf/ExtensionRegistryLite;)Lcom/android/carsdk/protobuf/MessageLite;

    move-result-object v0

    check-cast v0, Landroid/car/hardware/xpu/XpuProtoMessageVW$V2_Point;

    .line 18098
    invoke-interface {p1, v0}, Lcom/android/carsdk/protobuf/Internal$ProtobufList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 18085
    :sswitch_a
    iget-object p1, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$Path;->segments_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    invoke-interface {p1}, Lcom/android/carsdk/protobuf/Internal$ProtobufList;->isModifiable()Z

    move-result p1

    if-nez p1, :cond_9

    .line 18086
    iget-object p1, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$Path;->segments_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    .line 18087
    invoke-static {p1}, Lcom/android/carsdk/protobuf/GeneratedMessageLite;->mutableCopy(Lcom/android/carsdk/protobuf/Internal$ProtobufList;)Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    move-result-object p1

    iput-object p1, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$Path;->segments_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    .line 18089
    :cond_9
    iget-object p1, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$Path;->segments_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    .line 18090
    invoke-static {}, Landroid/car/hardware/xpu/XpuProtoMessageVW$Segment;->parser()Lcom/android/carsdk/protobuf/Parser;

    move-result-object v0

    invoke-virtual {p2, v0, p3}, Lcom/android/carsdk/protobuf/CodedInputStream;->readMessage(Lcom/android/carsdk/protobuf/Parser;Lcom/android/carsdk/protobuf/ExtensionRegistryLite;)Lcom/android/carsdk/protobuf/MessageLite;

    move-result-object v0

    check-cast v0, Landroid/car/hardware/xpu/XpuProtoMessageVW$Segment;

    .line 18089
    invoke-interface {p1, v0}, Lcom/android/carsdk/protobuf/Internal$ProtobufList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 18081
    :sswitch_b
    invoke-virtual {p2}, Lcom/android/carsdk/protobuf/CodedInputStream;->readUInt64()J

    move-result-wide v3

    iput-wide v3, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$Path;->dataVersion_:J
    :try_end_1
    .catch Lcom/android/carsdk/protobuf/InvalidProtocolBufferException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto/16 :goto_1

    :goto_2
    :sswitch_c
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

    .line 18172
    :try_start_2
    new-instance p2, Ljava/lang/RuntimeException;

    new-instance p3, Lcom/android/carsdk/protobuf/InvalidProtocolBufferException;

    .line 18174
    invoke-virtual {p1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p3, p1}, Lcom/android/carsdk/protobuf/InvalidProtocolBufferException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, p0}, Lcom/android/carsdk/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/android/carsdk/protobuf/MessageLite;)Lcom/android/carsdk/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p2

    :catch_1
    move-exception p1

    .line 18170
    new-instance p2, Ljava/lang/RuntimeException;

    invoke-virtual {p1, p0}, Lcom/android/carsdk/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/android/carsdk/protobuf/MessageLite;)Lcom/android/carsdk/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 18175
    :goto_4
    throw p1

    .line 18179
    :cond_a
    :pswitch_2
    sget-object p1, Landroid/car/hardware/xpu/XpuProtoMessageVW$Path;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuProtoMessageVW$Path;

    return-object p1

    .line 18035
    :pswitch_3
    check-cast p2, Lcom/android/carsdk/protobuf/GeneratedMessageLite$Visitor;

    .line 18036
    check-cast p3, Landroid/car/hardware/xpu/XpuProtoMessageVW$Path;

    .line 18037
    iget-wide v5, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$Path;->dataVersion_:J

    const-wide/16 v3, 0x0

    cmp-long p1, v5, v3

    if-eqz p1, :cond_b

    move p1, v2

    goto :goto_5

    :cond_b
    move p1, v1

    :goto_5
    iget-wide v8, p3, Landroid/car/hardware/xpu/XpuProtoMessageVW$Path;->dataVersion_:J

    cmp-long v0, v8, v3

    if-eqz v0, :cond_c

    move v7, v2

    goto :goto_6

    :cond_c
    move v7, v1

    :goto_6
    move-object v3, p2

    move v4, p1

    invoke-interface/range {v3 .. v9}, Lcom/android/carsdk/protobuf/GeneratedMessageLite$Visitor;->visitLong(ZJZJ)J

    move-result-wide v3

    iput-wide v3, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$Path;->dataVersion_:J

    .line 18039
    iget-object p1, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$Path;->segments_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    iget-object v0, p3, Landroid/car/hardware/xpu/XpuProtoMessageVW$Path;->segments_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    invoke-interface {p2, p1, v0}, Lcom/android/carsdk/protobuf/GeneratedMessageLite$Visitor;->visitList(Lcom/android/carsdk/protobuf/Internal$ProtobufList;Lcom/android/carsdk/protobuf/Internal$ProtobufList;)Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    move-result-object p1

    iput-object p1, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$Path;->segments_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    .line 18040
    iget-object p1, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$Path;->trafficLights_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    iget-object v0, p3, Landroid/car/hardware/xpu/XpuProtoMessageVW$Path;->trafficLights_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    invoke-interface {p2, p1, v0}, Lcom/android/carsdk/protobuf/GeneratedMessageLite$Visitor;->visitList(Lcom/android/carsdk/protobuf/Internal$ProtobufList;Lcom/android/carsdk/protobuf/Internal$ProtobufList;)Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    move-result-object p1

    iput-object p1, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$Path;->trafficLights_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    .line 18041
    iget-object p1, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$Path;->cameras_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    iget-object v0, p3, Landroid/car/hardware/xpu/XpuProtoMessageVW$Path;->cameras_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    invoke-interface {p2, p1, v0}, Lcom/android/carsdk/protobuf/GeneratedMessageLite$Visitor;->visitList(Lcom/android/carsdk/protobuf/Internal$ProtobufList;Lcom/android/carsdk/protobuf/Internal$ProtobufList;)Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    move-result-object p1

    iput-object p1, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$Path;->cameras_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    .line 18042
    iget-object p1, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$Path;->viaPointInfos_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    iget-object v0, p3, Landroid/car/hardware/xpu/XpuProtoMessageVW$Path;->viaPointInfos_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    invoke-interface {p2, p1, v0}, Lcom/android/carsdk/protobuf/GeneratedMessageLite$Visitor;->visitList(Lcom/android/carsdk/protobuf/Internal$ProtobufList;Lcom/android/carsdk/protobuf/Internal$ProtobufList;)Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    move-result-object p1

    iput-object p1, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$Path;->viaPointInfos_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    .line 18043
    iget-wide v5, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$Path;->length_:D

    const-wide/16 v3, 0x0

    cmpl-double p1, v5, v3

    if-eqz p1, :cond_d

    move p1, v2

    goto :goto_7

    :cond_d
    move p1, v1

    :goto_7
    iget-wide v8, p3, Landroid/car/hardware/xpu/XpuProtoMessageVW$Path;->length_:D

    cmpl-double v0, v8, v3

    if-eqz v0, :cond_e

    move v7, v2

    goto :goto_8

    :cond_e
    move v7, v1

    :goto_8
    move-object v3, p2

    move v4, p1

    invoke-interface/range {v3 .. v9}, Lcom/android/carsdk/protobuf/GeneratedMessageLite$Visitor;->visitDouble(ZDZD)D

    move-result-wide v3

    iput-wide v3, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$Path;->length_:D

    .line 18045
    iget p1, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$Path;->outerTrafficIncidentCount_:I

    if-eqz p1, :cond_f

    move v0, v2

    goto :goto_9

    :cond_f
    move v0, v1

    :goto_9
    iget v3, p3, Landroid/car/hardware/xpu/XpuProtoMessageVW$Path;->outerTrafficIncidentCount_:I

    if-eqz v3, :cond_10

    move v4, v2

    goto :goto_a

    :cond_10
    move v4, v1

    :goto_a
    invoke-interface {p2, v0, p1, v4, v3}, Lcom/android/carsdk/protobuf/GeneratedMessageLite$Visitor;->visitInt(ZIZI)I

    move-result p1

    iput p1, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$Path;->outerTrafficIncidentCount_:I

    .line 18047
    iget p1, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$Path;->innerTrafficIncidentCount_:I

    if-eqz p1, :cond_11

    move v0, v2

    goto :goto_b

    :cond_11
    move v0, v1

    :goto_b
    iget v3, p3, Landroid/car/hardware/xpu/XpuProtoMessageVW$Path;->innerTrafficIncidentCount_:I

    if-eqz v3, :cond_12

    move v4, v2

    goto :goto_c

    :cond_12
    move v4, v1

    :goto_c
    invoke-interface {p2, v0, p1, v4, v3}, Lcom/android/carsdk/protobuf/GeneratedMessageLite$Visitor;->visitInt(ZIZI)I

    move-result p1

    iput p1, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$Path;->innerTrafficIncidentCount_:I

    .line 18049
    iget-object p1, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$Path;->outerTrafficIncidents_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    iget-object v0, p3, Landroid/car/hardware/xpu/XpuProtoMessageVW$Path;->outerTrafficIncidents_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    invoke-interface {p2, p1, v0}, Lcom/android/carsdk/protobuf/GeneratedMessageLite$Visitor;->visitList(Lcom/android/carsdk/protobuf/Internal$ProtobufList;Lcom/android/carsdk/protobuf/Internal$ProtobufList;)Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    move-result-object p1

    iput-object p1, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$Path;->outerTrafficIncidents_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    .line 18050
    iget-object p1, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$Path;->innerTrafficIncidents_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    iget-object v0, p3, Landroid/car/hardware/xpu/XpuProtoMessageVW$Path;->innerTrafficIncidents_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    invoke-interface {p2, p1, v0}, Lcom/android/carsdk/protobuf/GeneratedMessageLite$Visitor;->visitList(Lcom/android/carsdk/protobuf/Internal$ProtobufList;Lcom/android/carsdk/protobuf/Internal$ProtobufList;)Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    move-result-object p1

    iput-object p1, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$Path;->innerTrafficIncidents_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    .line 18051
    iget p1, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$Path;->forbiddenInfoCount11_:I

    if-eqz p1, :cond_13

    move v0, v2

    goto :goto_d

    :cond_13
    move v0, v1

    :goto_d
    iget v3, p3, Landroid/car/hardware/xpu/XpuProtoMessageVW$Path;->forbiddenInfoCount11_:I

    if-eqz v3, :cond_14

    move v1, v2

    :cond_14
    invoke-interface {p2, v0, p1, v1, v3}, Lcom/android/carsdk/protobuf/GeneratedMessageLite$Visitor;->visitInt(ZIZI)I

    move-result p1

    iput p1, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$Path;->forbiddenInfoCount11_:I

    .line 18053
    iget-object p1, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$Path;->forbiddenInfo12_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    iget-object v0, p3, Landroid/car/hardware/xpu/XpuProtoMessageVW$Path;->forbiddenInfo12_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    invoke-interface {p2, p1, v0}, Lcom/android/carsdk/protobuf/GeneratedMessageLite$Visitor;->visitList(Lcom/android/carsdk/protobuf/Internal$ProtobufList;Lcom/android/carsdk/protobuf/Internal$ProtobufList;)Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    move-result-object p1

    iput-object p1, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$Path;->forbiddenInfo12_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    .line 18054
    sget-object p1, Lcom/android/carsdk/protobuf/GeneratedMessageLite$MergeFromVisitor;->INSTANCE:Lcom/android/carsdk/protobuf/GeneratedMessageLite$MergeFromVisitor;

    if-ne p2, p1, :cond_15

    .line 18056
    iget p1, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$Path;->bitField0_:I

    iget p2, p3, Landroid/car/hardware/xpu/XpuProtoMessageVW$Path;->bitField0_:I

    or-int/2addr p1, p2

    iput p1, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$Path;->bitField0_:I

    :cond_15
    return-object p0

    .line 18032
    :pswitch_4
    new-instance p1, Landroid/car/hardware/xpu/XpuProtoMessageVW$Path$Builder;

    invoke-direct {p1, v0}, Landroid/car/hardware/xpu/XpuProtoMessageVW$Path$Builder;-><init>(Landroid/car/hardware/xpu/XpuProtoMessageVW$1;)V

    return-object p1

    .line 18022
    :pswitch_5
    iget-object p1, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$Path;->segments_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    invoke-interface {p1}, Lcom/android/carsdk/protobuf/Internal$ProtobufList;->makeImmutable()V

    .line 18023
    iget-object p1, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$Path;->trafficLights_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    invoke-interface {p1}, Lcom/android/carsdk/protobuf/Internal$ProtobufList;->makeImmutable()V

    .line 18024
    iget-object p1, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$Path;->cameras_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    invoke-interface {p1}, Lcom/android/carsdk/protobuf/Internal$ProtobufList;->makeImmutable()V

    .line 18025
    iget-object p1, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$Path;->viaPointInfos_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    invoke-interface {p1}, Lcom/android/carsdk/protobuf/Internal$ProtobufList;->makeImmutable()V

    .line 18026
    iget-object p1, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$Path;->outerTrafficIncidents_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    invoke-interface {p1}, Lcom/android/carsdk/protobuf/Internal$ProtobufList;->makeImmutable()V

    .line 18027
    iget-object p1, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$Path;->innerTrafficIncidents_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    invoke-interface {p1}, Lcom/android/carsdk/protobuf/Internal$ProtobufList;->makeImmutable()V

    .line 18028
    iget-object p1, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$Path;->forbiddenInfo12_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    invoke-interface {p1}, Lcom/android/carsdk/protobuf/Internal$ProtobufList;->makeImmutable()V

    return-object v0

    .line 18019
    :pswitch_6
    sget-object p1, Landroid/car/hardware/xpu/XpuProtoMessageVW$Path;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuProtoMessageVW$Path;

    return-object p1

    .line 18016
    :pswitch_7
    new-instance p1, Landroid/car/hardware/xpu/XpuProtoMessageVW$Path;

    invoke-direct {p1}, Landroid/car/hardware/xpu/XpuProtoMessageVW$Path;-><init>()V

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
        0x0 -> :sswitch_c
        0x8 -> :sswitch_b
        0x12 -> :sswitch_a
        0x1a -> :sswitch_9
        0x22 -> :sswitch_8
        0x2a -> :sswitch_7
        0x31 -> :sswitch_6
        0x38 -> :sswitch_5
        0x40 -> :sswitch_4
        0x4a -> :sswitch_3
        0x52 -> :sswitch_2
        0x58 -> :sswitch_1
        0x62 -> :sswitch_0
    .end sparse-switch
.end method

.method public getCameras(I)Landroid/car/hardware/xpu/XpuProtoMessageVW$Camera;
    .locals 1

    .line 16335
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$Path;->cameras_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1}, Lcom/android/carsdk/protobuf/Internal$ProtobufList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/car/hardware/xpu/XpuProtoMessageVW$Camera;

    return-object p1
.end method

.method public getCamerasCount()I
    .locals 1

    .line 16329
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$Path;->cameras_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

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

    .line 16316
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$Path;->cameras_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    return-object v0
.end method

.method public getCamerasOrBuilder(I)Landroid/car/hardware/xpu/XpuProtoMessageVW$CameraOrBuilder;
    .locals 1

    .line 16342
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$Path;->cameras_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

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

    .line 16323
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$Path;->cameras_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    return-object v0
.end method

.method public getDataVersion()J
    .locals 2

    .line 16053
    iget-wide v0, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$Path;->dataVersion_:J

    return-wide v0
.end method

.method public getForbiddenInfo12(I)Landroid/car/hardware/xpu/XpuProtoMessageVW$ForbiddenInfo;
    .locals 1

    .line 16926
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$Path;->forbiddenInfo12_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1}, Lcom/android/carsdk/protobuf/Internal$ProtobufList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/car/hardware/xpu/XpuProtoMessageVW$ForbiddenInfo;

    return-object p1
.end method

.method public getForbiddenInfo12Count()I
    .locals 1

    .line 16920
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$Path;->forbiddenInfo12_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

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
            "Landroid/car/hardware/xpu/XpuProtoMessageVW$ForbiddenInfo;",
            ">;"
        }
    .end annotation

    .line 16907
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$Path;->forbiddenInfo12_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    return-object v0
.end method

.method public getForbiddenInfo12OrBuilder(I)Landroid/car/hardware/xpu/XpuProtoMessageVW$ForbiddenInfoOrBuilder;
    .locals 1

    .line 16933
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$Path;->forbiddenInfo12_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1}, Lcom/android/carsdk/protobuf/Internal$ProtobufList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/car/hardware/xpu/XpuProtoMessageVW$ForbiddenInfoOrBuilder;

    return-object p1
.end method

.method public getForbiddenInfo12OrBuilderList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "+",
            "Landroid/car/hardware/xpu/XpuProtoMessageVW$ForbiddenInfoOrBuilder;",
            ">;"
        }
    .end annotation

    .line 16914
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$Path;->forbiddenInfo12_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    return-object v0
.end method

.method public getForbiddenInfoCount11()I
    .locals 1

    .line 16882
    iget v0, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$Path;->forbiddenInfoCount11_:I

    return v0
.end method

.method public getInnerTrafficIncidentCount()I
    .locals 1

    .line 16617
    iget v0, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$Path;->innerTrafficIncidentCount_:I

    return v0
.end method

.method public getInnerTrafficIncidents(I)Landroid/car/hardware/xpu/XpuProtoMessageVW$TrafficIncident;
    .locals 1

    .line 16779
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$Path;->innerTrafficIncidents_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1}, Lcom/android/carsdk/protobuf/Internal$ProtobufList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/car/hardware/xpu/XpuProtoMessageVW$TrafficIncident;

    return-object p1
.end method

.method public getInnerTrafficIncidentsCount()I
    .locals 1

    .line 16773
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$Path;->innerTrafficIncidents_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

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
            "Landroid/car/hardware/xpu/XpuProtoMessageVW$TrafficIncident;",
            ">;"
        }
    .end annotation

    .line 16760
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$Path;->innerTrafficIncidents_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    return-object v0
.end method

.method public getInnerTrafficIncidentsOrBuilder(I)Landroid/car/hardware/xpu/XpuProtoMessageVW$TrafficIncidentOrBuilder;
    .locals 1

    .line 16786
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$Path;->innerTrafficIncidents_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1}, Lcom/android/carsdk/protobuf/Internal$ProtobufList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/car/hardware/xpu/XpuProtoMessageVW$TrafficIncidentOrBuilder;

    return-object p1
.end method

.method public getInnerTrafficIncidentsOrBuilderList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "+",
            "Landroid/car/hardware/xpu/XpuProtoMessageVW$TrafficIncidentOrBuilder;",
            ">;"
        }
    .end annotation

    .line 16767
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$Path;->innerTrafficIncidents_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    return-object v0
.end method

.method public getLength()D
    .locals 2

    .line 16556
    iget-wide v0, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$Path;->length_:D

    return-wide v0
.end method

.method public getOuterTrafficIncidentCount()I
    .locals 1

    .line 16584
    iget v0, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$Path;->outerTrafficIncidentCount_:I

    return v0
.end method

.method public getOuterTrafficIncidents(I)Landroid/car/hardware/xpu/XpuProtoMessageVW$TrafficIncident;
    .locals 1

    .line 16659
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$Path;->outerTrafficIncidents_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1}, Lcom/android/carsdk/protobuf/Internal$ProtobufList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/car/hardware/xpu/XpuProtoMessageVW$TrafficIncident;

    return-object p1
.end method

.method public getOuterTrafficIncidentsCount()I
    .locals 1

    .line 16653
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$Path;->outerTrafficIncidents_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

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
            "Landroid/car/hardware/xpu/XpuProtoMessageVW$TrafficIncident;",
            ">;"
        }
    .end annotation

    .line 16640
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$Path;->outerTrafficIncidents_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    return-object v0
.end method

.method public getOuterTrafficIncidentsOrBuilder(I)Landroid/car/hardware/xpu/XpuProtoMessageVW$TrafficIncidentOrBuilder;
    .locals 1

    .line 16666
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$Path;->outerTrafficIncidents_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1}, Lcom/android/carsdk/protobuf/Internal$ProtobufList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/car/hardware/xpu/XpuProtoMessageVW$TrafficIncidentOrBuilder;

    return-object p1
.end method

.method public getOuterTrafficIncidentsOrBuilderList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "+",
            "Landroid/car/hardware/xpu/XpuProtoMessageVW$TrafficIncidentOrBuilder;",
            ">;"
        }
    .end annotation

    .line 16647
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$Path;->outerTrafficIncidents_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    return-object v0
.end method

.method public getSegments(I)Landroid/car/hardware/xpu/XpuProtoMessageVW$Segment;
    .locals 1

    .line 16095
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$Path;->segments_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1}, Lcom/android/carsdk/protobuf/Internal$ProtobufList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/car/hardware/xpu/XpuProtoMessageVW$Segment;

    return-object p1
.end method

.method public getSegmentsCount()I
    .locals 1

    .line 16089
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$Path;->segments_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

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
            "Landroid/car/hardware/xpu/XpuProtoMessageVW$Segment;",
            ">;"
        }
    .end annotation

    .line 16076
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$Path;->segments_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    return-object v0
.end method

.method public getSegmentsOrBuilder(I)Landroid/car/hardware/xpu/XpuProtoMessageVW$SegmentOrBuilder;
    .locals 1

    .line 16102
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$Path;->segments_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1}, Lcom/android/carsdk/protobuf/Internal$ProtobufList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/car/hardware/xpu/XpuProtoMessageVW$SegmentOrBuilder;

    return-object p1
.end method

.method public getSegmentsOrBuilderList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "+",
            "Landroid/car/hardware/xpu/XpuProtoMessageVW$SegmentOrBuilder;",
            ">;"
        }
    .end annotation

    .line 16083
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$Path;->segments_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    return-object v0
.end method

.method public getSerializedSize()I
    .locals 6

    .line 17062
    iget v0, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$Path;->memoizedSerializedSize:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    return v0

    .line 17066
    :cond_0
    iget-wide v0, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$Path;->dataVersion_:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    const/4 v3, 0x0

    if-eqz v2, :cond_1

    const/4 v2, 0x1

    .line 17068
    invoke-static {v2, v0, v1}, Lcom/android/carsdk/protobuf/CodedOutputStream;->computeUInt64Size(IJ)I

    move-result v0

    add-int/2addr v0, v3

    goto :goto_0

    :cond_1
    move v0, v3

    :goto_0
    move v1, v3

    .line 17070
    :goto_1
    iget-object v2, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$Path;->segments_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    invoke-interface {v2}, Lcom/android/carsdk/protobuf/Internal$ProtobufList;->size()I

    move-result v2

    if-ge v1, v2, :cond_2

    const/4 v2, 0x2

    .line 17071
    iget-object v4, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$Path;->segments_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    .line 17072
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

    .line 17074
    :goto_2
    iget-object v2, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$Path;->trafficLights_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    invoke-interface {v2}, Lcom/android/carsdk/protobuf/Internal$ProtobufList;->size()I

    move-result v2

    if-ge v1, v2, :cond_3

    const/4 v2, 0x3

    .line 17075
    iget-object v4, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$Path;->trafficLights_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    .line 17076
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

    .line 17078
    :goto_3
    iget-object v2, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$Path;->cameras_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    invoke-interface {v2}, Lcom/android/carsdk/protobuf/Internal$ProtobufList;->size()I

    move-result v2

    if-ge v1, v2, :cond_4

    const/4 v2, 0x4

    .line 17079
    iget-object v4, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$Path;->cameras_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    .line 17080
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

    .line 17082
    :goto_4
    iget-object v2, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$Path;->viaPointInfos_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    invoke-interface {v2}, Lcom/android/carsdk/protobuf/Internal$ProtobufList;->size()I

    move-result v2

    if-ge v1, v2, :cond_5

    const/4 v2, 0x5

    .line 17083
    iget-object v4, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$Path;->viaPointInfos_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    .line 17084
    invoke-interface {v4, v1}, Lcom/android/carsdk/protobuf/Internal$ProtobufList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/carsdk/protobuf/MessageLite;

    invoke-static {v2, v4}, Lcom/android/carsdk/protobuf/CodedOutputStream;->computeMessageSize(ILcom/android/carsdk/protobuf/MessageLite;)I

    move-result v2

    add-int/2addr v0, v2

    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 17086
    :cond_5
    iget-wide v1, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$Path;->length_:D

    const-wide/16 v4, 0x0

    cmpl-double v4, v1, v4

    if-eqz v4, :cond_6

    const/4 v4, 0x6

    .line 17088
    invoke-static {v4, v1, v2}, Lcom/android/carsdk/protobuf/CodedOutputStream;->computeDoubleSize(ID)I

    move-result v1

    add-int/2addr v0, v1

    .line 17090
    :cond_6
    iget v1, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$Path;->outerTrafficIncidentCount_:I

    if-eqz v1, :cond_7

    const/4 v2, 0x7

    .line 17092
    invoke-static {v2, v1}, Lcom/android/carsdk/protobuf/CodedOutputStream;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 17094
    :cond_7
    iget v1, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$Path;->innerTrafficIncidentCount_:I

    if-eqz v1, :cond_8

    const/16 v2, 0x8

    .line 17096
    invoke-static {v2, v1}, Lcom/android/carsdk/protobuf/CodedOutputStream;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    :cond_8
    move v1, v3

    .line 17098
    :goto_5
    iget-object v2, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$Path;->outerTrafficIncidents_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    invoke-interface {v2}, Lcom/android/carsdk/protobuf/Internal$ProtobufList;->size()I

    move-result v2

    if-ge v1, v2, :cond_9

    const/16 v2, 0x9

    .line 17099
    iget-object v4, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$Path;->outerTrafficIncidents_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    .line 17100
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

    .line 17102
    :goto_6
    iget-object v2, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$Path;->innerTrafficIncidents_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    invoke-interface {v2}, Lcom/android/carsdk/protobuf/Internal$ProtobufList;->size()I

    move-result v2

    if-ge v1, v2, :cond_a

    const/16 v2, 0xa

    .line 17103
    iget-object v4, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$Path;->innerTrafficIncidents_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    .line 17104
    invoke-interface {v4, v1}, Lcom/android/carsdk/protobuf/Internal$ProtobufList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/carsdk/protobuf/MessageLite;

    invoke-static {v2, v4}, Lcom/android/carsdk/protobuf/CodedOutputStream;->computeMessageSize(ILcom/android/carsdk/protobuf/MessageLite;)I

    move-result v2

    add-int/2addr v0, v2

    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    .line 17106
    :cond_a
    iget v1, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$Path;->forbiddenInfoCount11_:I

    if-eqz v1, :cond_b

    const/16 v2, 0xb

    .line 17108
    invoke-static {v2, v1}, Lcom/android/carsdk/protobuf/CodedOutputStream;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 17110
    :cond_b
    :goto_7
    iget-object v1, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$Path;->forbiddenInfo12_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    invoke-interface {v1}, Lcom/android/carsdk/protobuf/Internal$ProtobufList;->size()I

    move-result v1

    if-ge v3, v1, :cond_c

    const/16 v1, 0xc

    .line 17111
    iget-object v2, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$Path;->forbiddenInfo12_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    .line 17112
    invoke-interface {v2, v3}, Lcom/android/carsdk/protobuf/Internal$ProtobufList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/carsdk/protobuf/MessageLite;

    invoke-static {v1, v2}, Lcom/android/carsdk/protobuf/CodedOutputStream;->computeMessageSize(ILcom/android/carsdk/protobuf/MessageLite;)I

    move-result v1

    add-int/2addr v0, v1

    add-int/lit8 v3, v3, 0x1

    goto :goto_7

    .line 17114
    :cond_c
    iput v0, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$Path;->memoizedSerializedSize:I

    return v0
.end method

.method public getTrafficLights(I)Landroid/car/hardware/xpu/XpuProtoMessageVW$V2_Point;
    .locals 1

    .line 16215
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$Path;->trafficLights_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1}, Lcom/android/carsdk/protobuf/Internal$ProtobufList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/car/hardware/xpu/XpuProtoMessageVW$V2_Point;

    return-object p1
.end method

.method public getTrafficLightsCount()I
    .locals 1

    .line 16209
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$Path;->trafficLights_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

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
            "Landroid/car/hardware/xpu/XpuProtoMessageVW$V2_Point;",
            ">;"
        }
    .end annotation

    .line 16196
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$Path;->trafficLights_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    return-object v0
.end method

.method public getTrafficLightsOrBuilder(I)Landroid/car/hardware/xpu/XpuProtoMessageVW$V2_PointOrBuilder;
    .locals 1

    .line 16222
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$Path;->trafficLights_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1}, Lcom/android/carsdk/protobuf/Internal$ProtobufList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/car/hardware/xpu/XpuProtoMessageVW$V2_PointOrBuilder;

    return-object p1
.end method

.method public getTrafficLightsOrBuilderList()Ljava/util/List;
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

    .line 16203
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$Path;->trafficLights_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    return-object v0
.end method

.method public getViaPointInfos(I)Landroid/car/hardware/xpu/XpuProtoMessageVW$ViaPointInfo;
    .locals 1

    .line 16455
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$Path;->viaPointInfos_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1}, Lcom/android/carsdk/protobuf/Internal$ProtobufList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/car/hardware/xpu/XpuProtoMessageVW$ViaPointInfo;

    return-object p1
.end method

.method public getViaPointInfosCount()I
    .locals 1

    .line 16449
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$Path;->viaPointInfos_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

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
            "Landroid/car/hardware/xpu/XpuProtoMessageVW$ViaPointInfo;",
            ">;"
        }
    .end annotation

    .line 16436
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$Path;->viaPointInfos_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    return-object v0
.end method

.method public getViaPointInfosOrBuilder(I)Landroid/car/hardware/xpu/XpuProtoMessageVW$ViaPointInfoOrBuilder;
    .locals 1

    .line 16462
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$Path;->viaPointInfos_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1}, Lcom/android/carsdk/protobuf/Internal$ProtobufList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/car/hardware/xpu/XpuProtoMessageVW$ViaPointInfoOrBuilder;

    return-object p1
.end method

.method public getViaPointInfosOrBuilderList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "+",
            "Landroid/car/hardware/xpu/XpuProtoMessageVW$ViaPointInfoOrBuilder;",
            ">;"
        }
    .end annotation

    .line 16443
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$Path;->viaPointInfos_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    return-object v0
.end method

.method public writeTo(Lcom/android/carsdk/protobuf/CodedOutputStream;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 17023
    iget-wide v0, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$Path;->dataVersion_:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    .line 17024
    invoke-virtual {p1, v2, v0, v1}, Lcom/android/carsdk/protobuf/CodedOutputStream;->writeUInt64(IJ)V

    :cond_0
    const/4 v0, 0x0

    move v1, v0

    .line 17026
    :goto_0
    iget-object v2, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$Path;->segments_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    invoke-interface {v2}, Lcom/android/carsdk/protobuf/Internal$ProtobufList;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    const/4 v2, 0x2

    .line 17027
    iget-object v3, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$Path;->segments_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    invoke-interface {v3, v1}, Lcom/android/carsdk/protobuf/Internal$ProtobufList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/carsdk/protobuf/MessageLite;

    invoke-virtual {p1, v2, v3}, Lcom/android/carsdk/protobuf/CodedOutputStream;->writeMessage(ILcom/android/carsdk/protobuf/MessageLite;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    move v1, v0

    .line 17029
    :goto_1
    iget-object v2, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$Path;->trafficLights_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    invoke-interface {v2}, Lcom/android/carsdk/protobuf/Internal$ProtobufList;->size()I

    move-result v2

    if-ge v1, v2, :cond_2

    const/4 v2, 0x3

    .line 17030
    iget-object v3, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$Path;->trafficLights_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    invoke-interface {v3, v1}, Lcom/android/carsdk/protobuf/Internal$ProtobufList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/carsdk/protobuf/MessageLite;

    invoke-virtual {p1, v2, v3}, Lcom/android/carsdk/protobuf/CodedOutputStream;->writeMessage(ILcom/android/carsdk/protobuf/MessageLite;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_2
    move v1, v0

    .line 17032
    :goto_2
    iget-object v2, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$Path;->cameras_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    invoke-interface {v2}, Lcom/android/carsdk/protobuf/Internal$ProtobufList;->size()I

    move-result v2

    if-ge v1, v2, :cond_3

    const/4 v2, 0x4

    .line 17033
    iget-object v3, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$Path;->cameras_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    invoke-interface {v3, v1}, Lcom/android/carsdk/protobuf/Internal$ProtobufList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/carsdk/protobuf/MessageLite;

    invoke-virtual {p1, v2, v3}, Lcom/android/carsdk/protobuf/CodedOutputStream;->writeMessage(ILcom/android/carsdk/protobuf/MessageLite;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_3
    move v1, v0

    .line 17035
    :goto_3
    iget-object v2, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$Path;->viaPointInfos_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    invoke-interface {v2}, Lcom/android/carsdk/protobuf/Internal$ProtobufList;->size()I

    move-result v2

    if-ge v1, v2, :cond_4

    const/4 v2, 0x5

    .line 17036
    iget-object v3, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$Path;->viaPointInfos_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    invoke-interface {v3, v1}, Lcom/android/carsdk/protobuf/Internal$ProtobufList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/carsdk/protobuf/MessageLite;

    invoke-virtual {p1, v2, v3}, Lcom/android/carsdk/protobuf/CodedOutputStream;->writeMessage(ILcom/android/carsdk/protobuf/MessageLite;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 17038
    :cond_4
    iget-wide v1, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$Path;->length_:D

    const-wide/16 v3, 0x0

    cmpl-double v3, v1, v3

    if-eqz v3, :cond_5

    const/4 v3, 0x6

    .line 17039
    invoke-virtual {p1, v3, v1, v2}, Lcom/android/carsdk/protobuf/CodedOutputStream;->writeDouble(ID)V

    .line 17041
    :cond_5
    iget v1, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$Path;->outerTrafficIncidentCount_:I

    if-eqz v1, :cond_6

    const/4 v2, 0x7

    .line 17042
    invoke-virtual {p1, v2, v1}, Lcom/android/carsdk/protobuf/CodedOutputStream;->writeInt32(II)V

    .line 17044
    :cond_6
    iget v1, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$Path;->innerTrafficIncidentCount_:I

    if-eqz v1, :cond_7

    const/16 v2, 0x8

    .line 17045
    invoke-virtual {p1, v2, v1}, Lcom/android/carsdk/protobuf/CodedOutputStream;->writeInt32(II)V

    :cond_7
    move v1, v0

    .line 17047
    :goto_4
    iget-object v2, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$Path;->outerTrafficIncidents_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    invoke-interface {v2}, Lcom/android/carsdk/protobuf/Internal$ProtobufList;->size()I

    move-result v2

    if-ge v1, v2, :cond_8

    const/16 v2, 0x9

    .line 17048
    iget-object v3, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$Path;->outerTrafficIncidents_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    invoke-interface {v3, v1}, Lcom/android/carsdk/protobuf/Internal$ProtobufList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/carsdk/protobuf/MessageLite;

    invoke-virtual {p1, v2, v3}, Lcom/android/carsdk/protobuf/CodedOutputStream;->writeMessage(ILcom/android/carsdk/protobuf/MessageLite;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    :cond_8
    move v1, v0

    .line 17050
    :goto_5
    iget-object v2, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$Path;->innerTrafficIncidents_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    invoke-interface {v2}, Lcom/android/carsdk/protobuf/Internal$ProtobufList;->size()I

    move-result v2

    if-ge v1, v2, :cond_9

    const/16 v2, 0xa

    .line 17051
    iget-object v3, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$Path;->innerTrafficIncidents_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    invoke-interface {v3, v1}, Lcom/android/carsdk/protobuf/Internal$ProtobufList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/carsdk/protobuf/MessageLite;

    invoke-virtual {p1, v2, v3}, Lcom/android/carsdk/protobuf/CodedOutputStream;->writeMessage(ILcom/android/carsdk/protobuf/MessageLite;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 17053
    :cond_9
    iget v1, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$Path;->forbiddenInfoCount11_:I

    if-eqz v1, :cond_a

    const/16 v2, 0xb

    .line 17054
    invoke-virtual {p1, v2, v1}, Lcom/android/carsdk/protobuf/CodedOutputStream;->writeInt32(II)V

    .line 17056
    :cond_a
    :goto_6
    iget-object v1, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$Path;->forbiddenInfo12_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    invoke-interface {v1}, Lcom/android/carsdk/protobuf/Internal$ProtobufList;->size()I

    move-result v1

    if-ge v0, v1, :cond_b

    const/16 v1, 0xc

    .line 17057
    iget-object v2, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$Path;->forbiddenInfo12_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    invoke-interface {v2, v0}, Lcom/android/carsdk/protobuf/Internal$ProtobufList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/carsdk/protobuf/MessageLite;

    invoke-virtual {p1, v1, v2}, Lcom/android/carsdk/protobuf/CodedOutputStream;->writeMessage(ILcom/android/carsdk/protobuf/MessageLite;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    :cond_b
    return-void
.end method
