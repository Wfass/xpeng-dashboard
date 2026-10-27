.class public final Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$SDNavigation;
.super Lcom/android/carsdk/protobuf/GeneratedMessageLite;
.source "XpuXNgpNaviInfoVW.java"

# interfaces
.implements Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$SDNavigationOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "SDNavigation"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$SDNavigation$Builder;,
        Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$SDNavigation$SdInfoCase;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/carsdk/protobuf/GeneratedMessageLite<",
        "Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$SDNavigation;",
        "Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$SDNavigation$Builder;",
        ">;",
        "Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$SDNavigationOrBuilder;"
    }
.end annotation


# static fields
.field private static final DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$SDNavigation;

.field public static final LANE_INFO_FIELD_NUMBER:I = 0x1

.field public static final MANEUVER_INFO_FIELD_NUMBER:I = 0x3

.field public static final NAVI_INFO_FIELD_NUMBER:I = 0x2

.field private static volatile PARSER:Lcom/android/carsdk/protobuf/Parser; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/carsdk/protobuf/Parser<",
            "Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$SDNavigation;",
            ">;"
        }
    .end annotation
.end field

.field public static final TOLL_LANE_INFO_FIELD_NUMBER:I = 0x4


# instance fields
.field private sdInfoCase_:I

.field private sdInfo_:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 9800
    new-instance v0, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$SDNavigation;

    invoke-direct {v0}, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$SDNavigation;-><init>()V

    sput-object v0, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$SDNavigation;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$SDNavigation;

    .line 9801
    invoke-virtual {v0}, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$SDNavigation;->makeImmutable()V

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 9044
    invoke-direct {p0}, Lcom/android/carsdk/protobuf/GeneratedMessageLite;-><init>()V

    const/4 v0, 0x0

    .line 9046
    iput v0, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$SDNavigation;->sdInfoCase_:I

    return-void
.end method

.method static synthetic access$12600()Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$SDNavigation;
    .locals 1

    .line 9039
    sget-object v0, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$SDNavigation;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$SDNavigation;

    return-object v0
.end method

.method static synthetic access$12700(Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$SDNavigation;)V
    .locals 0

    .line 9039
    invoke-direct {p0}, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$SDNavigation;->clearSdInfo()V

    return-void
.end method

.method static synthetic access$12800(Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$SDNavigation;Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$LaneInfo;)V
    .locals 0

    .line 9039
    invoke-direct {p0, p1}, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$SDNavigation;->setLaneInfo(Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$LaneInfo;)V

    return-void
.end method

.method static synthetic access$12900(Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$SDNavigation;Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$LaneInfo$Builder;)V
    .locals 0

    .line 9039
    invoke-direct {p0, p1}, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$SDNavigation;->setLaneInfo(Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$LaneInfo$Builder;)V

    return-void
.end method

.method static synthetic access$13000(Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$SDNavigation;Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$LaneInfo;)V
    .locals 0

    .line 9039
    invoke-direct {p0, p1}, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$SDNavigation;->mergeLaneInfo(Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$LaneInfo;)V

    return-void
.end method

.method static synthetic access$13100(Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$SDNavigation;)V
    .locals 0

    .line 9039
    invoke-direct {p0}, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$SDNavigation;->clearLaneInfo()V

    return-void
.end method

.method static synthetic access$13200(Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$SDNavigation;Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$NaviInfo;)V
    .locals 0

    .line 9039
    invoke-direct {p0, p1}, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$SDNavigation;->setNaviInfo(Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$NaviInfo;)V

    return-void
.end method

.method static synthetic access$13300(Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$SDNavigation;Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$NaviInfo$Builder;)V
    .locals 0

    .line 9039
    invoke-direct {p0, p1}, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$SDNavigation;->setNaviInfo(Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$NaviInfo$Builder;)V

    return-void
.end method

.method static synthetic access$13400(Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$SDNavigation;Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$NaviInfo;)V
    .locals 0

    .line 9039
    invoke-direct {p0, p1}, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$SDNavigation;->mergeNaviInfo(Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$NaviInfo;)V

    return-void
.end method

.method static synthetic access$13500(Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$SDNavigation;)V
    .locals 0

    .line 9039
    invoke-direct {p0}, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$SDNavigation;->clearNaviInfo()V

    return-void
.end method

.method static synthetic access$13600(Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$SDNavigation;Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$ManeuverInfo;)V
    .locals 0

    .line 9039
    invoke-direct {p0, p1}, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$SDNavigation;->setManeuverInfo(Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$ManeuverInfo;)V

    return-void
.end method

.method static synthetic access$13700(Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$SDNavigation;Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$ManeuverInfo$Builder;)V
    .locals 0

    .line 9039
    invoke-direct {p0, p1}, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$SDNavigation;->setManeuverInfo(Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$ManeuverInfo$Builder;)V

    return-void
.end method

.method static synthetic access$13800(Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$SDNavigation;Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$ManeuverInfo;)V
    .locals 0

    .line 9039
    invoke-direct {p0, p1}, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$SDNavigation;->mergeManeuverInfo(Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$ManeuverInfo;)V

    return-void
.end method

.method static synthetic access$13900(Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$SDNavigation;)V
    .locals 0

    .line 9039
    invoke-direct {p0}, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$SDNavigation;->clearManeuverInfo()V

    return-void
.end method

.method static synthetic access$14000(Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$SDNavigation;Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$TollLaneInfo;)V
    .locals 0

    .line 9039
    invoke-direct {p0, p1}, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$SDNavigation;->setTollLaneInfo(Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$TollLaneInfo;)V

    return-void
.end method

.method static synthetic access$14100(Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$SDNavigation;Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$TollLaneInfo$Builder;)V
    .locals 0

    .line 9039
    invoke-direct {p0, p1}, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$SDNavigation;->setTollLaneInfo(Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$TollLaneInfo$Builder;)V

    return-void
.end method

.method static synthetic access$14200(Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$SDNavigation;Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$TollLaneInfo;)V
    .locals 0

    .line 9039
    invoke-direct {p0, p1}, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$SDNavigation;->mergeTollLaneInfo(Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$TollLaneInfo;)V

    return-void
.end method

.method static synthetic access$14300(Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$SDNavigation;)V
    .locals 0

    .line 9039
    invoke-direct {p0}, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$SDNavigation;->clearTollLaneInfo()V

    return-void
.end method

.method private clearLaneInfo()V
    .locals 2

    .line 9138
    iget v0, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$SDNavigation;->sdInfoCase_:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    .line 9139
    iput v0, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$SDNavigation;->sdInfoCase_:I

    const/4 v0, 0x0

    .line 9140
    iput-object v0, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$SDNavigation;->sdInfo_:Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method private clearManeuverInfo()V
    .locals 2

    .line 9240
    iget v0, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$SDNavigation;->sdInfoCase_:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    .line 9241
    iput v0, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$SDNavigation;->sdInfoCase_:I

    const/4 v0, 0x0

    .line 9242
    iput-object v0, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$SDNavigation;->sdInfo_:Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method private clearNaviInfo()V
    .locals 2

    .line 9189
    iget v0, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$SDNavigation;->sdInfoCase_:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    .line 9190
    iput v0, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$SDNavigation;->sdInfoCase_:I

    const/4 v0, 0x0

    .line 9191
    iput-object v0, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$SDNavigation;->sdInfo_:Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method private clearSdInfo()V
    .locals 1

    const/4 v0, 0x0

    .line 9089
    iput v0, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$SDNavigation;->sdInfoCase_:I

    const/4 v0, 0x0

    .line 9090
    iput-object v0, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$SDNavigation;->sdInfo_:Ljava/lang/Object;

    return-void
.end method

.method private clearTollLaneInfo()V
    .locals 2

    .line 9311
    iget v0, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$SDNavigation;->sdInfoCase_:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    .line 9312
    iput v0, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$SDNavigation;->sdInfoCase_:I

    const/4 v0, 0x0

    .line 9313
    iput-object v0, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$SDNavigation;->sdInfo_:Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method public static getDefaultInstance()Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$SDNavigation;
    .locals 1

    .line 9805
    sget-object v0, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$SDNavigation;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$SDNavigation;

    return-object v0
.end method

.method private mergeLaneInfo(Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$LaneInfo;)V
    .locals 3

    .line 9125
    iget v0, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$SDNavigation;->sdInfoCase_:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$SDNavigation;->sdInfo_:Ljava/lang/Object;

    .line 9126
    invoke-static {}, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$LaneInfo;->getDefaultInstance()Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$LaneInfo;

    move-result-object v2

    if-eq v0, v2, :cond_0

    .line 9127
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$SDNavigation;->sdInfo_:Ljava/lang/Object;

    check-cast v0, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$LaneInfo;

    invoke-static {v0}, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$LaneInfo;->newBuilder(Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$LaneInfo;)Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$LaneInfo$Builder;

    move-result-object v0

    .line 9128
    invoke-virtual {v0, p1}, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$LaneInfo$Builder;->mergeFrom(Lcom/android/carsdk/protobuf/GeneratedMessageLite;)Lcom/android/carsdk/protobuf/GeneratedMessageLite$Builder;

    move-result-object p1

    check-cast p1, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$LaneInfo$Builder;

    invoke-virtual {p1}, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$LaneInfo$Builder;->buildPartial()Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object p1

    iput-object p1, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$SDNavigation;->sdInfo_:Ljava/lang/Object;

    goto :goto_0

    .line 9130
    :cond_0
    iput-object p1, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$SDNavigation;->sdInfo_:Ljava/lang/Object;

    .line 9132
    :goto_0
    iput v1, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$SDNavigation;->sdInfoCase_:I

    return-void
.end method

.method private mergeManeuverInfo(Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$ManeuverInfo;)V
    .locals 3

    .line 9227
    iget v0, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$SDNavigation;->sdInfoCase_:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$SDNavigation;->sdInfo_:Ljava/lang/Object;

    .line 9228
    invoke-static {}, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$ManeuverInfo;->getDefaultInstance()Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$ManeuverInfo;

    move-result-object v2

    if-eq v0, v2, :cond_0

    .line 9229
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$SDNavigation;->sdInfo_:Ljava/lang/Object;

    check-cast v0, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$ManeuverInfo;

    invoke-static {v0}, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$ManeuverInfo;->newBuilder(Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$ManeuverInfo;)Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$ManeuverInfo$Builder;

    move-result-object v0

    .line 9230
    invoke-virtual {v0, p1}, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$ManeuverInfo$Builder;->mergeFrom(Lcom/android/carsdk/protobuf/GeneratedMessageLite;)Lcom/android/carsdk/protobuf/GeneratedMessageLite$Builder;

    move-result-object p1

    check-cast p1, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$ManeuverInfo$Builder;

    invoke-virtual {p1}, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$ManeuverInfo$Builder;->buildPartial()Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object p1

    iput-object p1, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$SDNavigation;->sdInfo_:Ljava/lang/Object;

    goto :goto_0

    .line 9232
    :cond_0
    iput-object p1, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$SDNavigation;->sdInfo_:Ljava/lang/Object;

    .line 9234
    :goto_0
    iput v1, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$SDNavigation;->sdInfoCase_:I

    return-void
.end method

.method private mergeNaviInfo(Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$NaviInfo;)V
    .locals 3

    .line 9176
    iget v0, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$SDNavigation;->sdInfoCase_:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$SDNavigation;->sdInfo_:Ljava/lang/Object;

    .line 9177
    invoke-static {}, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$NaviInfo;->getDefaultInstance()Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$NaviInfo;

    move-result-object v2

    if-eq v0, v2, :cond_0

    .line 9178
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$SDNavigation;->sdInfo_:Ljava/lang/Object;

    check-cast v0, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$NaviInfo;

    invoke-static {v0}, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$NaviInfo;->newBuilder(Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$NaviInfo;)Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$NaviInfo$Builder;

    move-result-object v0

    .line 9179
    invoke-virtual {v0, p1}, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$NaviInfo$Builder;->mergeFrom(Lcom/android/carsdk/protobuf/GeneratedMessageLite;)Lcom/android/carsdk/protobuf/GeneratedMessageLite$Builder;

    move-result-object p1

    check-cast p1, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$NaviInfo$Builder;

    invoke-virtual {p1}, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$NaviInfo$Builder;->buildPartial()Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object p1

    iput-object p1, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$SDNavigation;->sdInfo_:Ljava/lang/Object;

    goto :goto_0

    .line 9181
    :cond_0
    iput-object p1, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$SDNavigation;->sdInfo_:Ljava/lang/Object;

    .line 9183
    :goto_0
    iput v1, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$SDNavigation;->sdInfoCase_:I

    return-void
.end method

.method private mergeTollLaneInfo(Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$TollLaneInfo;)V
    .locals 3

    .line 9294
    iget v0, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$SDNavigation;->sdInfoCase_:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$SDNavigation;->sdInfo_:Ljava/lang/Object;

    .line 9295
    invoke-static {}, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$TollLaneInfo;->getDefaultInstance()Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$TollLaneInfo;

    move-result-object v2

    if-eq v0, v2, :cond_0

    .line 9296
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$SDNavigation;->sdInfo_:Ljava/lang/Object;

    check-cast v0, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$TollLaneInfo;

    invoke-static {v0}, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$TollLaneInfo;->newBuilder(Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$TollLaneInfo;)Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$TollLaneInfo$Builder;

    move-result-object v0

    .line 9297
    invoke-virtual {v0, p1}, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$TollLaneInfo$Builder;->mergeFrom(Lcom/android/carsdk/protobuf/GeneratedMessageLite;)Lcom/android/carsdk/protobuf/GeneratedMessageLite$Builder;

    move-result-object p1

    check-cast p1, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$TollLaneInfo$Builder;

    invoke-virtual {p1}, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$TollLaneInfo$Builder;->buildPartial()Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object p1

    iput-object p1, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$SDNavigation;->sdInfo_:Ljava/lang/Object;

    goto :goto_0

    .line 9299
    :cond_0
    iput-object p1, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$SDNavigation;->sdInfo_:Ljava/lang/Object;

    .line 9301
    :goto_0
    iput v1, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$SDNavigation;->sdInfoCase_:I

    return-void
.end method

.method public static newBuilder()Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$SDNavigation$Builder;
    .locals 1

    .line 9420
    sget-object v0, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$SDNavigation;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$SDNavigation;

    invoke-virtual {v0}, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$SDNavigation;->toBuilder()Lcom/android/carsdk/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$SDNavigation$Builder;

    return-object v0
.end method

.method public static newBuilder(Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$SDNavigation;)Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$SDNavigation$Builder;
    .locals 1

    .line 9423
    sget-object v0, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$SDNavigation;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$SDNavigation;

    invoke-virtual {v0}, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$SDNavigation;->toBuilder()Lcom/android/carsdk/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$SDNavigation$Builder;

    invoke-virtual {v0, p0}, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$SDNavigation$Builder;->mergeFrom(Lcom/android/carsdk/protobuf/GeneratedMessageLite;)Lcom/android/carsdk/protobuf/GeneratedMessageLite$Builder;

    move-result-object p0

    check-cast p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$SDNavigation$Builder;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$SDNavigation;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 9397
    sget-object v0, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$SDNavigation;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$SDNavigation;

    invoke-static {v0, p0}, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$SDNavigation;->parseDelimitedFrom(Lcom/android/carsdk/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$SDNavigation;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/android/carsdk/protobuf/ExtensionRegistryLite;)Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$SDNavigation;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 9403
    sget-object v0, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$SDNavigation;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$SDNavigation;

    invoke-static {v0, p0, p1}, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$SDNavigation;->parseDelimitedFrom(Lcom/android/carsdk/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/android/carsdk/protobuf/ExtensionRegistryLite;)Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$SDNavigation;

    return-object p0
.end method

.method public static parseFrom(Lcom/android/carsdk/protobuf/ByteString;)Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$SDNavigation;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/carsdk/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 9361
    sget-object v0, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$SDNavigation;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$SDNavigation;

    invoke-static {v0, p0}, Lcom/android/carsdk/protobuf/GeneratedMessageLite;->parseFrom(Lcom/android/carsdk/protobuf/GeneratedMessageLite;Lcom/android/carsdk/protobuf/ByteString;)Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$SDNavigation;

    return-object p0
.end method

.method public static parseFrom(Lcom/android/carsdk/protobuf/ByteString;Lcom/android/carsdk/protobuf/ExtensionRegistryLite;)Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$SDNavigation;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/carsdk/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 9368
    sget-object v0, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$SDNavigation;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$SDNavigation;

    invoke-static {v0, p0, p1}, Lcom/android/carsdk/protobuf/GeneratedMessageLite;->parseFrom(Lcom/android/carsdk/protobuf/GeneratedMessageLite;Lcom/android/carsdk/protobuf/ByteString;Lcom/android/carsdk/protobuf/ExtensionRegistryLite;)Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$SDNavigation;

    return-object p0
.end method

.method public static parseFrom(Lcom/android/carsdk/protobuf/CodedInputStream;)Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$SDNavigation;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 9408
    sget-object v0, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$SDNavigation;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$SDNavigation;

    invoke-static {v0, p0}, Lcom/android/carsdk/protobuf/GeneratedMessageLite;->parseFrom(Lcom/android/carsdk/protobuf/GeneratedMessageLite;Lcom/android/carsdk/protobuf/CodedInputStream;)Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$SDNavigation;

    return-object p0
.end method

.method public static parseFrom(Lcom/android/carsdk/protobuf/CodedInputStream;Lcom/android/carsdk/protobuf/ExtensionRegistryLite;)Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$SDNavigation;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 9415
    sget-object v0, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$SDNavigation;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$SDNavigation;

    invoke-static {v0, p0, p1}, Lcom/android/carsdk/protobuf/GeneratedMessageLite;->parseFrom(Lcom/android/carsdk/protobuf/GeneratedMessageLite;Lcom/android/carsdk/protobuf/CodedInputStream;Lcom/android/carsdk/protobuf/ExtensionRegistryLite;)Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$SDNavigation;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$SDNavigation;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 9385
    sget-object v0, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$SDNavigation;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$SDNavigation;

    invoke-static {v0, p0}, Lcom/android/carsdk/protobuf/GeneratedMessageLite;->parseFrom(Lcom/android/carsdk/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$SDNavigation;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/android/carsdk/protobuf/ExtensionRegistryLite;)Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$SDNavigation;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 9392
    sget-object v0, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$SDNavigation;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$SDNavigation;

    invoke-static {v0, p0, p1}, Lcom/android/carsdk/protobuf/GeneratedMessageLite;->parseFrom(Lcom/android/carsdk/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/android/carsdk/protobuf/ExtensionRegistryLite;)Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$SDNavigation;

    return-object p0
.end method

.method public static parseFrom([B)Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$SDNavigation;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/carsdk/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 9373
    sget-object v0, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$SDNavigation;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$SDNavigation;

    invoke-static {v0, p0}, Lcom/android/carsdk/protobuf/GeneratedMessageLite;->parseFrom(Lcom/android/carsdk/protobuf/GeneratedMessageLite;[B)Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$SDNavigation;

    return-object p0
.end method

.method public static parseFrom([BLcom/android/carsdk/protobuf/ExtensionRegistryLite;)Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$SDNavigation;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/carsdk/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 9380
    sget-object v0, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$SDNavigation;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$SDNavigation;

    invoke-static {v0, p0, p1}, Lcom/android/carsdk/protobuf/GeneratedMessageLite;->parseFrom(Lcom/android/carsdk/protobuf/GeneratedMessageLite;[BLcom/android/carsdk/protobuf/ExtensionRegistryLite;)Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$SDNavigation;

    return-object p0
.end method

.method public static parser()Lcom/android/carsdk/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/android/carsdk/protobuf/Parser<",
            "Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$SDNavigation;",
            ">;"
        }
    .end annotation

    .line 9811
    sget-object v0, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$SDNavigation;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$SDNavigation;

    invoke-virtual {v0}, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$SDNavigation;->getParserForType()Lcom/android/carsdk/protobuf/Parser;

    move-result-object v0

    return-object v0
.end method

.method private setLaneInfo(Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$LaneInfo$Builder;)V
    .locals 0

    .line 9118
    invoke-virtual {p1}, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$LaneInfo$Builder;->build()Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object p1

    iput-object p1, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$SDNavigation;->sdInfo_:Ljava/lang/Object;

    const/4 p1, 0x1

    .line 9119
    iput p1, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$SDNavigation;->sdInfoCase_:I

    return-void
.end method

.method private setLaneInfo(Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$LaneInfo;)V
    .locals 0

    .line 9108
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 9110
    iput-object p1, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$SDNavigation;->sdInfo_:Ljava/lang/Object;

    const/4 p1, 0x1

    .line 9111
    iput p1, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$SDNavigation;->sdInfoCase_:I

    return-void
.end method

.method private setManeuverInfo(Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$ManeuverInfo$Builder;)V
    .locals 0

    .line 9220
    invoke-virtual {p1}, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$ManeuverInfo$Builder;->build()Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object p1

    iput-object p1, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$SDNavigation;->sdInfo_:Ljava/lang/Object;

    const/4 p1, 0x3

    .line 9221
    iput p1, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$SDNavigation;->sdInfoCase_:I

    return-void
.end method

.method private setManeuverInfo(Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$ManeuverInfo;)V
    .locals 0

    .line 9210
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 9212
    iput-object p1, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$SDNavigation;->sdInfo_:Ljava/lang/Object;

    const/4 p1, 0x3

    .line 9213
    iput p1, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$SDNavigation;->sdInfoCase_:I

    return-void
.end method

.method private setNaviInfo(Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$NaviInfo$Builder;)V
    .locals 0

    .line 9169
    invoke-virtual {p1}, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$NaviInfo$Builder;->build()Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object p1

    iput-object p1, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$SDNavigation;->sdInfo_:Ljava/lang/Object;

    const/4 p1, 0x2

    .line 9170
    iput p1, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$SDNavigation;->sdInfoCase_:I

    return-void
.end method

.method private setNaviInfo(Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$NaviInfo;)V
    .locals 0

    .line 9159
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 9161
    iput-object p1, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$SDNavigation;->sdInfo_:Ljava/lang/Object;

    const/4 p1, 0x2

    .line 9162
    iput p1, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$SDNavigation;->sdInfoCase_:I

    return-void
.end method

.method private setTollLaneInfo(Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$TollLaneInfo$Builder;)V
    .locals 0

    .line 9283
    invoke-virtual {p1}, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$TollLaneInfo$Builder;->build()Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object p1

    iput-object p1, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$SDNavigation;->sdInfo_:Ljava/lang/Object;

    const/4 p1, 0x4

    .line 9284
    iput p1, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$SDNavigation;->sdInfoCase_:I

    return-void
.end method

.method private setTollLaneInfo(Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$TollLaneInfo;)V
    .locals 0

    .line 9269
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 9271
    iput-object p1, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$SDNavigation;->sdInfo_:Ljava/lang/Object;

    const/4 p1, 0x4

    .line 9272
    iput p1, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$SDNavigation;->sdInfoCase_:I

    return-void
.end method


# virtual methods
.method protected final dynamicMethod(Lcom/android/carsdk/protobuf/GeneratedMessageLite$MethodToInvoke;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7

    .line 9636
    sget-object v0, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$1;->$SwitchMap$com$google$protobuf$GeneratedMessageLite$MethodToInvoke:[I

    invoke-virtual {p1}, Lcom/android/carsdk/protobuf/GeneratedMessageLite$MethodToInvoke;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x4

    const/4 v1, 0x3

    const/4 v2, 0x2

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x1

    packed-switch p1, :pswitch_data_0

    .line 9793
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1

    .line 9784
    :pswitch_0
    sget-object p1, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$SDNavigation;->PARSER:Lcom/android/carsdk/protobuf/Parser;

    if-nez p1, :cond_1

    const-class p1, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$SDNavigation;

    monitor-enter p1

    .line 9785
    :try_start_0
    sget-object p2, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$SDNavigation;->PARSER:Lcom/android/carsdk/protobuf/Parser;

    if-nez p2, :cond_0

    .line 9786
    new-instance p2, Lcom/android/carsdk/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;

    sget-object p3, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$SDNavigation;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$SDNavigation;

    invoke-direct {p2, p3}, Lcom/android/carsdk/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;-><init>(Lcom/android/carsdk/protobuf/GeneratedMessageLite;)V

    sput-object p2, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$SDNavigation;->PARSER:Lcom/android/carsdk/protobuf/Parser;

    .line 9788
    :cond_0
    monitor-exit p1

    goto :goto_0

    :catchall_0
    move-exception p2

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p2

    .line 9790
    :cond_1
    :goto_0
    sget-object p1, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$SDNavigation;->PARSER:Lcom/android/carsdk/protobuf/Parser;

    return-object p1

    .line 9695
    :pswitch_1
    check-cast p2, Lcom/android/carsdk/protobuf/CodedInputStream;

    .line 9697
    check-cast p3, Lcom/android/carsdk/protobuf/ExtensionRegistryLite;

    :cond_2
    :goto_1
    if-nez v3, :cond_10

    .line 9702
    :try_start_1
    invoke-virtual {p2}, Lcom/android/carsdk/protobuf/CodedInputStream;->readTag()I

    move-result p1

    if-eqz p1, :cond_f

    const/16 v6, 0xa

    if-eq p1, v6, :cond_c

    const/16 v6, 0x12

    if-eq p1, v6, :cond_9

    const/16 v6, 0x1a

    if-eq p1, v6, :cond_6

    const/16 v6, 0x22

    if-eq p1, v6, :cond_3

    .line 9708
    invoke-virtual {p2, p1}, Lcom/android/carsdk/protobuf/CodedInputStream;->skipField(I)Z

    move-result p1

    if-nez p1, :cond_2

    goto/16 :goto_6

    .line 9757
    :cond_3
    iget p1, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$SDNavigation;->sdInfoCase_:I

    if-ne p1, v0, :cond_4

    .line 9758
    iget-object p1, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$SDNavigation;->sdInfo_:Ljava/lang/Object;

    check-cast p1, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$TollLaneInfo;

    invoke-virtual {p1}, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$TollLaneInfo;->toBuilder()Lcom/android/carsdk/protobuf/GeneratedMessageLite$Builder;

    move-result-object p1

    check-cast p1, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$TollLaneInfo$Builder;

    goto :goto_2

    :cond_4
    move-object p1, v4

    .line 9761
    :goto_2
    invoke-static {}, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$TollLaneInfo;->parser()Lcom/android/carsdk/protobuf/Parser;

    move-result-object v6

    invoke-virtual {p2, v6, p3}, Lcom/android/carsdk/protobuf/CodedInputStream;->readMessage(Lcom/android/carsdk/protobuf/Parser;Lcom/android/carsdk/protobuf/ExtensionRegistryLite;)Lcom/android/carsdk/protobuf/MessageLite;

    move-result-object v6

    iput-object v6, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$SDNavigation;->sdInfo_:Ljava/lang/Object;

    if-eqz p1, :cond_5

    .line 9763
    check-cast v6, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$TollLaneInfo;

    invoke-virtual {p1, v6}, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$TollLaneInfo$Builder;->mergeFrom(Lcom/android/carsdk/protobuf/GeneratedMessageLite;)Lcom/android/carsdk/protobuf/GeneratedMessageLite$Builder;

    .line 9764
    invoke-virtual {p1}, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$TollLaneInfo$Builder;->buildPartial()Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object p1

    iput-object p1, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$SDNavigation;->sdInfo_:Ljava/lang/Object;

    .line 9766
    :cond_5
    iput v0, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$SDNavigation;->sdInfoCase_:I

    goto :goto_1

    .line 9743
    :cond_6
    iget p1, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$SDNavigation;->sdInfoCase_:I

    if-ne p1, v1, :cond_7

    .line 9744
    iget-object p1, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$SDNavigation;->sdInfo_:Ljava/lang/Object;

    check-cast p1, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$ManeuverInfo;

    invoke-virtual {p1}, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$ManeuverInfo;->toBuilder()Lcom/android/carsdk/protobuf/GeneratedMessageLite$Builder;

    move-result-object p1

    check-cast p1, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$ManeuverInfo$Builder;

    goto :goto_3

    :cond_7
    move-object p1, v4

    .line 9747
    :goto_3
    invoke-static {}, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$ManeuverInfo;->parser()Lcom/android/carsdk/protobuf/Parser;

    move-result-object v6

    invoke-virtual {p2, v6, p3}, Lcom/android/carsdk/protobuf/CodedInputStream;->readMessage(Lcom/android/carsdk/protobuf/Parser;Lcom/android/carsdk/protobuf/ExtensionRegistryLite;)Lcom/android/carsdk/protobuf/MessageLite;

    move-result-object v6

    iput-object v6, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$SDNavigation;->sdInfo_:Ljava/lang/Object;

    if-eqz p1, :cond_8

    .line 9749
    check-cast v6, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$ManeuverInfo;

    invoke-virtual {p1, v6}, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$ManeuverInfo$Builder;->mergeFrom(Lcom/android/carsdk/protobuf/GeneratedMessageLite;)Lcom/android/carsdk/protobuf/GeneratedMessageLite$Builder;

    .line 9750
    invoke-virtual {p1}, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$ManeuverInfo$Builder;->buildPartial()Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object p1

    iput-object p1, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$SDNavigation;->sdInfo_:Ljava/lang/Object;

    .line 9752
    :cond_8
    iput v1, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$SDNavigation;->sdInfoCase_:I

    goto :goto_1

    .line 9729
    :cond_9
    iget p1, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$SDNavigation;->sdInfoCase_:I

    if-ne p1, v2, :cond_a

    .line 9730
    iget-object p1, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$SDNavigation;->sdInfo_:Ljava/lang/Object;

    check-cast p1, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$NaviInfo;

    invoke-virtual {p1}, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$NaviInfo;->toBuilder()Lcom/android/carsdk/protobuf/GeneratedMessageLite$Builder;

    move-result-object p1

    check-cast p1, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$NaviInfo$Builder;

    goto :goto_4

    :cond_a
    move-object p1, v4

    .line 9733
    :goto_4
    invoke-static {}, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$NaviInfo;->parser()Lcom/android/carsdk/protobuf/Parser;

    move-result-object v6

    invoke-virtual {p2, v6, p3}, Lcom/android/carsdk/protobuf/CodedInputStream;->readMessage(Lcom/android/carsdk/protobuf/Parser;Lcom/android/carsdk/protobuf/ExtensionRegistryLite;)Lcom/android/carsdk/protobuf/MessageLite;

    move-result-object v6

    iput-object v6, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$SDNavigation;->sdInfo_:Ljava/lang/Object;

    if-eqz p1, :cond_b

    .line 9735
    check-cast v6, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$NaviInfo;

    invoke-virtual {p1, v6}, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$NaviInfo$Builder;->mergeFrom(Lcom/android/carsdk/protobuf/GeneratedMessageLite;)Lcom/android/carsdk/protobuf/GeneratedMessageLite$Builder;

    .line 9736
    invoke-virtual {p1}, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$NaviInfo$Builder;->buildPartial()Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object p1

    iput-object p1, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$SDNavigation;->sdInfo_:Ljava/lang/Object;

    .line 9738
    :cond_b
    iput v2, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$SDNavigation;->sdInfoCase_:I

    goto/16 :goto_1

    .line 9715
    :cond_c
    iget p1, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$SDNavigation;->sdInfoCase_:I

    if-ne p1, v5, :cond_d

    .line 9716
    iget-object p1, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$SDNavigation;->sdInfo_:Ljava/lang/Object;

    check-cast p1, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$LaneInfo;

    invoke-virtual {p1}, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$LaneInfo;->toBuilder()Lcom/android/carsdk/protobuf/GeneratedMessageLite$Builder;

    move-result-object p1

    check-cast p1, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$LaneInfo$Builder;

    goto :goto_5

    :cond_d
    move-object p1, v4

    .line 9719
    :goto_5
    invoke-static {}, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$LaneInfo;->parser()Lcom/android/carsdk/protobuf/Parser;

    move-result-object v6

    invoke-virtual {p2, v6, p3}, Lcom/android/carsdk/protobuf/CodedInputStream;->readMessage(Lcom/android/carsdk/protobuf/Parser;Lcom/android/carsdk/protobuf/ExtensionRegistryLite;)Lcom/android/carsdk/protobuf/MessageLite;

    move-result-object v6

    iput-object v6, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$SDNavigation;->sdInfo_:Ljava/lang/Object;

    if-eqz p1, :cond_e

    .line 9721
    check-cast v6, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$LaneInfo;

    invoke-virtual {p1, v6}, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$LaneInfo$Builder;->mergeFrom(Lcom/android/carsdk/protobuf/GeneratedMessageLite;)Lcom/android/carsdk/protobuf/GeneratedMessageLite$Builder;

    .line 9722
    invoke-virtual {p1}, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$LaneInfo$Builder;->buildPartial()Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object p1

    iput-object p1, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$SDNavigation;->sdInfo_:Ljava/lang/Object;

    .line 9724
    :cond_e
    iput v5, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$SDNavigation;->sdInfoCase_:I
    :try_end_1
    .catch Lcom/android/carsdk/protobuf/InvalidProtocolBufferException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto/16 :goto_1

    :cond_f
    :goto_6
    move v3, v5

    goto/16 :goto_1

    :catchall_1
    move-exception p1

    goto :goto_7

    :catch_0
    move-exception p1

    .line 9774
    :try_start_2
    new-instance p2, Ljava/lang/RuntimeException;

    new-instance p3, Lcom/android/carsdk/protobuf/InvalidProtocolBufferException;

    .line 9776
    invoke-virtual {p1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p3, p1}, Lcom/android/carsdk/protobuf/InvalidProtocolBufferException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, p0}, Lcom/android/carsdk/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/android/carsdk/protobuf/MessageLite;)Lcom/android/carsdk/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p2

    :catch_1
    move-exception p1

    .line 9772
    new-instance p2, Ljava/lang/RuntimeException;

    invoke-virtual {p1, p0}, Lcom/android/carsdk/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/android/carsdk/protobuf/MessageLite;)Lcom/android/carsdk/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 9777
    :goto_7
    throw p1

    .line 9781
    :cond_10
    :pswitch_2
    sget-object p1, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$SDNavigation;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$SDNavigation;

    return-object p1

    .line 9650
    :pswitch_3
    check-cast p2, Lcom/android/carsdk/protobuf/GeneratedMessageLite$Visitor;

    .line 9651
    check-cast p3, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$SDNavigation;

    .line 9652
    sget-object p1, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$1;->$SwitchMap$android$car$hardware$xpu$XpuXNgpNaviInfoVW$SDNavigation$SdInfoCase:[I

    invoke-virtual {p3}, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$SDNavigation;->getSdInfoCase()Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$SDNavigation$SdInfoCase;

    move-result-object v4

    invoke-virtual {v4}, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$SDNavigation$SdInfoCase;->ordinal()I

    move-result v4

    aget p1, p1, v4

    if-eq p1, v5, :cond_19

    if-eq p1, v2, :cond_17

    if-eq p1, v1, :cond_15

    if-eq p1, v0, :cond_13

    const/4 v0, 0x5

    if-eq p1, v0, :cond_11

    goto :goto_8

    .line 9682
    :cond_11
    iget p1, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$SDNavigation;->sdInfoCase_:I

    if-eqz p1, :cond_12

    move v3, v5

    :cond_12
    invoke-interface {p2, v3}, Lcom/android/carsdk/protobuf/GeneratedMessageLite$Visitor;->visitOneofNotSet(Z)V

    goto :goto_8

    .line 9675
    :cond_13
    iget p1, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$SDNavigation;->sdInfoCase_:I

    if-ne p1, v0, :cond_14

    move v3, v5

    :cond_14
    iget-object p1, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$SDNavigation;->sdInfo_:Ljava/lang/Object;

    iget-object v0, p3, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$SDNavigation;->sdInfo_:Ljava/lang/Object;

    invoke-interface {p2, v3, p1, v0}, Lcom/android/carsdk/protobuf/GeneratedMessageLite$Visitor;->visitOneofMessage(ZLjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    iput-object p1, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$SDNavigation;->sdInfo_:Ljava/lang/Object;

    goto :goto_8

    .line 9668
    :cond_15
    iget p1, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$SDNavigation;->sdInfoCase_:I

    if-ne p1, v1, :cond_16

    move v3, v5

    :cond_16
    iget-object p1, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$SDNavigation;->sdInfo_:Ljava/lang/Object;

    iget-object v0, p3, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$SDNavigation;->sdInfo_:Ljava/lang/Object;

    invoke-interface {p2, v3, p1, v0}, Lcom/android/carsdk/protobuf/GeneratedMessageLite$Visitor;->visitOneofMessage(ZLjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    iput-object p1, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$SDNavigation;->sdInfo_:Ljava/lang/Object;

    goto :goto_8

    .line 9661
    :cond_17
    iget p1, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$SDNavigation;->sdInfoCase_:I

    if-ne p1, v2, :cond_18

    move v3, v5

    :cond_18
    iget-object p1, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$SDNavigation;->sdInfo_:Ljava/lang/Object;

    iget-object v0, p3, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$SDNavigation;->sdInfo_:Ljava/lang/Object;

    invoke-interface {p2, v3, p1, v0}, Lcom/android/carsdk/protobuf/GeneratedMessageLite$Visitor;->visitOneofMessage(ZLjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    iput-object p1, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$SDNavigation;->sdInfo_:Ljava/lang/Object;

    goto :goto_8

    .line 9654
    :cond_19
    iget p1, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$SDNavigation;->sdInfoCase_:I

    if-ne p1, v5, :cond_1a

    move v3, v5

    :cond_1a
    iget-object p1, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$SDNavigation;->sdInfo_:Ljava/lang/Object;

    iget-object v0, p3, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$SDNavigation;->sdInfo_:Ljava/lang/Object;

    invoke-interface {p2, v3, p1, v0}, Lcom/android/carsdk/protobuf/GeneratedMessageLite$Visitor;->visitOneofMessage(ZLjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    iput-object p1, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$SDNavigation;->sdInfo_:Ljava/lang/Object;

    .line 9686
    :goto_8
    sget-object p1, Lcom/android/carsdk/protobuf/GeneratedMessageLite$MergeFromVisitor;->INSTANCE:Lcom/android/carsdk/protobuf/GeneratedMessageLite$MergeFromVisitor;

    if-ne p2, p1, :cond_1b

    .line 9688
    iget p1, p3, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$SDNavigation;->sdInfoCase_:I

    if-eqz p1, :cond_1b

    .line 9689
    iput p1, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$SDNavigation;->sdInfoCase_:I

    :cond_1b
    return-object p0

    .line 9647
    :pswitch_4
    new-instance p1, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$SDNavigation$Builder;

    invoke-direct {p1, v4}, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$SDNavigation$Builder;-><init>(Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$1;)V

    return-object p1

    :pswitch_5
    return-object v4

    .line 9641
    :pswitch_6
    sget-object p1, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$SDNavigation;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$SDNavigation;

    return-object p1

    .line 9638
    :pswitch_7
    new-instance p1, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$SDNavigation;

    invoke-direct {p1}, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$SDNavigation;-><init>()V

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
.end method

.method public getLaneInfo()Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$LaneInfo;
    .locals 2

    .line 9098
    iget v0, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$SDNavigation;->sdInfoCase_:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 9099
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$SDNavigation;->sdInfo_:Ljava/lang/Object;

    check-cast v0, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$LaneInfo;

    return-object v0

    .line 9101
    :cond_0
    invoke-static {}, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$LaneInfo;->getDefaultInstance()Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$LaneInfo;

    move-result-object v0

    return-object v0
.end method

.method public getManeuverInfo()Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$ManeuverInfo;
    .locals 2

    .line 9200
    iget v0, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$SDNavigation;->sdInfoCase_:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 9201
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$SDNavigation;->sdInfo_:Ljava/lang/Object;

    check-cast v0, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$ManeuverInfo;

    return-object v0

    .line 9203
    :cond_0
    invoke-static {}, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$ManeuverInfo;->getDefaultInstance()Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$ManeuverInfo;

    move-result-object v0

    return-object v0
.end method

.method public getNaviInfo()Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$NaviInfo;
    .locals 2

    .line 9149
    iget v0, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$SDNavigation;->sdInfoCase_:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 9150
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$SDNavigation;->sdInfo_:Ljava/lang/Object;

    check-cast v0, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$NaviInfo;

    return-object v0

    .line 9152
    :cond_0
    invoke-static {}, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$NaviInfo;->getDefaultInstance()Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$NaviInfo;

    move-result-object v0

    return-object v0
.end method

.method public getSdInfoCase()Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$SDNavigation$SdInfoCase;
    .locals 1

    .line 9084
    iget v0, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$SDNavigation;->sdInfoCase_:I

    invoke-static {v0}, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$SDNavigation$SdInfoCase;->forNumber(I)Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$SDNavigation$SdInfoCase;

    move-result-object v0

    return-object v0
.end method

.method public getSerializedSize()I
    .locals 3

    .line 9334
    iget v0, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$SDNavigation;->memoizedSerializedSize:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    return v0

    :cond_0
    const/4 v0, 0x0

    .line 9338
    iget v1, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$SDNavigation;->sdInfoCase_:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    .line 9339
    iget-object v1, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$SDNavigation;->sdInfo_:Ljava/lang/Object;

    check-cast v1, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$LaneInfo;

    .line 9340
    invoke-static {v2, v1}, Lcom/android/carsdk/protobuf/CodedOutputStream;->computeMessageSize(ILcom/android/carsdk/protobuf/MessageLite;)I

    move-result v1

    add-int/2addr v0, v1

    .line 9342
    :cond_1
    iget v1, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$SDNavigation;->sdInfoCase_:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_2

    .line 9343
    iget-object v1, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$SDNavigation;->sdInfo_:Ljava/lang/Object;

    check-cast v1, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$NaviInfo;

    .line 9344
    invoke-static {v2, v1}, Lcom/android/carsdk/protobuf/CodedOutputStream;->computeMessageSize(ILcom/android/carsdk/protobuf/MessageLite;)I

    move-result v1

    add-int/2addr v0, v1

    .line 9346
    :cond_2
    iget v1, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$SDNavigation;->sdInfoCase_:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_3

    .line 9347
    iget-object v1, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$SDNavigation;->sdInfo_:Ljava/lang/Object;

    check-cast v1, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$ManeuverInfo;

    .line 9348
    invoke-static {v2, v1}, Lcom/android/carsdk/protobuf/CodedOutputStream;->computeMessageSize(ILcom/android/carsdk/protobuf/MessageLite;)I

    move-result v1

    add-int/2addr v0, v1

    .line 9350
    :cond_3
    iget v1, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$SDNavigation;->sdInfoCase_:I

    const/4 v2, 0x4

    if-ne v1, v2, :cond_4

    .line 9351
    iget-object v1, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$SDNavigation;->sdInfo_:Ljava/lang/Object;

    check-cast v1, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$TollLaneInfo;

    .line 9352
    invoke-static {v2, v1}, Lcom/android/carsdk/protobuf/CodedOutputStream;->computeMessageSize(ILcom/android/carsdk/protobuf/MessageLite;)I

    move-result v1

    add-int/2addr v0, v1

    .line 9354
    :cond_4
    iput v0, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$SDNavigation;->memoizedSerializedSize:I

    return v0
.end method

.method public getTollLaneInfo()Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$TollLaneInfo;
    .locals 2

    .line 9255
    iget v0, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$SDNavigation;->sdInfoCase_:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    .line 9256
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$SDNavigation;->sdInfo_:Ljava/lang/Object;

    check-cast v0, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$TollLaneInfo;

    return-object v0

    .line 9258
    :cond_0
    invoke-static {}, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$TollLaneInfo;->getDefaultInstance()Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$TollLaneInfo;

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

    .line 9319
    iget v0, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$SDNavigation;->sdInfoCase_:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 9320
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$SDNavigation;->sdInfo_:Ljava/lang/Object;

    check-cast v0, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$LaneInfo;

    invoke-virtual {p1, v1, v0}, Lcom/android/carsdk/protobuf/CodedOutputStream;->writeMessage(ILcom/android/carsdk/protobuf/MessageLite;)V

    .line 9322
    :cond_0
    iget v0, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$SDNavigation;->sdInfoCase_:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 9323
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$SDNavigation;->sdInfo_:Ljava/lang/Object;

    check-cast v0, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$NaviInfo;

    invoke-virtual {p1, v1, v0}, Lcom/android/carsdk/protobuf/CodedOutputStream;->writeMessage(ILcom/android/carsdk/protobuf/MessageLite;)V

    .line 9325
    :cond_1
    iget v0, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$SDNavigation;->sdInfoCase_:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_2

    .line 9326
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$SDNavigation;->sdInfo_:Ljava/lang/Object;

    check-cast v0, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$ManeuverInfo;

    invoke-virtual {p1, v1, v0}, Lcom/android/carsdk/protobuf/CodedOutputStream;->writeMessage(ILcom/android/carsdk/protobuf/MessageLite;)V

    .line 9328
    :cond_2
    iget v0, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$SDNavigation;->sdInfoCase_:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_3

    .line 9329
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$SDNavigation;->sdInfo_:Ljava/lang/Object;

    check-cast v0, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$TollLaneInfo;

    invoke-virtual {p1, v1, v0}, Lcom/android/carsdk/protobuf/CodedOutputStream;->writeMessage(ILcom/android/carsdk/protobuf/MessageLite;)V

    :cond_3
    return-void
.end method
