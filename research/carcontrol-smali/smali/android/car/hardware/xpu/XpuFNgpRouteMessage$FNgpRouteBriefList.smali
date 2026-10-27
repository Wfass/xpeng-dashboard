.class public final Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBriefList;
.super Lcom/android/carsdk/protobuf/GeneratedMessageLite;
.source "XpuFNgpRouteMessage.java"

# interfaces
.implements Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBriefListOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/car/hardware/xpu/XpuFNgpRouteMessage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "FNgpRouteBriefList"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBriefList$Builder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/carsdk/protobuf/GeneratedMessageLite<",
        "Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBriefList;",
        "Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBriefList$Builder;",
        ">;",
        "Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBriefListOrBuilder;"
    }
.end annotation


# static fields
.field private static final DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBriefList;

.field public static final EGO_UNDERGROUND_PARKING_LOT_STATE_FIELD_NUMBER:I = 0x7

.field public static final FNGP_EMULATOR_NAVIGATION_FIELD_NUMBER:I = 0x2

.field public static final FNGP_ROUTE_BRIEF_LIST_FIELD_NUMBER:I = 0x1

.field public static final PARKING_TAB_INFO_FIELD_NUMBER:I = 0x5

.field private static volatile PARSER:Lcom/android/carsdk/protobuf/Parser; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/carsdk/protobuf/Parser<",
            "Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBriefList;",
            ">;"
        }
    .end annotation
.end field

.field public static final ROUTE_SELECT_TIMESTAMP_FIELD_NUMBER:I = 0x6

.field public static final SEQUENCE_ID_FIELD_NUMBER:I = 0x4

.field public static final STATE_REMIND_FIELD_NUMBER:I = 0x3


# instance fields
.field private bitField0_:I

.field private egoUndergroundParkingLotState_:I

.field private fngpEmulatorNavigation_:Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpEmulatorNavigation;

.field private fngpRouteBriefList_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/carsdk/protobuf/Internal$ProtobufList<",
            "Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief;",
            ">;"
        }
    .end annotation
.end field

.field private parkingTabInfo_:Landroid/car/hardware/xpu/XpuFNgpRouteMessage$ParkingTabInfo;

.field private routeSelectTimestamp_:J

.field private sequenceId_:J

.field private stateRemind_:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 10390
    new-instance v0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBriefList;

    invoke-direct {v0}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBriefList;-><init>()V

    sput-object v0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBriefList;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBriefList;

    .line 10391
    invoke-virtual {v0}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBriefList;->makeImmutable()V

    return-void
.end method

.method private constructor <init>()V
    .locals 3

    .line 9211
    invoke-direct {p0}, Lcom/android/carsdk/protobuf/GeneratedMessageLite;-><init>()V

    .line 9212
    invoke-static {}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBriefList;->emptyProtobufList()Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    move-result-object v0

    iput-object v0, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBriefList;->fngpRouteBriefList_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    const/4 v0, 0x0

    .line 9213
    iput v0, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBriefList;->stateRemind_:I

    const-wide/16 v1, 0x0

    .line 9214
    iput-wide v1, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBriefList;->sequenceId_:J

    .line 9215
    iput-wide v1, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBriefList;->routeSelectTimestamp_:J

    .line 9216
    iput v0, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBriefList;->egoUndergroundParkingLotState_:I

    return-void
.end method

.method static synthetic access$12800()Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBriefList;
    .locals 1

    .line 9206
    sget-object v0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBriefList;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBriefList;

    return-object v0
.end method

.method static synthetic access$12900(Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBriefList;ILandroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief;)V
    .locals 0

    .line 9206
    invoke-direct {p0, p1, p2}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBriefList;->setFngpRouteBriefList(ILandroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief;)V

    return-void
.end method

.method static synthetic access$13000(Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBriefList;ILandroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief$Builder;)V
    .locals 0

    .line 9206
    invoke-direct {p0, p1, p2}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBriefList;->setFngpRouteBriefList(ILandroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief$Builder;)V

    return-void
.end method

.method static synthetic access$13100(Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBriefList;Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief;)V
    .locals 0

    .line 9206
    invoke-direct {p0, p1}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBriefList;->addFngpRouteBriefList(Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief;)V

    return-void
.end method

.method static synthetic access$13200(Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBriefList;ILandroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief;)V
    .locals 0

    .line 9206
    invoke-direct {p0, p1, p2}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBriefList;->addFngpRouteBriefList(ILandroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief;)V

    return-void
.end method

.method static synthetic access$13300(Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBriefList;Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief$Builder;)V
    .locals 0

    .line 9206
    invoke-direct {p0, p1}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBriefList;->addFngpRouteBriefList(Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief$Builder;)V

    return-void
.end method

.method static synthetic access$13400(Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBriefList;ILandroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief$Builder;)V
    .locals 0

    .line 9206
    invoke-direct {p0, p1, p2}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBriefList;->addFngpRouteBriefList(ILandroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief$Builder;)V

    return-void
.end method

.method static synthetic access$13500(Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBriefList;Ljava/lang/Iterable;)V
    .locals 0

    .line 9206
    invoke-direct {p0, p1}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBriefList;->addAllFngpRouteBriefList(Ljava/lang/Iterable;)V

    return-void
.end method

.method static synthetic access$13600(Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBriefList;)V
    .locals 0

    .line 9206
    invoke-direct {p0}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBriefList;->clearFngpRouteBriefList()V

    return-void
.end method

.method static synthetic access$13700(Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBriefList;I)V
    .locals 0

    .line 9206
    invoke-direct {p0, p1}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBriefList;->removeFngpRouteBriefList(I)V

    return-void
.end method

.method static synthetic access$13800(Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBriefList;Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpEmulatorNavigation;)V
    .locals 0

    .line 9206
    invoke-direct {p0, p1}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBriefList;->setFngpEmulatorNavigation(Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpEmulatorNavigation;)V

    return-void
.end method

.method static synthetic access$13900(Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBriefList;Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpEmulatorNavigation$Builder;)V
    .locals 0

    .line 9206
    invoke-direct {p0, p1}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBriefList;->setFngpEmulatorNavigation(Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpEmulatorNavigation$Builder;)V

    return-void
.end method

.method static synthetic access$14000(Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBriefList;Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpEmulatorNavigation;)V
    .locals 0

    .line 9206
    invoke-direct {p0, p1}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBriefList;->mergeFngpEmulatorNavigation(Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpEmulatorNavigation;)V

    return-void
.end method

.method static synthetic access$14100(Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBriefList;)V
    .locals 0

    .line 9206
    invoke-direct {p0}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBriefList;->clearFngpEmulatorNavigation()V

    return-void
.end method

.method static synthetic access$14200(Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBriefList;I)V
    .locals 0

    .line 9206
    invoke-direct {p0, p1}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBriefList;->setStateRemindValue(I)V

    return-void
.end method

.method static synthetic access$14300(Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBriefList;Landroid/car/hardware/xpu/XpuFNgpRouteMessage$StateRemindType;)V
    .locals 0

    .line 9206
    invoke-direct {p0, p1}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBriefList;->setStateRemind(Landroid/car/hardware/xpu/XpuFNgpRouteMessage$StateRemindType;)V

    return-void
.end method

.method static synthetic access$14400(Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBriefList;)V
    .locals 0

    .line 9206
    invoke-direct {p0}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBriefList;->clearStateRemind()V

    return-void
.end method

.method static synthetic access$14500(Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBriefList;J)V
    .locals 0

    .line 9206
    invoke-direct {p0, p1, p2}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBriefList;->setSequenceId(J)V

    return-void
.end method

.method static synthetic access$14600(Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBriefList;)V
    .locals 0

    .line 9206
    invoke-direct {p0}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBriefList;->clearSequenceId()V

    return-void
.end method

.method static synthetic access$14700(Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBriefList;Landroid/car/hardware/xpu/XpuFNgpRouteMessage$ParkingTabInfo;)V
    .locals 0

    .line 9206
    invoke-direct {p0, p1}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBriefList;->setParkingTabInfo(Landroid/car/hardware/xpu/XpuFNgpRouteMessage$ParkingTabInfo;)V

    return-void
.end method

.method static synthetic access$14800(Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBriefList;Landroid/car/hardware/xpu/XpuFNgpRouteMessage$ParkingTabInfo$Builder;)V
    .locals 0

    .line 9206
    invoke-direct {p0, p1}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBriefList;->setParkingTabInfo(Landroid/car/hardware/xpu/XpuFNgpRouteMessage$ParkingTabInfo$Builder;)V

    return-void
.end method

.method static synthetic access$14900(Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBriefList;Landroid/car/hardware/xpu/XpuFNgpRouteMessage$ParkingTabInfo;)V
    .locals 0

    .line 9206
    invoke-direct {p0, p1}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBriefList;->mergeParkingTabInfo(Landroid/car/hardware/xpu/XpuFNgpRouteMessage$ParkingTabInfo;)V

    return-void
.end method

.method static synthetic access$15000(Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBriefList;)V
    .locals 0

    .line 9206
    invoke-direct {p0}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBriefList;->clearParkingTabInfo()V

    return-void
.end method

.method static synthetic access$15100(Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBriefList;J)V
    .locals 0

    .line 9206
    invoke-direct {p0, p1, p2}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBriefList;->setRouteSelectTimestamp(J)V

    return-void
.end method

.method static synthetic access$15200(Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBriefList;)V
    .locals 0

    .line 9206
    invoke-direct {p0}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBriefList;->clearRouteSelectTimestamp()V

    return-void
.end method

.method static synthetic access$15300(Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBriefList;I)V
    .locals 0

    .line 9206
    invoke-direct {p0, p1}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBriefList;->setEgoUndergroundParkingLotStateValue(I)V

    return-void
.end method

.method static synthetic access$15400(Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBriefList;Landroid/car/hardware/xpu/XpuFNgpRouteMessage$EgoUndergroundParkingLotState;)V
    .locals 0

    .line 9206
    invoke-direct {p0, p1}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBriefList;->setEgoUndergroundParkingLotState(Landroid/car/hardware/xpu/XpuFNgpRouteMessage$EgoUndergroundParkingLotState;)V

    return-void
.end method

.method static synthetic access$15500(Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBriefList;)V
    .locals 0

    .line 9206
    invoke-direct {p0}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBriefList;->clearEgoUndergroundParkingLotState()V

    return-void
.end method

.method private addAllFngpRouteBriefList(Ljava/lang/Iterable;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief;",
            ">;)V"
        }
    .end annotation

    .line 9321
    invoke-direct {p0}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBriefList;->ensureFngpRouteBriefListIsMutable()V

    .line 9322
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBriefList;->fngpRouteBriefList_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    invoke-static {p1, v0}, Lcom/android/carsdk/protobuf/AbstractMessageLite;->addAll(Ljava/lang/Iterable;Ljava/util/Collection;)V

    return-void
.end method

.method private addFngpRouteBriefList(ILandroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief$Builder;)V
    .locals 1

    .line 9313
    invoke-direct {p0}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBriefList;->ensureFngpRouteBriefListIsMutable()V

    .line 9314
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBriefList;->fngpRouteBriefList_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    invoke-virtual {p2}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief$Builder;->build()Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object p2

    check-cast p2, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief;

    invoke-interface {v0, p1, p2}, Lcom/android/carsdk/protobuf/Internal$ProtobufList;->add(ILjava/lang/Object;)V

    return-void
.end method

.method private addFngpRouteBriefList(ILandroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief;)V
    .locals 1

    .line 9295
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 9297
    invoke-direct {p0}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBriefList;->ensureFngpRouteBriefListIsMutable()V

    .line 9298
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBriefList;->fngpRouteBriefList_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1, p2}, Lcom/android/carsdk/protobuf/Internal$ProtobufList;->add(ILjava/lang/Object;)V

    return-void
.end method

.method private addFngpRouteBriefList(Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief$Builder;)V
    .locals 1

    .line 9305
    invoke-direct {p0}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBriefList;->ensureFngpRouteBriefListIsMutable()V

    .line 9306
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBriefList;->fngpRouteBriefList_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    invoke-virtual {p1}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief$Builder;->build()Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief;

    invoke-interface {v0, p1}, Lcom/android/carsdk/protobuf/Internal$ProtobufList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private addFngpRouteBriefList(Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief;)V
    .locals 1

    .line 9284
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 9286
    invoke-direct {p0}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBriefList;->ensureFngpRouteBriefListIsMutable()V

    .line 9287
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBriefList;->fngpRouteBriefList_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1}, Lcom/android/carsdk/protobuf/Internal$ProtobufList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private clearEgoUndergroundParkingLotState()V
    .locals 1

    const/4 v0, 0x0

    .line 9676
    iput v0, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBriefList;->egoUndergroundParkingLotState_:I

    return-void
.end method

.method private clearFngpEmulatorNavigation()V
    .locals 1

    const/4 v0, 0x0

    .line 9411
    iput-object v0, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBriefList;->fngpEmulatorNavigation_:Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpEmulatorNavigation;

    return-void
.end method

.method private clearFngpRouteBriefList()V
    .locals 1

    .line 9329
    invoke-static {}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBriefList;->emptyProtobufList()Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    move-result-object v0

    iput-object v0, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBriefList;->fngpRouteBriefList_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    return-void
.end method

.method private clearParkingTabInfo()V
    .locals 1

    const/4 v0, 0x0

    .line 9581
    iput-object v0, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBriefList;->parkingTabInfo_:Landroid/car/hardware/xpu/XpuFNgpRouteMessage$ParkingTabInfo;

    return-void
.end method

.method private clearRouteSelectTimestamp()V
    .locals 2

    const-wide/16 v0, 0x0

    .line 9617
    iput-wide v0, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBriefList;->routeSelectTimestamp_:J

    return-void
.end method

.method private clearSequenceId()V
    .locals 2

    const-wide/16 v0, 0x0

    .line 9506
    iput-wide v0, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBriefList;->sequenceId_:J

    return-void
.end method

.method private clearStateRemind()V
    .locals 1

    const/4 v0, 0x0

    .line 9471
    iput v0, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBriefList;->stateRemind_:I

    return-void
.end method

.method private ensureFngpRouteBriefListIsMutable()V
    .locals 1

    .line 9254
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBriefList;->fngpRouteBriefList_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    invoke-interface {v0}, Lcom/android/carsdk/protobuf/Internal$ProtobufList;->isModifiable()Z

    move-result v0

    if-nez v0, :cond_0

    .line 9255
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBriefList;->fngpRouteBriefList_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    .line 9256
    invoke-static {v0}, Lcom/android/carsdk/protobuf/GeneratedMessageLite;->mutableCopy(Lcom/android/carsdk/protobuf/Internal$ProtobufList;)Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    move-result-object v0

    iput-object v0, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBriefList;->fngpRouteBriefList_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    :cond_0
    return-void
.end method

.method public static getDefaultInstance()Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBriefList;
    .locals 1

    .line 10395
    sget-object v0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBriefList;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBriefList;

    return-object v0
.end method

.method private mergeFngpEmulatorNavigation(Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpEmulatorNavigation;)V
    .locals 2

    .line 9395
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBriefList;->fngpEmulatorNavigation_:Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpEmulatorNavigation;

    if-eqz v0, :cond_0

    .line 9396
    invoke-static {}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpEmulatorNavigation;->getDefaultInstance()Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpEmulatorNavigation;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 9397
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBriefList;->fngpEmulatorNavigation_:Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpEmulatorNavigation;

    .line 9398
    invoke-static {v0}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpEmulatorNavigation;->newBuilder(Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpEmulatorNavigation;)Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpEmulatorNavigation$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpEmulatorNavigation$Builder;->mergeFrom(Lcom/android/carsdk/protobuf/GeneratedMessageLite;)Lcom/android/carsdk/protobuf/GeneratedMessageLite$Builder;

    move-result-object p1

    check-cast p1, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpEmulatorNavigation$Builder;

    invoke-virtual {p1}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpEmulatorNavigation$Builder;->buildPartial()Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpEmulatorNavigation;

    iput-object p1, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBriefList;->fngpEmulatorNavigation_:Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpEmulatorNavigation;

    goto :goto_0

    .line 9400
    :cond_0
    iput-object p1, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBriefList;->fngpEmulatorNavigation_:Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpEmulatorNavigation;

    :goto_0
    return-void
.end method

.method private mergeParkingTabInfo(Landroid/car/hardware/xpu/XpuFNgpRouteMessage$ParkingTabInfo;)V
    .locals 2

    .line 9565
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBriefList;->parkingTabInfo_:Landroid/car/hardware/xpu/XpuFNgpRouteMessage$ParkingTabInfo;

    if-eqz v0, :cond_0

    .line 9566
    invoke-static {}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$ParkingTabInfo;->getDefaultInstance()Landroid/car/hardware/xpu/XpuFNgpRouteMessage$ParkingTabInfo;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 9567
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBriefList;->parkingTabInfo_:Landroid/car/hardware/xpu/XpuFNgpRouteMessage$ParkingTabInfo;

    .line 9568
    invoke-static {v0}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$ParkingTabInfo;->newBuilder(Landroid/car/hardware/xpu/XpuFNgpRouteMessage$ParkingTabInfo;)Landroid/car/hardware/xpu/XpuFNgpRouteMessage$ParkingTabInfo$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$ParkingTabInfo$Builder;->mergeFrom(Lcom/android/carsdk/protobuf/GeneratedMessageLite;)Lcom/android/carsdk/protobuf/GeneratedMessageLite$Builder;

    move-result-object p1

    check-cast p1, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$ParkingTabInfo$Builder;

    invoke-virtual {p1}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$ParkingTabInfo$Builder;->buildPartial()Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$ParkingTabInfo;

    iput-object p1, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBriefList;->parkingTabInfo_:Landroid/car/hardware/xpu/XpuFNgpRouteMessage$ParkingTabInfo;

    goto :goto_0

    .line 9570
    :cond_0
    iput-object p1, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBriefList;->parkingTabInfo_:Landroid/car/hardware/xpu/XpuFNgpRouteMessage$ParkingTabInfo;

    :goto_0
    return-void
.end method

.method public static newBuilder()Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBriefList$Builder;
    .locals 1

    .line 9803
    sget-object v0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBriefList;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBriefList;

    invoke-virtual {v0}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBriefList;->toBuilder()Lcom/android/carsdk/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBriefList$Builder;

    return-object v0
.end method

.method public static newBuilder(Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBriefList;)Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBriefList$Builder;
    .locals 1

    .line 9806
    sget-object v0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBriefList;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBriefList;

    invoke-virtual {v0}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBriefList;->toBuilder()Lcom/android/carsdk/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBriefList$Builder;

    invoke-virtual {v0, p0}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBriefList$Builder;->mergeFrom(Lcom/android/carsdk/protobuf/GeneratedMessageLite;)Lcom/android/carsdk/protobuf/GeneratedMessageLite$Builder;

    move-result-object p0

    check-cast p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBriefList$Builder;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBriefList;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 9780
    sget-object v0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBriefList;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBriefList;

    invoke-static {v0, p0}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBriefList;->parseDelimitedFrom(Lcom/android/carsdk/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBriefList;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/android/carsdk/protobuf/ExtensionRegistryLite;)Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBriefList;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 9786
    sget-object v0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBriefList;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBriefList;

    invoke-static {v0, p0, p1}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBriefList;->parseDelimitedFrom(Lcom/android/carsdk/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/android/carsdk/protobuf/ExtensionRegistryLite;)Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBriefList;

    return-object p0
.end method

.method public static parseFrom(Lcom/android/carsdk/protobuf/ByteString;)Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBriefList;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/carsdk/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 9744
    sget-object v0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBriefList;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBriefList;

    invoke-static {v0, p0}, Lcom/android/carsdk/protobuf/GeneratedMessageLite;->parseFrom(Lcom/android/carsdk/protobuf/GeneratedMessageLite;Lcom/android/carsdk/protobuf/ByteString;)Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBriefList;

    return-object p0
.end method

.method public static parseFrom(Lcom/android/carsdk/protobuf/ByteString;Lcom/android/carsdk/protobuf/ExtensionRegistryLite;)Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBriefList;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/carsdk/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 9751
    sget-object v0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBriefList;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBriefList;

    invoke-static {v0, p0, p1}, Lcom/android/carsdk/protobuf/GeneratedMessageLite;->parseFrom(Lcom/android/carsdk/protobuf/GeneratedMessageLite;Lcom/android/carsdk/protobuf/ByteString;Lcom/android/carsdk/protobuf/ExtensionRegistryLite;)Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBriefList;

    return-object p0
.end method

.method public static parseFrom(Lcom/android/carsdk/protobuf/CodedInputStream;)Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBriefList;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 9791
    sget-object v0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBriefList;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBriefList;

    invoke-static {v0, p0}, Lcom/android/carsdk/protobuf/GeneratedMessageLite;->parseFrom(Lcom/android/carsdk/protobuf/GeneratedMessageLite;Lcom/android/carsdk/protobuf/CodedInputStream;)Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBriefList;

    return-object p0
.end method

.method public static parseFrom(Lcom/android/carsdk/protobuf/CodedInputStream;Lcom/android/carsdk/protobuf/ExtensionRegistryLite;)Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBriefList;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 9798
    sget-object v0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBriefList;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBriefList;

    invoke-static {v0, p0, p1}, Lcom/android/carsdk/protobuf/GeneratedMessageLite;->parseFrom(Lcom/android/carsdk/protobuf/GeneratedMessageLite;Lcom/android/carsdk/protobuf/CodedInputStream;Lcom/android/carsdk/protobuf/ExtensionRegistryLite;)Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBriefList;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBriefList;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 9768
    sget-object v0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBriefList;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBriefList;

    invoke-static {v0, p0}, Lcom/android/carsdk/protobuf/GeneratedMessageLite;->parseFrom(Lcom/android/carsdk/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBriefList;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/android/carsdk/protobuf/ExtensionRegistryLite;)Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBriefList;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 9775
    sget-object v0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBriefList;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBriefList;

    invoke-static {v0, p0, p1}, Lcom/android/carsdk/protobuf/GeneratedMessageLite;->parseFrom(Lcom/android/carsdk/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/android/carsdk/protobuf/ExtensionRegistryLite;)Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBriefList;

    return-object p0
.end method

.method public static parseFrom([B)Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBriefList;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/carsdk/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 9756
    sget-object v0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBriefList;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBriefList;

    invoke-static {v0, p0}, Lcom/android/carsdk/protobuf/GeneratedMessageLite;->parseFrom(Lcom/android/carsdk/protobuf/GeneratedMessageLite;[B)Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBriefList;

    return-object p0
.end method

.method public static parseFrom([BLcom/android/carsdk/protobuf/ExtensionRegistryLite;)Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBriefList;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/carsdk/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 9763
    sget-object v0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBriefList;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBriefList;

    invoke-static {v0, p0, p1}, Lcom/android/carsdk/protobuf/GeneratedMessageLite;->parseFrom(Lcom/android/carsdk/protobuf/GeneratedMessageLite;[BLcom/android/carsdk/protobuf/ExtensionRegistryLite;)Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBriefList;

    return-object p0
.end method

.method public static parser()Lcom/android/carsdk/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/android/carsdk/protobuf/Parser<",
            "Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBriefList;",
            ">;"
        }
    .end annotation

    .line 10401
    sget-object v0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBriefList;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBriefList;

    invoke-virtual {v0}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBriefList;->getParserForType()Lcom/android/carsdk/protobuf/Parser;

    move-result-object v0

    return-object v0
.end method

.method private removeFngpRouteBriefList(I)V
    .locals 1

    .line 9335
    invoke-direct {p0}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBriefList;->ensureFngpRouteBriefListIsMutable()V

    .line 9336
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBriefList;->fngpRouteBriefList_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1}, Lcom/android/carsdk/protobuf/Internal$ProtobufList;->remove(I)Ljava/lang/Object;

    return-void
.end method

.method private setEgoUndergroundParkingLotState(Landroid/car/hardware/xpu/XpuFNgpRouteMessage$EgoUndergroundParkingLotState;)V
    .locals 0

    .line 9662
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 9665
    invoke-virtual {p1}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$EgoUndergroundParkingLotState;->getNumber()I

    move-result p1

    iput p1, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBriefList;->egoUndergroundParkingLotState_:I

    return-void
.end method

.method private setEgoUndergroundParkingLotStateValue(I)V
    .locals 0

    .line 9651
    iput p1, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBriefList;->egoUndergroundParkingLotState_:I

    return-void
.end method

.method private setFngpEmulatorNavigation(Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpEmulatorNavigation$Builder;)V
    .locals 0

    .line 9384
    invoke-virtual {p1}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpEmulatorNavigation$Builder;->build()Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpEmulatorNavigation;

    iput-object p1, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBriefList;->fngpEmulatorNavigation_:Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpEmulatorNavigation;

    return-void
.end method

.method private setFngpEmulatorNavigation(Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpEmulatorNavigation;)V
    .locals 0

    .line 9370
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 9372
    iput-object p1, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBriefList;->fngpEmulatorNavigation_:Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpEmulatorNavigation;

    return-void
.end method

.method private setFngpRouteBriefList(ILandroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief$Builder;)V
    .locals 1

    .line 9276
    invoke-direct {p0}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBriefList;->ensureFngpRouteBriefListIsMutable()V

    .line 9277
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBriefList;->fngpRouteBriefList_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    invoke-virtual {p2}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief$Builder;->build()Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object p2

    check-cast p2, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief;

    invoke-interface {v0, p1, p2}, Lcom/android/carsdk/protobuf/Internal$ProtobufList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private setFngpRouteBriefList(ILandroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief;)V
    .locals 1

    .line 9266
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 9268
    invoke-direct {p0}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBriefList;->ensureFngpRouteBriefListIsMutable()V

    .line 9269
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBriefList;->fngpRouteBriefList_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1, p2}, Lcom/android/carsdk/protobuf/Internal$ProtobufList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private setParkingTabInfo(Landroid/car/hardware/xpu/XpuFNgpRouteMessage$ParkingTabInfo$Builder;)V
    .locals 0

    .line 9554
    invoke-virtual {p1}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$ParkingTabInfo$Builder;->build()Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$ParkingTabInfo;

    iput-object p1, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBriefList;->parkingTabInfo_:Landroid/car/hardware/xpu/XpuFNgpRouteMessage$ParkingTabInfo;

    return-void
.end method

.method private setParkingTabInfo(Landroid/car/hardware/xpu/XpuFNgpRouteMessage$ParkingTabInfo;)V
    .locals 0

    .line 9540
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 9542
    iput-object p1, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBriefList;->parkingTabInfo_:Landroid/car/hardware/xpu/XpuFNgpRouteMessage$ParkingTabInfo;

    return-void
.end method

.method private setRouteSelectTimestamp(J)V
    .locals 0

    .line 9606
    iput-wide p1, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBriefList;->routeSelectTimestamp_:J

    return-void
.end method

.method private setSequenceId(J)V
    .locals 0

    .line 9495
    iput-wide p1, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBriefList;->sequenceId_:J

    return-void
.end method

.method private setStateRemind(Landroid/car/hardware/xpu/XpuFNgpRouteMessage$StateRemindType;)V
    .locals 0

    .line 9457
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 9460
    invoke-virtual {p1}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$StateRemindType;->getNumber()I

    move-result p1

    iput p1, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBriefList;->stateRemind_:I

    return-void
.end method

.method private setStateRemindValue(I)V
    .locals 0

    .line 9446
    iput p1, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBriefList;->stateRemind_:I

    return-void
.end method


# virtual methods
.method protected final dynamicMethod(Lcom/android/carsdk/protobuf/GeneratedMessageLite$MethodToInvoke;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 12

    .line 10251
    sget-object v0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$1;->$SwitchMap$com$google$protobuf$GeneratedMessageLite$MethodToInvoke:[I

    invoke-virtual {p1}, Lcom/android/carsdk/protobuf/GeneratedMessageLite$MethodToInvoke;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x1

    packed-switch p1, :pswitch_data_0

    .line 10383
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1

    .line 10374
    :pswitch_0
    sget-object p1, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBriefList;->PARSER:Lcom/android/carsdk/protobuf/Parser;

    if-nez p1, :cond_1

    const-class p1, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBriefList;

    monitor-enter p1

    .line 10375
    :try_start_0
    sget-object p2, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBriefList;->PARSER:Lcom/android/carsdk/protobuf/Parser;

    if-nez p2, :cond_0

    .line 10376
    new-instance p2, Lcom/android/carsdk/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;

    sget-object p3, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBriefList;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBriefList;

    invoke-direct {p2, p3}, Lcom/android/carsdk/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;-><init>(Lcom/android/carsdk/protobuf/GeneratedMessageLite;)V

    sput-object p2, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBriefList;->PARSER:Lcom/android/carsdk/protobuf/Parser;

    .line 10378
    :cond_0
    monitor-exit p1

    goto :goto_0

    :catchall_0
    move-exception p2

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p2

    .line 10380
    :cond_1
    :goto_0
    sget-object p1, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBriefList;->PARSER:Lcom/android/carsdk/protobuf/Parser;

    return-object p1

    .line 10284
    :pswitch_1
    check-cast p2, Lcom/android/carsdk/protobuf/CodedInputStream;

    .line 10286
    check-cast p3, Lcom/android/carsdk/protobuf/ExtensionRegistryLite;

    :cond_2
    :goto_1
    if-nez v1, :cond_e

    .line 10291
    :try_start_1
    invoke-virtual {p2}, Lcom/android/carsdk/protobuf/CodedInputStream;->readTag()I

    move-result p1

    if-eqz p1, :cond_d

    const/16 v3, 0xa

    if-eq p1, v3, :cond_b

    const/16 v3, 0x12

    if-eq p1, v3, :cond_9

    const/16 v3, 0x18

    if-eq p1, v3, :cond_8

    const/16 v3, 0x20

    if-eq p1, v3, :cond_7

    const/16 v3, 0x2a

    if-eq p1, v3, :cond_5

    const/16 v3, 0x30

    if-eq p1, v3, :cond_4

    const/16 v3, 0x38

    if-eq p1, v3, :cond_3

    .line 10297
    invoke-virtual {p2, p1}, Lcom/android/carsdk/protobuf/CodedInputStream;->skipField(I)Z

    move-result p1

    if-nez p1, :cond_2

    goto/16 :goto_4

    .line 10354
    :cond_3
    invoke-virtual {p2}, Lcom/android/carsdk/protobuf/CodedInputStream;->readEnum()I

    move-result p1

    .line 10356
    iput p1, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBriefList;->egoUndergroundParkingLotState_:I

    goto :goto_1

    .line 10350
    :cond_4
    invoke-virtual {p2}, Lcom/android/carsdk/protobuf/CodedInputStream;->readInt64()J

    move-result-wide v3

    iput-wide v3, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBriefList;->routeSelectTimestamp_:J

    goto :goto_1

    .line 10337
    :cond_5
    iget-object p1, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBriefList;->parkingTabInfo_:Landroid/car/hardware/xpu/XpuFNgpRouteMessage$ParkingTabInfo;

    if-eqz p1, :cond_6

    .line 10338
    invoke-virtual {p1}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$ParkingTabInfo;->toBuilder()Lcom/android/carsdk/protobuf/GeneratedMessageLite$Builder;

    move-result-object p1

    check-cast p1, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$ParkingTabInfo$Builder;

    goto :goto_2

    :cond_6
    move-object p1, v0

    .line 10340
    :goto_2
    invoke-static {}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$ParkingTabInfo;->parser()Lcom/android/carsdk/protobuf/Parser;

    move-result-object v3

    invoke-virtual {p2, v3, p3}, Lcom/android/carsdk/protobuf/CodedInputStream;->readMessage(Lcom/android/carsdk/protobuf/Parser;Lcom/android/carsdk/protobuf/ExtensionRegistryLite;)Lcom/android/carsdk/protobuf/MessageLite;

    move-result-object v3

    check-cast v3, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$ParkingTabInfo;

    iput-object v3, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBriefList;->parkingTabInfo_:Landroid/car/hardware/xpu/XpuFNgpRouteMessage$ParkingTabInfo;

    if-eqz p1, :cond_2

    .line 10342
    invoke-virtual {p1, v3}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$ParkingTabInfo$Builder;->mergeFrom(Lcom/android/carsdk/protobuf/GeneratedMessageLite;)Lcom/android/carsdk/protobuf/GeneratedMessageLite$Builder;

    .line 10343
    invoke-virtual {p1}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$ParkingTabInfo$Builder;->buildPartial()Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$ParkingTabInfo;

    iput-object p1, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBriefList;->parkingTabInfo_:Landroid/car/hardware/xpu/XpuFNgpRouteMessage$ParkingTabInfo;

    goto :goto_1

    .line 10332
    :cond_7
    invoke-virtual {p2}, Lcom/android/carsdk/protobuf/CodedInputStream;->readInt64()J

    move-result-wide v3

    iput-wide v3, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBriefList;->sequenceId_:J

    goto :goto_1

    .line 10325
    :cond_8
    invoke-virtual {p2}, Lcom/android/carsdk/protobuf/CodedInputStream;->readEnum()I

    move-result p1

    .line 10327
    iput p1, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBriefList;->stateRemind_:I

    goto :goto_1

    .line 10313
    :cond_9
    iget-object p1, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBriefList;->fngpEmulatorNavigation_:Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpEmulatorNavigation;

    if-eqz p1, :cond_a

    .line 10314
    invoke-virtual {p1}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpEmulatorNavigation;->toBuilder()Lcom/android/carsdk/protobuf/GeneratedMessageLite$Builder;

    move-result-object p1

    check-cast p1, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpEmulatorNavigation$Builder;

    goto :goto_3

    :cond_a
    move-object p1, v0

    .line 10316
    :goto_3
    invoke-static {}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpEmulatorNavigation;->parser()Lcom/android/carsdk/protobuf/Parser;

    move-result-object v3

    invoke-virtual {p2, v3, p3}, Lcom/android/carsdk/protobuf/CodedInputStream;->readMessage(Lcom/android/carsdk/protobuf/Parser;Lcom/android/carsdk/protobuf/ExtensionRegistryLite;)Lcom/android/carsdk/protobuf/MessageLite;

    move-result-object v3

    check-cast v3, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpEmulatorNavigation;

    iput-object v3, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBriefList;->fngpEmulatorNavigation_:Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpEmulatorNavigation;

    if-eqz p1, :cond_2

    .line 10318
    invoke-virtual {p1, v3}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpEmulatorNavigation$Builder;->mergeFrom(Lcom/android/carsdk/protobuf/GeneratedMessageLite;)Lcom/android/carsdk/protobuf/GeneratedMessageLite$Builder;

    .line 10319
    invoke-virtual {p1}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpEmulatorNavigation$Builder;->buildPartial()Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpEmulatorNavigation;

    iput-object p1, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBriefList;->fngpEmulatorNavigation_:Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpEmulatorNavigation;

    goto/16 :goto_1

    .line 10303
    :cond_b
    iget-object p1, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBriefList;->fngpRouteBriefList_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    invoke-interface {p1}, Lcom/android/carsdk/protobuf/Internal$ProtobufList;->isModifiable()Z

    move-result p1

    if-nez p1, :cond_c

    .line 10304
    iget-object p1, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBriefList;->fngpRouteBriefList_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    .line 10305
    invoke-static {p1}, Lcom/android/carsdk/protobuf/GeneratedMessageLite;->mutableCopy(Lcom/android/carsdk/protobuf/Internal$ProtobufList;)Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    move-result-object p1

    iput-object p1, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBriefList;->fngpRouteBriefList_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    .line 10307
    :cond_c
    iget-object p1, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBriefList;->fngpRouteBriefList_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    .line 10308
    invoke-static {}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief;->parser()Lcom/android/carsdk/protobuf/Parser;

    move-result-object v3

    invoke-virtual {p2, v3, p3}, Lcom/android/carsdk/protobuf/CodedInputStream;->readMessage(Lcom/android/carsdk/protobuf/Parser;Lcom/android/carsdk/protobuf/ExtensionRegistryLite;)Lcom/android/carsdk/protobuf/MessageLite;

    move-result-object v3

    check-cast v3, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief;

    .line 10307
    invoke-interface {p1, v3}, Lcom/android/carsdk/protobuf/Internal$ProtobufList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Lcom/android/carsdk/protobuf/InvalidProtocolBufferException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto/16 :goto_1

    :cond_d
    :goto_4
    move v1, v2

    goto/16 :goto_1

    :catchall_1
    move-exception p1

    goto :goto_5

    :catch_0
    move-exception p1

    .line 10364
    :try_start_2
    new-instance p2, Ljava/lang/RuntimeException;

    new-instance p3, Lcom/android/carsdk/protobuf/InvalidProtocolBufferException;

    .line 10366
    invoke-virtual {p1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p3, p1}, Lcom/android/carsdk/protobuf/InvalidProtocolBufferException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, p0}, Lcom/android/carsdk/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/android/carsdk/protobuf/MessageLite;)Lcom/android/carsdk/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p2

    :catch_1
    move-exception p1

    .line 10362
    new-instance p2, Ljava/lang/RuntimeException;

    invoke-virtual {p1, p0}, Lcom/android/carsdk/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/android/carsdk/protobuf/MessageLite;)Lcom/android/carsdk/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 10367
    :goto_5
    throw p1

    .line 10371
    :cond_e
    :pswitch_2
    sget-object p1, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBriefList;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBriefList;

    return-object p1

    .line 10266
    :pswitch_3
    check-cast p2, Lcom/android/carsdk/protobuf/GeneratedMessageLite$Visitor;

    .line 10267
    check-cast p3, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBriefList;

    .line 10268
    iget-object p1, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBriefList;->fngpRouteBriefList_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    iget-object v0, p3, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBriefList;->fngpRouteBriefList_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    invoke-interface {p2, p1, v0}, Lcom/android/carsdk/protobuf/GeneratedMessageLite$Visitor;->visitList(Lcom/android/carsdk/protobuf/Internal$ProtobufList;Lcom/android/carsdk/protobuf/Internal$ProtobufList;)Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    move-result-object p1

    iput-object p1, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBriefList;->fngpRouteBriefList_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    .line 10269
    iget-object p1, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBriefList;->fngpEmulatorNavigation_:Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpEmulatorNavigation;

    iget-object v0, p3, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBriefList;->fngpEmulatorNavigation_:Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpEmulatorNavigation;

    invoke-interface {p2, p1, v0}, Lcom/android/carsdk/protobuf/GeneratedMessageLite$Visitor;->visitMessage(Lcom/android/carsdk/protobuf/MessageLite;Lcom/android/carsdk/protobuf/MessageLite;)Lcom/android/carsdk/protobuf/MessageLite;

    move-result-object p1

    check-cast p1, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpEmulatorNavigation;

    iput-object p1, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBriefList;->fngpEmulatorNavigation_:Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpEmulatorNavigation;

    .line 10270
    iget p1, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBriefList;->stateRemind_:I

    if-eqz p1, :cond_f

    move v0, v2

    goto :goto_6

    :cond_f
    move v0, v1

    :goto_6
    iget v3, p3, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBriefList;->stateRemind_:I

    if-eqz v3, :cond_10

    move v4, v2

    goto :goto_7

    :cond_10
    move v4, v1

    :goto_7
    invoke-interface {p2, v0, p1, v4, v3}, Lcom/android/carsdk/protobuf/GeneratedMessageLite$Visitor;->visitInt(ZIZI)I

    move-result p1

    iput p1, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBriefList;->stateRemind_:I

    .line 10271
    iget-wide v5, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBriefList;->sequenceId_:J

    const-wide/16 v10, 0x0

    cmp-long p1, v5, v10

    if-eqz p1, :cond_11

    move v4, v2

    goto :goto_8

    :cond_11
    move v4, v1

    :goto_8
    iget-wide v8, p3, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBriefList;->sequenceId_:J

    cmp-long p1, v8, v10

    if-eqz p1, :cond_12

    move v7, v2

    goto :goto_9

    :cond_12
    move v7, v1

    :goto_9
    move-object v3, p2

    invoke-interface/range {v3 .. v9}, Lcom/android/carsdk/protobuf/GeneratedMessageLite$Visitor;->visitLong(ZJZJ)J

    move-result-wide v3

    iput-wide v3, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBriefList;->sequenceId_:J

    .line 10273
    iget-object p1, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBriefList;->parkingTabInfo_:Landroid/car/hardware/xpu/XpuFNgpRouteMessage$ParkingTabInfo;

    iget-object v0, p3, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBriefList;->parkingTabInfo_:Landroid/car/hardware/xpu/XpuFNgpRouteMessage$ParkingTabInfo;

    invoke-interface {p2, p1, v0}, Lcom/android/carsdk/protobuf/GeneratedMessageLite$Visitor;->visitMessage(Lcom/android/carsdk/protobuf/MessageLite;Lcom/android/carsdk/protobuf/MessageLite;)Lcom/android/carsdk/protobuf/MessageLite;

    move-result-object p1

    check-cast p1, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$ParkingTabInfo;

    iput-object p1, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBriefList;->parkingTabInfo_:Landroid/car/hardware/xpu/XpuFNgpRouteMessage$ParkingTabInfo;

    .line 10274
    iget-wide v5, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBriefList;->routeSelectTimestamp_:J

    cmp-long p1, v5, v10

    if-eqz p1, :cond_13

    move v4, v2

    goto :goto_a

    :cond_13
    move v4, v1

    :goto_a
    iget-wide v8, p3, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBriefList;->routeSelectTimestamp_:J

    cmp-long p1, v8, v10

    if-eqz p1, :cond_14

    move v7, v2

    goto :goto_b

    :cond_14
    move v7, v1

    :goto_b
    move-object v3, p2

    invoke-interface/range {v3 .. v9}, Lcom/android/carsdk/protobuf/GeneratedMessageLite$Visitor;->visitLong(ZJZJ)J

    move-result-wide v3

    iput-wide v3, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBriefList;->routeSelectTimestamp_:J

    .line 10276
    iget p1, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBriefList;->egoUndergroundParkingLotState_:I

    if-eqz p1, :cond_15

    move v0, v2

    goto :goto_c

    :cond_15
    move v0, v1

    :goto_c
    iget v3, p3, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBriefList;->egoUndergroundParkingLotState_:I

    if-eqz v3, :cond_16

    move v1, v2

    :cond_16
    invoke-interface {p2, v0, p1, v1, v3}, Lcom/android/carsdk/protobuf/GeneratedMessageLite$Visitor;->visitInt(ZIZI)I

    move-result p1

    iput p1, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBriefList;->egoUndergroundParkingLotState_:I

    .line 10277
    sget-object p1, Lcom/android/carsdk/protobuf/GeneratedMessageLite$MergeFromVisitor;->INSTANCE:Lcom/android/carsdk/protobuf/GeneratedMessageLite$MergeFromVisitor;

    if-ne p2, p1, :cond_17

    .line 10279
    iget p1, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBriefList;->bitField0_:I

    iget p2, p3, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBriefList;->bitField0_:I

    or-int/2addr p1, p2

    iput p1, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBriefList;->bitField0_:I

    :cond_17
    return-object p0

    .line 10263
    :pswitch_4
    new-instance p1, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBriefList$Builder;

    invoke-direct {p1, v0}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBriefList$Builder;-><init>(Landroid/car/hardware/xpu/XpuFNgpRouteMessage$1;)V

    return-object p1

    .line 10259
    :pswitch_5
    iget-object p1, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBriefList;->fngpRouteBriefList_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    invoke-interface {p1}, Lcom/android/carsdk/protobuf/Internal$ProtobufList;->makeImmutable()V

    return-object v0

    .line 10256
    :pswitch_6
    sget-object p1, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBriefList;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBriefList;

    return-object p1

    .line 10253
    :pswitch_7
    new-instance p1, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBriefList;

    invoke-direct {p1}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBriefList;-><init>()V

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
.end method

.method public getEgoUndergroundParkingLotState()Landroid/car/hardware/xpu/XpuFNgpRouteMessage$EgoUndergroundParkingLotState;
    .locals 1

    .line 9640
    iget v0, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBriefList;->egoUndergroundParkingLotState_:I

    invoke-static {v0}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$EgoUndergroundParkingLotState;->forNumber(I)Landroid/car/hardware/xpu/XpuFNgpRouteMessage$EgoUndergroundParkingLotState;

    move-result-object v0

    if-nez v0, :cond_0

    .line 9641
    sget-object v0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$EgoUndergroundParkingLotState;->UNRECOGNIZED:Landroid/car/hardware/xpu/XpuFNgpRouteMessage$EgoUndergroundParkingLotState;

    :cond_0
    return-object v0
.end method

.method public getEgoUndergroundParkingLotStateValue()I
    .locals 1

    .line 9630
    iget v0, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBriefList;->egoUndergroundParkingLotState_:I

    return v0
.end method

.method public getFngpEmulatorNavigation()Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpEmulatorNavigation;
    .locals 1

    .line 9359
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBriefList;->fngpEmulatorNavigation_:Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpEmulatorNavigation;

    if-nez v0, :cond_0

    invoke-static {}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpEmulatorNavigation;->getDefaultInstance()Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpEmulatorNavigation;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public getFngpRouteBriefList(I)Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief;
    .locals 1

    .line 9244
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBriefList;->fngpRouteBriefList_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1}, Lcom/android/carsdk/protobuf/Internal$ProtobufList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief;

    return-object p1
.end method

.method public getFngpRouteBriefListCount()I
    .locals 1

    .line 9238
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBriefList;->fngpRouteBriefList_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    invoke-interface {v0}, Lcom/android/carsdk/protobuf/Internal$ProtobufList;->size()I

    move-result v0

    return v0
.end method

.method public getFngpRouteBriefListList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBrief;",
            ">;"
        }
    .end annotation

    .line 9225
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBriefList;->fngpRouteBriefList_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    return-object v0
.end method

.method public getFngpRouteBriefListOrBuilder(I)Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBriefOrBuilder;
    .locals 1

    .line 9251
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBriefList;->fngpRouteBriefList_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1}, Lcom/android/carsdk/protobuf/Internal$ProtobufList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBriefOrBuilder;

    return-object p1
.end method

.method public getFngpRouteBriefListOrBuilderList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "+",
            "Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBriefOrBuilder;",
            ">;"
        }
    .end annotation

    .line 9232
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBriefList;->fngpRouteBriefList_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    return-object v0
.end method

.method public getParkingTabInfo()Landroid/car/hardware/xpu/XpuFNgpRouteMessage$ParkingTabInfo;
    .locals 1

    .line 9529
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBriefList;->parkingTabInfo_:Landroid/car/hardware/xpu/XpuFNgpRouteMessage$ParkingTabInfo;

    if-nez v0, :cond_0

    invoke-static {}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$ParkingTabInfo;->getDefaultInstance()Landroid/car/hardware/xpu/XpuFNgpRouteMessage$ParkingTabInfo;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public getRouteSelectTimestamp()J
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 9595
    iget-wide v0, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBriefList;->routeSelectTimestamp_:J

    return-wide v0
.end method

.method public getSequenceId()J
    .locals 2

    .line 9484
    iget-wide v0, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBriefList;->sequenceId_:J

    return-wide v0
.end method

.method public getSerializedSize()I
    .locals 6

    .line 9705
    iget v0, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBriefList;->memoizedSerializedSize:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    return v0

    :cond_0
    const/4 v0, 0x0

    move v1, v0

    .line 9709
    :goto_0
    iget-object v2, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBriefList;->fngpRouteBriefList_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    invoke-interface {v2}, Lcom/android/carsdk/protobuf/Internal$ProtobufList;->size()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 9710
    iget-object v2, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBriefList;->fngpRouteBriefList_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    .line 9711
    invoke-interface {v2, v0}, Lcom/android/carsdk/protobuf/Internal$ProtobufList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/carsdk/protobuf/MessageLite;

    const/4 v3, 0x1

    invoke-static {v3, v2}, Lcom/android/carsdk/protobuf/CodedOutputStream;->computeMessageSize(ILcom/android/carsdk/protobuf/MessageLite;)I

    move-result v2

    add-int/2addr v1, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 9713
    :cond_1
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBriefList;->fngpEmulatorNavigation_:Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpEmulatorNavigation;

    if-eqz v0, :cond_2

    const/4 v0, 0x2

    .line 9715
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBriefList;->getFngpEmulatorNavigation()Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpEmulatorNavigation;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/android/carsdk/protobuf/CodedOutputStream;->computeMessageSize(ILcom/android/carsdk/protobuf/MessageLite;)I

    move-result v0

    add-int/2addr v1, v0

    .line 9717
    :cond_2
    iget v0, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBriefList;->stateRemind_:I

    sget-object v2, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$StateRemindType;->kDisplayNone:Landroid/car/hardware/xpu/XpuFNgpRouteMessage$StateRemindType;

    invoke-virtual {v2}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$StateRemindType;->getNumber()I

    move-result v2

    if-eq v0, v2, :cond_3

    const/4 v0, 0x3

    .line 9718
    iget v2, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBriefList;->stateRemind_:I

    .line 9719
    invoke-static {v0, v2}, Lcom/android/carsdk/protobuf/CodedOutputStream;->computeEnumSize(II)I

    move-result v0

    add-int/2addr v1, v0

    .line 9721
    :cond_3
    iget-wide v2, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBriefList;->sequenceId_:J

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-eqz v0, :cond_4

    const/4 v0, 0x4

    .line 9723
    invoke-static {v0, v2, v3}, Lcom/android/carsdk/protobuf/CodedOutputStream;->computeInt64Size(IJ)I

    move-result v0

    add-int/2addr v1, v0

    .line 9725
    :cond_4
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBriefList;->parkingTabInfo_:Landroid/car/hardware/xpu/XpuFNgpRouteMessage$ParkingTabInfo;

    if-eqz v0, :cond_5

    const/4 v0, 0x5

    .line 9727
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBriefList;->getParkingTabInfo()Landroid/car/hardware/xpu/XpuFNgpRouteMessage$ParkingTabInfo;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/android/carsdk/protobuf/CodedOutputStream;->computeMessageSize(ILcom/android/carsdk/protobuf/MessageLite;)I

    move-result v0

    add-int/2addr v1, v0

    .line 9729
    :cond_5
    iget-wide v2, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBriefList;->routeSelectTimestamp_:J

    cmp-long v0, v2, v4

    if-eqz v0, :cond_6

    const/4 v0, 0x6

    .line 9731
    invoke-static {v0, v2, v3}, Lcom/android/carsdk/protobuf/CodedOutputStream;->computeInt64Size(IJ)I

    move-result v0

    add-int/2addr v1, v0

    .line 9733
    :cond_6
    iget v0, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBriefList;->egoUndergroundParkingLotState_:I

    sget-object v2, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$EgoUndergroundParkingLotState;->UNKNOWN_UNDERGROUND_PARKING_LOT:Landroid/car/hardware/xpu/XpuFNgpRouteMessage$EgoUndergroundParkingLotState;

    invoke-virtual {v2}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$EgoUndergroundParkingLotState;->getNumber()I

    move-result v2

    if-eq v0, v2, :cond_7

    const/4 v0, 0x7

    .line 9734
    iget v2, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBriefList;->egoUndergroundParkingLotState_:I

    .line 9735
    invoke-static {v0, v2}, Lcom/android/carsdk/protobuf/CodedOutputStream;->computeEnumSize(II)I

    move-result v0

    add-int/2addr v1, v0

    .line 9737
    :cond_7
    iput v1, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBriefList;->memoizedSerializedSize:I

    return v1
.end method

.method public getStateRemind()Landroid/car/hardware/xpu/XpuFNgpRouteMessage$StateRemindType;
    .locals 1

    .line 9435
    iget v0, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBriefList;->stateRemind_:I

    invoke-static {v0}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$StateRemindType;->forNumber(I)Landroid/car/hardware/xpu/XpuFNgpRouteMessage$StateRemindType;

    move-result-object v0

    if-nez v0, :cond_0

    .line 9436
    sget-object v0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$StateRemindType;->UNRECOGNIZED:Landroid/car/hardware/xpu/XpuFNgpRouteMessage$StateRemindType;

    :cond_0
    return-object v0
.end method

.method public getStateRemindValue()I
    .locals 1

    .line 9425
    iget v0, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBriefList;->stateRemind_:I

    return v0
.end method

.method public hasFngpEmulatorNavigation()Z
    .locals 1

    .line 9349
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBriefList;->fngpEmulatorNavigation_:Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpEmulatorNavigation;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasParkingTabInfo()Z
    .locals 1

    .line 9519
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBriefList;->parkingTabInfo_:Landroid/car/hardware/xpu/XpuFNgpRouteMessage$ParkingTabInfo;

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

    const/4 v0, 0x0

    .line 9681
    :goto_0
    iget-object v1, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBriefList;->fngpRouteBriefList_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    invoke-interface {v1}, Lcom/android/carsdk/protobuf/Internal$ProtobufList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 9682
    iget-object v1, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBriefList;->fngpRouteBriefList_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    invoke-interface {v1, v0}, Lcom/android/carsdk/protobuf/Internal$ProtobufList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/carsdk/protobuf/MessageLite;

    const/4 v2, 0x1

    invoke-virtual {p1, v2, v1}, Lcom/android/carsdk/protobuf/CodedOutputStream;->writeMessage(ILcom/android/carsdk/protobuf/MessageLite;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 9684
    :cond_0
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBriefList;->fngpEmulatorNavigation_:Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpEmulatorNavigation;

    if-eqz v0, :cond_1

    const/4 v0, 0x2

    .line 9685
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBriefList;->getFngpEmulatorNavigation()Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpEmulatorNavigation;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/android/carsdk/protobuf/CodedOutputStream;->writeMessage(ILcom/android/carsdk/protobuf/MessageLite;)V

    .line 9687
    :cond_1
    iget v0, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBriefList;->stateRemind_:I

    sget-object v1, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$StateRemindType;->kDisplayNone:Landroid/car/hardware/xpu/XpuFNgpRouteMessage$StateRemindType;

    invoke-virtual {v1}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$StateRemindType;->getNumber()I

    move-result v1

    if-eq v0, v1, :cond_2

    const/4 v0, 0x3

    .line 9688
    iget v1, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBriefList;->stateRemind_:I

    invoke-virtual {p1, v0, v1}, Lcom/android/carsdk/protobuf/CodedOutputStream;->writeEnum(II)V

    .line 9690
    :cond_2
    iget-wide v0, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBriefList;->sequenceId_:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_3

    const/4 v4, 0x4

    .line 9691
    invoke-virtual {p1, v4, v0, v1}, Lcom/android/carsdk/protobuf/CodedOutputStream;->writeInt64(IJ)V

    .line 9693
    :cond_3
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBriefList;->parkingTabInfo_:Landroid/car/hardware/xpu/XpuFNgpRouteMessage$ParkingTabInfo;

    if-eqz v0, :cond_4

    const/4 v0, 0x5

    .line 9694
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBriefList;->getParkingTabInfo()Landroid/car/hardware/xpu/XpuFNgpRouteMessage$ParkingTabInfo;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/android/carsdk/protobuf/CodedOutputStream;->writeMessage(ILcom/android/carsdk/protobuf/MessageLite;)V

    .line 9696
    :cond_4
    iget-wide v0, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBriefList;->routeSelectTimestamp_:J

    cmp-long v2, v0, v2

    if-eqz v2, :cond_5

    const/4 v2, 0x6

    .line 9697
    invoke-virtual {p1, v2, v0, v1}, Lcom/android/carsdk/protobuf/CodedOutputStream;->writeInt64(IJ)V

    .line 9699
    :cond_5
    iget v0, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBriefList;->egoUndergroundParkingLotState_:I

    sget-object v1, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$EgoUndergroundParkingLotState;->UNKNOWN_UNDERGROUND_PARKING_LOT:Landroid/car/hardware/xpu/XpuFNgpRouteMessage$EgoUndergroundParkingLotState;

    invoke-virtual {v1}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$EgoUndergroundParkingLotState;->getNumber()I

    move-result v1

    if-eq v0, v1, :cond_6

    const/4 v0, 0x7

    .line 9700
    iget v1, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteBriefList;->egoUndergroundParkingLotState_:I

    invoke-virtual {p1, v0, v1}, Lcom/android/carsdk/protobuf/CodedOutputStream;->writeEnum(II)V

    :cond_6
    return-void
.end method
