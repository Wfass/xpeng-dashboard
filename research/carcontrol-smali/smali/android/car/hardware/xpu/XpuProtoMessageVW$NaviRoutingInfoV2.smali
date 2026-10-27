.class public final Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviRoutingInfoV2;
.super Lcom/android/carsdk/protobuf/GeneratedMessageLite;
.source "XpuProtoMessageVW.java"

# interfaces
.implements Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviRoutingInfoV2OrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/car/hardware/xpu/XpuProtoMessageVW;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "NaviRoutingInfoV2"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviRoutingInfoV2$Builder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/carsdk/protobuf/GeneratedMessageLite<",
        "Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviRoutingInfoV2;",
        "Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviRoutingInfoV2$Builder;",
        ">;",
        "Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviRoutingInfoV2OrBuilder;"
    }
.end annotation


# static fields
.field private static final DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviRoutingInfoV2;

.field public static final END_POINT_NAME_FIELD_NUMBER:I = 0x7

.field public static final NAVIGATION_ID_FIELD_NUMBER:I = 0x2

.field public static final NAVIGATION_STATUS_FIELD_NUMBER:I = 0x1

.field private static volatile PARSER:Lcom/android/carsdk/protobuf/Parser; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/carsdk/protobuf/Parser<",
            "Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviRoutingInfoV2;",
            ">;"
        }
    .end annotation
.end field

.field public static final PATH_FIELD_NUMBER:I = 0x5

.field public static final PP_UPDATE_TIME_FIELD_NUMBER:I = 0xb

.field public static final PP_VERSION_FIELD_NUMBER:I = 0x9

.field public static final ROUTE_ID_FIELD_NUMBER:I = 0x8

.field public static final ROUTE_TYPE_FIELD_NUMBER:I = 0xc

.field public static final ROUTE_VERSION_FIELD_NUMBER:I = 0xa

.field public static final SDK_MAJOR_VERSION_FIELD_NUMBER:I = 0x3

.field public static final SDK_MINOR_VERSION_FIELD_NUMBER:I = 0x4

.field public static final TIME_STAMP_FIELD_NUMBER:I = 0x6


# instance fields
.field private endPointName_:Ljava/lang/String;

.field private navigationId_:J

.field private navigationStatus_:I

.field private path_:Landroid/car/hardware/xpu/XpuProtoMessageVW$Path;

.field private ppUpdateTime_:J

.field private ppVersion_:Ljava/lang/String;

.field private routeId_:J

.field private routeType_:I

.field private routeVersion_:J

.field private sdkMajorVersion_:Ljava/lang/String;

.field private sdkMinorVersion_:Ljava/lang/String;

.field private timeStamp_:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 20481
    new-instance v0, Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviRoutingInfoV2;

    invoke-direct {v0}, Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviRoutingInfoV2;-><init>()V

    sput-object v0, Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviRoutingInfoV2;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviRoutingInfoV2;

    .line 20482
    invoke-virtual {v0}, Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviRoutingInfoV2;->makeImmutable()V

    return-void
.end method

.method private constructor <init>()V
    .locals 4

    .line 19163
    invoke-direct {p0}, Lcom/android/carsdk/protobuf/GeneratedMessageLite;-><init>()V

    const/4 v0, 0x0

    .line 19164
    iput v0, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviRoutingInfoV2;->navigationStatus_:I

    const-wide/16 v1, 0x0

    .line 19165
    iput-wide v1, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviRoutingInfoV2;->navigationId_:J

    const-string v3, ""

    .line 19166
    iput-object v3, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviRoutingInfoV2;->sdkMajorVersion_:Ljava/lang/String;

    .line 19167
    iput-object v3, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviRoutingInfoV2;->sdkMinorVersion_:Ljava/lang/String;

    .line 19168
    iput-wide v1, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviRoutingInfoV2;->timeStamp_:J

    .line 19169
    iput-object v3, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviRoutingInfoV2;->endPointName_:Ljava/lang/String;

    .line 19170
    iput-wide v1, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviRoutingInfoV2;->routeId_:J

    .line 19171
    iput-object v3, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviRoutingInfoV2;->ppVersion_:Ljava/lang/String;

    .line 19172
    iput-wide v1, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviRoutingInfoV2;->routeVersion_:J

    .line 19173
    iput-wide v1, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviRoutingInfoV2;->ppUpdateTime_:J

    .line 19174
    iput v0, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviRoutingInfoV2;->routeType_:I

    return-void
.end method

.method static synthetic access$45100()Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviRoutingInfoV2;
    .locals 1

    .line 19158
    sget-object v0, Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviRoutingInfoV2;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviRoutingInfoV2;

    return-object v0
.end method

.method static synthetic access$45200(Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviRoutingInfoV2;I)V
    .locals 0

    .line 19158
    invoke-direct {p0, p1}, Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviRoutingInfoV2;->setNavigationStatusValue(I)V

    return-void
.end method

.method static synthetic access$45300(Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviRoutingInfoV2;Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviStatus;)V
    .locals 0

    .line 19158
    invoke-direct {p0, p1}, Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviRoutingInfoV2;->setNavigationStatus(Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviStatus;)V

    return-void
.end method

.method static synthetic access$45400(Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviRoutingInfoV2;)V
    .locals 0

    .line 19158
    invoke-direct {p0}, Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviRoutingInfoV2;->clearNavigationStatus()V

    return-void
.end method

.method static synthetic access$45500(Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviRoutingInfoV2;J)V
    .locals 0

    .line 19158
    invoke-direct {p0, p1, p2}, Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviRoutingInfoV2;->setNavigationId(J)V

    return-void
.end method

.method static synthetic access$45600(Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviRoutingInfoV2;)V
    .locals 0

    .line 19158
    invoke-direct {p0}, Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviRoutingInfoV2;->clearNavigationId()V

    return-void
.end method

.method static synthetic access$45700(Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviRoutingInfoV2;Ljava/lang/String;)V
    .locals 0

    .line 19158
    invoke-direct {p0, p1}, Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviRoutingInfoV2;->setSdkMajorVersion(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$45800(Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviRoutingInfoV2;)V
    .locals 0

    .line 19158
    invoke-direct {p0}, Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviRoutingInfoV2;->clearSdkMajorVersion()V

    return-void
.end method

.method static synthetic access$45900(Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviRoutingInfoV2;Lcom/android/carsdk/protobuf/ByteString;)V
    .locals 0

    .line 19158
    invoke-direct {p0, p1}, Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviRoutingInfoV2;->setSdkMajorVersionBytes(Lcom/android/carsdk/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$46000(Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviRoutingInfoV2;Ljava/lang/String;)V
    .locals 0

    .line 19158
    invoke-direct {p0, p1}, Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviRoutingInfoV2;->setSdkMinorVersion(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$46100(Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviRoutingInfoV2;)V
    .locals 0

    .line 19158
    invoke-direct {p0}, Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviRoutingInfoV2;->clearSdkMinorVersion()V

    return-void
.end method

.method static synthetic access$46200(Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviRoutingInfoV2;Lcom/android/carsdk/protobuf/ByteString;)V
    .locals 0

    .line 19158
    invoke-direct {p0, p1}, Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviRoutingInfoV2;->setSdkMinorVersionBytes(Lcom/android/carsdk/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$46300(Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviRoutingInfoV2;Landroid/car/hardware/xpu/XpuProtoMessageVW$Path;)V
    .locals 0

    .line 19158
    invoke-direct {p0, p1}, Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviRoutingInfoV2;->setPath(Landroid/car/hardware/xpu/XpuProtoMessageVW$Path;)V

    return-void
.end method

.method static synthetic access$46400(Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviRoutingInfoV2;Landroid/car/hardware/xpu/XpuProtoMessageVW$Path$Builder;)V
    .locals 0

    .line 19158
    invoke-direct {p0, p1}, Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviRoutingInfoV2;->setPath(Landroid/car/hardware/xpu/XpuProtoMessageVW$Path$Builder;)V

    return-void
.end method

.method static synthetic access$46500(Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviRoutingInfoV2;Landroid/car/hardware/xpu/XpuProtoMessageVW$Path;)V
    .locals 0

    .line 19158
    invoke-direct {p0, p1}, Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviRoutingInfoV2;->mergePath(Landroid/car/hardware/xpu/XpuProtoMessageVW$Path;)V

    return-void
.end method

.method static synthetic access$46600(Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviRoutingInfoV2;)V
    .locals 0

    .line 19158
    invoke-direct {p0}, Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviRoutingInfoV2;->clearPath()V

    return-void
.end method

.method static synthetic access$46700(Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviRoutingInfoV2;J)V
    .locals 0

    .line 19158
    invoke-direct {p0, p1, p2}, Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviRoutingInfoV2;->setTimeStamp(J)V

    return-void
.end method

.method static synthetic access$46800(Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviRoutingInfoV2;)V
    .locals 0

    .line 19158
    invoke-direct {p0}, Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviRoutingInfoV2;->clearTimeStamp()V

    return-void
.end method

.method static synthetic access$46900(Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviRoutingInfoV2;Ljava/lang/String;)V
    .locals 0

    .line 19158
    invoke-direct {p0, p1}, Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviRoutingInfoV2;->setEndPointName(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$47000(Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviRoutingInfoV2;)V
    .locals 0

    .line 19158
    invoke-direct {p0}, Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviRoutingInfoV2;->clearEndPointName()V

    return-void
.end method

.method static synthetic access$47100(Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviRoutingInfoV2;Lcom/android/carsdk/protobuf/ByteString;)V
    .locals 0

    .line 19158
    invoke-direct {p0, p1}, Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviRoutingInfoV2;->setEndPointNameBytes(Lcom/android/carsdk/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$47200(Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviRoutingInfoV2;J)V
    .locals 0

    .line 19158
    invoke-direct {p0, p1, p2}, Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviRoutingInfoV2;->setRouteId(J)V

    return-void
.end method

.method static synthetic access$47300(Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviRoutingInfoV2;)V
    .locals 0

    .line 19158
    invoke-direct {p0}, Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviRoutingInfoV2;->clearRouteId()V

    return-void
.end method

.method static synthetic access$47400(Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviRoutingInfoV2;Ljava/lang/String;)V
    .locals 0

    .line 19158
    invoke-direct {p0, p1}, Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviRoutingInfoV2;->setPpVersion(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$47500(Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviRoutingInfoV2;)V
    .locals 0

    .line 19158
    invoke-direct {p0}, Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviRoutingInfoV2;->clearPpVersion()V

    return-void
.end method

.method static synthetic access$47600(Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviRoutingInfoV2;Lcom/android/carsdk/protobuf/ByteString;)V
    .locals 0

    .line 19158
    invoke-direct {p0, p1}, Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviRoutingInfoV2;->setPpVersionBytes(Lcom/android/carsdk/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$47700(Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviRoutingInfoV2;J)V
    .locals 0

    .line 19158
    invoke-direct {p0, p1, p2}, Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviRoutingInfoV2;->setRouteVersion(J)V

    return-void
.end method

.method static synthetic access$47800(Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviRoutingInfoV2;)V
    .locals 0

    .line 19158
    invoke-direct {p0}, Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviRoutingInfoV2;->clearRouteVersion()V

    return-void
.end method

.method static synthetic access$47900(Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviRoutingInfoV2;J)V
    .locals 0

    .line 19158
    invoke-direct {p0, p1, p2}, Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviRoutingInfoV2;->setPpUpdateTime(J)V

    return-void
.end method

.method static synthetic access$48000(Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviRoutingInfoV2;)V
    .locals 0

    .line 19158
    invoke-direct {p0}, Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviRoutingInfoV2;->clearPpUpdateTime()V

    return-void
.end method

.method static synthetic access$48100(Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviRoutingInfoV2;I)V
    .locals 0

    .line 19158
    invoke-direct {p0, p1}, Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviRoutingInfoV2;->setRouteTypeValue(I)V

    return-void
.end method

.method static synthetic access$48200(Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviRoutingInfoV2;Landroid/car/hardware/xpu/XpuProtoMessageVW$RouteType;)V
    .locals 0

    .line 19158
    invoke-direct {p0, p1}, Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviRoutingInfoV2;->setRouteType(Landroid/car/hardware/xpu/XpuProtoMessageVW$RouteType;)V

    return-void
.end method

.method static synthetic access$48300(Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviRoutingInfoV2;)V
    .locals 0

    .line 19158
    invoke-direct {p0}, Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviRoutingInfoV2;->clearRouteType()V

    return-void
.end method

.method private clearEndPointName()V
    .locals 1

    .line 19464
    invoke-static {}, Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviRoutingInfoV2;->getDefaultInstance()Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviRoutingInfoV2;

    move-result-object v0

    invoke-virtual {v0}, Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviRoutingInfoV2;->getEndPointName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviRoutingInfoV2;->endPointName_:Ljava/lang/String;

    return-void
.end method

.method private clearNavigationId()V
    .locals 2

    const-wide/16 v0, 0x0

    .line 19235
    iput-wide v0, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviRoutingInfoV2;->navigationId_:J

    return-void
.end method

.method private clearNavigationStatus()V
    .locals 1

    const/4 v0, 0x0

    .line 19212
    iput v0, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviRoutingInfoV2;->navigationStatus_:I

    return-void
.end method

.method private clearPath()V
    .locals 1

    const/4 v0, 0x0

    .line 19378
    iput-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviRoutingInfoV2;->path_:Landroid/car/hardware/xpu/XpuProtoMessageVW$Path;

    return-void
.end method

.method private clearPpUpdateTime()V
    .locals 2

    const-wide/16 v0, 0x0

    .line 19607
    iput-wide v0, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviRoutingInfoV2;->ppUpdateTime_:J

    return-void
.end method

.method private clearPpVersion()V
    .locals 1

    .line 19549
    invoke-static {}, Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviRoutingInfoV2;->getDefaultInstance()Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviRoutingInfoV2;

    move-result-object v0

    invoke-virtual {v0}, Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviRoutingInfoV2;->getPpVersion()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviRoutingInfoV2;->ppVersion_:Ljava/lang/String;

    return-void
.end method

.method private clearRouteId()V
    .locals 2

    const-wide/16 v0, 0x0

    .line 19515
    iput-wide v0, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviRoutingInfoV2;->routeId_:J

    return-void
.end method

.method private clearRouteType()V
    .locals 1

    const/4 v0, 0x0

    .line 19666
    iput v0, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviRoutingInfoV2;->routeType_:I

    return-void
.end method

.method private clearRouteVersion()V
    .locals 2

    const-wide/16 v0, 0x0

    .line 19584
    iput-wide v0, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviRoutingInfoV2;->routeVersion_:J

    return-void
.end method

.method private clearSdkMajorVersion()V
    .locals 1

    .line 19269
    invoke-static {}, Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviRoutingInfoV2;->getDefaultInstance()Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviRoutingInfoV2;

    move-result-object v0

    invoke-virtual {v0}, Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviRoutingInfoV2;->getSdkMajorVersion()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviRoutingInfoV2;->sdkMajorVersion_:Ljava/lang/String;

    return-void
.end method

.method private clearSdkMinorVersion()V
    .locals 1

    .line 19315
    invoke-static {}, Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviRoutingInfoV2;->getDefaultInstance()Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviRoutingInfoV2;

    move-result-object v0

    invoke-virtual {v0}, Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviRoutingInfoV2;->getSdkMinorVersion()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviRoutingInfoV2;->sdkMinorVersion_:Ljava/lang/String;

    return-void
.end method

.method private clearTimeStamp()V
    .locals 2

    const-wide/16 v0, 0x0

    .line 19414
    iput-wide v0, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviRoutingInfoV2;->timeStamp_:J

    return-void
.end method

.method public static getDefaultInstance()Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviRoutingInfoV2;
    .locals 1

    .line 20486
    sget-object v0, Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviRoutingInfoV2;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviRoutingInfoV2;

    return-object v0
.end method

.method private mergePath(Landroid/car/hardware/xpu/XpuProtoMessageVW$Path;)V
    .locals 2

    .line 19366
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviRoutingInfoV2;->path_:Landroid/car/hardware/xpu/XpuProtoMessageVW$Path;

    if-eqz v0, :cond_0

    .line 19367
    invoke-static {}, Landroid/car/hardware/xpu/XpuProtoMessageVW$Path;->getDefaultInstance()Landroid/car/hardware/xpu/XpuProtoMessageVW$Path;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 19368
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviRoutingInfoV2;->path_:Landroid/car/hardware/xpu/XpuProtoMessageVW$Path;

    .line 19369
    invoke-static {v0}, Landroid/car/hardware/xpu/XpuProtoMessageVW$Path;->newBuilder(Landroid/car/hardware/xpu/XpuProtoMessageVW$Path;)Landroid/car/hardware/xpu/XpuProtoMessageVW$Path$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/car/hardware/xpu/XpuProtoMessageVW$Path$Builder;->mergeFrom(Lcom/android/carsdk/protobuf/GeneratedMessageLite;)Lcom/android/carsdk/protobuf/GeneratedMessageLite$Builder;

    move-result-object p1

    check-cast p1, Landroid/car/hardware/xpu/XpuProtoMessageVW$Path$Builder;

    invoke-virtual {p1}, Landroid/car/hardware/xpu/XpuProtoMessageVW$Path$Builder;->buildPartial()Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Landroid/car/hardware/xpu/XpuProtoMessageVW$Path;

    iput-object p1, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviRoutingInfoV2;->path_:Landroid/car/hardware/xpu/XpuProtoMessageVW$Path;

    goto :goto_0

    .line 19371
    :cond_0
    iput-object p1, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviRoutingInfoV2;->path_:Landroid/car/hardware/xpu/XpuProtoMessageVW$Path;

    :goto_0
    return-void
.end method

.method public static newBuilder()Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviRoutingInfoV2$Builder;
    .locals 1

    .line 19828
    sget-object v0, Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviRoutingInfoV2;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviRoutingInfoV2;

    invoke-virtual {v0}, Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviRoutingInfoV2;->toBuilder()Lcom/android/carsdk/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviRoutingInfoV2$Builder;

    return-object v0
.end method

.method public static newBuilder(Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviRoutingInfoV2;)Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviRoutingInfoV2$Builder;
    .locals 1

    .line 19831
    sget-object v0, Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviRoutingInfoV2;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviRoutingInfoV2;

    invoke-virtual {v0}, Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviRoutingInfoV2;->toBuilder()Lcom/android/carsdk/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviRoutingInfoV2$Builder;

    invoke-virtual {v0, p0}, Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviRoutingInfoV2$Builder;->mergeFrom(Lcom/android/carsdk/protobuf/GeneratedMessageLite;)Lcom/android/carsdk/protobuf/GeneratedMessageLite$Builder;

    move-result-object p0

    check-cast p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviRoutingInfoV2$Builder;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviRoutingInfoV2;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 19805
    sget-object v0, Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviRoutingInfoV2;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviRoutingInfoV2;

    invoke-static {v0, p0}, Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviRoutingInfoV2;->parseDelimitedFrom(Lcom/android/carsdk/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviRoutingInfoV2;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/android/carsdk/protobuf/ExtensionRegistryLite;)Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviRoutingInfoV2;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 19811
    sget-object v0, Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviRoutingInfoV2;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviRoutingInfoV2;

    invoke-static {v0, p0, p1}, Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviRoutingInfoV2;->parseDelimitedFrom(Lcom/android/carsdk/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/android/carsdk/protobuf/ExtensionRegistryLite;)Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviRoutingInfoV2;

    return-object p0
.end method

.method public static parseFrom(Lcom/android/carsdk/protobuf/ByteString;)Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviRoutingInfoV2;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/carsdk/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 19769
    sget-object v0, Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviRoutingInfoV2;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviRoutingInfoV2;

    invoke-static {v0, p0}, Lcom/android/carsdk/protobuf/GeneratedMessageLite;->parseFrom(Lcom/android/carsdk/protobuf/GeneratedMessageLite;Lcom/android/carsdk/protobuf/ByteString;)Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviRoutingInfoV2;

    return-object p0
.end method

.method public static parseFrom(Lcom/android/carsdk/protobuf/ByteString;Lcom/android/carsdk/protobuf/ExtensionRegistryLite;)Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviRoutingInfoV2;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/carsdk/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 19776
    sget-object v0, Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviRoutingInfoV2;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviRoutingInfoV2;

    invoke-static {v0, p0, p1}, Lcom/android/carsdk/protobuf/GeneratedMessageLite;->parseFrom(Lcom/android/carsdk/protobuf/GeneratedMessageLite;Lcom/android/carsdk/protobuf/ByteString;Lcom/android/carsdk/protobuf/ExtensionRegistryLite;)Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviRoutingInfoV2;

    return-object p0
.end method

.method public static parseFrom(Lcom/android/carsdk/protobuf/CodedInputStream;)Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviRoutingInfoV2;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 19816
    sget-object v0, Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviRoutingInfoV2;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviRoutingInfoV2;

    invoke-static {v0, p0}, Lcom/android/carsdk/protobuf/GeneratedMessageLite;->parseFrom(Lcom/android/carsdk/protobuf/GeneratedMessageLite;Lcom/android/carsdk/protobuf/CodedInputStream;)Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviRoutingInfoV2;

    return-object p0
.end method

.method public static parseFrom(Lcom/android/carsdk/protobuf/CodedInputStream;Lcom/android/carsdk/protobuf/ExtensionRegistryLite;)Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviRoutingInfoV2;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 19823
    sget-object v0, Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviRoutingInfoV2;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviRoutingInfoV2;

    invoke-static {v0, p0, p1}, Lcom/android/carsdk/protobuf/GeneratedMessageLite;->parseFrom(Lcom/android/carsdk/protobuf/GeneratedMessageLite;Lcom/android/carsdk/protobuf/CodedInputStream;Lcom/android/carsdk/protobuf/ExtensionRegistryLite;)Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviRoutingInfoV2;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviRoutingInfoV2;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 19793
    sget-object v0, Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviRoutingInfoV2;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviRoutingInfoV2;

    invoke-static {v0, p0}, Lcom/android/carsdk/protobuf/GeneratedMessageLite;->parseFrom(Lcom/android/carsdk/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviRoutingInfoV2;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/android/carsdk/protobuf/ExtensionRegistryLite;)Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviRoutingInfoV2;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 19800
    sget-object v0, Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviRoutingInfoV2;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviRoutingInfoV2;

    invoke-static {v0, p0, p1}, Lcom/android/carsdk/protobuf/GeneratedMessageLite;->parseFrom(Lcom/android/carsdk/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/android/carsdk/protobuf/ExtensionRegistryLite;)Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviRoutingInfoV2;

    return-object p0
.end method

.method public static parseFrom([B)Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviRoutingInfoV2;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/carsdk/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 19781
    sget-object v0, Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviRoutingInfoV2;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviRoutingInfoV2;

    invoke-static {v0, p0}, Lcom/android/carsdk/protobuf/GeneratedMessageLite;->parseFrom(Lcom/android/carsdk/protobuf/GeneratedMessageLite;[B)Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviRoutingInfoV2;

    return-object p0
.end method

.method public static parseFrom([BLcom/android/carsdk/protobuf/ExtensionRegistryLite;)Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviRoutingInfoV2;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/carsdk/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 19788
    sget-object v0, Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviRoutingInfoV2;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviRoutingInfoV2;

    invoke-static {v0, p0, p1}, Lcom/android/carsdk/protobuf/GeneratedMessageLite;->parseFrom(Lcom/android/carsdk/protobuf/GeneratedMessageLite;[BLcom/android/carsdk/protobuf/ExtensionRegistryLite;)Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviRoutingInfoV2;

    return-object p0
.end method

.method public static parser()Lcom/android/carsdk/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/android/carsdk/protobuf/Parser<",
            "Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviRoutingInfoV2;",
            ">;"
        }
    .end annotation

    .line 20492
    sget-object v0, Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviRoutingInfoV2;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviRoutingInfoV2;

    invoke-virtual {v0}, Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviRoutingInfoV2;->getParserForType()Lcom/android/carsdk/protobuf/Parser;

    move-result-object v0

    return-object v0
.end method

.method private setEndPointName(Ljava/lang/String;)V
    .locals 0

    .line 19450
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 19453
    iput-object p1, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviRoutingInfoV2;->endPointName_:Ljava/lang/String;

    return-void
.end method

.method private setEndPointNameBytes(Lcom/android/carsdk/protobuf/ByteString;)V
    .locals 0

    .line 19476
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 19478
    invoke-static {p1}, Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviRoutingInfoV2;->checkByteStringIsUtf8(Lcom/android/carsdk/protobuf/ByteString;)V

    .line 19480
    invoke-virtual {p1}, Lcom/android/carsdk/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviRoutingInfoV2;->endPointName_:Ljava/lang/String;

    return-void
.end method

.method private setNavigationId(J)V
    .locals 0

    .line 19228
    iput-wide p1, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviRoutingInfoV2;->navigationId_:J

    return-void
.end method

.method private setNavigationStatus(Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviStatus;)V
    .locals 0

    .line 19202
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 19205
    invoke-virtual {p1}, Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviStatus;->getNumber()I

    move-result p1

    iput p1, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviRoutingInfoV2;->navigationStatus_:I

    return-void
.end method

.method private setNavigationStatusValue(I)V
    .locals 0

    .line 19195
    iput p1, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviRoutingInfoV2;->navigationStatus_:I

    return-void
.end method

.method private setPath(Landroid/car/hardware/xpu/XpuProtoMessageVW$Path$Builder;)V
    .locals 0

    .line 19359
    invoke-virtual {p1}, Landroid/car/hardware/xpu/XpuProtoMessageVW$Path$Builder;->build()Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Landroid/car/hardware/xpu/XpuProtoMessageVW$Path;

    iput-object p1, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviRoutingInfoV2;->path_:Landroid/car/hardware/xpu/XpuProtoMessageVW$Path;

    return-void
.end method

.method private setPath(Landroid/car/hardware/xpu/XpuProtoMessageVW$Path;)V
    .locals 0

    .line 19349
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 19351
    iput-object p1, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviRoutingInfoV2;->path_:Landroid/car/hardware/xpu/XpuProtoMessageVW$Path;

    return-void
.end method

.method private setPpUpdateTime(J)V
    .locals 0

    .line 19600
    iput-wide p1, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviRoutingInfoV2;->ppUpdateTime_:J

    return-void
.end method

.method private setPpVersion(Ljava/lang/String;)V
    .locals 0

    .line 19539
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 19542
    iput-object p1, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviRoutingInfoV2;->ppVersion_:Ljava/lang/String;

    return-void
.end method

.method private setPpVersionBytes(Lcom/android/carsdk/protobuf/ByteString;)V
    .locals 0

    .line 19557
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 19559
    invoke-static {p1}, Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviRoutingInfoV2;->checkByteStringIsUtf8(Lcom/android/carsdk/protobuf/ByteString;)V

    .line 19561
    invoke-virtual {p1}, Lcom/android/carsdk/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviRoutingInfoV2;->ppVersion_:Ljava/lang/String;

    return-void
.end method

.method private setRouteId(J)V
    .locals 0

    .line 19504
    iput-wide p1, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviRoutingInfoV2;->routeId_:J

    return-void
.end method

.method private setRouteType(Landroid/car/hardware/xpu/XpuProtoMessageVW$RouteType;)V
    .locals 0

    .line 19652
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 19655
    invoke-virtual {p1}, Landroid/car/hardware/xpu/XpuProtoMessageVW$RouteType;->getNumber()I

    move-result p1

    iput p1, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviRoutingInfoV2;->routeType_:I

    return-void
.end method

.method private setRouteTypeValue(I)V
    .locals 0

    .line 19641
    iput p1, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviRoutingInfoV2;->routeType_:I

    return-void
.end method

.method private setRouteVersion(J)V
    .locals 0

    .line 19577
    iput-wide p1, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviRoutingInfoV2;->routeVersion_:J

    return-void
.end method

.method private setSdkMajorVersion(Ljava/lang/String;)V
    .locals 0

    .line 19259
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 19262
    iput-object p1, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviRoutingInfoV2;->sdkMajorVersion_:Ljava/lang/String;

    return-void
.end method

.method private setSdkMajorVersionBytes(Lcom/android/carsdk/protobuf/ByteString;)V
    .locals 0

    .line 19277
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 19279
    invoke-static {p1}, Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviRoutingInfoV2;->checkByteStringIsUtf8(Lcom/android/carsdk/protobuf/ByteString;)V

    .line 19281
    invoke-virtual {p1}, Lcom/android/carsdk/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviRoutingInfoV2;->sdkMajorVersion_:Ljava/lang/String;

    return-void
.end method

.method private setSdkMinorVersion(Ljava/lang/String;)V
    .locals 0

    .line 19305
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 19308
    iput-object p1, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviRoutingInfoV2;->sdkMinorVersion_:Ljava/lang/String;

    return-void
.end method

.method private setSdkMinorVersionBytes(Lcom/android/carsdk/protobuf/ByteString;)V
    .locals 0

    .line 19323
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 19325
    invoke-static {p1}, Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviRoutingInfoV2;->checkByteStringIsUtf8(Lcom/android/carsdk/protobuf/ByteString;)V

    .line 19327
    invoke-virtual {p1}, Lcom/android/carsdk/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviRoutingInfoV2;->sdkMinorVersion_:Ljava/lang/String;

    return-void
.end method

.method private setTimeStamp(J)V
    .locals 0

    .line 19403
    iput-wide p1, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviRoutingInfoV2;->timeStamp_:J

    return-void
.end method


# virtual methods
.method protected final dynamicMethod(Lcom/android/carsdk/protobuf/GeneratedMessageLite$MethodToInvoke;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 12

    .line 20315
    sget-object v0, Landroid/car/hardware/xpu/XpuProtoMessageVW$1;->$SwitchMap$com$google$protobuf$GeneratedMessageLite$MethodToInvoke:[I

    invoke-virtual {p1}, Lcom/android/carsdk/protobuf/GeneratedMessageLite$MethodToInvoke;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x1

    packed-switch p1, :pswitch_data_0

    .line 20474
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1

    .line 20465
    :pswitch_0
    sget-object p1, Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviRoutingInfoV2;->PARSER:Lcom/android/carsdk/protobuf/Parser;

    if-nez p1, :cond_1

    const-class p1, Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviRoutingInfoV2;

    monitor-enter p1

    .line 20466
    :try_start_0
    sget-object p2, Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviRoutingInfoV2;->PARSER:Lcom/android/carsdk/protobuf/Parser;

    if-nez p2, :cond_0

    .line 20467
    new-instance p2, Lcom/android/carsdk/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;

    sget-object p3, Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviRoutingInfoV2;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviRoutingInfoV2;

    invoke-direct {p2, p3}, Lcom/android/carsdk/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;-><init>(Lcom/android/carsdk/protobuf/GeneratedMessageLite;)V

    sput-object p2, Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviRoutingInfoV2;->PARSER:Lcom/android/carsdk/protobuf/Parser;

    .line 20469
    :cond_0
    monitor-exit p1

    goto :goto_0

    :catchall_0
    move-exception p2

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p2

    .line 20471
    :cond_1
    :goto_0
    sget-object p1, Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviRoutingInfoV2;->PARSER:Lcom/android/carsdk/protobuf/Parser;

    return-object p1

    .line 20358
    :pswitch_1
    check-cast p2, Lcom/android/carsdk/protobuf/CodedInputStream;

    .line 20360
    check-cast p3, Lcom/android/carsdk/protobuf/ExtensionRegistryLite;

    :cond_2
    :goto_1
    if-nez v1, :cond_4

    .line 20365
    :try_start_1
    invoke-virtual {p2}, Lcom/android/carsdk/protobuf/CodedInputStream;->readTag()I

    move-result p1

    sparse-switch p1, :sswitch_data_0

    .line 20371
    invoke-virtual {p2, p1}, Lcom/android/carsdk/protobuf/CodedInputStream;->skipField(I)Z

    move-result p1

    goto/16 :goto_4

    .line 20445
    :sswitch_0
    invoke-virtual {p2}, Lcom/android/carsdk/protobuf/CodedInputStream;->readEnum()I

    move-result p1

    .line 20447
    iput p1, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviRoutingInfoV2;->routeType_:I

    goto :goto_1

    .line 20441
    :sswitch_1
    invoke-virtual {p2}, Lcom/android/carsdk/protobuf/CodedInputStream;->readInt64()J

    move-result-wide v3

    iput-wide v3, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviRoutingInfoV2;->ppUpdateTime_:J

    goto :goto_1

    .line 20436
    :sswitch_2
    invoke-virtual {p2}, Lcom/android/carsdk/protobuf/CodedInputStream;->readUInt64()J

    move-result-wide v3

    iput-wide v3, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviRoutingInfoV2;->routeVersion_:J

    goto :goto_1

    .line 20429
    :sswitch_3
    invoke-virtual {p2}, Lcom/android/carsdk/protobuf/CodedInputStream;->readStringRequireUtf8()Ljava/lang/String;

    move-result-object p1

    .line 20431
    iput-object p1, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviRoutingInfoV2;->ppVersion_:Ljava/lang/String;

    goto :goto_1

    .line 20425
    :sswitch_4
    invoke-virtual {p2}, Lcom/android/carsdk/protobuf/CodedInputStream;->readInt64()J

    move-result-wide v3

    iput-wide v3, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviRoutingInfoV2;->routeId_:J

    goto :goto_1

    .line 20418
    :sswitch_5
    invoke-virtual {p2}, Lcom/android/carsdk/protobuf/CodedInputStream;->readStringRequireUtf8()Ljava/lang/String;

    move-result-object p1

    .line 20420
    iput-object p1, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviRoutingInfoV2;->endPointName_:Ljava/lang/String;

    goto :goto_1

    .line 20414
    :sswitch_6
    invoke-virtual {p2}, Lcom/android/carsdk/protobuf/CodedInputStream;->readUInt64()J

    move-result-wide v3

    iput-wide v3, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviRoutingInfoV2;->timeStamp_:J

    goto :goto_1

    .line 20401
    :sswitch_7
    iget-object p1, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviRoutingInfoV2;->path_:Landroid/car/hardware/xpu/XpuProtoMessageVW$Path;

    if-eqz p1, :cond_3

    .line 20402
    invoke-virtual {p1}, Landroid/car/hardware/xpu/XpuProtoMessageVW$Path;->toBuilder()Lcom/android/carsdk/protobuf/GeneratedMessageLite$Builder;

    move-result-object p1

    check-cast p1, Landroid/car/hardware/xpu/XpuProtoMessageVW$Path$Builder;

    goto :goto_2

    :cond_3
    move-object p1, v0

    .line 20404
    :goto_2
    invoke-static {}, Landroid/car/hardware/xpu/XpuProtoMessageVW$Path;->parser()Lcom/android/carsdk/protobuf/Parser;

    move-result-object v3

    invoke-virtual {p2, v3, p3}, Lcom/android/carsdk/protobuf/CodedInputStream;->readMessage(Lcom/android/carsdk/protobuf/Parser;Lcom/android/carsdk/protobuf/ExtensionRegistryLite;)Lcom/android/carsdk/protobuf/MessageLite;

    move-result-object v3

    check-cast v3, Landroid/car/hardware/xpu/XpuProtoMessageVW$Path;

    iput-object v3, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviRoutingInfoV2;->path_:Landroid/car/hardware/xpu/XpuProtoMessageVW$Path;

    if-eqz p1, :cond_2

    .line 20406
    invoke-virtual {p1, v3}, Landroid/car/hardware/xpu/XpuProtoMessageVW$Path$Builder;->mergeFrom(Lcom/android/carsdk/protobuf/GeneratedMessageLite;)Lcom/android/carsdk/protobuf/GeneratedMessageLite$Builder;

    .line 20407
    invoke-virtual {p1}, Landroid/car/hardware/xpu/XpuProtoMessageVW$Path$Builder;->buildPartial()Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Landroid/car/hardware/xpu/XpuProtoMessageVW$Path;

    iput-object p1, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviRoutingInfoV2;->path_:Landroid/car/hardware/xpu/XpuProtoMessageVW$Path;

    goto :goto_1

    .line 20394
    :sswitch_8
    invoke-virtual {p2}, Lcom/android/carsdk/protobuf/CodedInputStream;->readStringRequireUtf8()Ljava/lang/String;

    move-result-object p1

    .line 20396
    iput-object p1, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviRoutingInfoV2;->sdkMinorVersion_:Ljava/lang/String;

    goto :goto_1

    .line 20388
    :sswitch_9
    invoke-virtual {p2}, Lcom/android/carsdk/protobuf/CodedInputStream;->readStringRequireUtf8()Ljava/lang/String;

    move-result-object p1

    .line 20390
    iput-object p1, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviRoutingInfoV2;->sdkMajorVersion_:Ljava/lang/String;

    goto :goto_1

    .line 20384
    :sswitch_a
    invoke-virtual {p2}, Lcom/android/carsdk/protobuf/CodedInputStream;->readUInt64()J

    move-result-wide v3

    iput-wide v3, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviRoutingInfoV2;->navigationId_:J

    goto :goto_1

    .line 20377
    :sswitch_b
    invoke-virtual {p2}, Lcom/android/carsdk/protobuf/CodedInputStream;->readEnum()I

    move-result p1

    .line 20379
    iput p1, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviRoutingInfoV2;->navigationStatus_:I
    :try_end_1
    .catch Lcom/android/carsdk/protobuf/InvalidProtocolBufferException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto/16 :goto_1

    :goto_3
    :sswitch_c
    move v1, v2

    goto/16 :goto_1

    :goto_4
    if-nez p1, :cond_2

    goto :goto_3

    :catchall_1
    move-exception p1

    goto :goto_5

    :catch_0
    move-exception p1

    .line 20455
    :try_start_2
    new-instance p2, Ljava/lang/RuntimeException;

    new-instance p3, Lcom/android/carsdk/protobuf/InvalidProtocolBufferException;

    .line 20457
    invoke-virtual {p1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p3, p1}, Lcom/android/carsdk/protobuf/InvalidProtocolBufferException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, p0}, Lcom/android/carsdk/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/android/carsdk/protobuf/MessageLite;)Lcom/android/carsdk/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p2

    :catch_1
    move-exception p1

    .line 20453
    new-instance p2, Ljava/lang/RuntimeException;

    invoke-virtual {p1, p0}, Lcom/android/carsdk/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/android/carsdk/protobuf/MessageLite;)Lcom/android/carsdk/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 20458
    :goto_5
    throw p1

    .line 20462
    :cond_4
    :pswitch_2
    sget-object p1, Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviRoutingInfoV2;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviRoutingInfoV2;

    return-object p1

    .line 20329
    :pswitch_3
    check-cast p2, Lcom/android/carsdk/protobuf/GeneratedMessageLite$Visitor;

    .line 20330
    check-cast p3, Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviRoutingInfoV2;

    .line 20331
    iget p1, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviRoutingInfoV2;->navigationStatus_:I

    if-eqz p1, :cond_5

    move v0, v2

    goto :goto_6

    :cond_5
    move v0, v1

    :goto_6
    iget v3, p3, Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviRoutingInfoV2;->navigationStatus_:I

    if-eqz v3, :cond_6

    move v4, v2

    goto :goto_7

    :cond_6
    move v4, v1

    :goto_7
    invoke-interface {p2, v0, p1, v4, v3}, Lcom/android/carsdk/protobuf/GeneratedMessageLite$Visitor;->visitInt(ZIZI)I

    move-result p1

    iput p1, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviRoutingInfoV2;->navigationStatus_:I

    .line 20332
    iget-wide v5, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviRoutingInfoV2;->navigationId_:J

    const-wide/16 v10, 0x0

    cmp-long p1, v5, v10

    if-eqz p1, :cond_7

    move v4, v2

    goto :goto_8

    :cond_7
    move v4, v1

    :goto_8
    iget-wide v8, p3, Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviRoutingInfoV2;->navigationId_:J

    cmp-long p1, v8, v10

    if-eqz p1, :cond_8

    move v7, v2

    goto :goto_9

    :cond_8
    move v7, v1

    :goto_9
    move-object v3, p2

    invoke-interface/range {v3 .. v9}, Lcom/android/carsdk/protobuf/GeneratedMessageLite$Visitor;->visitLong(ZJZJ)J

    move-result-wide v3

    iput-wide v3, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviRoutingInfoV2;->navigationId_:J

    .line 20334
    iget-object p1, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviRoutingInfoV2;->sdkMajorVersion_:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result p1

    xor-int/2addr p1, v2

    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviRoutingInfoV2;->sdkMajorVersion_:Ljava/lang/String;

    iget-object v3, p3, Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviRoutingInfoV2;->sdkMajorVersion_:Ljava/lang/String;

    .line 20335
    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    xor-int/2addr v3, v2

    iget-object v4, p3, Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviRoutingInfoV2;->sdkMajorVersion_:Ljava/lang/String;

    .line 20334
    invoke-interface {p2, p1, v0, v3, v4}, Lcom/android/carsdk/protobuf/GeneratedMessageLite$Visitor;->visitString(ZLjava/lang/String;ZLjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviRoutingInfoV2;->sdkMajorVersion_:Ljava/lang/String;

    .line 20336
    iget-object p1, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviRoutingInfoV2;->sdkMinorVersion_:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result p1

    xor-int/2addr p1, v2

    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviRoutingInfoV2;->sdkMinorVersion_:Ljava/lang/String;

    iget-object v3, p3, Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviRoutingInfoV2;->sdkMinorVersion_:Ljava/lang/String;

    .line 20337
    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    xor-int/2addr v3, v2

    iget-object v4, p3, Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviRoutingInfoV2;->sdkMinorVersion_:Ljava/lang/String;

    .line 20336
    invoke-interface {p2, p1, v0, v3, v4}, Lcom/android/carsdk/protobuf/GeneratedMessageLite$Visitor;->visitString(ZLjava/lang/String;ZLjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviRoutingInfoV2;->sdkMinorVersion_:Ljava/lang/String;

    .line 20338
    iget-object p1, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviRoutingInfoV2;->path_:Landroid/car/hardware/xpu/XpuProtoMessageVW$Path;

    iget-object v0, p3, Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviRoutingInfoV2;->path_:Landroid/car/hardware/xpu/XpuProtoMessageVW$Path;

    invoke-interface {p2, p1, v0}, Lcom/android/carsdk/protobuf/GeneratedMessageLite$Visitor;->visitMessage(Lcom/android/carsdk/protobuf/MessageLite;Lcom/android/carsdk/protobuf/MessageLite;)Lcom/android/carsdk/protobuf/MessageLite;

    move-result-object p1

    check-cast p1, Landroid/car/hardware/xpu/XpuProtoMessageVW$Path;

    iput-object p1, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviRoutingInfoV2;->path_:Landroid/car/hardware/xpu/XpuProtoMessageVW$Path;

    .line 20339
    iget-wide v5, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviRoutingInfoV2;->timeStamp_:J

    cmp-long p1, v5, v10

    if-eqz p1, :cond_9

    move v4, v2

    goto :goto_a

    :cond_9
    move v4, v1

    :goto_a
    iget-wide v8, p3, Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviRoutingInfoV2;->timeStamp_:J

    cmp-long p1, v8, v10

    if-eqz p1, :cond_a

    move v7, v2

    goto :goto_b

    :cond_a
    move v7, v1

    :goto_b
    move-object v3, p2

    invoke-interface/range {v3 .. v9}, Lcom/android/carsdk/protobuf/GeneratedMessageLite$Visitor;->visitLong(ZJZJ)J

    move-result-wide v3

    iput-wide v3, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviRoutingInfoV2;->timeStamp_:J

    .line 20341
    iget-object p1, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviRoutingInfoV2;->endPointName_:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result p1

    xor-int/2addr p1, v2

    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviRoutingInfoV2;->endPointName_:Ljava/lang/String;

    iget-object v3, p3, Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviRoutingInfoV2;->endPointName_:Ljava/lang/String;

    .line 20342
    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    xor-int/2addr v3, v2

    iget-object v4, p3, Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviRoutingInfoV2;->endPointName_:Ljava/lang/String;

    .line 20341
    invoke-interface {p2, p1, v0, v3, v4}, Lcom/android/carsdk/protobuf/GeneratedMessageLite$Visitor;->visitString(ZLjava/lang/String;ZLjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviRoutingInfoV2;->endPointName_:Ljava/lang/String;

    .line 20343
    iget-wide v5, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviRoutingInfoV2;->routeId_:J

    cmp-long p1, v5, v10

    if-eqz p1, :cond_b

    move v4, v2

    goto :goto_c

    :cond_b
    move v4, v1

    :goto_c
    iget-wide v8, p3, Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviRoutingInfoV2;->routeId_:J

    cmp-long p1, v8, v10

    if-eqz p1, :cond_c

    move v7, v2

    goto :goto_d

    :cond_c
    move v7, v1

    :goto_d
    move-object v3, p2

    invoke-interface/range {v3 .. v9}, Lcom/android/carsdk/protobuf/GeneratedMessageLite$Visitor;->visitLong(ZJZJ)J

    move-result-wide v3

    iput-wide v3, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviRoutingInfoV2;->routeId_:J

    .line 20345
    iget-object p1, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviRoutingInfoV2;->ppVersion_:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result p1

    xor-int/2addr p1, v2

    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviRoutingInfoV2;->ppVersion_:Ljava/lang/String;

    iget-object v3, p3, Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviRoutingInfoV2;->ppVersion_:Ljava/lang/String;

    .line 20346
    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    xor-int/2addr v3, v2

    iget-object v4, p3, Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviRoutingInfoV2;->ppVersion_:Ljava/lang/String;

    .line 20345
    invoke-interface {p2, p1, v0, v3, v4}, Lcom/android/carsdk/protobuf/GeneratedMessageLite$Visitor;->visitString(ZLjava/lang/String;ZLjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviRoutingInfoV2;->ppVersion_:Ljava/lang/String;

    .line 20347
    iget-wide v5, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviRoutingInfoV2;->routeVersion_:J

    cmp-long p1, v5, v10

    if-eqz p1, :cond_d

    move v4, v2

    goto :goto_e

    :cond_d
    move v4, v1

    :goto_e
    iget-wide v8, p3, Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviRoutingInfoV2;->routeVersion_:J

    cmp-long p1, v8, v10

    if-eqz p1, :cond_e

    move v7, v2

    goto :goto_f

    :cond_e
    move v7, v1

    :goto_f
    move-object v3, p2

    invoke-interface/range {v3 .. v9}, Lcom/android/carsdk/protobuf/GeneratedMessageLite$Visitor;->visitLong(ZJZJ)J

    move-result-wide v3

    iput-wide v3, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviRoutingInfoV2;->routeVersion_:J

    .line 20349
    iget-wide v5, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviRoutingInfoV2;->ppUpdateTime_:J

    cmp-long p1, v5, v10

    if-eqz p1, :cond_f

    move v4, v2

    goto :goto_10

    :cond_f
    move v4, v1

    :goto_10
    iget-wide v8, p3, Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviRoutingInfoV2;->ppUpdateTime_:J

    cmp-long p1, v8, v10

    if-eqz p1, :cond_10

    move v7, v2

    goto :goto_11

    :cond_10
    move v7, v1

    :goto_11
    move-object v3, p2

    invoke-interface/range {v3 .. v9}, Lcom/android/carsdk/protobuf/GeneratedMessageLite$Visitor;->visitLong(ZJZJ)J

    move-result-wide v3

    iput-wide v3, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviRoutingInfoV2;->ppUpdateTime_:J

    .line 20351
    iget p1, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviRoutingInfoV2;->routeType_:I

    if-eqz p1, :cond_11

    move v0, v2

    goto :goto_12

    :cond_11
    move v0, v1

    :goto_12
    iget p3, p3, Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviRoutingInfoV2;->routeType_:I

    if-eqz p3, :cond_12

    move v1, v2

    :cond_12
    invoke-interface {p2, v0, p1, v1, p3}, Lcom/android/carsdk/protobuf/GeneratedMessageLite$Visitor;->visitInt(ZIZI)I

    move-result p1

    iput p1, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviRoutingInfoV2;->routeType_:I

    .line 20352
    sget-object p1, Lcom/android/carsdk/protobuf/GeneratedMessageLite$MergeFromVisitor;->INSTANCE:Lcom/android/carsdk/protobuf/GeneratedMessageLite$MergeFromVisitor;

    return-object p0

    .line 20326
    :pswitch_4
    new-instance p1, Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviRoutingInfoV2$Builder;

    invoke-direct {p1, v0}, Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviRoutingInfoV2$Builder;-><init>(Landroid/car/hardware/xpu/XpuProtoMessageVW$1;)V

    return-object p1

    :pswitch_5
    return-object v0

    .line 20320
    :pswitch_6
    sget-object p1, Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviRoutingInfoV2;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviRoutingInfoV2;

    return-object p1

    .line 20317
    :pswitch_7
    new-instance p1, Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviRoutingInfoV2;

    invoke-direct {p1}, Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviRoutingInfoV2;-><init>()V

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
        0x0 -> :sswitch_c
        0x8 -> :sswitch_b
        0x10 -> :sswitch_a
        0x1a -> :sswitch_9
        0x22 -> :sswitch_8
        0x2a -> :sswitch_7
        0x30 -> :sswitch_6
        0x3a -> :sswitch_5
        0x40 -> :sswitch_4
        0x4a -> :sswitch_3
        0x50 -> :sswitch_2
        0x58 -> :sswitch_1
        0x60 -> :sswitch_0
    .end sparse-switch
.end method

.method public getEndPointName()Ljava/lang/String;
    .locals 1

    .line 19427
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviRoutingInfoV2;->endPointName_:Ljava/lang/String;

    return-object v0
.end method

.method public getEndPointNameBytes()Lcom/android/carsdk/protobuf/ByteString;
    .locals 1

    .line 19438
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviRoutingInfoV2;->endPointName_:Ljava/lang/String;

    invoke-static {v0}, Lcom/android/carsdk/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/android/carsdk/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getNavigationId()J
    .locals 2

    .line 19221
    iget-wide v0, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviRoutingInfoV2;->navigationId_:J

    return-wide v0
.end method

.method public getNavigationStatus()Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviStatus;
    .locals 1

    .line 19188
    iget v0, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviRoutingInfoV2;->navigationStatus_:I

    invoke-static {v0}, Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviStatus;->forNumber(I)Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviStatus;

    move-result-object v0

    if-nez v0, :cond_0

    .line 19189
    sget-object v0, Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviStatus;->UNRECOGNIZED:Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviStatus;

    :cond_0
    return-object v0
.end method

.method public getNavigationStatusValue()I
    .locals 1

    .line 19182
    iget v0, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviRoutingInfoV2;->navigationStatus_:I

    return v0
.end method

.method public getPath()Landroid/car/hardware/xpu/XpuProtoMessageVW$Path;
    .locals 1

    .line 19342
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviRoutingInfoV2;->path_:Landroid/car/hardware/xpu/XpuProtoMessageVW$Path;

    if-nez v0, :cond_0

    invoke-static {}, Landroid/car/hardware/xpu/XpuProtoMessageVW$Path;->getDefaultInstance()Landroid/car/hardware/xpu/XpuProtoMessageVW$Path;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public getPpUpdateTime()J
    .locals 2

    .line 19593
    iget-wide v0, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviRoutingInfoV2;->ppUpdateTime_:J

    return-wide v0
.end method

.method public getPpVersion()Ljava/lang/String;
    .locals 1

    .line 19524
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviRoutingInfoV2;->ppVersion_:Ljava/lang/String;

    return-object v0
.end method

.method public getPpVersionBytes()Lcom/android/carsdk/protobuf/ByteString;
    .locals 1

    .line 19531
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviRoutingInfoV2;->ppVersion_:Ljava/lang/String;

    invoke-static {v0}, Lcom/android/carsdk/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/android/carsdk/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getRouteId()J
    .locals 2

    .line 19493
    iget-wide v0, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviRoutingInfoV2;->routeId_:J

    return-wide v0
.end method

.method public getRouteType()Landroid/car/hardware/xpu/XpuProtoMessageVW$RouteType;
    .locals 1

    .line 19630
    iget v0, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviRoutingInfoV2;->routeType_:I

    invoke-static {v0}, Landroid/car/hardware/xpu/XpuProtoMessageVW$RouteType;->forNumber(I)Landroid/car/hardware/xpu/XpuProtoMessageVW$RouteType;

    move-result-object v0

    if-nez v0, :cond_0

    .line 19631
    sget-object v0, Landroid/car/hardware/xpu/XpuProtoMessageVW$RouteType;->UNRECOGNIZED:Landroid/car/hardware/xpu/XpuProtoMessageVW$RouteType;

    :cond_0
    return-object v0
.end method

.method public getRouteTypeValue()I
    .locals 1

    .line 19620
    iget v0, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviRoutingInfoV2;->routeType_:I

    return v0
.end method

.method public getRouteVersion()J
    .locals 2

    .line 19570
    iget-wide v0, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviRoutingInfoV2;->routeVersion_:J

    return-wide v0
.end method

.method public getSdkMajorVersion()Ljava/lang/String;
    .locals 1

    .line 19244
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviRoutingInfoV2;->sdkMajorVersion_:Ljava/lang/String;

    return-object v0
.end method

.method public getSdkMajorVersionBytes()Lcom/android/carsdk/protobuf/ByteString;
    .locals 1

    .line 19251
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviRoutingInfoV2;->sdkMajorVersion_:Ljava/lang/String;

    invoke-static {v0}, Lcom/android/carsdk/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/android/carsdk/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getSdkMinorVersion()Ljava/lang/String;
    .locals 1

    .line 19290
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviRoutingInfoV2;->sdkMinorVersion_:Ljava/lang/String;

    return-object v0
.end method

.method public getSdkMinorVersionBytes()Lcom/android/carsdk/protobuf/ByteString;
    .locals 1

    .line 19297
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviRoutingInfoV2;->sdkMinorVersion_:Ljava/lang/String;

    invoke-static {v0}, Lcom/android/carsdk/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/android/carsdk/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getSerializedSize()I
    .locals 6

    .line 19710
    iget v0, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviRoutingInfoV2;->memoizedSerializedSize:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    return v0

    :cond_0
    const/4 v0, 0x0

    .line 19714
    iget v1, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviRoutingInfoV2;->navigationStatus_:I

    sget-object v2, Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviStatus;->NAVI_STATUS_INVALID:Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviStatus;

    invoke-virtual {v2}, Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviStatus;->getNumber()I

    move-result v2

    if-eq v1, v2, :cond_1

    const/4 v1, 0x1

    .line 19715
    iget v2, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviRoutingInfoV2;->navigationStatus_:I

    .line 19716
    invoke-static {v1, v2}, Lcom/android/carsdk/protobuf/CodedOutputStream;->computeEnumSize(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 19718
    :cond_1
    iget-wide v1, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviRoutingInfoV2;->navigationId_:J

    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-eqz v5, :cond_2

    const/4 v5, 0x2

    .line 19720
    invoke-static {v5, v1, v2}, Lcom/android/carsdk/protobuf/CodedOutputStream;->computeUInt64Size(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 19722
    :cond_2
    iget-object v1, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviRoutingInfoV2;->sdkMajorVersion_:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_3

    const/4 v1, 0x3

    .line 19724
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviRoutingInfoV2;->getSdkMajorVersion()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/carsdk/protobuf/CodedOutputStream;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 19726
    :cond_3
    iget-object v1, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviRoutingInfoV2;->sdkMinorVersion_:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_4

    const/4 v1, 0x4

    .line 19728
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviRoutingInfoV2;->getSdkMinorVersion()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/carsdk/protobuf/CodedOutputStream;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 19730
    :cond_4
    iget-object v1, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviRoutingInfoV2;->path_:Landroid/car/hardware/xpu/XpuProtoMessageVW$Path;

    if-eqz v1, :cond_5

    const/4 v1, 0x5

    .line 19732
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviRoutingInfoV2;->getPath()Landroid/car/hardware/xpu/XpuProtoMessageVW$Path;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/carsdk/protobuf/CodedOutputStream;->computeMessageSize(ILcom/android/carsdk/protobuf/MessageLite;)I

    move-result v1

    add-int/2addr v0, v1

    .line 19734
    :cond_5
    iget-wide v1, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviRoutingInfoV2;->timeStamp_:J

    cmp-long v5, v1, v3

    if-eqz v5, :cond_6

    const/4 v5, 0x6

    .line 19736
    invoke-static {v5, v1, v2}, Lcom/android/carsdk/protobuf/CodedOutputStream;->computeUInt64Size(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 19738
    :cond_6
    iget-object v1, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviRoutingInfoV2;->endPointName_:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_7

    const/4 v1, 0x7

    .line 19740
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviRoutingInfoV2;->getEndPointName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/carsdk/protobuf/CodedOutputStream;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 19742
    :cond_7
    iget-wide v1, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviRoutingInfoV2;->routeId_:J

    cmp-long v5, v1, v3

    if-eqz v5, :cond_8

    const/16 v5, 0x8

    .line 19744
    invoke-static {v5, v1, v2}, Lcom/android/carsdk/protobuf/CodedOutputStream;->computeInt64Size(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 19746
    :cond_8
    iget-object v1, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviRoutingInfoV2;->ppVersion_:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_9

    const/16 v1, 0x9

    .line 19748
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviRoutingInfoV2;->getPpVersion()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/carsdk/protobuf/CodedOutputStream;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 19750
    :cond_9
    iget-wide v1, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviRoutingInfoV2;->routeVersion_:J

    cmp-long v5, v1, v3

    if-eqz v5, :cond_a

    const/16 v5, 0xa

    .line 19752
    invoke-static {v5, v1, v2}, Lcom/android/carsdk/protobuf/CodedOutputStream;->computeUInt64Size(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 19754
    :cond_a
    iget-wide v1, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviRoutingInfoV2;->ppUpdateTime_:J

    cmp-long v3, v1, v3

    if-eqz v3, :cond_b

    const/16 v3, 0xb

    .line 19756
    invoke-static {v3, v1, v2}, Lcom/android/carsdk/protobuf/CodedOutputStream;->computeInt64Size(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 19758
    :cond_b
    iget v1, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviRoutingInfoV2;->routeType_:I

    sget-object v2, Landroid/car/hardware/xpu/XpuProtoMessageVW$RouteType;->RouteTypeUnknown:Landroid/car/hardware/xpu/XpuProtoMessageVW$RouteType;

    invoke-virtual {v2}, Landroid/car/hardware/xpu/XpuProtoMessageVW$RouteType;->getNumber()I

    move-result v2

    if-eq v1, v2, :cond_c

    const/16 v1, 0xc

    .line 19759
    iget v2, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviRoutingInfoV2;->routeType_:I

    .line 19760
    invoke-static {v1, v2}, Lcom/android/carsdk/protobuf/CodedOutputStream;->computeEnumSize(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 19762
    :cond_c
    iput v0, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviRoutingInfoV2;->memoizedSerializedSize:I

    return v0
.end method

.method public getTimeStamp()J
    .locals 2

    .line 19392
    iget-wide v0, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviRoutingInfoV2;->timeStamp_:J

    return-wide v0
.end method

.method public hasPath()Z
    .locals 1

    .line 19336
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviRoutingInfoV2;->path_:Landroid/car/hardware/xpu/XpuProtoMessageVW$Path;

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

    .line 19671
    iget v0, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviRoutingInfoV2;->navigationStatus_:I

    sget-object v1, Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviStatus;->NAVI_STATUS_INVALID:Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviStatus;

    invoke-virtual {v1}, Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviStatus;->getNumber()I

    move-result v1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    .line 19672
    iget v1, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviRoutingInfoV2;->navigationStatus_:I

    invoke-virtual {p1, v0, v1}, Lcom/android/carsdk/protobuf/CodedOutputStream;->writeEnum(II)V

    .line 19674
    :cond_0
    iget-wide v0, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviRoutingInfoV2;->navigationId_:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_1

    const/4 v4, 0x2

    .line 19675
    invoke-virtual {p1, v4, v0, v1}, Lcom/android/carsdk/protobuf/CodedOutputStream;->writeUInt64(IJ)V

    .line 19677
    :cond_1
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviRoutingInfoV2;->sdkMajorVersion_:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    const/4 v0, 0x3

    .line 19678
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviRoutingInfoV2;->getSdkMajorVersion()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/android/carsdk/protobuf/CodedOutputStream;->writeString(ILjava/lang/String;)V

    .line 19680
    :cond_2
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviRoutingInfoV2;->sdkMinorVersion_:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    const/4 v0, 0x4

    .line 19681
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviRoutingInfoV2;->getSdkMinorVersion()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/android/carsdk/protobuf/CodedOutputStream;->writeString(ILjava/lang/String;)V

    .line 19683
    :cond_3
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviRoutingInfoV2;->path_:Landroid/car/hardware/xpu/XpuProtoMessageVW$Path;

    if-eqz v0, :cond_4

    const/4 v0, 0x5

    .line 19684
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviRoutingInfoV2;->getPath()Landroid/car/hardware/xpu/XpuProtoMessageVW$Path;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/android/carsdk/protobuf/CodedOutputStream;->writeMessage(ILcom/android/carsdk/protobuf/MessageLite;)V

    .line 19686
    :cond_4
    iget-wide v0, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviRoutingInfoV2;->timeStamp_:J

    cmp-long v4, v0, v2

    if-eqz v4, :cond_5

    const/4 v4, 0x6

    .line 19687
    invoke-virtual {p1, v4, v0, v1}, Lcom/android/carsdk/protobuf/CodedOutputStream;->writeUInt64(IJ)V

    .line 19689
    :cond_5
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviRoutingInfoV2;->endPointName_:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_6

    const/4 v0, 0x7

    .line 19690
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviRoutingInfoV2;->getEndPointName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/android/carsdk/protobuf/CodedOutputStream;->writeString(ILjava/lang/String;)V

    .line 19692
    :cond_6
    iget-wide v0, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviRoutingInfoV2;->routeId_:J

    cmp-long v4, v0, v2

    if-eqz v4, :cond_7

    const/16 v4, 0x8

    .line 19693
    invoke-virtual {p1, v4, v0, v1}, Lcom/android/carsdk/protobuf/CodedOutputStream;->writeInt64(IJ)V

    .line 19695
    :cond_7
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviRoutingInfoV2;->ppVersion_:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_8

    const/16 v0, 0x9

    .line 19696
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviRoutingInfoV2;->getPpVersion()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/android/carsdk/protobuf/CodedOutputStream;->writeString(ILjava/lang/String;)V

    .line 19698
    :cond_8
    iget-wide v0, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviRoutingInfoV2;->routeVersion_:J

    cmp-long v4, v0, v2

    if-eqz v4, :cond_9

    const/16 v4, 0xa

    .line 19699
    invoke-virtual {p1, v4, v0, v1}, Lcom/android/carsdk/protobuf/CodedOutputStream;->writeUInt64(IJ)V

    .line 19701
    :cond_9
    iget-wide v0, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviRoutingInfoV2;->ppUpdateTime_:J

    cmp-long v2, v0, v2

    if-eqz v2, :cond_a

    const/16 v2, 0xb

    .line 19702
    invoke-virtual {p1, v2, v0, v1}, Lcom/android/carsdk/protobuf/CodedOutputStream;->writeInt64(IJ)V

    .line 19704
    :cond_a
    iget v0, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviRoutingInfoV2;->routeType_:I

    sget-object v1, Landroid/car/hardware/xpu/XpuProtoMessageVW$RouteType;->RouteTypeUnknown:Landroid/car/hardware/xpu/XpuProtoMessageVW$RouteType;

    invoke-virtual {v1}, Landroid/car/hardware/xpu/XpuProtoMessageVW$RouteType;->getNumber()I

    move-result v1

    if-eq v0, v1, :cond_b

    const/16 v0, 0xc

    .line 19705
    iget v1, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviRoutingInfoV2;->routeType_:I

    invoke-virtual {p1, v0, v1}, Lcom/android/carsdk/protobuf/CodedOutputStream;->writeEnum(II)V

    :cond_b
    return-void
.end method
