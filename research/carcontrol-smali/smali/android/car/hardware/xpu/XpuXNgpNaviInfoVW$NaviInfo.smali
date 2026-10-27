.class public final Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$NaviInfo;
.super Lcom/android/carsdk/protobuf/GeneratedMessageLite;
.source "XpuXNgpNaviInfoVW.java"

# interfaces
.implements Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$NaviInfoOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "NaviInfo"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$NaviInfo$Builder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/carsdk/protobuf/GeneratedMessageLite<",
        "Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$NaviInfo;",
        "Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$NaviInfo$Builder;",
        ">;",
        "Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$NaviInfoOrBuilder;"
    }
.end annotation


# static fields
.field public static final CURLINKIDX_FIELD_NUMBER:I = 0x15

.field public static final CURPOINTIDX_FIELD_NUMBER:I = 0x16

.field public static final CURROUTENAME_FIELD_NUMBER:I = 0x1

.field public static final CURSEGIDX_FIELD_NUMBER:I = 0x14

.field private static final DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$NaviInfo;

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
            "Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$NaviInfo;",
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
.field private curLinkIdx_:I

.field private curPointIdx_:I

.field private curRouteName_:Ljava/lang/String;

.field private curSegIdx_:I

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

    .line 4827
    new-instance v0, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$NaviInfo;

    invoke-direct {v0}, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$NaviInfo;-><init>()V

    sput-object v0, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$NaviInfo;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$NaviInfo;

    .line 4828
    invoke-virtual {v0}, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$NaviInfo;->makeImmutable()V

    return-void
.end method

.method private constructor <init>()V
    .locals 4

    .line 2442
    invoke-direct {p0}, Lcom/android/carsdk/protobuf/GeneratedMessageLite;-><init>()V

    const-string v0, ""

    .line 2443
    iput-object v0, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$NaviInfo;->curRouteName_:Ljava/lang/String;

    const-wide/16 v1, 0x0

    .line 2444
    iput-wide v1, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$NaviInfo;->routeRemainDist_:D

    .line 2445
    iput-object v0, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$NaviInfo;->routeRemainDistDisplay_:Ljava/lang/String;

    const/4 v3, 0x0

    .line 2446
    iput v3, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$NaviInfo;->routeRemainDistUnitDisplay_:I

    .line 2447
    iput-wide v1, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$NaviInfo;->routeRemainTime_:D

    .line 2448
    iput-boolean v3, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$NaviInfo;->isShowExitInfo_:Z

    .line 2449
    iput-object v0, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$NaviInfo;->exitInfo_:Ljava/lang/String;

    .line 2450
    iput v3, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$NaviInfo;->exitInfoType_:I

    .line 2451
    iput-object v0, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$NaviInfo;->nextRouteName_:Ljava/lang/String;

    .line 2452
    iput-wide v1, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$NaviInfo;->segmentRemainDist_:D

    .line 2453
    iput-object v0, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$NaviInfo;->segmentRemainDistDisplay_:Ljava/lang/String;

    .line 2454
    iput v3, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$NaviInfo;->segmentRemainDistUnitDisplay_:I

    .line 2455
    iput-wide v1, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$NaviInfo;->segmentRemainProgress_:D

    .line 2456
    iput-boolean v3, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$NaviInfo;->isTightTurnShow_:Z

    .line 2457
    iput-wide v1, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$NaviInfo;->nextManeuverID_:D

    .line 2458
    iput-wide v1, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$NaviInfo;->nextManeuverDist_:D

    .line 2459
    iput-object v0, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$NaviInfo;->nextManeuverDistDisplay_:Ljava/lang/String;

    .line 2460
    iput v3, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$NaviInfo;->nextManeuverDistUnitDisplay_:I

    const-wide/16 v0, 0x0

    .line 2461
    iput-wide v0, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$NaviInfo;->navigationId_:J

    .line 2462
    iput v3, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$NaviInfo;->curSegIdx_:I

    .line 2463
    iput v3, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$NaviInfo;->curLinkIdx_:I

    .line 2464
    iput v3, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$NaviInfo;->curPointIdx_:I

    return-void
.end method

.method static synthetic access$000()Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$NaviInfo;
    .locals 1

    .line 2437
    sget-object v0, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$NaviInfo;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$NaviInfo;

    return-object v0
.end method

.method static synthetic access$100(Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$NaviInfo;Ljava/lang/String;)V
    .locals 0

    .line 2437
    invoke-direct {p0, p1}, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$NaviInfo;->setCurRouteName(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1000(Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$NaviInfo;)V
    .locals 0

    .line 2437
    invoke-direct {p0}, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$NaviInfo;->clearRouteRemainDistUnitDisplay()V

    return-void
.end method

.method static synthetic access$1100(Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$NaviInfo;D)V
    .locals 0

    .line 2437
    invoke-direct {p0, p1, p2}, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$NaviInfo;->setRouteRemainTime(D)V

    return-void
.end method

.method static synthetic access$1200(Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$NaviInfo;)V
    .locals 0

    .line 2437
    invoke-direct {p0}, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$NaviInfo;->clearRouteRemainTime()V

    return-void
.end method

.method static synthetic access$1300(Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$NaviInfo;Z)V
    .locals 0

    .line 2437
    invoke-direct {p0, p1}, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$NaviInfo;->setIsShowExitInfo(Z)V

    return-void
.end method

.method static synthetic access$1400(Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$NaviInfo;)V
    .locals 0

    .line 2437
    invoke-direct {p0}, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$NaviInfo;->clearIsShowExitInfo()V

    return-void
.end method

.method static synthetic access$1500(Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$NaviInfo;Ljava/lang/String;)V
    .locals 0

    .line 2437
    invoke-direct {p0, p1}, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$NaviInfo;->setExitInfo(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1600(Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$NaviInfo;)V
    .locals 0

    .line 2437
    invoke-direct {p0}, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$NaviInfo;->clearExitInfo()V

    return-void
.end method

.method static synthetic access$1700(Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$NaviInfo;Lcom/android/carsdk/protobuf/ByteString;)V
    .locals 0

    .line 2437
    invoke-direct {p0, p1}, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$NaviInfo;->setExitInfoBytes(Lcom/android/carsdk/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$1800(Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$NaviInfo;I)V
    .locals 0

    .line 2437
    invoke-direct {p0, p1}, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$NaviInfo;->setExitInfoType(I)V

    return-void
.end method

.method static synthetic access$1900(Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$NaviInfo;)V
    .locals 0

    .line 2437
    invoke-direct {p0}, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$NaviInfo;->clearExitInfoType()V

    return-void
.end method

.method static synthetic access$200(Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$NaviInfo;)V
    .locals 0

    .line 2437
    invoke-direct {p0}, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$NaviInfo;->clearCurRouteName()V

    return-void
.end method

.method static synthetic access$2000(Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$NaviInfo;Ljava/lang/String;)V
    .locals 0

    .line 2437
    invoke-direct {p0, p1}, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$NaviInfo;->setNextRouteName(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$2100(Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$NaviInfo;)V
    .locals 0

    .line 2437
    invoke-direct {p0}, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$NaviInfo;->clearNextRouteName()V

    return-void
.end method

.method static synthetic access$2200(Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$NaviInfo;Lcom/android/carsdk/protobuf/ByteString;)V
    .locals 0

    .line 2437
    invoke-direct {p0, p1}, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$NaviInfo;->setNextRouteNameBytes(Lcom/android/carsdk/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$2300(Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$NaviInfo;D)V
    .locals 0

    .line 2437
    invoke-direct {p0, p1, p2}, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$NaviInfo;->setSegmentRemainDist(D)V

    return-void
.end method

.method static synthetic access$2400(Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$NaviInfo;)V
    .locals 0

    .line 2437
    invoke-direct {p0}, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$NaviInfo;->clearSegmentRemainDist()V

    return-void
.end method

.method static synthetic access$2500(Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$NaviInfo;Ljava/lang/String;)V
    .locals 0

    .line 2437
    invoke-direct {p0, p1}, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$NaviInfo;->setSegmentRemainDistDisplay(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$2600(Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$NaviInfo;)V
    .locals 0

    .line 2437
    invoke-direct {p0}, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$NaviInfo;->clearSegmentRemainDistDisplay()V

    return-void
.end method

.method static synthetic access$2700(Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$NaviInfo;Lcom/android/carsdk/protobuf/ByteString;)V
    .locals 0

    .line 2437
    invoke-direct {p0, p1}, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$NaviInfo;->setSegmentRemainDistDisplayBytes(Lcom/android/carsdk/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$2800(Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$NaviInfo;I)V
    .locals 0

    .line 2437
    invoke-direct {p0, p1}, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$NaviInfo;->setSegmentRemainDistUnitDisplay(I)V

    return-void
.end method

.method static synthetic access$2900(Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$NaviInfo;)V
    .locals 0

    .line 2437
    invoke-direct {p0}, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$NaviInfo;->clearSegmentRemainDistUnitDisplay()V

    return-void
.end method

.method static synthetic access$300(Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$NaviInfo;Lcom/android/carsdk/protobuf/ByteString;)V
    .locals 0

    .line 2437
    invoke-direct {p0, p1}, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$NaviInfo;->setCurRouteNameBytes(Lcom/android/carsdk/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$3000(Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$NaviInfo;D)V
    .locals 0

    .line 2437
    invoke-direct {p0, p1, p2}, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$NaviInfo;->setSegmentRemainProgress(D)V

    return-void
.end method

.method static synthetic access$3100(Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$NaviInfo;)V
    .locals 0

    .line 2437
    invoke-direct {p0}, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$NaviInfo;->clearSegmentRemainProgress()V

    return-void
.end method

.method static synthetic access$3200(Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$NaviInfo;Z)V
    .locals 0

    .line 2437
    invoke-direct {p0, p1}, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$NaviInfo;->setIsTightTurnShow(Z)V

    return-void
.end method

.method static synthetic access$3300(Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$NaviInfo;)V
    .locals 0

    .line 2437
    invoke-direct {p0}, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$NaviInfo;->clearIsTightTurnShow()V

    return-void
.end method

.method static synthetic access$3400(Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$NaviInfo;D)V
    .locals 0

    .line 2437
    invoke-direct {p0, p1, p2}, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$NaviInfo;->setNextManeuverID(D)V

    return-void
.end method

.method static synthetic access$3500(Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$NaviInfo;)V
    .locals 0

    .line 2437
    invoke-direct {p0}, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$NaviInfo;->clearNextManeuverID()V

    return-void
.end method

.method static synthetic access$3600(Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$NaviInfo;D)V
    .locals 0

    .line 2437
    invoke-direct {p0, p1, p2}, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$NaviInfo;->setNextManeuverDist(D)V

    return-void
.end method

.method static synthetic access$3700(Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$NaviInfo;)V
    .locals 0

    .line 2437
    invoke-direct {p0}, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$NaviInfo;->clearNextManeuverDist()V

    return-void
.end method

.method static synthetic access$3800(Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$NaviInfo;Ljava/lang/String;)V
    .locals 0

    .line 2437
    invoke-direct {p0, p1}, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$NaviInfo;->setNextManeuverDistDisplay(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$3900(Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$NaviInfo;)V
    .locals 0

    .line 2437
    invoke-direct {p0}, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$NaviInfo;->clearNextManeuverDistDisplay()V

    return-void
.end method

.method static synthetic access$400(Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$NaviInfo;D)V
    .locals 0

    .line 2437
    invoke-direct {p0, p1, p2}, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$NaviInfo;->setRouteRemainDist(D)V

    return-void
.end method

.method static synthetic access$4000(Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$NaviInfo;Lcom/android/carsdk/protobuf/ByteString;)V
    .locals 0

    .line 2437
    invoke-direct {p0, p1}, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$NaviInfo;->setNextManeuverDistDisplayBytes(Lcom/android/carsdk/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$4100(Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$NaviInfo;I)V
    .locals 0

    .line 2437
    invoke-direct {p0, p1}, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$NaviInfo;->setNextManeuverDistUnitDisplay(I)V

    return-void
.end method

.method static synthetic access$4200(Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$NaviInfo;)V
    .locals 0

    .line 2437
    invoke-direct {p0}, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$NaviInfo;->clearNextManeuverDistUnitDisplay()V

    return-void
.end method

.method static synthetic access$4300(Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$NaviInfo;J)V
    .locals 0

    .line 2437
    invoke-direct {p0, p1, p2}, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$NaviInfo;->setNavigationId(J)V

    return-void
.end method

.method static synthetic access$4400(Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$NaviInfo;)V
    .locals 0

    .line 2437
    invoke-direct {p0}, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$NaviInfo;->clearNavigationId()V

    return-void
.end method

.method static synthetic access$4500(Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$NaviInfo;I)V
    .locals 0

    .line 2437
    invoke-direct {p0, p1}, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$NaviInfo;->setCurSegIdx(I)V

    return-void
.end method

.method static synthetic access$4600(Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$NaviInfo;)V
    .locals 0

    .line 2437
    invoke-direct {p0}, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$NaviInfo;->clearCurSegIdx()V

    return-void
.end method

.method static synthetic access$4700(Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$NaviInfo;I)V
    .locals 0

    .line 2437
    invoke-direct {p0, p1}, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$NaviInfo;->setCurLinkIdx(I)V

    return-void
.end method

.method static synthetic access$4800(Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$NaviInfo;)V
    .locals 0

    .line 2437
    invoke-direct {p0}, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$NaviInfo;->clearCurLinkIdx()V

    return-void
.end method

.method static synthetic access$4900(Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$NaviInfo;I)V
    .locals 0

    .line 2437
    invoke-direct {p0, p1}, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$NaviInfo;->setCurPointIdx(I)V

    return-void
.end method

.method static synthetic access$500(Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$NaviInfo;)V
    .locals 0

    .line 2437
    invoke-direct {p0}, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$NaviInfo;->clearRouteRemainDist()V

    return-void
.end method

.method static synthetic access$5000(Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$NaviInfo;)V
    .locals 0

    .line 2437
    invoke-direct {p0}, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$NaviInfo;->clearCurPointIdx()V

    return-void
.end method

.method static synthetic access$600(Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$NaviInfo;Ljava/lang/String;)V
    .locals 0

    .line 2437
    invoke-direct {p0, p1}, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$NaviInfo;->setRouteRemainDistDisplay(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$700(Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$NaviInfo;)V
    .locals 0

    .line 2437
    invoke-direct {p0}, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$NaviInfo;->clearRouteRemainDistDisplay()V

    return-void
.end method

.method static synthetic access$800(Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$NaviInfo;Lcom/android/carsdk/protobuf/ByteString;)V
    .locals 0

    .line 2437
    invoke-direct {p0, p1}, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$NaviInfo;->setRouteRemainDistDisplayBytes(Lcom/android/carsdk/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$900(Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$NaviInfo;I)V
    .locals 0

    .line 2437
    invoke-direct {p0, p1}, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$NaviInfo;->setRouteRemainDistUnitDisplay(I)V

    return-void
.end method

.method private clearCurLinkIdx()V
    .locals 1

    const/4 v0, 0x0

    .line 3384
    iput v0, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$NaviInfo;->curLinkIdx_:I

    return-void
.end method

.method private clearCurPointIdx()V
    .locals 1

    const/4 v0, 0x0

    .line 3419
    iput v0, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$NaviInfo;->curPointIdx_:I

    return-void
.end method

.method private clearCurRouteName()V
    .locals 1

    .line 2513
    invoke-static {}, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$NaviInfo;->getDefaultInstance()Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$NaviInfo;

    move-result-object v0

    invoke-virtual {v0}, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$NaviInfo;->getCurRouteName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$NaviInfo;->curRouteName_:Ljava/lang/String;

    return-void
.end method

.method private clearCurSegIdx()V
    .locals 1

    const/4 v0, 0x0

    .line 3349
    iput v0, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$NaviInfo;->curSegIdx_:I

    return-void
.end method

.method private clearExitInfo()V
    .locals 1

    .line 2785
    invoke-static {}, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$NaviInfo;->getDefaultInstance()Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$NaviInfo;

    move-result-object v0

    invoke-virtual {v0}, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$NaviInfo;->getExitInfo()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$NaviInfo;->exitInfo_:Ljava/lang/String;

    return-void
.end method

.method private clearExitInfoType()V
    .locals 1

    const/4 v0, 0x0

    .line 2836
    iput v0, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$NaviInfo;->exitInfoType_:I

    return-void
.end method

.method private clearIsShowExitInfo()V
    .locals 1

    const/4 v0, 0x0

    .line 2735
    iput-boolean v0, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$NaviInfo;->isShowExitInfo_:Z

    return-void
.end method

.method private clearIsTightTurnShow()V
    .locals 1

    const/4 v0, 0x0

    .line 3108
    iput-boolean v0, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$NaviInfo;->isTightTurnShow_:Z

    return-void
.end method

.method private clearNavigationId()V
    .locals 2

    const-wide/16 v0, 0x0

    .line 3314
    iput-wide v0, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$NaviInfo;->navigationId_:J

    return-void
.end method

.method private clearNextManeuverDist()V
    .locals 2

    const-wide/16 v0, 0x0

    .line 3178
    iput-wide v0, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$NaviInfo;->nextManeuverDist_:D

    return-void
.end method

.method private clearNextManeuverDistDisplay()V
    .locals 1

    .line 3228
    invoke-static {}, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$NaviInfo;->getDefaultInstance()Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$NaviInfo;

    move-result-object v0

    invoke-virtual {v0}, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$NaviInfo;->getNextManeuverDistDisplay()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$NaviInfo;->nextManeuverDistDisplay_:Ljava/lang/String;

    return-void
.end method

.method private clearNextManeuverDistUnitDisplay()V
    .locals 1

    const/4 v0, 0x0

    .line 3279
    iput v0, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$NaviInfo;->nextManeuverDistUnitDisplay_:I

    return-void
.end method

.method private clearNextManeuverID()V
    .locals 2

    const-wide/16 v0, 0x0

    .line 3143
    iput-wide v0, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$NaviInfo;->nextManeuverID_:D

    return-void
.end method

.method private clearNextRouteName()V
    .locals 1

    .line 2886
    invoke-static {}, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$NaviInfo;->getDefaultInstance()Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$NaviInfo;

    move-result-object v0

    invoke-virtual {v0}, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$NaviInfo;->getNextRouteName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$NaviInfo;->nextRouteName_:Ljava/lang/String;

    return-void
.end method

.method private clearRouteRemainDist()V
    .locals 2

    const-wide/16 v0, 0x0

    .line 2564
    iput-wide v0, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$NaviInfo;->routeRemainDist_:D

    return-void
.end method

.method private clearRouteRemainDistDisplay()V
    .locals 1

    .line 2614
    invoke-static {}, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$NaviInfo;->getDefaultInstance()Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$NaviInfo;

    move-result-object v0

    invoke-virtual {v0}, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$NaviInfo;->getRouteRemainDistDisplay()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$NaviInfo;->routeRemainDistDisplay_:Ljava/lang/String;

    return-void
.end method

.method private clearRouteRemainDistUnitDisplay()V
    .locals 1

    const/4 v0, 0x0

    .line 2665
    iput v0, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$NaviInfo;->routeRemainDistUnitDisplay_:I

    return-void
.end method

.method private clearRouteRemainTime()V
    .locals 2

    const-wide/16 v0, 0x0

    .line 2700
    iput-wide v0, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$NaviInfo;->routeRemainTime_:D

    return-void
.end method

.method private clearSegmentRemainDist()V
    .locals 2

    const-wide/16 v0, 0x0

    .line 2937
    iput-wide v0, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$NaviInfo;->segmentRemainDist_:D

    return-void
.end method

.method private clearSegmentRemainDistDisplay()V
    .locals 1

    .line 2987
    invoke-static {}, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$NaviInfo;->getDefaultInstance()Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$NaviInfo;

    move-result-object v0

    invoke-virtual {v0}, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$NaviInfo;->getSegmentRemainDistDisplay()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$NaviInfo;->segmentRemainDistDisplay_:Ljava/lang/String;

    return-void
.end method

.method private clearSegmentRemainDistUnitDisplay()V
    .locals 1

    const/4 v0, 0x0

    .line 3038
    iput v0, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$NaviInfo;->segmentRemainDistUnitDisplay_:I

    return-void
.end method

.method private clearSegmentRemainProgress()V
    .locals 2

    const-wide/16 v0, 0x0

    .line 3073
    iput-wide v0, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$NaviInfo;->segmentRemainProgress_:D

    return-void
.end method

.method public static getDefaultInstance()Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$NaviInfo;
    .locals 1

    .line 4832
    sget-object v0, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$NaviInfo;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$NaviInfo;

    return-object v0
.end method

.method public static newBuilder()Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$NaviInfo$Builder;
    .locals 1

    .line 3651
    sget-object v0, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$NaviInfo;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$NaviInfo;

    invoke-virtual {v0}, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$NaviInfo;->toBuilder()Lcom/android/carsdk/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$NaviInfo$Builder;

    return-object v0
.end method

.method public static newBuilder(Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$NaviInfo;)Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$NaviInfo$Builder;
    .locals 1

    .line 3654
    sget-object v0, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$NaviInfo;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$NaviInfo;

    invoke-virtual {v0}, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$NaviInfo;->toBuilder()Lcom/android/carsdk/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$NaviInfo$Builder;

    invoke-virtual {v0, p0}, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$NaviInfo$Builder;->mergeFrom(Lcom/android/carsdk/protobuf/GeneratedMessageLite;)Lcom/android/carsdk/protobuf/GeneratedMessageLite$Builder;

    move-result-object p0

    check-cast p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$NaviInfo$Builder;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$NaviInfo;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3628
    sget-object v0, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$NaviInfo;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$NaviInfo;

    invoke-static {v0, p0}, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$NaviInfo;->parseDelimitedFrom(Lcom/android/carsdk/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$NaviInfo;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/android/carsdk/protobuf/ExtensionRegistryLite;)Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$NaviInfo;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3634
    sget-object v0, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$NaviInfo;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$NaviInfo;

    invoke-static {v0, p0, p1}, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$NaviInfo;->parseDelimitedFrom(Lcom/android/carsdk/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/android/carsdk/protobuf/ExtensionRegistryLite;)Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$NaviInfo;

    return-object p0
.end method

.method public static parseFrom(Lcom/android/carsdk/protobuf/ByteString;)Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$NaviInfo;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/carsdk/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 3592
    sget-object v0, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$NaviInfo;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$NaviInfo;

    invoke-static {v0, p0}, Lcom/android/carsdk/protobuf/GeneratedMessageLite;->parseFrom(Lcom/android/carsdk/protobuf/GeneratedMessageLite;Lcom/android/carsdk/protobuf/ByteString;)Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$NaviInfo;

    return-object p0
.end method

.method public static parseFrom(Lcom/android/carsdk/protobuf/ByteString;Lcom/android/carsdk/protobuf/ExtensionRegistryLite;)Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$NaviInfo;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/carsdk/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 3599
    sget-object v0, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$NaviInfo;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$NaviInfo;

    invoke-static {v0, p0, p1}, Lcom/android/carsdk/protobuf/GeneratedMessageLite;->parseFrom(Lcom/android/carsdk/protobuf/GeneratedMessageLite;Lcom/android/carsdk/protobuf/ByteString;Lcom/android/carsdk/protobuf/ExtensionRegistryLite;)Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$NaviInfo;

    return-object p0
.end method

.method public static parseFrom(Lcom/android/carsdk/protobuf/CodedInputStream;)Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$NaviInfo;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3639
    sget-object v0, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$NaviInfo;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$NaviInfo;

    invoke-static {v0, p0}, Lcom/android/carsdk/protobuf/GeneratedMessageLite;->parseFrom(Lcom/android/carsdk/protobuf/GeneratedMessageLite;Lcom/android/carsdk/protobuf/CodedInputStream;)Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$NaviInfo;

    return-object p0
.end method

.method public static parseFrom(Lcom/android/carsdk/protobuf/CodedInputStream;Lcom/android/carsdk/protobuf/ExtensionRegistryLite;)Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$NaviInfo;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3646
    sget-object v0, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$NaviInfo;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$NaviInfo;

    invoke-static {v0, p0, p1}, Lcom/android/carsdk/protobuf/GeneratedMessageLite;->parseFrom(Lcom/android/carsdk/protobuf/GeneratedMessageLite;Lcom/android/carsdk/protobuf/CodedInputStream;Lcom/android/carsdk/protobuf/ExtensionRegistryLite;)Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$NaviInfo;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$NaviInfo;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3616
    sget-object v0, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$NaviInfo;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$NaviInfo;

    invoke-static {v0, p0}, Lcom/android/carsdk/protobuf/GeneratedMessageLite;->parseFrom(Lcom/android/carsdk/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$NaviInfo;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/android/carsdk/protobuf/ExtensionRegistryLite;)Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$NaviInfo;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3623
    sget-object v0, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$NaviInfo;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$NaviInfo;

    invoke-static {v0, p0, p1}, Lcom/android/carsdk/protobuf/GeneratedMessageLite;->parseFrom(Lcom/android/carsdk/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/android/carsdk/protobuf/ExtensionRegistryLite;)Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$NaviInfo;

    return-object p0
.end method

.method public static parseFrom([B)Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$NaviInfo;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/carsdk/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 3604
    sget-object v0, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$NaviInfo;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$NaviInfo;

    invoke-static {v0, p0}, Lcom/android/carsdk/protobuf/GeneratedMessageLite;->parseFrom(Lcom/android/carsdk/protobuf/GeneratedMessageLite;[B)Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$NaviInfo;

    return-object p0
.end method

.method public static parseFrom([BLcom/android/carsdk/protobuf/ExtensionRegistryLite;)Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$NaviInfo;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/carsdk/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 3611
    sget-object v0, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$NaviInfo;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$NaviInfo;

    invoke-static {v0, p0, p1}, Lcom/android/carsdk/protobuf/GeneratedMessageLite;->parseFrom(Lcom/android/carsdk/protobuf/GeneratedMessageLite;[BLcom/android/carsdk/protobuf/ExtensionRegistryLite;)Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$NaviInfo;

    return-object p0
.end method

.method public static parser()Lcom/android/carsdk/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/android/carsdk/protobuf/Parser<",
            "Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$NaviInfo;",
            ">;"
        }
    .end annotation

    .line 4838
    sget-object v0, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$NaviInfo;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$NaviInfo;

    invoke-virtual {v0}, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$NaviInfo;->getParserForType()Lcom/android/carsdk/protobuf/Parser;

    move-result-object v0

    return-object v0
.end method

.method private setCurLinkIdx(I)V
    .locals 0

    .line 3373
    iput p1, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$NaviInfo;->curLinkIdx_:I

    return-void
.end method

.method private setCurPointIdx(I)V
    .locals 0

    .line 3408
    iput p1, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$NaviInfo;->curPointIdx_:I

    return-void
.end method

.method private setCurRouteName(Ljava/lang/String;)V
    .locals 0

    .line 2499
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2502
    iput-object p1, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$NaviInfo;->curRouteName_:Ljava/lang/String;

    return-void
.end method

.method private setCurRouteNameBytes(Lcom/android/carsdk/protobuf/ByteString;)V
    .locals 0

    .line 2525
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2527
    invoke-static {p1}, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$NaviInfo;->checkByteStringIsUtf8(Lcom/android/carsdk/protobuf/ByteString;)V

    .line 2529
    invoke-virtual {p1}, Lcom/android/carsdk/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$NaviInfo;->curRouteName_:Ljava/lang/String;

    return-void
.end method

.method private setCurSegIdx(I)V
    .locals 0

    .line 3338
    iput p1, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$NaviInfo;->curSegIdx_:I

    return-void
.end method

.method private setExitInfo(Ljava/lang/String;)V
    .locals 0

    .line 2771
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2774
    iput-object p1, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$NaviInfo;->exitInfo_:Ljava/lang/String;

    return-void
.end method

.method private setExitInfoBytes(Lcom/android/carsdk/protobuf/ByteString;)V
    .locals 0

    .line 2797
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2799
    invoke-static {p1}, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$NaviInfo;->checkByteStringIsUtf8(Lcom/android/carsdk/protobuf/ByteString;)V

    .line 2801
    invoke-virtual {p1}, Lcom/android/carsdk/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$NaviInfo;->exitInfo_:Ljava/lang/String;

    return-void
.end method

.method private setExitInfoType(I)V
    .locals 0

    .line 2825
    iput p1, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$NaviInfo;->exitInfoType_:I

    return-void
.end method

.method private setIsShowExitInfo(Z)V
    .locals 0

    .line 2724
    iput-boolean p1, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$NaviInfo;->isShowExitInfo_:Z

    return-void
.end method

.method private setIsTightTurnShow(Z)V
    .locals 0

    .line 3097
    iput-boolean p1, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$NaviInfo;->isTightTurnShow_:Z

    return-void
.end method

.method private setNavigationId(J)V
    .locals 0

    .line 3303
    iput-wide p1, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$NaviInfo;->navigationId_:J

    return-void
.end method

.method private setNextManeuverDist(D)V
    .locals 0

    .line 3167
    iput-wide p1, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$NaviInfo;->nextManeuverDist_:D

    return-void
.end method

.method private setNextManeuverDistDisplay(Ljava/lang/String;)V
    .locals 0

    .line 3214
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3217
    iput-object p1, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$NaviInfo;->nextManeuverDistDisplay_:Ljava/lang/String;

    return-void
.end method

.method private setNextManeuverDistDisplayBytes(Lcom/android/carsdk/protobuf/ByteString;)V
    .locals 0

    .line 3240
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3242
    invoke-static {p1}, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$NaviInfo;->checkByteStringIsUtf8(Lcom/android/carsdk/protobuf/ByteString;)V

    .line 3244
    invoke-virtual {p1}, Lcom/android/carsdk/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$NaviInfo;->nextManeuverDistDisplay_:Ljava/lang/String;

    return-void
.end method

.method private setNextManeuverDistUnitDisplay(I)V
    .locals 0

    .line 3268
    iput p1, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$NaviInfo;->nextManeuverDistUnitDisplay_:I

    return-void
.end method

.method private setNextManeuverID(D)V
    .locals 0

    .line 3132
    iput-wide p1, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$NaviInfo;->nextManeuverID_:D

    return-void
.end method

.method private setNextRouteName(Ljava/lang/String;)V
    .locals 0

    .line 2872
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2875
    iput-object p1, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$NaviInfo;->nextRouteName_:Ljava/lang/String;

    return-void
.end method

.method private setNextRouteNameBytes(Lcom/android/carsdk/protobuf/ByteString;)V
    .locals 0

    .line 2898
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2900
    invoke-static {p1}, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$NaviInfo;->checkByteStringIsUtf8(Lcom/android/carsdk/protobuf/ByteString;)V

    .line 2902
    invoke-virtual {p1}, Lcom/android/carsdk/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$NaviInfo;->nextRouteName_:Ljava/lang/String;

    return-void
.end method

.method private setRouteRemainDist(D)V
    .locals 0

    .line 2553
    iput-wide p1, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$NaviInfo;->routeRemainDist_:D

    return-void
.end method

.method private setRouteRemainDistDisplay(Ljava/lang/String;)V
    .locals 0

    .line 2600
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2603
    iput-object p1, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$NaviInfo;->routeRemainDistDisplay_:Ljava/lang/String;

    return-void
.end method

.method private setRouteRemainDistDisplayBytes(Lcom/android/carsdk/protobuf/ByteString;)V
    .locals 0

    .line 2626
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2628
    invoke-static {p1}, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$NaviInfo;->checkByteStringIsUtf8(Lcom/android/carsdk/protobuf/ByteString;)V

    .line 2630
    invoke-virtual {p1}, Lcom/android/carsdk/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$NaviInfo;->routeRemainDistDisplay_:Ljava/lang/String;

    return-void
.end method

.method private setRouteRemainDistUnitDisplay(I)V
    .locals 0

    .line 2654
    iput p1, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$NaviInfo;->routeRemainDistUnitDisplay_:I

    return-void
.end method

.method private setRouteRemainTime(D)V
    .locals 0

    .line 2689
    iput-wide p1, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$NaviInfo;->routeRemainTime_:D

    return-void
.end method

.method private setSegmentRemainDist(D)V
    .locals 0

    .line 2926
    iput-wide p1, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$NaviInfo;->segmentRemainDist_:D

    return-void
.end method

.method private setSegmentRemainDistDisplay(Ljava/lang/String;)V
    .locals 0

    .line 2973
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2976
    iput-object p1, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$NaviInfo;->segmentRemainDistDisplay_:Ljava/lang/String;

    return-void
.end method

.method private setSegmentRemainDistDisplayBytes(Lcom/android/carsdk/protobuf/ByteString;)V
    .locals 0

    .line 2999
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3001
    invoke-static {p1}, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$NaviInfo;->checkByteStringIsUtf8(Lcom/android/carsdk/protobuf/ByteString;)V

    .line 3003
    invoke-virtual {p1}, Lcom/android/carsdk/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$NaviInfo;->segmentRemainDistDisplay_:Ljava/lang/String;

    return-void
.end method

.method private setSegmentRemainDistUnitDisplay(I)V
    .locals 0

    .line 3027
    iput p1, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$NaviInfo;->segmentRemainDistUnitDisplay_:I

    return-void
.end method

.method private setSegmentRemainProgress(D)V
    .locals 0

    .line 3062
    iput-wide p1, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$NaviInfo;->segmentRemainProgress_:D

    return-void
.end method


# virtual methods
.method protected final dynamicMethod(Lcom/android/carsdk/protobuf/GeneratedMessageLite$MethodToInvoke;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 12

    .line 4596
    sget-object v0, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$1;->$SwitchMap$com$google$protobuf$GeneratedMessageLite$MethodToInvoke:[I

    invoke-virtual {p1}, Lcom/android/carsdk/protobuf/GeneratedMessageLite$MethodToInvoke;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x1

    packed-switch p1, :pswitch_data_0

    .line 4820
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1

    .line 4811
    :pswitch_0
    sget-object p1, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$NaviInfo;->PARSER:Lcom/android/carsdk/protobuf/Parser;

    if-nez p1, :cond_1

    const-class p1, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$NaviInfo;

    monitor-enter p1

    .line 4812
    :try_start_0
    sget-object p2, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$NaviInfo;->PARSER:Lcom/android/carsdk/protobuf/Parser;

    if-nez p2, :cond_0

    .line 4813
    new-instance p2, Lcom/android/carsdk/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;

    sget-object p3, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$NaviInfo;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$NaviInfo;

    invoke-direct {p2, p3}, Lcom/android/carsdk/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;-><init>(Lcom/android/carsdk/protobuf/GeneratedMessageLite;)V

    sput-object p2, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$NaviInfo;->PARSER:Lcom/android/carsdk/protobuf/Parser;

    .line 4815
    :cond_0
    monitor-exit p1

    goto :goto_0

    :catchall_0
    move-exception p2

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p2

    .line 4817
    :cond_1
    :goto_0
    sget-object p1, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$NaviInfo;->PARSER:Lcom/android/carsdk/protobuf/Parser;

    return-object p1

    .line 4662
    :pswitch_1
    check-cast p2, Lcom/android/carsdk/protobuf/CodedInputStream;

    .line 4664
    check-cast p3, Lcom/android/carsdk/protobuf/ExtensionRegistryLite;

    :cond_2
    :goto_1
    if-nez v1, :cond_3

    .line 4669
    :try_start_1
    invoke-virtual {p2}, Lcom/android/carsdk/protobuf/CodedInputStream;->readTag()I

    move-result p1

    sparse-switch p1, :sswitch_data_0

    .line 4675
    invoke-virtual {p2, p1}, Lcom/android/carsdk/protobuf/CodedInputStream;->skipField(I)Z

    move-result p1

    goto/16 :goto_3

    .line 4793
    :sswitch_0
    invoke-virtual {p2}, Lcom/android/carsdk/protobuf/CodedInputStream;->readInt32()I

    move-result p1

    iput p1, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$NaviInfo;->curPointIdx_:I

    goto :goto_1

    .line 4788
    :sswitch_1
    invoke-virtual {p2}, Lcom/android/carsdk/protobuf/CodedInputStream;->readInt32()I

    move-result p1

    iput p1, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$NaviInfo;->curLinkIdx_:I

    goto :goto_1

    .line 4783
    :sswitch_2
    invoke-virtual {p2}, Lcom/android/carsdk/protobuf/CodedInputStream;->readInt32()I

    move-result p1

    iput p1, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$NaviInfo;->curSegIdx_:I

    goto :goto_1

    .line 4778
    :sswitch_3
    invoke-virtual {p2}, Lcom/android/carsdk/protobuf/CodedInputStream;->readUInt64()J

    move-result-wide v3

    iput-wide v3, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$NaviInfo;->navigationId_:J

    goto :goto_1

    .line 4773
    :sswitch_4
    invoke-virtual {p2}, Lcom/android/carsdk/protobuf/CodedInputStream;->readInt32()I

    move-result p1

    iput p1, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$NaviInfo;->nextManeuverDistUnitDisplay_:I

    goto :goto_1

    .line 4766
    :sswitch_5
    invoke-virtual {p2}, Lcom/android/carsdk/protobuf/CodedInputStream;->readStringRequireUtf8()Ljava/lang/String;

    move-result-object p1

    .line 4768
    iput-object p1, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$NaviInfo;->nextManeuverDistDisplay_:Ljava/lang/String;

    goto :goto_1

    .line 4762
    :sswitch_6
    invoke-virtual {p2}, Lcom/android/carsdk/protobuf/CodedInputStream;->readDouble()D

    move-result-wide v3

    iput-wide v3, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$NaviInfo;->nextManeuverDist_:D

    goto :goto_1

    .line 4757
    :sswitch_7
    invoke-virtual {p2}, Lcom/android/carsdk/protobuf/CodedInputStream;->readDouble()D

    move-result-wide v3

    iput-wide v3, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$NaviInfo;->nextManeuverID_:D

    goto :goto_1

    .line 4752
    :sswitch_8
    invoke-virtual {p2}, Lcom/android/carsdk/protobuf/CodedInputStream;->readBool()Z

    move-result p1

    iput-boolean p1, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$NaviInfo;->isTightTurnShow_:Z

    goto :goto_1

    .line 4747
    :sswitch_9
    invoke-virtual {p2}, Lcom/android/carsdk/protobuf/CodedInputStream;->readDouble()D

    move-result-wide v3

    iput-wide v3, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$NaviInfo;->segmentRemainProgress_:D

    goto :goto_1

    .line 4742
    :sswitch_a
    invoke-virtual {p2}, Lcom/android/carsdk/protobuf/CodedInputStream;->readInt32()I

    move-result p1

    iput p1, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$NaviInfo;->segmentRemainDistUnitDisplay_:I

    goto :goto_1

    .line 4735
    :sswitch_b
    invoke-virtual {p2}, Lcom/android/carsdk/protobuf/CodedInputStream;->readStringRequireUtf8()Ljava/lang/String;

    move-result-object p1

    .line 4737
    iput-object p1, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$NaviInfo;->segmentRemainDistDisplay_:Ljava/lang/String;

    goto :goto_1

    .line 4731
    :sswitch_c
    invoke-virtual {p2}, Lcom/android/carsdk/protobuf/CodedInputStream;->readDouble()D

    move-result-wide v3

    iput-wide v3, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$NaviInfo;->segmentRemainDist_:D

    goto :goto_1

    .line 4724
    :sswitch_d
    invoke-virtual {p2}, Lcom/android/carsdk/protobuf/CodedInputStream;->readStringRequireUtf8()Ljava/lang/String;

    move-result-object p1

    .line 4726
    iput-object p1, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$NaviInfo;->nextRouteName_:Ljava/lang/String;

    goto :goto_1

    .line 4720
    :sswitch_e
    invoke-virtual {p2}, Lcom/android/carsdk/protobuf/CodedInputStream;->readInt32()I

    move-result p1

    iput p1, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$NaviInfo;->exitInfoType_:I

    goto :goto_1

    .line 4713
    :sswitch_f
    invoke-virtual {p2}, Lcom/android/carsdk/protobuf/CodedInputStream;->readStringRequireUtf8()Ljava/lang/String;

    move-result-object p1

    .line 4715
    iput-object p1, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$NaviInfo;->exitInfo_:Ljava/lang/String;

    goto :goto_1

    .line 4709
    :sswitch_10
    invoke-virtual {p2}, Lcom/android/carsdk/protobuf/CodedInputStream;->readBool()Z

    move-result p1

    iput-boolean p1, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$NaviInfo;->isShowExitInfo_:Z

    goto/16 :goto_1

    .line 4704
    :sswitch_11
    invoke-virtual {p2}, Lcom/android/carsdk/protobuf/CodedInputStream;->readDouble()D

    move-result-wide v3

    iput-wide v3, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$NaviInfo;->routeRemainTime_:D

    goto/16 :goto_1

    .line 4699
    :sswitch_12
    invoke-virtual {p2}, Lcom/android/carsdk/protobuf/CodedInputStream;->readInt32()I

    move-result p1

    iput p1, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$NaviInfo;->routeRemainDistUnitDisplay_:I

    goto/16 :goto_1

    .line 4692
    :sswitch_13
    invoke-virtual {p2}, Lcom/android/carsdk/protobuf/CodedInputStream;->readStringRequireUtf8()Ljava/lang/String;

    move-result-object p1

    .line 4694
    iput-object p1, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$NaviInfo;->routeRemainDistDisplay_:Ljava/lang/String;

    goto/16 :goto_1

    .line 4688
    :sswitch_14
    invoke-virtual {p2}, Lcom/android/carsdk/protobuf/CodedInputStream;->readDouble()D

    move-result-wide v3

    iput-wide v3, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$NaviInfo;->routeRemainDist_:D

    goto/16 :goto_1

    .line 4681
    :sswitch_15
    invoke-virtual {p2}, Lcom/android/carsdk/protobuf/CodedInputStream;->readStringRequireUtf8()Ljava/lang/String;

    move-result-object p1

    .line 4683
    iput-object p1, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$NaviInfo;->curRouteName_:Ljava/lang/String;
    :try_end_1
    .catch Lcom/android/carsdk/protobuf/InvalidProtocolBufferException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto/16 :goto_1

    :goto_2
    :sswitch_16
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

    .line 4801
    :try_start_2
    new-instance p2, Ljava/lang/RuntimeException;

    new-instance p3, Lcom/android/carsdk/protobuf/InvalidProtocolBufferException;

    .line 4803
    invoke-virtual {p1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p3, p1}, Lcom/android/carsdk/protobuf/InvalidProtocolBufferException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, p0}, Lcom/android/carsdk/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/android/carsdk/protobuf/MessageLite;)Lcom/android/carsdk/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p2

    :catch_1
    move-exception p1

    .line 4799
    new-instance p2, Ljava/lang/RuntimeException;

    invoke-virtual {p1, p0}, Lcom/android/carsdk/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/android/carsdk/protobuf/MessageLite;)Lcom/android/carsdk/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 4804
    :goto_4
    throw p1

    .line 4808
    :cond_3
    :pswitch_2
    sget-object p1, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$NaviInfo;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$NaviInfo;

    return-object p1

    .line 4610
    :pswitch_3
    check-cast p2, Lcom/android/carsdk/protobuf/GeneratedMessageLite$Visitor;

    .line 4611
    check-cast p3, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$NaviInfo;

    .line 4612
    iget-object p1, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$NaviInfo;->curRouteName_:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result p1

    xor-int/2addr p1, v2

    iget-object v0, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$NaviInfo;->curRouteName_:Ljava/lang/String;

    iget-object v3, p3, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$NaviInfo;->curRouteName_:Ljava/lang/String;

    .line 4613
    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    xor-int/2addr v3, v2

    iget-object v4, p3, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$NaviInfo;->curRouteName_:Ljava/lang/String;

    .line 4612
    invoke-interface {p2, p1, v0, v3, v4}, Lcom/android/carsdk/protobuf/GeneratedMessageLite$Visitor;->visitString(ZLjava/lang/String;ZLjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$NaviInfo;->curRouteName_:Ljava/lang/String;

    .line 4614
    iget-wide v5, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$NaviInfo;->routeRemainDist_:D

    const-wide/16 v10, 0x0

    cmpl-double p1, v5, v10

    if-eqz p1, :cond_4

    move v4, v2

    goto :goto_5

    :cond_4
    move v4, v1

    :goto_5
    iget-wide v8, p3, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$NaviInfo;->routeRemainDist_:D

    cmpl-double p1, v8, v10

    if-eqz p1, :cond_5

    move v7, v2

    goto :goto_6

    :cond_5
    move v7, v1

    :goto_6
    move-object v3, p2

    invoke-interface/range {v3 .. v9}, Lcom/android/carsdk/protobuf/GeneratedMessageLite$Visitor;->visitDouble(ZDZD)D

    move-result-wide v3

    iput-wide v3, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$NaviInfo;->routeRemainDist_:D

    .line 4616
    iget-object p1, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$NaviInfo;->routeRemainDistDisplay_:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result p1

    xor-int/2addr p1, v2

    iget-object v0, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$NaviInfo;->routeRemainDistDisplay_:Ljava/lang/String;

    iget-object v3, p3, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$NaviInfo;->routeRemainDistDisplay_:Ljava/lang/String;

    .line 4617
    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    xor-int/2addr v3, v2

    iget-object v4, p3, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$NaviInfo;->routeRemainDistDisplay_:Ljava/lang/String;

    .line 4616
    invoke-interface {p2, p1, v0, v3, v4}, Lcom/android/carsdk/protobuf/GeneratedMessageLite$Visitor;->visitString(ZLjava/lang/String;ZLjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$NaviInfo;->routeRemainDistDisplay_:Ljava/lang/String;

    .line 4618
    iget p1, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$NaviInfo;->routeRemainDistUnitDisplay_:I

    if-eqz p1, :cond_6

    move v0, v2

    goto :goto_7

    :cond_6
    move v0, v1

    :goto_7
    iget v3, p3, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$NaviInfo;->routeRemainDistUnitDisplay_:I

    if-eqz v3, :cond_7

    move v4, v2

    goto :goto_8

    :cond_7
    move v4, v1

    :goto_8
    invoke-interface {p2, v0, p1, v4, v3}, Lcom/android/carsdk/protobuf/GeneratedMessageLite$Visitor;->visitInt(ZIZI)I

    move-result p1

    iput p1, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$NaviInfo;->routeRemainDistUnitDisplay_:I

    .line 4620
    iget-wide v5, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$NaviInfo;->routeRemainTime_:D

    cmpl-double p1, v5, v10

    if-eqz p1, :cond_8

    move v4, v2

    goto :goto_9

    :cond_8
    move v4, v1

    :goto_9
    iget-wide v8, p3, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$NaviInfo;->routeRemainTime_:D

    cmpl-double p1, v8, v10

    if-eqz p1, :cond_9

    move v7, v2

    goto :goto_a

    :cond_9
    move v7, v1

    :goto_a
    move-object v3, p2

    invoke-interface/range {v3 .. v9}, Lcom/android/carsdk/protobuf/GeneratedMessageLite$Visitor;->visitDouble(ZDZD)D

    move-result-wide v3

    iput-wide v3, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$NaviInfo;->routeRemainTime_:D

    .line 4622
    iget-boolean p1, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$NaviInfo;->isShowExitInfo_:Z

    iget-boolean v0, p3, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$NaviInfo;->isShowExitInfo_:Z

    invoke-interface {p2, p1, p1, v0, v0}, Lcom/android/carsdk/protobuf/GeneratedMessageLite$Visitor;->visitBoolean(ZZZZ)Z

    move-result p1

    iput-boolean p1, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$NaviInfo;->isShowExitInfo_:Z

    .line 4624
    iget-object p1, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$NaviInfo;->exitInfo_:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result p1

    xor-int/2addr p1, v2

    iget-object v0, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$NaviInfo;->exitInfo_:Ljava/lang/String;

    iget-object v3, p3, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$NaviInfo;->exitInfo_:Ljava/lang/String;

    .line 4625
    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    xor-int/2addr v3, v2

    iget-object v4, p3, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$NaviInfo;->exitInfo_:Ljava/lang/String;

    .line 4624
    invoke-interface {p2, p1, v0, v3, v4}, Lcom/android/carsdk/protobuf/GeneratedMessageLite$Visitor;->visitString(ZLjava/lang/String;ZLjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$NaviInfo;->exitInfo_:Ljava/lang/String;

    .line 4626
    iget p1, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$NaviInfo;->exitInfoType_:I

    if-eqz p1, :cond_a

    move v0, v2

    goto :goto_b

    :cond_a
    move v0, v1

    :goto_b
    iget v3, p3, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$NaviInfo;->exitInfoType_:I

    if-eqz v3, :cond_b

    move v4, v2

    goto :goto_c

    :cond_b
    move v4, v1

    :goto_c
    invoke-interface {p2, v0, p1, v4, v3}, Lcom/android/carsdk/protobuf/GeneratedMessageLite$Visitor;->visitInt(ZIZI)I

    move-result p1

    iput p1, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$NaviInfo;->exitInfoType_:I

    .line 4628
    iget-object p1, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$NaviInfo;->nextRouteName_:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result p1

    xor-int/2addr p1, v2

    iget-object v0, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$NaviInfo;->nextRouteName_:Ljava/lang/String;

    iget-object v3, p3, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$NaviInfo;->nextRouteName_:Ljava/lang/String;

    .line 4629
    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    xor-int/2addr v3, v2

    iget-object v4, p3, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$NaviInfo;->nextRouteName_:Ljava/lang/String;

    .line 4628
    invoke-interface {p2, p1, v0, v3, v4}, Lcom/android/carsdk/protobuf/GeneratedMessageLite$Visitor;->visitString(ZLjava/lang/String;ZLjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$NaviInfo;->nextRouteName_:Ljava/lang/String;

    .line 4630
    iget-wide v5, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$NaviInfo;->segmentRemainDist_:D

    cmpl-double p1, v5, v10

    if-eqz p1, :cond_c

    move v4, v2

    goto :goto_d

    :cond_c
    move v4, v1

    :goto_d
    iget-wide v8, p3, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$NaviInfo;->segmentRemainDist_:D

    cmpl-double p1, v8, v10

    if-eqz p1, :cond_d

    move v7, v2

    goto :goto_e

    :cond_d
    move v7, v1

    :goto_e
    move-object v3, p2

    invoke-interface/range {v3 .. v9}, Lcom/android/carsdk/protobuf/GeneratedMessageLite$Visitor;->visitDouble(ZDZD)D

    move-result-wide v3

    iput-wide v3, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$NaviInfo;->segmentRemainDist_:D

    .line 4632
    iget-object p1, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$NaviInfo;->segmentRemainDistDisplay_:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result p1

    xor-int/2addr p1, v2

    iget-object v0, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$NaviInfo;->segmentRemainDistDisplay_:Ljava/lang/String;

    iget-object v3, p3, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$NaviInfo;->segmentRemainDistDisplay_:Ljava/lang/String;

    .line 4633
    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    xor-int/2addr v3, v2

    iget-object v4, p3, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$NaviInfo;->segmentRemainDistDisplay_:Ljava/lang/String;

    .line 4632
    invoke-interface {p2, p1, v0, v3, v4}, Lcom/android/carsdk/protobuf/GeneratedMessageLite$Visitor;->visitString(ZLjava/lang/String;ZLjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$NaviInfo;->segmentRemainDistDisplay_:Ljava/lang/String;

    .line 4634
    iget p1, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$NaviInfo;->segmentRemainDistUnitDisplay_:I

    if-eqz p1, :cond_e

    move v0, v2

    goto :goto_f

    :cond_e
    move v0, v1

    :goto_f
    iget v3, p3, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$NaviInfo;->segmentRemainDistUnitDisplay_:I

    if-eqz v3, :cond_f

    move v4, v2

    goto :goto_10

    :cond_f
    move v4, v1

    :goto_10
    invoke-interface {p2, v0, p1, v4, v3}, Lcom/android/carsdk/protobuf/GeneratedMessageLite$Visitor;->visitInt(ZIZI)I

    move-result p1

    iput p1, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$NaviInfo;->segmentRemainDistUnitDisplay_:I

    .line 4636
    iget-wide v5, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$NaviInfo;->segmentRemainProgress_:D

    cmpl-double p1, v5, v10

    if-eqz p1, :cond_10

    move v4, v2

    goto :goto_11

    :cond_10
    move v4, v1

    :goto_11
    iget-wide v8, p3, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$NaviInfo;->segmentRemainProgress_:D

    cmpl-double p1, v8, v10

    if-eqz p1, :cond_11

    move v7, v2

    goto :goto_12

    :cond_11
    move v7, v1

    :goto_12
    move-object v3, p2

    invoke-interface/range {v3 .. v9}, Lcom/android/carsdk/protobuf/GeneratedMessageLite$Visitor;->visitDouble(ZDZD)D

    move-result-wide v3

    iput-wide v3, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$NaviInfo;->segmentRemainProgress_:D

    .line 4638
    iget-boolean p1, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$NaviInfo;->isTightTurnShow_:Z

    iget-boolean v0, p3, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$NaviInfo;->isTightTurnShow_:Z

    invoke-interface {p2, p1, p1, v0, v0}, Lcom/android/carsdk/protobuf/GeneratedMessageLite$Visitor;->visitBoolean(ZZZZ)Z

    move-result p1

    iput-boolean p1, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$NaviInfo;->isTightTurnShow_:Z

    .line 4640
    iget-wide v5, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$NaviInfo;->nextManeuverID_:D

    cmpl-double p1, v5, v10

    if-eqz p1, :cond_12

    move v4, v2

    goto :goto_13

    :cond_12
    move v4, v1

    :goto_13
    iget-wide v8, p3, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$NaviInfo;->nextManeuverID_:D

    cmpl-double p1, v8, v10

    if-eqz p1, :cond_13

    move v7, v2

    goto :goto_14

    :cond_13
    move v7, v1

    :goto_14
    move-object v3, p2

    invoke-interface/range {v3 .. v9}, Lcom/android/carsdk/protobuf/GeneratedMessageLite$Visitor;->visitDouble(ZDZD)D

    move-result-wide v3

    iput-wide v3, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$NaviInfo;->nextManeuverID_:D

    .line 4642
    iget-wide v5, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$NaviInfo;->nextManeuverDist_:D

    cmpl-double p1, v5, v10

    if-eqz p1, :cond_14

    move v4, v2

    goto :goto_15

    :cond_14
    move v4, v1

    :goto_15
    iget-wide v8, p3, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$NaviInfo;->nextManeuverDist_:D

    cmpl-double p1, v8, v10

    if-eqz p1, :cond_15

    move v7, v2

    goto :goto_16

    :cond_15
    move v7, v1

    :goto_16
    move-object v3, p2

    invoke-interface/range {v3 .. v9}, Lcom/android/carsdk/protobuf/GeneratedMessageLite$Visitor;->visitDouble(ZDZD)D

    move-result-wide v3

    iput-wide v3, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$NaviInfo;->nextManeuverDist_:D

    .line 4644
    iget-object p1, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$NaviInfo;->nextManeuverDistDisplay_:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result p1

    xor-int/2addr p1, v2

    iget-object v0, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$NaviInfo;->nextManeuverDistDisplay_:Ljava/lang/String;

    iget-object v3, p3, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$NaviInfo;->nextManeuverDistDisplay_:Ljava/lang/String;

    .line 4645
    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    xor-int/2addr v3, v2

    iget-object v4, p3, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$NaviInfo;->nextManeuverDistDisplay_:Ljava/lang/String;

    .line 4644
    invoke-interface {p2, p1, v0, v3, v4}, Lcom/android/carsdk/protobuf/GeneratedMessageLite$Visitor;->visitString(ZLjava/lang/String;ZLjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$NaviInfo;->nextManeuverDistDisplay_:Ljava/lang/String;

    .line 4646
    iget p1, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$NaviInfo;->nextManeuverDistUnitDisplay_:I

    if-eqz p1, :cond_16

    move v0, v2

    goto :goto_17

    :cond_16
    move v0, v1

    :goto_17
    iget v3, p3, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$NaviInfo;->nextManeuverDistUnitDisplay_:I

    if-eqz v3, :cond_17

    move v4, v2

    goto :goto_18

    :cond_17
    move v4, v1

    :goto_18
    invoke-interface {p2, v0, p1, v4, v3}, Lcom/android/carsdk/protobuf/GeneratedMessageLite$Visitor;->visitInt(ZIZI)I

    move-result p1

    iput p1, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$NaviInfo;->nextManeuverDistUnitDisplay_:I

    .line 4648
    iget-wide v5, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$NaviInfo;->navigationId_:J

    const-wide/16 v3, 0x0

    cmp-long p1, v5, v3

    if-eqz p1, :cond_18

    move p1, v2

    goto :goto_19

    :cond_18
    move p1, v1

    :goto_19
    iget-wide v8, p3, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$NaviInfo;->navigationId_:J

    cmp-long v0, v8, v3

    if-eqz v0, :cond_19

    move v7, v2

    goto :goto_1a

    :cond_19
    move v7, v1

    :goto_1a
    move-object v3, p2

    move v4, p1

    invoke-interface/range {v3 .. v9}, Lcom/android/carsdk/protobuf/GeneratedMessageLite$Visitor;->visitLong(ZJZJ)J

    move-result-wide v3

    iput-wide v3, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$NaviInfo;->navigationId_:J

    .line 4650
    iget p1, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$NaviInfo;->curSegIdx_:I

    if-eqz p1, :cond_1a

    move v0, v2

    goto :goto_1b

    :cond_1a
    move v0, v1

    :goto_1b
    iget v3, p3, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$NaviInfo;->curSegIdx_:I

    if-eqz v3, :cond_1b

    move v4, v2

    goto :goto_1c

    :cond_1b
    move v4, v1

    :goto_1c
    invoke-interface {p2, v0, p1, v4, v3}, Lcom/android/carsdk/protobuf/GeneratedMessageLite$Visitor;->visitInt(ZIZI)I

    move-result p1

    iput p1, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$NaviInfo;->curSegIdx_:I

    .line 4652
    iget p1, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$NaviInfo;->curLinkIdx_:I

    if-eqz p1, :cond_1c

    move v0, v2

    goto :goto_1d

    :cond_1c
    move v0, v1

    :goto_1d
    iget v3, p3, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$NaviInfo;->curLinkIdx_:I

    if-eqz v3, :cond_1d

    move v4, v2

    goto :goto_1e

    :cond_1d
    move v4, v1

    :goto_1e
    invoke-interface {p2, v0, p1, v4, v3}, Lcom/android/carsdk/protobuf/GeneratedMessageLite$Visitor;->visitInt(ZIZI)I

    move-result p1

    iput p1, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$NaviInfo;->curLinkIdx_:I

    .line 4654
    iget p1, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$NaviInfo;->curPointIdx_:I

    if-eqz p1, :cond_1e

    move v0, v2

    goto :goto_1f

    :cond_1e
    move v0, v1

    :goto_1f
    iget p3, p3, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$NaviInfo;->curPointIdx_:I

    if-eqz p3, :cond_1f

    move v1, v2

    :cond_1f
    invoke-interface {p2, v0, p1, v1, p3}, Lcom/android/carsdk/protobuf/GeneratedMessageLite$Visitor;->visitInt(ZIZI)I

    move-result p1

    iput p1, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$NaviInfo;->curPointIdx_:I

    .line 4656
    sget-object p1, Lcom/android/carsdk/protobuf/GeneratedMessageLite$MergeFromVisitor;->INSTANCE:Lcom/android/carsdk/protobuf/GeneratedMessageLite$MergeFromVisitor;

    return-object p0

    .line 4607
    :pswitch_4
    new-instance p1, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$NaviInfo$Builder;

    invoke-direct {p1, v0}, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$NaviInfo$Builder;-><init>(Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$1;)V

    return-object p1

    :pswitch_5
    return-object v0

    .line 4601
    :pswitch_6
    sget-object p1, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$NaviInfo;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$NaviInfo;

    return-object p1

    .line 4598
    :pswitch_7
    new-instance p1, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$NaviInfo;

    invoke-direct {p1}, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$NaviInfo;-><init>()V

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
        0x0 -> :sswitch_16
        0xa -> :sswitch_15
        0x11 -> :sswitch_14
        0x1a -> :sswitch_13
        0x20 -> :sswitch_12
        0x29 -> :sswitch_11
        0x30 -> :sswitch_10
        0x3a -> :sswitch_f
        0x40 -> :sswitch_e
        0x4a -> :sswitch_d
        0x51 -> :sswitch_c
        0x5a -> :sswitch_b
        0x60 -> :sswitch_a
        0x69 -> :sswitch_9
        0x70 -> :sswitch_8
        0x79 -> :sswitch_7
        0x81 -> :sswitch_6
        0x8a -> :sswitch_5
        0x90 -> :sswitch_4
        0x98 -> :sswitch_3
        0xa0 -> :sswitch_2
        0xa8 -> :sswitch_1
        0xb0 -> :sswitch_0
    .end sparse-switch
.end method

.method public getCurLinkIdx()I
    .locals 1

    .line 3362
    iget v0, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$NaviInfo;->curLinkIdx_:I

    return v0
.end method

.method public getCurPointIdx()I
    .locals 1

    .line 3397
    iget v0, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$NaviInfo;->curPointIdx_:I

    return v0
.end method

.method public getCurRouteName()Ljava/lang/String;
    .locals 1

    .line 2476
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$NaviInfo;->curRouteName_:Ljava/lang/String;

    return-object v0
.end method

.method public getCurRouteNameBytes()Lcom/android/carsdk/protobuf/ByteString;
    .locals 1

    .line 2487
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$NaviInfo;->curRouteName_:Ljava/lang/String;

    invoke-static {v0}, Lcom/android/carsdk/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/android/carsdk/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getCurSegIdx()I
    .locals 1

    .line 3327
    iget v0, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$NaviInfo;->curSegIdx_:I

    return v0
.end method

.method public getExitInfo()Ljava/lang/String;
    .locals 1

    .line 2748
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$NaviInfo;->exitInfo_:Ljava/lang/String;

    return-object v0
.end method

.method public getExitInfoBytes()Lcom/android/carsdk/protobuf/ByteString;
    .locals 1

    .line 2759
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$NaviInfo;->exitInfo_:Ljava/lang/String;

    invoke-static {v0}, Lcom/android/carsdk/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/android/carsdk/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getExitInfoType()I
    .locals 1

    .line 2814
    iget v0, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$NaviInfo;->exitInfoType_:I

    return v0
.end method

.method public getIsShowExitInfo()Z
    .locals 1

    .line 2713
    iget-boolean v0, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$NaviInfo;->isShowExitInfo_:Z

    return v0
.end method

.method public getIsTightTurnShow()Z
    .locals 1

    .line 3086
    iget-boolean v0, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$NaviInfo;->isTightTurnShow_:Z

    return v0
.end method

.method public getNavigationId()J
    .locals 2

    .line 3292
    iget-wide v0, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$NaviInfo;->navigationId_:J

    return-wide v0
.end method

.method public getNextManeuverDist()D
    .locals 2

    .line 3156
    iget-wide v0, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$NaviInfo;->nextManeuverDist_:D

    return-wide v0
.end method

.method public getNextManeuverDistDisplay()Ljava/lang/String;
    .locals 1

    .line 3191
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$NaviInfo;->nextManeuverDistDisplay_:Ljava/lang/String;

    return-object v0
.end method

.method public getNextManeuverDistDisplayBytes()Lcom/android/carsdk/protobuf/ByteString;
    .locals 1

    .line 3202
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$NaviInfo;->nextManeuverDistDisplay_:Ljava/lang/String;

    invoke-static {v0}, Lcom/android/carsdk/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/android/carsdk/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getNextManeuverDistUnitDisplay()I
    .locals 1

    .line 3257
    iget v0, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$NaviInfo;->nextManeuverDistUnitDisplay_:I

    return v0
.end method

.method public getNextManeuverID()D
    .locals 2

    .line 3121
    iget-wide v0, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$NaviInfo;->nextManeuverID_:D

    return-wide v0
.end method

.method public getNextRouteName()Ljava/lang/String;
    .locals 1

    .line 2849
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$NaviInfo;->nextRouteName_:Ljava/lang/String;

    return-object v0
.end method

.method public getNextRouteNameBytes()Lcom/android/carsdk/protobuf/ByteString;
    .locals 1

    .line 2860
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$NaviInfo;->nextRouteName_:Ljava/lang/String;

    invoke-static {v0}, Lcom/android/carsdk/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/android/carsdk/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getRouteRemainDist()D
    .locals 2

    .line 2542
    iget-wide v0, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$NaviInfo;->routeRemainDist_:D

    return-wide v0
.end method

.method public getRouteRemainDistDisplay()Ljava/lang/String;
    .locals 1

    .line 2577
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$NaviInfo;->routeRemainDistDisplay_:Ljava/lang/String;

    return-object v0
.end method

.method public getRouteRemainDistDisplayBytes()Lcom/android/carsdk/protobuf/ByteString;
    .locals 1

    .line 2588
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$NaviInfo;->routeRemainDistDisplay_:Ljava/lang/String;

    invoke-static {v0}, Lcom/android/carsdk/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/android/carsdk/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getRouteRemainDistUnitDisplay()I
    .locals 1

    .line 2643
    iget v0, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$NaviInfo;->routeRemainDistUnitDisplay_:I

    return v0
.end method

.method public getRouteRemainTime()D
    .locals 2

    .line 2678
    iget-wide v0, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$NaviInfo;->routeRemainTime_:D

    return-wide v0
.end method

.method public getSegmentRemainDist()D
    .locals 2

    .line 2915
    iget-wide v0, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$NaviInfo;->segmentRemainDist_:D

    return-wide v0
.end method

.method public getSegmentRemainDistDisplay()Ljava/lang/String;
    .locals 1

    .line 2950
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$NaviInfo;->segmentRemainDistDisplay_:Ljava/lang/String;

    return-object v0
.end method

.method public getSegmentRemainDistDisplayBytes()Lcom/android/carsdk/protobuf/ByteString;
    .locals 1

    .line 2961
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$NaviInfo;->segmentRemainDistDisplay_:Ljava/lang/String;

    invoke-static {v0}, Lcom/android/carsdk/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/android/carsdk/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getSegmentRemainDistUnitDisplay()I
    .locals 1

    .line 3016
    iget v0, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$NaviInfo;->segmentRemainDistUnitDisplay_:I

    return v0
.end method

.method public getSegmentRemainProgress()D
    .locals 2

    .line 3051
    iget-wide v0, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$NaviInfo;->segmentRemainProgress_:D

    return-wide v0
.end method

.method public getSerializedSize()I
    .locals 6

    .line 3493
    iget v0, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$NaviInfo;->memoizedSerializedSize:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    return v0

    :cond_0
    const/4 v0, 0x0

    .line 3497
    iget-object v1, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$NaviInfo;->curRouteName_:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    const/4 v1, 0x1

    .line 3499
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$NaviInfo;->getCurRouteName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/carsdk/protobuf/CodedOutputStream;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 3501
    :cond_1
    iget-wide v1, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$NaviInfo;->routeRemainDist_:D

    const-wide/16 v3, 0x0

    cmpl-double v5, v1, v3

    if-eqz v5, :cond_2

    const/4 v5, 0x2

    .line 3503
    invoke-static {v5, v1, v2}, Lcom/android/carsdk/protobuf/CodedOutputStream;->computeDoubleSize(ID)I

    move-result v1

    add-int/2addr v0, v1

    .line 3505
    :cond_2
    iget-object v1, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$NaviInfo;->routeRemainDistDisplay_:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_3

    const/4 v1, 0x3

    .line 3507
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$NaviInfo;->getRouteRemainDistDisplay()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/carsdk/protobuf/CodedOutputStream;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 3509
    :cond_3
    iget v1, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$NaviInfo;->routeRemainDistUnitDisplay_:I

    if-eqz v1, :cond_4

    const/4 v2, 0x4

    .line 3511
    invoke-static {v2, v1}, Lcom/android/carsdk/protobuf/CodedOutputStream;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 3513
    :cond_4
    iget-wide v1, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$NaviInfo;->routeRemainTime_:D

    cmpl-double v5, v1, v3

    if-eqz v5, :cond_5

    const/4 v5, 0x5

    .line 3515
    invoke-static {v5, v1, v2}, Lcom/android/carsdk/protobuf/CodedOutputStream;->computeDoubleSize(ID)I

    move-result v1

    add-int/2addr v0, v1

    .line 3517
    :cond_5
    iget-boolean v1, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$NaviInfo;->isShowExitInfo_:Z

    if-eqz v1, :cond_6

    const/4 v2, 0x6

    .line 3519
    invoke-static {v2, v1}, Lcom/android/carsdk/protobuf/CodedOutputStream;->computeBoolSize(IZ)I

    move-result v1

    add-int/2addr v0, v1

    .line 3521
    :cond_6
    iget-object v1, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$NaviInfo;->exitInfo_:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_7

    const/4 v1, 0x7

    .line 3523
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$NaviInfo;->getExitInfo()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/carsdk/protobuf/CodedOutputStream;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 3525
    :cond_7
    iget v1, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$NaviInfo;->exitInfoType_:I

    if-eqz v1, :cond_8

    const/16 v2, 0x8

    .line 3527
    invoke-static {v2, v1}, Lcom/android/carsdk/protobuf/CodedOutputStream;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 3529
    :cond_8
    iget-object v1, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$NaviInfo;->nextRouteName_:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_9

    const/16 v1, 0x9

    .line 3531
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$NaviInfo;->getNextRouteName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/carsdk/protobuf/CodedOutputStream;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 3533
    :cond_9
    iget-wide v1, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$NaviInfo;->segmentRemainDist_:D

    cmpl-double v5, v1, v3

    if-eqz v5, :cond_a

    const/16 v5, 0xa

    .line 3535
    invoke-static {v5, v1, v2}, Lcom/android/carsdk/protobuf/CodedOutputStream;->computeDoubleSize(ID)I

    move-result v1

    add-int/2addr v0, v1

    .line 3537
    :cond_a
    iget-object v1, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$NaviInfo;->segmentRemainDistDisplay_:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_b

    const/16 v1, 0xb

    .line 3539
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$NaviInfo;->getSegmentRemainDistDisplay()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/carsdk/protobuf/CodedOutputStream;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 3541
    :cond_b
    iget v1, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$NaviInfo;->segmentRemainDistUnitDisplay_:I

    if-eqz v1, :cond_c

    const/16 v2, 0xc

    .line 3543
    invoke-static {v2, v1}, Lcom/android/carsdk/protobuf/CodedOutputStream;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 3545
    :cond_c
    iget-wide v1, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$NaviInfo;->segmentRemainProgress_:D

    cmpl-double v5, v1, v3

    if-eqz v5, :cond_d

    const/16 v5, 0xd

    .line 3547
    invoke-static {v5, v1, v2}, Lcom/android/carsdk/protobuf/CodedOutputStream;->computeDoubleSize(ID)I

    move-result v1

    add-int/2addr v0, v1

    .line 3549
    :cond_d
    iget-boolean v1, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$NaviInfo;->isTightTurnShow_:Z

    if-eqz v1, :cond_e

    const/16 v2, 0xe

    .line 3551
    invoke-static {v2, v1}, Lcom/android/carsdk/protobuf/CodedOutputStream;->computeBoolSize(IZ)I

    move-result v1

    add-int/2addr v0, v1

    .line 3553
    :cond_e
    iget-wide v1, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$NaviInfo;->nextManeuverID_:D

    cmpl-double v5, v1, v3

    if-eqz v5, :cond_f

    const/16 v5, 0xf

    .line 3555
    invoke-static {v5, v1, v2}, Lcom/android/carsdk/protobuf/CodedOutputStream;->computeDoubleSize(ID)I

    move-result v1

    add-int/2addr v0, v1

    .line 3557
    :cond_f
    iget-wide v1, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$NaviInfo;->nextManeuverDist_:D

    cmpl-double v3, v1, v3

    if-eqz v3, :cond_10

    const/16 v3, 0x10

    .line 3559
    invoke-static {v3, v1, v2}, Lcom/android/carsdk/protobuf/CodedOutputStream;->computeDoubleSize(ID)I

    move-result v1

    add-int/2addr v0, v1

    .line 3561
    :cond_10
    iget-object v1, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$NaviInfo;->nextManeuverDistDisplay_:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_11

    const/16 v1, 0x11

    .line 3563
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$NaviInfo;->getNextManeuverDistDisplay()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/carsdk/protobuf/CodedOutputStream;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 3565
    :cond_11
    iget v1, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$NaviInfo;->nextManeuverDistUnitDisplay_:I

    if-eqz v1, :cond_12

    const/16 v2, 0x12

    .line 3567
    invoke-static {v2, v1}, Lcom/android/carsdk/protobuf/CodedOutputStream;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 3569
    :cond_12
    iget-wide v1, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$NaviInfo;->navigationId_:J

    const-wide/16 v3, 0x0

    cmp-long v3, v1, v3

    if-eqz v3, :cond_13

    const/16 v3, 0x13

    .line 3571
    invoke-static {v3, v1, v2}, Lcom/android/carsdk/protobuf/CodedOutputStream;->computeUInt64Size(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 3573
    :cond_13
    iget v1, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$NaviInfo;->curSegIdx_:I

    if-eqz v1, :cond_14

    const/16 v2, 0x14

    .line 3575
    invoke-static {v2, v1}, Lcom/android/carsdk/protobuf/CodedOutputStream;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 3577
    :cond_14
    iget v1, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$NaviInfo;->curLinkIdx_:I

    if-eqz v1, :cond_15

    const/16 v2, 0x15

    .line 3579
    invoke-static {v2, v1}, Lcom/android/carsdk/protobuf/CodedOutputStream;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 3581
    :cond_15
    iget v1, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$NaviInfo;->curPointIdx_:I

    if-eqz v1, :cond_16

    const/16 v2, 0x16

    .line 3583
    invoke-static {v2, v1}, Lcom/android/carsdk/protobuf/CodedOutputStream;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 3585
    :cond_16
    iput v0, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$NaviInfo;->memoizedSerializedSize:I

    return v0
.end method

.method public writeTo(Lcom/android/carsdk/protobuf/CodedOutputStream;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3424
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$NaviInfo;->curRouteName_:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 3425
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$NaviInfo;->getCurRouteName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/android/carsdk/protobuf/CodedOutputStream;->writeString(ILjava/lang/String;)V

    .line 3427
    :cond_0
    iget-wide v0, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$NaviInfo;->routeRemainDist_:D

    const-wide/16 v2, 0x0

    cmpl-double v4, v0, v2

    if-eqz v4, :cond_1

    const/4 v4, 0x2

    .line 3428
    invoke-virtual {p1, v4, v0, v1}, Lcom/android/carsdk/protobuf/CodedOutputStream;->writeDouble(ID)V

    .line 3430
    :cond_1
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$NaviInfo;->routeRemainDistDisplay_:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    const/4 v0, 0x3

    .line 3431
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$NaviInfo;->getRouteRemainDistDisplay()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/android/carsdk/protobuf/CodedOutputStream;->writeString(ILjava/lang/String;)V

    .line 3433
    :cond_2
    iget v0, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$NaviInfo;->routeRemainDistUnitDisplay_:I

    if-eqz v0, :cond_3

    const/4 v1, 0x4

    .line 3434
    invoke-virtual {p1, v1, v0}, Lcom/android/carsdk/protobuf/CodedOutputStream;->writeInt32(II)V

    .line 3436
    :cond_3
    iget-wide v0, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$NaviInfo;->routeRemainTime_:D

    cmpl-double v4, v0, v2

    if-eqz v4, :cond_4

    const/4 v4, 0x5

    .line 3437
    invoke-virtual {p1, v4, v0, v1}, Lcom/android/carsdk/protobuf/CodedOutputStream;->writeDouble(ID)V

    .line 3439
    :cond_4
    iget-boolean v0, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$NaviInfo;->isShowExitInfo_:Z

    if-eqz v0, :cond_5

    const/4 v1, 0x6

    .line 3440
    invoke-virtual {p1, v1, v0}, Lcom/android/carsdk/protobuf/CodedOutputStream;->writeBool(IZ)V

    .line 3442
    :cond_5
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$NaviInfo;->exitInfo_:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_6

    const/4 v0, 0x7

    .line 3443
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$NaviInfo;->getExitInfo()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/android/carsdk/protobuf/CodedOutputStream;->writeString(ILjava/lang/String;)V

    .line 3445
    :cond_6
    iget v0, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$NaviInfo;->exitInfoType_:I

    if-eqz v0, :cond_7

    const/16 v1, 0x8

    .line 3446
    invoke-virtual {p1, v1, v0}, Lcom/android/carsdk/protobuf/CodedOutputStream;->writeInt32(II)V

    .line 3448
    :cond_7
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$NaviInfo;->nextRouteName_:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_8

    const/16 v0, 0x9

    .line 3449
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$NaviInfo;->getNextRouteName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/android/carsdk/protobuf/CodedOutputStream;->writeString(ILjava/lang/String;)V

    .line 3451
    :cond_8
    iget-wide v0, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$NaviInfo;->segmentRemainDist_:D

    cmpl-double v4, v0, v2

    if-eqz v4, :cond_9

    const/16 v4, 0xa

    .line 3452
    invoke-virtual {p1, v4, v0, v1}, Lcom/android/carsdk/protobuf/CodedOutputStream;->writeDouble(ID)V

    .line 3454
    :cond_9
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$NaviInfo;->segmentRemainDistDisplay_:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_a

    const/16 v0, 0xb

    .line 3455
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$NaviInfo;->getSegmentRemainDistDisplay()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/android/carsdk/protobuf/CodedOutputStream;->writeString(ILjava/lang/String;)V

    .line 3457
    :cond_a
    iget v0, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$NaviInfo;->segmentRemainDistUnitDisplay_:I

    if-eqz v0, :cond_b

    const/16 v1, 0xc

    .line 3458
    invoke-virtual {p1, v1, v0}, Lcom/android/carsdk/protobuf/CodedOutputStream;->writeInt32(II)V

    .line 3460
    :cond_b
    iget-wide v0, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$NaviInfo;->segmentRemainProgress_:D

    cmpl-double v4, v0, v2

    if-eqz v4, :cond_c

    const/16 v4, 0xd

    .line 3461
    invoke-virtual {p1, v4, v0, v1}, Lcom/android/carsdk/protobuf/CodedOutputStream;->writeDouble(ID)V

    .line 3463
    :cond_c
    iget-boolean v0, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$NaviInfo;->isTightTurnShow_:Z

    if-eqz v0, :cond_d

    const/16 v1, 0xe

    .line 3464
    invoke-virtual {p1, v1, v0}, Lcom/android/carsdk/protobuf/CodedOutputStream;->writeBool(IZ)V

    .line 3466
    :cond_d
    iget-wide v0, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$NaviInfo;->nextManeuverID_:D

    cmpl-double v4, v0, v2

    if-eqz v4, :cond_e

    const/16 v4, 0xf

    .line 3467
    invoke-virtual {p1, v4, v0, v1}, Lcom/android/carsdk/protobuf/CodedOutputStream;->writeDouble(ID)V

    .line 3469
    :cond_e
    iget-wide v0, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$NaviInfo;->nextManeuverDist_:D

    cmpl-double v2, v0, v2

    if-eqz v2, :cond_f

    const/16 v2, 0x10

    .line 3470
    invoke-virtual {p1, v2, v0, v1}, Lcom/android/carsdk/protobuf/CodedOutputStream;->writeDouble(ID)V

    .line 3472
    :cond_f
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$NaviInfo;->nextManeuverDistDisplay_:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_10

    const/16 v0, 0x11

    .line 3473
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$NaviInfo;->getNextManeuverDistDisplay()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/android/carsdk/protobuf/CodedOutputStream;->writeString(ILjava/lang/String;)V

    .line 3475
    :cond_10
    iget v0, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$NaviInfo;->nextManeuverDistUnitDisplay_:I

    if-eqz v0, :cond_11

    const/16 v1, 0x12

    .line 3476
    invoke-virtual {p1, v1, v0}, Lcom/android/carsdk/protobuf/CodedOutputStream;->writeInt32(II)V

    .line 3478
    :cond_11
    iget-wide v0, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$NaviInfo;->navigationId_:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-eqz v2, :cond_12

    const/16 v2, 0x13

    .line 3479
    invoke-virtual {p1, v2, v0, v1}, Lcom/android/carsdk/protobuf/CodedOutputStream;->writeUInt64(IJ)V

    .line 3481
    :cond_12
    iget v0, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$NaviInfo;->curSegIdx_:I

    if-eqz v0, :cond_13

    const/16 v1, 0x14

    .line 3482
    invoke-virtual {p1, v1, v0}, Lcom/android/carsdk/protobuf/CodedOutputStream;->writeInt32(II)V

    .line 3484
    :cond_13
    iget v0, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$NaviInfo;->curLinkIdx_:I

    if-eqz v0, :cond_14

    const/16 v1, 0x15

    .line 3485
    invoke-virtual {p1, v1, v0}, Lcom/android/carsdk/protobuf/CodedOutputStream;->writeInt32(II)V

    .line 3487
    :cond_14
    iget v0, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$NaviInfo;->curPointIdx_:I

    if-eqz v0, :cond_15

    const/16 v1, 0x16

    .line 3488
    invoke-virtual {p1, v1, v0}, Lcom/android/carsdk/protobuf/CodedOutputStream;->writeInt32(II)V

    :cond_15
    return-void
.end method
