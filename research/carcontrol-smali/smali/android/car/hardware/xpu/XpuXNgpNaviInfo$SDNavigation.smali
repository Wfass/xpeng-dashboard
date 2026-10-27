.class public final Landroid/car/hardware/xpu/XpuXNgpNaviInfo$SDNavigation;
.super Lcom/android/carsdk/protobuf/GeneratedMessageLite;
.source "XpuXNgpNaviInfo.java"

# interfaces
.implements Landroid/car/hardware/xpu/XpuXNgpNaviInfo$SDNavigationOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/car/hardware/xpu/XpuXNgpNaviInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "SDNavigation"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/car/hardware/xpu/XpuXNgpNaviInfo$SDNavigation$Builder;,
        Landroid/car/hardware/xpu/XpuXNgpNaviInfo$SDNavigation$SdInfoCase;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/carsdk/protobuf/GeneratedMessageLite<",
        "Landroid/car/hardware/xpu/XpuXNgpNaviInfo$SDNavigation;",
        "Landroid/car/hardware/xpu/XpuXNgpNaviInfo$SDNavigation$Builder;",
        ">;",
        "Landroid/car/hardware/xpu/XpuXNgpNaviInfo$SDNavigationOrBuilder;"
    }
.end annotation


# static fields
.field private static final DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuXNgpNaviInfo$SDNavigation;

.field public static final LANE_INFO_FIELD_NUMBER:I = 0x1

.field public static final MANEUVER_INFO_FIELD_NUMBER:I = 0x3

.field public static final MANEUVER_INFO_LIST_FIELD_NUMBER:I = 0x5

.field public static final NAVI_FACILITY_LIST_FIELD_NUMBER:I = 0x7

.field public static final NAVI_INFO_FIELD_NUMBER:I = 0x2

.field private static volatile PARSER:Lcom/android/carsdk/protobuf/Parser; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/carsdk/protobuf/Parser<",
            "Landroid/car/hardware/xpu/XpuXNgpNaviInfo$SDNavigation;",
            ">;"
        }
    .end annotation
.end field

.field public static final SEGMENT_LANE_INFOS_LIST_FIELD_NUMBER:I = 0x6

.field public static final TOLL_LANE_INFO_FIELD_NUMBER:I = 0x4


# instance fields
.field private sdInfoCase_:I

.field private sdInfo_:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 14534
    new-instance v0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$SDNavigation;

    invoke-direct {v0}, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$SDNavigation;-><init>()V

    sput-object v0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$SDNavigation;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuXNgpNaviInfo$SDNavigation;

    .line 14535
    invoke-virtual {v0}, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$SDNavigation;->makeImmutable()V

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 13295
    invoke-direct {p0}, Lcom/android/carsdk/protobuf/GeneratedMessageLite;-><init>()V

    const/4 v0, 0x0

    .line 13297
    iput v0, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$SDNavigation;->sdInfoCase_:I

    return-void
.end method

.method static synthetic access$20900()Landroid/car/hardware/xpu/XpuXNgpNaviInfo$SDNavigation;
    .locals 1

    .line 13290
    sget-object v0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$SDNavigation;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuXNgpNaviInfo$SDNavigation;

    return-object v0
.end method

.method static synthetic access$21000(Landroid/car/hardware/xpu/XpuXNgpNaviInfo$SDNavigation;)V
    .locals 0

    .line 13290
    invoke-direct {p0}, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$SDNavigation;->clearSdInfo()V

    return-void
.end method

.method static synthetic access$21100(Landroid/car/hardware/xpu/XpuXNgpNaviInfo$SDNavigation;Landroid/car/hardware/xpu/XpuXNgpNaviInfo$LaneInfo;)V
    .locals 0

    .line 13290
    invoke-direct {p0, p1}, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$SDNavigation;->setLaneInfo(Landroid/car/hardware/xpu/XpuXNgpNaviInfo$LaneInfo;)V

    return-void
.end method

.method static synthetic access$21200(Landroid/car/hardware/xpu/XpuXNgpNaviInfo$SDNavigation;Landroid/car/hardware/xpu/XpuXNgpNaviInfo$LaneInfo$Builder;)V
    .locals 0

    .line 13290
    invoke-direct {p0, p1}, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$SDNavigation;->setLaneInfo(Landroid/car/hardware/xpu/XpuXNgpNaviInfo$LaneInfo$Builder;)V

    return-void
.end method

.method static synthetic access$21300(Landroid/car/hardware/xpu/XpuXNgpNaviInfo$SDNavigation;Landroid/car/hardware/xpu/XpuXNgpNaviInfo$LaneInfo;)V
    .locals 0

    .line 13290
    invoke-direct {p0, p1}, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$SDNavigation;->mergeLaneInfo(Landroid/car/hardware/xpu/XpuXNgpNaviInfo$LaneInfo;)V

    return-void
.end method

.method static synthetic access$21400(Landroid/car/hardware/xpu/XpuXNgpNaviInfo$SDNavigation;)V
    .locals 0

    .line 13290
    invoke-direct {p0}, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$SDNavigation;->clearLaneInfo()V

    return-void
.end method

.method static synthetic access$21500(Landroid/car/hardware/xpu/XpuXNgpNaviInfo$SDNavigation;Landroid/car/hardware/xpu/XpuXNgpNaviInfo$NaviInfo;)V
    .locals 0

    .line 13290
    invoke-direct {p0, p1}, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$SDNavigation;->setNaviInfo(Landroid/car/hardware/xpu/XpuXNgpNaviInfo$NaviInfo;)V

    return-void
.end method

.method static synthetic access$21600(Landroid/car/hardware/xpu/XpuXNgpNaviInfo$SDNavigation;Landroid/car/hardware/xpu/XpuXNgpNaviInfo$NaviInfo$Builder;)V
    .locals 0

    .line 13290
    invoke-direct {p0, p1}, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$SDNavigation;->setNaviInfo(Landroid/car/hardware/xpu/XpuXNgpNaviInfo$NaviInfo$Builder;)V

    return-void
.end method

.method static synthetic access$21700(Landroid/car/hardware/xpu/XpuXNgpNaviInfo$SDNavigation;Landroid/car/hardware/xpu/XpuXNgpNaviInfo$NaviInfo;)V
    .locals 0

    .line 13290
    invoke-direct {p0, p1}, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$SDNavigation;->mergeNaviInfo(Landroid/car/hardware/xpu/XpuXNgpNaviInfo$NaviInfo;)V

    return-void
.end method

.method static synthetic access$21800(Landroid/car/hardware/xpu/XpuXNgpNaviInfo$SDNavigation;)V
    .locals 0

    .line 13290
    invoke-direct {p0}, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$SDNavigation;->clearNaviInfo()V

    return-void
.end method

.method static synthetic access$21900(Landroid/car/hardware/xpu/XpuXNgpNaviInfo$SDNavigation;Landroid/car/hardware/xpu/XpuXNgpNaviInfo$ManeuverInfo;)V
    .locals 0

    .line 13290
    invoke-direct {p0, p1}, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$SDNavigation;->setManeuverInfo(Landroid/car/hardware/xpu/XpuXNgpNaviInfo$ManeuverInfo;)V

    return-void
.end method

.method static synthetic access$22000(Landroid/car/hardware/xpu/XpuXNgpNaviInfo$SDNavigation;Landroid/car/hardware/xpu/XpuXNgpNaviInfo$ManeuverInfo$Builder;)V
    .locals 0

    .line 13290
    invoke-direct {p0, p1}, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$SDNavigation;->setManeuverInfo(Landroid/car/hardware/xpu/XpuXNgpNaviInfo$ManeuverInfo$Builder;)V

    return-void
.end method

.method static synthetic access$22100(Landroid/car/hardware/xpu/XpuXNgpNaviInfo$SDNavigation;Landroid/car/hardware/xpu/XpuXNgpNaviInfo$ManeuverInfo;)V
    .locals 0

    .line 13290
    invoke-direct {p0, p1}, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$SDNavigation;->mergeManeuverInfo(Landroid/car/hardware/xpu/XpuXNgpNaviInfo$ManeuverInfo;)V

    return-void
.end method

.method static synthetic access$22200(Landroid/car/hardware/xpu/XpuXNgpNaviInfo$SDNavigation;)V
    .locals 0

    .line 13290
    invoke-direct {p0}, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$SDNavigation;->clearManeuverInfo()V

    return-void
.end method

.method static synthetic access$22300(Landroid/car/hardware/xpu/XpuXNgpNaviInfo$SDNavigation;Landroid/car/hardware/xpu/XpuXNgpNaviInfo$TollLaneInfo;)V
    .locals 0

    .line 13290
    invoke-direct {p0, p1}, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$SDNavigation;->setTollLaneInfo(Landroid/car/hardware/xpu/XpuXNgpNaviInfo$TollLaneInfo;)V

    return-void
.end method

.method static synthetic access$22400(Landroid/car/hardware/xpu/XpuXNgpNaviInfo$SDNavigation;Landroid/car/hardware/xpu/XpuXNgpNaviInfo$TollLaneInfo$Builder;)V
    .locals 0

    .line 13290
    invoke-direct {p0, p1}, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$SDNavigation;->setTollLaneInfo(Landroid/car/hardware/xpu/XpuXNgpNaviInfo$TollLaneInfo$Builder;)V

    return-void
.end method

.method static synthetic access$22500(Landroid/car/hardware/xpu/XpuXNgpNaviInfo$SDNavigation;Landroid/car/hardware/xpu/XpuXNgpNaviInfo$TollLaneInfo;)V
    .locals 0

    .line 13290
    invoke-direct {p0, p1}, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$SDNavigation;->mergeTollLaneInfo(Landroid/car/hardware/xpu/XpuXNgpNaviInfo$TollLaneInfo;)V

    return-void
.end method

.method static synthetic access$22600(Landroid/car/hardware/xpu/XpuXNgpNaviInfo$SDNavigation;)V
    .locals 0

    .line 13290
    invoke-direct {p0}, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$SDNavigation;->clearTollLaneInfo()V

    return-void
.end method

.method static synthetic access$22700(Landroid/car/hardware/xpu/XpuXNgpNaviInfo$SDNavigation;Landroid/car/hardware/xpu/XpuXNgpNaviInfo$ManeuverInfoList;)V
    .locals 0

    .line 13290
    invoke-direct {p0, p1}, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$SDNavigation;->setManeuverInfoList(Landroid/car/hardware/xpu/XpuXNgpNaviInfo$ManeuverInfoList;)V

    return-void
.end method

.method static synthetic access$22800(Landroid/car/hardware/xpu/XpuXNgpNaviInfo$SDNavigation;Landroid/car/hardware/xpu/XpuXNgpNaviInfo$ManeuverInfoList$Builder;)V
    .locals 0

    .line 13290
    invoke-direct {p0, p1}, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$SDNavigation;->setManeuverInfoList(Landroid/car/hardware/xpu/XpuXNgpNaviInfo$ManeuverInfoList$Builder;)V

    return-void
.end method

.method static synthetic access$22900(Landroid/car/hardware/xpu/XpuXNgpNaviInfo$SDNavigation;Landroid/car/hardware/xpu/XpuXNgpNaviInfo$ManeuverInfoList;)V
    .locals 0

    .line 13290
    invoke-direct {p0, p1}, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$SDNavigation;->mergeManeuverInfoList(Landroid/car/hardware/xpu/XpuXNgpNaviInfo$ManeuverInfoList;)V

    return-void
.end method

.method static synthetic access$23000(Landroid/car/hardware/xpu/XpuXNgpNaviInfo$SDNavigation;)V
    .locals 0

    .line 13290
    invoke-direct {p0}, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$SDNavigation;->clearManeuverInfoList()V

    return-void
.end method

.method static synthetic access$23100(Landroid/car/hardware/xpu/XpuXNgpNaviInfo$SDNavigation;Landroid/car/hardware/xpu/XpuXNgpNaviInfo$SegmentLaneInfosList;)V
    .locals 0

    .line 13290
    invoke-direct {p0, p1}, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$SDNavigation;->setSegmentLaneInfosList(Landroid/car/hardware/xpu/XpuXNgpNaviInfo$SegmentLaneInfosList;)V

    return-void
.end method

.method static synthetic access$23200(Landroid/car/hardware/xpu/XpuXNgpNaviInfo$SDNavigation;Landroid/car/hardware/xpu/XpuXNgpNaviInfo$SegmentLaneInfosList$Builder;)V
    .locals 0

    .line 13290
    invoke-direct {p0, p1}, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$SDNavigation;->setSegmentLaneInfosList(Landroid/car/hardware/xpu/XpuXNgpNaviInfo$SegmentLaneInfosList$Builder;)V

    return-void
.end method

.method static synthetic access$23300(Landroid/car/hardware/xpu/XpuXNgpNaviInfo$SDNavigation;Landroid/car/hardware/xpu/XpuXNgpNaviInfo$SegmentLaneInfosList;)V
    .locals 0

    .line 13290
    invoke-direct {p0, p1}, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$SDNavigation;->mergeSegmentLaneInfosList(Landroid/car/hardware/xpu/XpuXNgpNaviInfo$SegmentLaneInfosList;)V

    return-void
.end method

.method static synthetic access$23400(Landroid/car/hardware/xpu/XpuXNgpNaviInfo$SDNavigation;)V
    .locals 0

    .line 13290
    invoke-direct {p0}, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$SDNavigation;->clearSegmentLaneInfosList()V

    return-void
.end method

.method static synthetic access$23500(Landroid/car/hardware/xpu/XpuXNgpNaviInfo$SDNavigation;Landroid/car/hardware/xpu/XpuXNgpNaviInfo$NaviFacilityList;)V
    .locals 0

    .line 13290
    invoke-direct {p0, p1}, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$SDNavigation;->setNaviFacilityList(Landroid/car/hardware/xpu/XpuXNgpNaviInfo$NaviFacilityList;)V

    return-void
.end method

.method static synthetic access$23600(Landroid/car/hardware/xpu/XpuXNgpNaviInfo$SDNavigation;Landroid/car/hardware/xpu/XpuXNgpNaviInfo$NaviFacilityList$Builder;)V
    .locals 0

    .line 13290
    invoke-direct {p0, p1}, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$SDNavigation;->setNaviFacilityList(Landroid/car/hardware/xpu/XpuXNgpNaviInfo$NaviFacilityList$Builder;)V

    return-void
.end method

.method static synthetic access$23700(Landroid/car/hardware/xpu/XpuXNgpNaviInfo$SDNavigation;Landroid/car/hardware/xpu/XpuXNgpNaviInfo$NaviFacilityList;)V
    .locals 0

    .line 13290
    invoke-direct {p0, p1}, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$SDNavigation;->mergeNaviFacilityList(Landroid/car/hardware/xpu/XpuXNgpNaviInfo$NaviFacilityList;)V

    return-void
.end method

.method static synthetic access$23800(Landroid/car/hardware/xpu/XpuXNgpNaviInfo$SDNavigation;)V
    .locals 0

    .line 13290
    invoke-direct {p0}, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$SDNavigation;->clearNaviFacilityList()V

    return-void
.end method

.method private clearLaneInfo()V
    .locals 2

    .line 13395
    iget v0, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$SDNavigation;->sdInfoCase_:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    .line 13396
    iput v0, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$SDNavigation;->sdInfoCase_:I

    const/4 v0, 0x0

    .line 13397
    iput-object v0, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$SDNavigation;->sdInfo_:Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method private clearManeuverInfo()V
    .locals 2

    .line 13497
    iget v0, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$SDNavigation;->sdInfoCase_:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    .line 13498
    iput v0, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$SDNavigation;->sdInfoCase_:I

    const/4 v0, 0x0

    .line 13499
    iput-object v0, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$SDNavigation;->sdInfo_:Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method private clearManeuverInfoList()V
    .locals 2

    .line 13639
    iget v0, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$SDNavigation;->sdInfoCase_:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    .line 13640
    iput v0, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$SDNavigation;->sdInfoCase_:I

    const/4 v0, 0x0

    .line 13641
    iput-object v0, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$SDNavigation;->sdInfo_:Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method private clearNaviFacilityList()V
    .locals 2

    .line 13781
    iget v0, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$SDNavigation;->sdInfoCase_:I

    const/4 v1, 0x7

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    .line 13782
    iput v0, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$SDNavigation;->sdInfoCase_:I

    const/4 v0, 0x0

    .line 13783
    iput-object v0, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$SDNavigation;->sdInfo_:Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method private clearNaviInfo()V
    .locals 2

    .line 13446
    iget v0, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$SDNavigation;->sdInfoCase_:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    .line 13447
    iput v0, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$SDNavigation;->sdInfoCase_:I

    const/4 v0, 0x0

    .line 13448
    iput-object v0, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$SDNavigation;->sdInfo_:Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method private clearSdInfo()V
    .locals 1

    const/4 v0, 0x0

    .line 13346
    iput v0, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$SDNavigation;->sdInfoCase_:I

    const/4 v0, 0x0

    .line 13347
    iput-object v0, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$SDNavigation;->sdInfo_:Ljava/lang/Object;

    return-void
.end method

.method private clearSegmentLaneInfosList()V
    .locals 2

    .line 13710
    iget v0, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$SDNavigation;->sdInfoCase_:I

    const/4 v1, 0x6

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    .line 13711
    iput v0, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$SDNavigation;->sdInfoCase_:I

    const/4 v0, 0x0

    .line 13712
    iput-object v0, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$SDNavigation;->sdInfo_:Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method private clearTollLaneInfo()V
    .locals 2

    .line 13568
    iget v0, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$SDNavigation;->sdInfoCase_:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    .line 13569
    iput v0, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$SDNavigation;->sdInfoCase_:I

    const/4 v0, 0x0

    .line 13570
    iput-object v0, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$SDNavigation;->sdInfo_:Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method public static getDefaultInstance()Landroid/car/hardware/xpu/XpuXNgpNaviInfo$SDNavigation;
    .locals 1

    .line 14539
    sget-object v0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$SDNavigation;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuXNgpNaviInfo$SDNavigation;

    return-object v0
.end method

.method private mergeLaneInfo(Landroid/car/hardware/xpu/XpuXNgpNaviInfo$LaneInfo;)V
    .locals 3

    .line 13382
    iget v0, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$SDNavigation;->sdInfoCase_:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$SDNavigation;->sdInfo_:Ljava/lang/Object;

    .line 13383
    invoke-static {}, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$LaneInfo;->getDefaultInstance()Landroid/car/hardware/xpu/XpuXNgpNaviInfo$LaneInfo;

    move-result-object v2

    if-eq v0, v2, :cond_0

    .line 13384
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$SDNavigation;->sdInfo_:Ljava/lang/Object;

    check-cast v0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$LaneInfo;

    invoke-static {v0}, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$LaneInfo;->newBuilder(Landroid/car/hardware/xpu/XpuXNgpNaviInfo$LaneInfo;)Landroid/car/hardware/xpu/XpuXNgpNaviInfo$LaneInfo$Builder;

    move-result-object v0

    .line 13385
    invoke-virtual {v0, p1}, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$LaneInfo$Builder;->mergeFrom(Lcom/android/carsdk/protobuf/GeneratedMessageLite;)Lcom/android/carsdk/protobuf/GeneratedMessageLite$Builder;

    move-result-object p1

    check-cast p1, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$LaneInfo$Builder;

    invoke-virtual {p1}, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$LaneInfo$Builder;->buildPartial()Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object p1

    iput-object p1, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$SDNavigation;->sdInfo_:Ljava/lang/Object;

    goto :goto_0

    .line 13387
    :cond_0
    iput-object p1, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$SDNavigation;->sdInfo_:Ljava/lang/Object;

    .line 13389
    :goto_0
    iput v1, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$SDNavigation;->sdInfoCase_:I

    return-void
.end method

.method private mergeManeuverInfo(Landroid/car/hardware/xpu/XpuXNgpNaviInfo$ManeuverInfo;)V
    .locals 3

    .line 13484
    iget v0, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$SDNavigation;->sdInfoCase_:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$SDNavigation;->sdInfo_:Ljava/lang/Object;

    .line 13485
    invoke-static {}, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$ManeuverInfo;->getDefaultInstance()Landroid/car/hardware/xpu/XpuXNgpNaviInfo$ManeuverInfo;

    move-result-object v2

    if-eq v0, v2, :cond_0

    .line 13486
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$SDNavigation;->sdInfo_:Ljava/lang/Object;

    check-cast v0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$ManeuverInfo;

    invoke-static {v0}, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$ManeuverInfo;->newBuilder(Landroid/car/hardware/xpu/XpuXNgpNaviInfo$ManeuverInfo;)Landroid/car/hardware/xpu/XpuXNgpNaviInfo$ManeuverInfo$Builder;

    move-result-object v0

    .line 13487
    invoke-virtual {v0, p1}, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$ManeuverInfo$Builder;->mergeFrom(Lcom/android/carsdk/protobuf/GeneratedMessageLite;)Lcom/android/carsdk/protobuf/GeneratedMessageLite$Builder;

    move-result-object p1

    check-cast p1, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$ManeuverInfo$Builder;

    invoke-virtual {p1}, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$ManeuverInfo$Builder;->buildPartial()Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object p1

    iput-object p1, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$SDNavigation;->sdInfo_:Ljava/lang/Object;

    goto :goto_0

    .line 13489
    :cond_0
    iput-object p1, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$SDNavigation;->sdInfo_:Ljava/lang/Object;

    .line 13491
    :goto_0
    iput v1, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$SDNavigation;->sdInfoCase_:I

    return-void
.end method

.method private mergeManeuverInfoList(Landroid/car/hardware/xpu/XpuXNgpNaviInfo$ManeuverInfoList;)V
    .locals 3

    .line 13622
    iget v0, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$SDNavigation;->sdInfoCase_:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$SDNavigation;->sdInfo_:Ljava/lang/Object;

    .line 13623
    invoke-static {}, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$ManeuverInfoList;->getDefaultInstance()Landroid/car/hardware/xpu/XpuXNgpNaviInfo$ManeuverInfoList;

    move-result-object v2

    if-eq v0, v2, :cond_0

    .line 13624
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$SDNavigation;->sdInfo_:Ljava/lang/Object;

    check-cast v0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$ManeuverInfoList;

    invoke-static {v0}, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$ManeuverInfoList;->newBuilder(Landroid/car/hardware/xpu/XpuXNgpNaviInfo$ManeuverInfoList;)Landroid/car/hardware/xpu/XpuXNgpNaviInfo$ManeuverInfoList$Builder;

    move-result-object v0

    .line 13625
    invoke-virtual {v0, p1}, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$ManeuverInfoList$Builder;->mergeFrom(Lcom/android/carsdk/protobuf/GeneratedMessageLite;)Lcom/android/carsdk/protobuf/GeneratedMessageLite$Builder;

    move-result-object p1

    check-cast p1, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$ManeuverInfoList$Builder;

    invoke-virtual {p1}, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$ManeuverInfoList$Builder;->buildPartial()Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object p1

    iput-object p1, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$SDNavigation;->sdInfo_:Ljava/lang/Object;

    goto :goto_0

    .line 13627
    :cond_0
    iput-object p1, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$SDNavigation;->sdInfo_:Ljava/lang/Object;

    .line 13629
    :goto_0
    iput v1, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$SDNavigation;->sdInfoCase_:I

    return-void
.end method

.method private mergeNaviFacilityList(Landroid/car/hardware/xpu/XpuXNgpNaviInfo$NaviFacilityList;)V
    .locals 3

    .line 13764
    iget v0, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$SDNavigation;->sdInfoCase_:I

    const/4 v1, 0x7

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$SDNavigation;->sdInfo_:Ljava/lang/Object;

    .line 13765
    invoke-static {}, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$NaviFacilityList;->getDefaultInstance()Landroid/car/hardware/xpu/XpuXNgpNaviInfo$NaviFacilityList;

    move-result-object v2

    if-eq v0, v2, :cond_0

    .line 13766
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$SDNavigation;->sdInfo_:Ljava/lang/Object;

    check-cast v0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$NaviFacilityList;

    invoke-static {v0}, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$NaviFacilityList;->newBuilder(Landroid/car/hardware/xpu/XpuXNgpNaviInfo$NaviFacilityList;)Landroid/car/hardware/xpu/XpuXNgpNaviInfo$NaviFacilityList$Builder;

    move-result-object v0

    .line 13767
    invoke-virtual {v0, p1}, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$NaviFacilityList$Builder;->mergeFrom(Lcom/android/carsdk/protobuf/GeneratedMessageLite;)Lcom/android/carsdk/protobuf/GeneratedMessageLite$Builder;

    move-result-object p1

    check-cast p1, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$NaviFacilityList$Builder;

    invoke-virtual {p1}, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$NaviFacilityList$Builder;->buildPartial()Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object p1

    iput-object p1, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$SDNavigation;->sdInfo_:Ljava/lang/Object;

    goto :goto_0

    .line 13769
    :cond_0
    iput-object p1, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$SDNavigation;->sdInfo_:Ljava/lang/Object;

    .line 13771
    :goto_0
    iput v1, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$SDNavigation;->sdInfoCase_:I

    return-void
.end method

.method private mergeNaviInfo(Landroid/car/hardware/xpu/XpuXNgpNaviInfo$NaviInfo;)V
    .locals 3

    .line 13433
    iget v0, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$SDNavigation;->sdInfoCase_:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$SDNavigation;->sdInfo_:Ljava/lang/Object;

    .line 13434
    invoke-static {}, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$NaviInfo;->getDefaultInstance()Landroid/car/hardware/xpu/XpuXNgpNaviInfo$NaviInfo;

    move-result-object v2

    if-eq v0, v2, :cond_0

    .line 13435
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$SDNavigation;->sdInfo_:Ljava/lang/Object;

    check-cast v0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$NaviInfo;

    invoke-static {v0}, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$NaviInfo;->newBuilder(Landroid/car/hardware/xpu/XpuXNgpNaviInfo$NaviInfo;)Landroid/car/hardware/xpu/XpuXNgpNaviInfo$NaviInfo$Builder;

    move-result-object v0

    .line 13436
    invoke-virtual {v0, p1}, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$NaviInfo$Builder;->mergeFrom(Lcom/android/carsdk/protobuf/GeneratedMessageLite;)Lcom/android/carsdk/protobuf/GeneratedMessageLite$Builder;

    move-result-object p1

    check-cast p1, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$NaviInfo$Builder;

    invoke-virtual {p1}, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$NaviInfo$Builder;->buildPartial()Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object p1

    iput-object p1, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$SDNavigation;->sdInfo_:Ljava/lang/Object;

    goto :goto_0

    .line 13438
    :cond_0
    iput-object p1, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$SDNavigation;->sdInfo_:Ljava/lang/Object;

    .line 13440
    :goto_0
    iput v1, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$SDNavigation;->sdInfoCase_:I

    return-void
.end method

.method private mergeSegmentLaneInfosList(Landroid/car/hardware/xpu/XpuXNgpNaviInfo$SegmentLaneInfosList;)V
    .locals 3

    .line 13693
    iget v0, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$SDNavigation;->sdInfoCase_:I

    const/4 v1, 0x6

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$SDNavigation;->sdInfo_:Ljava/lang/Object;

    .line 13694
    invoke-static {}, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$SegmentLaneInfosList;->getDefaultInstance()Landroid/car/hardware/xpu/XpuXNgpNaviInfo$SegmentLaneInfosList;

    move-result-object v2

    if-eq v0, v2, :cond_0

    .line 13695
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$SDNavigation;->sdInfo_:Ljava/lang/Object;

    check-cast v0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$SegmentLaneInfosList;

    invoke-static {v0}, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$SegmentLaneInfosList;->newBuilder(Landroid/car/hardware/xpu/XpuXNgpNaviInfo$SegmentLaneInfosList;)Landroid/car/hardware/xpu/XpuXNgpNaviInfo$SegmentLaneInfosList$Builder;

    move-result-object v0

    .line 13696
    invoke-virtual {v0, p1}, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$SegmentLaneInfosList$Builder;->mergeFrom(Lcom/android/carsdk/protobuf/GeneratedMessageLite;)Lcom/android/carsdk/protobuf/GeneratedMessageLite$Builder;

    move-result-object p1

    check-cast p1, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$SegmentLaneInfosList$Builder;

    invoke-virtual {p1}, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$SegmentLaneInfosList$Builder;->buildPartial()Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object p1

    iput-object p1, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$SDNavigation;->sdInfo_:Ljava/lang/Object;

    goto :goto_0

    .line 13698
    :cond_0
    iput-object p1, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$SDNavigation;->sdInfo_:Ljava/lang/Object;

    .line 13700
    :goto_0
    iput v1, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$SDNavigation;->sdInfoCase_:I

    return-void
.end method

.method private mergeTollLaneInfo(Landroid/car/hardware/xpu/XpuXNgpNaviInfo$TollLaneInfo;)V
    .locals 3

    .line 13551
    iget v0, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$SDNavigation;->sdInfoCase_:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$SDNavigation;->sdInfo_:Ljava/lang/Object;

    .line 13552
    invoke-static {}, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$TollLaneInfo;->getDefaultInstance()Landroid/car/hardware/xpu/XpuXNgpNaviInfo$TollLaneInfo;

    move-result-object v2

    if-eq v0, v2, :cond_0

    .line 13553
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$SDNavigation;->sdInfo_:Ljava/lang/Object;

    check-cast v0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$TollLaneInfo;

    invoke-static {v0}, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$TollLaneInfo;->newBuilder(Landroid/car/hardware/xpu/XpuXNgpNaviInfo$TollLaneInfo;)Landroid/car/hardware/xpu/XpuXNgpNaviInfo$TollLaneInfo$Builder;

    move-result-object v0

    .line 13554
    invoke-virtual {v0, p1}, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$TollLaneInfo$Builder;->mergeFrom(Lcom/android/carsdk/protobuf/GeneratedMessageLite;)Lcom/android/carsdk/protobuf/GeneratedMessageLite$Builder;

    move-result-object p1

    check-cast p1, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$TollLaneInfo$Builder;

    invoke-virtual {p1}, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$TollLaneInfo$Builder;->buildPartial()Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object p1

    iput-object p1, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$SDNavigation;->sdInfo_:Ljava/lang/Object;

    goto :goto_0

    .line 13556
    :cond_0
    iput-object p1, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$SDNavigation;->sdInfo_:Ljava/lang/Object;

    .line 13558
    :goto_0
    iput v1, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$SDNavigation;->sdInfoCase_:I

    return-void
.end method

.method public static newBuilder()Landroid/car/hardware/xpu/XpuXNgpNaviInfo$SDNavigation$Builder;
    .locals 1

    .line 13911
    sget-object v0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$SDNavigation;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuXNgpNaviInfo$SDNavigation;

    invoke-virtual {v0}, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$SDNavigation;->toBuilder()Lcom/android/carsdk/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$SDNavigation$Builder;

    return-object v0
.end method

.method public static newBuilder(Landroid/car/hardware/xpu/XpuXNgpNaviInfo$SDNavigation;)Landroid/car/hardware/xpu/XpuXNgpNaviInfo$SDNavigation$Builder;
    .locals 1

    .line 13914
    sget-object v0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$SDNavigation;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuXNgpNaviInfo$SDNavigation;

    invoke-virtual {v0}, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$SDNavigation;->toBuilder()Lcom/android/carsdk/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$SDNavigation$Builder;

    invoke-virtual {v0, p0}, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$SDNavigation$Builder;->mergeFrom(Lcom/android/carsdk/protobuf/GeneratedMessageLite;)Lcom/android/carsdk/protobuf/GeneratedMessageLite$Builder;

    move-result-object p0

    check-cast p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$SDNavigation$Builder;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Landroid/car/hardware/xpu/XpuXNgpNaviInfo$SDNavigation;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 13888
    sget-object v0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$SDNavigation;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuXNgpNaviInfo$SDNavigation;

    invoke-static {v0, p0}, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$SDNavigation;->parseDelimitedFrom(Lcom/android/carsdk/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$SDNavigation;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/android/carsdk/protobuf/ExtensionRegistryLite;)Landroid/car/hardware/xpu/XpuXNgpNaviInfo$SDNavigation;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 13894
    sget-object v0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$SDNavigation;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuXNgpNaviInfo$SDNavigation;

    invoke-static {v0, p0, p1}, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$SDNavigation;->parseDelimitedFrom(Lcom/android/carsdk/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/android/carsdk/protobuf/ExtensionRegistryLite;)Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$SDNavigation;

    return-object p0
.end method

.method public static parseFrom(Lcom/android/carsdk/protobuf/ByteString;)Landroid/car/hardware/xpu/XpuXNgpNaviInfo$SDNavigation;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/carsdk/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 13852
    sget-object v0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$SDNavigation;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuXNgpNaviInfo$SDNavigation;

    invoke-static {v0, p0}, Lcom/android/carsdk/protobuf/GeneratedMessageLite;->parseFrom(Lcom/android/carsdk/protobuf/GeneratedMessageLite;Lcom/android/carsdk/protobuf/ByteString;)Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$SDNavigation;

    return-object p0
.end method

.method public static parseFrom(Lcom/android/carsdk/protobuf/ByteString;Lcom/android/carsdk/protobuf/ExtensionRegistryLite;)Landroid/car/hardware/xpu/XpuXNgpNaviInfo$SDNavigation;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/carsdk/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 13859
    sget-object v0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$SDNavigation;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuXNgpNaviInfo$SDNavigation;

    invoke-static {v0, p0, p1}, Lcom/android/carsdk/protobuf/GeneratedMessageLite;->parseFrom(Lcom/android/carsdk/protobuf/GeneratedMessageLite;Lcom/android/carsdk/protobuf/ByteString;Lcom/android/carsdk/protobuf/ExtensionRegistryLite;)Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$SDNavigation;

    return-object p0
.end method

.method public static parseFrom(Lcom/android/carsdk/protobuf/CodedInputStream;)Landroid/car/hardware/xpu/XpuXNgpNaviInfo$SDNavigation;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 13899
    sget-object v0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$SDNavigation;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuXNgpNaviInfo$SDNavigation;

    invoke-static {v0, p0}, Lcom/android/carsdk/protobuf/GeneratedMessageLite;->parseFrom(Lcom/android/carsdk/protobuf/GeneratedMessageLite;Lcom/android/carsdk/protobuf/CodedInputStream;)Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$SDNavigation;

    return-object p0
.end method

.method public static parseFrom(Lcom/android/carsdk/protobuf/CodedInputStream;Lcom/android/carsdk/protobuf/ExtensionRegistryLite;)Landroid/car/hardware/xpu/XpuXNgpNaviInfo$SDNavigation;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 13906
    sget-object v0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$SDNavigation;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuXNgpNaviInfo$SDNavigation;

    invoke-static {v0, p0, p1}, Lcom/android/carsdk/protobuf/GeneratedMessageLite;->parseFrom(Lcom/android/carsdk/protobuf/GeneratedMessageLite;Lcom/android/carsdk/protobuf/CodedInputStream;Lcom/android/carsdk/protobuf/ExtensionRegistryLite;)Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$SDNavigation;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Landroid/car/hardware/xpu/XpuXNgpNaviInfo$SDNavigation;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 13876
    sget-object v0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$SDNavigation;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuXNgpNaviInfo$SDNavigation;

    invoke-static {v0, p0}, Lcom/android/carsdk/protobuf/GeneratedMessageLite;->parseFrom(Lcom/android/carsdk/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$SDNavigation;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/android/carsdk/protobuf/ExtensionRegistryLite;)Landroid/car/hardware/xpu/XpuXNgpNaviInfo$SDNavigation;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 13883
    sget-object v0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$SDNavigation;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuXNgpNaviInfo$SDNavigation;

    invoke-static {v0, p0, p1}, Lcom/android/carsdk/protobuf/GeneratedMessageLite;->parseFrom(Lcom/android/carsdk/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/android/carsdk/protobuf/ExtensionRegistryLite;)Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$SDNavigation;

    return-object p0
.end method

.method public static parseFrom([B)Landroid/car/hardware/xpu/XpuXNgpNaviInfo$SDNavigation;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/carsdk/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 13864
    sget-object v0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$SDNavigation;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuXNgpNaviInfo$SDNavigation;

    invoke-static {v0, p0}, Lcom/android/carsdk/protobuf/GeneratedMessageLite;->parseFrom(Lcom/android/carsdk/protobuf/GeneratedMessageLite;[B)Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$SDNavigation;

    return-object p0
.end method

.method public static parseFrom([BLcom/android/carsdk/protobuf/ExtensionRegistryLite;)Landroid/car/hardware/xpu/XpuXNgpNaviInfo$SDNavigation;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/carsdk/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 13871
    sget-object v0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$SDNavigation;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuXNgpNaviInfo$SDNavigation;

    invoke-static {v0, p0, p1}, Lcom/android/carsdk/protobuf/GeneratedMessageLite;->parseFrom(Lcom/android/carsdk/protobuf/GeneratedMessageLite;[BLcom/android/carsdk/protobuf/ExtensionRegistryLite;)Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$SDNavigation;

    return-object p0
.end method

.method public static parser()Lcom/android/carsdk/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/android/carsdk/protobuf/Parser<",
            "Landroid/car/hardware/xpu/XpuXNgpNaviInfo$SDNavigation;",
            ">;"
        }
    .end annotation

    .line 14545
    sget-object v0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$SDNavigation;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuXNgpNaviInfo$SDNavigation;

    invoke-virtual {v0}, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$SDNavigation;->getParserForType()Lcom/android/carsdk/protobuf/Parser;

    move-result-object v0

    return-object v0
.end method

.method private setLaneInfo(Landroid/car/hardware/xpu/XpuXNgpNaviInfo$LaneInfo$Builder;)V
    .locals 0

    .line 13375
    invoke-virtual {p1}, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$LaneInfo$Builder;->build()Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object p1

    iput-object p1, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$SDNavigation;->sdInfo_:Ljava/lang/Object;

    const/4 p1, 0x1

    .line 13376
    iput p1, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$SDNavigation;->sdInfoCase_:I

    return-void
.end method

.method private setLaneInfo(Landroid/car/hardware/xpu/XpuXNgpNaviInfo$LaneInfo;)V
    .locals 0

    .line 13365
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 13367
    iput-object p1, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$SDNavigation;->sdInfo_:Ljava/lang/Object;

    const/4 p1, 0x1

    .line 13368
    iput p1, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$SDNavigation;->sdInfoCase_:I

    return-void
.end method

.method private setManeuverInfo(Landroid/car/hardware/xpu/XpuXNgpNaviInfo$ManeuverInfo$Builder;)V
    .locals 0

    .line 13477
    invoke-virtual {p1}, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$ManeuverInfo$Builder;->build()Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object p1

    iput-object p1, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$SDNavigation;->sdInfo_:Ljava/lang/Object;

    const/4 p1, 0x3

    .line 13478
    iput p1, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$SDNavigation;->sdInfoCase_:I

    return-void
.end method

.method private setManeuverInfo(Landroid/car/hardware/xpu/XpuXNgpNaviInfo$ManeuverInfo;)V
    .locals 0

    .line 13467
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 13469
    iput-object p1, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$SDNavigation;->sdInfo_:Ljava/lang/Object;

    const/4 p1, 0x3

    .line 13470
    iput p1, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$SDNavigation;->sdInfoCase_:I

    return-void
.end method

.method private setManeuverInfoList(Landroid/car/hardware/xpu/XpuXNgpNaviInfo$ManeuverInfoList$Builder;)V
    .locals 0

    .line 13611
    invoke-virtual {p1}, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$ManeuverInfoList$Builder;->build()Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object p1

    iput-object p1, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$SDNavigation;->sdInfo_:Ljava/lang/Object;

    const/4 p1, 0x5

    .line 13612
    iput p1, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$SDNavigation;->sdInfoCase_:I

    return-void
.end method

.method private setManeuverInfoList(Landroid/car/hardware/xpu/XpuXNgpNaviInfo$ManeuverInfoList;)V
    .locals 0

    .line 13597
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 13599
    iput-object p1, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$SDNavigation;->sdInfo_:Ljava/lang/Object;

    const/4 p1, 0x5

    .line 13600
    iput p1, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$SDNavigation;->sdInfoCase_:I

    return-void
.end method

.method private setNaviFacilityList(Landroid/car/hardware/xpu/XpuXNgpNaviInfo$NaviFacilityList$Builder;)V
    .locals 0

    .line 13753
    invoke-virtual {p1}, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$NaviFacilityList$Builder;->build()Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object p1

    iput-object p1, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$SDNavigation;->sdInfo_:Ljava/lang/Object;

    const/4 p1, 0x7

    .line 13754
    iput p1, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$SDNavigation;->sdInfoCase_:I

    return-void
.end method

.method private setNaviFacilityList(Landroid/car/hardware/xpu/XpuXNgpNaviInfo$NaviFacilityList;)V
    .locals 0

    .line 13739
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 13741
    iput-object p1, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$SDNavigation;->sdInfo_:Ljava/lang/Object;

    const/4 p1, 0x7

    .line 13742
    iput p1, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$SDNavigation;->sdInfoCase_:I

    return-void
.end method

.method private setNaviInfo(Landroid/car/hardware/xpu/XpuXNgpNaviInfo$NaviInfo$Builder;)V
    .locals 0

    .line 13426
    invoke-virtual {p1}, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$NaviInfo$Builder;->build()Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object p1

    iput-object p1, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$SDNavigation;->sdInfo_:Ljava/lang/Object;

    const/4 p1, 0x2

    .line 13427
    iput p1, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$SDNavigation;->sdInfoCase_:I

    return-void
.end method

.method private setNaviInfo(Landroid/car/hardware/xpu/XpuXNgpNaviInfo$NaviInfo;)V
    .locals 0

    .line 13416
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 13418
    iput-object p1, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$SDNavigation;->sdInfo_:Ljava/lang/Object;

    const/4 p1, 0x2

    .line 13419
    iput p1, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$SDNavigation;->sdInfoCase_:I

    return-void
.end method

.method private setSegmentLaneInfosList(Landroid/car/hardware/xpu/XpuXNgpNaviInfo$SegmentLaneInfosList$Builder;)V
    .locals 0

    .line 13682
    invoke-virtual {p1}, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$SegmentLaneInfosList$Builder;->build()Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object p1

    iput-object p1, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$SDNavigation;->sdInfo_:Ljava/lang/Object;

    const/4 p1, 0x6

    .line 13683
    iput p1, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$SDNavigation;->sdInfoCase_:I

    return-void
.end method

.method private setSegmentLaneInfosList(Landroid/car/hardware/xpu/XpuXNgpNaviInfo$SegmentLaneInfosList;)V
    .locals 0

    .line 13668
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 13670
    iput-object p1, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$SDNavigation;->sdInfo_:Ljava/lang/Object;

    const/4 p1, 0x6

    .line 13671
    iput p1, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$SDNavigation;->sdInfoCase_:I

    return-void
.end method

.method private setTollLaneInfo(Landroid/car/hardware/xpu/XpuXNgpNaviInfo$TollLaneInfo$Builder;)V
    .locals 0

    .line 13540
    invoke-virtual {p1}, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$TollLaneInfo$Builder;->build()Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object p1

    iput-object p1, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$SDNavigation;->sdInfo_:Ljava/lang/Object;

    const/4 p1, 0x4

    .line 13541
    iput p1, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$SDNavigation;->sdInfoCase_:I

    return-void
.end method

.method private setTollLaneInfo(Landroid/car/hardware/xpu/XpuXNgpNaviInfo$TollLaneInfo;)V
    .locals 0

    .line 13526
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 13528
    iput-object p1, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$SDNavigation;->sdInfo_:Ljava/lang/Object;

    const/4 p1, 0x4

    .line 13529
    iput p1, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$SDNavigation;->sdInfoCase_:I

    return-void
.end method


# virtual methods
.method protected final dynamicMethod(Lcom/android/carsdk/protobuf/GeneratedMessageLite$MethodToInvoke;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 10

    .line 14307
    sget-object v0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$1;->$SwitchMap$com$google$protobuf$GeneratedMessageLite$MethodToInvoke:[I

    invoke-virtual {p1}, Lcom/android/carsdk/protobuf/GeneratedMessageLite$MethodToInvoke;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x7

    const/4 v1, 0x6

    const/4 v2, 0x5

    const/4 v3, 0x4

    const/4 v4, 0x3

    const/4 v5, 0x2

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x1

    packed-switch p1, :pswitch_data_0

    .line 14527
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1

    .line 14518
    :pswitch_0
    sget-object p1, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$SDNavigation;->PARSER:Lcom/android/carsdk/protobuf/Parser;

    if-nez p1, :cond_1

    const-class p1, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$SDNavigation;

    monitor-enter p1

    .line 14519
    :try_start_0
    sget-object p2, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$SDNavigation;->PARSER:Lcom/android/carsdk/protobuf/Parser;

    if-nez p2, :cond_0

    .line 14520
    new-instance p2, Lcom/android/carsdk/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;

    sget-object p3, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$SDNavigation;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuXNgpNaviInfo$SDNavigation;

    invoke-direct {p2, p3}, Lcom/android/carsdk/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;-><init>(Lcom/android/carsdk/protobuf/GeneratedMessageLite;)V

    sput-object p2, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$SDNavigation;->PARSER:Lcom/android/carsdk/protobuf/Parser;

    .line 14522
    :cond_0
    monitor-exit p1

    goto :goto_0

    :catchall_0
    move-exception p2

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p2

    .line 14524
    :cond_1
    :goto_0
    sget-object p1, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$SDNavigation;->PARSER:Lcom/android/carsdk/protobuf/Parser;

    return-object p1

    .line 14387
    :pswitch_1
    check-cast p2, Lcom/android/carsdk/protobuf/CodedInputStream;

    .line 14389
    check-cast p3, Lcom/android/carsdk/protobuf/ExtensionRegistryLite;

    :cond_2
    :goto_1
    if-nez v6, :cond_19

    .line 14394
    :try_start_1
    invoke-virtual {p2}, Lcom/android/carsdk/protobuf/CodedInputStream;->readTag()I

    move-result p1

    if-eqz p1, :cond_18

    const/16 v9, 0xa

    if-eq p1, v9, :cond_15

    const/16 v9, 0x12

    if-eq p1, v9, :cond_12

    const/16 v9, 0x1a

    if-eq p1, v9, :cond_f

    const/16 v9, 0x22

    if-eq p1, v9, :cond_c

    const/16 v9, 0x2a

    if-eq p1, v9, :cond_9

    const/16 v9, 0x32

    if-eq p1, v9, :cond_6

    const/16 v9, 0x3a

    if-eq p1, v9, :cond_3

    .line 14400
    invoke-virtual {p2, p1}, Lcom/android/carsdk/protobuf/CodedInputStream;->skipField(I)Z

    move-result p1

    if-nez p1, :cond_2

    goto/16 :goto_9

    .line 14491
    :cond_3
    iget p1, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$SDNavigation;->sdInfoCase_:I

    if-ne p1, v0, :cond_4

    .line 14492
    iget-object p1, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$SDNavigation;->sdInfo_:Ljava/lang/Object;

    check-cast p1, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$NaviFacilityList;

    invoke-virtual {p1}, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$NaviFacilityList;->toBuilder()Lcom/android/carsdk/protobuf/GeneratedMessageLite$Builder;

    move-result-object p1

    check-cast p1, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$NaviFacilityList$Builder;

    goto :goto_2

    :cond_4
    move-object p1, v7

    .line 14495
    :goto_2
    invoke-static {}, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$NaviFacilityList;->parser()Lcom/android/carsdk/protobuf/Parser;

    move-result-object v9

    invoke-virtual {p2, v9, p3}, Lcom/android/carsdk/protobuf/CodedInputStream;->readMessage(Lcom/android/carsdk/protobuf/Parser;Lcom/android/carsdk/protobuf/ExtensionRegistryLite;)Lcom/android/carsdk/protobuf/MessageLite;

    move-result-object v9

    iput-object v9, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$SDNavigation;->sdInfo_:Ljava/lang/Object;

    if-eqz p1, :cond_5

    .line 14497
    check-cast v9, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$NaviFacilityList;

    invoke-virtual {p1, v9}, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$NaviFacilityList$Builder;->mergeFrom(Lcom/android/carsdk/protobuf/GeneratedMessageLite;)Lcom/android/carsdk/protobuf/GeneratedMessageLite$Builder;

    .line 14498
    invoke-virtual {p1}, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$NaviFacilityList$Builder;->buildPartial()Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object p1

    iput-object p1, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$SDNavigation;->sdInfo_:Ljava/lang/Object;

    .line 14500
    :cond_5
    iput v0, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$SDNavigation;->sdInfoCase_:I

    goto :goto_1

    .line 14477
    :cond_6
    iget p1, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$SDNavigation;->sdInfoCase_:I

    if-ne p1, v1, :cond_7

    .line 14478
    iget-object p1, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$SDNavigation;->sdInfo_:Ljava/lang/Object;

    check-cast p1, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$SegmentLaneInfosList;

    invoke-virtual {p1}, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$SegmentLaneInfosList;->toBuilder()Lcom/android/carsdk/protobuf/GeneratedMessageLite$Builder;

    move-result-object p1

    check-cast p1, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$SegmentLaneInfosList$Builder;

    goto :goto_3

    :cond_7
    move-object p1, v7

    .line 14481
    :goto_3
    invoke-static {}, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$SegmentLaneInfosList;->parser()Lcom/android/carsdk/protobuf/Parser;

    move-result-object v9

    invoke-virtual {p2, v9, p3}, Lcom/android/carsdk/protobuf/CodedInputStream;->readMessage(Lcom/android/carsdk/protobuf/Parser;Lcom/android/carsdk/protobuf/ExtensionRegistryLite;)Lcom/android/carsdk/protobuf/MessageLite;

    move-result-object v9

    iput-object v9, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$SDNavigation;->sdInfo_:Ljava/lang/Object;

    if-eqz p1, :cond_8

    .line 14483
    check-cast v9, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$SegmentLaneInfosList;

    invoke-virtual {p1, v9}, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$SegmentLaneInfosList$Builder;->mergeFrom(Lcom/android/carsdk/protobuf/GeneratedMessageLite;)Lcom/android/carsdk/protobuf/GeneratedMessageLite$Builder;

    .line 14484
    invoke-virtual {p1}, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$SegmentLaneInfosList$Builder;->buildPartial()Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object p1

    iput-object p1, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$SDNavigation;->sdInfo_:Ljava/lang/Object;

    .line 14486
    :cond_8
    iput v1, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$SDNavigation;->sdInfoCase_:I

    goto :goto_1

    .line 14463
    :cond_9
    iget p1, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$SDNavigation;->sdInfoCase_:I

    if-ne p1, v2, :cond_a

    .line 14464
    iget-object p1, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$SDNavigation;->sdInfo_:Ljava/lang/Object;

    check-cast p1, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$ManeuverInfoList;

    invoke-virtual {p1}, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$ManeuverInfoList;->toBuilder()Lcom/android/carsdk/protobuf/GeneratedMessageLite$Builder;

    move-result-object p1

    check-cast p1, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$ManeuverInfoList$Builder;

    goto :goto_4

    :cond_a
    move-object p1, v7

    .line 14467
    :goto_4
    invoke-static {}, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$ManeuverInfoList;->parser()Lcom/android/carsdk/protobuf/Parser;

    move-result-object v9

    invoke-virtual {p2, v9, p3}, Lcom/android/carsdk/protobuf/CodedInputStream;->readMessage(Lcom/android/carsdk/protobuf/Parser;Lcom/android/carsdk/protobuf/ExtensionRegistryLite;)Lcom/android/carsdk/protobuf/MessageLite;

    move-result-object v9

    iput-object v9, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$SDNavigation;->sdInfo_:Ljava/lang/Object;

    if-eqz p1, :cond_b

    .line 14469
    check-cast v9, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$ManeuverInfoList;

    invoke-virtual {p1, v9}, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$ManeuverInfoList$Builder;->mergeFrom(Lcom/android/carsdk/protobuf/GeneratedMessageLite;)Lcom/android/carsdk/protobuf/GeneratedMessageLite$Builder;

    .line 14470
    invoke-virtual {p1}, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$ManeuverInfoList$Builder;->buildPartial()Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object p1

    iput-object p1, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$SDNavigation;->sdInfo_:Ljava/lang/Object;

    .line 14472
    :cond_b
    iput v2, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$SDNavigation;->sdInfoCase_:I

    goto/16 :goto_1

    .line 14449
    :cond_c
    iget p1, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$SDNavigation;->sdInfoCase_:I

    if-ne p1, v3, :cond_d

    .line 14450
    iget-object p1, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$SDNavigation;->sdInfo_:Ljava/lang/Object;

    check-cast p1, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$TollLaneInfo;

    invoke-virtual {p1}, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$TollLaneInfo;->toBuilder()Lcom/android/carsdk/protobuf/GeneratedMessageLite$Builder;

    move-result-object p1

    check-cast p1, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$TollLaneInfo$Builder;

    goto :goto_5

    :cond_d
    move-object p1, v7

    .line 14453
    :goto_5
    invoke-static {}, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$TollLaneInfo;->parser()Lcom/android/carsdk/protobuf/Parser;

    move-result-object v9

    invoke-virtual {p2, v9, p3}, Lcom/android/carsdk/protobuf/CodedInputStream;->readMessage(Lcom/android/carsdk/protobuf/Parser;Lcom/android/carsdk/protobuf/ExtensionRegistryLite;)Lcom/android/carsdk/protobuf/MessageLite;

    move-result-object v9

    iput-object v9, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$SDNavigation;->sdInfo_:Ljava/lang/Object;

    if-eqz p1, :cond_e

    .line 14455
    check-cast v9, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$TollLaneInfo;

    invoke-virtual {p1, v9}, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$TollLaneInfo$Builder;->mergeFrom(Lcom/android/carsdk/protobuf/GeneratedMessageLite;)Lcom/android/carsdk/protobuf/GeneratedMessageLite$Builder;

    .line 14456
    invoke-virtual {p1}, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$TollLaneInfo$Builder;->buildPartial()Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object p1

    iput-object p1, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$SDNavigation;->sdInfo_:Ljava/lang/Object;

    .line 14458
    :cond_e
    iput v3, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$SDNavigation;->sdInfoCase_:I

    goto/16 :goto_1

    .line 14435
    :cond_f
    iget p1, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$SDNavigation;->sdInfoCase_:I

    if-ne p1, v4, :cond_10

    .line 14436
    iget-object p1, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$SDNavigation;->sdInfo_:Ljava/lang/Object;

    check-cast p1, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$ManeuverInfo;

    invoke-virtual {p1}, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$ManeuverInfo;->toBuilder()Lcom/android/carsdk/protobuf/GeneratedMessageLite$Builder;

    move-result-object p1

    check-cast p1, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$ManeuverInfo$Builder;

    goto :goto_6

    :cond_10
    move-object p1, v7

    .line 14439
    :goto_6
    invoke-static {}, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$ManeuverInfo;->parser()Lcom/android/carsdk/protobuf/Parser;

    move-result-object v9

    invoke-virtual {p2, v9, p3}, Lcom/android/carsdk/protobuf/CodedInputStream;->readMessage(Lcom/android/carsdk/protobuf/Parser;Lcom/android/carsdk/protobuf/ExtensionRegistryLite;)Lcom/android/carsdk/protobuf/MessageLite;

    move-result-object v9

    iput-object v9, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$SDNavigation;->sdInfo_:Ljava/lang/Object;

    if-eqz p1, :cond_11

    .line 14441
    check-cast v9, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$ManeuverInfo;

    invoke-virtual {p1, v9}, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$ManeuverInfo$Builder;->mergeFrom(Lcom/android/carsdk/protobuf/GeneratedMessageLite;)Lcom/android/carsdk/protobuf/GeneratedMessageLite$Builder;

    .line 14442
    invoke-virtual {p1}, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$ManeuverInfo$Builder;->buildPartial()Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object p1

    iput-object p1, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$SDNavigation;->sdInfo_:Ljava/lang/Object;

    .line 14444
    :cond_11
    iput v4, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$SDNavigation;->sdInfoCase_:I

    goto/16 :goto_1

    .line 14421
    :cond_12
    iget p1, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$SDNavigation;->sdInfoCase_:I

    if-ne p1, v5, :cond_13

    .line 14422
    iget-object p1, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$SDNavigation;->sdInfo_:Ljava/lang/Object;

    check-cast p1, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$NaviInfo;

    invoke-virtual {p1}, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$NaviInfo;->toBuilder()Lcom/android/carsdk/protobuf/GeneratedMessageLite$Builder;

    move-result-object p1

    check-cast p1, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$NaviInfo$Builder;

    goto :goto_7

    :cond_13
    move-object p1, v7

    .line 14425
    :goto_7
    invoke-static {}, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$NaviInfo;->parser()Lcom/android/carsdk/protobuf/Parser;

    move-result-object v9

    invoke-virtual {p2, v9, p3}, Lcom/android/carsdk/protobuf/CodedInputStream;->readMessage(Lcom/android/carsdk/protobuf/Parser;Lcom/android/carsdk/protobuf/ExtensionRegistryLite;)Lcom/android/carsdk/protobuf/MessageLite;

    move-result-object v9

    iput-object v9, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$SDNavigation;->sdInfo_:Ljava/lang/Object;

    if-eqz p1, :cond_14

    .line 14427
    check-cast v9, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$NaviInfo;

    invoke-virtual {p1, v9}, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$NaviInfo$Builder;->mergeFrom(Lcom/android/carsdk/protobuf/GeneratedMessageLite;)Lcom/android/carsdk/protobuf/GeneratedMessageLite$Builder;

    .line 14428
    invoke-virtual {p1}, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$NaviInfo$Builder;->buildPartial()Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object p1

    iput-object p1, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$SDNavigation;->sdInfo_:Ljava/lang/Object;

    .line 14430
    :cond_14
    iput v5, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$SDNavigation;->sdInfoCase_:I

    goto/16 :goto_1

    .line 14407
    :cond_15
    iget p1, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$SDNavigation;->sdInfoCase_:I

    if-ne p1, v8, :cond_16

    .line 14408
    iget-object p1, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$SDNavigation;->sdInfo_:Ljava/lang/Object;

    check-cast p1, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$LaneInfo;

    invoke-virtual {p1}, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$LaneInfo;->toBuilder()Lcom/android/carsdk/protobuf/GeneratedMessageLite$Builder;

    move-result-object p1

    check-cast p1, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$LaneInfo$Builder;

    goto :goto_8

    :cond_16
    move-object p1, v7

    .line 14411
    :goto_8
    invoke-static {}, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$LaneInfo;->parser()Lcom/android/carsdk/protobuf/Parser;

    move-result-object v9

    invoke-virtual {p2, v9, p3}, Lcom/android/carsdk/protobuf/CodedInputStream;->readMessage(Lcom/android/carsdk/protobuf/Parser;Lcom/android/carsdk/protobuf/ExtensionRegistryLite;)Lcom/android/carsdk/protobuf/MessageLite;

    move-result-object v9

    iput-object v9, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$SDNavigation;->sdInfo_:Ljava/lang/Object;

    if-eqz p1, :cond_17

    .line 14413
    check-cast v9, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$LaneInfo;

    invoke-virtual {p1, v9}, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$LaneInfo$Builder;->mergeFrom(Lcom/android/carsdk/protobuf/GeneratedMessageLite;)Lcom/android/carsdk/protobuf/GeneratedMessageLite$Builder;

    .line 14414
    invoke-virtual {p1}, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$LaneInfo$Builder;->buildPartial()Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object p1

    iput-object p1, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$SDNavigation;->sdInfo_:Ljava/lang/Object;

    .line 14416
    :cond_17
    iput v8, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$SDNavigation;->sdInfoCase_:I
    :try_end_1
    .catch Lcom/android/carsdk/protobuf/InvalidProtocolBufferException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto/16 :goto_1

    :cond_18
    :goto_9
    move v6, v8

    goto/16 :goto_1

    :catchall_1
    move-exception p1

    goto :goto_a

    :catch_0
    move-exception p1

    .line 14508
    :try_start_2
    new-instance p2, Ljava/lang/RuntimeException;

    new-instance p3, Lcom/android/carsdk/protobuf/InvalidProtocolBufferException;

    .line 14510
    invoke-virtual {p1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p3, p1}, Lcom/android/carsdk/protobuf/InvalidProtocolBufferException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, p0}, Lcom/android/carsdk/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/android/carsdk/protobuf/MessageLite;)Lcom/android/carsdk/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p2

    :catch_1
    move-exception p1

    .line 14506
    new-instance p2, Ljava/lang/RuntimeException;

    invoke-virtual {p1, p0}, Lcom/android/carsdk/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/android/carsdk/protobuf/MessageLite;)Lcom/android/carsdk/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 14511
    :goto_a
    throw p1

    .line 14515
    :cond_19
    :pswitch_2
    sget-object p1, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$SDNavigation;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuXNgpNaviInfo$SDNavigation;

    return-object p1

    .line 14321
    :pswitch_3
    check-cast p2, Lcom/android/carsdk/protobuf/GeneratedMessageLite$Visitor;

    .line 14322
    check-cast p3, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$SDNavigation;

    .line 14323
    sget-object p1, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$1;->$SwitchMap$android$car$hardware$xpu$XpuXNgpNaviInfo$SDNavigation$SdInfoCase:[I

    invoke-virtual {p3}, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$SDNavigation;->getSdInfoCase()Landroid/car/hardware/xpu/XpuXNgpNaviInfo$SDNavigation$SdInfoCase;

    move-result-object v7

    invoke-virtual {v7}, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$SDNavigation$SdInfoCase;->ordinal()I

    move-result v7

    aget p1, p1, v7

    packed-switch p1, :pswitch_data_1

    goto/16 :goto_b

    .line 14374
    :pswitch_4
    iget p1, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$SDNavigation;->sdInfoCase_:I

    if-eqz p1, :cond_1a

    move v6, v8

    :cond_1a
    invoke-interface {p2, v6}, Lcom/android/carsdk/protobuf/GeneratedMessageLite$Visitor;->visitOneofNotSet(Z)V

    goto/16 :goto_b

    .line 14367
    :pswitch_5
    iget p1, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$SDNavigation;->sdInfoCase_:I

    if-ne p1, v0, :cond_1b

    move v6, v8

    :cond_1b
    iget-object p1, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$SDNavigation;->sdInfo_:Ljava/lang/Object;

    iget-object v0, p3, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$SDNavigation;->sdInfo_:Ljava/lang/Object;

    invoke-interface {p2, v6, p1, v0}, Lcom/android/carsdk/protobuf/GeneratedMessageLite$Visitor;->visitOneofMessage(ZLjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    iput-object p1, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$SDNavigation;->sdInfo_:Ljava/lang/Object;

    goto :goto_b

    .line 14360
    :pswitch_6
    iget p1, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$SDNavigation;->sdInfoCase_:I

    if-ne p1, v1, :cond_1c

    move v6, v8

    :cond_1c
    iget-object p1, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$SDNavigation;->sdInfo_:Ljava/lang/Object;

    iget-object v0, p3, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$SDNavigation;->sdInfo_:Ljava/lang/Object;

    invoke-interface {p2, v6, p1, v0}, Lcom/android/carsdk/protobuf/GeneratedMessageLite$Visitor;->visitOneofMessage(ZLjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    iput-object p1, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$SDNavigation;->sdInfo_:Ljava/lang/Object;

    goto :goto_b

    .line 14353
    :pswitch_7
    iget p1, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$SDNavigation;->sdInfoCase_:I

    if-ne p1, v2, :cond_1d

    move v6, v8

    :cond_1d
    iget-object p1, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$SDNavigation;->sdInfo_:Ljava/lang/Object;

    iget-object v0, p3, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$SDNavigation;->sdInfo_:Ljava/lang/Object;

    invoke-interface {p2, v6, p1, v0}, Lcom/android/carsdk/protobuf/GeneratedMessageLite$Visitor;->visitOneofMessage(ZLjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    iput-object p1, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$SDNavigation;->sdInfo_:Ljava/lang/Object;

    goto :goto_b

    .line 14346
    :pswitch_8
    iget p1, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$SDNavigation;->sdInfoCase_:I

    if-ne p1, v3, :cond_1e

    move v6, v8

    :cond_1e
    iget-object p1, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$SDNavigation;->sdInfo_:Ljava/lang/Object;

    iget-object v0, p3, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$SDNavigation;->sdInfo_:Ljava/lang/Object;

    invoke-interface {p2, v6, p1, v0}, Lcom/android/carsdk/protobuf/GeneratedMessageLite$Visitor;->visitOneofMessage(ZLjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    iput-object p1, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$SDNavigation;->sdInfo_:Ljava/lang/Object;

    goto :goto_b

    .line 14339
    :pswitch_9
    iget p1, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$SDNavigation;->sdInfoCase_:I

    if-ne p1, v4, :cond_1f

    move v6, v8

    :cond_1f
    iget-object p1, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$SDNavigation;->sdInfo_:Ljava/lang/Object;

    iget-object v0, p3, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$SDNavigation;->sdInfo_:Ljava/lang/Object;

    invoke-interface {p2, v6, p1, v0}, Lcom/android/carsdk/protobuf/GeneratedMessageLite$Visitor;->visitOneofMessage(ZLjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    iput-object p1, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$SDNavigation;->sdInfo_:Ljava/lang/Object;

    goto :goto_b

    .line 14332
    :pswitch_a
    iget p1, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$SDNavigation;->sdInfoCase_:I

    if-ne p1, v5, :cond_20

    move v6, v8

    :cond_20
    iget-object p1, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$SDNavigation;->sdInfo_:Ljava/lang/Object;

    iget-object v0, p3, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$SDNavigation;->sdInfo_:Ljava/lang/Object;

    invoke-interface {p2, v6, p1, v0}, Lcom/android/carsdk/protobuf/GeneratedMessageLite$Visitor;->visitOneofMessage(ZLjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    iput-object p1, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$SDNavigation;->sdInfo_:Ljava/lang/Object;

    goto :goto_b

    .line 14325
    :pswitch_b
    iget p1, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$SDNavigation;->sdInfoCase_:I

    if-ne p1, v8, :cond_21

    move v6, v8

    :cond_21
    iget-object p1, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$SDNavigation;->sdInfo_:Ljava/lang/Object;

    iget-object v0, p3, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$SDNavigation;->sdInfo_:Ljava/lang/Object;

    invoke-interface {p2, v6, p1, v0}, Lcom/android/carsdk/protobuf/GeneratedMessageLite$Visitor;->visitOneofMessage(ZLjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    iput-object p1, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$SDNavigation;->sdInfo_:Ljava/lang/Object;

    .line 14378
    :goto_b
    sget-object p1, Lcom/android/carsdk/protobuf/GeneratedMessageLite$MergeFromVisitor;->INSTANCE:Lcom/android/carsdk/protobuf/GeneratedMessageLite$MergeFromVisitor;

    if-ne p2, p1, :cond_22

    .line 14380
    iget p1, p3, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$SDNavigation;->sdInfoCase_:I

    if-eqz p1, :cond_22

    .line 14381
    iput p1, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$SDNavigation;->sdInfoCase_:I

    :cond_22
    return-object p0

    .line 14318
    :pswitch_c
    new-instance p1, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$SDNavigation$Builder;

    invoke-direct {p1, v7}, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$SDNavigation$Builder;-><init>(Landroid/car/hardware/xpu/XpuXNgpNaviInfo$1;)V

    return-object p1

    :pswitch_d
    return-object v7

    .line 14312
    :pswitch_e
    sget-object p1, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$SDNavigation;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuXNgpNaviInfo$SDNavigation;

    return-object p1

    .line 14309
    :pswitch_f
    new-instance p1, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$SDNavigation;

    invoke-direct {p1}, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$SDNavigation;-><init>()V

    return-object p1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_3
        :pswitch_1
        :pswitch_2
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
    .end packed-switch
.end method

.method public getLaneInfo()Landroid/car/hardware/xpu/XpuXNgpNaviInfo$LaneInfo;
    .locals 2

    .line 13355
    iget v0, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$SDNavigation;->sdInfoCase_:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 13356
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$SDNavigation;->sdInfo_:Ljava/lang/Object;

    check-cast v0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$LaneInfo;

    return-object v0

    .line 13358
    :cond_0
    invoke-static {}, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$LaneInfo;->getDefaultInstance()Landroid/car/hardware/xpu/XpuXNgpNaviInfo$LaneInfo;

    move-result-object v0

    return-object v0
.end method

.method public getManeuverInfo()Landroid/car/hardware/xpu/XpuXNgpNaviInfo$ManeuverInfo;
    .locals 2

    .line 13457
    iget v0, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$SDNavigation;->sdInfoCase_:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 13458
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$SDNavigation;->sdInfo_:Ljava/lang/Object;

    check-cast v0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$ManeuverInfo;

    return-object v0

    .line 13460
    :cond_0
    invoke-static {}, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$ManeuverInfo;->getDefaultInstance()Landroid/car/hardware/xpu/XpuXNgpNaviInfo$ManeuverInfo;

    move-result-object v0

    return-object v0
.end method

.method public getManeuverInfoList()Landroid/car/hardware/xpu/XpuXNgpNaviInfo$ManeuverInfoList;
    .locals 2

    .line 13583
    iget v0, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$SDNavigation;->sdInfoCase_:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    .line 13584
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$SDNavigation;->sdInfo_:Ljava/lang/Object;

    check-cast v0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$ManeuverInfoList;

    return-object v0

    .line 13586
    :cond_0
    invoke-static {}, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$ManeuverInfoList;->getDefaultInstance()Landroid/car/hardware/xpu/XpuXNgpNaviInfo$ManeuverInfoList;

    move-result-object v0

    return-object v0
.end method

.method public getNaviFacilityList()Landroid/car/hardware/xpu/XpuXNgpNaviInfo$NaviFacilityList;
    .locals 2

    .line 13725
    iget v0, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$SDNavigation;->sdInfoCase_:I

    const/4 v1, 0x7

    if-ne v0, v1, :cond_0

    .line 13726
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$SDNavigation;->sdInfo_:Ljava/lang/Object;

    check-cast v0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$NaviFacilityList;

    return-object v0

    .line 13728
    :cond_0
    invoke-static {}, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$NaviFacilityList;->getDefaultInstance()Landroid/car/hardware/xpu/XpuXNgpNaviInfo$NaviFacilityList;

    move-result-object v0

    return-object v0
.end method

.method public getNaviInfo()Landroid/car/hardware/xpu/XpuXNgpNaviInfo$NaviInfo;
    .locals 2

    .line 13406
    iget v0, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$SDNavigation;->sdInfoCase_:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 13407
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$SDNavigation;->sdInfo_:Ljava/lang/Object;

    check-cast v0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$NaviInfo;

    return-object v0

    .line 13409
    :cond_0
    invoke-static {}, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$NaviInfo;->getDefaultInstance()Landroid/car/hardware/xpu/XpuXNgpNaviInfo$NaviInfo;

    move-result-object v0

    return-object v0
.end method

.method public getSdInfoCase()Landroid/car/hardware/xpu/XpuXNgpNaviInfo$SDNavigation$SdInfoCase;
    .locals 1

    .line 13341
    iget v0, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$SDNavigation;->sdInfoCase_:I

    invoke-static {v0}, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$SDNavigation$SdInfoCase;->forNumber(I)Landroid/car/hardware/xpu/XpuXNgpNaviInfo$SDNavigation$SdInfoCase;

    move-result-object v0

    return-object v0
.end method

.method public getSegmentLaneInfosList()Landroid/car/hardware/xpu/XpuXNgpNaviInfo$SegmentLaneInfosList;
    .locals 2

    .line 13654
    iget v0, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$SDNavigation;->sdInfoCase_:I

    const/4 v1, 0x6

    if-ne v0, v1, :cond_0

    .line 13655
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$SDNavigation;->sdInfo_:Ljava/lang/Object;

    check-cast v0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$SegmentLaneInfosList;

    return-object v0

    .line 13657
    :cond_0
    invoke-static {}, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$SegmentLaneInfosList;->getDefaultInstance()Landroid/car/hardware/xpu/XpuXNgpNaviInfo$SegmentLaneInfosList;

    move-result-object v0

    return-object v0
.end method

.method public getSerializedSize()I
    .locals 3

    .line 13813
    iget v0, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$SDNavigation;->memoizedSerializedSize:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    return v0

    :cond_0
    const/4 v0, 0x0

    .line 13817
    iget v1, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$SDNavigation;->sdInfoCase_:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    .line 13818
    iget-object v1, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$SDNavigation;->sdInfo_:Ljava/lang/Object;

    check-cast v1, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$LaneInfo;

    .line 13819
    invoke-static {v2, v1}, Lcom/android/carsdk/protobuf/CodedOutputStream;->computeMessageSize(ILcom/android/carsdk/protobuf/MessageLite;)I

    move-result v1

    add-int/2addr v0, v1

    .line 13821
    :cond_1
    iget v1, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$SDNavigation;->sdInfoCase_:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_2

    .line 13822
    iget-object v1, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$SDNavigation;->sdInfo_:Ljava/lang/Object;

    check-cast v1, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$NaviInfo;

    .line 13823
    invoke-static {v2, v1}, Lcom/android/carsdk/protobuf/CodedOutputStream;->computeMessageSize(ILcom/android/carsdk/protobuf/MessageLite;)I

    move-result v1

    add-int/2addr v0, v1

    .line 13825
    :cond_2
    iget v1, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$SDNavigation;->sdInfoCase_:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_3

    .line 13826
    iget-object v1, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$SDNavigation;->sdInfo_:Ljava/lang/Object;

    check-cast v1, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$ManeuverInfo;

    .line 13827
    invoke-static {v2, v1}, Lcom/android/carsdk/protobuf/CodedOutputStream;->computeMessageSize(ILcom/android/carsdk/protobuf/MessageLite;)I

    move-result v1

    add-int/2addr v0, v1

    .line 13829
    :cond_3
    iget v1, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$SDNavigation;->sdInfoCase_:I

    const/4 v2, 0x4

    if-ne v1, v2, :cond_4

    .line 13830
    iget-object v1, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$SDNavigation;->sdInfo_:Ljava/lang/Object;

    check-cast v1, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$TollLaneInfo;

    .line 13831
    invoke-static {v2, v1}, Lcom/android/carsdk/protobuf/CodedOutputStream;->computeMessageSize(ILcom/android/carsdk/protobuf/MessageLite;)I

    move-result v1

    add-int/2addr v0, v1

    .line 13833
    :cond_4
    iget v1, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$SDNavigation;->sdInfoCase_:I

    const/4 v2, 0x5

    if-ne v1, v2, :cond_5

    .line 13834
    iget-object v1, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$SDNavigation;->sdInfo_:Ljava/lang/Object;

    check-cast v1, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$ManeuverInfoList;

    .line 13835
    invoke-static {v2, v1}, Lcom/android/carsdk/protobuf/CodedOutputStream;->computeMessageSize(ILcom/android/carsdk/protobuf/MessageLite;)I

    move-result v1

    add-int/2addr v0, v1

    .line 13837
    :cond_5
    iget v1, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$SDNavigation;->sdInfoCase_:I

    const/4 v2, 0x6

    if-ne v1, v2, :cond_6

    .line 13838
    iget-object v1, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$SDNavigation;->sdInfo_:Ljava/lang/Object;

    check-cast v1, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$SegmentLaneInfosList;

    .line 13839
    invoke-static {v2, v1}, Lcom/android/carsdk/protobuf/CodedOutputStream;->computeMessageSize(ILcom/android/carsdk/protobuf/MessageLite;)I

    move-result v1

    add-int/2addr v0, v1

    .line 13841
    :cond_6
    iget v1, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$SDNavigation;->sdInfoCase_:I

    const/4 v2, 0x7

    if-ne v1, v2, :cond_7

    .line 13842
    iget-object v1, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$SDNavigation;->sdInfo_:Ljava/lang/Object;

    check-cast v1, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$NaviFacilityList;

    .line 13843
    invoke-static {v2, v1}, Lcom/android/carsdk/protobuf/CodedOutputStream;->computeMessageSize(ILcom/android/carsdk/protobuf/MessageLite;)I

    move-result v1

    add-int/2addr v0, v1

    .line 13845
    :cond_7
    iput v0, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$SDNavigation;->memoizedSerializedSize:I

    return v0
.end method

.method public getTollLaneInfo()Landroid/car/hardware/xpu/XpuXNgpNaviInfo$TollLaneInfo;
    .locals 2

    .line 13512
    iget v0, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$SDNavigation;->sdInfoCase_:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    .line 13513
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$SDNavigation;->sdInfo_:Ljava/lang/Object;

    check-cast v0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$TollLaneInfo;

    return-object v0

    .line 13515
    :cond_0
    invoke-static {}, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$TollLaneInfo;->getDefaultInstance()Landroid/car/hardware/xpu/XpuXNgpNaviInfo$TollLaneInfo;

    move-result-object v0

    return-object v0
.end method

.method public writeTo(Lcom/android/carsdk/protobuf/CodedOutputStream;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 13789
    iget v0, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$SDNavigation;->sdInfoCase_:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 13790
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$SDNavigation;->sdInfo_:Ljava/lang/Object;

    check-cast v0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$LaneInfo;

    invoke-virtual {p1, v1, v0}, Lcom/android/carsdk/protobuf/CodedOutputStream;->writeMessage(ILcom/android/carsdk/protobuf/MessageLite;)V

    .line 13792
    :cond_0
    iget v0, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$SDNavigation;->sdInfoCase_:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 13793
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$SDNavigation;->sdInfo_:Ljava/lang/Object;

    check-cast v0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$NaviInfo;

    invoke-virtual {p1, v1, v0}, Lcom/android/carsdk/protobuf/CodedOutputStream;->writeMessage(ILcom/android/carsdk/protobuf/MessageLite;)V

    .line 13795
    :cond_1
    iget v0, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$SDNavigation;->sdInfoCase_:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_2

    .line 13796
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$SDNavigation;->sdInfo_:Ljava/lang/Object;

    check-cast v0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$ManeuverInfo;

    invoke-virtual {p1, v1, v0}, Lcom/android/carsdk/protobuf/CodedOutputStream;->writeMessage(ILcom/android/carsdk/protobuf/MessageLite;)V

    .line 13798
    :cond_2
    iget v0, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$SDNavigation;->sdInfoCase_:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_3

    .line 13799
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$SDNavigation;->sdInfo_:Ljava/lang/Object;

    check-cast v0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$TollLaneInfo;

    invoke-virtual {p1, v1, v0}, Lcom/android/carsdk/protobuf/CodedOutputStream;->writeMessage(ILcom/android/carsdk/protobuf/MessageLite;)V

    .line 13801
    :cond_3
    iget v0, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$SDNavigation;->sdInfoCase_:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_4

    .line 13802
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$SDNavigation;->sdInfo_:Ljava/lang/Object;

    check-cast v0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$ManeuverInfoList;

    invoke-virtual {p1, v1, v0}, Lcom/android/carsdk/protobuf/CodedOutputStream;->writeMessage(ILcom/android/carsdk/protobuf/MessageLite;)V

    .line 13804
    :cond_4
    iget v0, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$SDNavigation;->sdInfoCase_:I

    const/4 v1, 0x6

    if-ne v0, v1, :cond_5

    .line 13805
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$SDNavigation;->sdInfo_:Ljava/lang/Object;

    check-cast v0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$SegmentLaneInfosList;

    invoke-virtual {p1, v1, v0}, Lcom/android/carsdk/protobuf/CodedOutputStream;->writeMessage(ILcom/android/carsdk/protobuf/MessageLite;)V

    .line 13807
    :cond_5
    iget v0, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$SDNavigation;->sdInfoCase_:I

    const/4 v1, 0x7

    if-ne v0, v1, :cond_6

    .line 13808
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$SDNavigation;->sdInfo_:Ljava/lang/Object;

    check-cast v0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$NaviFacilityList;

    invoke-virtual {p1, v1, v0}, Lcom/android/carsdk/protobuf/CodedOutputStream;->writeMessage(ILcom/android/carsdk/protobuf/MessageLite;)V

    :cond_6
    return-void
.end method
