.class public final Landroid/car/hardware/xpu/XpuProtoMessage$NaviRoutingInfoV2;
.super Lcom/android/carsdk/protobuf/GeneratedMessageLite;
.source "XpuProtoMessage.java"

# interfaces
.implements Landroid/car/hardware/xpu/XpuProtoMessage$NaviRoutingInfoV2OrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/car/hardware/xpu/XpuProtoMessage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "NaviRoutingInfoV2"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/car/hardware/xpu/XpuProtoMessage$NaviRoutingInfoV2$Builder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/carsdk/protobuf/GeneratedMessageLite<",
        "Landroid/car/hardware/xpu/XpuProtoMessage$NaviRoutingInfoV2;",
        "Landroid/car/hardware/xpu/XpuProtoMessage$NaviRoutingInfoV2$Builder;",
        ">;",
        "Landroid/car/hardware/xpu/XpuProtoMessage$NaviRoutingInfoV2OrBuilder;"
    }
.end annotation


# static fields
.field private static final DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuProtoMessage$NaviRoutingInfoV2;

.field public static final END_POINT_NAME_FIELD_NUMBER:I = 0x7

.field public static final EXNGP_NAVI_INFO_FIELD_NUMBER:I = 0xd

.field public static final NAVIGATION_ID_FIELD_NUMBER:I = 0x2

.field public static final NAVIGATION_STATUS_FIELD_NUMBER:I = 0x1

.field public static final NAVI_FINISH_TYPE_FIELD_NUMBER:I = 0xe

.field private static volatile PARSER:Lcom/android/carsdk/protobuf/Parser; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/carsdk/protobuf/Parser<",
            "Landroid/car/hardware/xpu/XpuProtoMessage$NaviRoutingInfoV2;",
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

.field private exngpNaviInfo_:Landroid/car/hardware/xpu/XpuProtoMessage$ExngpNaviInfo;

.field private naviFinishType_:I

.field private navigationId_:J

.field private navigationStatus_:I

.field private path_:Landroid/car/hardware/xpu/XpuProtoMessage$Path;

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

    .line 21991
    new-instance v0, Landroid/car/hardware/xpu/XpuProtoMessage$NaviRoutingInfoV2;

    invoke-direct {v0}, Landroid/car/hardware/xpu/XpuProtoMessage$NaviRoutingInfoV2;-><init>()V

    sput-object v0, Landroid/car/hardware/xpu/XpuProtoMessage$NaviRoutingInfoV2;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuProtoMessage$NaviRoutingInfoV2;

    .line 21992
    invoke-virtual {v0}, Landroid/car/hardware/xpu/XpuProtoMessage$NaviRoutingInfoV2;->makeImmutable()V

    return-void
.end method

.method private constructor <init>()V
    .locals 4

    .line 20376
    invoke-direct {p0}, Lcom/android/carsdk/protobuf/GeneratedMessageLite;-><init>()V

    const/4 v0, 0x0

    .line 20377
    iput v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$NaviRoutingInfoV2;->navigationStatus_:I

    const-wide/16 v1, 0x0

    .line 20378
    iput-wide v1, p0, Landroid/car/hardware/xpu/XpuProtoMessage$NaviRoutingInfoV2;->navigationId_:J

    const-string v3, ""

    .line 20379
    iput-object v3, p0, Landroid/car/hardware/xpu/XpuProtoMessage$NaviRoutingInfoV2;->sdkMajorVersion_:Ljava/lang/String;

    .line 20380
    iput-object v3, p0, Landroid/car/hardware/xpu/XpuProtoMessage$NaviRoutingInfoV2;->sdkMinorVersion_:Ljava/lang/String;

    .line 20381
    iput-wide v1, p0, Landroid/car/hardware/xpu/XpuProtoMessage$NaviRoutingInfoV2;->timeStamp_:J

    .line 20382
    iput-object v3, p0, Landroid/car/hardware/xpu/XpuProtoMessage$NaviRoutingInfoV2;->endPointName_:Ljava/lang/String;

    .line 20383
    iput-wide v1, p0, Landroid/car/hardware/xpu/XpuProtoMessage$NaviRoutingInfoV2;->routeId_:J

    .line 20384
    iput-object v3, p0, Landroid/car/hardware/xpu/XpuProtoMessage$NaviRoutingInfoV2;->ppVersion_:Ljava/lang/String;

    .line 20385
    iput-wide v1, p0, Landroid/car/hardware/xpu/XpuProtoMessage$NaviRoutingInfoV2;->routeVersion_:J

    .line 20386
    iput-wide v1, p0, Landroid/car/hardware/xpu/XpuProtoMessage$NaviRoutingInfoV2;->ppUpdateTime_:J

    .line 20387
    iput v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$NaviRoutingInfoV2;->routeType_:I

    .line 20388
    iput v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$NaviRoutingInfoV2;->naviFinishType_:I

    return-void
.end method

.method static synthetic access$47500()Landroid/car/hardware/xpu/XpuProtoMessage$NaviRoutingInfoV2;
    .locals 1

    .line 20371
    sget-object v0, Landroid/car/hardware/xpu/XpuProtoMessage$NaviRoutingInfoV2;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuProtoMessage$NaviRoutingInfoV2;

    return-object v0
.end method

.method static synthetic access$47600(Landroid/car/hardware/xpu/XpuProtoMessage$NaviRoutingInfoV2;I)V
    .locals 0

    .line 20371
    invoke-direct {p0, p1}, Landroid/car/hardware/xpu/XpuProtoMessage$NaviRoutingInfoV2;->setNavigationStatusValue(I)V

    return-void
.end method

.method static synthetic access$47700(Landroid/car/hardware/xpu/XpuProtoMessage$NaviRoutingInfoV2;Landroid/car/hardware/xpu/XpuProtoMessage$NaviStatus;)V
    .locals 0

    .line 20371
    invoke-direct {p0, p1}, Landroid/car/hardware/xpu/XpuProtoMessage$NaviRoutingInfoV2;->setNavigationStatus(Landroid/car/hardware/xpu/XpuProtoMessage$NaviStatus;)V

    return-void
.end method

.method static synthetic access$47800(Landroid/car/hardware/xpu/XpuProtoMessage$NaviRoutingInfoV2;)V
    .locals 0

    .line 20371
    invoke-direct {p0}, Landroid/car/hardware/xpu/XpuProtoMessage$NaviRoutingInfoV2;->clearNavigationStatus()V

    return-void
.end method

.method static synthetic access$47900(Landroid/car/hardware/xpu/XpuProtoMessage$NaviRoutingInfoV2;J)V
    .locals 0

    .line 20371
    invoke-direct {p0, p1, p2}, Landroid/car/hardware/xpu/XpuProtoMessage$NaviRoutingInfoV2;->setNavigationId(J)V

    return-void
.end method

.method static synthetic access$48000(Landroid/car/hardware/xpu/XpuProtoMessage$NaviRoutingInfoV2;)V
    .locals 0

    .line 20371
    invoke-direct {p0}, Landroid/car/hardware/xpu/XpuProtoMessage$NaviRoutingInfoV2;->clearNavigationId()V

    return-void
.end method

.method static synthetic access$48100(Landroid/car/hardware/xpu/XpuProtoMessage$NaviRoutingInfoV2;Ljava/lang/String;)V
    .locals 0

    .line 20371
    invoke-direct {p0, p1}, Landroid/car/hardware/xpu/XpuProtoMessage$NaviRoutingInfoV2;->setSdkMajorVersion(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$48200(Landroid/car/hardware/xpu/XpuProtoMessage$NaviRoutingInfoV2;)V
    .locals 0

    .line 20371
    invoke-direct {p0}, Landroid/car/hardware/xpu/XpuProtoMessage$NaviRoutingInfoV2;->clearSdkMajorVersion()V

    return-void
.end method

.method static synthetic access$48300(Landroid/car/hardware/xpu/XpuProtoMessage$NaviRoutingInfoV2;Lcom/android/carsdk/protobuf/ByteString;)V
    .locals 0

    .line 20371
    invoke-direct {p0, p1}, Landroid/car/hardware/xpu/XpuProtoMessage$NaviRoutingInfoV2;->setSdkMajorVersionBytes(Lcom/android/carsdk/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$48400(Landroid/car/hardware/xpu/XpuProtoMessage$NaviRoutingInfoV2;Ljava/lang/String;)V
    .locals 0

    .line 20371
    invoke-direct {p0, p1}, Landroid/car/hardware/xpu/XpuProtoMessage$NaviRoutingInfoV2;->setSdkMinorVersion(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$48500(Landroid/car/hardware/xpu/XpuProtoMessage$NaviRoutingInfoV2;)V
    .locals 0

    .line 20371
    invoke-direct {p0}, Landroid/car/hardware/xpu/XpuProtoMessage$NaviRoutingInfoV2;->clearSdkMinorVersion()V

    return-void
.end method

.method static synthetic access$48600(Landroid/car/hardware/xpu/XpuProtoMessage$NaviRoutingInfoV2;Lcom/android/carsdk/protobuf/ByteString;)V
    .locals 0

    .line 20371
    invoke-direct {p0, p1}, Landroid/car/hardware/xpu/XpuProtoMessage$NaviRoutingInfoV2;->setSdkMinorVersionBytes(Lcom/android/carsdk/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$48700(Landroid/car/hardware/xpu/XpuProtoMessage$NaviRoutingInfoV2;Landroid/car/hardware/xpu/XpuProtoMessage$Path;)V
    .locals 0

    .line 20371
    invoke-direct {p0, p1}, Landroid/car/hardware/xpu/XpuProtoMessage$NaviRoutingInfoV2;->setPath(Landroid/car/hardware/xpu/XpuProtoMessage$Path;)V

    return-void
.end method

.method static synthetic access$48800(Landroid/car/hardware/xpu/XpuProtoMessage$NaviRoutingInfoV2;Landroid/car/hardware/xpu/XpuProtoMessage$Path$Builder;)V
    .locals 0

    .line 20371
    invoke-direct {p0, p1}, Landroid/car/hardware/xpu/XpuProtoMessage$NaviRoutingInfoV2;->setPath(Landroid/car/hardware/xpu/XpuProtoMessage$Path$Builder;)V

    return-void
.end method

.method static synthetic access$48900(Landroid/car/hardware/xpu/XpuProtoMessage$NaviRoutingInfoV2;Landroid/car/hardware/xpu/XpuProtoMessage$Path;)V
    .locals 0

    .line 20371
    invoke-direct {p0, p1}, Landroid/car/hardware/xpu/XpuProtoMessage$NaviRoutingInfoV2;->mergePath(Landroid/car/hardware/xpu/XpuProtoMessage$Path;)V

    return-void
.end method

.method static synthetic access$49000(Landroid/car/hardware/xpu/XpuProtoMessage$NaviRoutingInfoV2;)V
    .locals 0

    .line 20371
    invoke-direct {p0}, Landroid/car/hardware/xpu/XpuProtoMessage$NaviRoutingInfoV2;->clearPath()V

    return-void
.end method

.method static synthetic access$49100(Landroid/car/hardware/xpu/XpuProtoMessage$NaviRoutingInfoV2;J)V
    .locals 0

    .line 20371
    invoke-direct {p0, p1, p2}, Landroid/car/hardware/xpu/XpuProtoMessage$NaviRoutingInfoV2;->setTimeStamp(J)V

    return-void
.end method

.method static synthetic access$49200(Landroid/car/hardware/xpu/XpuProtoMessage$NaviRoutingInfoV2;)V
    .locals 0

    .line 20371
    invoke-direct {p0}, Landroid/car/hardware/xpu/XpuProtoMessage$NaviRoutingInfoV2;->clearTimeStamp()V

    return-void
.end method

.method static synthetic access$49300(Landroid/car/hardware/xpu/XpuProtoMessage$NaviRoutingInfoV2;Ljava/lang/String;)V
    .locals 0

    .line 20371
    invoke-direct {p0, p1}, Landroid/car/hardware/xpu/XpuProtoMessage$NaviRoutingInfoV2;->setEndPointName(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$49400(Landroid/car/hardware/xpu/XpuProtoMessage$NaviRoutingInfoV2;)V
    .locals 0

    .line 20371
    invoke-direct {p0}, Landroid/car/hardware/xpu/XpuProtoMessage$NaviRoutingInfoV2;->clearEndPointName()V

    return-void
.end method

.method static synthetic access$49500(Landroid/car/hardware/xpu/XpuProtoMessage$NaviRoutingInfoV2;Lcom/android/carsdk/protobuf/ByteString;)V
    .locals 0

    .line 20371
    invoke-direct {p0, p1}, Landroid/car/hardware/xpu/XpuProtoMessage$NaviRoutingInfoV2;->setEndPointNameBytes(Lcom/android/carsdk/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$49600(Landroid/car/hardware/xpu/XpuProtoMessage$NaviRoutingInfoV2;J)V
    .locals 0

    .line 20371
    invoke-direct {p0, p1, p2}, Landroid/car/hardware/xpu/XpuProtoMessage$NaviRoutingInfoV2;->setRouteId(J)V

    return-void
.end method

.method static synthetic access$49700(Landroid/car/hardware/xpu/XpuProtoMessage$NaviRoutingInfoV2;)V
    .locals 0

    .line 20371
    invoke-direct {p0}, Landroid/car/hardware/xpu/XpuProtoMessage$NaviRoutingInfoV2;->clearRouteId()V

    return-void
.end method

.method static synthetic access$49800(Landroid/car/hardware/xpu/XpuProtoMessage$NaviRoutingInfoV2;Ljava/lang/String;)V
    .locals 0

    .line 20371
    invoke-direct {p0, p1}, Landroid/car/hardware/xpu/XpuProtoMessage$NaviRoutingInfoV2;->setPpVersion(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$49900(Landroid/car/hardware/xpu/XpuProtoMessage$NaviRoutingInfoV2;)V
    .locals 0

    .line 20371
    invoke-direct {p0}, Landroid/car/hardware/xpu/XpuProtoMessage$NaviRoutingInfoV2;->clearPpVersion()V

    return-void
.end method

.method static synthetic access$50000(Landroid/car/hardware/xpu/XpuProtoMessage$NaviRoutingInfoV2;Lcom/android/carsdk/protobuf/ByteString;)V
    .locals 0

    .line 20371
    invoke-direct {p0, p1}, Landroid/car/hardware/xpu/XpuProtoMessage$NaviRoutingInfoV2;->setPpVersionBytes(Lcom/android/carsdk/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$50100(Landroid/car/hardware/xpu/XpuProtoMessage$NaviRoutingInfoV2;J)V
    .locals 0

    .line 20371
    invoke-direct {p0, p1, p2}, Landroid/car/hardware/xpu/XpuProtoMessage$NaviRoutingInfoV2;->setRouteVersion(J)V

    return-void
.end method

.method static synthetic access$50200(Landroid/car/hardware/xpu/XpuProtoMessage$NaviRoutingInfoV2;)V
    .locals 0

    .line 20371
    invoke-direct {p0}, Landroid/car/hardware/xpu/XpuProtoMessage$NaviRoutingInfoV2;->clearRouteVersion()V

    return-void
.end method

.method static synthetic access$50300(Landroid/car/hardware/xpu/XpuProtoMessage$NaviRoutingInfoV2;J)V
    .locals 0

    .line 20371
    invoke-direct {p0, p1, p2}, Landroid/car/hardware/xpu/XpuProtoMessage$NaviRoutingInfoV2;->setPpUpdateTime(J)V

    return-void
.end method

.method static synthetic access$50400(Landroid/car/hardware/xpu/XpuProtoMessage$NaviRoutingInfoV2;)V
    .locals 0

    .line 20371
    invoke-direct {p0}, Landroid/car/hardware/xpu/XpuProtoMessage$NaviRoutingInfoV2;->clearPpUpdateTime()V

    return-void
.end method

.method static synthetic access$50500(Landroid/car/hardware/xpu/XpuProtoMessage$NaviRoutingInfoV2;I)V
    .locals 0

    .line 20371
    invoke-direct {p0, p1}, Landroid/car/hardware/xpu/XpuProtoMessage$NaviRoutingInfoV2;->setRouteTypeValue(I)V

    return-void
.end method

.method static synthetic access$50600(Landroid/car/hardware/xpu/XpuProtoMessage$NaviRoutingInfoV2;Landroid/car/hardware/xpu/XpuProtoMessage$RouteType;)V
    .locals 0

    .line 20371
    invoke-direct {p0, p1}, Landroid/car/hardware/xpu/XpuProtoMessage$NaviRoutingInfoV2;->setRouteType(Landroid/car/hardware/xpu/XpuProtoMessage$RouteType;)V

    return-void
.end method

.method static synthetic access$50700(Landroid/car/hardware/xpu/XpuProtoMessage$NaviRoutingInfoV2;)V
    .locals 0

    .line 20371
    invoke-direct {p0}, Landroid/car/hardware/xpu/XpuProtoMessage$NaviRoutingInfoV2;->clearRouteType()V

    return-void
.end method

.method static synthetic access$50800(Landroid/car/hardware/xpu/XpuProtoMessage$NaviRoutingInfoV2;Landroid/car/hardware/xpu/XpuProtoMessage$ExngpNaviInfo;)V
    .locals 0

    .line 20371
    invoke-direct {p0, p1}, Landroid/car/hardware/xpu/XpuProtoMessage$NaviRoutingInfoV2;->setExngpNaviInfo(Landroid/car/hardware/xpu/XpuProtoMessage$ExngpNaviInfo;)V

    return-void
.end method

.method static synthetic access$50900(Landroid/car/hardware/xpu/XpuProtoMessage$NaviRoutingInfoV2;Landroid/car/hardware/xpu/XpuProtoMessage$ExngpNaviInfo$Builder;)V
    .locals 0

    .line 20371
    invoke-direct {p0, p1}, Landroid/car/hardware/xpu/XpuProtoMessage$NaviRoutingInfoV2;->setExngpNaviInfo(Landroid/car/hardware/xpu/XpuProtoMessage$ExngpNaviInfo$Builder;)V

    return-void
.end method

.method static synthetic access$51000(Landroid/car/hardware/xpu/XpuProtoMessage$NaviRoutingInfoV2;Landroid/car/hardware/xpu/XpuProtoMessage$ExngpNaviInfo;)V
    .locals 0

    .line 20371
    invoke-direct {p0, p1}, Landroid/car/hardware/xpu/XpuProtoMessage$NaviRoutingInfoV2;->mergeExngpNaviInfo(Landroid/car/hardware/xpu/XpuProtoMessage$ExngpNaviInfo;)V

    return-void
.end method

.method static synthetic access$51100(Landroid/car/hardware/xpu/XpuProtoMessage$NaviRoutingInfoV2;)V
    .locals 0

    .line 20371
    invoke-direct {p0}, Landroid/car/hardware/xpu/XpuProtoMessage$NaviRoutingInfoV2;->clearExngpNaviInfo()V

    return-void
.end method

.method static synthetic access$51200(Landroid/car/hardware/xpu/XpuProtoMessage$NaviRoutingInfoV2;I)V
    .locals 0

    .line 20371
    invoke-direct {p0, p1}, Landroid/car/hardware/xpu/XpuProtoMessage$NaviRoutingInfoV2;->setNaviFinishTypeValue(I)V

    return-void
.end method

.method static synthetic access$51300(Landroid/car/hardware/xpu/XpuProtoMessage$NaviRoutingInfoV2;Landroid/car/hardware/xpu/XpuProtoMessage$NaviFinishType;)V
    .locals 0

    .line 20371
    invoke-direct {p0, p1}, Landroid/car/hardware/xpu/XpuProtoMessage$NaviRoutingInfoV2;->setNaviFinishType(Landroid/car/hardware/xpu/XpuProtoMessage$NaviFinishType;)V

    return-void
.end method

.method static synthetic access$51400(Landroid/car/hardware/xpu/XpuProtoMessage$NaviRoutingInfoV2;)V
    .locals 0

    .line 20371
    invoke-direct {p0}, Landroid/car/hardware/xpu/XpuProtoMessage$NaviRoutingInfoV2;->clearNaviFinishType()V

    return-void
.end method

.method private clearEndPointName()V
    .locals 1

    .line 20678
    invoke-static {}, Landroid/car/hardware/xpu/XpuProtoMessage$NaviRoutingInfoV2;->getDefaultInstance()Landroid/car/hardware/xpu/XpuProtoMessage$NaviRoutingInfoV2;

    move-result-object v0

    invoke-virtual {v0}, Landroid/car/hardware/xpu/XpuProtoMessage$NaviRoutingInfoV2;->getEndPointName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$NaviRoutingInfoV2;->endPointName_:Ljava/lang/String;

    return-void
.end method

.method private clearExngpNaviInfo()V
    .locals 1

    const/4 v0, 0x0

    .line 20955
    iput-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$NaviRoutingInfoV2;->exngpNaviInfo_:Landroid/car/hardware/xpu/XpuProtoMessage$ExngpNaviInfo;

    return-void
.end method

.method private clearNaviFinishType()V
    .locals 1

    const/4 v0, 0x0

    .line 21015
    iput v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$NaviRoutingInfoV2;->naviFinishType_:I

    return-void
.end method

.method private clearNavigationId()V
    .locals 2

    const-wide/16 v0, 0x0

    .line 20449
    iput-wide v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$NaviRoutingInfoV2;->navigationId_:J

    return-void
.end method

.method private clearNavigationStatus()V
    .locals 1

    const/4 v0, 0x0

    .line 20426
    iput v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$NaviRoutingInfoV2;->navigationStatus_:I

    return-void
.end method

.method private clearPath()V
    .locals 1

    const/4 v0, 0x0

    .line 20592
    iput-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$NaviRoutingInfoV2;->path_:Landroid/car/hardware/xpu/XpuProtoMessage$Path;

    return-void
.end method

.method private clearPpUpdateTime()V
    .locals 2

    const-wide/16 v0, 0x0

    .line 20821
    iput-wide v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$NaviRoutingInfoV2;->ppUpdateTime_:J

    return-void
.end method

.method private clearPpVersion()V
    .locals 1

    .line 20763
    invoke-static {}, Landroid/car/hardware/xpu/XpuProtoMessage$NaviRoutingInfoV2;->getDefaultInstance()Landroid/car/hardware/xpu/XpuProtoMessage$NaviRoutingInfoV2;

    move-result-object v0

    invoke-virtual {v0}, Landroid/car/hardware/xpu/XpuProtoMessage$NaviRoutingInfoV2;->getPpVersion()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$NaviRoutingInfoV2;->ppVersion_:Ljava/lang/String;

    return-void
.end method

.method private clearRouteId()V
    .locals 2

    const-wide/16 v0, 0x0

    .line 20729
    iput-wide v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$NaviRoutingInfoV2;->routeId_:J

    return-void
.end method

.method private clearRouteType()V
    .locals 1

    const/4 v0, 0x0

    .line 20880
    iput v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$NaviRoutingInfoV2;->routeType_:I

    return-void
.end method

.method private clearRouteVersion()V
    .locals 2

    const-wide/16 v0, 0x0

    .line 20798
    iput-wide v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$NaviRoutingInfoV2;->routeVersion_:J

    return-void
.end method

.method private clearSdkMajorVersion()V
    .locals 1

    .line 20483
    invoke-static {}, Landroid/car/hardware/xpu/XpuProtoMessage$NaviRoutingInfoV2;->getDefaultInstance()Landroid/car/hardware/xpu/XpuProtoMessage$NaviRoutingInfoV2;

    move-result-object v0

    invoke-virtual {v0}, Landroid/car/hardware/xpu/XpuProtoMessage$NaviRoutingInfoV2;->getSdkMajorVersion()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$NaviRoutingInfoV2;->sdkMajorVersion_:Ljava/lang/String;

    return-void
.end method

.method private clearSdkMinorVersion()V
    .locals 1

    .line 20529
    invoke-static {}, Landroid/car/hardware/xpu/XpuProtoMessage$NaviRoutingInfoV2;->getDefaultInstance()Landroid/car/hardware/xpu/XpuProtoMessage$NaviRoutingInfoV2;

    move-result-object v0

    invoke-virtual {v0}, Landroid/car/hardware/xpu/XpuProtoMessage$NaviRoutingInfoV2;->getSdkMinorVersion()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$NaviRoutingInfoV2;->sdkMinorVersion_:Ljava/lang/String;

    return-void
.end method

.method private clearTimeStamp()V
    .locals 2

    const-wide/16 v0, 0x0

    .line 20628
    iput-wide v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$NaviRoutingInfoV2;->timeStamp_:J

    return-void
.end method

.method public static getDefaultInstance()Landroid/car/hardware/xpu/XpuProtoMessage$NaviRoutingInfoV2;
    .locals 1

    .line 21996
    sget-object v0, Landroid/car/hardware/xpu/XpuProtoMessage$NaviRoutingInfoV2;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuProtoMessage$NaviRoutingInfoV2;

    return-object v0
.end method

.method private mergeExngpNaviInfo(Landroid/car/hardware/xpu/XpuProtoMessage$ExngpNaviInfo;)V
    .locals 2

    .line 20939
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$NaviRoutingInfoV2;->exngpNaviInfo_:Landroid/car/hardware/xpu/XpuProtoMessage$ExngpNaviInfo;

    if-eqz v0, :cond_0

    .line 20940
    invoke-static {}, Landroid/car/hardware/xpu/XpuProtoMessage$ExngpNaviInfo;->getDefaultInstance()Landroid/car/hardware/xpu/XpuProtoMessage$ExngpNaviInfo;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 20941
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$NaviRoutingInfoV2;->exngpNaviInfo_:Landroid/car/hardware/xpu/XpuProtoMessage$ExngpNaviInfo;

    .line 20942
    invoke-static {v0}, Landroid/car/hardware/xpu/XpuProtoMessage$ExngpNaviInfo;->newBuilder(Landroid/car/hardware/xpu/XpuProtoMessage$ExngpNaviInfo;)Landroid/car/hardware/xpu/XpuProtoMessage$ExngpNaviInfo$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/car/hardware/xpu/XpuProtoMessage$ExngpNaviInfo$Builder;->mergeFrom(Lcom/android/carsdk/protobuf/GeneratedMessageLite;)Lcom/android/carsdk/protobuf/GeneratedMessageLite$Builder;

    move-result-object p1

    check-cast p1, Landroid/car/hardware/xpu/XpuProtoMessage$ExngpNaviInfo$Builder;

    invoke-virtual {p1}, Landroid/car/hardware/xpu/XpuProtoMessage$ExngpNaviInfo$Builder;->buildPartial()Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Landroid/car/hardware/xpu/XpuProtoMessage$ExngpNaviInfo;

    iput-object p1, p0, Landroid/car/hardware/xpu/XpuProtoMessage$NaviRoutingInfoV2;->exngpNaviInfo_:Landroid/car/hardware/xpu/XpuProtoMessage$ExngpNaviInfo;

    goto :goto_0

    .line 20944
    :cond_0
    iput-object p1, p0, Landroid/car/hardware/xpu/XpuProtoMessage$NaviRoutingInfoV2;->exngpNaviInfo_:Landroid/car/hardware/xpu/XpuProtoMessage$ExngpNaviInfo;

    :goto_0
    return-void
.end method

.method private mergePath(Landroid/car/hardware/xpu/XpuProtoMessage$Path;)V
    .locals 2

    .line 20580
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$NaviRoutingInfoV2;->path_:Landroid/car/hardware/xpu/XpuProtoMessage$Path;

    if-eqz v0, :cond_0

    .line 20581
    invoke-static {}, Landroid/car/hardware/xpu/XpuProtoMessage$Path;->getDefaultInstance()Landroid/car/hardware/xpu/XpuProtoMessage$Path;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 20582
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$NaviRoutingInfoV2;->path_:Landroid/car/hardware/xpu/XpuProtoMessage$Path;

    .line 20583
    invoke-static {v0}, Landroid/car/hardware/xpu/XpuProtoMessage$Path;->newBuilder(Landroid/car/hardware/xpu/XpuProtoMessage$Path;)Landroid/car/hardware/xpu/XpuProtoMessage$Path$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/car/hardware/xpu/XpuProtoMessage$Path$Builder;->mergeFrom(Lcom/android/carsdk/protobuf/GeneratedMessageLite;)Lcom/android/carsdk/protobuf/GeneratedMessageLite$Builder;

    move-result-object p1

    check-cast p1, Landroid/car/hardware/xpu/XpuProtoMessage$Path$Builder;

    invoke-virtual {p1}, Landroid/car/hardware/xpu/XpuProtoMessage$Path$Builder;->buildPartial()Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Landroid/car/hardware/xpu/XpuProtoMessage$Path;

    iput-object p1, p0, Landroid/car/hardware/xpu/XpuProtoMessage$NaviRoutingInfoV2;->path_:Landroid/car/hardware/xpu/XpuProtoMessage$Path;

    goto :goto_0

    .line 20585
    :cond_0
    iput-object p1, p0, Landroid/car/hardware/xpu/XpuProtoMessage$NaviRoutingInfoV2;->path_:Landroid/car/hardware/xpu/XpuProtoMessage$Path;

    :goto_0
    return-void
.end method

.method public static newBuilder()Landroid/car/hardware/xpu/XpuProtoMessage$NaviRoutingInfoV2$Builder;
    .locals 1

    .line 21191
    sget-object v0, Landroid/car/hardware/xpu/XpuProtoMessage$NaviRoutingInfoV2;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuProtoMessage$NaviRoutingInfoV2;

    invoke-virtual {v0}, Landroid/car/hardware/xpu/XpuProtoMessage$NaviRoutingInfoV2;->toBuilder()Lcom/android/carsdk/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Landroid/car/hardware/xpu/XpuProtoMessage$NaviRoutingInfoV2$Builder;

    return-object v0
.end method

.method public static newBuilder(Landroid/car/hardware/xpu/XpuProtoMessage$NaviRoutingInfoV2;)Landroid/car/hardware/xpu/XpuProtoMessage$NaviRoutingInfoV2$Builder;
    .locals 1

    .line 21194
    sget-object v0, Landroid/car/hardware/xpu/XpuProtoMessage$NaviRoutingInfoV2;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuProtoMessage$NaviRoutingInfoV2;

    invoke-virtual {v0}, Landroid/car/hardware/xpu/XpuProtoMessage$NaviRoutingInfoV2;->toBuilder()Lcom/android/carsdk/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Landroid/car/hardware/xpu/XpuProtoMessage$NaviRoutingInfoV2$Builder;

    invoke-virtual {v0, p0}, Landroid/car/hardware/xpu/XpuProtoMessage$NaviRoutingInfoV2$Builder;->mergeFrom(Lcom/android/carsdk/protobuf/GeneratedMessageLite;)Lcom/android/carsdk/protobuf/GeneratedMessageLite$Builder;

    move-result-object p0

    check-cast p0, Landroid/car/hardware/xpu/XpuProtoMessage$NaviRoutingInfoV2$Builder;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Landroid/car/hardware/xpu/XpuProtoMessage$NaviRoutingInfoV2;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 21168
    sget-object v0, Landroid/car/hardware/xpu/XpuProtoMessage$NaviRoutingInfoV2;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuProtoMessage$NaviRoutingInfoV2;

    invoke-static {v0, p0}, Landroid/car/hardware/xpu/XpuProtoMessage$NaviRoutingInfoV2;->parseDelimitedFrom(Lcom/android/carsdk/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Landroid/car/hardware/xpu/XpuProtoMessage$NaviRoutingInfoV2;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/android/carsdk/protobuf/ExtensionRegistryLite;)Landroid/car/hardware/xpu/XpuProtoMessage$NaviRoutingInfoV2;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 21174
    sget-object v0, Landroid/car/hardware/xpu/XpuProtoMessage$NaviRoutingInfoV2;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuProtoMessage$NaviRoutingInfoV2;

    invoke-static {v0, p0, p1}, Landroid/car/hardware/xpu/XpuProtoMessage$NaviRoutingInfoV2;->parseDelimitedFrom(Lcom/android/carsdk/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/android/carsdk/protobuf/ExtensionRegistryLite;)Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Landroid/car/hardware/xpu/XpuProtoMessage$NaviRoutingInfoV2;

    return-object p0
.end method

.method public static parseFrom(Lcom/android/carsdk/protobuf/ByteString;)Landroid/car/hardware/xpu/XpuProtoMessage$NaviRoutingInfoV2;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/carsdk/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 21132
    sget-object v0, Landroid/car/hardware/xpu/XpuProtoMessage$NaviRoutingInfoV2;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuProtoMessage$NaviRoutingInfoV2;

    invoke-static {v0, p0}, Lcom/android/carsdk/protobuf/GeneratedMessageLite;->parseFrom(Lcom/android/carsdk/protobuf/GeneratedMessageLite;Lcom/android/carsdk/protobuf/ByteString;)Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Landroid/car/hardware/xpu/XpuProtoMessage$NaviRoutingInfoV2;

    return-object p0
.end method

.method public static parseFrom(Lcom/android/carsdk/protobuf/ByteString;Lcom/android/carsdk/protobuf/ExtensionRegistryLite;)Landroid/car/hardware/xpu/XpuProtoMessage$NaviRoutingInfoV2;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/carsdk/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 21139
    sget-object v0, Landroid/car/hardware/xpu/XpuProtoMessage$NaviRoutingInfoV2;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuProtoMessage$NaviRoutingInfoV2;

    invoke-static {v0, p0, p1}, Lcom/android/carsdk/protobuf/GeneratedMessageLite;->parseFrom(Lcom/android/carsdk/protobuf/GeneratedMessageLite;Lcom/android/carsdk/protobuf/ByteString;Lcom/android/carsdk/protobuf/ExtensionRegistryLite;)Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Landroid/car/hardware/xpu/XpuProtoMessage$NaviRoutingInfoV2;

    return-object p0
.end method

.method public static parseFrom(Lcom/android/carsdk/protobuf/CodedInputStream;)Landroid/car/hardware/xpu/XpuProtoMessage$NaviRoutingInfoV2;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 21179
    sget-object v0, Landroid/car/hardware/xpu/XpuProtoMessage$NaviRoutingInfoV2;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuProtoMessage$NaviRoutingInfoV2;

    invoke-static {v0, p0}, Lcom/android/carsdk/protobuf/GeneratedMessageLite;->parseFrom(Lcom/android/carsdk/protobuf/GeneratedMessageLite;Lcom/android/carsdk/protobuf/CodedInputStream;)Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Landroid/car/hardware/xpu/XpuProtoMessage$NaviRoutingInfoV2;

    return-object p0
.end method

.method public static parseFrom(Lcom/android/carsdk/protobuf/CodedInputStream;Lcom/android/carsdk/protobuf/ExtensionRegistryLite;)Landroid/car/hardware/xpu/XpuProtoMessage$NaviRoutingInfoV2;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 21186
    sget-object v0, Landroid/car/hardware/xpu/XpuProtoMessage$NaviRoutingInfoV2;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuProtoMessage$NaviRoutingInfoV2;

    invoke-static {v0, p0, p1}, Lcom/android/carsdk/protobuf/GeneratedMessageLite;->parseFrom(Lcom/android/carsdk/protobuf/GeneratedMessageLite;Lcom/android/carsdk/protobuf/CodedInputStream;Lcom/android/carsdk/protobuf/ExtensionRegistryLite;)Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Landroid/car/hardware/xpu/XpuProtoMessage$NaviRoutingInfoV2;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Landroid/car/hardware/xpu/XpuProtoMessage$NaviRoutingInfoV2;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 21156
    sget-object v0, Landroid/car/hardware/xpu/XpuProtoMessage$NaviRoutingInfoV2;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuProtoMessage$NaviRoutingInfoV2;

    invoke-static {v0, p0}, Lcom/android/carsdk/protobuf/GeneratedMessageLite;->parseFrom(Lcom/android/carsdk/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Landroid/car/hardware/xpu/XpuProtoMessage$NaviRoutingInfoV2;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/android/carsdk/protobuf/ExtensionRegistryLite;)Landroid/car/hardware/xpu/XpuProtoMessage$NaviRoutingInfoV2;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 21163
    sget-object v0, Landroid/car/hardware/xpu/XpuProtoMessage$NaviRoutingInfoV2;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuProtoMessage$NaviRoutingInfoV2;

    invoke-static {v0, p0, p1}, Lcom/android/carsdk/protobuf/GeneratedMessageLite;->parseFrom(Lcom/android/carsdk/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/android/carsdk/protobuf/ExtensionRegistryLite;)Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Landroid/car/hardware/xpu/XpuProtoMessage$NaviRoutingInfoV2;

    return-object p0
.end method

.method public static parseFrom([B)Landroid/car/hardware/xpu/XpuProtoMessage$NaviRoutingInfoV2;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/carsdk/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 21144
    sget-object v0, Landroid/car/hardware/xpu/XpuProtoMessage$NaviRoutingInfoV2;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuProtoMessage$NaviRoutingInfoV2;

    invoke-static {v0, p0}, Lcom/android/carsdk/protobuf/GeneratedMessageLite;->parseFrom(Lcom/android/carsdk/protobuf/GeneratedMessageLite;[B)Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Landroid/car/hardware/xpu/XpuProtoMessage$NaviRoutingInfoV2;

    return-object p0
.end method

.method public static parseFrom([BLcom/android/carsdk/protobuf/ExtensionRegistryLite;)Landroid/car/hardware/xpu/XpuProtoMessage$NaviRoutingInfoV2;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/carsdk/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 21151
    sget-object v0, Landroid/car/hardware/xpu/XpuProtoMessage$NaviRoutingInfoV2;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuProtoMessage$NaviRoutingInfoV2;

    invoke-static {v0, p0, p1}, Lcom/android/carsdk/protobuf/GeneratedMessageLite;->parseFrom(Lcom/android/carsdk/protobuf/GeneratedMessageLite;[BLcom/android/carsdk/protobuf/ExtensionRegistryLite;)Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Landroid/car/hardware/xpu/XpuProtoMessage$NaviRoutingInfoV2;

    return-object p0
.end method

.method public static parser()Lcom/android/carsdk/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/android/carsdk/protobuf/Parser<",
            "Landroid/car/hardware/xpu/XpuProtoMessage$NaviRoutingInfoV2;",
            ">;"
        }
    .end annotation

    .line 22002
    sget-object v0, Landroid/car/hardware/xpu/XpuProtoMessage$NaviRoutingInfoV2;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuProtoMessage$NaviRoutingInfoV2;

    invoke-virtual {v0}, Landroid/car/hardware/xpu/XpuProtoMessage$NaviRoutingInfoV2;->getParserForType()Lcom/android/carsdk/protobuf/Parser;

    move-result-object v0

    return-object v0
.end method

.method private setEndPointName(Ljava/lang/String;)V
    .locals 0

    .line 20664
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 20667
    iput-object p1, p0, Landroid/car/hardware/xpu/XpuProtoMessage$NaviRoutingInfoV2;->endPointName_:Ljava/lang/String;

    return-void
.end method

.method private setEndPointNameBytes(Lcom/android/carsdk/protobuf/ByteString;)V
    .locals 0

    .line 20690
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 20692
    invoke-static {p1}, Landroid/car/hardware/xpu/XpuProtoMessage$NaviRoutingInfoV2;->checkByteStringIsUtf8(Lcom/android/carsdk/protobuf/ByteString;)V

    .line 20694
    invoke-virtual {p1}, Lcom/android/carsdk/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Landroid/car/hardware/xpu/XpuProtoMessage$NaviRoutingInfoV2;->endPointName_:Ljava/lang/String;

    return-void
.end method

.method private setExngpNaviInfo(Landroid/car/hardware/xpu/XpuProtoMessage$ExngpNaviInfo$Builder;)V
    .locals 0

    .line 20928
    invoke-virtual {p1}, Landroid/car/hardware/xpu/XpuProtoMessage$ExngpNaviInfo$Builder;->build()Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Landroid/car/hardware/xpu/XpuProtoMessage$ExngpNaviInfo;

    iput-object p1, p0, Landroid/car/hardware/xpu/XpuProtoMessage$NaviRoutingInfoV2;->exngpNaviInfo_:Landroid/car/hardware/xpu/XpuProtoMessage$ExngpNaviInfo;

    return-void
.end method

.method private setExngpNaviInfo(Landroid/car/hardware/xpu/XpuProtoMessage$ExngpNaviInfo;)V
    .locals 0

    .line 20914
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 20916
    iput-object p1, p0, Landroid/car/hardware/xpu/XpuProtoMessage$NaviRoutingInfoV2;->exngpNaviInfo_:Landroid/car/hardware/xpu/XpuProtoMessage$ExngpNaviInfo;

    return-void
.end method

.method private setNaviFinishType(Landroid/car/hardware/xpu/XpuProtoMessage$NaviFinishType;)V
    .locals 0

    .line 21001
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 21004
    invoke-virtual {p1}, Landroid/car/hardware/xpu/XpuProtoMessage$NaviFinishType;->getNumber()I

    move-result p1

    iput p1, p0, Landroid/car/hardware/xpu/XpuProtoMessage$NaviRoutingInfoV2;->naviFinishType_:I

    return-void
.end method

.method private setNaviFinishTypeValue(I)V
    .locals 0

    .line 20990
    iput p1, p0, Landroid/car/hardware/xpu/XpuProtoMessage$NaviRoutingInfoV2;->naviFinishType_:I

    return-void
.end method

.method private setNavigationId(J)V
    .locals 0

    .line 20442
    iput-wide p1, p0, Landroid/car/hardware/xpu/XpuProtoMessage$NaviRoutingInfoV2;->navigationId_:J

    return-void
.end method

.method private setNavigationStatus(Landroid/car/hardware/xpu/XpuProtoMessage$NaviStatus;)V
    .locals 0

    .line 20416
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 20419
    invoke-virtual {p1}, Landroid/car/hardware/xpu/XpuProtoMessage$NaviStatus;->getNumber()I

    move-result p1

    iput p1, p0, Landroid/car/hardware/xpu/XpuProtoMessage$NaviRoutingInfoV2;->navigationStatus_:I

    return-void
.end method

.method private setNavigationStatusValue(I)V
    .locals 0

    .line 20409
    iput p1, p0, Landroid/car/hardware/xpu/XpuProtoMessage$NaviRoutingInfoV2;->navigationStatus_:I

    return-void
.end method

.method private setPath(Landroid/car/hardware/xpu/XpuProtoMessage$Path$Builder;)V
    .locals 0

    .line 20573
    invoke-virtual {p1}, Landroid/car/hardware/xpu/XpuProtoMessage$Path$Builder;->build()Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Landroid/car/hardware/xpu/XpuProtoMessage$Path;

    iput-object p1, p0, Landroid/car/hardware/xpu/XpuProtoMessage$NaviRoutingInfoV2;->path_:Landroid/car/hardware/xpu/XpuProtoMessage$Path;

    return-void
.end method

.method private setPath(Landroid/car/hardware/xpu/XpuProtoMessage$Path;)V
    .locals 0

    .line 20563
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 20565
    iput-object p1, p0, Landroid/car/hardware/xpu/XpuProtoMessage$NaviRoutingInfoV2;->path_:Landroid/car/hardware/xpu/XpuProtoMessage$Path;

    return-void
.end method

.method private setPpUpdateTime(J)V
    .locals 0

    .line 20814
    iput-wide p1, p0, Landroid/car/hardware/xpu/XpuProtoMessage$NaviRoutingInfoV2;->ppUpdateTime_:J

    return-void
.end method

.method private setPpVersion(Ljava/lang/String;)V
    .locals 0

    .line 20753
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 20756
    iput-object p1, p0, Landroid/car/hardware/xpu/XpuProtoMessage$NaviRoutingInfoV2;->ppVersion_:Ljava/lang/String;

    return-void
.end method

.method private setPpVersionBytes(Lcom/android/carsdk/protobuf/ByteString;)V
    .locals 0

    .line 20771
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 20773
    invoke-static {p1}, Landroid/car/hardware/xpu/XpuProtoMessage$NaviRoutingInfoV2;->checkByteStringIsUtf8(Lcom/android/carsdk/protobuf/ByteString;)V

    .line 20775
    invoke-virtual {p1}, Lcom/android/carsdk/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Landroid/car/hardware/xpu/XpuProtoMessage$NaviRoutingInfoV2;->ppVersion_:Ljava/lang/String;

    return-void
.end method

.method private setRouteId(J)V
    .locals 0

    .line 20718
    iput-wide p1, p0, Landroid/car/hardware/xpu/XpuProtoMessage$NaviRoutingInfoV2;->routeId_:J

    return-void
.end method

.method private setRouteType(Landroid/car/hardware/xpu/XpuProtoMessage$RouteType;)V
    .locals 0

    .line 20866
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 20869
    invoke-virtual {p1}, Landroid/car/hardware/xpu/XpuProtoMessage$RouteType;->getNumber()I

    move-result p1

    iput p1, p0, Landroid/car/hardware/xpu/XpuProtoMessage$NaviRoutingInfoV2;->routeType_:I

    return-void
.end method

.method private setRouteTypeValue(I)V
    .locals 0

    .line 20855
    iput p1, p0, Landroid/car/hardware/xpu/XpuProtoMessage$NaviRoutingInfoV2;->routeType_:I

    return-void
.end method

.method private setRouteVersion(J)V
    .locals 0

    .line 20791
    iput-wide p1, p0, Landroid/car/hardware/xpu/XpuProtoMessage$NaviRoutingInfoV2;->routeVersion_:J

    return-void
.end method

.method private setSdkMajorVersion(Ljava/lang/String;)V
    .locals 0

    .line 20473
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 20476
    iput-object p1, p0, Landroid/car/hardware/xpu/XpuProtoMessage$NaviRoutingInfoV2;->sdkMajorVersion_:Ljava/lang/String;

    return-void
.end method

.method private setSdkMajorVersionBytes(Lcom/android/carsdk/protobuf/ByteString;)V
    .locals 0

    .line 20491
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 20493
    invoke-static {p1}, Landroid/car/hardware/xpu/XpuProtoMessage$NaviRoutingInfoV2;->checkByteStringIsUtf8(Lcom/android/carsdk/protobuf/ByteString;)V

    .line 20495
    invoke-virtual {p1}, Lcom/android/carsdk/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Landroid/car/hardware/xpu/XpuProtoMessage$NaviRoutingInfoV2;->sdkMajorVersion_:Ljava/lang/String;

    return-void
.end method

.method private setSdkMinorVersion(Ljava/lang/String;)V
    .locals 0

    .line 20519
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 20522
    iput-object p1, p0, Landroid/car/hardware/xpu/XpuProtoMessage$NaviRoutingInfoV2;->sdkMinorVersion_:Ljava/lang/String;

    return-void
.end method

.method private setSdkMinorVersionBytes(Lcom/android/carsdk/protobuf/ByteString;)V
    .locals 0

    .line 20537
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 20539
    invoke-static {p1}, Landroid/car/hardware/xpu/XpuProtoMessage$NaviRoutingInfoV2;->checkByteStringIsUtf8(Lcom/android/carsdk/protobuf/ByteString;)V

    .line 20541
    invoke-virtual {p1}, Lcom/android/carsdk/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Landroid/car/hardware/xpu/XpuProtoMessage$NaviRoutingInfoV2;->sdkMinorVersion_:Ljava/lang/String;

    return-void
.end method

.method private setTimeStamp(J)V
    .locals 0

    .line 20617
    iput-wide p1, p0, Landroid/car/hardware/xpu/XpuProtoMessage$NaviRoutingInfoV2;->timeStamp_:J

    return-void
.end method


# virtual methods
.method protected final dynamicMethod(Lcom/android/carsdk/protobuf/GeneratedMessageLite$MethodToInvoke;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 12

    .line 21804
    sget-object v0, Landroid/car/hardware/xpu/XpuProtoMessage$1;->$SwitchMap$com$google$protobuf$GeneratedMessageLite$MethodToInvoke:[I

    invoke-virtual {p1}, Lcom/android/carsdk/protobuf/GeneratedMessageLite$MethodToInvoke;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x1

    packed-switch p1, :pswitch_data_0

    .line 21984
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1

    .line 21975
    :pswitch_0
    sget-object p1, Landroid/car/hardware/xpu/XpuProtoMessage$NaviRoutingInfoV2;->PARSER:Lcom/android/carsdk/protobuf/Parser;

    if-nez p1, :cond_1

    const-class p1, Landroid/car/hardware/xpu/XpuProtoMessage$NaviRoutingInfoV2;

    monitor-enter p1

    .line 21976
    :try_start_0
    sget-object p2, Landroid/car/hardware/xpu/XpuProtoMessage$NaviRoutingInfoV2;->PARSER:Lcom/android/carsdk/protobuf/Parser;

    if-nez p2, :cond_0

    .line 21977
    new-instance p2, Lcom/android/carsdk/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;

    sget-object p3, Landroid/car/hardware/xpu/XpuProtoMessage$NaviRoutingInfoV2;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuProtoMessage$NaviRoutingInfoV2;

    invoke-direct {p2, p3}, Lcom/android/carsdk/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;-><init>(Lcom/android/carsdk/protobuf/GeneratedMessageLite;)V

    sput-object p2, Landroid/car/hardware/xpu/XpuProtoMessage$NaviRoutingInfoV2;->PARSER:Lcom/android/carsdk/protobuf/Parser;

    .line 21979
    :cond_0
    monitor-exit p1

    goto :goto_0

    :catchall_0
    move-exception p2

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p2

    .line 21981
    :cond_1
    :goto_0
    sget-object p1, Landroid/car/hardware/xpu/XpuProtoMessage$NaviRoutingInfoV2;->PARSER:Lcom/android/carsdk/protobuf/Parser;

    return-object p1

    .line 21849
    :pswitch_1
    check-cast p2, Lcom/android/carsdk/protobuf/CodedInputStream;

    .line 21851
    check-cast p3, Lcom/android/carsdk/protobuf/ExtensionRegistryLite;

    :cond_2
    :goto_1
    if-nez v1, :cond_5

    .line 21856
    :try_start_1
    invoke-virtual {p2}, Lcom/android/carsdk/protobuf/CodedInputStream;->readTag()I

    move-result p1

    sparse-switch p1, :sswitch_data_0

    .line 21862
    invoke-virtual {p2, p1}, Lcom/android/carsdk/protobuf/CodedInputStream;->skipField(I)Z

    move-result p1

    goto/16 :goto_5

    .line 21955
    :sswitch_0
    invoke-virtual {p2}, Lcom/android/carsdk/protobuf/CodedInputStream;->readEnum()I

    move-result p1

    .line 21957
    iput p1, p0, Landroid/car/hardware/xpu/XpuProtoMessage$NaviRoutingInfoV2;->naviFinishType_:I

    goto :goto_1

    .line 21943
    :sswitch_1
    iget-object p1, p0, Landroid/car/hardware/xpu/XpuProtoMessage$NaviRoutingInfoV2;->exngpNaviInfo_:Landroid/car/hardware/xpu/XpuProtoMessage$ExngpNaviInfo;

    if-eqz p1, :cond_3

    .line 21944
    invoke-virtual {p1}, Landroid/car/hardware/xpu/XpuProtoMessage$ExngpNaviInfo;->toBuilder()Lcom/android/carsdk/protobuf/GeneratedMessageLite$Builder;

    move-result-object p1

    check-cast p1, Landroid/car/hardware/xpu/XpuProtoMessage$ExngpNaviInfo$Builder;

    goto :goto_2

    :cond_3
    move-object p1, v0

    .line 21946
    :goto_2
    invoke-static {}, Landroid/car/hardware/xpu/XpuProtoMessage$ExngpNaviInfo;->parser()Lcom/android/carsdk/protobuf/Parser;

    move-result-object v3

    invoke-virtual {p2, v3, p3}, Lcom/android/carsdk/protobuf/CodedInputStream;->readMessage(Lcom/android/carsdk/protobuf/Parser;Lcom/android/carsdk/protobuf/ExtensionRegistryLite;)Lcom/android/carsdk/protobuf/MessageLite;

    move-result-object v3

    check-cast v3, Landroid/car/hardware/xpu/XpuProtoMessage$ExngpNaviInfo;

    iput-object v3, p0, Landroid/car/hardware/xpu/XpuProtoMessage$NaviRoutingInfoV2;->exngpNaviInfo_:Landroid/car/hardware/xpu/XpuProtoMessage$ExngpNaviInfo;

    if-eqz p1, :cond_2

    .line 21948
    invoke-virtual {p1, v3}, Landroid/car/hardware/xpu/XpuProtoMessage$ExngpNaviInfo$Builder;->mergeFrom(Lcom/android/carsdk/protobuf/GeneratedMessageLite;)Lcom/android/carsdk/protobuf/GeneratedMessageLite$Builder;

    .line 21949
    invoke-virtual {p1}, Landroid/car/hardware/xpu/XpuProtoMessage$ExngpNaviInfo$Builder;->buildPartial()Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Landroid/car/hardware/xpu/XpuProtoMessage$ExngpNaviInfo;

    iput-object p1, p0, Landroid/car/hardware/xpu/XpuProtoMessage$NaviRoutingInfoV2;->exngpNaviInfo_:Landroid/car/hardware/xpu/XpuProtoMessage$ExngpNaviInfo;

    goto :goto_1

    .line 21936
    :sswitch_2
    invoke-virtual {p2}, Lcom/android/carsdk/protobuf/CodedInputStream;->readEnum()I

    move-result p1

    .line 21938
    iput p1, p0, Landroid/car/hardware/xpu/XpuProtoMessage$NaviRoutingInfoV2;->routeType_:I

    goto :goto_1

    .line 21932
    :sswitch_3
    invoke-virtual {p2}, Lcom/android/carsdk/protobuf/CodedInputStream;->readInt64()J

    move-result-wide v3

    iput-wide v3, p0, Landroid/car/hardware/xpu/XpuProtoMessage$NaviRoutingInfoV2;->ppUpdateTime_:J

    goto :goto_1

    .line 21927
    :sswitch_4
    invoke-virtual {p2}, Lcom/android/carsdk/protobuf/CodedInputStream;->readUInt64()J

    move-result-wide v3

    iput-wide v3, p0, Landroid/car/hardware/xpu/XpuProtoMessage$NaviRoutingInfoV2;->routeVersion_:J

    goto :goto_1

    .line 21920
    :sswitch_5
    invoke-virtual {p2}, Lcom/android/carsdk/protobuf/CodedInputStream;->readStringRequireUtf8()Ljava/lang/String;

    move-result-object p1

    .line 21922
    iput-object p1, p0, Landroid/car/hardware/xpu/XpuProtoMessage$NaviRoutingInfoV2;->ppVersion_:Ljava/lang/String;

    goto :goto_1

    .line 21916
    :sswitch_6
    invoke-virtual {p2}, Lcom/android/carsdk/protobuf/CodedInputStream;->readInt64()J

    move-result-wide v3

    iput-wide v3, p0, Landroid/car/hardware/xpu/XpuProtoMessage$NaviRoutingInfoV2;->routeId_:J

    goto :goto_1

    .line 21909
    :sswitch_7
    invoke-virtual {p2}, Lcom/android/carsdk/protobuf/CodedInputStream;->readStringRequireUtf8()Ljava/lang/String;

    move-result-object p1

    .line 21911
    iput-object p1, p0, Landroid/car/hardware/xpu/XpuProtoMessage$NaviRoutingInfoV2;->endPointName_:Ljava/lang/String;

    goto :goto_1

    .line 21905
    :sswitch_8
    invoke-virtual {p2}, Lcom/android/carsdk/protobuf/CodedInputStream;->readUInt64()J

    move-result-wide v3

    iput-wide v3, p0, Landroid/car/hardware/xpu/XpuProtoMessage$NaviRoutingInfoV2;->timeStamp_:J

    goto :goto_1

    .line 21892
    :sswitch_9
    iget-object p1, p0, Landroid/car/hardware/xpu/XpuProtoMessage$NaviRoutingInfoV2;->path_:Landroid/car/hardware/xpu/XpuProtoMessage$Path;

    if-eqz p1, :cond_4

    .line 21893
    invoke-virtual {p1}, Landroid/car/hardware/xpu/XpuProtoMessage$Path;->toBuilder()Lcom/android/carsdk/protobuf/GeneratedMessageLite$Builder;

    move-result-object p1

    check-cast p1, Landroid/car/hardware/xpu/XpuProtoMessage$Path$Builder;

    goto :goto_3

    :cond_4
    move-object p1, v0

    .line 21895
    :goto_3
    invoke-static {}, Landroid/car/hardware/xpu/XpuProtoMessage$Path;->parser()Lcom/android/carsdk/protobuf/Parser;

    move-result-object v3

    invoke-virtual {p2, v3, p3}, Lcom/android/carsdk/protobuf/CodedInputStream;->readMessage(Lcom/android/carsdk/protobuf/Parser;Lcom/android/carsdk/protobuf/ExtensionRegistryLite;)Lcom/android/carsdk/protobuf/MessageLite;

    move-result-object v3

    check-cast v3, Landroid/car/hardware/xpu/XpuProtoMessage$Path;

    iput-object v3, p0, Landroid/car/hardware/xpu/XpuProtoMessage$NaviRoutingInfoV2;->path_:Landroid/car/hardware/xpu/XpuProtoMessage$Path;

    if-eqz p1, :cond_2

    .line 21897
    invoke-virtual {p1, v3}, Landroid/car/hardware/xpu/XpuProtoMessage$Path$Builder;->mergeFrom(Lcom/android/carsdk/protobuf/GeneratedMessageLite;)Lcom/android/carsdk/protobuf/GeneratedMessageLite$Builder;

    .line 21898
    invoke-virtual {p1}, Landroid/car/hardware/xpu/XpuProtoMessage$Path$Builder;->buildPartial()Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Landroid/car/hardware/xpu/XpuProtoMessage$Path;

    iput-object p1, p0, Landroid/car/hardware/xpu/XpuProtoMessage$NaviRoutingInfoV2;->path_:Landroid/car/hardware/xpu/XpuProtoMessage$Path;

    goto/16 :goto_1

    .line 21885
    :sswitch_a
    invoke-virtual {p2}, Lcom/android/carsdk/protobuf/CodedInputStream;->readStringRequireUtf8()Ljava/lang/String;

    move-result-object p1

    .line 21887
    iput-object p1, p0, Landroid/car/hardware/xpu/XpuProtoMessage$NaviRoutingInfoV2;->sdkMinorVersion_:Ljava/lang/String;

    goto/16 :goto_1

    .line 21879
    :sswitch_b
    invoke-virtual {p2}, Lcom/android/carsdk/protobuf/CodedInputStream;->readStringRequireUtf8()Ljava/lang/String;

    move-result-object p1

    .line 21881
    iput-object p1, p0, Landroid/car/hardware/xpu/XpuProtoMessage$NaviRoutingInfoV2;->sdkMajorVersion_:Ljava/lang/String;

    goto/16 :goto_1

    .line 21875
    :sswitch_c
    invoke-virtual {p2}, Lcom/android/carsdk/protobuf/CodedInputStream;->readUInt64()J

    move-result-wide v3

    iput-wide v3, p0, Landroid/car/hardware/xpu/XpuProtoMessage$NaviRoutingInfoV2;->navigationId_:J

    goto/16 :goto_1

    .line 21868
    :sswitch_d
    invoke-virtual {p2}, Lcom/android/carsdk/protobuf/CodedInputStream;->readEnum()I

    move-result p1

    .line 21870
    iput p1, p0, Landroid/car/hardware/xpu/XpuProtoMessage$NaviRoutingInfoV2;->navigationStatus_:I
    :try_end_1
    .catch Lcom/android/carsdk/protobuf/InvalidProtocolBufferException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto/16 :goto_1

    :goto_4
    :sswitch_e
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

    .line 21965
    :try_start_2
    new-instance p2, Ljava/lang/RuntimeException;

    new-instance p3, Lcom/android/carsdk/protobuf/InvalidProtocolBufferException;

    .line 21967
    invoke-virtual {p1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p3, p1}, Lcom/android/carsdk/protobuf/InvalidProtocolBufferException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, p0}, Lcom/android/carsdk/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/android/carsdk/protobuf/MessageLite;)Lcom/android/carsdk/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p2

    :catch_1
    move-exception p1

    .line 21963
    new-instance p2, Ljava/lang/RuntimeException;

    invoke-virtual {p1, p0}, Lcom/android/carsdk/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/android/carsdk/protobuf/MessageLite;)Lcom/android/carsdk/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 21968
    :goto_6
    throw p1

    .line 21972
    :cond_5
    :pswitch_2
    sget-object p1, Landroid/car/hardware/xpu/XpuProtoMessage$NaviRoutingInfoV2;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuProtoMessage$NaviRoutingInfoV2;

    return-object p1

    .line 21818
    :pswitch_3
    check-cast p2, Lcom/android/carsdk/protobuf/GeneratedMessageLite$Visitor;

    .line 21819
    check-cast p3, Landroid/car/hardware/xpu/XpuProtoMessage$NaviRoutingInfoV2;

    .line 21820
    iget p1, p0, Landroid/car/hardware/xpu/XpuProtoMessage$NaviRoutingInfoV2;->navigationStatus_:I

    if-eqz p1, :cond_6

    move v0, v2

    goto :goto_7

    :cond_6
    move v0, v1

    :goto_7
    iget v3, p3, Landroid/car/hardware/xpu/XpuProtoMessage$NaviRoutingInfoV2;->navigationStatus_:I

    if-eqz v3, :cond_7

    move v4, v2

    goto :goto_8

    :cond_7
    move v4, v1

    :goto_8
    invoke-interface {p2, v0, p1, v4, v3}, Lcom/android/carsdk/protobuf/GeneratedMessageLite$Visitor;->visitInt(ZIZI)I

    move-result p1

    iput p1, p0, Landroid/car/hardware/xpu/XpuProtoMessage$NaviRoutingInfoV2;->navigationStatus_:I

    .line 21821
    iget-wide v5, p0, Landroid/car/hardware/xpu/XpuProtoMessage$NaviRoutingInfoV2;->navigationId_:J

    const-wide/16 v10, 0x0

    cmp-long p1, v5, v10

    if-eqz p1, :cond_8

    move v4, v2

    goto :goto_9

    :cond_8
    move v4, v1

    :goto_9
    iget-wide v8, p3, Landroid/car/hardware/xpu/XpuProtoMessage$NaviRoutingInfoV2;->navigationId_:J

    cmp-long p1, v8, v10

    if-eqz p1, :cond_9

    move v7, v2

    goto :goto_a

    :cond_9
    move v7, v1

    :goto_a
    move-object v3, p2

    invoke-interface/range {v3 .. v9}, Lcom/android/carsdk/protobuf/GeneratedMessageLite$Visitor;->visitLong(ZJZJ)J

    move-result-wide v3

    iput-wide v3, p0, Landroid/car/hardware/xpu/XpuProtoMessage$NaviRoutingInfoV2;->navigationId_:J

    .line 21823
    iget-object p1, p0, Landroid/car/hardware/xpu/XpuProtoMessage$NaviRoutingInfoV2;->sdkMajorVersion_:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result p1

    xor-int/2addr p1, v2

    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$NaviRoutingInfoV2;->sdkMajorVersion_:Ljava/lang/String;

    iget-object v3, p3, Landroid/car/hardware/xpu/XpuProtoMessage$NaviRoutingInfoV2;->sdkMajorVersion_:Ljava/lang/String;

    .line 21824
    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    xor-int/2addr v3, v2

    iget-object v4, p3, Landroid/car/hardware/xpu/XpuProtoMessage$NaviRoutingInfoV2;->sdkMajorVersion_:Ljava/lang/String;

    .line 21823
    invoke-interface {p2, p1, v0, v3, v4}, Lcom/android/carsdk/protobuf/GeneratedMessageLite$Visitor;->visitString(ZLjava/lang/String;ZLjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Landroid/car/hardware/xpu/XpuProtoMessage$NaviRoutingInfoV2;->sdkMajorVersion_:Ljava/lang/String;

    .line 21825
    iget-object p1, p0, Landroid/car/hardware/xpu/XpuProtoMessage$NaviRoutingInfoV2;->sdkMinorVersion_:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result p1

    xor-int/2addr p1, v2

    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$NaviRoutingInfoV2;->sdkMinorVersion_:Ljava/lang/String;

    iget-object v3, p3, Landroid/car/hardware/xpu/XpuProtoMessage$NaviRoutingInfoV2;->sdkMinorVersion_:Ljava/lang/String;

    .line 21826
    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    xor-int/2addr v3, v2

    iget-object v4, p3, Landroid/car/hardware/xpu/XpuProtoMessage$NaviRoutingInfoV2;->sdkMinorVersion_:Ljava/lang/String;

    .line 21825
    invoke-interface {p2, p1, v0, v3, v4}, Lcom/android/carsdk/protobuf/GeneratedMessageLite$Visitor;->visitString(ZLjava/lang/String;ZLjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Landroid/car/hardware/xpu/XpuProtoMessage$NaviRoutingInfoV2;->sdkMinorVersion_:Ljava/lang/String;

    .line 21827
    iget-object p1, p0, Landroid/car/hardware/xpu/XpuProtoMessage$NaviRoutingInfoV2;->path_:Landroid/car/hardware/xpu/XpuProtoMessage$Path;

    iget-object v0, p3, Landroid/car/hardware/xpu/XpuProtoMessage$NaviRoutingInfoV2;->path_:Landroid/car/hardware/xpu/XpuProtoMessage$Path;

    invoke-interface {p2, p1, v0}, Lcom/android/carsdk/protobuf/GeneratedMessageLite$Visitor;->visitMessage(Lcom/android/carsdk/protobuf/MessageLite;Lcom/android/carsdk/protobuf/MessageLite;)Lcom/android/carsdk/protobuf/MessageLite;

    move-result-object p1

    check-cast p1, Landroid/car/hardware/xpu/XpuProtoMessage$Path;

    iput-object p1, p0, Landroid/car/hardware/xpu/XpuProtoMessage$NaviRoutingInfoV2;->path_:Landroid/car/hardware/xpu/XpuProtoMessage$Path;

    .line 21828
    iget-wide v5, p0, Landroid/car/hardware/xpu/XpuProtoMessage$NaviRoutingInfoV2;->timeStamp_:J

    cmp-long p1, v5, v10

    if-eqz p1, :cond_a

    move v4, v2

    goto :goto_b

    :cond_a
    move v4, v1

    :goto_b
    iget-wide v8, p3, Landroid/car/hardware/xpu/XpuProtoMessage$NaviRoutingInfoV2;->timeStamp_:J

    cmp-long p1, v8, v10

    if-eqz p1, :cond_b

    move v7, v2

    goto :goto_c

    :cond_b
    move v7, v1

    :goto_c
    move-object v3, p2

    invoke-interface/range {v3 .. v9}, Lcom/android/carsdk/protobuf/GeneratedMessageLite$Visitor;->visitLong(ZJZJ)J

    move-result-wide v3

    iput-wide v3, p0, Landroid/car/hardware/xpu/XpuProtoMessage$NaviRoutingInfoV2;->timeStamp_:J

    .line 21830
    iget-object p1, p0, Landroid/car/hardware/xpu/XpuProtoMessage$NaviRoutingInfoV2;->endPointName_:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result p1

    xor-int/2addr p1, v2

    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$NaviRoutingInfoV2;->endPointName_:Ljava/lang/String;

    iget-object v3, p3, Landroid/car/hardware/xpu/XpuProtoMessage$NaviRoutingInfoV2;->endPointName_:Ljava/lang/String;

    .line 21831
    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    xor-int/2addr v3, v2

    iget-object v4, p3, Landroid/car/hardware/xpu/XpuProtoMessage$NaviRoutingInfoV2;->endPointName_:Ljava/lang/String;

    .line 21830
    invoke-interface {p2, p1, v0, v3, v4}, Lcom/android/carsdk/protobuf/GeneratedMessageLite$Visitor;->visitString(ZLjava/lang/String;ZLjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Landroid/car/hardware/xpu/XpuProtoMessage$NaviRoutingInfoV2;->endPointName_:Ljava/lang/String;

    .line 21832
    iget-wide v5, p0, Landroid/car/hardware/xpu/XpuProtoMessage$NaviRoutingInfoV2;->routeId_:J

    cmp-long p1, v5, v10

    if-eqz p1, :cond_c

    move v4, v2

    goto :goto_d

    :cond_c
    move v4, v1

    :goto_d
    iget-wide v8, p3, Landroid/car/hardware/xpu/XpuProtoMessage$NaviRoutingInfoV2;->routeId_:J

    cmp-long p1, v8, v10

    if-eqz p1, :cond_d

    move v7, v2

    goto :goto_e

    :cond_d
    move v7, v1

    :goto_e
    move-object v3, p2

    invoke-interface/range {v3 .. v9}, Lcom/android/carsdk/protobuf/GeneratedMessageLite$Visitor;->visitLong(ZJZJ)J

    move-result-wide v3

    iput-wide v3, p0, Landroid/car/hardware/xpu/XpuProtoMessage$NaviRoutingInfoV2;->routeId_:J

    .line 21834
    iget-object p1, p0, Landroid/car/hardware/xpu/XpuProtoMessage$NaviRoutingInfoV2;->ppVersion_:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result p1

    xor-int/2addr p1, v2

    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$NaviRoutingInfoV2;->ppVersion_:Ljava/lang/String;

    iget-object v3, p3, Landroid/car/hardware/xpu/XpuProtoMessage$NaviRoutingInfoV2;->ppVersion_:Ljava/lang/String;

    .line 21835
    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    xor-int/2addr v3, v2

    iget-object v4, p3, Landroid/car/hardware/xpu/XpuProtoMessage$NaviRoutingInfoV2;->ppVersion_:Ljava/lang/String;

    .line 21834
    invoke-interface {p2, p1, v0, v3, v4}, Lcom/android/carsdk/protobuf/GeneratedMessageLite$Visitor;->visitString(ZLjava/lang/String;ZLjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Landroid/car/hardware/xpu/XpuProtoMessage$NaviRoutingInfoV2;->ppVersion_:Ljava/lang/String;

    .line 21836
    iget-wide v5, p0, Landroid/car/hardware/xpu/XpuProtoMessage$NaviRoutingInfoV2;->routeVersion_:J

    cmp-long p1, v5, v10

    if-eqz p1, :cond_e

    move v4, v2

    goto :goto_f

    :cond_e
    move v4, v1

    :goto_f
    iget-wide v8, p3, Landroid/car/hardware/xpu/XpuProtoMessage$NaviRoutingInfoV2;->routeVersion_:J

    cmp-long p1, v8, v10

    if-eqz p1, :cond_f

    move v7, v2

    goto :goto_10

    :cond_f
    move v7, v1

    :goto_10
    move-object v3, p2

    invoke-interface/range {v3 .. v9}, Lcom/android/carsdk/protobuf/GeneratedMessageLite$Visitor;->visitLong(ZJZJ)J

    move-result-wide v3

    iput-wide v3, p0, Landroid/car/hardware/xpu/XpuProtoMessage$NaviRoutingInfoV2;->routeVersion_:J

    .line 21838
    iget-wide v5, p0, Landroid/car/hardware/xpu/XpuProtoMessage$NaviRoutingInfoV2;->ppUpdateTime_:J

    cmp-long p1, v5, v10

    if-eqz p1, :cond_10

    move v4, v2

    goto :goto_11

    :cond_10
    move v4, v1

    :goto_11
    iget-wide v8, p3, Landroid/car/hardware/xpu/XpuProtoMessage$NaviRoutingInfoV2;->ppUpdateTime_:J

    cmp-long p1, v8, v10

    if-eqz p1, :cond_11

    move v7, v2

    goto :goto_12

    :cond_11
    move v7, v1

    :goto_12
    move-object v3, p2

    invoke-interface/range {v3 .. v9}, Lcom/android/carsdk/protobuf/GeneratedMessageLite$Visitor;->visitLong(ZJZJ)J

    move-result-wide v3

    iput-wide v3, p0, Landroid/car/hardware/xpu/XpuProtoMessage$NaviRoutingInfoV2;->ppUpdateTime_:J

    .line 21840
    iget p1, p0, Landroid/car/hardware/xpu/XpuProtoMessage$NaviRoutingInfoV2;->routeType_:I

    if-eqz p1, :cond_12

    move v0, v2

    goto :goto_13

    :cond_12
    move v0, v1

    :goto_13
    iget v3, p3, Landroid/car/hardware/xpu/XpuProtoMessage$NaviRoutingInfoV2;->routeType_:I

    if-eqz v3, :cond_13

    move v4, v2

    goto :goto_14

    :cond_13
    move v4, v1

    :goto_14
    invoke-interface {p2, v0, p1, v4, v3}, Lcom/android/carsdk/protobuf/GeneratedMessageLite$Visitor;->visitInt(ZIZI)I

    move-result p1

    iput p1, p0, Landroid/car/hardware/xpu/XpuProtoMessage$NaviRoutingInfoV2;->routeType_:I

    .line 21841
    iget-object p1, p0, Landroid/car/hardware/xpu/XpuProtoMessage$NaviRoutingInfoV2;->exngpNaviInfo_:Landroid/car/hardware/xpu/XpuProtoMessage$ExngpNaviInfo;

    iget-object v0, p3, Landroid/car/hardware/xpu/XpuProtoMessage$NaviRoutingInfoV2;->exngpNaviInfo_:Landroid/car/hardware/xpu/XpuProtoMessage$ExngpNaviInfo;

    invoke-interface {p2, p1, v0}, Lcom/android/carsdk/protobuf/GeneratedMessageLite$Visitor;->visitMessage(Lcom/android/carsdk/protobuf/MessageLite;Lcom/android/carsdk/protobuf/MessageLite;)Lcom/android/carsdk/protobuf/MessageLite;

    move-result-object p1

    check-cast p1, Landroid/car/hardware/xpu/XpuProtoMessage$ExngpNaviInfo;

    iput-object p1, p0, Landroid/car/hardware/xpu/XpuProtoMessage$NaviRoutingInfoV2;->exngpNaviInfo_:Landroid/car/hardware/xpu/XpuProtoMessage$ExngpNaviInfo;

    .line 21842
    iget p1, p0, Landroid/car/hardware/xpu/XpuProtoMessage$NaviRoutingInfoV2;->naviFinishType_:I

    if-eqz p1, :cond_14

    move v0, v2

    goto :goto_15

    :cond_14
    move v0, v1

    :goto_15
    iget p3, p3, Landroid/car/hardware/xpu/XpuProtoMessage$NaviRoutingInfoV2;->naviFinishType_:I

    if-eqz p3, :cond_15

    move v1, v2

    :cond_15
    invoke-interface {p2, v0, p1, v1, p3}, Lcom/android/carsdk/protobuf/GeneratedMessageLite$Visitor;->visitInt(ZIZI)I

    move-result p1

    iput p1, p0, Landroid/car/hardware/xpu/XpuProtoMessage$NaviRoutingInfoV2;->naviFinishType_:I

    .line 21843
    sget-object p1, Lcom/android/carsdk/protobuf/GeneratedMessageLite$MergeFromVisitor;->INSTANCE:Lcom/android/carsdk/protobuf/GeneratedMessageLite$MergeFromVisitor;

    return-object p0

    .line 21815
    :pswitch_4
    new-instance p1, Landroid/car/hardware/xpu/XpuProtoMessage$NaviRoutingInfoV2$Builder;

    invoke-direct {p1, v0}, Landroid/car/hardware/xpu/XpuProtoMessage$NaviRoutingInfoV2$Builder;-><init>(Landroid/car/hardware/xpu/XpuProtoMessage$1;)V

    return-object p1

    :pswitch_5
    return-object v0

    .line 21809
    :pswitch_6
    sget-object p1, Landroid/car/hardware/xpu/XpuProtoMessage$NaviRoutingInfoV2;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuProtoMessage$NaviRoutingInfoV2;

    return-object p1

    .line 21806
    :pswitch_7
    new-instance p1, Landroid/car/hardware/xpu/XpuProtoMessage$NaviRoutingInfoV2;

    invoke-direct {p1}, Landroid/car/hardware/xpu/XpuProtoMessage$NaviRoutingInfoV2;-><init>()V

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
        0x0 -> :sswitch_e
        0x8 -> :sswitch_d
        0x10 -> :sswitch_c
        0x1a -> :sswitch_b
        0x22 -> :sswitch_a
        0x2a -> :sswitch_9
        0x30 -> :sswitch_8
        0x3a -> :sswitch_7
        0x40 -> :sswitch_6
        0x4a -> :sswitch_5
        0x50 -> :sswitch_4
        0x58 -> :sswitch_3
        0x60 -> :sswitch_2
        0x6a -> :sswitch_1
        0x70 -> :sswitch_0
    .end sparse-switch
.end method

.method public getEndPointName()Ljava/lang/String;
    .locals 1

    .line 20641
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$NaviRoutingInfoV2;->endPointName_:Ljava/lang/String;

    return-object v0
.end method

.method public getEndPointNameBytes()Lcom/android/carsdk/protobuf/ByteString;
    .locals 1

    .line 20652
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$NaviRoutingInfoV2;->endPointName_:Ljava/lang/String;

    invoke-static {v0}, Lcom/android/carsdk/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/android/carsdk/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getExngpNaviInfo()Landroid/car/hardware/xpu/XpuProtoMessage$ExngpNaviInfo;
    .locals 1

    .line 20903
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$NaviRoutingInfoV2;->exngpNaviInfo_:Landroid/car/hardware/xpu/XpuProtoMessage$ExngpNaviInfo;

    if-nez v0, :cond_0

    invoke-static {}, Landroid/car/hardware/xpu/XpuProtoMessage$ExngpNaviInfo;->getDefaultInstance()Landroid/car/hardware/xpu/XpuProtoMessage$ExngpNaviInfo;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public getNaviFinishType()Landroid/car/hardware/xpu/XpuProtoMessage$NaviFinishType;
    .locals 1

    .line 20979
    iget v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$NaviRoutingInfoV2;->naviFinishType_:I

    invoke-static {v0}, Landroid/car/hardware/xpu/XpuProtoMessage$NaviFinishType;->forNumber(I)Landroid/car/hardware/xpu/XpuProtoMessage$NaviFinishType;

    move-result-object v0

    if-nez v0, :cond_0

    .line 20980
    sget-object v0, Landroid/car/hardware/xpu/XpuProtoMessage$NaviFinishType;->UNRECOGNIZED:Landroid/car/hardware/xpu/XpuProtoMessage$NaviFinishType;

    :cond_0
    return-object v0
.end method

.method public getNaviFinishTypeValue()I
    .locals 1

    .line 20969
    iget v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$NaviRoutingInfoV2;->naviFinishType_:I

    return v0
.end method

.method public getNavigationId()J
    .locals 2

    .line 20435
    iget-wide v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$NaviRoutingInfoV2;->navigationId_:J

    return-wide v0
.end method

.method public getNavigationStatus()Landroid/car/hardware/xpu/XpuProtoMessage$NaviStatus;
    .locals 1

    .line 20402
    iget v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$NaviRoutingInfoV2;->navigationStatus_:I

    invoke-static {v0}, Landroid/car/hardware/xpu/XpuProtoMessage$NaviStatus;->forNumber(I)Landroid/car/hardware/xpu/XpuProtoMessage$NaviStatus;

    move-result-object v0

    if-nez v0, :cond_0

    .line 20403
    sget-object v0, Landroid/car/hardware/xpu/XpuProtoMessage$NaviStatus;->UNRECOGNIZED:Landroid/car/hardware/xpu/XpuProtoMessage$NaviStatus;

    :cond_0
    return-object v0
.end method

.method public getNavigationStatusValue()I
    .locals 1

    .line 20396
    iget v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$NaviRoutingInfoV2;->navigationStatus_:I

    return v0
.end method

.method public getPath()Landroid/car/hardware/xpu/XpuProtoMessage$Path;
    .locals 1

    .line 20556
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$NaviRoutingInfoV2;->path_:Landroid/car/hardware/xpu/XpuProtoMessage$Path;

    if-nez v0, :cond_0

    invoke-static {}, Landroid/car/hardware/xpu/XpuProtoMessage$Path;->getDefaultInstance()Landroid/car/hardware/xpu/XpuProtoMessage$Path;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public getPpUpdateTime()J
    .locals 2

    .line 20807
    iget-wide v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$NaviRoutingInfoV2;->ppUpdateTime_:J

    return-wide v0
.end method

.method public getPpVersion()Ljava/lang/String;
    .locals 1

    .line 20738
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$NaviRoutingInfoV2;->ppVersion_:Ljava/lang/String;

    return-object v0
.end method

.method public getPpVersionBytes()Lcom/android/carsdk/protobuf/ByteString;
    .locals 1

    .line 20745
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$NaviRoutingInfoV2;->ppVersion_:Ljava/lang/String;

    invoke-static {v0}, Lcom/android/carsdk/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/android/carsdk/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getRouteId()J
    .locals 2

    .line 20707
    iget-wide v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$NaviRoutingInfoV2;->routeId_:J

    return-wide v0
.end method

.method public getRouteType()Landroid/car/hardware/xpu/XpuProtoMessage$RouteType;
    .locals 1

    .line 20844
    iget v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$NaviRoutingInfoV2;->routeType_:I

    invoke-static {v0}, Landroid/car/hardware/xpu/XpuProtoMessage$RouteType;->forNumber(I)Landroid/car/hardware/xpu/XpuProtoMessage$RouteType;

    move-result-object v0

    if-nez v0, :cond_0

    .line 20845
    sget-object v0, Landroid/car/hardware/xpu/XpuProtoMessage$RouteType;->UNRECOGNIZED:Landroid/car/hardware/xpu/XpuProtoMessage$RouteType;

    :cond_0
    return-object v0
.end method

.method public getRouteTypeValue()I
    .locals 1

    .line 20834
    iget v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$NaviRoutingInfoV2;->routeType_:I

    return v0
.end method

.method public getRouteVersion()J
    .locals 2

    .line 20784
    iget-wide v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$NaviRoutingInfoV2;->routeVersion_:J

    return-wide v0
.end method

.method public getSdkMajorVersion()Ljava/lang/String;
    .locals 1

    .line 20458
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$NaviRoutingInfoV2;->sdkMajorVersion_:Ljava/lang/String;

    return-object v0
.end method

.method public getSdkMajorVersionBytes()Lcom/android/carsdk/protobuf/ByteString;
    .locals 1

    .line 20465
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$NaviRoutingInfoV2;->sdkMajorVersion_:Ljava/lang/String;

    invoke-static {v0}, Lcom/android/carsdk/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/android/carsdk/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getSdkMinorVersion()Ljava/lang/String;
    .locals 1

    .line 20504
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$NaviRoutingInfoV2;->sdkMinorVersion_:Ljava/lang/String;

    return-object v0
.end method

.method public getSdkMinorVersionBytes()Lcom/android/carsdk/protobuf/ByteString;
    .locals 1

    .line 20511
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$NaviRoutingInfoV2;->sdkMinorVersion_:Ljava/lang/String;

    invoke-static {v0}, Lcom/android/carsdk/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/android/carsdk/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getSerializedSize()I
    .locals 6

    .line 21065
    iget v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$NaviRoutingInfoV2;->memoizedSerializedSize:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    return v0

    :cond_0
    const/4 v0, 0x0

    .line 21069
    iget v1, p0, Landroid/car/hardware/xpu/XpuProtoMessage$NaviRoutingInfoV2;->navigationStatus_:I

    sget-object v2, Landroid/car/hardware/xpu/XpuProtoMessage$NaviStatus;->NAVI_STATUS_INVALID:Landroid/car/hardware/xpu/XpuProtoMessage$NaviStatus;

    invoke-virtual {v2}, Landroid/car/hardware/xpu/XpuProtoMessage$NaviStatus;->getNumber()I

    move-result v2

    if-eq v1, v2, :cond_1

    const/4 v1, 0x1

    .line 21070
    iget v2, p0, Landroid/car/hardware/xpu/XpuProtoMessage$NaviRoutingInfoV2;->navigationStatus_:I

    .line 21071
    invoke-static {v1, v2}, Lcom/android/carsdk/protobuf/CodedOutputStream;->computeEnumSize(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 21073
    :cond_1
    iget-wide v1, p0, Landroid/car/hardware/xpu/XpuProtoMessage$NaviRoutingInfoV2;->navigationId_:J

    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-eqz v5, :cond_2

    const/4 v5, 0x2

    .line 21075
    invoke-static {v5, v1, v2}, Lcom/android/carsdk/protobuf/CodedOutputStream;->computeUInt64Size(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 21077
    :cond_2
    iget-object v1, p0, Landroid/car/hardware/xpu/XpuProtoMessage$NaviRoutingInfoV2;->sdkMajorVersion_:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_3

    const/4 v1, 0x3

    .line 21079
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuProtoMessage$NaviRoutingInfoV2;->getSdkMajorVersion()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/carsdk/protobuf/CodedOutputStream;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 21081
    :cond_3
    iget-object v1, p0, Landroid/car/hardware/xpu/XpuProtoMessage$NaviRoutingInfoV2;->sdkMinorVersion_:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_4

    const/4 v1, 0x4

    .line 21083
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuProtoMessage$NaviRoutingInfoV2;->getSdkMinorVersion()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/carsdk/protobuf/CodedOutputStream;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 21085
    :cond_4
    iget-object v1, p0, Landroid/car/hardware/xpu/XpuProtoMessage$NaviRoutingInfoV2;->path_:Landroid/car/hardware/xpu/XpuProtoMessage$Path;

    if-eqz v1, :cond_5

    const/4 v1, 0x5

    .line 21087
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuProtoMessage$NaviRoutingInfoV2;->getPath()Landroid/car/hardware/xpu/XpuProtoMessage$Path;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/carsdk/protobuf/CodedOutputStream;->computeMessageSize(ILcom/android/carsdk/protobuf/MessageLite;)I

    move-result v1

    add-int/2addr v0, v1

    .line 21089
    :cond_5
    iget-wide v1, p0, Landroid/car/hardware/xpu/XpuProtoMessage$NaviRoutingInfoV2;->timeStamp_:J

    cmp-long v5, v1, v3

    if-eqz v5, :cond_6

    const/4 v5, 0x6

    .line 21091
    invoke-static {v5, v1, v2}, Lcom/android/carsdk/protobuf/CodedOutputStream;->computeUInt64Size(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 21093
    :cond_6
    iget-object v1, p0, Landroid/car/hardware/xpu/XpuProtoMessage$NaviRoutingInfoV2;->endPointName_:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_7

    const/4 v1, 0x7

    .line 21095
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuProtoMessage$NaviRoutingInfoV2;->getEndPointName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/carsdk/protobuf/CodedOutputStream;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 21097
    :cond_7
    iget-wide v1, p0, Landroid/car/hardware/xpu/XpuProtoMessage$NaviRoutingInfoV2;->routeId_:J

    cmp-long v5, v1, v3

    if-eqz v5, :cond_8

    const/16 v5, 0x8

    .line 21099
    invoke-static {v5, v1, v2}, Lcom/android/carsdk/protobuf/CodedOutputStream;->computeInt64Size(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 21101
    :cond_8
    iget-object v1, p0, Landroid/car/hardware/xpu/XpuProtoMessage$NaviRoutingInfoV2;->ppVersion_:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_9

    const/16 v1, 0x9

    .line 21103
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuProtoMessage$NaviRoutingInfoV2;->getPpVersion()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/carsdk/protobuf/CodedOutputStream;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 21105
    :cond_9
    iget-wide v1, p0, Landroid/car/hardware/xpu/XpuProtoMessage$NaviRoutingInfoV2;->routeVersion_:J

    cmp-long v5, v1, v3

    if-eqz v5, :cond_a

    const/16 v5, 0xa

    .line 21107
    invoke-static {v5, v1, v2}, Lcom/android/carsdk/protobuf/CodedOutputStream;->computeUInt64Size(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 21109
    :cond_a
    iget-wide v1, p0, Landroid/car/hardware/xpu/XpuProtoMessage$NaviRoutingInfoV2;->ppUpdateTime_:J

    cmp-long v3, v1, v3

    if-eqz v3, :cond_b

    const/16 v3, 0xb

    .line 21111
    invoke-static {v3, v1, v2}, Lcom/android/carsdk/protobuf/CodedOutputStream;->computeInt64Size(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 21113
    :cond_b
    iget v1, p0, Landroid/car/hardware/xpu/XpuProtoMessage$NaviRoutingInfoV2;->routeType_:I

    sget-object v2, Landroid/car/hardware/xpu/XpuProtoMessage$RouteType;->RouteTypeUnknown:Landroid/car/hardware/xpu/XpuProtoMessage$RouteType;

    invoke-virtual {v2}, Landroid/car/hardware/xpu/XpuProtoMessage$RouteType;->getNumber()I

    move-result v2

    if-eq v1, v2, :cond_c

    const/16 v1, 0xc

    .line 21114
    iget v2, p0, Landroid/car/hardware/xpu/XpuProtoMessage$NaviRoutingInfoV2;->routeType_:I

    .line 21115
    invoke-static {v1, v2}, Lcom/android/carsdk/protobuf/CodedOutputStream;->computeEnumSize(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 21117
    :cond_c
    iget-object v1, p0, Landroid/car/hardware/xpu/XpuProtoMessage$NaviRoutingInfoV2;->exngpNaviInfo_:Landroid/car/hardware/xpu/XpuProtoMessage$ExngpNaviInfo;

    if-eqz v1, :cond_d

    const/16 v1, 0xd

    .line 21119
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuProtoMessage$NaviRoutingInfoV2;->getExngpNaviInfo()Landroid/car/hardware/xpu/XpuProtoMessage$ExngpNaviInfo;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/carsdk/protobuf/CodedOutputStream;->computeMessageSize(ILcom/android/carsdk/protobuf/MessageLite;)I

    move-result v1

    add-int/2addr v0, v1

    .line 21121
    :cond_d
    iget v1, p0, Landroid/car/hardware/xpu/XpuProtoMessage$NaviRoutingInfoV2;->naviFinishType_:I

    sget-object v2, Landroid/car/hardware/xpu/XpuProtoMessage$NaviFinishType;->kNaviFinishByDefault:Landroid/car/hardware/xpu/XpuProtoMessage$NaviFinishType;

    invoke-virtual {v2}, Landroid/car/hardware/xpu/XpuProtoMessage$NaviFinishType;->getNumber()I

    move-result v2

    if-eq v1, v2, :cond_e

    const/16 v1, 0xe

    .line 21122
    iget v2, p0, Landroid/car/hardware/xpu/XpuProtoMessage$NaviRoutingInfoV2;->naviFinishType_:I

    .line 21123
    invoke-static {v1, v2}, Lcom/android/carsdk/protobuf/CodedOutputStream;->computeEnumSize(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 21125
    :cond_e
    iput v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$NaviRoutingInfoV2;->memoizedSerializedSize:I

    return v0
.end method

.method public getTimeStamp()J
    .locals 2

    .line 20606
    iget-wide v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$NaviRoutingInfoV2;->timeStamp_:J

    return-wide v0
.end method

.method public hasExngpNaviInfo()Z
    .locals 1

    .line 20893
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$NaviRoutingInfoV2;->exngpNaviInfo_:Landroid/car/hardware/xpu/XpuProtoMessage$ExngpNaviInfo;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasPath()Z
    .locals 1

    .line 20550
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$NaviRoutingInfoV2;->path_:Landroid/car/hardware/xpu/XpuProtoMessage$Path;

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

    .line 21020
    iget v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$NaviRoutingInfoV2;->navigationStatus_:I

    sget-object v1, Landroid/car/hardware/xpu/XpuProtoMessage$NaviStatus;->NAVI_STATUS_INVALID:Landroid/car/hardware/xpu/XpuProtoMessage$NaviStatus;

    invoke-virtual {v1}, Landroid/car/hardware/xpu/XpuProtoMessage$NaviStatus;->getNumber()I

    move-result v1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    .line 21021
    iget v1, p0, Landroid/car/hardware/xpu/XpuProtoMessage$NaviRoutingInfoV2;->navigationStatus_:I

    invoke-virtual {p1, v0, v1}, Lcom/android/carsdk/protobuf/CodedOutputStream;->writeEnum(II)V

    .line 21023
    :cond_0
    iget-wide v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$NaviRoutingInfoV2;->navigationId_:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_1

    const/4 v4, 0x2

    .line 21024
    invoke-virtual {p1, v4, v0, v1}, Lcom/android/carsdk/protobuf/CodedOutputStream;->writeUInt64(IJ)V

    .line 21026
    :cond_1
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$NaviRoutingInfoV2;->sdkMajorVersion_:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    const/4 v0, 0x3

    .line 21027
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuProtoMessage$NaviRoutingInfoV2;->getSdkMajorVersion()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/android/carsdk/protobuf/CodedOutputStream;->writeString(ILjava/lang/String;)V

    .line 21029
    :cond_2
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$NaviRoutingInfoV2;->sdkMinorVersion_:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    const/4 v0, 0x4

    .line 21030
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuProtoMessage$NaviRoutingInfoV2;->getSdkMinorVersion()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/android/carsdk/protobuf/CodedOutputStream;->writeString(ILjava/lang/String;)V

    .line 21032
    :cond_3
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$NaviRoutingInfoV2;->path_:Landroid/car/hardware/xpu/XpuProtoMessage$Path;

    if-eqz v0, :cond_4

    const/4 v0, 0x5

    .line 21033
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuProtoMessage$NaviRoutingInfoV2;->getPath()Landroid/car/hardware/xpu/XpuProtoMessage$Path;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/android/carsdk/protobuf/CodedOutputStream;->writeMessage(ILcom/android/carsdk/protobuf/MessageLite;)V

    .line 21035
    :cond_4
    iget-wide v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$NaviRoutingInfoV2;->timeStamp_:J

    cmp-long v4, v0, v2

    if-eqz v4, :cond_5

    const/4 v4, 0x6

    .line 21036
    invoke-virtual {p1, v4, v0, v1}, Lcom/android/carsdk/protobuf/CodedOutputStream;->writeUInt64(IJ)V

    .line 21038
    :cond_5
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$NaviRoutingInfoV2;->endPointName_:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_6

    const/4 v0, 0x7

    .line 21039
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuProtoMessage$NaviRoutingInfoV2;->getEndPointName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/android/carsdk/protobuf/CodedOutputStream;->writeString(ILjava/lang/String;)V

    .line 21041
    :cond_6
    iget-wide v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$NaviRoutingInfoV2;->routeId_:J

    cmp-long v4, v0, v2

    if-eqz v4, :cond_7

    const/16 v4, 0x8

    .line 21042
    invoke-virtual {p1, v4, v0, v1}, Lcom/android/carsdk/protobuf/CodedOutputStream;->writeInt64(IJ)V

    .line 21044
    :cond_7
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$NaviRoutingInfoV2;->ppVersion_:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_8

    const/16 v0, 0x9

    .line 21045
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuProtoMessage$NaviRoutingInfoV2;->getPpVersion()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/android/carsdk/protobuf/CodedOutputStream;->writeString(ILjava/lang/String;)V

    .line 21047
    :cond_8
    iget-wide v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$NaviRoutingInfoV2;->routeVersion_:J

    cmp-long v4, v0, v2

    if-eqz v4, :cond_9

    const/16 v4, 0xa

    .line 21048
    invoke-virtual {p1, v4, v0, v1}, Lcom/android/carsdk/protobuf/CodedOutputStream;->writeUInt64(IJ)V

    .line 21050
    :cond_9
    iget-wide v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$NaviRoutingInfoV2;->ppUpdateTime_:J

    cmp-long v2, v0, v2

    if-eqz v2, :cond_a

    const/16 v2, 0xb

    .line 21051
    invoke-virtual {p1, v2, v0, v1}, Lcom/android/carsdk/protobuf/CodedOutputStream;->writeInt64(IJ)V

    .line 21053
    :cond_a
    iget v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$NaviRoutingInfoV2;->routeType_:I

    sget-object v1, Landroid/car/hardware/xpu/XpuProtoMessage$RouteType;->RouteTypeUnknown:Landroid/car/hardware/xpu/XpuProtoMessage$RouteType;

    invoke-virtual {v1}, Landroid/car/hardware/xpu/XpuProtoMessage$RouteType;->getNumber()I

    move-result v1

    if-eq v0, v1, :cond_b

    const/16 v0, 0xc

    .line 21054
    iget v1, p0, Landroid/car/hardware/xpu/XpuProtoMessage$NaviRoutingInfoV2;->routeType_:I

    invoke-virtual {p1, v0, v1}, Lcom/android/carsdk/protobuf/CodedOutputStream;->writeEnum(II)V

    .line 21056
    :cond_b
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$NaviRoutingInfoV2;->exngpNaviInfo_:Landroid/car/hardware/xpu/XpuProtoMessage$ExngpNaviInfo;

    if-eqz v0, :cond_c

    const/16 v0, 0xd

    .line 21057
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuProtoMessage$NaviRoutingInfoV2;->getExngpNaviInfo()Landroid/car/hardware/xpu/XpuProtoMessage$ExngpNaviInfo;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/android/carsdk/protobuf/CodedOutputStream;->writeMessage(ILcom/android/carsdk/protobuf/MessageLite;)V

    .line 21059
    :cond_c
    iget v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$NaviRoutingInfoV2;->naviFinishType_:I

    sget-object v1, Landroid/car/hardware/xpu/XpuProtoMessage$NaviFinishType;->kNaviFinishByDefault:Landroid/car/hardware/xpu/XpuProtoMessage$NaviFinishType;

    invoke-virtual {v1}, Landroid/car/hardware/xpu/XpuProtoMessage$NaviFinishType;->getNumber()I

    move-result v1

    if-eq v0, v1, :cond_d

    const/16 v0, 0xe

    .line 21060
    iget v1, p0, Landroid/car/hardware/xpu/XpuProtoMessage$NaviRoutingInfoV2;->naviFinishType_:I

    invoke-virtual {p1, v0, v1}, Lcom/android/carsdk/protobuf/CodedOutputStream;->writeEnum(II)V

    :cond_d
    return-void
.end method
