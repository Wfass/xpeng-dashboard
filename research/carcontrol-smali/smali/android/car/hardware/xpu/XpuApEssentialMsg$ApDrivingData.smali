.class public final Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDrivingData;
.super Lcom/android/carsdk/protobuf/GeneratedMessageLite;
.source "XpuApEssentialMsg.java"

# interfaces
.implements Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDrivingDataOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/car/hardware/xpu/XpuApEssentialMsg;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ApDrivingData"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDrivingData$Builder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/carsdk/protobuf/GeneratedMessageLite<",
        "Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDrivingData;",
        "Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDrivingData$Builder;",
        ">;",
        "Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDrivingDataOrBuilder;"
    }
.end annotation


# static fields
.field public static final CURFLOOR_FIELD_NUMBER:I = 0x5

.field private static final DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDrivingData;

.field public static final DYNOBJ_FIELD_NUMBER:I = 0x7

.field public static final ESSENTIALMSG_FIELD_NUMBER:I = 0x8

.field public static final LANELINES_FIELD_NUMBER:I = 0x4

.field public static final LOCATION_FIELD_NUMBER:I = 0x1

.field public static final OBJ_FIELD_NUMBER:I = 0x3

.field private static volatile PARSER:Lcom/android/carsdk/protobuf/Parser; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/carsdk/protobuf/Parser<",
            "Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDrivingData;",
            ">;"
        }
    .end annotation
.end field

.field public static final SLOTAVM_FIELD_NUMBER:I = 0x9

.field public static final SLOTIDMAPPING_FIELD_NUMBER:I = 0xb

.field public static final SLOT_FIELD_NUMBER:I = 0x2

.field public static final SPDBUMP_FIELD_NUMBER:I = 0xa

.field public static final TRAJECTORY_FIELD_NUMBER:I = 0x6


# instance fields
.field private bitField0_:I

.field private curFloor_:Lcom/android/carsdk/protobuf/Internal$IntList;

.field private dynObj_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/carsdk/protobuf/Internal$ProtobufList<",
            "Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDynaObject;",
            ">;"
        }
    .end annotation
.end field

.field private essentialMsg_:Landroid/car/hardware/xpu/XpuApEssentialMsg$ApEssentialMsg;

.field private lanelines_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/carsdk/protobuf/Internal$ProtobufList<",
            "Landroid/car/hardware/xpu/XpuApEssentialMsg$ApLaneLineInfo;",
            ">;"
        }
    .end annotation
.end field

.field private location_:Landroid/car/hardware/xpu/XpuApEssentialMsg$Location;

.field private obj_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/carsdk/protobuf/Internal$ProtobufList<",
            "Landroid/car/hardware/xpu/XpuApEssentialMsg$StripObstacle;",
            ">;"
        }
    .end annotation
.end field

.field private slotAvm_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/carsdk/protobuf/Internal$ProtobufList<",
            "Landroid/car/hardware/xpu/XpuApEssentialMsg$Slot;",
            ">;"
        }
    .end annotation
.end field

.field private slotIdMapping_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/carsdk/protobuf/Internal$ProtobufList<",
            "Landroid/car/hardware/xpu/XpuApEssentialMsg$SlotIdMapping;",
            ">;"
        }
    .end annotation
.end field

.field private slot_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/carsdk/protobuf/Internal$ProtobufList<",
            "Landroid/car/hardware/xpu/XpuApEssentialMsg$Slot;",
            ">;"
        }
    .end annotation
.end field

.field private spdBump_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/carsdk/protobuf/Internal$ProtobufList<",
            "Landroid/car/hardware/xpu/XpuApEssentialMsg$TrainingSpdBump;",
            ">;"
        }
    .end annotation
.end field

.field private trajectory_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/carsdk/protobuf/Internal$ProtobufList<",
            "Landroid/car/hardware/xpu/XpuApEssentialMsg$ApTrajectoryDataType;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 13978
    new-instance v0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDrivingData;

    invoke-direct {v0}, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDrivingData;-><init>()V

    sput-object v0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDrivingData;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDrivingData;

    .line 13979
    invoke-virtual {v0}, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDrivingData;->makeImmutable()V

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 11369
    invoke-direct {p0}, Lcom/android/carsdk/protobuf/GeneratedMessageLite;-><init>()V

    .line 11370
    invoke-static {}, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDrivingData;->emptyProtobufList()Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    move-result-object v0

    iput-object v0, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDrivingData;->slot_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    .line 11371
    invoke-static {}, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDrivingData;->emptyProtobufList()Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    move-result-object v0

    iput-object v0, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDrivingData;->obj_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    .line 11372
    invoke-static {}, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDrivingData;->emptyProtobufList()Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    move-result-object v0

    iput-object v0, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDrivingData;->lanelines_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    .line 11373
    invoke-static {}, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDrivingData;->emptyIntList()Lcom/android/carsdk/protobuf/Internal$IntList;

    move-result-object v0

    iput-object v0, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDrivingData;->curFloor_:Lcom/android/carsdk/protobuf/Internal$IntList;

    .line 11374
    invoke-static {}, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDrivingData;->emptyProtobufList()Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    move-result-object v0

    iput-object v0, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDrivingData;->trajectory_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    .line 11375
    invoke-static {}, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDrivingData;->emptyProtobufList()Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    move-result-object v0

    iput-object v0, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDrivingData;->dynObj_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    .line 11376
    invoke-static {}, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDrivingData;->emptyProtobufList()Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    move-result-object v0

    iput-object v0, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDrivingData;->slotAvm_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    .line 11377
    invoke-static {}, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDrivingData;->emptyProtobufList()Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    move-result-object v0

    iput-object v0, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDrivingData;->spdBump_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    .line 11378
    invoke-static {}, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDrivingData;->emptyProtobufList()Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    move-result-object v0

    iput-object v0, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDrivingData;->slotIdMapping_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    return-void
.end method

.method static synthetic access$26000()Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDrivingData;
    .locals 1

    .line 11364
    sget-object v0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDrivingData;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDrivingData;

    return-object v0
.end method

.method static synthetic access$26100(Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDrivingData;Landroid/car/hardware/xpu/XpuApEssentialMsg$Location;)V
    .locals 0

    .line 11364
    invoke-direct {p0, p1}, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDrivingData;->setLocation(Landroid/car/hardware/xpu/XpuApEssentialMsg$Location;)V

    return-void
.end method

.method static synthetic access$26200(Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDrivingData;Landroid/car/hardware/xpu/XpuApEssentialMsg$Location$Builder;)V
    .locals 0

    .line 11364
    invoke-direct {p0, p1}, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDrivingData;->setLocation(Landroid/car/hardware/xpu/XpuApEssentialMsg$Location$Builder;)V

    return-void
.end method

.method static synthetic access$26300(Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDrivingData;Landroid/car/hardware/xpu/XpuApEssentialMsg$Location;)V
    .locals 0

    .line 11364
    invoke-direct {p0, p1}, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDrivingData;->mergeLocation(Landroid/car/hardware/xpu/XpuApEssentialMsg$Location;)V

    return-void
.end method

.method static synthetic access$26400(Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDrivingData;)V
    .locals 0

    .line 11364
    invoke-direct {p0}, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDrivingData;->clearLocation()V

    return-void
.end method

.method static synthetic access$26500(Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDrivingData;ILandroid/car/hardware/xpu/XpuApEssentialMsg$Slot;)V
    .locals 0

    .line 11364
    invoke-direct {p0, p1, p2}, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDrivingData;->setSlot(ILandroid/car/hardware/xpu/XpuApEssentialMsg$Slot;)V

    return-void
.end method

.method static synthetic access$26600(Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDrivingData;ILandroid/car/hardware/xpu/XpuApEssentialMsg$Slot$Builder;)V
    .locals 0

    .line 11364
    invoke-direct {p0, p1, p2}, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDrivingData;->setSlot(ILandroid/car/hardware/xpu/XpuApEssentialMsg$Slot$Builder;)V

    return-void
.end method

.method static synthetic access$26700(Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDrivingData;Landroid/car/hardware/xpu/XpuApEssentialMsg$Slot;)V
    .locals 0

    .line 11364
    invoke-direct {p0, p1}, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDrivingData;->addSlot(Landroid/car/hardware/xpu/XpuApEssentialMsg$Slot;)V

    return-void
.end method

.method static synthetic access$26800(Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDrivingData;ILandroid/car/hardware/xpu/XpuApEssentialMsg$Slot;)V
    .locals 0

    .line 11364
    invoke-direct {p0, p1, p2}, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDrivingData;->addSlot(ILandroid/car/hardware/xpu/XpuApEssentialMsg$Slot;)V

    return-void
.end method

.method static synthetic access$26900(Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDrivingData;Landroid/car/hardware/xpu/XpuApEssentialMsg$Slot$Builder;)V
    .locals 0

    .line 11364
    invoke-direct {p0, p1}, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDrivingData;->addSlot(Landroid/car/hardware/xpu/XpuApEssentialMsg$Slot$Builder;)V

    return-void
.end method

.method static synthetic access$27000(Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDrivingData;ILandroid/car/hardware/xpu/XpuApEssentialMsg$Slot$Builder;)V
    .locals 0

    .line 11364
    invoke-direct {p0, p1, p2}, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDrivingData;->addSlot(ILandroid/car/hardware/xpu/XpuApEssentialMsg$Slot$Builder;)V

    return-void
.end method

.method static synthetic access$27100(Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDrivingData;Ljava/lang/Iterable;)V
    .locals 0

    .line 11364
    invoke-direct {p0, p1}, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDrivingData;->addAllSlot(Ljava/lang/Iterable;)V

    return-void
.end method

.method static synthetic access$27200(Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDrivingData;)V
    .locals 0

    .line 11364
    invoke-direct {p0}, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDrivingData;->clearSlot()V

    return-void
.end method

.method static synthetic access$27300(Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDrivingData;I)V
    .locals 0

    .line 11364
    invoke-direct {p0, p1}, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDrivingData;->removeSlot(I)V

    return-void
.end method

.method static synthetic access$27400(Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDrivingData;ILandroid/car/hardware/xpu/XpuApEssentialMsg$StripObstacle;)V
    .locals 0

    .line 11364
    invoke-direct {p0, p1, p2}, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDrivingData;->setObj(ILandroid/car/hardware/xpu/XpuApEssentialMsg$StripObstacle;)V

    return-void
.end method

.method static synthetic access$27500(Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDrivingData;ILandroid/car/hardware/xpu/XpuApEssentialMsg$StripObstacle$Builder;)V
    .locals 0

    .line 11364
    invoke-direct {p0, p1, p2}, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDrivingData;->setObj(ILandroid/car/hardware/xpu/XpuApEssentialMsg$StripObstacle$Builder;)V

    return-void
.end method

.method static synthetic access$27600(Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDrivingData;Landroid/car/hardware/xpu/XpuApEssentialMsg$StripObstacle;)V
    .locals 0

    .line 11364
    invoke-direct {p0, p1}, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDrivingData;->addObj(Landroid/car/hardware/xpu/XpuApEssentialMsg$StripObstacle;)V

    return-void
.end method

.method static synthetic access$27700(Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDrivingData;ILandroid/car/hardware/xpu/XpuApEssentialMsg$StripObstacle;)V
    .locals 0

    .line 11364
    invoke-direct {p0, p1, p2}, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDrivingData;->addObj(ILandroid/car/hardware/xpu/XpuApEssentialMsg$StripObstacle;)V

    return-void
.end method

.method static synthetic access$27800(Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDrivingData;Landroid/car/hardware/xpu/XpuApEssentialMsg$StripObstacle$Builder;)V
    .locals 0

    .line 11364
    invoke-direct {p0, p1}, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDrivingData;->addObj(Landroid/car/hardware/xpu/XpuApEssentialMsg$StripObstacle$Builder;)V

    return-void
.end method

.method static synthetic access$27900(Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDrivingData;ILandroid/car/hardware/xpu/XpuApEssentialMsg$StripObstacle$Builder;)V
    .locals 0

    .line 11364
    invoke-direct {p0, p1, p2}, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDrivingData;->addObj(ILandroid/car/hardware/xpu/XpuApEssentialMsg$StripObstacle$Builder;)V

    return-void
.end method

.method static synthetic access$28000(Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDrivingData;Ljava/lang/Iterable;)V
    .locals 0

    .line 11364
    invoke-direct {p0, p1}, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDrivingData;->addAllObj(Ljava/lang/Iterable;)V

    return-void
.end method

.method static synthetic access$28100(Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDrivingData;)V
    .locals 0

    .line 11364
    invoke-direct {p0}, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDrivingData;->clearObj()V

    return-void
.end method

.method static synthetic access$28200(Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDrivingData;I)V
    .locals 0

    .line 11364
    invoke-direct {p0, p1}, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDrivingData;->removeObj(I)V

    return-void
.end method

.method static synthetic access$28300(Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDrivingData;ILandroid/car/hardware/xpu/XpuApEssentialMsg$ApLaneLineInfo;)V
    .locals 0

    .line 11364
    invoke-direct {p0, p1, p2}, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDrivingData;->setLanelines(ILandroid/car/hardware/xpu/XpuApEssentialMsg$ApLaneLineInfo;)V

    return-void
.end method

.method static synthetic access$28400(Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDrivingData;ILandroid/car/hardware/xpu/XpuApEssentialMsg$ApLaneLineInfo$Builder;)V
    .locals 0

    .line 11364
    invoke-direct {p0, p1, p2}, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDrivingData;->setLanelines(ILandroid/car/hardware/xpu/XpuApEssentialMsg$ApLaneLineInfo$Builder;)V

    return-void
.end method

.method static synthetic access$28500(Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDrivingData;Landroid/car/hardware/xpu/XpuApEssentialMsg$ApLaneLineInfo;)V
    .locals 0

    .line 11364
    invoke-direct {p0, p1}, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDrivingData;->addLanelines(Landroid/car/hardware/xpu/XpuApEssentialMsg$ApLaneLineInfo;)V

    return-void
.end method

.method static synthetic access$28600(Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDrivingData;ILandroid/car/hardware/xpu/XpuApEssentialMsg$ApLaneLineInfo;)V
    .locals 0

    .line 11364
    invoke-direct {p0, p1, p2}, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDrivingData;->addLanelines(ILandroid/car/hardware/xpu/XpuApEssentialMsg$ApLaneLineInfo;)V

    return-void
.end method

.method static synthetic access$28700(Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDrivingData;Landroid/car/hardware/xpu/XpuApEssentialMsg$ApLaneLineInfo$Builder;)V
    .locals 0

    .line 11364
    invoke-direct {p0, p1}, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDrivingData;->addLanelines(Landroid/car/hardware/xpu/XpuApEssentialMsg$ApLaneLineInfo$Builder;)V

    return-void
.end method

.method static synthetic access$28800(Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDrivingData;ILandroid/car/hardware/xpu/XpuApEssentialMsg$ApLaneLineInfo$Builder;)V
    .locals 0

    .line 11364
    invoke-direct {p0, p1, p2}, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDrivingData;->addLanelines(ILandroid/car/hardware/xpu/XpuApEssentialMsg$ApLaneLineInfo$Builder;)V

    return-void
.end method

.method static synthetic access$28900(Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDrivingData;Ljava/lang/Iterable;)V
    .locals 0

    .line 11364
    invoke-direct {p0, p1}, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDrivingData;->addAllLanelines(Ljava/lang/Iterable;)V

    return-void
.end method

.method static synthetic access$29000(Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDrivingData;)V
    .locals 0

    .line 11364
    invoke-direct {p0}, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDrivingData;->clearLanelines()V

    return-void
.end method

.method static synthetic access$29100(Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDrivingData;I)V
    .locals 0

    .line 11364
    invoke-direct {p0, p1}, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDrivingData;->removeLanelines(I)V

    return-void
.end method

.method static synthetic access$29200(Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDrivingData;II)V
    .locals 0

    .line 11364
    invoke-direct {p0, p1, p2}, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDrivingData;->setCurFloor(II)V

    return-void
.end method

.method static synthetic access$29300(Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDrivingData;I)V
    .locals 0

    .line 11364
    invoke-direct {p0, p1}, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDrivingData;->addCurFloor(I)V

    return-void
.end method

.method static synthetic access$29400(Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDrivingData;Ljava/lang/Iterable;)V
    .locals 0

    .line 11364
    invoke-direct {p0, p1}, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDrivingData;->addAllCurFloor(Ljava/lang/Iterable;)V

    return-void
.end method

.method static synthetic access$29500(Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDrivingData;)V
    .locals 0

    .line 11364
    invoke-direct {p0}, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDrivingData;->clearCurFloor()V

    return-void
.end method

.method static synthetic access$29600(Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDrivingData;ILandroid/car/hardware/xpu/XpuApEssentialMsg$ApTrajectoryDataType;)V
    .locals 0

    .line 11364
    invoke-direct {p0, p1, p2}, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDrivingData;->setTrajectory(ILandroid/car/hardware/xpu/XpuApEssentialMsg$ApTrajectoryDataType;)V

    return-void
.end method

.method static synthetic access$29700(Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDrivingData;ILandroid/car/hardware/xpu/XpuApEssentialMsg$ApTrajectoryDataType$Builder;)V
    .locals 0

    .line 11364
    invoke-direct {p0, p1, p2}, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDrivingData;->setTrajectory(ILandroid/car/hardware/xpu/XpuApEssentialMsg$ApTrajectoryDataType$Builder;)V

    return-void
.end method

.method static synthetic access$29800(Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDrivingData;Landroid/car/hardware/xpu/XpuApEssentialMsg$ApTrajectoryDataType;)V
    .locals 0

    .line 11364
    invoke-direct {p0, p1}, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDrivingData;->addTrajectory(Landroid/car/hardware/xpu/XpuApEssentialMsg$ApTrajectoryDataType;)V

    return-void
.end method

.method static synthetic access$29900(Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDrivingData;ILandroid/car/hardware/xpu/XpuApEssentialMsg$ApTrajectoryDataType;)V
    .locals 0

    .line 11364
    invoke-direct {p0, p1, p2}, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDrivingData;->addTrajectory(ILandroid/car/hardware/xpu/XpuApEssentialMsg$ApTrajectoryDataType;)V

    return-void
.end method

.method static synthetic access$30000(Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDrivingData;Landroid/car/hardware/xpu/XpuApEssentialMsg$ApTrajectoryDataType$Builder;)V
    .locals 0

    .line 11364
    invoke-direct {p0, p1}, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDrivingData;->addTrajectory(Landroid/car/hardware/xpu/XpuApEssentialMsg$ApTrajectoryDataType$Builder;)V

    return-void
.end method

.method static synthetic access$30100(Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDrivingData;ILandroid/car/hardware/xpu/XpuApEssentialMsg$ApTrajectoryDataType$Builder;)V
    .locals 0

    .line 11364
    invoke-direct {p0, p1, p2}, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDrivingData;->addTrajectory(ILandroid/car/hardware/xpu/XpuApEssentialMsg$ApTrajectoryDataType$Builder;)V

    return-void
.end method

.method static synthetic access$30200(Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDrivingData;Ljava/lang/Iterable;)V
    .locals 0

    .line 11364
    invoke-direct {p0, p1}, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDrivingData;->addAllTrajectory(Ljava/lang/Iterable;)V

    return-void
.end method

.method static synthetic access$30300(Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDrivingData;)V
    .locals 0

    .line 11364
    invoke-direct {p0}, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDrivingData;->clearTrajectory()V

    return-void
.end method

.method static synthetic access$30400(Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDrivingData;I)V
    .locals 0

    .line 11364
    invoke-direct {p0, p1}, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDrivingData;->removeTrajectory(I)V

    return-void
.end method

.method static synthetic access$30500(Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDrivingData;ILandroid/car/hardware/xpu/XpuApEssentialMsg$ApDynaObject;)V
    .locals 0

    .line 11364
    invoke-direct {p0, p1, p2}, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDrivingData;->setDynObj(ILandroid/car/hardware/xpu/XpuApEssentialMsg$ApDynaObject;)V

    return-void
.end method

.method static synthetic access$30600(Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDrivingData;ILandroid/car/hardware/xpu/XpuApEssentialMsg$ApDynaObject$Builder;)V
    .locals 0

    .line 11364
    invoke-direct {p0, p1, p2}, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDrivingData;->setDynObj(ILandroid/car/hardware/xpu/XpuApEssentialMsg$ApDynaObject$Builder;)V

    return-void
.end method

.method static synthetic access$30700(Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDrivingData;Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDynaObject;)V
    .locals 0

    .line 11364
    invoke-direct {p0, p1}, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDrivingData;->addDynObj(Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDynaObject;)V

    return-void
.end method

.method static synthetic access$30800(Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDrivingData;ILandroid/car/hardware/xpu/XpuApEssentialMsg$ApDynaObject;)V
    .locals 0

    .line 11364
    invoke-direct {p0, p1, p2}, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDrivingData;->addDynObj(ILandroid/car/hardware/xpu/XpuApEssentialMsg$ApDynaObject;)V

    return-void
.end method

.method static synthetic access$30900(Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDrivingData;Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDynaObject$Builder;)V
    .locals 0

    .line 11364
    invoke-direct {p0, p1}, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDrivingData;->addDynObj(Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDynaObject$Builder;)V

    return-void
.end method

.method static synthetic access$31000(Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDrivingData;ILandroid/car/hardware/xpu/XpuApEssentialMsg$ApDynaObject$Builder;)V
    .locals 0

    .line 11364
    invoke-direct {p0, p1, p2}, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDrivingData;->addDynObj(ILandroid/car/hardware/xpu/XpuApEssentialMsg$ApDynaObject$Builder;)V

    return-void
.end method

.method static synthetic access$31100(Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDrivingData;Ljava/lang/Iterable;)V
    .locals 0

    .line 11364
    invoke-direct {p0, p1}, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDrivingData;->addAllDynObj(Ljava/lang/Iterable;)V

    return-void
.end method

.method static synthetic access$31200(Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDrivingData;)V
    .locals 0

    .line 11364
    invoke-direct {p0}, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDrivingData;->clearDynObj()V

    return-void
.end method

.method static synthetic access$31300(Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDrivingData;I)V
    .locals 0

    .line 11364
    invoke-direct {p0, p1}, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDrivingData;->removeDynObj(I)V

    return-void
.end method

.method static synthetic access$31400(Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDrivingData;Landroid/car/hardware/xpu/XpuApEssentialMsg$ApEssentialMsg;)V
    .locals 0

    .line 11364
    invoke-direct {p0, p1}, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDrivingData;->setEssentialMsg(Landroid/car/hardware/xpu/XpuApEssentialMsg$ApEssentialMsg;)V

    return-void
.end method

.method static synthetic access$31500(Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDrivingData;Landroid/car/hardware/xpu/XpuApEssentialMsg$ApEssentialMsg$Builder;)V
    .locals 0

    .line 11364
    invoke-direct {p0, p1}, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDrivingData;->setEssentialMsg(Landroid/car/hardware/xpu/XpuApEssentialMsg$ApEssentialMsg$Builder;)V

    return-void
.end method

.method static synthetic access$31600(Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDrivingData;Landroid/car/hardware/xpu/XpuApEssentialMsg$ApEssentialMsg;)V
    .locals 0

    .line 11364
    invoke-direct {p0, p1}, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDrivingData;->mergeEssentialMsg(Landroid/car/hardware/xpu/XpuApEssentialMsg$ApEssentialMsg;)V

    return-void
.end method

.method static synthetic access$31700(Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDrivingData;)V
    .locals 0

    .line 11364
    invoke-direct {p0}, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDrivingData;->clearEssentialMsg()V

    return-void
.end method

.method static synthetic access$31800(Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDrivingData;ILandroid/car/hardware/xpu/XpuApEssentialMsg$Slot;)V
    .locals 0

    .line 11364
    invoke-direct {p0, p1, p2}, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDrivingData;->setSlotAvm(ILandroid/car/hardware/xpu/XpuApEssentialMsg$Slot;)V

    return-void
.end method

.method static synthetic access$31900(Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDrivingData;ILandroid/car/hardware/xpu/XpuApEssentialMsg$Slot$Builder;)V
    .locals 0

    .line 11364
    invoke-direct {p0, p1, p2}, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDrivingData;->setSlotAvm(ILandroid/car/hardware/xpu/XpuApEssentialMsg$Slot$Builder;)V

    return-void
.end method

.method static synthetic access$32000(Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDrivingData;Landroid/car/hardware/xpu/XpuApEssentialMsg$Slot;)V
    .locals 0

    .line 11364
    invoke-direct {p0, p1}, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDrivingData;->addSlotAvm(Landroid/car/hardware/xpu/XpuApEssentialMsg$Slot;)V

    return-void
.end method

.method static synthetic access$32100(Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDrivingData;ILandroid/car/hardware/xpu/XpuApEssentialMsg$Slot;)V
    .locals 0

    .line 11364
    invoke-direct {p0, p1, p2}, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDrivingData;->addSlotAvm(ILandroid/car/hardware/xpu/XpuApEssentialMsg$Slot;)V

    return-void
.end method

.method static synthetic access$32200(Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDrivingData;Landroid/car/hardware/xpu/XpuApEssentialMsg$Slot$Builder;)V
    .locals 0

    .line 11364
    invoke-direct {p0, p1}, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDrivingData;->addSlotAvm(Landroid/car/hardware/xpu/XpuApEssentialMsg$Slot$Builder;)V

    return-void
.end method

.method static synthetic access$32300(Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDrivingData;ILandroid/car/hardware/xpu/XpuApEssentialMsg$Slot$Builder;)V
    .locals 0

    .line 11364
    invoke-direct {p0, p1, p2}, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDrivingData;->addSlotAvm(ILandroid/car/hardware/xpu/XpuApEssentialMsg$Slot$Builder;)V

    return-void
.end method

.method static synthetic access$32400(Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDrivingData;Ljava/lang/Iterable;)V
    .locals 0

    .line 11364
    invoke-direct {p0, p1}, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDrivingData;->addAllSlotAvm(Ljava/lang/Iterable;)V

    return-void
.end method

.method static synthetic access$32500(Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDrivingData;)V
    .locals 0

    .line 11364
    invoke-direct {p0}, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDrivingData;->clearSlotAvm()V

    return-void
.end method

.method static synthetic access$32600(Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDrivingData;I)V
    .locals 0

    .line 11364
    invoke-direct {p0, p1}, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDrivingData;->removeSlotAvm(I)V

    return-void
.end method

.method static synthetic access$32700(Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDrivingData;ILandroid/car/hardware/xpu/XpuApEssentialMsg$TrainingSpdBump;)V
    .locals 0

    .line 11364
    invoke-direct {p0, p1, p2}, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDrivingData;->setSpdBump(ILandroid/car/hardware/xpu/XpuApEssentialMsg$TrainingSpdBump;)V

    return-void
.end method

.method static synthetic access$32800(Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDrivingData;ILandroid/car/hardware/xpu/XpuApEssentialMsg$TrainingSpdBump$Builder;)V
    .locals 0

    .line 11364
    invoke-direct {p0, p1, p2}, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDrivingData;->setSpdBump(ILandroid/car/hardware/xpu/XpuApEssentialMsg$TrainingSpdBump$Builder;)V

    return-void
.end method

.method static synthetic access$32900(Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDrivingData;Landroid/car/hardware/xpu/XpuApEssentialMsg$TrainingSpdBump;)V
    .locals 0

    .line 11364
    invoke-direct {p0, p1}, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDrivingData;->addSpdBump(Landroid/car/hardware/xpu/XpuApEssentialMsg$TrainingSpdBump;)V

    return-void
.end method

.method static synthetic access$33000(Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDrivingData;ILandroid/car/hardware/xpu/XpuApEssentialMsg$TrainingSpdBump;)V
    .locals 0

    .line 11364
    invoke-direct {p0, p1, p2}, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDrivingData;->addSpdBump(ILandroid/car/hardware/xpu/XpuApEssentialMsg$TrainingSpdBump;)V

    return-void
.end method

.method static synthetic access$33100(Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDrivingData;Landroid/car/hardware/xpu/XpuApEssentialMsg$TrainingSpdBump$Builder;)V
    .locals 0

    .line 11364
    invoke-direct {p0, p1}, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDrivingData;->addSpdBump(Landroid/car/hardware/xpu/XpuApEssentialMsg$TrainingSpdBump$Builder;)V

    return-void
.end method

.method static synthetic access$33200(Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDrivingData;ILandroid/car/hardware/xpu/XpuApEssentialMsg$TrainingSpdBump$Builder;)V
    .locals 0

    .line 11364
    invoke-direct {p0, p1, p2}, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDrivingData;->addSpdBump(ILandroid/car/hardware/xpu/XpuApEssentialMsg$TrainingSpdBump$Builder;)V

    return-void
.end method

.method static synthetic access$33300(Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDrivingData;Ljava/lang/Iterable;)V
    .locals 0

    .line 11364
    invoke-direct {p0, p1}, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDrivingData;->addAllSpdBump(Ljava/lang/Iterable;)V

    return-void
.end method

.method static synthetic access$33400(Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDrivingData;)V
    .locals 0

    .line 11364
    invoke-direct {p0}, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDrivingData;->clearSpdBump()V

    return-void
.end method

.method static synthetic access$33500(Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDrivingData;I)V
    .locals 0

    .line 11364
    invoke-direct {p0, p1}, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDrivingData;->removeSpdBump(I)V

    return-void
.end method

.method static synthetic access$33600(Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDrivingData;ILandroid/car/hardware/xpu/XpuApEssentialMsg$SlotIdMapping;)V
    .locals 0

    .line 11364
    invoke-direct {p0, p1, p2}, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDrivingData;->setSlotIdMapping(ILandroid/car/hardware/xpu/XpuApEssentialMsg$SlotIdMapping;)V

    return-void
.end method

.method static synthetic access$33700(Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDrivingData;ILandroid/car/hardware/xpu/XpuApEssentialMsg$SlotIdMapping$Builder;)V
    .locals 0

    .line 11364
    invoke-direct {p0, p1, p2}, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDrivingData;->setSlotIdMapping(ILandroid/car/hardware/xpu/XpuApEssentialMsg$SlotIdMapping$Builder;)V

    return-void
.end method

.method static synthetic access$33800(Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDrivingData;Landroid/car/hardware/xpu/XpuApEssentialMsg$SlotIdMapping;)V
    .locals 0

    .line 11364
    invoke-direct {p0, p1}, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDrivingData;->addSlotIdMapping(Landroid/car/hardware/xpu/XpuApEssentialMsg$SlotIdMapping;)V

    return-void
.end method

.method static synthetic access$33900(Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDrivingData;ILandroid/car/hardware/xpu/XpuApEssentialMsg$SlotIdMapping;)V
    .locals 0

    .line 11364
    invoke-direct {p0, p1, p2}, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDrivingData;->addSlotIdMapping(ILandroid/car/hardware/xpu/XpuApEssentialMsg$SlotIdMapping;)V

    return-void
.end method

.method static synthetic access$34000(Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDrivingData;Landroid/car/hardware/xpu/XpuApEssentialMsg$SlotIdMapping$Builder;)V
    .locals 0

    .line 11364
    invoke-direct {p0, p1}, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDrivingData;->addSlotIdMapping(Landroid/car/hardware/xpu/XpuApEssentialMsg$SlotIdMapping$Builder;)V

    return-void
.end method

.method static synthetic access$34100(Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDrivingData;ILandroid/car/hardware/xpu/XpuApEssentialMsg$SlotIdMapping$Builder;)V
    .locals 0

    .line 11364
    invoke-direct {p0, p1, p2}, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDrivingData;->addSlotIdMapping(ILandroid/car/hardware/xpu/XpuApEssentialMsg$SlotIdMapping$Builder;)V

    return-void
.end method

.method static synthetic access$34200(Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDrivingData;Ljava/lang/Iterable;)V
    .locals 0

    .line 11364
    invoke-direct {p0, p1}, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDrivingData;->addAllSlotIdMapping(Ljava/lang/Iterable;)V

    return-void
.end method

.method static synthetic access$34300(Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDrivingData;)V
    .locals 0

    .line 11364
    invoke-direct {p0}, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDrivingData;->clearSlotIdMapping()V

    return-void
.end method

.method static synthetic access$34400(Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDrivingData;I)V
    .locals 0

    .line 11364
    invoke-direct {p0, p1}, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDrivingData;->removeSlotIdMapping(I)V

    return-void
.end method

.method private addAllCurFloor(Ljava/lang/Iterable;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 11920
    invoke-direct {p0}, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDrivingData;->ensureCurFloorIsMutable()V

    .line 11921
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDrivingData;->curFloor_:Lcom/android/carsdk/protobuf/Internal$IntList;

    invoke-static {p1, v0}, Lcom/android/carsdk/protobuf/AbstractMessageLite;->addAll(Ljava/lang/Iterable;Ljava/util/Collection;)V

    return-void
.end method

.method private addAllDynObj(Ljava/lang/Iterable;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDynaObject;",
            ">;)V"
        }
    .end annotation

    .line 12157
    invoke-direct {p0}, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDrivingData;->ensureDynObjIsMutable()V

    .line 12158
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDrivingData;->dynObj_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    invoke-static {p1, v0}, Lcom/android/carsdk/protobuf/AbstractMessageLite;->addAll(Ljava/lang/Iterable;Ljava/util/Collection;)V

    return-void
.end method

.method private addAllLanelines(Ljava/lang/Iterable;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Landroid/car/hardware/xpu/XpuApEssentialMsg$ApLaneLineInfo;",
            ">;)V"
        }
    .end annotation

    .line 11831
    invoke-direct {p0}, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDrivingData;->ensureLanelinesIsMutable()V

    .line 11832
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDrivingData;->lanelines_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    invoke-static {p1, v0}, Lcom/android/carsdk/protobuf/AbstractMessageLite;->addAll(Ljava/lang/Iterable;Ljava/util/Collection;)V

    return-void
.end method

.method private addAllObj(Ljava/lang/Iterable;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Landroid/car/hardware/xpu/XpuApEssentialMsg$StripObstacle;",
            ">;)V"
        }
    .end annotation

    .line 11703
    invoke-direct {p0}, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDrivingData;->ensureObjIsMutable()V

    .line 11704
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDrivingData;->obj_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    invoke-static {p1, v0}, Lcom/android/carsdk/protobuf/AbstractMessageLite;->addAll(Ljava/lang/Iterable;Ljava/util/Collection;)V

    return-void
.end method

.method private addAllSlot(Ljava/lang/Iterable;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Landroid/car/hardware/xpu/XpuApEssentialMsg$Slot;",
            ">;)V"
        }
    .end annotation

    .line 11535
    invoke-direct {p0}, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDrivingData;->ensureSlotIsMutable()V

    .line 11536
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDrivingData;->slot_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    invoke-static {p1, v0}, Lcom/android/carsdk/protobuf/AbstractMessageLite;->addAll(Ljava/lang/Iterable;Ljava/util/Collection;)V

    return-void
.end method

.method private addAllSlotAvm(Ljava/lang/Iterable;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Landroid/car/hardware/xpu/XpuApEssentialMsg$Slot;",
            ">;)V"
        }
    .end annotation

    .line 12329
    invoke-direct {p0}, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDrivingData;->ensureSlotAvmIsMutable()V

    .line 12330
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDrivingData;->slotAvm_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    invoke-static {p1, v0}, Lcom/android/carsdk/protobuf/AbstractMessageLite;->addAll(Ljava/lang/Iterable;Ljava/util/Collection;)V

    return-void
.end method

.method private addAllSlotIdMapping(Ljava/lang/Iterable;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Landroid/car/hardware/xpu/XpuApEssentialMsg$SlotIdMapping;",
            ">;)V"
        }
    .end annotation

    .line 12569
    invoke-direct {p0}, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDrivingData;->ensureSlotIdMappingIsMutable()V

    .line 12570
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDrivingData;->slotIdMapping_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    invoke-static {p1, v0}, Lcom/android/carsdk/protobuf/AbstractMessageLite;->addAll(Ljava/lang/Iterable;Ljava/util/Collection;)V

    return-void
.end method

.method private addAllSpdBump(Ljava/lang/Iterable;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Landroid/car/hardware/xpu/XpuApEssentialMsg$TrainingSpdBump;",
            ">;)V"
        }
    .end annotation

    .line 12449
    invoke-direct {p0}, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDrivingData;->ensureSpdBumpIsMutable()V

    .line 12450
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDrivingData;->spdBump_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    invoke-static {p1, v0}, Lcom/android/carsdk/protobuf/AbstractMessageLite;->addAll(Ljava/lang/Iterable;Ljava/util/Collection;)V

    return-void
.end method

.method private addAllTrajectory(Ljava/lang/Iterable;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Landroid/car/hardware/xpu/XpuApEssentialMsg$ApTrajectoryDataType;",
            ">;)V"
        }
    .end annotation

    .line 12037
    invoke-direct {p0}, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDrivingData;->ensureTrajectoryIsMutable()V

    .line 12038
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDrivingData;->trajectory_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    invoke-static {p1, v0}, Lcom/android/carsdk/protobuf/AbstractMessageLite;->addAll(Ljava/lang/Iterable;Ljava/util/Collection;)V

    return-void
.end method

.method private addCurFloor(I)V
    .locals 1

    .line 11908
    invoke-direct {p0}, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDrivingData;->ensureCurFloorIsMutable()V

    .line 11909
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDrivingData;->curFloor_:Lcom/android/carsdk/protobuf/Internal$IntList;

    invoke-interface {v0, p1}, Lcom/android/carsdk/protobuf/Internal$IntList;->addInt(I)V

    return-void
.end method

.method private addDynObj(ILandroid/car/hardware/xpu/XpuApEssentialMsg$ApDynaObject$Builder;)V
    .locals 1

    .line 12149
    invoke-direct {p0}, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDrivingData;->ensureDynObjIsMutable()V

    .line 12150
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDrivingData;->dynObj_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    invoke-virtual {p2}, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDynaObject$Builder;->build()Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object p2

    check-cast p2, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDynaObject;

    invoke-interface {v0, p1, p2}, Lcom/android/carsdk/protobuf/Internal$ProtobufList;->add(ILjava/lang/Object;)V

    return-void
.end method

.method private addDynObj(ILandroid/car/hardware/xpu/XpuApEssentialMsg$ApDynaObject;)V
    .locals 1

    .line 12131
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 12133
    invoke-direct {p0}, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDrivingData;->ensureDynObjIsMutable()V

    .line 12134
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDrivingData;->dynObj_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1, p2}, Lcom/android/carsdk/protobuf/Internal$ProtobufList;->add(ILjava/lang/Object;)V

    return-void
.end method

.method private addDynObj(Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDynaObject$Builder;)V
    .locals 1

    .line 12141
    invoke-direct {p0}, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDrivingData;->ensureDynObjIsMutable()V

    .line 12142
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDrivingData;->dynObj_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    invoke-virtual {p1}, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDynaObject$Builder;->build()Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDynaObject;

    invoke-interface {v0, p1}, Lcom/android/carsdk/protobuf/Internal$ProtobufList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private addDynObj(Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDynaObject;)V
    .locals 1

    .line 12120
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 12122
    invoke-direct {p0}, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDrivingData;->ensureDynObjIsMutable()V

    .line 12123
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDrivingData;->dynObj_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1}, Lcom/android/carsdk/protobuf/Internal$ProtobufList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private addLanelines(ILandroid/car/hardware/xpu/XpuApEssentialMsg$ApLaneLineInfo$Builder;)V
    .locals 1

    .line 11823
    invoke-direct {p0}, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDrivingData;->ensureLanelinesIsMutable()V

    .line 11824
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDrivingData;->lanelines_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    invoke-virtual {p2}, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApLaneLineInfo$Builder;->build()Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object p2

    check-cast p2, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApLaneLineInfo;

    invoke-interface {v0, p1, p2}, Lcom/android/carsdk/protobuf/Internal$ProtobufList;->add(ILjava/lang/Object;)V

    return-void
.end method

.method private addLanelines(ILandroid/car/hardware/xpu/XpuApEssentialMsg$ApLaneLineInfo;)V
    .locals 1

    .line 11805
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 11807
    invoke-direct {p0}, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDrivingData;->ensureLanelinesIsMutable()V

    .line 11808
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDrivingData;->lanelines_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1, p2}, Lcom/android/carsdk/protobuf/Internal$ProtobufList;->add(ILjava/lang/Object;)V

    return-void
.end method

.method private addLanelines(Landroid/car/hardware/xpu/XpuApEssentialMsg$ApLaneLineInfo$Builder;)V
    .locals 1

    .line 11815
    invoke-direct {p0}, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDrivingData;->ensureLanelinesIsMutable()V

    .line 11816
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDrivingData;->lanelines_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    invoke-virtual {p1}, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApLaneLineInfo$Builder;->build()Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApLaneLineInfo;

    invoke-interface {v0, p1}, Lcom/android/carsdk/protobuf/Internal$ProtobufList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private addLanelines(Landroid/car/hardware/xpu/XpuApEssentialMsg$ApLaneLineInfo;)V
    .locals 1

    .line 11794
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 11796
    invoke-direct {p0}, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDrivingData;->ensureLanelinesIsMutable()V

    .line 11797
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDrivingData;->lanelines_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1}, Lcom/android/carsdk/protobuf/Internal$ProtobufList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private addObj(ILandroid/car/hardware/xpu/XpuApEssentialMsg$StripObstacle$Builder;)V
    .locals 1

    .line 11691
    invoke-direct {p0}, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDrivingData;->ensureObjIsMutable()V

    .line 11692
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDrivingData;->obj_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    invoke-virtual {p2}, Landroid/car/hardware/xpu/XpuApEssentialMsg$StripObstacle$Builder;->build()Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object p2

    check-cast p2, Landroid/car/hardware/xpu/XpuApEssentialMsg$StripObstacle;

    invoke-interface {v0, p1, p2}, Lcom/android/carsdk/protobuf/Internal$ProtobufList;->add(ILjava/lang/Object;)V

    return-void
.end method

.method private addObj(ILandroid/car/hardware/xpu/XpuApEssentialMsg$StripObstacle;)V
    .locals 1

    .line 11665
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 11667
    invoke-direct {p0}, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDrivingData;->ensureObjIsMutable()V

    .line 11668
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDrivingData;->obj_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1, p2}, Lcom/android/carsdk/protobuf/Internal$ProtobufList;->add(ILjava/lang/Object;)V

    return-void
.end method

.method private addObj(Landroid/car/hardware/xpu/XpuApEssentialMsg$StripObstacle$Builder;)V
    .locals 1

    .line 11679
    invoke-direct {p0}, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDrivingData;->ensureObjIsMutable()V

    .line 11680
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDrivingData;->obj_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    invoke-virtual {p1}, Landroid/car/hardware/xpu/XpuApEssentialMsg$StripObstacle$Builder;->build()Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Landroid/car/hardware/xpu/XpuApEssentialMsg$StripObstacle;

    invoke-interface {v0, p1}, Lcom/android/carsdk/protobuf/Internal$ProtobufList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private addObj(Landroid/car/hardware/xpu/XpuApEssentialMsg$StripObstacle;)V
    .locals 1

    .line 11650
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 11652
    invoke-direct {p0}, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDrivingData;->ensureObjIsMutable()V

    .line 11653
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDrivingData;->obj_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1}, Lcom/android/carsdk/protobuf/Internal$ProtobufList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private addSlot(ILandroid/car/hardware/xpu/XpuApEssentialMsg$Slot$Builder;)V
    .locals 1

    .line 11527
    invoke-direct {p0}, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDrivingData;->ensureSlotIsMutable()V

    .line 11528
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDrivingData;->slot_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    invoke-virtual {p2}, Landroid/car/hardware/xpu/XpuApEssentialMsg$Slot$Builder;->build()Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object p2

    check-cast p2, Landroid/car/hardware/xpu/XpuApEssentialMsg$Slot;

    invoke-interface {v0, p1, p2}, Lcom/android/carsdk/protobuf/Internal$ProtobufList;->add(ILjava/lang/Object;)V

    return-void
.end method

.method private addSlot(ILandroid/car/hardware/xpu/XpuApEssentialMsg$Slot;)V
    .locals 1

    .line 11509
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 11511
    invoke-direct {p0}, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDrivingData;->ensureSlotIsMutable()V

    .line 11512
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDrivingData;->slot_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1, p2}, Lcom/android/carsdk/protobuf/Internal$ProtobufList;->add(ILjava/lang/Object;)V

    return-void
.end method

.method private addSlot(Landroid/car/hardware/xpu/XpuApEssentialMsg$Slot$Builder;)V
    .locals 1

    .line 11519
    invoke-direct {p0}, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDrivingData;->ensureSlotIsMutable()V

    .line 11520
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDrivingData;->slot_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    invoke-virtual {p1}, Landroid/car/hardware/xpu/XpuApEssentialMsg$Slot$Builder;->build()Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Landroid/car/hardware/xpu/XpuApEssentialMsg$Slot;

    invoke-interface {v0, p1}, Lcom/android/carsdk/protobuf/Internal$ProtobufList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private addSlot(Landroid/car/hardware/xpu/XpuApEssentialMsg$Slot;)V
    .locals 1

    .line 11498
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 11500
    invoke-direct {p0}, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDrivingData;->ensureSlotIsMutable()V

    .line 11501
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDrivingData;->slot_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1}, Lcom/android/carsdk/protobuf/Internal$ProtobufList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private addSlotAvm(ILandroid/car/hardware/xpu/XpuApEssentialMsg$Slot$Builder;)V
    .locals 1

    .line 12321
    invoke-direct {p0}, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDrivingData;->ensureSlotAvmIsMutable()V

    .line 12322
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDrivingData;->slotAvm_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    invoke-virtual {p2}, Landroid/car/hardware/xpu/XpuApEssentialMsg$Slot$Builder;->build()Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object p2

    check-cast p2, Landroid/car/hardware/xpu/XpuApEssentialMsg$Slot;

    invoke-interface {v0, p1, p2}, Lcom/android/carsdk/protobuf/Internal$ProtobufList;->add(ILjava/lang/Object;)V

    return-void
.end method

.method private addSlotAvm(ILandroid/car/hardware/xpu/XpuApEssentialMsg$Slot;)V
    .locals 1

    .line 12303
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 12305
    invoke-direct {p0}, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDrivingData;->ensureSlotAvmIsMutable()V

    .line 12306
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDrivingData;->slotAvm_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1, p2}, Lcom/android/carsdk/protobuf/Internal$ProtobufList;->add(ILjava/lang/Object;)V

    return-void
.end method

.method private addSlotAvm(Landroid/car/hardware/xpu/XpuApEssentialMsg$Slot$Builder;)V
    .locals 1

    .line 12313
    invoke-direct {p0}, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDrivingData;->ensureSlotAvmIsMutable()V

    .line 12314
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDrivingData;->slotAvm_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    invoke-virtual {p1}, Landroid/car/hardware/xpu/XpuApEssentialMsg$Slot$Builder;->build()Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Landroid/car/hardware/xpu/XpuApEssentialMsg$Slot;

    invoke-interface {v0, p1}, Lcom/android/carsdk/protobuf/Internal$ProtobufList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private addSlotAvm(Landroid/car/hardware/xpu/XpuApEssentialMsg$Slot;)V
    .locals 1

    .line 12292
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 12294
    invoke-direct {p0}, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDrivingData;->ensureSlotAvmIsMutable()V

    .line 12295
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDrivingData;->slotAvm_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1}, Lcom/android/carsdk/protobuf/Internal$ProtobufList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private addSlotIdMapping(ILandroid/car/hardware/xpu/XpuApEssentialMsg$SlotIdMapping$Builder;)V
    .locals 1

    .line 12561
    invoke-direct {p0}, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDrivingData;->ensureSlotIdMappingIsMutable()V

    .line 12562
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDrivingData;->slotIdMapping_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    invoke-virtual {p2}, Landroid/car/hardware/xpu/XpuApEssentialMsg$SlotIdMapping$Builder;->build()Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object p2

    check-cast p2, Landroid/car/hardware/xpu/XpuApEssentialMsg$SlotIdMapping;

    invoke-interface {v0, p1, p2}, Lcom/android/carsdk/protobuf/Internal$ProtobufList;->add(ILjava/lang/Object;)V

    return-void
.end method

.method private addSlotIdMapping(ILandroid/car/hardware/xpu/XpuApEssentialMsg$SlotIdMapping;)V
    .locals 1

    .line 12543
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 12545
    invoke-direct {p0}, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDrivingData;->ensureSlotIdMappingIsMutable()V

    .line 12546
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDrivingData;->slotIdMapping_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1, p2}, Lcom/android/carsdk/protobuf/Internal$ProtobufList;->add(ILjava/lang/Object;)V

    return-void
.end method

.method private addSlotIdMapping(Landroid/car/hardware/xpu/XpuApEssentialMsg$SlotIdMapping$Builder;)V
    .locals 1

    .line 12553
    invoke-direct {p0}, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDrivingData;->ensureSlotIdMappingIsMutable()V

    .line 12554
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDrivingData;->slotIdMapping_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    invoke-virtual {p1}, Landroid/car/hardware/xpu/XpuApEssentialMsg$SlotIdMapping$Builder;->build()Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Landroid/car/hardware/xpu/XpuApEssentialMsg$SlotIdMapping;

    invoke-interface {v0, p1}, Lcom/android/carsdk/protobuf/Internal$ProtobufList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private addSlotIdMapping(Landroid/car/hardware/xpu/XpuApEssentialMsg$SlotIdMapping;)V
    .locals 1

    .line 12532
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 12534
    invoke-direct {p0}, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDrivingData;->ensureSlotIdMappingIsMutable()V

    .line 12535
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDrivingData;->slotIdMapping_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1}, Lcom/android/carsdk/protobuf/Internal$ProtobufList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private addSpdBump(ILandroid/car/hardware/xpu/XpuApEssentialMsg$TrainingSpdBump$Builder;)V
    .locals 1

    .line 12441
    invoke-direct {p0}, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDrivingData;->ensureSpdBumpIsMutable()V

    .line 12442
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDrivingData;->spdBump_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    invoke-virtual {p2}, Landroid/car/hardware/xpu/XpuApEssentialMsg$TrainingSpdBump$Builder;->build()Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object p2

    check-cast p2, Landroid/car/hardware/xpu/XpuApEssentialMsg$TrainingSpdBump;

    invoke-interface {v0, p1, p2}, Lcom/android/carsdk/protobuf/Internal$ProtobufList;->add(ILjava/lang/Object;)V

    return-void
.end method

.method private addSpdBump(ILandroid/car/hardware/xpu/XpuApEssentialMsg$TrainingSpdBump;)V
    .locals 1

    .line 12423
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 12425
    invoke-direct {p0}, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDrivingData;->ensureSpdBumpIsMutable()V

    .line 12426
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDrivingData;->spdBump_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1, p2}, Lcom/android/carsdk/protobuf/Internal$ProtobufList;->add(ILjava/lang/Object;)V

    return-void
.end method

.method private addSpdBump(Landroid/car/hardware/xpu/XpuApEssentialMsg$TrainingSpdBump$Builder;)V
    .locals 1

    .line 12433
    invoke-direct {p0}, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDrivingData;->ensureSpdBumpIsMutable()V

    .line 12434
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDrivingData;->spdBump_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    invoke-virtual {p1}, Landroid/car/hardware/xpu/XpuApEssentialMsg$TrainingSpdBump$Builder;->build()Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Landroid/car/hardware/xpu/XpuApEssentialMsg$TrainingSpdBump;

    invoke-interface {v0, p1}, Lcom/android/carsdk/protobuf/Internal$ProtobufList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private addSpdBump(Landroid/car/hardware/xpu/XpuApEssentialMsg$TrainingSpdBump;)V
    .locals 1

    .line 12412
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 12414
    invoke-direct {p0}, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDrivingData;->ensureSpdBumpIsMutable()V

    .line 12415
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDrivingData;->spdBump_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1}, Lcom/android/carsdk/protobuf/Internal$ProtobufList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private addTrajectory(ILandroid/car/hardware/xpu/XpuApEssentialMsg$ApTrajectoryDataType$Builder;)V
    .locals 1

    .line 12029
    invoke-direct {p0}, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDrivingData;->ensureTrajectoryIsMutable()V

    .line 12030
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDrivingData;->trajectory_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    invoke-virtual {p2}, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApTrajectoryDataType$Builder;->build()Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object p2

    check-cast p2, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApTrajectoryDataType;

    invoke-interface {v0, p1, p2}, Lcom/android/carsdk/protobuf/Internal$ProtobufList;->add(ILjava/lang/Object;)V

    return-void
.end method

.method private addTrajectory(ILandroid/car/hardware/xpu/XpuApEssentialMsg$ApTrajectoryDataType;)V
    .locals 1

    .line 12011
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 12013
    invoke-direct {p0}, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDrivingData;->ensureTrajectoryIsMutable()V

    .line 12014
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDrivingData;->trajectory_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1, p2}, Lcom/android/carsdk/protobuf/Internal$ProtobufList;->add(ILjava/lang/Object;)V

    return-void
.end method

.method private addTrajectory(Landroid/car/hardware/xpu/XpuApEssentialMsg$ApTrajectoryDataType$Builder;)V
    .locals 1

    .line 12021
    invoke-direct {p0}, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDrivingData;->ensureTrajectoryIsMutable()V

    .line 12022
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDrivingData;->trajectory_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    invoke-virtual {p1}, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApTrajectoryDataType$Builder;->build()Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApTrajectoryDataType;

    invoke-interface {v0, p1}, Lcom/android/carsdk/protobuf/Internal$ProtobufList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private addTrajectory(Landroid/car/hardware/xpu/XpuApEssentialMsg$ApTrajectoryDataType;)V
    .locals 1

    .line 12000
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 12002
    invoke-direct {p0}, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDrivingData;->ensureTrajectoryIsMutable()V

    .line 12003
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDrivingData;->trajectory_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1}, Lcom/android/carsdk/protobuf/Internal$ProtobufList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private clearCurFloor()V
    .locals 1

    .line 11932
    invoke-static {}, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDrivingData;->emptyIntList()Lcom/android/carsdk/protobuf/Internal$IntList;

    move-result-object v0

    iput-object v0, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDrivingData;->curFloor_:Lcom/android/carsdk/protobuf/Internal$IntList;

    return-void
.end method

.method private clearDynObj()V
    .locals 1

    .line 12165
    invoke-static {}, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDrivingData;->emptyProtobufList()Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    move-result-object v0

    iput-object v0, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDrivingData;->dynObj_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    return-void
.end method

.method private clearEssentialMsg()V
    .locals 1

    const/4 v0, 0x0

    .line 12223
    iput-object v0, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDrivingData;->essentialMsg_:Landroid/car/hardware/xpu/XpuApEssentialMsg$ApEssentialMsg;

    return-void
.end method

.method private clearLanelines()V
    .locals 1

    .line 11839
    invoke-static {}, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDrivingData;->emptyProtobufList()Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    move-result-object v0

    iput-object v0, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDrivingData;->lanelines_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    return-void
.end method

.method private clearLocation()V
    .locals 1

    const/4 v0, 0x0

    .line 11429
    iput-object v0, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDrivingData;->location_:Landroid/car/hardware/xpu/XpuApEssentialMsg$Location;

    return-void
.end method

.method private clearObj()V
    .locals 1

    .line 11715
    invoke-static {}, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDrivingData;->emptyProtobufList()Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    move-result-object v0

    iput-object v0, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDrivingData;->obj_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    return-void
.end method

.method private clearSlot()V
    .locals 1

    .line 11543
    invoke-static {}, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDrivingData;->emptyProtobufList()Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    move-result-object v0

    iput-object v0, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDrivingData;->slot_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    return-void
.end method

.method private clearSlotAvm()V
    .locals 1

    .line 12337
    invoke-static {}, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDrivingData;->emptyProtobufList()Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    move-result-object v0

    iput-object v0, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDrivingData;->slotAvm_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    return-void
.end method

.method private clearSlotIdMapping()V
    .locals 1

    .line 12577
    invoke-static {}, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDrivingData;->emptyProtobufList()Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    move-result-object v0

    iput-object v0, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDrivingData;->slotIdMapping_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    return-void
.end method

.method private clearSpdBump()V
    .locals 1

    .line 12457
    invoke-static {}, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDrivingData;->emptyProtobufList()Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    move-result-object v0

    iput-object v0, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDrivingData;->spdBump_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    return-void
.end method

.method private clearTrajectory()V
    .locals 1

    .line 12045
    invoke-static {}, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDrivingData;->emptyProtobufList()Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    move-result-object v0

    iput-object v0, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDrivingData;->trajectory_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    return-void
.end method

.method private ensureCurFloorIsMutable()V
    .locals 1

    .line 11883
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDrivingData;->curFloor_:Lcom/android/carsdk/protobuf/Internal$IntList;

    invoke-interface {v0}, Lcom/android/carsdk/protobuf/Internal$IntList;->isModifiable()Z

    move-result v0

    if-nez v0, :cond_0

    .line 11884
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDrivingData;->curFloor_:Lcom/android/carsdk/protobuf/Internal$IntList;

    .line 11885
    invoke-static {v0}, Lcom/android/carsdk/protobuf/GeneratedMessageLite;->mutableCopy(Lcom/android/carsdk/protobuf/Internal$IntList;)Lcom/android/carsdk/protobuf/Internal$IntList;

    move-result-object v0

    iput-object v0, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDrivingData;->curFloor_:Lcom/android/carsdk/protobuf/Internal$IntList;

    :cond_0
    return-void
.end method

.method private ensureDynObjIsMutable()V
    .locals 1

    .line 12090
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDrivingData;->dynObj_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    invoke-interface {v0}, Lcom/android/carsdk/protobuf/Internal$ProtobufList;->isModifiable()Z

    move-result v0

    if-nez v0, :cond_0

    .line 12091
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDrivingData;->dynObj_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    .line 12092
    invoke-static {v0}, Lcom/android/carsdk/protobuf/GeneratedMessageLite;->mutableCopy(Lcom/android/carsdk/protobuf/Internal$ProtobufList;)Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    move-result-object v0

    iput-object v0, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDrivingData;->dynObj_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    :cond_0
    return-void
.end method

.method private ensureLanelinesIsMutable()V
    .locals 1

    .line 11764
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDrivingData;->lanelines_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    invoke-interface {v0}, Lcom/android/carsdk/protobuf/Internal$ProtobufList;->isModifiable()Z

    move-result v0

    if-nez v0, :cond_0

    .line 11765
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDrivingData;->lanelines_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    .line 11766
    invoke-static {v0}, Lcom/android/carsdk/protobuf/GeneratedMessageLite;->mutableCopy(Lcom/android/carsdk/protobuf/Internal$ProtobufList;)Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    move-result-object v0

    iput-object v0, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDrivingData;->lanelines_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    :cond_0
    return-void
.end method

.method private ensureObjIsMutable()V
    .locals 1

    .line 11608
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDrivingData;->obj_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    invoke-interface {v0}, Lcom/android/carsdk/protobuf/Internal$ProtobufList;->isModifiable()Z

    move-result v0

    if-nez v0, :cond_0

    .line 11609
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDrivingData;->obj_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    .line 11610
    invoke-static {v0}, Lcom/android/carsdk/protobuf/GeneratedMessageLite;->mutableCopy(Lcom/android/carsdk/protobuf/Internal$ProtobufList;)Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    move-result-object v0

    iput-object v0, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDrivingData;->obj_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    :cond_0
    return-void
.end method

.method private ensureSlotAvmIsMutable()V
    .locals 1

    .line 12262
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDrivingData;->slotAvm_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    invoke-interface {v0}, Lcom/android/carsdk/protobuf/Internal$ProtobufList;->isModifiable()Z

    move-result v0

    if-nez v0, :cond_0

    .line 12263
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDrivingData;->slotAvm_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    .line 12264
    invoke-static {v0}, Lcom/android/carsdk/protobuf/GeneratedMessageLite;->mutableCopy(Lcom/android/carsdk/protobuf/Internal$ProtobufList;)Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    move-result-object v0

    iput-object v0, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDrivingData;->slotAvm_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    :cond_0
    return-void
.end method

.method private ensureSlotIdMappingIsMutable()V
    .locals 1

    .line 12502
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDrivingData;->slotIdMapping_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    invoke-interface {v0}, Lcom/android/carsdk/protobuf/Internal$ProtobufList;->isModifiable()Z

    move-result v0

    if-nez v0, :cond_0

    .line 12503
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDrivingData;->slotIdMapping_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    .line 12504
    invoke-static {v0}, Lcom/android/carsdk/protobuf/GeneratedMessageLite;->mutableCopy(Lcom/android/carsdk/protobuf/Internal$ProtobufList;)Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    move-result-object v0

    iput-object v0, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDrivingData;->slotIdMapping_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    :cond_0
    return-void
.end method

.method private ensureSlotIsMutable()V
    .locals 1

    .line 11468
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDrivingData;->slot_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    invoke-interface {v0}, Lcom/android/carsdk/protobuf/Internal$ProtobufList;->isModifiable()Z

    move-result v0

    if-nez v0, :cond_0

    .line 11469
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDrivingData;->slot_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    .line 11470
    invoke-static {v0}, Lcom/android/carsdk/protobuf/GeneratedMessageLite;->mutableCopy(Lcom/android/carsdk/protobuf/Internal$ProtobufList;)Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    move-result-object v0

    iput-object v0, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDrivingData;->slot_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    :cond_0
    return-void
.end method

.method private ensureSpdBumpIsMutable()V
    .locals 1

    .line 12382
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDrivingData;->spdBump_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    invoke-interface {v0}, Lcom/android/carsdk/protobuf/Internal$ProtobufList;->isModifiable()Z

    move-result v0

    if-nez v0, :cond_0

    .line 12383
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDrivingData;->spdBump_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    .line 12384
    invoke-static {v0}, Lcom/android/carsdk/protobuf/GeneratedMessageLite;->mutableCopy(Lcom/android/carsdk/protobuf/Internal$ProtobufList;)Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    move-result-object v0

    iput-object v0, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDrivingData;->spdBump_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    :cond_0
    return-void
.end method

.method private ensureTrajectoryIsMutable()V
    .locals 1

    .line 11970
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDrivingData;->trajectory_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    invoke-interface {v0}, Lcom/android/carsdk/protobuf/Internal$ProtobufList;->isModifiable()Z

    move-result v0

    if-nez v0, :cond_0

    .line 11971
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDrivingData;->trajectory_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    .line 11972
    invoke-static {v0}, Lcom/android/carsdk/protobuf/GeneratedMessageLite;->mutableCopy(Lcom/android/carsdk/protobuf/Internal$ProtobufList;)Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    move-result-object v0

    iput-object v0, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDrivingData;->trajectory_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    :cond_0
    return-void
.end method

.method public static getDefaultInstance()Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDrivingData;
    .locals 1

    .line 13983
    sget-object v0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDrivingData;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDrivingData;

    return-object v0
.end method

.method private mergeEssentialMsg(Landroid/car/hardware/xpu/XpuApEssentialMsg$ApEssentialMsg;)V
    .locals 2

    .line 12211
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDrivingData;->essentialMsg_:Landroid/car/hardware/xpu/XpuApEssentialMsg$ApEssentialMsg;

    if-eqz v0, :cond_0

    .line 12212
    invoke-static {}, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApEssentialMsg;->getDefaultInstance()Landroid/car/hardware/xpu/XpuApEssentialMsg$ApEssentialMsg;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 12213
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDrivingData;->essentialMsg_:Landroid/car/hardware/xpu/XpuApEssentialMsg$ApEssentialMsg;

    .line 12214
    invoke-static {v0}, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApEssentialMsg;->newBuilder(Landroid/car/hardware/xpu/XpuApEssentialMsg$ApEssentialMsg;)Landroid/car/hardware/xpu/XpuApEssentialMsg$ApEssentialMsg$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApEssentialMsg$Builder;->mergeFrom(Lcom/android/carsdk/protobuf/GeneratedMessageLite;)Lcom/android/carsdk/protobuf/GeneratedMessageLite$Builder;

    move-result-object p1

    check-cast p1, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApEssentialMsg$Builder;

    invoke-virtual {p1}, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApEssentialMsg$Builder;->buildPartial()Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApEssentialMsg;

    iput-object p1, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDrivingData;->essentialMsg_:Landroid/car/hardware/xpu/XpuApEssentialMsg$ApEssentialMsg;

    goto :goto_0

    .line 12216
    :cond_0
    iput-object p1, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDrivingData;->essentialMsg_:Landroid/car/hardware/xpu/XpuApEssentialMsg$ApEssentialMsg;

    :goto_0
    return-void
.end method

.method private mergeLocation(Landroid/car/hardware/xpu/XpuApEssentialMsg$Location;)V
    .locals 2

    .line 11417
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDrivingData;->location_:Landroid/car/hardware/xpu/XpuApEssentialMsg$Location;

    if-eqz v0, :cond_0

    .line 11418
    invoke-static {}, Landroid/car/hardware/xpu/XpuApEssentialMsg$Location;->getDefaultInstance()Landroid/car/hardware/xpu/XpuApEssentialMsg$Location;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 11419
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDrivingData;->location_:Landroid/car/hardware/xpu/XpuApEssentialMsg$Location;

    .line 11420
    invoke-static {v0}, Landroid/car/hardware/xpu/XpuApEssentialMsg$Location;->newBuilder(Landroid/car/hardware/xpu/XpuApEssentialMsg$Location;)Landroid/car/hardware/xpu/XpuApEssentialMsg$Location$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/car/hardware/xpu/XpuApEssentialMsg$Location$Builder;->mergeFrom(Lcom/android/carsdk/protobuf/GeneratedMessageLite;)Lcom/android/carsdk/protobuf/GeneratedMessageLite$Builder;

    move-result-object p1

    check-cast p1, Landroid/car/hardware/xpu/XpuApEssentialMsg$Location$Builder;

    invoke-virtual {p1}, Landroid/car/hardware/xpu/XpuApEssentialMsg$Location$Builder;->buildPartial()Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Landroid/car/hardware/xpu/XpuApEssentialMsg$Location;

    iput-object p1, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDrivingData;->location_:Landroid/car/hardware/xpu/XpuApEssentialMsg$Location;

    goto :goto_0

    .line 11422
    :cond_0
    iput-object p1, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDrivingData;->location_:Landroid/car/hardware/xpu/XpuApEssentialMsg$Location;

    :goto_0
    return-void
.end method

.method public static newBuilder()Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDrivingData$Builder;
    .locals 1

    .line 12745
    sget-object v0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDrivingData;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDrivingData;

    invoke-virtual {v0}, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDrivingData;->toBuilder()Lcom/android/carsdk/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDrivingData$Builder;

    return-object v0
.end method

.method public static newBuilder(Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDrivingData;)Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDrivingData$Builder;
    .locals 1

    .line 12748
    sget-object v0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDrivingData;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDrivingData;

    invoke-virtual {v0}, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDrivingData;->toBuilder()Lcom/android/carsdk/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDrivingData$Builder;

    invoke-virtual {v0, p0}, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDrivingData$Builder;->mergeFrom(Lcom/android/carsdk/protobuf/GeneratedMessageLite;)Lcom/android/carsdk/protobuf/GeneratedMessageLite$Builder;

    move-result-object p0

    check-cast p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDrivingData$Builder;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDrivingData;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 12722
    sget-object v0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDrivingData;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDrivingData;

    invoke-static {v0, p0}, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDrivingData;->parseDelimitedFrom(Lcom/android/carsdk/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDrivingData;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/android/carsdk/protobuf/ExtensionRegistryLite;)Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDrivingData;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 12728
    sget-object v0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDrivingData;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDrivingData;

    invoke-static {v0, p0, p1}, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDrivingData;->parseDelimitedFrom(Lcom/android/carsdk/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/android/carsdk/protobuf/ExtensionRegistryLite;)Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDrivingData;

    return-object p0
.end method

.method public static parseFrom(Lcom/android/carsdk/protobuf/ByteString;)Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDrivingData;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/carsdk/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 12686
    sget-object v0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDrivingData;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDrivingData;

    invoke-static {v0, p0}, Lcom/android/carsdk/protobuf/GeneratedMessageLite;->parseFrom(Lcom/android/carsdk/protobuf/GeneratedMessageLite;Lcom/android/carsdk/protobuf/ByteString;)Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDrivingData;

    return-object p0
.end method

.method public static parseFrom(Lcom/android/carsdk/protobuf/ByteString;Lcom/android/carsdk/protobuf/ExtensionRegistryLite;)Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDrivingData;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/carsdk/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 12693
    sget-object v0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDrivingData;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDrivingData;

    invoke-static {v0, p0, p1}, Lcom/android/carsdk/protobuf/GeneratedMessageLite;->parseFrom(Lcom/android/carsdk/protobuf/GeneratedMessageLite;Lcom/android/carsdk/protobuf/ByteString;Lcom/android/carsdk/protobuf/ExtensionRegistryLite;)Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDrivingData;

    return-object p0
.end method

.method public static parseFrom(Lcom/android/carsdk/protobuf/CodedInputStream;)Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDrivingData;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 12733
    sget-object v0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDrivingData;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDrivingData;

    invoke-static {v0, p0}, Lcom/android/carsdk/protobuf/GeneratedMessageLite;->parseFrom(Lcom/android/carsdk/protobuf/GeneratedMessageLite;Lcom/android/carsdk/protobuf/CodedInputStream;)Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDrivingData;

    return-object p0
.end method

.method public static parseFrom(Lcom/android/carsdk/protobuf/CodedInputStream;Lcom/android/carsdk/protobuf/ExtensionRegistryLite;)Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDrivingData;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 12740
    sget-object v0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDrivingData;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDrivingData;

    invoke-static {v0, p0, p1}, Lcom/android/carsdk/protobuf/GeneratedMessageLite;->parseFrom(Lcom/android/carsdk/protobuf/GeneratedMessageLite;Lcom/android/carsdk/protobuf/CodedInputStream;Lcom/android/carsdk/protobuf/ExtensionRegistryLite;)Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDrivingData;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDrivingData;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 12710
    sget-object v0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDrivingData;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDrivingData;

    invoke-static {v0, p0}, Lcom/android/carsdk/protobuf/GeneratedMessageLite;->parseFrom(Lcom/android/carsdk/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDrivingData;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/android/carsdk/protobuf/ExtensionRegistryLite;)Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDrivingData;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 12717
    sget-object v0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDrivingData;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDrivingData;

    invoke-static {v0, p0, p1}, Lcom/android/carsdk/protobuf/GeneratedMessageLite;->parseFrom(Lcom/android/carsdk/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/android/carsdk/protobuf/ExtensionRegistryLite;)Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDrivingData;

    return-object p0
.end method

.method public static parseFrom([B)Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDrivingData;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/carsdk/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 12698
    sget-object v0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDrivingData;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDrivingData;

    invoke-static {v0, p0}, Lcom/android/carsdk/protobuf/GeneratedMessageLite;->parseFrom(Lcom/android/carsdk/protobuf/GeneratedMessageLite;[B)Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDrivingData;

    return-object p0
.end method

.method public static parseFrom([BLcom/android/carsdk/protobuf/ExtensionRegistryLite;)Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDrivingData;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/carsdk/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 12705
    sget-object v0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDrivingData;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDrivingData;

    invoke-static {v0, p0, p1}, Lcom/android/carsdk/protobuf/GeneratedMessageLite;->parseFrom(Lcom/android/carsdk/protobuf/GeneratedMessageLite;[BLcom/android/carsdk/protobuf/ExtensionRegistryLite;)Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDrivingData;

    return-object p0
.end method

.method public static parser()Lcom/android/carsdk/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/android/carsdk/protobuf/Parser<",
            "Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDrivingData;",
            ">;"
        }
    .end annotation

    .line 13989
    sget-object v0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDrivingData;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDrivingData;

    invoke-virtual {v0}, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDrivingData;->getParserForType()Lcom/android/carsdk/protobuf/Parser;

    move-result-object v0

    return-object v0
.end method

.method private removeDynObj(I)V
    .locals 1

    .line 12171
    invoke-direct {p0}, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDrivingData;->ensureDynObjIsMutable()V

    .line 12172
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDrivingData;->dynObj_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1}, Lcom/android/carsdk/protobuf/Internal$ProtobufList;->remove(I)Ljava/lang/Object;

    return-void
.end method

.method private removeLanelines(I)V
    .locals 1

    .line 11845
    invoke-direct {p0}, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDrivingData;->ensureLanelinesIsMutable()V

    .line 11846
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDrivingData;->lanelines_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1}, Lcom/android/carsdk/protobuf/Internal$ProtobufList;->remove(I)Ljava/lang/Object;

    return-void
.end method

.method private removeObj(I)V
    .locals 1

    .line 11725
    invoke-direct {p0}, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDrivingData;->ensureObjIsMutable()V

    .line 11726
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDrivingData;->obj_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1}, Lcom/android/carsdk/protobuf/Internal$ProtobufList;->remove(I)Ljava/lang/Object;

    return-void
.end method

.method private removeSlot(I)V
    .locals 1

    .line 11549
    invoke-direct {p0}, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDrivingData;->ensureSlotIsMutable()V

    .line 11550
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDrivingData;->slot_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1}, Lcom/android/carsdk/protobuf/Internal$ProtobufList;->remove(I)Ljava/lang/Object;

    return-void
.end method

.method private removeSlotAvm(I)V
    .locals 1

    .line 12343
    invoke-direct {p0}, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDrivingData;->ensureSlotAvmIsMutable()V

    .line 12344
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDrivingData;->slotAvm_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1}, Lcom/android/carsdk/protobuf/Internal$ProtobufList;->remove(I)Ljava/lang/Object;

    return-void
.end method

.method private removeSlotIdMapping(I)V
    .locals 1

    .line 12583
    invoke-direct {p0}, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDrivingData;->ensureSlotIdMappingIsMutable()V

    .line 12584
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDrivingData;->slotIdMapping_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1}, Lcom/android/carsdk/protobuf/Internal$ProtobufList;->remove(I)Ljava/lang/Object;

    return-void
.end method

.method private removeSpdBump(I)V
    .locals 1

    .line 12463
    invoke-direct {p0}, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDrivingData;->ensureSpdBumpIsMutable()V

    .line 12464
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDrivingData;->spdBump_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1}, Lcom/android/carsdk/protobuf/Internal$ProtobufList;->remove(I)Ljava/lang/Object;

    return-void
.end method

.method private removeTrajectory(I)V
    .locals 1

    .line 12051
    invoke-direct {p0}, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDrivingData;->ensureTrajectoryIsMutable()V

    .line 12052
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDrivingData;->trajectory_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1}, Lcom/android/carsdk/protobuf/Internal$ProtobufList;->remove(I)Ljava/lang/Object;

    return-void
.end method

.method private setCurFloor(II)V
    .locals 1

    .line 11897
    invoke-direct {p0}, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDrivingData;->ensureCurFloorIsMutable()V

    .line 11898
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDrivingData;->curFloor_:Lcom/android/carsdk/protobuf/Internal$IntList;

    invoke-interface {v0, p1, p2}, Lcom/android/carsdk/protobuf/Internal$IntList;->setInt(II)I

    return-void
.end method

.method private setDynObj(ILandroid/car/hardware/xpu/XpuApEssentialMsg$ApDynaObject$Builder;)V
    .locals 1

    .line 12112
    invoke-direct {p0}, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDrivingData;->ensureDynObjIsMutable()V

    .line 12113
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDrivingData;->dynObj_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    invoke-virtual {p2}, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDynaObject$Builder;->build()Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object p2

    check-cast p2, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDynaObject;

    invoke-interface {v0, p1, p2}, Lcom/android/carsdk/protobuf/Internal$ProtobufList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private setDynObj(ILandroid/car/hardware/xpu/XpuApEssentialMsg$ApDynaObject;)V
    .locals 1

    .line 12102
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 12104
    invoke-direct {p0}, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDrivingData;->ensureDynObjIsMutable()V

    .line 12105
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDrivingData;->dynObj_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1, p2}, Lcom/android/carsdk/protobuf/Internal$ProtobufList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private setEssentialMsg(Landroid/car/hardware/xpu/XpuApEssentialMsg$ApEssentialMsg$Builder;)V
    .locals 0

    .line 12204
    invoke-virtual {p1}, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApEssentialMsg$Builder;->build()Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApEssentialMsg;

    iput-object p1, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDrivingData;->essentialMsg_:Landroid/car/hardware/xpu/XpuApEssentialMsg$ApEssentialMsg;

    return-void
.end method

.method private setEssentialMsg(Landroid/car/hardware/xpu/XpuApEssentialMsg$ApEssentialMsg;)V
    .locals 0

    .line 12194
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 12196
    iput-object p1, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDrivingData;->essentialMsg_:Landroid/car/hardware/xpu/XpuApEssentialMsg$ApEssentialMsg;

    return-void
.end method

.method private setLanelines(ILandroid/car/hardware/xpu/XpuApEssentialMsg$ApLaneLineInfo$Builder;)V
    .locals 1

    .line 11786
    invoke-direct {p0}, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDrivingData;->ensureLanelinesIsMutable()V

    .line 11787
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDrivingData;->lanelines_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    invoke-virtual {p2}, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApLaneLineInfo$Builder;->build()Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object p2

    check-cast p2, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApLaneLineInfo;

    invoke-interface {v0, p1, p2}, Lcom/android/carsdk/protobuf/Internal$ProtobufList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private setLanelines(ILandroid/car/hardware/xpu/XpuApEssentialMsg$ApLaneLineInfo;)V
    .locals 1

    .line 11776
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 11778
    invoke-direct {p0}, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDrivingData;->ensureLanelinesIsMutable()V

    .line 11779
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDrivingData;->lanelines_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1, p2}, Lcom/android/carsdk/protobuf/Internal$ProtobufList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private setLocation(Landroid/car/hardware/xpu/XpuApEssentialMsg$Location$Builder;)V
    .locals 0

    .line 11410
    invoke-virtual {p1}, Landroid/car/hardware/xpu/XpuApEssentialMsg$Location$Builder;->build()Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Landroid/car/hardware/xpu/XpuApEssentialMsg$Location;

    iput-object p1, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDrivingData;->location_:Landroid/car/hardware/xpu/XpuApEssentialMsg$Location;

    return-void
.end method

.method private setLocation(Landroid/car/hardware/xpu/XpuApEssentialMsg$Location;)V
    .locals 0

    .line 11400
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 11402
    iput-object p1, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDrivingData;->location_:Landroid/car/hardware/xpu/XpuApEssentialMsg$Location;

    return-void
.end method

.method private setObj(ILandroid/car/hardware/xpu/XpuApEssentialMsg$StripObstacle$Builder;)V
    .locals 1

    .line 11638
    invoke-direct {p0}, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDrivingData;->ensureObjIsMutable()V

    .line 11639
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDrivingData;->obj_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    invoke-virtual {p2}, Landroid/car/hardware/xpu/XpuApEssentialMsg$StripObstacle$Builder;->build()Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object p2

    check-cast p2, Landroid/car/hardware/xpu/XpuApEssentialMsg$StripObstacle;

    invoke-interface {v0, p1, p2}, Lcom/android/carsdk/protobuf/Internal$ProtobufList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private setObj(ILandroid/car/hardware/xpu/XpuApEssentialMsg$StripObstacle;)V
    .locals 1

    .line 11624
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 11626
    invoke-direct {p0}, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDrivingData;->ensureObjIsMutable()V

    .line 11627
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDrivingData;->obj_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1, p2}, Lcom/android/carsdk/protobuf/Internal$ProtobufList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private setSlot(ILandroid/car/hardware/xpu/XpuApEssentialMsg$Slot$Builder;)V
    .locals 1

    .line 11490
    invoke-direct {p0}, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDrivingData;->ensureSlotIsMutable()V

    .line 11491
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDrivingData;->slot_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    invoke-virtual {p2}, Landroid/car/hardware/xpu/XpuApEssentialMsg$Slot$Builder;->build()Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object p2

    check-cast p2, Landroid/car/hardware/xpu/XpuApEssentialMsg$Slot;

    invoke-interface {v0, p1, p2}, Lcom/android/carsdk/protobuf/Internal$ProtobufList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private setSlot(ILandroid/car/hardware/xpu/XpuApEssentialMsg$Slot;)V
    .locals 1

    .line 11480
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 11482
    invoke-direct {p0}, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDrivingData;->ensureSlotIsMutable()V

    .line 11483
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDrivingData;->slot_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1, p2}, Lcom/android/carsdk/protobuf/Internal$ProtobufList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private setSlotAvm(ILandroid/car/hardware/xpu/XpuApEssentialMsg$Slot$Builder;)V
    .locals 1

    .line 12284
    invoke-direct {p0}, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDrivingData;->ensureSlotAvmIsMutable()V

    .line 12285
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDrivingData;->slotAvm_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    invoke-virtual {p2}, Landroid/car/hardware/xpu/XpuApEssentialMsg$Slot$Builder;->build()Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object p2

    check-cast p2, Landroid/car/hardware/xpu/XpuApEssentialMsg$Slot;

    invoke-interface {v0, p1, p2}, Lcom/android/carsdk/protobuf/Internal$ProtobufList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private setSlotAvm(ILandroid/car/hardware/xpu/XpuApEssentialMsg$Slot;)V
    .locals 1

    .line 12274
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 12276
    invoke-direct {p0}, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDrivingData;->ensureSlotAvmIsMutable()V

    .line 12277
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDrivingData;->slotAvm_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1, p2}, Lcom/android/carsdk/protobuf/Internal$ProtobufList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private setSlotIdMapping(ILandroid/car/hardware/xpu/XpuApEssentialMsg$SlotIdMapping$Builder;)V
    .locals 1

    .line 12524
    invoke-direct {p0}, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDrivingData;->ensureSlotIdMappingIsMutable()V

    .line 12525
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDrivingData;->slotIdMapping_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    invoke-virtual {p2}, Landroid/car/hardware/xpu/XpuApEssentialMsg$SlotIdMapping$Builder;->build()Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object p2

    check-cast p2, Landroid/car/hardware/xpu/XpuApEssentialMsg$SlotIdMapping;

    invoke-interface {v0, p1, p2}, Lcom/android/carsdk/protobuf/Internal$ProtobufList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private setSlotIdMapping(ILandroid/car/hardware/xpu/XpuApEssentialMsg$SlotIdMapping;)V
    .locals 1

    .line 12514
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 12516
    invoke-direct {p0}, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDrivingData;->ensureSlotIdMappingIsMutable()V

    .line 12517
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDrivingData;->slotIdMapping_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1, p2}, Lcom/android/carsdk/protobuf/Internal$ProtobufList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private setSpdBump(ILandroid/car/hardware/xpu/XpuApEssentialMsg$TrainingSpdBump$Builder;)V
    .locals 1

    .line 12404
    invoke-direct {p0}, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDrivingData;->ensureSpdBumpIsMutable()V

    .line 12405
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDrivingData;->spdBump_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    invoke-virtual {p2}, Landroid/car/hardware/xpu/XpuApEssentialMsg$TrainingSpdBump$Builder;->build()Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object p2

    check-cast p2, Landroid/car/hardware/xpu/XpuApEssentialMsg$TrainingSpdBump;

    invoke-interface {v0, p1, p2}, Lcom/android/carsdk/protobuf/Internal$ProtobufList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private setSpdBump(ILandroid/car/hardware/xpu/XpuApEssentialMsg$TrainingSpdBump;)V
    .locals 1

    .line 12394
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 12396
    invoke-direct {p0}, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDrivingData;->ensureSpdBumpIsMutable()V

    .line 12397
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDrivingData;->spdBump_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1, p2}, Lcom/android/carsdk/protobuf/Internal$ProtobufList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private setTrajectory(ILandroid/car/hardware/xpu/XpuApEssentialMsg$ApTrajectoryDataType$Builder;)V
    .locals 1

    .line 11992
    invoke-direct {p0}, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDrivingData;->ensureTrajectoryIsMutable()V

    .line 11993
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDrivingData;->trajectory_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    invoke-virtual {p2}, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApTrajectoryDataType$Builder;->build()Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object p2

    check-cast p2, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApTrajectoryDataType;

    invoke-interface {v0, p1, p2}, Lcom/android/carsdk/protobuf/Internal$ProtobufList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private setTrajectory(ILandroid/car/hardware/xpu/XpuApEssentialMsg$ApTrajectoryDataType;)V
    .locals 1

    .line 11982
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 11984
    invoke-direct {p0}, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDrivingData;->ensureTrajectoryIsMutable()V

    .line 11985
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDrivingData;->trajectory_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1, p2}, Lcom/android/carsdk/protobuf/Internal$ProtobufList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method protected final dynamicMethod(Lcom/android/carsdk/protobuf/GeneratedMessageLite$MethodToInvoke;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    .line 13767
    sget-object v0, Landroid/car/hardware/xpu/XpuApEssentialMsg$1;->$SwitchMap$com$google$protobuf$GeneratedMessageLite$MethodToInvoke:[I

    invoke-virtual {p1}, Lcom/android/carsdk/protobuf/GeneratedMessageLite$MethodToInvoke;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x0

    packed-switch p1, :pswitch_data_0

    .line 13971
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1

    .line 13962
    :pswitch_0
    sget-object p1, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDrivingData;->PARSER:Lcom/android/carsdk/protobuf/Parser;

    if-nez p1, :cond_1

    const-class p1, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDrivingData;

    monitor-enter p1

    .line 13963
    :try_start_0
    sget-object p2, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDrivingData;->PARSER:Lcom/android/carsdk/protobuf/Parser;

    if-nez p2, :cond_0

    .line 13964
    new-instance p2, Lcom/android/carsdk/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;

    sget-object p3, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDrivingData;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDrivingData;

    invoke-direct {p2, p3}, Lcom/android/carsdk/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;-><init>(Lcom/android/carsdk/protobuf/GeneratedMessageLite;)V

    sput-object p2, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDrivingData;->PARSER:Lcom/android/carsdk/protobuf/Parser;

    .line 13966
    :cond_0
    monitor-exit p1

    goto :goto_0

    :catchall_0
    move-exception p2

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p2

    .line 13968
    :cond_1
    :goto_0
    sget-object p1, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDrivingData;->PARSER:Lcom/android/carsdk/protobuf/Parser;

    return-object p1

    .line 13810
    :pswitch_1
    check-cast p2, Lcom/android/carsdk/protobuf/CodedInputStream;

    .line 13812
    check-cast p3, Lcom/android/carsdk/protobuf/ExtensionRegistryLite;

    const/4 p1, 0x0

    :cond_2
    :goto_1
    if-nez p1, :cond_10

    .line 13817
    :try_start_1
    invoke-virtual {p2}, Lcom/android/carsdk/protobuf/CodedInputStream;->readTag()I

    move-result v1

    const/4 v2, 0x1

    sparse-switch v1, :sswitch_data_0

    .line 13823
    invoke-virtual {p2, v1}, Lcom/android/carsdk/protobuf/CodedInputStream;->skipField(I)Z

    move-result v1

    goto/16 :goto_6

    .line 13939
    :sswitch_0
    iget-object v1, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDrivingData;->slotIdMapping_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    invoke-interface {v1}, Lcom/android/carsdk/protobuf/Internal$ProtobufList;->isModifiable()Z

    move-result v1

    if-nez v1, :cond_3

    .line 13940
    iget-object v1, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDrivingData;->slotIdMapping_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    .line 13941
    invoke-static {v1}, Lcom/android/carsdk/protobuf/GeneratedMessageLite;->mutableCopy(Lcom/android/carsdk/protobuf/Internal$ProtobufList;)Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    move-result-object v1

    iput-object v1, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDrivingData;->slotIdMapping_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    .line 13943
    :cond_3
    iget-object v1, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDrivingData;->slotIdMapping_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    .line 13944
    invoke-static {}, Landroid/car/hardware/xpu/XpuApEssentialMsg$SlotIdMapping;->parser()Lcom/android/carsdk/protobuf/Parser;

    move-result-object v2

    invoke-virtual {p2, v2, p3}, Lcom/android/carsdk/protobuf/CodedInputStream;->readMessage(Lcom/android/carsdk/protobuf/Parser;Lcom/android/carsdk/protobuf/ExtensionRegistryLite;)Lcom/android/carsdk/protobuf/MessageLite;

    move-result-object v2

    check-cast v2, Landroid/car/hardware/xpu/XpuApEssentialMsg$SlotIdMapping;

    .line 13943
    invoke-interface {v1, v2}, Lcom/android/carsdk/protobuf/Internal$ProtobufList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 13930
    :sswitch_1
    iget-object v1, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDrivingData;->spdBump_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    invoke-interface {v1}, Lcom/android/carsdk/protobuf/Internal$ProtobufList;->isModifiable()Z

    move-result v1

    if-nez v1, :cond_4

    .line 13931
    iget-object v1, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDrivingData;->spdBump_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    .line 13932
    invoke-static {v1}, Lcom/android/carsdk/protobuf/GeneratedMessageLite;->mutableCopy(Lcom/android/carsdk/protobuf/Internal$ProtobufList;)Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    move-result-object v1

    iput-object v1, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDrivingData;->spdBump_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    .line 13934
    :cond_4
    iget-object v1, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDrivingData;->spdBump_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    .line 13935
    invoke-static {}, Landroid/car/hardware/xpu/XpuApEssentialMsg$TrainingSpdBump;->parser()Lcom/android/carsdk/protobuf/Parser;

    move-result-object v2

    invoke-virtual {p2, v2, p3}, Lcom/android/carsdk/protobuf/CodedInputStream;->readMessage(Lcom/android/carsdk/protobuf/Parser;Lcom/android/carsdk/protobuf/ExtensionRegistryLite;)Lcom/android/carsdk/protobuf/MessageLite;

    move-result-object v2

    check-cast v2, Landroid/car/hardware/xpu/XpuApEssentialMsg$TrainingSpdBump;

    .line 13934
    invoke-interface {v1, v2}, Lcom/android/carsdk/protobuf/Internal$ProtobufList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 13921
    :sswitch_2
    iget-object v1, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDrivingData;->slotAvm_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    invoke-interface {v1}, Lcom/android/carsdk/protobuf/Internal$ProtobufList;->isModifiable()Z

    move-result v1

    if-nez v1, :cond_5

    .line 13922
    iget-object v1, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDrivingData;->slotAvm_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    .line 13923
    invoke-static {v1}, Lcom/android/carsdk/protobuf/GeneratedMessageLite;->mutableCopy(Lcom/android/carsdk/protobuf/Internal$ProtobufList;)Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    move-result-object v1

    iput-object v1, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDrivingData;->slotAvm_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    .line 13925
    :cond_5
    iget-object v1, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDrivingData;->slotAvm_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    .line 13926
    invoke-static {}, Landroid/car/hardware/xpu/XpuApEssentialMsg$Slot;->parser()Lcom/android/carsdk/protobuf/Parser;

    move-result-object v2

    invoke-virtual {p2, v2, p3}, Lcom/android/carsdk/protobuf/CodedInputStream;->readMessage(Lcom/android/carsdk/protobuf/Parser;Lcom/android/carsdk/protobuf/ExtensionRegistryLite;)Lcom/android/carsdk/protobuf/MessageLite;

    move-result-object v2

    check-cast v2, Landroid/car/hardware/xpu/XpuApEssentialMsg$Slot;

    .line 13925
    invoke-interface {v1, v2}, Lcom/android/carsdk/protobuf/Internal$ProtobufList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 13909
    :sswitch_3
    iget-object v1, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDrivingData;->essentialMsg_:Landroid/car/hardware/xpu/XpuApEssentialMsg$ApEssentialMsg;

    if-eqz v1, :cond_6

    .line 13910
    invoke-virtual {v1}, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApEssentialMsg;->toBuilder()Lcom/android/carsdk/protobuf/GeneratedMessageLite$Builder;

    move-result-object v1

    check-cast v1, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApEssentialMsg$Builder;

    goto :goto_2

    :cond_6
    move-object v1, v0

    .line 13912
    :goto_2
    invoke-static {}, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApEssentialMsg;->parser()Lcom/android/carsdk/protobuf/Parser;

    move-result-object v2

    invoke-virtual {p2, v2, p3}, Lcom/android/carsdk/protobuf/CodedInputStream;->readMessage(Lcom/android/carsdk/protobuf/Parser;Lcom/android/carsdk/protobuf/ExtensionRegistryLite;)Lcom/android/carsdk/protobuf/MessageLite;

    move-result-object v2

    check-cast v2, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApEssentialMsg;

    iput-object v2, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDrivingData;->essentialMsg_:Landroid/car/hardware/xpu/XpuApEssentialMsg$ApEssentialMsg;

    if-eqz v1, :cond_2

    .line 13914
    invoke-virtual {v1, v2}, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApEssentialMsg$Builder;->mergeFrom(Lcom/android/carsdk/protobuf/GeneratedMessageLite;)Lcom/android/carsdk/protobuf/GeneratedMessageLite$Builder;

    .line 13915
    invoke-virtual {v1}, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApEssentialMsg$Builder;->buildPartial()Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object v1

    check-cast v1, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApEssentialMsg;

    iput-object v1, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDrivingData;->essentialMsg_:Landroid/car/hardware/xpu/XpuApEssentialMsg$ApEssentialMsg;

    goto/16 :goto_1

    .line 13899
    :sswitch_4
    iget-object v1, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDrivingData;->dynObj_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    invoke-interface {v1}, Lcom/android/carsdk/protobuf/Internal$ProtobufList;->isModifiable()Z

    move-result v1

    if-nez v1, :cond_7

    .line 13900
    iget-object v1, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDrivingData;->dynObj_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    .line 13901
    invoke-static {v1}, Lcom/android/carsdk/protobuf/GeneratedMessageLite;->mutableCopy(Lcom/android/carsdk/protobuf/Internal$ProtobufList;)Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    move-result-object v1

    iput-object v1, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDrivingData;->dynObj_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    .line 13903
    :cond_7
    iget-object v1, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDrivingData;->dynObj_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    .line 13904
    invoke-static {}, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDynaObject;->parser()Lcom/android/carsdk/protobuf/Parser;

    move-result-object v2

    invoke-virtual {p2, v2, p3}, Lcom/android/carsdk/protobuf/CodedInputStream;->readMessage(Lcom/android/carsdk/protobuf/Parser;Lcom/android/carsdk/protobuf/ExtensionRegistryLite;)Lcom/android/carsdk/protobuf/MessageLite;

    move-result-object v2

    check-cast v2, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDynaObject;

    .line 13903
    invoke-interface {v1, v2}, Lcom/android/carsdk/protobuf/Internal$ProtobufList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 13890
    :sswitch_5
    iget-object v1, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDrivingData;->trajectory_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    invoke-interface {v1}, Lcom/android/carsdk/protobuf/Internal$ProtobufList;->isModifiable()Z

    move-result v1

    if-nez v1, :cond_8

    .line 13891
    iget-object v1, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDrivingData;->trajectory_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    .line 13892
    invoke-static {v1}, Lcom/android/carsdk/protobuf/GeneratedMessageLite;->mutableCopy(Lcom/android/carsdk/protobuf/Internal$ProtobufList;)Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    move-result-object v1

    iput-object v1, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDrivingData;->trajectory_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    .line 13894
    :cond_8
    iget-object v1, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDrivingData;->trajectory_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    .line 13895
    invoke-static {}, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApTrajectoryDataType;->parser()Lcom/android/carsdk/protobuf/Parser;

    move-result-object v2

    invoke-virtual {p2, v2, p3}, Lcom/android/carsdk/protobuf/CodedInputStream;->readMessage(Lcom/android/carsdk/protobuf/Parser;Lcom/android/carsdk/protobuf/ExtensionRegistryLite;)Lcom/android/carsdk/protobuf/MessageLite;

    move-result-object v2

    check-cast v2, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApTrajectoryDataType;

    .line 13894
    invoke-interface {v1, v2}, Lcom/android/carsdk/protobuf/Internal$ProtobufList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 13877
    :sswitch_6
    invoke-virtual {p2}, Lcom/android/carsdk/protobuf/CodedInputStream;->readRawVarint32()I

    move-result v1

    .line 13878
    invoke-virtual {p2, v1}, Lcom/android/carsdk/protobuf/CodedInputStream;->pushLimit(I)I

    move-result v1

    .line 13879
    iget-object v2, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDrivingData;->curFloor_:Lcom/android/carsdk/protobuf/Internal$IntList;

    invoke-interface {v2}, Lcom/android/carsdk/protobuf/Internal$IntList;->isModifiable()Z

    move-result v2

    if-nez v2, :cond_9

    invoke-virtual {p2}, Lcom/android/carsdk/protobuf/CodedInputStream;->getBytesUntilLimit()I

    move-result v2

    if-lez v2, :cond_9

    .line 13880
    iget-object v2, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDrivingData;->curFloor_:Lcom/android/carsdk/protobuf/Internal$IntList;

    .line 13881
    invoke-static {v2}, Lcom/android/carsdk/protobuf/GeneratedMessageLite;->mutableCopy(Lcom/android/carsdk/protobuf/Internal$IntList;)Lcom/android/carsdk/protobuf/Internal$IntList;

    move-result-object v2

    iput-object v2, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDrivingData;->curFloor_:Lcom/android/carsdk/protobuf/Internal$IntList;

    .line 13883
    :cond_9
    :goto_3
    invoke-virtual {p2}, Lcom/android/carsdk/protobuf/CodedInputStream;->getBytesUntilLimit()I

    move-result v2

    if-lez v2, :cond_a

    .line 13884
    iget-object v2, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDrivingData;->curFloor_:Lcom/android/carsdk/protobuf/Internal$IntList;

    invoke-virtual {p2}, Lcom/android/carsdk/protobuf/CodedInputStream;->readInt32()I

    move-result v3

    invoke-interface {v2, v3}, Lcom/android/carsdk/protobuf/Internal$IntList;->addInt(I)V

    goto :goto_3

    .line 13886
    :cond_a
    invoke-virtual {p2, v1}, Lcom/android/carsdk/protobuf/CodedInputStream;->popLimit(I)V

    goto/16 :goto_1

    .line 13869
    :sswitch_7
    iget-object v1, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDrivingData;->curFloor_:Lcom/android/carsdk/protobuf/Internal$IntList;

    invoke-interface {v1}, Lcom/android/carsdk/protobuf/Internal$IntList;->isModifiable()Z

    move-result v1

    if-nez v1, :cond_b

    .line 13870
    iget-object v1, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDrivingData;->curFloor_:Lcom/android/carsdk/protobuf/Internal$IntList;

    .line 13871
    invoke-static {v1}, Lcom/android/carsdk/protobuf/GeneratedMessageLite;->mutableCopy(Lcom/android/carsdk/protobuf/Internal$IntList;)Lcom/android/carsdk/protobuf/Internal$IntList;

    move-result-object v1

    iput-object v1, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDrivingData;->curFloor_:Lcom/android/carsdk/protobuf/Internal$IntList;

    .line 13873
    :cond_b
    iget-object v1, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDrivingData;->curFloor_:Lcom/android/carsdk/protobuf/Internal$IntList;

    invoke-virtual {p2}, Lcom/android/carsdk/protobuf/CodedInputStream;->readInt32()I

    move-result v2

    invoke-interface {v1, v2}, Lcom/android/carsdk/protobuf/Internal$IntList;->addInt(I)V

    goto/16 :goto_1

    .line 13860
    :sswitch_8
    iget-object v1, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDrivingData;->lanelines_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    invoke-interface {v1}, Lcom/android/carsdk/protobuf/Internal$ProtobufList;->isModifiable()Z

    move-result v1

    if-nez v1, :cond_c

    .line 13861
    iget-object v1, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDrivingData;->lanelines_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    .line 13862
    invoke-static {v1}, Lcom/android/carsdk/protobuf/GeneratedMessageLite;->mutableCopy(Lcom/android/carsdk/protobuf/Internal$ProtobufList;)Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    move-result-object v1

    iput-object v1, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDrivingData;->lanelines_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    .line 13864
    :cond_c
    iget-object v1, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDrivingData;->lanelines_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    .line 13865
    invoke-static {}, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApLaneLineInfo;->parser()Lcom/android/carsdk/protobuf/Parser;

    move-result-object v2

    invoke-virtual {p2, v2, p3}, Lcom/android/carsdk/protobuf/CodedInputStream;->readMessage(Lcom/android/carsdk/protobuf/Parser;Lcom/android/carsdk/protobuf/ExtensionRegistryLite;)Lcom/android/carsdk/protobuf/MessageLite;

    move-result-object v2

    check-cast v2, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApLaneLineInfo;

    .line 13864
    invoke-interface {v1, v2}, Lcom/android/carsdk/protobuf/Internal$ProtobufList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 13851
    :sswitch_9
    iget-object v1, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDrivingData;->obj_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    invoke-interface {v1}, Lcom/android/carsdk/protobuf/Internal$ProtobufList;->isModifiable()Z

    move-result v1

    if-nez v1, :cond_d

    .line 13852
    iget-object v1, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDrivingData;->obj_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    .line 13853
    invoke-static {v1}, Lcom/android/carsdk/protobuf/GeneratedMessageLite;->mutableCopy(Lcom/android/carsdk/protobuf/Internal$ProtobufList;)Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    move-result-object v1

    iput-object v1, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDrivingData;->obj_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    .line 13855
    :cond_d
    iget-object v1, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDrivingData;->obj_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    .line 13856
    invoke-static {}, Landroid/car/hardware/xpu/XpuApEssentialMsg$StripObstacle;->parser()Lcom/android/carsdk/protobuf/Parser;

    move-result-object v2

    invoke-virtual {p2, v2, p3}, Lcom/android/carsdk/protobuf/CodedInputStream;->readMessage(Lcom/android/carsdk/protobuf/Parser;Lcom/android/carsdk/protobuf/ExtensionRegistryLite;)Lcom/android/carsdk/protobuf/MessageLite;

    move-result-object v2

    check-cast v2, Landroid/car/hardware/xpu/XpuApEssentialMsg$StripObstacle;

    .line 13855
    invoke-interface {v1, v2}, Lcom/android/carsdk/protobuf/Internal$ProtobufList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 13842
    :sswitch_a
    iget-object v1, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDrivingData;->slot_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    invoke-interface {v1}, Lcom/android/carsdk/protobuf/Internal$ProtobufList;->isModifiable()Z

    move-result v1

    if-nez v1, :cond_e

    .line 13843
    iget-object v1, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDrivingData;->slot_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    .line 13844
    invoke-static {v1}, Lcom/android/carsdk/protobuf/GeneratedMessageLite;->mutableCopy(Lcom/android/carsdk/protobuf/Internal$ProtobufList;)Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    move-result-object v1

    iput-object v1, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDrivingData;->slot_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    .line 13846
    :cond_e
    iget-object v1, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDrivingData;->slot_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    .line 13847
    invoke-static {}, Landroid/car/hardware/xpu/XpuApEssentialMsg$Slot;->parser()Lcom/android/carsdk/protobuf/Parser;

    move-result-object v2

    invoke-virtual {p2, v2, p3}, Lcom/android/carsdk/protobuf/CodedInputStream;->readMessage(Lcom/android/carsdk/protobuf/Parser;Lcom/android/carsdk/protobuf/ExtensionRegistryLite;)Lcom/android/carsdk/protobuf/MessageLite;

    move-result-object v2

    check-cast v2, Landroid/car/hardware/xpu/XpuApEssentialMsg$Slot;

    .line 13846
    invoke-interface {v1, v2}, Lcom/android/carsdk/protobuf/Internal$ProtobufList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 13830
    :sswitch_b
    iget-object v1, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDrivingData;->location_:Landroid/car/hardware/xpu/XpuApEssentialMsg$Location;

    if-eqz v1, :cond_f

    .line 13831
    invoke-virtual {v1}, Landroid/car/hardware/xpu/XpuApEssentialMsg$Location;->toBuilder()Lcom/android/carsdk/protobuf/GeneratedMessageLite$Builder;

    move-result-object v1

    check-cast v1, Landroid/car/hardware/xpu/XpuApEssentialMsg$Location$Builder;

    goto :goto_4

    :cond_f
    move-object v1, v0

    .line 13833
    :goto_4
    invoke-static {}, Landroid/car/hardware/xpu/XpuApEssentialMsg$Location;->parser()Lcom/android/carsdk/protobuf/Parser;

    move-result-object v2

    invoke-virtual {p2, v2, p3}, Lcom/android/carsdk/protobuf/CodedInputStream;->readMessage(Lcom/android/carsdk/protobuf/Parser;Lcom/android/carsdk/protobuf/ExtensionRegistryLite;)Lcom/android/carsdk/protobuf/MessageLite;

    move-result-object v2

    check-cast v2, Landroid/car/hardware/xpu/XpuApEssentialMsg$Location;

    iput-object v2, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDrivingData;->location_:Landroid/car/hardware/xpu/XpuApEssentialMsg$Location;

    if-eqz v1, :cond_2

    .line 13835
    invoke-virtual {v1, v2}, Landroid/car/hardware/xpu/XpuApEssentialMsg$Location$Builder;->mergeFrom(Lcom/android/carsdk/protobuf/GeneratedMessageLite;)Lcom/android/carsdk/protobuf/GeneratedMessageLite$Builder;

    .line 13836
    invoke-virtual {v1}, Landroid/car/hardware/xpu/XpuApEssentialMsg$Location$Builder;->buildPartial()Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object v1

    check-cast v1, Landroid/car/hardware/xpu/XpuApEssentialMsg$Location;

    iput-object v1, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDrivingData;->location_:Landroid/car/hardware/xpu/XpuApEssentialMsg$Location;
    :try_end_1
    .catch Lcom/android/carsdk/protobuf/InvalidProtocolBufferException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto/16 :goto_1

    :goto_5
    :sswitch_c
    move p1, v2

    goto/16 :goto_1

    :goto_6
    if-nez v1, :cond_2

    goto :goto_5

    :catchall_1
    move-exception p1

    goto :goto_7

    :catch_0
    move-exception p1

    .line 13952
    :try_start_2
    new-instance p2, Ljava/lang/RuntimeException;

    new-instance p3, Lcom/android/carsdk/protobuf/InvalidProtocolBufferException;

    .line 13954
    invoke-virtual {p1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p3, p1}, Lcom/android/carsdk/protobuf/InvalidProtocolBufferException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, p0}, Lcom/android/carsdk/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/android/carsdk/protobuf/MessageLite;)Lcom/android/carsdk/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p2

    :catch_1
    move-exception p1

    .line 13950
    new-instance p2, Ljava/lang/RuntimeException;

    invoke-virtual {p1, p0}, Lcom/android/carsdk/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/android/carsdk/protobuf/MessageLite;)Lcom/android/carsdk/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 13955
    :goto_7
    throw p1

    .line 13959
    :cond_10
    :pswitch_2
    sget-object p1, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDrivingData;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDrivingData;

    return-object p1

    .line 13790
    :pswitch_3
    check-cast p2, Lcom/android/carsdk/protobuf/GeneratedMessageLite$Visitor;

    .line 13791
    check-cast p3, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDrivingData;

    .line 13792
    iget-object p1, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDrivingData;->location_:Landroid/car/hardware/xpu/XpuApEssentialMsg$Location;

    iget-object v0, p3, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDrivingData;->location_:Landroid/car/hardware/xpu/XpuApEssentialMsg$Location;

    invoke-interface {p2, p1, v0}, Lcom/android/carsdk/protobuf/GeneratedMessageLite$Visitor;->visitMessage(Lcom/android/carsdk/protobuf/MessageLite;Lcom/android/carsdk/protobuf/MessageLite;)Lcom/android/carsdk/protobuf/MessageLite;

    move-result-object p1

    check-cast p1, Landroid/car/hardware/xpu/XpuApEssentialMsg$Location;

    iput-object p1, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDrivingData;->location_:Landroid/car/hardware/xpu/XpuApEssentialMsg$Location;

    .line 13793
    iget-object p1, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDrivingData;->slot_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    iget-object v0, p3, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDrivingData;->slot_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    invoke-interface {p2, p1, v0}, Lcom/android/carsdk/protobuf/GeneratedMessageLite$Visitor;->visitList(Lcom/android/carsdk/protobuf/Internal$ProtobufList;Lcom/android/carsdk/protobuf/Internal$ProtobufList;)Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    move-result-object p1

    iput-object p1, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDrivingData;->slot_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    .line 13794
    iget-object p1, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDrivingData;->obj_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    iget-object v0, p3, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDrivingData;->obj_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    invoke-interface {p2, p1, v0}, Lcom/android/carsdk/protobuf/GeneratedMessageLite$Visitor;->visitList(Lcom/android/carsdk/protobuf/Internal$ProtobufList;Lcom/android/carsdk/protobuf/Internal$ProtobufList;)Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    move-result-object p1

    iput-object p1, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDrivingData;->obj_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    .line 13795
    iget-object p1, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDrivingData;->lanelines_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    iget-object v0, p3, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDrivingData;->lanelines_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    invoke-interface {p2, p1, v0}, Lcom/android/carsdk/protobuf/GeneratedMessageLite$Visitor;->visitList(Lcom/android/carsdk/protobuf/Internal$ProtobufList;Lcom/android/carsdk/protobuf/Internal$ProtobufList;)Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    move-result-object p1

    iput-object p1, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDrivingData;->lanelines_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    .line 13796
    iget-object p1, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDrivingData;->curFloor_:Lcom/android/carsdk/protobuf/Internal$IntList;

    iget-object v0, p3, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDrivingData;->curFloor_:Lcom/android/carsdk/protobuf/Internal$IntList;

    invoke-interface {p2, p1, v0}, Lcom/android/carsdk/protobuf/GeneratedMessageLite$Visitor;->visitIntList(Lcom/android/carsdk/protobuf/Internal$IntList;Lcom/android/carsdk/protobuf/Internal$IntList;)Lcom/android/carsdk/protobuf/Internal$IntList;

    move-result-object p1

    iput-object p1, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDrivingData;->curFloor_:Lcom/android/carsdk/protobuf/Internal$IntList;

    .line 13797
    iget-object p1, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDrivingData;->trajectory_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    iget-object v0, p3, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDrivingData;->trajectory_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    invoke-interface {p2, p1, v0}, Lcom/android/carsdk/protobuf/GeneratedMessageLite$Visitor;->visitList(Lcom/android/carsdk/protobuf/Internal$ProtobufList;Lcom/android/carsdk/protobuf/Internal$ProtobufList;)Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    move-result-object p1

    iput-object p1, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDrivingData;->trajectory_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    .line 13798
    iget-object p1, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDrivingData;->dynObj_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    iget-object v0, p3, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDrivingData;->dynObj_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    invoke-interface {p2, p1, v0}, Lcom/android/carsdk/protobuf/GeneratedMessageLite$Visitor;->visitList(Lcom/android/carsdk/protobuf/Internal$ProtobufList;Lcom/android/carsdk/protobuf/Internal$ProtobufList;)Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    move-result-object p1

    iput-object p1, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDrivingData;->dynObj_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    .line 13799
    iget-object p1, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDrivingData;->essentialMsg_:Landroid/car/hardware/xpu/XpuApEssentialMsg$ApEssentialMsg;

    iget-object v0, p3, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDrivingData;->essentialMsg_:Landroid/car/hardware/xpu/XpuApEssentialMsg$ApEssentialMsg;

    invoke-interface {p2, p1, v0}, Lcom/android/carsdk/protobuf/GeneratedMessageLite$Visitor;->visitMessage(Lcom/android/carsdk/protobuf/MessageLite;Lcom/android/carsdk/protobuf/MessageLite;)Lcom/android/carsdk/protobuf/MessageLite;

    move-result-object p1

    check-cast p1, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApEssentialMsg;

    iput-object p1, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDrivingData;->essentialMsg_:Landroid/car/hardware/xpu/XpuApEssentialMsg$ApEssentialMsg;

    .line 13800
    iget-object p1, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDrivingData;->slotAvm_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    iget-object v0, p3, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDrivingData;->slotAvm_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    invoke-interface {p2, p1, v0}, Lcom/android/carsdk/protobuf/GeneratedMessageLite$Visitor;->visitList(Lcom/android/carsdk/protobuf/Internal$ProtobufList;Lcom/android/carsdk/protobuf/Internal$ProtobufList;)Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    move-result-object p1

    iput-object p1, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDrivingData;->slotAvm_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    .line 13801
    iget-object p1, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDrivingData;->spdBump_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    iget-object v0, p3, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDrivingData;->spdBump_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    invoke-interface {p2, p1, v0}, Lcom/android/carsdk/protobuf/GeneratedMessageLite$Visitor;->visitList(Lcom/android/carsdk/protobuf/Internal$ProtobufList;Lcom/android/carsdk/protobuf/Internal$ProtobufList;)Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    move-result-object p1

    iput-object p1, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDrivingData;->spdBump_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    .line 13802
    iget-object p1, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDrivingData;->slotIdMapping_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    iget-object v0, p3, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDrivingData;->slotIdMapping_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    invoke-interface {p2, p1, v0}, Lcom/android/carsdk/protobuf/GeneratedMessageLite$Visitor;->visitList(Lcom/android/carsdk/protobuf/Internal$ProtobufList;Lcom/android/carsdk/protobuf/Internal$ProtobufList;)Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    move-result-object p1

    iput-object p1, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDrivingData;->slotIdMapping_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    .line 13803
    sget-object p1, Lcom/android/carsdk/protobuf/GeneratedMessageLite$MergeFromVisitor;->INSTANCE:Lcom/android/carsdk/protobuf/GeneratedMessageLite$MergeFromVisitor;

    if-ne p2, p1, :cond_11

    .line 13805
    iget p1, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDrivingData;->bitField0_:I

    iget p2, p3, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDrivingData;->bitField0_:I

    or-int/2addr p1, p2

    iput p1, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDrivingData;->bitField0_:I

    :cond_11
    return-object p0

    .line 13787
    :pswitch_4
    new-instance p1, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDrivingData$Builder;

    invoke-direct {p1, v0}, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDrivingData$Builder;-><init>(Landroid/car/hardware/xpu/XpuApEssentialMsg$1;)V

    return-object p1

    .line 13775
    :pswitch_5
    iget-object p1, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDrivingData;->slot_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    invoke-interface {p1}, Lcom/android/carsdk/protobuf/Internal$ProtobufList;->makeImmutable()V

    .line 13776
    iget-object p1, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDrivingData;->obj_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    invoke-interface {p1}, Lcom/android/carsdk/protobuf/Internal$ProtobufList;->makeImmutable()V

    .line 13777
    iget-object p1, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDrivingData;->lanelines_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    invoke-interface {p1}, Lcom/android/carsdk/protobuf/Internal$ProtobufList;->makeImmutable()V

    .line 13778
    iget-object p1, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDrivingData;->curFloor_:Lcom/android/carsdk/protobuf/Internal$IntList;

    invoke-interface {p1}, Lcom/android/carsdk/protobuf/Internal$IntList;->makeImmutable()V

    .line 13779
    iget-object p1, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDrivingData;->trajectory_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    invoke-interface {p1}, Lcom/android/carsdk/protobuf/Internal$ProtobufList;->makeImmutable()V

    .line 13780
    iget-object p1, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDrivingData;->dynObj_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    invoke-interface {p1}, Lcom/android/carsdk/protobuf/Internal$ProtobufList;->makeImmutable()V

    .line 13781
    iget-object p1, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDrivingData;->slotAvm_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    invoke-interface {p1}, Lcom/android/carsdk/protobuf/Internal$ProtobufList;->makeImmutable()V

    .line 13782
    iget-object p1, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDrivingData;->spdBump_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    invoke-interface {p1}, Lcom/android/carsdk/protobuf/Internal$ProtobufList;->makeImmutable()V

    .line 13783
    iget-object p1, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDrivingData;->slotIdMapping_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    invoke-interface {p1}, Lcom/android/carsdk/protobuf/Internal$ProtobufList;->makeImmutable()V

    return-object v0

    .line 13772
    :pswitch_6
    sget-object p1, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDrivingData;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDrivingData;

    return-object p1

    .line 13769
    :pswitch_7
    new-instance p1, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDrivingData;

    invoke-direct {p1}, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDrivingData;-><init>()V

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
        0xa -> :sswitch_b
        0x12 -> :sswitch_a
        0x1a -> :sswitch_9
        0x22 -> :sswitch_8
        0x28 -> :sswitch_7
        0x2a -> :sswitch_6
        0x32 -> :sswitch_5
        0x3a -> :sswitch_4
        0x42 -> :sswitch_3
        0x4a -> :sswitch_2
        0x52 -> :sswitch_1
        0x5a -> :sswitch_0
    .end sparse-switch
.end method

.method public getCurFloor(I)I
    .locals 1

    .line 11880
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDrivingData;->curFloor_:Lcom/android/carsdk/protobuf/Internal$IntList;

    invoke-interface {v0, p1}, Lcom/android/carsdk/protobuf/Internal$IntList;->getInt(I)I

    move-result p1

    return p1
.end method

.method public getCurFloorCount()I
    .locals 1

    .line 11870
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDrivingData;->curFloor_:Lcom/android/carsdk/protobuf/Internal$IntList;

    invoke-interface {v0}, Lcom/android/carsdk/protobuf/Internal$IntList;->size()I

    move-result v0

    return v0
.end method

.method public getCurFloorList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 11860
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDrivingData;->curFloor_:Lcom/android/carsdk/protobuf/Internal$IntList;

    return-object v0
.end method

.method public getDynObj(I)Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDynaObject;
    .locals 1

    .line 12080
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDrivingData;->dynObj_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1}, Lcom/android/carsdk/protobuf/Internal$ProtobufList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDynaObject;

    return-object p1
.end method

.method public getDynObjCount()I
    .locals 1

    .line 12074
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDrivingData;->dynObj_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    invoke-interface {v0}, Lcom/android/carsdk/protobuf/Internal$ProtobufList;->size()I

    move-result v0

    return v0
.end method

.method public getDynObjList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDynaObject;",
            ">;"
        }
    .end annotation

    .line 12061
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDrivingData;->dynObj_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    return-object v0
.end method

.method public getDynObjOrBuilder(I)Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDynaObjectOrBuilder;
    .locals 1

    .line 12087
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDrivingData;->dynObj_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1}, Lcom/android/carsdk/protobuf/Internal$ProtobufList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDynaObjectOrBuilder;

    return-object p1
.end method

.method public getDynObjOrBuilderList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "+",
            "Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDynaObjectOrBuilder;",
            ">;"
        }
    .end annotation

    .line 12068
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDrivingData;->dynObj_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    return-object v0
.end method

.method public getEssentialMsg()Landroid/car/hardware/xpu/XpuApEssentialMsg$ApEssentialMsg;
    .locals 1

    .line 12187
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDrivingData;->essentialMsg_:Landroid/car/hardware/xpu/XpuApEssentialMsg$ApEssentialMsg;

    if-nez v0, :cond_0

    invoke-static {}, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApEssentialMsg;->getDefaultInstance()Landroid/car/hardware/xpu/XpuApEssentialMsg$ApEssentialMsg;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public getLanelines(I)Landroid/car/hardware/xpu/XpuApEssentialMsg$ApLaneLineInfo;
    .locals 1

    .line 11754
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDrivingData;->lanelines_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1}, Lcom/android/carsdk/protobuf/Internal$ProtobufList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApLaneLineInfo;

    return-object p1
.end method

.method public getLanelinesCount()I
    .locals 1

    .line 11748
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDrivingData;->lanelines_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    invoke-interface {v0}, Lcom/android/carsdk/protobuf/Internal$ProtobufList;->size()I

    move-result v0

    return v0
.end method

.method public getLanelinesList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/car/hardware/xpu/XpuApEssentialMsg$ApLaneLineInfo;",
            ">;"
        }
    .end annotation

    .line 11735
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDrivingData;->lanelines_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    return-object v0
.end method

.method public getLanelinesOrBuilder(I)Landroid/car/hardware/xpu/XpuApEssentialMsg$ApLaneLineInfoOrBuilder;
    .locals 1

    .line 11761
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDrivingData;->lanelines_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1}, Lcom/android/carsdk/protobuf/Internal$ProtobufList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApLaneLineInfoOrBuilder;

    return-object p1
.end method

.method public getLanelinesOrBuilderList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "+",
            "Landroid/car/hardware/xpu/XpuApEssentialMsg$ApLaneLineInfoOrBuilder;",
            ">;"
        }
    .end annotation

    .line 11742
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDrivingData;->lanelines_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    return-object v0
.end method

.method public getLocation()Landroid/car/hardware/xpu/XpuApEssentialMsg$Location;
    .locals 1

    .line 11393
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDrivingData;->location_:Landroid/car/hardware/xpu/XpuApEssentialMsg$Location;

    if-nez v0, :cond_0

    invoke-static {}, Landroid/car/hardware/xpu/XpuApEssentialMsg$Location;->getDefaultInstance()Landroid/car/hardware/xpu/XpuApEssentialMsg$Location;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public getObj(I)Landroid/car/hardware/xpu/XpuApEssentialMsg$StripObstacle;
    .locals 1

    .line 11594
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDrivingData;->obj_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1}, Lcom/android/carsdk/protobuf/Internal$ProtobufList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/car/hardware/xpu/XpuApEssentialMsg$StripObstacle;

    return-object p1
.end method

.method public getObjCount()I
    .locals 1

    .line 11584
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDrivingData;->obj_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    invoke-interface {v0}, Lcom/android/carsdk/protobuf/Internal$ProtobufList;->size()I

    move-result v0

    return v0
.end method

.method public getObjList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/car/hardware/xpu/XpuApEssentialMsg$StripObstacle;",
            ">;"
        }
    .end annotation

    .line 11563
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDrivingData;->obj_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    return-object v0
.end method

.method public getObjOrBuilder(I)Landroid/car/hardware/xpu/XpuApEssentialMsg$StripObstacleOrBuilder;
    .locals 1

    .line 11605
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDrivingData;->obj_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1}, Lcom/android/carsdk/protobuf/Internal$ProtobufList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/car/hardware/xpu/XpuApEssentialMsg$StripObstacleOrBuilder;

    return-object p1
.end method

.method public getObjOrBuilderList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "+",
            "Landroid/car/hardware/xpu/XpuApEssentialMsg$StripObstacleOrBuilder;",
            ">;"
        }
    .end annotation

    .line 11574
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDrivingData;->obj_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    return-object v0
.end method

.method public getSerializedSize()I
    .locals 6

    .line 12626
    iget v0, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDrivingData;->memoizedSerializedSize:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    return v0

    .line 12630
    :cond_0
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDrivingData;->location_:Landroid/car/hardware/xpu/XpuApEssentialMsg$Location;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    .line 12632
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDrivingData;->getLocation()Landroid/car/hardware/xpu/XpuApEssentialMsg$Location;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/android/carsdk/protobuf/CodedOutputStream;->computeMessageSize(ILcom/android/carsdk/protobuf/MessageLite;)I

    move-result v0

    add-int/2addr v0, v2

    goto :goto_0

    :cond_1
    move v0, v2

    :goto_0
    move v3, v2

    .line 12634
    :goto_1
    iget-object v4, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDrivingData;->slot_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    invoke-interface {v4}, Lcom/android/carsdk/protobuf/Internal$ProtobufList;->size()I

    move-result v4

    if-ge v3, v4, :cond_2

    const/4 v4, 0x2

    .line 12635
    iget-object v5, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDrivingData;->slot_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    .line 12636
    invoke-interface {v5, v3}, Lcom/android/carsdk/protobuf/Internal$ProtobufList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/carsdk/protobuf/MessageLite;

    invoke-static {v4, v5}, Lcom/android/carsdk/protobuf/CodedOutputStream;->computeMessageSize(ILcom/android/carsdk/protobuf/MessageLite;)I

    move-result v4

    add-int/2addr v0, v4

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_2
    move v3, v2

    .line 12638
    :goto_2
    iget-object v4, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDrivingData;->obj_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    invoke-interface {v4}, Lcom/android/carsdk/protobuf/Internal$ProtobufList;->size()I

    move-result v4

    if-ge v3, v4, :cond_3

    const/4 v4, 0x3

    .line 12639
    iget-object v5, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDrivingData;->obj_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    .line 12640
    invoke-interface {v5, v3}, Lcom/android/carsdk/protobuf/Internal$ProtobufList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/carsdk/protobuf/MessageLite;

    invoke-static {v4, v5}, Lcom/android/carsdk/protobuf/CodedOutputStream;->computeMessageSize(ILcom/android/carsdk/protobuf/MessageLite;)I

    move-result v4

    add-int/2addr v0, v4

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_3
    move v3, v2

    .line 12642
    :goto_3
    iget-object v4, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDrivingData;->lanelines_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    invoke-interface {v4}, Lcom/android/carsdk/protobuf/Internal$ProtobufList;->size()I

    move-result v4

    if-ge v3, v4, :cond_4

    const/4 v4, 0x4

    .line 12643
    iget-object v5, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDrivingData;->lanelines_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    .line 12644
    invoke-interface {v5, v3}, Lcom/android/carsdk/protobuf/Internal$ProtobufList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/carsdk/protobuf/MessageLite;

    invoke-static {v4, v5}, Lcom/android/carsdk/protobuf/CodedOutputStream;->computeMessageSize(ILcom/android/carsdk/protobuf/MessageLite;)I

    move-result v4

    add-int/2addr v0, v4

    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    :cond_4
    move v3, v2

    move v4, v3

    .line 12648
    :goto_4
    iget-object v5, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDrivingData;->curFloor_:Lcom/android/carsdk/protobuf/Internal$IntList;

    invoke-interface {v5}, Lcom/android/carsdk/protobuf/Internal$IntList;->size()I

    move-result v5

    if-ge v3, v5, :cond_5

    .line 12649
    iget-object v5, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDrivingData;->curFloor_:Lcom/android/carsdk/protobuf/Internal$IntList;

    .line 12650
    invoke-interface {v5, v3}, Lcom/android/carsdk/protobuf/Internal$IntList;->getInt(I)I

    move-result v5

    invoke-static {v5}, Lcom/android/carsdk/protobuf/CodedOutputStream;->computeInt32SizeNoTag(I)I

    move-result v5

    add-int/2addr v4, v5

    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    :cond_5
    add-int/2addr v0, v4

    .line 12653
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDrivingData;->getCurFloorList()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    mul-int/2addr v3, v1

    add-int/2addr v0, v3

    move v1, v2

    .line 12655
    :goto_5
    iget-object v3, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDrivingData;->trajectory_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    invoke-interface {v3}, Lcom/android/carsdk/protobuf/Internal$ProtobufList;->size()I

    move-result v3

    if-ge v1, v3, :cond_6

    const/4 v3, 0x6

    .line 12656
    iget-object v4, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDrivingData;->trajectory_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    .line 12657
    invoke-interface {v4, v1}, Lcom/android/carsdk/protobuf/Internal$ProtobufList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/carsdk/protobuf/MessageLite;

    invoke-static {v3, v4}, Lcom/android/carsdk/protobuf/CodedOutputStream;->computeMessageSize(ILcom/android/carsdk/protobuf/MessageLite;)I

    move-result v3

    add-int/2addr v0, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    :cond_6
    move v1, v2

    .line 12659
    :goto_6
    iget-object v3, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDrivingData;->dynObj_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    invoke-interface {v3}, Lcom/android/carsdk/protobuf/Internal$ProtobufList;->size()I

    move-result v3

    if-ge v1, v3, :cond_7

    const/4 v3, 0x7

    .line 12660
    iget-object v4, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDrivingData;->dynObj_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    .line 12661
    invoke-interface {v4, v1}, Lcom/android/carsdk/protobuf/Internal$ProtobufList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/carsdk/protobuf/MessageLite;

    invoke-static {v3, v4}, Lcom/android/carsdk/protobuf/CodedOutputStream;->computeMessageSize(ILcom/android/carsdk/protobuf/MessageLite;)I

    move-result v3

    add-int/2addr v0, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    .line 12663
    :cond_7
    iget-object v1, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDrivingData;->essentialMsg_:Landroid/car/hardware/xpu/XpuApEssentialMsg$ApEssentialMsg;

    if-eqz v1, :cond_8

    const/16 v1, 0x8

    .line 12665
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDrivingData;->getEssentialMsg()Landroid/car/hardware/xpu/XpuApEssentialMsg$ApEssentialMsg;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/android/carsdk/protobuf/CodedOutputStream;->computeMessageSize(ILcom/android/carsdk/protobuf/MessageLite;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_8
    move v1, v2

    .line 12667
    :goto_7
    iget-object v3, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDrivingData;->slotAvm_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    invoke-interface {v3}, Lcom/android/carsdk/protobuf/Internal$ProtobufList;->size()I

    move-result v3

    if-ge v1, v3, :cond_9

    const/16 v3, 0x9

    .line 12668
    iget-object v4, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDrivingData;->slotAvm_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    .line 12669
    invoke-interface {v4, v1}, Lcom/android/carsdk/protobuf/Internal$ProtobufList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/carsdk/protobuf/MessageLite;

    invoke-static {v3, v4}, Lcom/android/carsdk/protobuf/CodedOutputStream;->computeMessageSize(ILcom/android/carsdk/protobuf/MessageLite;)I

    move-result v3

    add-int/2addr v0, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    :cond_9
    move v1, v2

    .line 12671
    :goto_8
    iget-object v3, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDrivingData;->spdBump_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    invoke-interface {v3}, Lcom/android/carsdk/protobuf/Internal$ProtobufList;->size()I

    move-result v3

    if-ge v1, v3, :cond_a

    const/16 v3, 0xa

    .line 12672
    iget-object v4, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDrivingData;->spdBump_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    .line 12673
    invoke-interface {v4, v1}, Lcom/android/carsdk/protobuf/Internal$ProtobufList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/carsdk/protobuf/MessageLite;

    invoke-static {v3, v4}, Lcom/android/carsdk/protobuf/CodedOutputStream;->computeMessageSize(ILcom/android/carsdk/protobuf/MessageLite;)I

    move-result v3

    add-int/2addr v0, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    .line 12675
    :cond_a
    :goto_9
    iget-object v1, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDrivingData;->slotIdMapping_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    invoke-interface {v1}, Lcom/android/carsdk/protobuf/Internal$ProtobufList;->size()I

    move-result v1

    if-ge v2, v1, :cond_b

    const/16 v1, 0xb

    .line 12676
    iget-object v3, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDrivingData;->slotIdMapping_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    .line 12677
    invoke-interface {v3, v2}, Lcom/android/carsdk/protobuf/Internal$ProtobufList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/carsdk/protobuf/MessageLite;

    invoke-static {v1, v3}, Lcom/android/carsdk/protobuf/CodedOutputStream;->computeMessageSize(ILcom/android/carsdk/protobuf/MessageLite;)I

    move-result v1

    add-int/2addr v0, v1

    add-int/lit8 v2, v2, 0x1

    goto :goto_9

    .line 12679
    :cond_b
    iput v0, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDrivingData;->memoizedSerializedSize:I

    return v0
.end method

.method public getSlot(I)Landroid/car/hardware/xpu/XpuApEssentialMsg$Slot;
    .locals 1

    .line 11458
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDrivingData;->slot_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1}, Lcom/android/carsdk/protobuf/Internal$ProtobufList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/car/hardware/xpu/XpuApEssentialMsg$Slot;

    return-object p1
.end method

.method public getSlotAvm(I)Landroid/car/hardware/xpu/XpuApEssentialMsg$Slot;
    .locals 1

    .line 12252
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDrivingData;->slotAvm_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1}, Lcom/android/carsdk/protobuf/Internal$ProtobufList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/car/hardware/xpu/XpuApEssentialMsg$Slot;

    return-object p1
.end method

.method public getSlotAvmCount()I
    .locals 1

    .line 12246
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDrivingData;->slotAvm_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    invoke-interface {v0}, Lcom/android/carsdk/protobuf/Internal$ProtobufList;->size()I

    move-result v0

    return v0
.end method

.method public getSlotAvmList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/car/hardware/xpu/XpuApEssentialMsg$Slot;",
            ">;"
        }
    .end annotation

    .line 12233
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDrivingData;->slotAvm_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    return-object v0
.end method

.method public getSlotAvmOrBuilder(I)Landroid/car/hardware/xpu/XpuApEssentialMsg$SlotOrBuilder;
    .locals 1

    .line 12259
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDrivingData;->slotAvm_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1}, Lcom/android/carsdk/protobuf/Internal$ProtobufList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/car/hardware/xpu/XpuApEssentialMsg$SlotOrBuilder;

    return-object p1
.end method

.method public getSlotAvmOrBuilderList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "+",
            "Landroid/car/hardware/xpu/XpuApEssentialMsg$SlotOrBuilder;",
            ">;"
        }
    .end annotation

    .line 12240
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDrivingData;->slotAvm_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    return-object v0
.end method

.method public getSlotCount()I
    .locals 1

    .line 11452
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDrivingData;->slot_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    invoke-interface {v0}, Lcom/android/carsdk/protobuf/Internal$ProtobufList;->size()I

    move-result v0

    return v0
.end method

.method public getSlotIdMapping(I)Landroid/car/hardware/xpu/XpuApEssentialMsg$SlotIdMapping;
    .locals 1

    .line 12492
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDrivingData;->slotIdMapping_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1}, Lcom/android/carsdk/protobuf/Internal$ProtobufList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/car/hardware/xpu/XpuApEssentialMsg$SlotIdMapping;

    return-object p1
.end method

.method public getSlotIdMappingCount()I
    .locals 1

    .line 12486
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDrivingData;->slotIdMapping_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    invoke-interface {v0}, Lcom/android/carsdk/protobuf/Internal$ProtobufList;->size()I

    move-result v0

    return v0
.end method

.method public getSlotIdMappingList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/car/hardware/xpu/XpuApEssentialMsg$SlotIdMapping;",
            ">;"
        }
    .end annotation

    .line 12473
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDrivingData;->slotIdMapping_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    return-object v0
.end method

.method public getSlotIdMappingOrBuilder(I)Landroid/car/hardware/xpu/XpuApEssentialMsg$SlotIdMappingOrBuilder;
    .locals 1

    .line 12499
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDrivingData;->slotIdMapping_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1}, Lcom/android/carsdk/protobuf/Internal$ProtobufList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/car/hardware/xpu/XpuApEssentialMsg$SlotIdMappingOrBuilder;

    return-object p1
.end method

.method public getSlotIdMappingOrBuilderList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "+",
            "Landroid/car/hardware/xpu/XpuApEssentialMsg$SlotIdMappingOrBuilder;",
            ">;"
        }
    .end annotation

    .line 12480
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDrivingData;->slotIdMapping_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    return-object v0
.end method

.method public getSlotList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/car/hardware/xpu/XpuApEssentialMsg$Slot;",
            ">;"
        }
    .end annotation

    .line 11439
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDrivingData;->slot_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    return-object v0
.end method

.method public getSlotOrBuilder(I)Landroid/car/hardware/xpu/XpuApEssentialMsg$SlotOrBuilder;
    .locals 1

    .line 11465
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDrivingData;->slot_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1}, Lcom/android/carsdk/protobuf/Internal$ProtobufList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/car/hardware/xpu/XpuApEssentialMsg$SlotOrBuilder;

    return-object p1
.end method

.method public getSlotOrBuilderList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "+",
            "Landroid/car/hardware/xpu/XpuApEssentialMsg$SlotOrBuilder;",
            ">;"
        }
    .end annotation

    .line 11446
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDrivingData;->slot_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    return-object v0
.end method

.method public getSpdBump(I)Landroid/car/hardware/xpu/XpuApEssentialMsg$TrainingSpdBump;
    .locals 1

    .line 12372
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDrivingData;->spdBump_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1}, Lcom/android/carsdk/protobuf/Internal$ProtobufList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/car/hardware/xpu/XpuApEssentialMsg$TrainingSpdBump;

    return-object p1
.end method

.method public getSpdBumpCount()I
    .locals 1

    .line 12366
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDrivingData;->spdBump_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    invoke-interface {v0}, Lcom/android/carsdk/protobuf/Internal$ProtobufList;->size()I

    move-result v0

    return v0
.end method

.method public getSpdBumpList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/car/hardware/xpu/XpuApEssentialMsg$TrainingSpdBump;",
            ">;"
        }
    .end annotation

    .line 12353
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDrivingData;->spdBump_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    return-object v0
.end method

.method public getSpdBumpOrBuilder(I)Landroid/car/hardware/xpu/XpuApEssentialMsg$TrainingSpdBumpOrBuilder;
    .locals 1

    .line 12379
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDrivingData;->spdBump_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1}, Lcom/android/carsdk/protobuf/Internal$ProtobufList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/car/hardware/xpu/XpuApEssentialMsg$TrainingSpdBumpOrBuilder;

    return-object p1
.end method

.method public getSpdBumpOrBuilderList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "+",
            "Landroid/car/hardware/xpu/XpuApEssentialMsg$TrainingSpdBumpOrBuilder;",
            ">;"
        }
    .end annotation

    .line 12360
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDrivingData;->spdBump_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    return-object v0
.end method

.method public getTrajectory(I)Landroid/car/hardware/xpu/XpuApEssentialMsg$ApTrajectoryDataType;
    .locals 1

    .line 11960
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDrivingData;->trajectory_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1}, Lcom/android/carsdk/protobuf/Internal$ProtobufList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApTrajectoryDataType;

    return-object p1
.end method

.method public getTrajectoryCount()I
    .locals 1

    .line 11954
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDrivingData;->trajectory_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    invoke-interface {v0}, Lcom/android/carsdk/protobuf/Internal$ProtobufList;->size()I

    move-result v0

    return v0
.end method

.method public getTrajectoryList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/car/hardware/xpu/XpuApEssentialMsg$ApTrajectoryDataType;",
            ">;"
        }
    .end annotation

    .line 11941
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDrivingData;->trajectory_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    return-object v0
.end method

.method public getTrajectoryOrBuilder(I)Landroid/car/hardware/xpu/XpuApEssentialMsg$ApTrajectoryDataTypeOrBuilder;
    .locals 1

    .line 11967
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDrivingData;->trajectory_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1}, Lcom/android/carsdk/protobuf/Internal$ProtobufList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApTrajectoryDataTypeOrBuilder;

    return-object p1
.end method

.method public getTrajectoryOrBuilderList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "+",
            "Landroid/car/hardware/xpu/XpuApEssentialMsg$ApTrajectoryDataTypeOrBuilder;",
            ">;"
        }
    .end annotation

    .line 11948
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDrivingData;->trajectory_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    return-object v0
.end method

.method public hasEssentialMsg()Z
    .locals 1

    .line 12181
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDrivingData;->essentialMsg_:Landroid/car/hardware/xpu/XpuApEssentialMsg$ApEssentialMsg;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasLocation()Z
    .locals 1

    .line 11387
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDrivingData;->location_:Landroid/car/hardware/xpu/XpuApEssentialMsg$Location;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public writeTo(Lcom/android/carsdk/protobuf/CodedOutputStream;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 12589
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDrivingData;->getSerializedSize()I

    .line 12590
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDrivingData;->location_:Landroid/car/hardware/xpu/XpuApEssentialMsg$Location;

    if-eqz v0, :cond_0

    .line 12591
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDrivingData;->getLocation()Landroid/car/hardware/xpu/XpuApEssentialMsg$Location;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {p1, v1, v0}, Lcom/android/carsdk/protobuf/CodedOutputStream;->writeMessage(ILcom/android/carsdk/protobuf/MessageLite;)V

    :cond_0
    const/4 v0, 0x0

    move v1, v0

    .line 12593
    :goto_0
    iget-object v2, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDrivingData;->slot_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    invoke-interface {v2}, Lcom/android/carsdk/protobuf/Internal$ProtobufList;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    const/4 v2, 0x2

    .line 12594
    iget-object v3, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDrivingData;->slot_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    invoke-interface {v3, v1}, Lcom/android/carsdk/protobuf/Internal$ProtobufList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/carsdk/protobuf/MessageLite;

    invoke-virtual {p1, v2, v3}, Lcom/android/carsdk/protobuf/CodedOutputStream;->writeMessage(ILcom/android/carsdk/protobuf/MessageLite;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    move v1, v0

    .line 12596
    :goto_1
    iget-object v2, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDrivingData;->obj_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    invoke-interface {v2}, Lcom/android/carsdk/protobuf/Internal$ProtobufList;->size()I

    move-result v2

    if-ge v1, v2, :cond_2

    const/4 v2, 0x3

    .line 12597
    iget-object v3, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDrivingData;->obj_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    invoke-interface {v3, v1}, Lcom/android/carsdk/protobuf/Internal$ProtobufList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/carsdk/protobuf/MessageLite;

    invoke-virtual {p1, v2, v3}, Lcom/android/carsdk/protobuf/CodedOutputStream;->writeMessage(ILcom/android/carsdk/protobuf/MessageLite;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_2
    move v1, v0

    .line 12599
    :goto_2
    iget-object v2, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDrivingData;->lanelines_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    invoke-interface {v2}, Lcom/android/carsdk/protobuf/Internal$ProtobufList;->size()I

    move-result v2

    if-ge v1, v2, :cond_3

    const/4 v2, 0x4

    .line 12600
    iget-object v3, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDrivingData;->lanelines_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    invoke-interface {v3, v1}, Lcom/android/carsdk/protobuf/Internal$ProtobufList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/carsdk/protobuf/MessageLite;

    invoke-virtual {p1, v2, v3}, Lcom/android/carsdk/protobuf/CodedOutputStream;->writeMessage(ILcom/android/carsdk/protobuf/MessageLite;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_3
    move v1, v0

    .line 12602
    :goto_3
    iget-object v2, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDrivingData;->curFloor_:Lcom/android/carsdk/protobuf/Internal$IntList;

    invoke-interface {v2}, Lcom/android/carsdk/protobuf/Internal$IntList;->size()I

    move-result v2

    if-ge v1, v2, :cond_4

    const/4 v2, 0x5

    .line 12603
    iget-object v3, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDrivingData;->curFloor_:Lcom/android/carsdk/protobuf/Internal$IntList;

    invoke-interface {v3, v1}, Lcom/android/carsdk/protobuf/Internal$IntList;->getInt(I)I

    move-result v3

    invoke-virtual {p1, v2, v3}, Lcom/android/carsdk/protobuf/CodedOutputStream;->writeInt32(II)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_4
    move v1, v0

    .line 12605
    :goto_4
    iget-object v2, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDrivingData;->trajectory_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    invoke-interface {v2}, Lcom/android/carsdk/protobuf/Internal$ProtobufList;->size()I

    move-result v2

    if-ge v1, v2, :cond_5

    const/4 v2, 0x6

    .line 12606
    iget-object v3, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDrivingData;->trajectory_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    invoke-interface {v3, v1}, Lcom/android/carsdk/protobuf/Internal$ProtobufList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/carsdk/protobuf/MessageLite;

    invoke-virtual {p1, v2, v3}, Lcom/android/carsdk/protobuf/CodedOutputStream;->writeMessage(ILcom/android/carsdk/protobuf/MessageLite;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    :cond_5
    move v1, v0

    .line 12608
    :goto_5
    iget-object v2, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDrivingData;->dynObj_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    invoke-interface {v2}, Lcom/android/carsdk/protobuf/Internal$ProtobufList;->size()I

    move-result v2

    if-ge v1, v2, :cond_6

    const/4 v2, 0x7

    .line 12609
    iget-object v3, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDrivingData;->dynObj_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    invoke-interface {v3, v1}, Lcom/android/carsdk/protobuf/Internal$ProtobufList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/carsdk/protobuf/MessageLite;

    invoke-virtual {p1, v2, v3}, Lcom/android/carsdk/protobuf/CodedOutputStream;->writeMessage(ILcom/android/carsdk/protobuf/MessageLite;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 12611
    :cond_6
    iget-object v1, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDrivingData;->essentialMsg_:Landroid/car/hardware/xpu/XpuApEssentialMsg$ApEssentialMsg;

    if-eqz v1, :cond_7

    const/16 v1, 0x8

    .line 12612
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDrivingData;->getEssentialMsg()Landroid/car/hardware/xpu/XpuApEssentialMsg$ApEssentialMsg;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Lcom/android/carsdk/protobuf/CodedOutputStream;->writeMessage(ILcom/android/carsdk/protobuf/MessageLite;)V

    :cond_7
    move v1, v0

    .line 12614
    :goto_6
    iget-object v2, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDrivingData;->slotAvm_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    invoke-interface {v2}, Lcom/android/carsdk/protobuf/Internal$ProtobufList;->size()I

    move-result v2

    if-ge v1, v2, :cond_8

    const/16 v2, 0x9

    .line 12615
    iget-object v3, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDrivingData;->slotAvm_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    invoke-interface {v3, v1}, Lcom/android/carsdk/protobuf/Internal$ProtobufList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/carsdk/protobuf/MessageLite;

    invoke-virtual {p1, v2, v3}, Lcom/android/carsdk/protobuf/CodedOutputStream;->writeMessage(ILcom/android/carsdk/protobuf/MessageLite;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    :cond_8
    move v1, v0

    .line 12617
    :goto_7
    iget-object v2, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDrivingData;->spdBump_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    invoke-interface {v2}, Lcom/android/carsdk/protobuf/Internal$ProtobufList;->size()I

    move-result v2

    if-ge v1, v2, :cond_9

    const/16 v2, 0xa

    .line 12618
    iget-object v3, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDrivingData;->spdBump_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    invoke-interface {v3, v1}, Lcom/android/carsdk/protobuf/Internal$ProtobufList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/carsdk/protobuf/MessageLite;

    invoke-virtual {p1, v2, v3}, Lcom/android/carsdk/protobuf/CodedOutputStream;->writeMessage(ILcom/android/carsdk/protobuf/MessageLite;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 12620
    :cond_9
    :goto_8
    iget-object v1, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDrivingData;->slotIdMapping_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    invoke-interface {v1}, Lcom/android/carsdk/protobuf/Internal$ProtobufList;->size()I

    move-result v1

    if-ge v0, v1, :cond_a

    const/16 v1, 0xb

    .line 12621
    iget-object v2, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDrivingData;->slotIdMapping_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    invoke-interface {v2, v0}, Lcom/android/carsdk/protobuf/Internal$ProtobufList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/carsdk/protobuf/MessageLite;

    invoke-virtual {p1, v1, v2}, Lcom/android/carsdk/protobuf/CodedOutputStream;->writeMessage(ILcom/android/carsdk/protobuf/MessageLite;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_8

    :cond_a
    return-void
.end method
