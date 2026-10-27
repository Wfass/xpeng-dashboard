.class public final Landroid/car/hardware/xpu/XpuXNgpNaviInfo$NaviInfo;
.super Lcom/android/carsdk/protobuf/GeneratedMessageLite;
.source "XpuXNgpNaviInfo.java"

# interfaces
.implements Landroid/car/hardware/xpu/XpuXNgpNaviInfo$NaviInfoOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/car/hardware/xpu/XpuXNgpNaviInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "NaviInfo"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/car/hardware/xpu/XpuXNgpNaviInfo$NaviInfo$Builder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/carsdk/protobuf/GeneratedMessageLite<",
        "Landroid/car/hardware/xpu/XpuXNgpNaviInfo$NaviInfo;",
        "Landroid/car/hardware/xpu/XpuXNgpNaviInfo$NaviInfo$Builder;",
        ">;",
        "Landroid/car/hardware/xpu/XpuXNgpNaviInfo$NaviInfoOrBuilder;"
    }
.end annotation


# static fields
.field public static final CURROUTENAME_FIELD_NUMBER:I = 0x1

.field private static final DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuXNgpNaviInfo$NaviInfo;

.field public static final EXITINFOTYPE_FIELD_NUMBER:I = 0x8

.field public static final EXITINFO_FIELD_NUMBER:I = 0x7

.field public static final ISSHOWEXITINFO_FIELD_NUMBER:I = 0x6

.field public static final ISTIGHTTURNSHOW_FIELD_NUMBER:I = 0xe

.field public static final NAVIGATION_ID_FIELD_NUMBER:I = 0x13

.field public static final NEXTMANEUVERDISTDISPLAY_FIELD_NUMBER:I = 0x11

.field public static final NEXTMANEUVERDISTUNITDISPLAY_FIELD_NUMBER:I = 0x12

.field public static final NEXTMANEUVERDIST_FIELD_NUMBER:I = 0x10

.field public static final NEXTMANEUVERID_FIELD_NUMBER:I = 0xf

.field public static final NEXTROUTENAME_FIELD_NUMBER:I = 0x9

.field private static volatile PARSER:Lcom/android/carsdk/protobuf/Parser; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/carsdk/protobuf/Parser<",
            "Landroid/car/hardware/xpu/XpuXNgpNaviInfo$NaviInfo;",
            ">;"
        }
    .end annotation
.end field

.field public static final ROUTEREMAINDISTDISPLAY_FIELD_NUMBER:I = 0x3

.field public static final ROUTEREMAINDISTUNITDISPLAY_FIELD_NUMBER:I = 0x4

.field public static final ROUTEREMAINDIST_FIELD_NUMBER:I = 0x2

.field public static final ROUTEREMAINTIME_FIELD_NUMBER:I = 0x5

.field public static final SEGMENTREMAINDISTDISPLAY_FIELD_NUMBER:I = 0xb

.field public static final SEGMENTREMAINDISTUNITDISPLAY_FIELD_NUMBER:I = 0xc

.field public static final SEGMENTREMAINDIST_FIELD_NUMBER:I = 0xa

.field public static final SEGMENTREMAINPROGRESS_FIELD_NUMBER:I = 0xd


# instance fields
.field private curRouteName_:Ljava/lang/String;

.field private exitInfoType_:I

.field private exitInfo_:Ljava/lang/String;

.field private isShowExitInfo_:Z

.field private isTightTurnShow_:Z

.field private navigationId_:J

.field private nextManeuverDistDisplay_:Ljava/lang/String;

.field private nextManeuverDistUnitDisplay_:I

.field private nextManeuverDist_:D

.field private nextManeuverID_:D

.field private nextRouteName_:Ljava/lang/String;

.field private routeRemainDistDisplay_:Ljava/lang/String;

.field private routeRemainDistUnitDisplay_:I

.field private routeRemainDist_:D

.field private routeRemainTime_:D

.field private segmentRemainDistDisplay_:Ljava/lang/String;

.field private segmentRemainDistUnitDisplay_:I

.field private segmentRemainDist_:D

.field private segmentRemainProgress_:D


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 4545
    new-instance v0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$NaviInfo;

    invoke-direct {v0}, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$NaviInfo;-><init>()V

    sput-object v0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$NaviInfo;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuXNgpNaviInfo$NaviInfo;

    .line 4546
    invoke-virtual {v0}, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$NaviInfo;->makeImmutable()V

    return-void
.end method

.method private constructor <init>()V
    .locals 4

    .line 2415
    invoke-direct {p0}, Lcom/android/carsdk/protobuf/GeneratedMessageLite;-><init>()V

    const-string v0, ""

    .line 2416
    iput-object v0, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$NaviInfo;->curRouteName_:Ljava/lang/String;

    const-wide/16 v1, 0x0

    .line 2417
    iput-wide v1, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$NaviInfo;->routeRemainDist_:D

    .line 2418
    iput-object v0, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$NaviInfo;->routeRemainDistDisplay_:Ljava/lang/String;

    const/4 v3, 0x0

    .line 2419
    iput v3, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$NaviInfo;->routeRemainDistUnitDisplay_:I

    .line 2420
    iput-wide v1, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$NaviInfo;->routeRemainTime_:D

    .line 2421
    iput-boolean v3, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$NaviInfo;->isShowExitInfo_:Z

    .line 2422
    iput-object v0, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$NaviInfo;->exitInfo_:Ljava/lang/String;

    .line 2423
    iput v3, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$NaviInfo;->exitInfoType_:I

    .line 2424
    iput-object v0, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$NaviInfo;->nextRouteName_:Ljava/lang/String;

    .line 2425
    iput-wide v1, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$NaviInfo;->segmentRemainDist_:D

    .line 2426
    iput-object v0, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$NaviInfo;->segmentRemainDistDisplay_:Ljava/lang/String;

    .line 2427
    iput v3, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$NaviInfo;->segmentRemainDistUnitDisplay_:I

    .line 2428
    iput-wide v1, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$NaviInfo;->segmentRemainProgress_:D

    .line 2429
    iput-boolean v3, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$NaviInfo;->isTightTurnShow_:Z

    .line 2430
    iput-wide v1, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$NaviInfo;->nextManeuverID_:D

    .line 2431
    iput-wide v1, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$NaviInfo;->nextManeuverDist_:D

    .line 2432
    iput-object v0, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$NaviInfo;->nextManeuverDistDisplay_:Ljava/lang/String;

    .line 2433
    iput v3, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$NaviInfo;->nextManeuverDistUnitDisplay_:I

    const-wide/16 v0, 0x0

    .line 2434
    iput-wide v0, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$NaviInfo;->navigationId_:J

    return-void
.end method

.method static synthetic access$000()Landroid/car/hardware/xpu/XpuXNgpNaviInfo$NaviInfo;
    .locals 1

    .line 2410
    sget-object v0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$NaviInfo;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuXNgpNaviInfo$NaviInfo;

    return-object v0
.end method

.method static synthetic access$100(Landroid/car/hardware/xpu/XpuXNgpNaviInfo$NaviInfo;Ljava/lang/String;)V
    .locals 0

    .line 2410
    invoke-direct {p0, p1}, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$NaviInfo;->setCurRouteName(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1000(Landroid/car/hardware/xpu/XpuXNgpNaviInfo$NaviInfo;)V
    .locals 0

    .line 2410
    invoke-direct {p0}, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$NaviInfo;->clearRouteRemainDistUnitDisplay()V

    return-void
.end method

.method static synthetic access$1100(Landroid/car/hardware/xpu/XpuXNgpNaviInfo$NaviInfo;D)V
    .locals 0

    .line 2410
    invoke-direct {p0, p1, p2}, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$NaviInfo;->setRouteRemainTime(D)V

    return-void
.end method

.method static synthetic access$1200(Landroid/car/hardware/xpu/XpuXNgpNaviInfo$NaviInfo;)V
    .locals 0

    .line 2410
    invoke-direct {p0}, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$NaviInfo;->clearRouteRemainTime()V

    return-void
.end method

.method static synthetic access$1300(Landroid/car/hardware/xpu/XpuXNgpNaviInfo$NaviInfo;Z)V
    .locals 0

    .line 2410
    invoke-direct {p0, p1}, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$NaviInfo;->setIsShowExitInfo(Z)V

    return-void
.end method

.method static synthetic access$1400(Landroid/car/hardware/xpu/XpuXNgpNaviInfo$NaviInfo;)V
    .locals 0

    .line 2410
    invoke-direct {p0}, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$NaviInfo;->clearIsShowExitInfo()V

    return-void
.end method

.method static synthetic access$1500(Landroid/car/hardware/xpu/XpuXNgpNaviInfo$NaviInfo;Ljava/lang/String;)V
    .locals 0

    .line 2410
    invoke-direct {p0, p1}, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$NaviInfo;->setExitInfo(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1600(Landroid/car/hardware/xpu/XpuXNgpNaviInfo$NaviInfo;)V
    .locals 0

    .line 2410
    invoke-direct {p0}, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$NaviInfo;->clearExitInfo()V

    return-void
.end method

.method static synthetic access$1700(Landroid/car/hardware/xpu/XpuXNgpNaviInfo$NaviInfo;Lcom/android/carsdk/protobuf/ByteString;)V
    .locals 0

    .line 2410
    invoke-direct {p0, p1}, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$NaviInfo;->setExitInfoBytes(Lcom/android/carsdk/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$1800(Landroid/car/hardware/xpu/XpuXNgpNaviInfo$NaviInfo;I)V
    .locals 0

    .line 2410
    invoke-direct {p0, p1}, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$NaviInfo;->setExitInfoType(I)V

    return-void
.end method

.method static synthetic access$1900(Landroid/car/hardware/xpu/XpuXNgpNaviInfo$NaviInfo;)V
    .locals 0

    .line 2410
    invoke-direct {p0}, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$NaviInfo;->clearExitInfoType()V

    return-void
.end method

.method static synthetic access$200(Landroid/car/hardware/xpu/XpuXNgpNaviInfo$NaviInfo;)V
    .locals 0

    .line 2410
    invoke-direct {p0}, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$NaviInfo;->clearCurRouteName()V

    return-void
.end method

.method static synthetic access$2000(Landroid/car/hardware/xpu/XpuXNgpNaviInfo$NaviInfo;Ljava/lang/String;)V
    .locals 0

    .line 2410
    invoke-direct {p0, p1}, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$NaviInfo;->setNextRouteName(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$2100(Landroid/car/hardware/xpu/XpuXNgpNaviInfo$NaviInfo;)V
    .locals 0

    .line 2410
    invoke-direct {p0}, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$NaviInfo;->clearNextRouteName()V

    return-void
.end method

.method static synthetic access$2200(Landroid/car/hardware/xpu/XpuXNgpNaviInfo$NaviInfo;Lcom/android/carsdk/protobuf/ByteString;)V
    .locals 0

    .line 2410
    invoke-direct {p0, p1}, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$NaviInfo;->setNextRouteNameBytes(Lcom/android/carsdk/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$2300(Landroid/car/hardware/xpu/XpuXNgpNaviInfo$NaviInfo;D)V
    .locals 0

    .line 2410
    invoke-direct {p0, p1, p2}, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$NaviInfo;->setSegmentRemainDist(D)V

    return-void
.end method

.method static synthetic access$2400(Landroid/car/hardware/xpu/XpuXNgpNaviInfo$NaviInfo;)V
    .locals 0

    .line 2410
    invoke-direct {p0}, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$NaviInfo;->clearSegmentRemainDist()V

    return-void
.end method

.method static synthetic access$2500(Landroid/car/hardware/xpu/XpuXNgpNaviInfo$NaviInfo;Ljava/lang/String;)V
    .locals 0

    .line 2410
    invoke-direct {p0, p1}, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$NaviInfo;->setSegmentRemainDistDisplay(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$2600(Landroid/car/hardware/xpu/XpuXNgpNaviInfo$NaviInfo;)V
    .locals 0

    .line 2410
    invoke-direct {p0}, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$NaviInfo;->clearSegmentRemainDistDisplay()V

    return-void
.end method

.method static synthetic access$2700(Landroid/car/hardware/xpu/XpuXNgpNaviInfo$NaviInfo;Lcom/android/carsdk/protobuf/ByteString;)V
    .locals 0

    .line 2410
    invoke-direct {p0, p1}, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$NaviInfo;->setSegmentRemainDistDisplayBytes(Lcom/android/carsdk/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$2800(Landroid/car/hardware/xpu/XpuXNgpNaviInfo$NaviInfo;I)V
    .locals 0

    .line 2410
    invoke-direct {p0, p1}, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$NaviInfo;->setSegmentRemainDistUnitDisplay(I)V

    return-void
.end method

.method static synthetic access$2900(Landroid/car/hardware/xpu/XpuXNgpNaviInfo$NaviInfo;)V
    .locals 0

    .line 2410
    invoke-direct {p0}, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$NaviInfo;->clearSegmentRemainDistUnitDisplay()V

    return-void
.end method

.method static synthetic access$300(Landroid/car/hardware/xpu/XpuXNgpNaviInfo$NaviInfo;Lcom/android/carsdk/protobuf/ByteString;)V
    .locals 0

    .line 2410
    invoke-direct {p0, p1}, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$NaviInfo;->setCurRouteNameBytes(Lcom/android/carsdk/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$3000(Landroid/car/hardware/xpu/XpuXNgpNaviInfo$NaviInfo;D)V
    .locals 0

    .line 2410
    invoke-direct {p0, p1, p2}, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$NaviInfo;->setSegmentRemainProgress(D)V

    return-void
.end method

.method static synthetic access$3100(Landroid/car/hardware/xpu/XpuXNgpNaviInfo$NaviInfo;)V
    .locals 0

    .line 2410
    invoke-direct {p0}, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$NaviInfo;->clearSegmentRemainProgress()V

    return-void
.end method

.method static synthetic access$3200(Landroid/car/hardware/xpu/XpuXNgpNaviInfo$NaviInfo;Z)V
    .locals 0

    .line 2410
    invoke-direct {p0, p1}, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$NaviInfo;->setIsTightTurnShow(Z)V

    return-void
.end method

.method static synthetic access$3300(Landroid/car/hardware/xpu/XpuXNgpNaviInfo$NaviInfo;)V
    .locals 0

    .line 2410
    invoke-direct {p0}, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$NaviInfo;->clearIsTightTurnShow()V

    return-void
.end method

.method static synthetic access$3400(Landroid/car/hardware/xpu/XpuXNgpNaviInfo$NaviInfo;D)V
    .locals 0

    .line 2410
    invoke-direct {p0, p1, p2}, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$NaviInfo;->setNextManeuverID(D)V

    return-void
.end method

.method static synthetic access$3500(Landroid/car/hardware/xpu/XpuXNgpNaviInfo$NaviInfo;)V
    .locals 0

    .line 2410
    invoke-direct {p0}, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$NaviInfo;->clearNextManeuverID()V

    return-void
.end method

.method static synthetic access$3600(Landroid/car/hardware/xpu/XpuXNgpNaviInfo$NaviInfo;D)V
    .locals 0

    .line 2410
    invoke-direct {p0, p1, p2}, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$NaviInfo;->setNextManeuverDist(D)V

    return-void
.end method

.method static synthetic access$3700(Landroid/car/hardware/xpu/XpuXNgpNaviInfo$NaviInfo;)V
    .locals 0

    .line 2410
    invoke-direct {p0}, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$NaviInfo;->clearNextManeuverDist()V

    return-void
.end method

.method static synthetic access$3800(Landroid/car/hardware/xpu/XpuXNgpNaviInfo$NaviInfo;Ljava/lang/String;)V
    .locals 0

    .line 2410
    invoke-direct {p0, p1}, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$NaviInfo;->setNextManeuverDistDisplay(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$3900(Landroid/car/hardware/xpu/XpuXNgpNaviInfo$NaviInfo;)V
    .locals 0

    .line 2410
    invoke-direct {p0}, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$NaviInfo;->clearNextManeuverDistDisplay()V

    return-void
.end method

.method static synthetic access$400(Landroid/car/hardware/xpu/XpuXNgpNaviInfo$NaviInfo;D)V
    .locals 0

    .line 2410
    invoke-direct {p0, p1, p2}, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$NaviInfo;->setRouteRemainDist(D)V

    return-void
.end method

.method static synthetic access$4000(Landroid/car/hardware/xpu/XpuXNgpNaviInfo$NaviInfo;Lcom/android/carsdk/protobuf/ByteString;)V
    .locals 0

    .line 2410
    invoke-direct {p0, p1}, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$NaviInfo;->setNextManeuverDistDisplayBytes(Lcom/android/carsdk/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$4100(Landroid/car/hardware/xpu/XpuXNgpNaviInfo$NaviInfo;I)V
    .locals 0

    .line 2410
    invoke-direct {p0, p1}, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$NaviInfo;->setNextManeuverDistUnitDisplay(I)V

    return-void
.end method

.method static synthetic access$4200(Landroid/car/hardware/xpu/XpuXNgpNaviInfo$NaviInfo;)V
    .locals 0

    .line 2410
    invoke-direct {p0}, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$NaviInfo;->clearNextManeuverDistUnitDisplay()V

    return-void
.end method

.method static synthetic access$4300(Landroid/car/hardware/xpu/XpuXNgpNaviInfo$NaviInfo;J)V
    .locals 0

    .line 2410
    invoke-direct {p0, p1, p2}, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$NaviInfo;->setNavigationId(J)V

    return-void
.end method

.method static synthetic access$4400(Landroid/car/hardware/xpu/XpuXNgpNaviInfo$NaviInfo;)V
    .locals 0

    .line 2410
    invoke-direct {p0}, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$NaviInfo;->clearNavigationId()V

    return-void
.end method

.method static synthetic access$500(Landroid/car/hardware/xpu/XpuXNgpNaviInfo$NaviInfo;)V
    .locals 0

    .line 2410
    invoke-direct {p0}, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$NaviInfo;->clearRouteRemainDist()V

    return-void
.end method

.method static synthetic access$600(Landroid/car/hardware/xpu/XpuXNgpNaviInfo$NaviInfo;Ljava/lang/String;)V
    .locals 0

    .line 2410
    invoke-direct {p0, p1}, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$NaviInfo;->setRouteRemainDistDisplay(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$700(Landroid/car/hardware/xpu/XpuXNgpNaviInfo$NaviInfo;)V
    .locals 0

    .line 2410
    invoke-direct {p0}, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$NaviInfo;->clearRouteRemainDistDisplay()V

    return-void
.end method

.method static synthetic access$800(Landroid/car/hardware/xpu/XpuXNgpNaviInfo$NaviInfo;Lcom/android/carsdk/protobuf/ByteString;)V
    .locals 0

    .line 2410
    invoke-direct {p0, p1}, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$NaviInfo;->setRouteRemainDistDisplayBytes(Lcom/android/carsdk/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$900(Landroid/car/hardware/xpu/XpuXNgpNaviInfo$NaviInfo;I)V
    .locals 0

    .line 2410
    invoke-direct {p0, p1}, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$NaviInfo;->setRouteRemainDistUnitDisplay(I)V

    return-void
.end method

.method private clearCurRouteName()V
    .locals 1

    .line 2483
    invoke-static {}, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$NaviInfo;->getDefaultInstance()Landroid/car/hardware/xpu/XpuXNgpNaviInfo$NaviInfo;

    move-result-object v0

    invoke-virtual {v0}, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$NaviInfo;->getCurRouteName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$NaviInfo;->curRouteName_:Ljava/lang/String;

    return-void
.end method

.method private clearExitInfo()V
    .locals 1

    .line 2755
    invoke-static {}, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$NaviInfo;->getDefaultInstance()Landroid/car/hardware/xpu/XpuXNgpNaviInfo$NaviInfo;

    move-result-object v0

    invoke-virtual {v0}, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$NaviInfo;->getExitInfo()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$NaviInfo;->exitInfo_:Ljava/lang/String;

    return-void
.end method

.method private clearExitInfoType()V
    .locals 1

    const/4 v0, 0x0

    .line 2806
    iput v0, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$NaviInfo;->exitInfoType_:I

    return-void
.end method

.method private clearIsShowExitInfo()V
    .locals 1

    const/4 v0, 0x0

    .line 2705
    iput-boolean v0, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$NaviInfo;->isShowExitInfo_:Z

    return-void
.end method

.method private clearIsTightTurnShow()V
    .locals 1

    const/4 v0, 0x0

    .line 3078
    iput-boolean v0, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$NaviInfo;->isTightTurnShow_:Z

    return-void
.end method

.method private clearNavigationId()V
    .locals 2

    const-wide/16 v0, 0x0

    .line 3284
    iput-wide v0, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$NaviInfo;->navigationId_:J

    return-void
.end method

.method private clearNextManeuverDist()V
    .locals 2

    const-wide/16 v0, 0x0

    .line 3148
    iput-wide v0, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$NaviInfo;->nextManeuverDist_:D

    return-void
.end method

.method private clearNextManeuverDistDisplay()V
    .locals 1

    .line 3198
    invoke-static {}, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$NaviInfo;->getDefaultInstance()Landroid/car/hardware/xpu/XpuXNgpNaviInfo$NaviInfo;

    move-result-object v0

    invoke-virtual {v0}, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$NaviInfo;->getNextManeuverDistDisplay()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$NaviInfo;->nextManeuverDistDisplay_:Ljava/lang/String;

    return-void
.end method

.method private clearNextManeuverDistUnitDisplay()V
    .locals 1

    const/4 v0, 0x0

    .line 3249
    iput v0, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$NaviInfo;->nextManeuverDistUnitDisplay_:I

    return-void
.end method

.method private clearNextManeuverID()V
    .locals 2

    const-wide/16 v0, 0x0

    .line 3113
    iput-wide v0, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$NaviInfo;->nextManeuverID_:D

    return-void
.end method

.method private clearNextRouteName()V
    .locals 1

    .line 2856
    invoke-static {}, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$NaviInfo;->getDefaultInstance()Landroid/car/hardware/xpu/XpuXNgpNaviInfo$NaviInfo;

    move-result-object v0

    invoke-virtual {v0}, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$NaviInfo;->getNextRouteName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$NaviInfo;->nextRouteName_:Ljava/lang/String;

    return-void
.end method

.method private clearRouteRemainDist()V
    .locals 2

    const-wide/16 v0, 0x0

    .line 2534
    iput-wide v0, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$NaviInfo;->routeRemainDist_:D

    return-void
.end method

.method private clearRouteRemainDistDisplay()V
    .locals 1

    .line 2584
    invoke-static {}, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$NaviInfo;->getDefaultInstance()Landroid/car/hardware/xpu/XpuXNgpNaviInfo$NaviInfo;

    move-result-object v0

    invoke-virtual {v0}, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$NaviInfo;->getRouteRemainDistDisplay()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$NaviInfo;->routeRemainDistDisplay_:Ljava/lang/String;

    return-void
.end method

.method private clearRouteRemainDistUnitDisplay()V
    .locals 1

    const/4 v0, 0x0

    .line 2635
    iput v0, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$NaviInfo;->routeRemainDistUnitDisplay_:I

    return-void
.end method

.method private clearRouteRemainTime()V
    .locals 2

    const-wide/16 v0, 0x0

    .line 2670
    iput-wide v0, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$NaviInfo;->routeRemainTime_:D

    return-void
.end method

.method private clearSegmentRemainDist()V
    .locals 2

    const-wide/16 v0, 0x0

    .line 2907
    iput-wide v0, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$NaviInfo;->segmentRemainDist_:D

    return-void
.end method

.method private clearSegmentRemainDistDisplay()V
    .locals 1

    .line 2957
    invoke-static {}, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$NaviInfo;->getDefaultInstance()Landroid/car/hardware/xpu/XpuXNgpNaviInfo$NaviInfo;

    move-result-object v0

    invoke-virtual {v0}, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$NaviInfo;->getSegmentRemainDistDisplay()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$NaviInfo;->segmentRemainDistDisplay_:Ljava/lang/String;

    return-void
.end method

.method private clearSegmentRemainDistUnitDisplay()V
    .locals 1

    const/4 v0, 0x0

    .line 3008
    iput v0, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$NaviInfo;->segmentRemainDistUnitDisplay_:I

    return-void
.end method

.method private clearSegmentRemainProgress()V
    .locals 2

    const-wide/16 v0, 0x0

    .line 3043
    iput-wide v0, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$NaviInfo;->segmentRemainProgress_:D

    return-void
.end method

.method public static getDefaultInstance()Landroid/car/hardware/xpu/XpuXNgpNaviInfo$NaviInfo;
    .locals 1

    .line 4550
    sget-object v0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$NaviInfo;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuXNgpNaviInfo$NaviInfo;

    return-object v0
.end method

.method public static newBuilder()Landroid/car/hardware/xpu/XpuXNgpNaviInfo$NaviInfo$Builder;
    .locals 1

    .line 3495
    sget-object v0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$NaviInfo;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuXNgpNaviInfo$NaviInfo;

    invoke-virtual {v0}, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$NaviInfo;->toBuilder()Lcom/android/carsdk/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$NaviInfo$Builder;

    return-object v0
.end method

.method public static newBuilder(Landroid/car/hardware/xpu/XpuXNgpNaviInfo$NaviInfo;)Landroid/car/hardware/xpu/XpuXNgpNaviInfo$NaviInfo$Builder;
    .locals 1

    .line 3498
    sget-object v0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$NaviInfo;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuXNgpNaviInfo$NaviInfo;

    invoke-virtual {v0}, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$NaviInfo;->toBuilder()Lcom/android/carsdk/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$NaviInfo$Builder;

    invoke-virtual {v0, p0}, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$NaviInfo$Builder;->mergeFrom(Lcom/android/carsdk/protobuf/GeneratedMessageLite;)Lcom/android/carsdk/protobuf/GeneratedMessageLite$Builder;

    move-result-object p0

    check-cast p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$NaviInfo$Builder;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Landroid/car/hardware/xpu/XpuXNgpNaviInfo$NaviInfo;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3472
    sget-object v0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$NaviInfo;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuXNgpNaviInfo$NaviInfo;

    invoke-static {v0, p0}, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$NaviInfo;->parseDelimitedFrom(Lcom/android/carsdk/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$NaviInfo;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/android/carsdk/protobuf/ExtensionRegistryLite;)Landroid/car/hardware/xpu/XpuXNgpNaviInfo$NaviInfo;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3478
    sget-object v0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$NaviInfo;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuXNgpNaviInfo$NaviInfo;

    invoke-static {v0, p0, p1}, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$NaviInfo;->parseDelimitedFrom(Lcom/android/carsdk/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/android/carsdk/protobuf/ExtensionRegistryLite;)Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$NaviInfo;

    return-object p0
.end method

.method public static parseFrom(Lcom/android/carsdk/protobuf/ByteString;)Landroid/car/hardware/xpu/XpuXNgpNaviInfo$NaviInfo;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/carsdk/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 3436
    sget-object v0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$NaviInfo;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuXNgpNaviInfo$NaviInfo;

    invoke-static {v0, p0}, Lcom/android/carsdk/protobuf/GeneratedMessageLite;->parseFrom(Lcom/android/carsdk/protobuf/GeneratedMessageLite;Lcom/android/carsdk/protobuf/ByteString;)Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$NaviInfo;

    return-object p0
.end method

.method public static parseFrom(Lcom/android/carsdk/protobuf/ByteString;Lcom/android/carsdk/protobuf/ExtensionRegistryLite;)Landroid/car/hardware/xpu/XpuXNgpNaviInfo$NaviInfo;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/carsdk/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 3443
    sget-object v0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$NaviInfo;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuXNgpNaviInfo$NaviInfo;

    invoke-static {v0, p0, p1}, Lcom/android/carsdk/protobuf/GeneratedMessageLite;->parseFrom(Lcom/android/carsdk/protobuf/GeneratedMessageLite;Lcom/android/carsdk/protobuf/ByteString;Lcom/android/carsdk/protobuf/ExtensionRegistryLite;)Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$NaviInfo;

    return-object p0
.end method

.method public static parseFrom(Lcom/android/carsdk/protobuf/CodedInputStream;)Landroid/car/hardware/xpu/XpuXNgpNaviInfo$NaviInfo;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3483
    sget-object v0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$NaviInfo;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuXNgpNaviInfo$NaviInfo;

    invoke-static {v0, p0}, Lcom/android/carsdk/protobuf/GeneratedMessageLite;->parseFrom(Lcom/android/carsdk/protobuf/GeneratedMessageLite;Lcom/android/carsdk/protobuf/CodedInputStream;)Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$NaviInfo;

    return-object p0
.end method

.method public static parseFrom(Lcom/android/carsdk/protobuf/CodedInputStream;Lcom/android/carsdk/protobuf/ExtensionRegistryLite;)Landroid/car/hardware/xpu/XpuXNgpNaviInfo$NaviInfo;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3490
    sget-object v0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$NaviInfo;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuXNgpNaviInfo$NaviInfo;

    invoke-static {v0, p0, p1}, Lcom/android/carsdk/protobuf/GeneratedMessageLite;->parseFrom(Lcom/android/carsdk/protobuf/GeneratedMessageLite;Lcom/android/carsdk/protobuf/CodedInputStream;Lcom/android/carsdk/protobuf/ExtensionRegistryLite;)Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$NaviInfo;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Landroid/car/hardware/xpu/XpuXNgpNaviInfo$NaviInfo;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3460
    sget-object v0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$NaviInfo;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuXNgpNaviInfo$NaviInfo;

    invoke-static {v0, p0}, Lcom/android/carsdk/protobuf/GeneratedMessageLite;->parseFrom(Lcom/android/carsdk/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$NaviInfo;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/android/carsdk/protobuf/ExtensionRegistryLite;)Landroid/car/hardware/xpu/XpuXNgpNaviInfo$NaviInfo;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3467
    sget-object v0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$NaviInfo;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuXNgpNaviInfo$NaviInfo;

    invoke-static {v0, p0, p1}, Lcom/android/carsdk/protobuf/GeneratedMessageLite;->parseFrom(Lcom/android/carsdk/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/android/carsdk/protobuf/ExtensionRegistryLite;)Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$NaviInfo;

    return-object p0
.end method

.method public static parseFrom([B)Landroid/car/hardware/xpu/XpuXNgpNaviInfo$NaviInfo;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/carsdk/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 3448
    sget-object v0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$NaviInfo;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuXNgpNaviInfo$NaviInfo;

    invoke-static {v0, p0}, Lcom/android/carsdk/protobuf/GeneratedMessageLite;->parseFrom(Lcom/android/carsdk/protobuf/GeneratedMessageLite;[B)Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$NaviInfo;

    return-object p0
.end method

.method public static parseFrom([BLcom/android/carsdk/protobuf/ExtensionRegistryLite;)Landroid/car/hardware/xpu/XpuXNgpNaviInfo$NaviInfo;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/carsdk/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 3455
    sget-object v0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$NaviInfo;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuXNgpNaviInfo$NaviInfo;

    invoke-static {v0, p0, p1}, Lcom/android/carsdk/protobuf/GeneratedMessageLite;->parseFrom(Lcom/android/carsdk/protobuf/GeneratedMessageLite;[BLcom/android/carsdk/protobuf/ExtensionRegistryLite;)Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$NaviInfo;

    return-object p0
.end method

.method public static parser()Lcom/android/carsdk/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/android/carsdk/protobuf/Parser<",
            "Landroid/car/hardware/xpu/XpuXNgpNaviInfo$NaviInfo;",
            ">;"
        }
    .end annotation

    .line 4556
    sget-object v0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$NaviInfo;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuXNgpNaviInfo$NaviInfo;

    invoke-virtual {v0}, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$NaviInfo;->getParserForType()Lcom/android/carsdk/protobuf/Parser;

    move-result-object v0

    return-object v0
.end method

.method private setCurRouteName(Ljava/lang/String;)V
    .locals 0

    .line 2469
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2472
    iput-object p1, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$NaviInfo;->curRouteName_:Ljava/lang/String;

    return-void
.end method

.method private setCurRouteNameBytes(Lcom/android/carsdk/protobuf/ByteString;)V
    .locals 0

    .line 2495
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2497
    invoke-static {p1}, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$NaviInfo;->checkByteStringIsUtf8(Lcom/android/carsdk/protobuf/ByteString;)V

    .line 2499
    invoke-virtual {p1}, Lcom/android/carsdk/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$NaviInfo;->curRouteName_:Ljava/lang/String;

    return-void
.end method

.method private setExitInfo(Ljava/lang/String;)V
    .locals 0

    .line 2741
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2744
    iput-object p1, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$NaviInfo;->exitInfo_:Ljava/lang/String;

    return-void
.end method

.method private setExitInfoBytes(Lcom/android/carsdk/protobuf/ByteString;)V
    .locals 0

    .line 2767
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2769
    invoke-static {p1}, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$NaviInfo;->checkByteStringIsUtf8(Lcom/android/carsdk/protobuf/ByteString;)V

    .line 2771
    invoke-virtual {p1}, Lcom/android/carsdk/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$NaviInfo;->exitInfo_:Ljava/lang/String;

    return-void
.end method

.method private setExitInfoType(I)V
    .locals 0

    .line 2795
    iput p1, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$NaviInfo;->exitInfoType_:I

    return-void
.end method

.method private setIsShowExitInfo(Z)V
    .locals 0

    .line 2694
    iput-boolean p1, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$NaviInfo;->isShowExitInfo_:Z

    return-void
.end method

.method private setIsTightTurnShow(Z)V
    .locals 0

    .line 3067
    iput-boolean p1, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$NaviInfo;->isTightTurnShow_:Z

    return-void
.end method

.method private setNavigationId(J)V
    .locals 0

    .line 3273
    iput-wide p1, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$NaviInfo;->navigationId_:J

    return-void
.end method

.method private setNextManeuverDist(D)V
    .locals 0

    .line 3137
    iput-wide p1, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$NaviInfo;->nextManeuverDist_:D

    return-void
.end method

.method private setNextManeuverDistDisplay(Ljava/lang/String;)V
    .locals 0

    .line 3184
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3187
    iput-object p1, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$NaviInfo;->nextManeuverDistDisplay_:Ljava/lang/String;

    return-void
.end method

.method private setNextManeuverDistDisplayBytes(Lcom/android/carsdk/protobuf/ByteString;)V
    .locals 0

    .line 3210
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3212
    invoke-static {p1}, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$NaviInfo;->checkByteStringIsUtf8(Lcom/android/carsdk/protobuf/ByteString;)V

    .line 3214
    invoke-virtual {p1}, Lcom/android/carsdk/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$NaviInfo;->nextManeuverDistDisplay_:Ljava/lang/String;

    return-void
.end method

.method private setNextManeuverDistUnitDisplay(I)V
    .locals 0

    .line 3238
    iput p1, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$NaviInfo;->nextManeuverDistUnitDisplay_:I

    return-void
.end method

.method private setNextManeuverID(D)V
    .locals 0

    .line 3102
    iput-wide p1, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$NaviInfo;->nextManeuverID_:D

    return-void
.end method

.method private setNextRouteName(Ljava/lang/String;)V
    .locals 0

    .line 2842
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2845
    iput-object p1, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$NaviInfo;->nextRouteName_:Ljava/lang/String;

    return-void
.end method

.method private setNextRouteNameBytes(Lcom/android/carsdk/protobuf/ByteString;)V
    .locals 0

    .line 2868
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2870
    invoke-static {p1}, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$NaviInfo;->checkByteStringIsUtf8(Lcom/android/carsdk/protobuf/ByteString;)V

    .line 2872
    invoke-virtual {p1}, Lcom/android/carsdk/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$NaviInfo;->nextRouteName_:Ljava/lang/String;

    return-void
.end method

.method private setRouteRemainDist(D)V
    .locals 0

    .line 2523
    iput-wide p1, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$NaviInfo;->routeRemainDist_:D

    return-void
.end method

.method private setRouteRemainDistDisplay(Ljava/lang/String;)V
    .locals 0

    .line 2570
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2573
    iput-object p1, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$NaviInfo;->routeRemainDistDisplay_:Ljava/lang/String;

    return-void
.end method

.method private setRouteRemainDistDisplayBytes(Lcom/android/carsdk/protobuf/ByteString;)V
    .locals 0

    .line 2596
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2598
    invoke-static {p1}, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$NaviInfo;->checkByteStringIsUtf8(Lcom/android/carsdk/protobuf/ByteString;)V

    .line 2600
    invoke-virtual {p1}, Lcom/android/carsdk/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$NaviInfo;->routeRemainDistDisplay_:Ljava/lang/String;

    return-void
.end method

.method private setRouteRemainDistUnitDisplay(I)V
    .locals 0

    .line 2624
    iput p1, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$NaviInfo;->routeRemainDistUnitDisplay_:I

    return-void
.end method

.method private setRouteRemainTime(D)V
    .locals 0

    .line 2659
    iput-wide p1, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$NaviInfo;->routeRemainTime_:D

    return-void
.end method

.method private setSegmentRemainDist(D)V
    .locals 0

    .line 2896
    iput-wide p1, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$NaviInfo;->segmentRemainDist_:D

    return-void
.end method

.method private setSegmentRemainDistDisplay(Ljava/lang/String;)V
    .locals 0

    .line 2943
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2946
    iput-object p1, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$NaviInfo;->segmentRemainDistDisplay_:Ljava/lang/String;

    return-void
.end method

.method private setSegmentRemainDistDisplayBytes(Lcom/android/carsdk/protobuf/ByteString;)V
    .locals 0

    .line 2969
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2971
    invoke-static {p1}, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$NaviInfo;->checkByteStringIsUtf8(Lcom/android/carsdk/protobuf/ByteString;)V

    .line 2973
    invoke-virtual {p1}, Lcom/android/carsdk/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$NaviInfo;->segmentRemainDistDisplay_:Ljava/lang/String;

    return-void
.end method

.method private setSegmentRemainDistUnitDisplay(I)V
    .locals 0

    .line 2997
    iput p1, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$NaviInfo;->segmentRemainDistUnitDisplay_:I

    return-void
.end method

.method private setSegmentRemainProgress(D)V
    .locals 0

    .line 3032
    iput-wide p1, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$NaviInfo;->segmentRemainProgress_:D

    return-void
.end method


# virtual methods
.method protected final dynamicMethod(Lcom/android/carsdk/protobuf/GeneratedMessageLite$MethodToInvoke;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 10

    .line 4335
    sget-object v0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$1;->$SwitchMap$com$google$protobuf$GeneratedMessageLite$MethodToInvoke:[I

    invoke-virtual {p1}, Lcom/android/carsdk/protobuf/GeneratedMessageLite$MethodToInvoke;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x1

    packed-switch p1, :pswitch_data_0

    .line 4538
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1

    .line 4529
    :pswitch_0
    sget-object p1, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$NaviInfo;->PARSER:Lcom/android/carsdk/protobuf/Parser;

    if-nez p1, :cond_1

    const-class p1, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$NaviInfo;

    monitor-enter p1

    .line 4530
    :try_start_0
    sget-object p2, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$NaviInfo;->PARSER:Lcom/android/carsdk/protobuf/Parser;

    if-nez p2, :cond_0

    .line 4531
    new-instance p2, Lcom/android/carsdk/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;

    sget-object p3, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$NaviInfo;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuXNgpNaviInfo$NaviInfo;

    invoke-direct {p2, p3}, Lcom/android/carsdk/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;-><init>(Lcom/android/carsdk/protobuf/GeneratedMessageLite;)V

    sput-object p2, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$NaviInfo;->PARSER:Lcom/android/carsdk/protobuf/Parser;

    .line 4533
    :cond_0
    monitor-exit p1

    goto :goto_0

    :catchall_0
    move-exception p2

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p2

    .line 4535
    :cond_1
    :goto_0
    sget-object p1, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$NaviInfo;->PARSER:Lcom/android/carsdk/protobuf/Parser;

    return-object p1

    .line 4395
    :pswitch_1
    check-cast p2, Lcom/android/carsdk/protobuf/CodedInputStream;

    .line 4397
    check-cast p3, Lcom/android/carsdk/protobuf/ExtensionRegistryLite;

    :cond_2
    :goto_1
    if-nez v1, :cond_3

    .line 4402
    :try_start_1
    invoke-virtual {p2}, Lcom/android/carsdk/protobuf/CodedInputStream;->readTag()I

    move-result p1

    sparse-switch p1, :sswitch_data_0

    .line 4408
    invoke-virtual {p2, p1}, Lcom/android/carsdk/protobuf/CodedInputStream;->skipField(I)Z

    move-result p1

    goto/16 :goto_3

    .line 4511
    :sswitch_0
    invoke-virtual {p2}, Lcom/android/carsdk/protobuf/CodedInputStream;->readUInt64()J

    move-result-wide v3

    iput-wide v3, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$NaviInfo;->navigationId_:J

    goto :goto_1

    .line 4506
    :sswitch_1
    invoke-virtual {p2}, Lcom/android/carsdk/protobuf/CodedInputStream;->readInt32()I

    move-result p1

    iput p1, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$NaviInfo;->nextManeuverDistUnitDisplay_:I

    goto :goto_1

    .line 4499
    :sswitch_2
    invoke-virtual {p2}, Lcom/android/carsdk/protobuf/CodedInputStream;->readStringRequireUtf8()Ljava/lang/String;

    move-result-object p1

    .line 4501
    iput-object p1, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$NaviInfo;->nextManeuverDistDisplay_:Ljava/lang/String;

    goto :goto_1

    .line 4495
    :sswitch_3
    invoke-virtual {p2}, Lcom/android/carsdk/protobuf/CodedInputStream;->readDouble()D

    move-result-wide v3

    iput-wide v3, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$NaviInfo;->nextManeuverDist_:D

    goto :goto_1

    .line 4490
    :sswitch_4
    invoke-virtual {p2}, Lcom/android/carsdk/protobuf/CodedInputStream;->readDouble()D

    move-result-wide v3

    iput-wide v3, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$NaviInfo;->nextManeuverID_:D

    goto :goto_1

    .line 4485
    :sswitch_5
    invoke-virtual {p2}, Lcom/android/carsdk/protobuf/CodedInputStream;->readBool()Z

    move-result p1

    iput-boolean p1, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$NaviInfo;->isTightTurnShow_:Z

    goto :goto_1

    .line 4480
    :sswitch_6
    invoke-virtual {p2}, Lcom/android/carsdk/protobuf/CodedInputStream;->readDouble()D

    move-result-wide v3

    iput-wide v3, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$NaviInfo;->segmentRemainProgress_:D

    goto :goto_1

    .line 4475
    :sswitch_7
    invoke-virtual {p2}, Lcom/android/carsdk/protobuf/CodedInputStream;->readInt32()I

    move-result p1

    iput p1, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$NaviInfo;->segmentRemainDistUnitDisplay_:I

    goto :goto_1

    .line 4468
    :sswitch_8
    invoke-virtual {p2}, Lcom/android/carsdk/protobuf/CodedInputStream;->readStringRequireUtf8()Ljava/lang/String;

    move-result-object p1

    .line 4470
    iput-object p1, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$NaviInfo;->segmentRemainDistDisplay_:Ljava/lang/String;

    goto :goto_1

    .line 4464
    :sswitch_9
    invoke-virtual {p2}, Lcom/android/carsdk/protobuf/CodedInputStream;->readDouble()D

    move-result-wide v3

    iput-wide v3, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$NaviInfo;->segmentRemainDist_:D

    goto :goto_1

    .line 4457
    :sswitch_a
    invoke-virtual {p2}, Lcom/android/carsdk/protobuf/CodedInputStream;->readStringRequireUtf8()Ljava/lang/String;

    move-result-object p1

    .line 4459
    iput-object p1, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$NaviInfo;->nextRouteName_:Ljava/lang/String;

    goto :goto_1

    .line 4453
    :sswitch_b
    invoke-virtual {p2}, Lcom/android/carsdk/protobuf/CodedInputStream;->readInt32()I

    move-result p1

    iput p1, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$NaviInfo;->exitInfoType_:I

    goto :goto_1

    .line 4446
    :sswitch_c
    invoke-virtual {p2}, Lcom/android/carsdk/protobuf/CodedInputStream;->readStringRequireUtf8()Ljava/lang/String;

    move-result-object p1

    .line 4448
    iput-object p1, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$NaviInfo;->exitInfo_:Ljava/lang/String;

    goto :goto_1

    .line 4442
    :sswitch_d
    invoke-virtual {p2}, Lcom/android/carsdk/protobuf/CodedInputStream;->readBool()Z

    move-result p1

    iput-boolean p1, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$NaviInfo;->isShowExitInfo_:Z

    goto :goto_1

    .line 4437
    :sswitch_e
    invoke-virtual {p2}, Lcom/android/carsdk/protobuf/CodedInputStream;->readDouble()D

    move-result-wide v3

    iput-wide v3, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$NaviInfo;->routeRemainTime_:D

    goto :goto_1

    .line 4432
    :sswitch_f
    invoke-virtual {p2}, Lcom/android/carsdk/protobuf/CodedInputStream;->readInt32()I

    move-result p1

    iput p1, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$NaviInfo;->routeRemainDistUnitDisplay_:I

    goto :goto_1

    .line 4425
    :sswitch_10
    invoke-virtual {p2}, Lcom/android/carsdk/protobuf/CodedInputStream;->readStringRequireUtf8()Ljava/lang/String;

    move-result-object p1

    .line 4427
    iput-object p1, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$NaviInfo;->routeRemainDistDisplay_:Ljava/lang/String;

    goto/16 :goto_1

    .line 4421
    :sswitch_11
    invoke-virtual {p2}, Lcom/android/carsdk/protobuf/CodedInputStream;->readDouble()D

    move-result-wide v3

    iput-wide v3, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$NaviInfo;->routeRemainDist_:D

    goto/16 :goto_1

    .line 4414
    :sswitch_12
    invoke-virtual {p2}, Lcom/android/carsdk/protobuf/CodedInputStream;->readStringRequireUtf8()Ljava/lang/String;

    move-result-object p1

    .line 4416
    iput-object p1, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$NaviInfo;->curRouteName_:Ljava/lang/String;
    :try_end_1
    .catch Lcom/android/carsdk/protobuf/InvalidProtocolBufferException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto/16 :goto_1

    :goto_2
    :sswitch_13
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

    .line 4519
    :try_start_2
    new-instance p2, Ljava/lang/RuntimeException;

    new-instance p3, Lcom/android/carsdk/protobuf/InvalidProtocolBufferException;

    .line 4521
    invoke-virtual {p1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p3, p1}, Lcom/android/carsdk/protobuf/InvalidProtocolBufferException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, p0}, Lcom/android/carsdk/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/android/carsdk/protobuf/MessageLite;)Lcom/android/carsdk/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p2

    :catch_1
    move-exception p1

    .line 4517
    new-instance p2, Ljava/lang/RuntimeException;

    invoke-virtual {p1, p0}, Lcom/android/carsdk/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/android/carsdk/protobuf/MessageLite;)Lcom/android/carsdk/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 4522
    :goto_4
    throw p1

    .line 4526
    :cond_3
    :pswitch_2
    sget-object p1, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$NaviInfo;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuXNgpNaviInfo$NaviInfo;

    return-object p1

    .line 4349
    :pswitch_3
    move-object v0, p2

    check-cast v0, Lcom/android/carsdk/protobuf/GeneratedMessageLite$Visitor;

    .line 4350
    check-cast p3, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$NaviInfo;

    .line 4351
    iget-object p1, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$NaviInfo;->curRouteName_:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result p1

    xor-int/2addr p1, v2

    iget-object p2, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$NaviInfo;->curRouteName_:Ljava/lang/String;

    iget-object v3, p3, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$NaviInfo;->curRouteName_:Ljava/lang/String;

    .line 4352
    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    xor-int/2addr v3, v2

    iget-object v4, p3, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$NaviInfo;->curRouteName_:Ljava/lang/String;

    .line 4351
    invoke-interface {v0, p1, p2, v3, v4}, Lcom/android/carsdk/protobuf/GeneratedMessageLite$Visitor;->visitString(ZLjava/lang/String;ZLjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$NaviInfo;->curRouteName_:Ljava/lang/String;

    .line 4353
    iget-wide v5, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$NaviInfo;->routeRemainDist_:D

    const-wide/16 p1, 0x0

    cmpl-double v3, v5, p1

    if-eqz v3, :cond_4

    move v4, v2

    goto :goto_5

    :cond_4
    move v4, v1

    :goto_5
    iget-wide v8, p3, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$NaviInfo;->routeRemainDist_:D

    cmpl-double v3, v8, p1

    if-eqz v3, :cond_5

    move v7, v2

    goto :goto_6

    :cond_5
    move v7, v1

    :goto_6
    move-object v3, v0

    invoke-interface/range {v3 .. v9}, Lcom/android/carsdk/protobuf/GeneratedMessageLite$Visitor;->visitDouble(ZDZD)D

    move-result-wide v3

    iput-wide v3, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$NaviInfo;->routeRemainDist_:D

    .line 4355
    iget-object v3, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$NaviInfo;->routeRemainDistDisplay_:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    xor-int/2addr v3, v2

    iget-object v4, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$NaviInfo;->routeRemainDistDisplay_:Ljava/lang/String;

    iget-object v5, p3, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$NaviInfo;->routeRemainDistDisplay_:Ljava/lang/String;

    .line 4356
    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    xor-int/2addr v5, v2

    iget-object v6, p3, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$NaviInfo;->routeRemainDistDisplay_:Ljava/lang/String;

    .line 4355
    invoke-interface {v0, v3, v4, v5, v6}, Lcom/android/carsdk/protobuf/GeneratedMessageLite$Visitor;->visitString(ZLjava/lang/String;ZLjava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$NaviInfo;->routeRemainDistDisplay_:Ljava/lang/String;

    .line 4357
    iget v3, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$NaviInfo;->routeRemainDistUnitDisplay_:I

    if-eqz v3, :cond_6

    move v4, v2

    goto :goto_7

    :cond_6
    move v4, v1

    :goto_7
    iget v5, p3, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$NaviInfo;->routeRemainDistUnitDisplay_:I

    if-eqz v5, :cond_7

    move v6, v2

    goto :goto_8

    :cond_7
    move v6, v1

    :goto_8
    invoke-interface {v0, v4, v3, v6, v5}, Lcom/android/carsdk/protobuf/GeneratedMessageLite$Visitor;->visitInt(ZIZI)I

    move-result v3

    iput v3, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$NaviInfo;->routeRemainDistUnitDisplay_:I

    .line 4359
    iget-wide v5, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$NaviInfo;->routeRemainTime_:D

    cmpl-double v3, v5, p1

    if-eqz v3, :cond_8

    move v4, v2

    goto :goto_9

    :cond_8
    move v4, v1

    :goto_9
    iget-wide v8, p3, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$NaviInfo;->routeRemainTime_:D

    cmpl-double v3, v8, p1

    if-eqz v3, :cond_9

    move v7, v2

    goto :goto_a

    :cond_9
    move v7, v1

    :goto_a
    move-object v3, v0

    invoke-interface/range {v3 .. v9}, Lcom/android/carsdk/protobuf/GeneratedMessageLite$Visitor;->visitDouble(ZDZD)D

    move-result-wide v3

    iput-wide v3, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$NaviInfo;->routeRemainTime_:D

    .line 4361
    iget-boolean v3, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$NaviInfo;->isShowExitInfo_:Z

    iget-boolean v4, p3, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$NaviInfo;->isShowExitInfo_:Z

    invoke-interface {v0, v3, v3, v4, v4}, Lcom/android/carsdk/protobuf/GeneratedMessageLite$Visitor;->visitBoolean(ZZZZ)Z

    move-result v3

    iput-boolean v3, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$NaviInfo;->isShowExitInfo_:Z

    .line 4363
    iget-object v3, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$NaviInfo;->exitInfo_:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    xor-int/2addr v3, v2

    iget-object v4, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$NaviInfo;->exitInfo_:Ljava/lang/String;

    iget-object v5, p3, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$NaviInfo;->exitInfo_:Ljava/lang/String;

    .line 4364
    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    xor-int/2addr v5, v2

    iget-object v6, p3, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$NaviInfo;->exitInfo_:Ljava/lang/String;

    .line 4363
    invoke-interface {v0, v3, v4, v5, v6}, Lcom/android/carsdk/protobuf/GeneratedMessageLite$Visitor;->visitString(ZLjava/lang/String;ZLjava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$NaviInfo;->exitInfo_:Ljava/lang/String;

    .line 4365
    iget v3, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$NaviInfo;->exitInfoType_:I

    if-eqz v3, :cond_a

    move v4, v2

    goto :goto_b

    :cond_a
    move v4, v1

    :goto_b
    iget v5, p3, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$NaviInfo;->exitInfoType_:I

    if-eqz v5, :cond_b

    move v6, v2

    goto :goto_c

    :cond_b
    move v6, v1

    :goto_c
    invoke-interface {v0, v4, v3, v6, v5}, Lcom/android/carsdk/protobuf/GeneratedMessageLite$Visitor;->visitInt(ZIZI)I

    move-result v3

    iput v3, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$NaviInfo;->exitInfoType_:I

    .line 4367
    iget-object v3, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$NaviInfo;->nextRouteName_:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    xor-int/2addr v3, v2

    iget-object v4, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$NaviInfo;->nextRouteName_:Ljava/lang/String;

    iget-object v5, p3, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$NaviInfo;->nextRouteName_:Ljava/lang/String;

    .line 4368
    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    xor-int/2addr v5, v2

    iget-object v6, p3, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$NaviInfo;->nextRouteName_:Ljava/lang/String;

    .line 4367
    invoke-interface {v0, v3, v4, v5, v6}, Lcom/android/carsdk/protobuf/GeneratedMessageLite$Visitor;->visitString(ZLjava/lang/String;ZLjava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$NaviInfo;->nextRouteName_:Ljava/lang/String;

    .line 4369
    iget-wide v5, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$NaviInfo;->segmentRemainDist_:D

    cmpl-double v3, v5, p1

    if-eqz v3, :cond_c

    move v4, v2

    goto :goto_d

    :cond_c
    move v4, v1

    :goto_d
    iget-wide v8, p3, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$NaviInfo;->segmentRemainDist_:D

    cmpl-double v3, v8, p1

    if-eqz v3, :cond_d

    move v7, v2

    goto :goto_e

    :cond_d
    move v7, v1

    :goto_e
    move-object v3, v0

    invoke-interface/range {v3 .. v9}, Lcom/android/carsdk/protobuf/GeneratedMessageLite$Visitor;->visitDouble(ZDZD)D

    move-result-wide v3

    iput-wide v3, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$NaviInfo;->segmentRemainDist_:D

    .line 4371
    iget-object v3, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$NaviInfo;->segmentRemainDistDisplay_:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    xor-int/2addr v3, v2

    iget-object v4, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$NaviInfo;->segmentRemainDistDisplay_:Ljava/lang/String;

    iget-object v5, p3, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$NaviInfo;->segmentRemainDistDisplay_:Ljava/lang/String;

    .line 4372
    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    xor-int/2addr v5, v2

    iget-object v6, p3, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$NaviInfo;->segmentRemainDistDisplay_:Ljava/lang/String;

    .line 4371
    invoke-interface {v0, v3, v4, v5, v6}, Lcom/android/carsdk/protobuf/GeneratedMessageLite$Visitor;->visitString(ZLjava/lang/String;ZLjava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$NaviInfo;->segmentRemainDistDisplay_:Ljava/lang/String;

    .line 4373
    iget v3, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$NaviInfo;->segmentRemainDistUnitDisplay_:I

    if-eqz v3, :cond_e

    move v4, v2

    goto :goto_f

    :cond_e
    move v4, v1

    :goto_f
    iget v5, p3, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$NaviInfo;->segmentRemainDistUnitDisplay_:I

    if-eqz v5, :cond_f

    move v6, v2

    goto :goto_10

    :cond_f
    move v6, v1

    :goto_10
    invoke-interface {v0, v4, v3, v6, v5}, Lcom/android/carsdk/protobuf/GeneratedMessageLite$Visitor;->visitInt(ZIZI)I

    move-result v3

    iput v3, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$NaviInfo;->segmentRemainDistUnitDisplay_:I

    .line 4375
    iget-wide v5, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$NaviInfo;->segmentRemainProgress_:D

    cmpl-double v3, v5, p1

    if-eqz v3, :cond_10

    move v4, v2

    goto :goto_11

    :cond_10
    move v4, v1

    :goto_11
    iget-wide v8, p3, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$NaviInfo;->segmentRemainProgress_:D

    cmpl-double v3, v8, p1

    if-eqz v3, :cond_11

    move v7, v2

    goto :goto_12

    :cond_11
    move v7, v1

    :goto_12
    move-object v3, v0

    invoke-interface/range {v3 .. v9}, Lcom/android/carsdk/protobuf/GeneratedMessageLite$Visitor;->visitDouble(ZDZD)D

    move-result-wide v3

    iput-wide v3, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$NaviInfo;->segmentRemainProgress_:D

    .line 4377
    iget-boolean v3, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$NaviInfo;->isTightTurnShow_:Z

    iget-boolean v4, p3, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$NaviInfo;->isTightTurnShow_:Z

    invoke-interface {v0, v3, v3, v4, v4}, Lcom/android/carsdk/protobuf/GeneratedMessageLite$Visitor;->visitBoolean(ZZZZ)Z

    move-result v3

    iput-boolean v3, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$NaviInfo;->isTightTurnShow_:Z

    .line 4379
    iget-wide v5, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$NaviInfo;->nextManeuverID_:D

    cmpl-double v3, v5, p1

    if-eqz v3, :cond_12

    move v4, v2

    goto :goto_13

    :cond_12
    move v4, v1

    :goto_13
    iget-wide v8, p3, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$NaviInfo;->nextManeuverID_:D

    cmpl-double v3, v8, p1

    if-eqz v3, :cond_13

    move v7, v2

    goto :goto_14

    :cond_13
    move v7, v1

    :goto_14
    move-object v3, v0

    invoke-interface/range {v3 .. v9}, Lcom/android/carsdk/protobuf/GeneratedMessageLite$Visitor;->visitDouble(ZDZD)D

    move-result-wide v3

    iput-wide v3, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$NaviInfo;->nextManeuverID_:D

    .line 4381
    iget-wide v5, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$NaviInfo;->nextManeuverDist_:D

    cmpl-double v3, v5, p1

    if-eqz v3, :cond_14

    move v4, v2

    goto :goto_15

    :cond_14
    move v4, v1

    :goto_15
    iget-wide v8, p3, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$NaviInfo;->nextManeuverDist_:D

    cmpl-double p1, v8, p1

    if-eqz p1, :cond_15

    move v7, v2

    goto :goto_16

    :cond_15
    move v7, v1

    :goto_16
    move-object v3, v0

    invoke-interface/range {v3 .. v9}, Lcom/android/carsdk/protobuf/GeneratedMessageLite$Visitor;->visitDouble(ZDZD)D

    move-result-wide p1

    iput-wide p1, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$NaviInfo;->nextManeuverDist_:D

    .line 4383
    iget-object p1, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$NaviInfo;->nextManeuverDistDisplay_:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result p1

    xor-int/2addr p1, v2

    iget-object p2, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$NaviInfo;->nextManeuverDistDisplay_:Ljava/lang/String;

    iget-object v3, p3, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$NaviInfo;->nextManeuverDistDisplay_:Ljava/lang/String;

    .line 4384
    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    xor-int/2addr v3, v2

    iget-object v4, p3, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$NaviInfo;->nextManeuverDistDisplay_:Ljava/lang/String;

    .line 4383
    invoke-interface {v0, p1, p2, v3, v4}, Lcom/android/carsdk/protobuf/GeneratedMessageLite$Visitor;->visitString(ZLjava/lang/String;ZLjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$NaviInfo;->nextManeuverDistDisplay_:Ljava/lang/String;

    .line 4385
    iget p1, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$NaviInfo;->nextManeuverDistUnitDisplay_:I

    if-eqz p1, :cond_16

    move p2, v2

    goto :goto_17

    :cond_16
    move p2, v1

    :goto_17
    iget v3, p3, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$NaviInfo;->nextManeuverDistUnitDisplay_:I

    if-eqz v3, :cond_17

    move v4, v2

    goto :goto_18

    :cond_17
    move v4, v1

    :goto_18
    invoke-interface {v0, p2, p1, v4, v3}, Lcom/android/carsdk/protobuf/GeneratedMessageLite$Visitor;->visitInt(ZIZI)I

    move-result p1

    iput p1, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$NaviInfo;->nextManeuverDistUnitDisplay_:I

    .line 4387
    iget-wide p1, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$NaviInfo;->navigationId_:J

    const-wide/16 v3, 0x0

    cmp-long v5, p1, v3

    if-eqz v5, :cond_18

    move v5, v2

    goto :goto_19

    :cond_18
    move v5, v1

    :goto_19
    iget-wide v6, p3, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$NaviInfo;->navigationId_:J

    cmp-long p3, v6, v3

    if-eqz p3, :cond_19

    move v4, v2

    goto :goto_1a

    :cond_19
    move v4, v1

    :goto_1a
    move v1, v5

    move-wide v2, p1

    move-wide v5, v6

    invoke-interface/range {v0 .. v6}, Lcom/android/carsdk/protobuf/GeneratedMessageLite$Visitor;->visitLong(ZJZJ)J

    move-result-wide p1

    iput-wide p1, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$NaviInfo;->navigationId_:J

    .line 4389
    sget-object p1, Lcom/android/carsdk/protobuf/GeneratedMessageLite$MergeFromVisitor;->INSTANCE:Lcom/android/carsdk/protobuf/GeneratedMessageLite$MergeFromVisitor;

    return-object p0

    .line 4346
    :pswitch_4
    new-instance p1, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$NaviInfo$Builder;

    invoke-direct {p1, v0}, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$NaviInfo$Builder;-><init>(Landroid/car/hardware/xpu/XpuXNgpNaviInfo$1;)V

    return-object p1

    :pswitch_5
    return-object v0

    .line 4340
    :pswitch_6
    sget-object p1, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$NaviInfo;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuXNgpNaviInfo$NaviInfo;

    return-object p1

    .line 4337
    :pswitch_7
    new-instance p1, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$NaviInfo;

    invoke-direct {p1}, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$NaviInfo;-><init>()V

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
        0xa -> :sswitch_12
        0x11 -> :sswitch_11
        0x1a -> :sswitch_10
        0x20 -> :sswitch_f
        0x29 -> :sswitch_e
        0x30 -> :sswitch_d
        0x3a -> :sswitch_c
        0x40 -> :sswitch_b
        0x4a -> :sswitch_a
        0x51 -> :sswitch_9
        0x5a -> :sswitch_8
        0x60 -> :sswitch_7
        0x69 -> :sswitch_6
        0x70 -> :sswitch_5
        0x79 -> :sswitch_4
        0x81 -> :sswitch_3
        0x8a -> :sswitch_2
        0x90 -> :sswitch_1
        0x98 -> :sswitch_0
    .end sparse-switch
.end method

.method public getCurRouteName()Ljava/lang/String;
    .locals 1

    .line 2446
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$NaviInfo;->curRouteName_:Ljava/lang/String;

    return-object v0
.end method

.method public getCurRouteNameBytes()Lcom/android/carsdk/protobuf/ByteString;
    .locals 1

    .line 2457
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$NaviInfo;->curRouteName_:Ljava/lang/String;

    invoke-static {v0}, Lcom/android/carsdk/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/android/carsdk/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getExitInfo()Ljava/lang/String;
    .locals 1

    .line 2718
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$NaviInfo;->exitInfo_:Ljava/lang/String;

    return-object v0
.end method

.method public getExitInfoBytes()Lcom/android/carsdk/protobuf/ByteString;
    .locals 1

    .line 2729
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$NaviInfo;->exitInfo_:Ljava/lang/String;

    invoke-static {v0}, Lcom/android/carsdk/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/android/carsdk/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getExitInfoType()I
    .locals 1

    .line 2784
    iget v0, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$NaviInfo;->exitInfoType_:I

    return v0
.end method

.method public getIsShowExitInfo()Z
    .locals 1

    .line 2683
    iget-boolean v0, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$NaviInfo;->isShowExitInfo_:Z

    return v0
.end method

.method public getIsTightTurnShow()Z
    .locals 1

    .line 3056
    iget-boolean v0, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$NaviInfo;->isTightTurnShow_:Z

    return v0
.end method

.method public getNavigationId()J
    .locals 2

    .line 3262
    iget-wide v0, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$NaviInfo;->navigationId_:J

    return-wide v0
.end method

.method public getNextManeuverDist()D
    .locals 2

    .line 3126
    iget-wide v0, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$NaviInfo;->nextManeuverDist_:D

    return-wide v0
.end method

.method public getNextManeuverDistDisplay()Ljava/lang/String;
    .locals 1

    .line 3161
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$NaviInfo;->nextManeuverDistDisplay_:Ljava/lang/String;

    return-object v0
.end method

.method public getNextManeuverDistDisplayBytes()Lcom/android/carsdk/protobuf/ByteString;
    .locals 1

    .line 3172
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$NaviInfo;->nextManeuverDistDisplay_:Ljava/lang/String;

    invoke-static {v0}, Lcom/android/carsdk/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/android/carsdk/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getNextManeuverDistUnitDisplay()I
    .locals 1

    .line 3227
    iget v0, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$NaviInfo;->nextManeuverDistUnitDisplay_:I

    return v0
.end method

.method public getNextManeuverID()D
    .locals 2

    .line 3091
    iget-wide v0, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$NaviInfo;->nextManeuverID_:D

    return-wide v0
.end method

.method public getNextRouteName()Ljava/lang/String;
    .locals 1

    .line 2819
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$NaviInfo;->nextRouteName_:Ljava/lang/String;

    return-object v0
.end method

.method public getNextRouteNameBytes()Lcom/android/carsdk/protobuf/ByteString;
    .locals 1

    .line 2830
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$NaviInfo;->nextRouteName_:Ljava/lang/String;

    invoke-static {v0}, Lcom/android/carsdk/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/android/carsdk/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getRouteRemainDist()D
    .locals 2

    .line 2512
    iget-wide v0, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$NaviInfo;->routeRemainDist_:D

    return-wide v0
.end method

.method public getRouteRemainDistDisplay()Ljava/lang/String;
    .locals 1

    .line 2547
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$NaviInfo;->routeRemainDistDisplay_:Ljava/lang/String;

    return-object v0
.end method

.method public getRouteRemainDistDisplayBytes()Lcom/android/carsdk/protobuf/ByteString;
    .locals 1

    .line 2558
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$NaviInfo;->routeRemainDistDisplay_:Ljava/lang/String;

    invoke-static {v0}, Lcom/android/carsdk/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/android/carsdk/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getRouteRemainDistUnitDisplay()I
    .locals 1

    .line 2613
    iget v0, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$NaviInfo;->routeRemainDistUnitDisplay_:I

    return v0
.end method

.method public getRouteRemainTime()D
    .locals 2

    .line 2648
    iget-wide v0, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$NaviInfo;->routeRemainTime_:D

    return-wide v0
.end method

.method public getSegmentRemainDist()D
    .locals 2

    .line 2885
    iget-wide v0, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$NaviInfo;->segmentRemainDist_:D

    return-wide v0
.end method

.method public getSegmentRemainDistDisplay()Ljava/lang/String;
    .locals 1

    .line 2920
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$NaviInfo;->segmentRemainDistDisplay_:Ljava/lang/String;

    return-object v0
.end method

.method public getSegmentRemainDistDisplayBytes()Lcom/android/carsdk/protobuf/ByteString;
    .locals 1

    .line 2931
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$NaviInfo;->segmentRemainDistDisplay_:Ljava/lang/String;

    invoke-static {v0}, Lcom/android/carsdk/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/android/carsdk/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getSegmentRemainDistUnitDisplay()I
    .locals 1

    .line 2986
    iget v0, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$NaviInfo;->segmentRemainDistUnitDisplay_:I

    return v0
.end method

.method public getSegmentRemainProgress()D
    .locals 2

    .line 3021
    iget-wide v0, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$NaviInfo;->segmentRemainProgress_:D

    return-wide v0
.end method

.method public getSerializedSize()I
    .locals 6

    .line 3349
    iget v0, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$NaviInfo;->memoizedSerializedSize:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    return v0

    :cond_0
    const/4 v0, 0x0

    .line 3353
    iget-object v1, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$NaviInfo;->curRouteName_:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    const/4 v1, 0x1

    .line 3355
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$NaviInfo;->getCurRouteName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/carsdk/protobuf/CodedOutputStream;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 3357
    :cond_1
    iget-wide v1, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$NaviInfo;->routeRemainDist_:D

    const-wide/16 v3, 0x0

    cmpl-double v5, v1, v3

    if-eqz v5, :cond_2

    const/4 v5, 0x2

    .line 3359
    invoke-static {v5, v1, v2}, Lcom/android/carsdk/protobuf/CodedOutputStream;->computeDoubleSize(ID)I

    move-result v1

    add-int/2addr v0, v1

    .line 3361
    :cond_2
    iget-object v1, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$NaviInfo;->routeRemainDistDisplay_:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_3

    const/4 v1, 0x3

    .line 3363
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$NaviInfo;->getRouteRemainDistDisplay()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/carsdk/protobuf/CodedOutputStream;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 3365
    :cond_3
    iget v1, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$NaviInfo;->routeRemainDistUnitDisplay_:I

    if-eqz v1, :cond_4

    const/4 v2, 0x4

    .line 3367
    invoke-static {v2, v1}, Lcom/android/carsdk/protobuf/CodedOutputStream;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 3369
    :cond_4
    iget-wide v1, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$NaviInfo;->routeRemainTime_:D

    cmpl-double v5, v1, v3

    if-eqz v5, :cond_5

    const/4 v5, 0x5

    .line 3371
    invoke-static {v5, v1, v2}, Lcom/android/carsdk/protobuf/CodedOutputStream;->computeDoubleSize(ID)I

    move-result v1

    add-int/2addr v0, v1

    .line 3373
    :cond_5
    iget-boolean v1, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$NaviInfo;->isShowExitInfo_:Z

    if-eqz v1, :cond_6

    const/4 v2, 0x6

    .line 3375
    invoke-static {v2, v1}, Lcom/android/carsdk/protobuf/CodedOutputStream;->computeBoolSize(IZ)I

    move-result v1

    add-int/2addr v0, v1

    .line 3377
    :cond_6
    iget-object v1, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$NaviInfo;->exitInfo_:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_7

    const/4 v1, 0x7

    .line 3379
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$NaviInfo;->getExitInfo()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/carsdk/protobuf/CodedOutputStream;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 3381
    :cond_7
    iget v1, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$NaviInfo;->exitInfoType_:I

    if-eqz v1, :cond_8

    const/16 v2, 0x8

    .line 3383
    invoke-static {v2, v1}, Lcom/android/carsdk/protobuf/CodedOutputStream;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 3385
    :cond_8
    iget-object v1, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$NaviInfo;->nextRouteName_:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_9

    const/16 v1, 0x9

    .line 3387
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$NaviInfo;->getNextRouteName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/carsdk/protobuf/CodedOutputStream;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 3389
    :cond_9
    iget-wide v1, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$NaviInfo;->segmentRemainDist_:D

    cmpl-double v5, v1, v3

    if-eqz v5, :cond_a

    const/16 v5, 0xa

    .line 3391
    invoke-static {v5, v1, v2}, Lcom/android/carsdk/protobuf/CodedOutputStream;->computeDoubleSize(ID)I

    move-result v1

    add-int/2addr v0, v1

    .line 3393
    :cond_a
    iget-object v1, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$NaviInfo;->segmentRemainDistDisplay_:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_b

    const/16 v1, 0xb

    .line 3395
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$NaviInfo;->getSegmentRemainDistDisplay()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/carsdk/protobuf/CodedOutputStream;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 3397
    :cond_b
    iget v1, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$NaviInfo;->segmentRemainDistUnitDisplay_:I

    if-eqz v1, :cond_c

    const/16 v2, 0xc

    .line 3399
    invoke-static {v2, v1}, Lcom/android/carsdk/protobuf/CodedOutputStream;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 3401
    :cond_c
    iget-wide v1, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$NaviInfo;->segmentRemainProgress_:D

    cmpl-double v5, v1, v3

    if-eqz v5, :cond_d

    const/16 v5, 0xd

    .line 3403
    invoke-static {v5, v1, v2}, Lcom/android/carsdk/protobuf/CodedOutputStream;->computeDoubleSize(ID)I

    move-result v1

    add-int/2addr v0, v1

    .line 3405
    :cond_d
    iget-boolean v1, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$NaviInfo;->isTightTurnShow_:Z

    if-eqz v1, :cond_e

    const/16 v2, 0xe

    .line 3407
    invoke-static {v2, v1}, Lcom/android/carsdk/protobuf/CodedOutputStream;->computeBoolSize(IZ)I

    move-result v1

    add-int/2addr v0, v1

    .line 3409
    :cond_e
    iget-wide v1, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$NaviInfo;->nextManeuverID_:D

    cmpl-double v5, v1, v3

    if-eqz v5, :cond_f

    const/16 v5, 0xf

    .line 3411
    invoke-static {v5, v1, v2}, Lcom/android/carsdk/protobuf/CodedOutputStream;->computeDoubleSize(ID)I

    move-result v1

    add-int/2addr v0, v1

    .line 3413
    :cond_f
    iget-wide v1, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$NaviInfo;->nextManeuverDist_:D

    cmpl-double v3, v1, v3

    if-eqz v3, :cond_10

    const/16 v3, 0x10

    .line 3415
    invoke-static {v3, v1, v2}, Lcom/android/carsdk/protobuf/CodedOutputStream;->computeDoubleSize(ID)I

    move-result v1

    add-int/2addr v0, v1

    .line 3417
    :cond_10
    iget-object v1, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$NaviInfo;->nextManeuverDistDisplay_:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_11

    const/16 v1, 0x11

    .line 3419
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$NaviInfo;->getNextManeuverDistDisplay()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/carsdk/protobuf/CodedOutputStream;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 3421
    :cond_11
    iget v1, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$NaviInfo;->nextManeuverDistUnitDisplay_:I

    if-eqz v1, :cond_12

    const/16 v2, 0x12

    .line 3423
    invoke-static {v2, v1}, Lcom/android/carsdk/protobuf/CodedOutputStream;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 3425
    :cond_12
    iget-wide v1, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$NaviInfo;->navigationId_:J

    const-wide/16 v3, 0x0

    cmp-long v3, v1, v3

    if-eqz v3, :cond_13

    const/16 v3, 0x13

    .line 3427
    invoke-static {v3, v1, v2}, Lcom/android/carsdk/protobuf/CodedOutputStream;->computeUInt64Size(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 3429
    :cond_13
    iput v0, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$NaviInfo;->memoizedSerializedSize:I

    return v0
.end method

.method public writeTo(Lcom/android/carsdk/protobuf/CodedOutputStream;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3289
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$NaviInfo;->curRouteName_:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 3290
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$NaviInfo;->getCurRouteName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/android/carsdk/protobuf/CodedOutputStream;->writeString(ILjava/lang/String;)V

    .line 3292
    :cond_0
    iget-wide v0, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$NaviInfo;->routeRemainDist_:D

    const-wide/16 v2, 0x0

    cmpl-double v4, v0, v2

    if-eqz v4, :cond_1

    const/4 v4, 0x2

    .line 3293
    invoke-virtual {p1, v4, v0, v1}, Lcom/android/carsdk/protobuf/CodedOutputStream;->writeDouble(ID)V

    .line 3295
    :cond_1
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$NaviInfo;->routeRemainDistDisplay_:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    const/4 v0, 0x3

    .line 3296
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$NaviInfo;->getRouteRemainDistDisplay()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/android/carsdk/protobuf/CodedOutputStream;->writeString(ILjava/lang/String;)V

    .line 3298
    :cond_2
    iget v0, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$NaviInfo;->routeRemainDistUnitDisplay_:I

    if-eqz v0, :cond_3

    const/4 v1, 0x4

    .line 3299
    invoke-virtual {p1, v1, v0}, Lcom/android/carsdk/protobuf/CodedOutputStream;->writeInt32(II)V

    .line 3301
    :cond_3
    iget-wide v0, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$NaviInfo;->routeRemainTime_:D

    cmpl-double v4, v0, v2

    if-eqz v4, :cond_4

    const/4 v4, 0x5

    .line 3302
    invoke-virtual {p1, v4, v0, v1}, Lcom/android/carsdk/protobuf/CodedOutputStream;->writeDouble(ID)V

    .line 3304
    :cond_4
    iget-boolean v0, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$NaviInfo;->isShowExitInfo_:Z

    if-eqz v0, :cond_5

    const/4 v1, 0x6

    .line 3305
    invoke-virtual {p1, v1, v0}, Lcom/android/carsdk/protobuf/CodedOutputStream;->writeBool(IZ)V

    .line 3307
    :cond_5
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$NaviInfo;->exitInfo_:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_6

    const/4 v0, 0x7

    .line 3308
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$NaviInfo;->getExitInfo()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/android/carsdk/protobuf/CodedOutputStream;->writeString(ILjava/lang/String;)V

    .line 3310
    :cond_6
    iget v0, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$NaviInfo;->exitInfoType_:I

    if-eqz v0, :cond_7

    const/16 v1, 0x8

    .line 3311
    invoke-virtual {p1, v1, v0}, Lcom/android/carsdk/protobuf/CodedOutputStream;->writeInt32(II)V

    .line 3313
    :cond_7
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$NaviInfo;->nextRouteName_:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_8

    const/16 v0, 0x9

    .line 3314
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$NaviInfo;->getNextRouteName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/android/carsdk/protobuf/CodedOutputStream;->writeString(ILjava/lang/String;)V

    .line 3316
    :cond_8
    iget-wide v0, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$NaviInfo;->segmentRemainDist_:D

    cmpl-double v4, v0, v2

    if-eqz v4, :cond_9

    const/16 v4, 0xa

    .line 3317
    invoke-virtual {p1, v4, v0, v1}, Lcom/android/carsdk/protobuf/CodedOutputStream;->writeDouble(ID)V

    .line 3319
    :cond_9
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$NaviInfo;->segmentRemainDistDisplay_:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_a

    const/16 v0, 0xb

    .line 3320
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$NaviInfo;->getSegmentRemainDistDisplay()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/android/carsdk/protobuf/CodedOutputStream;->writeString(ILjava/lang/String;)V

    .line 3322
    :cond_a
    iget v0, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$NaviInfo;->segmentRemainDistUnitDisplay_:I

    if-eqz v0, :cond_b

    const/16 v1, 0xc

    .line 3323
    invoke-virtual {p1, v1, v0}, Lcom/android/carsdk/protobuf/CodedOutputStream;->writeInt32(II)V

    .line 3325
    :cond_b
    iget-wide v0, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$NaviInfo;->segmentRemainProgress_:D

    cmpl-double v4, v0, v2

    if-eqz v4, :cond_c

    const/16 v4, 0xd

    .line 3326
    invoke-virtual {p1, v4, v0, v1}, Lcom/android/carsdk/protobuf/CodedOutputStream;->writeDouble(ID)V

    .line 3328
    :cond_c
    iget-boolean v0, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$NaviInfo;->isTightTurnShow_:Z

    if-eqz v0, :cond_d

    const/16 v1, 0xe

    .line 3329
    invoke-virtual {p1, v1, v0}, Lcom/android/carsdk/protobuf/CodedOutputStream;->writeBool(IZ)V

    .line 3331
    :cond_d
    iget-wide v0, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$NaviInfo;->nextManeuverID_:D

    cmpl-double v4, v0, v2

    if-eqz v4, :cond_e

    const/16 v4, 0xf

    .line 3332
    invoke-virtual {p1, v4, v0, v1}, Lcom/android/carsdk/protobuf/CodedOutputStream;->writeDouble(ID)V

    .line 3334
    :cond_e
    iget-wide v0, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$NaviInfo;->nextManeuverDist_:D

    cmpl-double v2, v0, v2

    if-eqz v2, :cond_f

    const/16 v2, 0x10

    .line 3335
    invoke-virtual {p1, v2, v0, v1}, Lcom/android/carsdk/protobuf/CodedOutputStream;->writeDouble(ID)V

    .line 3337
    :cond_f
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$NaviInfo;->nextManeuverDistDisplay_:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_10

    const/16 v0, 0x11

    .line 3338
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$NaviInfo;->getNextManeuverDistDisplay()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/android/carsdk/protobuf/CodedOutputStream;->writeString(ILjava/lang/String;)V

    .line 3340
    :cond_10
    iget v0, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$NaviInfo;->nextManeuverDistUnitDisplay_:I

    if-eqz v0, :cond_11

    const/16 v1, 0x12

    .line 3341
    invoke-virtual {p1, v1, v0}, Lcom/android/carsdk/protobuf/CodedOutputStream;->writeInt32(II)V

    .line 3343
    :cond_11
    iget-wide v0, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$NaviInfo;->navigationId_:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-eqz v2, :cond_12

    const/16 v2, 0x13

    .line 3344
    invoke-virtual {p1, v2, v0, v1}, Lcom/android/carsdk/protobuf/CodedOutputStream;->writeUInt64(IJ)V

    :cond_12
    return-void
.end method
