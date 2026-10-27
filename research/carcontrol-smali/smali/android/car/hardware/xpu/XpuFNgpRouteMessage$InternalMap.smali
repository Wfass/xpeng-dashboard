.class public final Landroid/car/hardware/xpu/XpuFNgpRouteMessage$InternalMap;
.super Lcom/android/carsdk/protobuf/GeneratedMessageLite;
.source "XpuFNgpRouteMessage.java"

# interfaces
.implements Landroid/car/hardware/xpu/XpuFNgpRouteMessage$InternalMapOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/car/hardware/xpu/XpuFNgpRouteMessage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "InternalMap"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/car/hardware/xpu/XpuFNgpRouteMessage$InternalMap$Builder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/carsdk/protobuf/GeneratedMessageLite<",
        "Landroid/car/hardware/xpu/XpuFNgpRouteMessage$InternalMap;",
        "Landroid/car/hardware/xpu/XpuFNgpRouteMessage$InternalMap$Builder;",
        ">;",
        "Landroid/car/hardware/xpu/XpuFNgpRouteMessage$InternalMapOrBuilder;"
    }
.end annotation


# static fields
.field public static final BOUNDARY_FIELD_NUMBER:I = 0x5

.field private static final DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuFNgpRouteMessage$InternalMap;

.field public static final HEADER_FIELD_NUMBER:I = 0x1

.field private static volatile PARSER:Lcom/android/carsdk/protobuf/Parser; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/carsdk/protobuf/Parser<",
            "Landroid/car/hardware/xpu/XpuFNgpRouteMessage$InternalMap;",
            ">;"
        }
    .end annotation
.end field

.field public static final SLOT_FIELD_NUMBER:I = 0x3

.field public static final SPEED_BUMP_FIELD_NUMBER:I = 0x4

.field public static final TRAJECTORY_POSES_FIELD_NUMBER:I = 0x2


# instance fields
.field private bitField0_:I

.field private boundary_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/carsdk/protobuf/Internal$ProtobufList<",
            "Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Boundary;",
            ">;"
        }
    .end annotation
.end field

.field private header_:Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Header;

.field private slot_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/carsdk/protobuf/Internal$ProtobufList<",
            "Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Slot;",
            ">;"
        }
    .end annotation
.end field

.field private speedBump_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/carsdk/protobuf/Internal$ProtobufList<",
            "Landroid/car/hardware/xpu/XpuFNgpRouteMessage$SpeedBump;",
            ">;"
        }
    .end annotation
.end field

.field private trajectoryPoses_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/carsdk/protobuf/Internal$ProtobufList<",
            "Landroid/car/hardware/xpu/XpuFNgpRouteMessage$SemanticTrajectoryPose;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 26350
    new-instance v0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$InternalMap;

    invoke-direct {v0}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$InternalMap;-><init>()V

    sput-object v0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$InternalMap;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuFNgpRouteMessage$InternalMap;

    .line 26351
    invoke-virtual {v0}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$InternalMap;->makeImmutable()V

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 24797
    invoke-direct {p0}, Lcom/android/carsdk/protobuf/GeneratedMessageLite;-><init>()V

    .line 24798
    invoke-static {}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$InternalMap;->emptyProtobufList()Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    move-result-object v0

    iput-object v0, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$InternalMap;->trajectoryPoses_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    .line 24799
    invoke-static {}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$InternalMap;->emptyProtobufList()Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    move-result-object v0

    iput-object v0, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$InternalMap;->slot_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    .line 24800
    invoke-static {}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$InternalMap;->emptyProtobufList()Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    move-result-object v0

    iput-object v0, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$InternalMap;->speedBump_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    .line 24801
    invoke-static {}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$InternalMap;->emptyProtobufList()Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    move-result-object v0

    iput-object v0, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$InternalMap;->boundary_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    return-void
.end method

.method static synthetic access$43500()Landroid/car/hardware/xpu/XpuFNgpRouteMessage$InternalMap;
    .locals 1

    .line 24792
    sget-object v0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$InternalMap;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuFNgpRouteMessage$InternalMap;

    return-object v0
.end method

.method static synthetic access$43600(Landroid/car/hardware/xpu/XpuFNgpRouteMessage$InternalMap;Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Header;)V
    .locals 0

    .line 24792
    invoke-direct {p0, p1}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$InternalMap;->setHeader(Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Header;)V

    return-void
.end method

.method static synthetic access$43700(Landroid/car/hardware/xpu/XpuFNgpRouteMessage$InternalMap;Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Header$Builder;)V
    .locals 0

    .line 24792
    invoke-direct {p0, p1}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$InternalMap;->setHeader(Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Header$Builder;)V

    return-void
.end method

.method static synthetic access$43800(Landroid/car/hardware/xpu/XpuFNgpRouteMessage$InternalMap;Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Header;)V
    .locals 0

    .line 24792
    invoke-direct {p0, p1}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$InternalMap;->mergeHeader(Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Header;)V

    return-void
.end method

.method static synthetic access$43900(Landroid/car/hardware/xpu/XpuFNgpRouteMessage$InternalMap;)V
    .locals 0

    .line 24792
    invoke-direct {p0}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$InternalMap;->clearHeader()V

    return-void
.end method

.method static synthetic access$44000(Landroid/car/hardware/xpu/XpuFNgpRouteMessage$InternalMap;ILandroid/car/hardware/xpu/XpuFNgpRouteMessage$SemanticTrajectoryPose;)V
    .locals 0

    .line 24792
    invoke-direct {p0, p1, p2}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$InternalMap;->setTrajectoryPoses(ILandroid/car/hardware/xpu/XpuFNgpRouteMessage$SemanticTrajectoryPose;)V

    return-void
.end method

.method static synthetic access$44100(Landroid/car/hardware/xpu/XpuFNgpRouteMessage$InternalMap;ILandroid/car/hardware/xpu/XpuFNgpRouteMessage$SemanticTrajectoryPose$Builder;)V
    .locals 0

    .line 24792
    invoke-direct {p0, p1, p2}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$InternalMap;->setTrajectoryPoses(ILandroid/car/hardware/xpu/XpuFNgpRouteMessage$SemanticTrajectoryPose$Builder;)V

    return-void
.end method

.method static synthetic access$44200(Landroid/car/hardware/xpu/XpuFNgpRouteMessage$InternalMap;Landroid/car/hardware/xpu/XpuFNgpRouteMessage$SemanticTrajectoryPose;)V
    .locals 0

    .line 24792
    invoke-direct {p0, p1}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$InternalMap;->addTrajectoryPoses(Landroid/car/hardware/xpu/XpuFNgpRouteMessage$SemanticTrajectoryPose;)V

    return-void
.end method

.method static synthetic access$44300(Landroid/car/hardware/xpu/XpuFNgpRouteMessage$InternalMap;ILandroid/car/hardware/xpu/XpuFNgpRouteMessage$SemanticTrajectoryPose;)V
    .locals 0

    .line 24792
    invoke-direct {p0, p1, p2}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$InternalMap;->addTrajectoryPoses(ILandroid/car/hardware/xpu/XpuFNgpRouteMessage$SemanticTrajectoryPose;)V

    return-void
.end method

.method static synthetic access$44400(Landroid/car/hardware/xpu/XpuFNgpRouteMessage$InternalMap;Landroid/car/hardware/xpu/XpuFNgpRouteMessage$SemanticTrajectoryPose$Builder;)V
    .locals 0

    .line 24792
    invoke-direct {p0, p1}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$InternalMap;->addTrajectoryPoses(Landroid/car/hardware/xpu/XpuFNgpRouteMessage$SemanticTrajectoryPose$Builder;)V

    return-void
.end method

.method static synthetic access$44500(Landroid/car/hardware/xpu/XpuFNgpRouteMessage$InternalMap;ILandroid/car/hardware/xpu/XpuFNgpRouteMessage$SemanticTrajectoryPose$Builder;)V
    .locals 0

    .line 24792
    invoke-direct {p0, p1, p2}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$InternalMap;->addTrajectoryPoses(ILandroid/car/hardware/xpu/XpuFNgpRouteMessage$SemanticTrajectoryPose$Builder;)V

    return-void
.end method

.method static synthetic access$44600(Landroid/car/hardware/xpu/XpuFNgpRouteMessage$InternalMap;Ljava/lang/Iterable;)V
    .locals 0

    .line 24792
    invoke-direct {p0, p1}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$InternalMap;->addAllTrajectoryPoses(Ljava/lang/Iterable;)V

    return-void
.end method

.method static synthetic access$44700(Landroid/car/hardware/xpu/XpuFNgpRouteMessage$InternalMap;)V
    .locals 0

    .line 24792
    invoke-direct {p0}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$InternalMap;->clearTrajectoryPoses()V

    return-void
.end method

.method static synthetic access$44800(Landroid/car/hardware/xpu/XpuFNgpRouteMessage$InternalMap;I)V
    .locals 0

    .line 24792
    invoke-direct {p0, p1}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$InternalMap;->removeTrajectoryPoses(I)V

    return-void
.end method

.method static synthetic access$44900(Landroid/car/hardware/xpu/XpuFNgpRouteMessage$InternalMap;ILandroid/car/hardware/xpu/XpuFNgpRouteMessage$Slot;)V
    .locals 0

    .line 24792
    invoke-direct {p0, p1, p2}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$InternalMap;->setSlot(ILandroid/car/hardware/xpu/XpuFNgpRouteMessage$Slot;)V

    return-void
.end method

.method static synthetic access$45000(Landroid/car/hardware/xpu/XpuFNgpRouteMessage$InternalMap;ILandroid/car/hardware/xpu/XpuFNgpRouteMessage$Slot$Builder;)V
    .locals 0

    .line 24792
    invoke-direct {p0, p1, p2}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$InternalMap;->setSlot(ILandroid/car/hardware/xpu/XpuFNgpRouteMessage$Slot$Builder;)V

    return-void
.end method

.method static synthetic access$45100(Landroid/car/hardware/xpu/XpuFNgpRouteMessage$InternalMap;Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Slot;)V
    .locals 0

    .line 24792
    invoke-direct {p0, p1}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$InternalMap;->addSlot(Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Slot;)V

    return-void
.end method

.method static synthetic access$45200(Landroid/car/hardware/xpu/XpuFNgpRouteMessage$InternalMap;ILandroid/car/hardware/xpu/XpuFNgpRouteMessage$Slot;)V
    .locals 0

    .line 24792
    invoke-direct {p0, p1, p2}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$InternalMap;->addSlot(ILandroid/car/hardware/xpu/XpuFNgpRouteMessage$Slot;)V

    return-void
.end method

.method static synthetic access$45300(Landroid/car/hardware/xpu/XpuFNgpRouteMessage$InternalMap;Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Slot$Builder;)V
    .locals 0

    .line 24792
    invoke-direct {p0, p1}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$InternalMap;->addSlot(Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Slot$Builder;)V

    return-void
.end method

.method static synthetic access$45400(Landroid/car/hardware/xpu/XpuFNgpRouteMessage$InternalMap;ILandroid/car/hardware/xpu/XpuFNgpRouteMessage$Slot$Builder;)V
    .locals 0

    .line 24792
    invoke-direct {p0, p1, p2}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$InternalMap;->addSlot(ILandroid/car/hardware/xpu/XpuFNgpRouteMessage$Slot$Builder;)V

    return-void
.end method

.method static synthetic access$45500(Landroid/car/hardware/xpu/XpuFNgpRouteMessage$InternalMap;Ljava/lang/Iterable;)V
    .locals 0

    .line 24792
    invoke-direct {p0, p1}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$InternalMap;->addAllSlot(Ljava/lang/Iterable;)V

    return-void
.end method

.method static synthetic access$45600(Landroid/car/hardware/xpu/XpuFNgpRouteMessage$InternalMap;)V
    .locals 0

    .line 24792
    invoke-direct {p0}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$InternalMap;->clearSlot()V

    return-void
.end method

.method static synthetic access$45700(Landroid/car/hardware/xpu/XpuFNgpRouteMessage$InternalMap;I)V
    .locals 0

    .line 24792
    invoke-direct {p0, p1}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$InternalMap;->removeSlot(I)V

    return-void
.end method

.method static synthetic access$45800(Landroid/car/hardware/xpu/XpuFNgpRouteMessage$InternalMap;ILandroid/car/hardware/xpu/XpuFNgpRouteMessage$SpeedBump;)V
    .locals 0

    .line 24792
    invoke-direct {p0, p1, p2}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$InternalMap;->setSpeedBump(ILandroid/car/hardware/xpu/XpuFNgpRouteMessage$SpeedBump;)V

    return-void
.end method

.method static synthetic access$45900(Landroid/car/hardware/xpu/XpuFNgpRouteMessage$InternalMap;ILandroid/car/hardware/xpu/XpuFNgpRouteMessage$SpeedBump$Builder;)V
    .locals 0

    .line 24792
    invoke-direct {p0, p1, p2}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$InternalMap;->setSpeedBump(ILandroid/car/hardware/xpu/XpuFNgpRouteMessage$SpeedBump$Builder;)V

    return-void
.end method

.method static synthetic access$46000(Landroid/car/hardware/xpu/XpuFNgpRouteMessage$InternalMap;Landroid/car/hardware/xpu/XpuFNgpRouteMessage$SpeedBump;)V
    .locals 0

    .line 24792
    invoke-direct {p0, p1}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$InternalMap;->addSpeedBump(Landroid/car/hardware/xpu/XpuFNgpRouteMessage$SpeedBump;)V

    return-void
.end method

.method static synthetic access$46100(Landroid/car/hardware/xpu/XpuFNgpRouteMessage$InternalMap;ILandroid/car/hardware/xpu/XpuFNgpRouteMessage$SpeedBump;)V
    .locals 0

    .line 24792
    invoke-direct {p0, p1, p2}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$InternalMap;->addSpeedBump(ILandroid/car/hardware/xpu/XpuFNgpRouteMessage$SpeedBump;)V

    return-void
.end method

.method static synthetic access$46200(Landroid/car/hardware/xpu/XpuFNgpRouteMessage$InternalMap;Landroid/car/hardware/xpu/XpuFNgpRouteMessage$SpeedBump$Builder;)V
    .locals 0

    .line 24792
    invoke-direct {p0, p1}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$InternalMap;->addSpeedBump(Landroid/car/hardware/xpu/XpuFNgpRouteMessage$SpeedBump$Builder;)V

    return-void
.end method

.method static synthetic access$46300(Landroid/car/hardware/xpu/XpuFNgpRouteMessage$InternalMap;ILandroid/car/hardware/xpu/XpuFNgpRouteMessage$SpeedBump$Builder;)V
    .locals 0

    .line 24792
    invoke-direct {p0, p1, p2}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$InternalMap;->addSpeedBump(ILandroid/car/hardware/xpu/XpuFNgpRouteMessage$SpeedBump$Builder;)V

    return-void
.end method

.method static synthetic access$46400(Landroid/car/hardware/xpu/XpuFNgpRouteMessage$InternalMap;Ljava/lang/Iterable;)V
    .locals 0

    .line 24792
    invoke-direct {p0, p1}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$InternalMap;->addAllSpeedBump(Ljava/lang/Iterable;)V

    return-void
.end method

.method static synthetic access$46500(Landroid/car/hardware/xpu/XpuFNgpRouteMessage$InternalMap;)V
    .locals 0

    .line 24792
    invoke-direct {p0}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$InternalMap;->clearSpeedBump()V

    return-void
.end method

.method static synthetic access$46600(Landroid/car/hardware/xpu/XpuFNgpRouteMessage$InternalMap;I)V
    .locals 0

    .line 24792
    invoke-direct {p0, p1}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$InternalMap;->removeSpeedBump(I)V

    return-void
.end method

.method static synthetic access$46700(Landroid/car/hardware/xpu/XpuFNgpRouteMessage$InternalMap;ILandroid/car/hardware/xpu/XpuFNgpRouteMessage$Boundary;)V
    .locals 0

    .line 24792
    invoke-direct {p0, p1, p2}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$InternalMap;->setBoundary(ILandroid/car/hardware/xpu/XpuFNgpRouteMessage$Boundary;)V

    return-void
.end method

.method static synthetic access$46800(Landroid/car/hardware/xpu/XpuFNgpRouteMessage$InternalMap;ILandroid/car/hardware/xpu/XpuFNgpRouteMessage$Boundary$Builder;)V
    .locals 0

    .line 24792
    invoke-direct {p0, p1, p2}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$InternalMap;->setBoundary(ILandroid/car/hardware/xpu/XpuFNgpRouteMessage$Boundary$Builder;)V

    return-void
.end method

.method static synthetic access$46900(Landroid/car/hardware/xpu/XpuFNgpRouteMessage$InternalMap;Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Boundary;)V
    .locals 0

    .line 24792
    invoke-direct {p0, p1}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$InternalMap;->addBoundary(Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Boundary;)V

    return-void
.end method

.method static synthetic access$47000(Landroid/car/hardware/xpu/XpuFNgpRouteMessage$InternalMap;ILandroid/car/hardware/xpu/XpuFNgpRouteMessage$Boundary;)V
    .locals 0

    .line 24792
    invoke-direct {p0, p1, p2}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$InternalMap;->addBoundary(ILandroid/car/hardware/xpu/XpuFNgpRouteMessage$Boundary;)V

    return-void
.end method

.method static synthetic access$47100(Landroid/car/hardware/xpu/XpuFNgpRouteMessage$InternalMap;Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Boundary$Builder;)V
    .locals 0

    .line 24792
    invoke-direct {p0, p1}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$InternalMap;->addBoundary(Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Boundary$Builder;)V

    return-void
.end method

.method static synthetic access$47200(Landroid/car/hardware/xpu/XpuFNgpRouteMessage$InternalMap;ILandroid/car/hardware/xpu/XpuFNgpRouteMessage$Boundary$Builder;)V
    .locals 0

    .line 24792
    invoke-direct {p0, p1, p2}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$InternalMap;->addBoundary(ILandroid/car/hardware/xpu/XpuFNgpRouteMessage$Boundary$Builder;)V

    return-void
.end method

.method static synthetic access$47300(Landroid/car/hardware/xpu/XpuFNgpRouteMessage$InternalMap;Ljava/lang/Iterable;)V
    .locals 0

    .line 24792
    invoke-direct {p0, p1}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$InternalMap;->addAllBoundary(Ljava/lang/Iterable;)V

    return-void
.end method

.method static synthetic access$47400(Landroid/car/hardware/xpu/XpuFNgpRouteMessage$InternalMap;)V
    .locals 0

    .line 24792
    invoke-direct {p0}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$InternalMap;->clearBoundary()V

    return-void
.end method

.method static synthetic access$47500(Landroid/car/hardware/xpu/XpuFNgpRouteMessage$InternalMap;I)V
    .locals 0

    .line 24792
    invoke-direct {p0, p1}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$InternalMap;->removeBoundary(I)V

    return-void
.end method

.method private addAllBoundary(Ljava/lang/Iterable;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Boundary;",
            ">;)V"
        }
    .end annotation

    .line 25478
    invoke-direct {p0}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$InternalMap;->ensureBoundaryIsMutable()V

    .line 25479
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$InternalMap;->boundary_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

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
            "Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Slot;",
            ">;)V"
        }
    .end annotation

    .line 25126
    invoke-direct {p0}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$InternalMap;->ensureSlotIsMutable()V

    .line 25127
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$InternalMap;->slot_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    invoke-static {p1, v0}, Lcom/android/carsdk/protobuf/AbstractMessageLite;->addAll(Ljava/lang/Iterable;Ljava/util/Collection;)V

    return-void
.end method

.method private addAllSpeedBump(Ljava/lang/Iterable;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Landroid/car/hardware/xpu/XpuFNgpRouteMessage$SpeedBump;",
            ">;)V"
        }
    .end annotation

    .line 25302
    invoke-direct {p0}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$InternalMap;->ensureSpeedBumpIsMutable()V

    .line 25303
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$InternalMap;->speedBump_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    invoke-static {p1, v0}, Lcom/android/carsdk/protobuf/AbstractMessageLite;->addAll(Ljava/lang/Iterable;Ljava/util/Collection;)V

    return-void
.end method

.method private addAllTrajectoryPoses(Ljava/lang/Iterable;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Landroid/car/hardware/xpu/XpuFNgpRouteMessage$SemanticTrajectoryPose;",
            ">;)V"
        }
    .end annotation

    .line 24958
    invoke-direct {p0}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$InternalMap;->ensureTrajectoryPosesIsMutable()V

    .line 24959
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$InternalMap;->trajectoryPoses_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    invoke-static {p1, v0}, Lcom/android/carsdk/protobuf/AbstractMessageLite;->addAll(Ljava/lang/Iterable;Ljava/util/Collection;)V

    return-void
.end method

.method private addBoundary(ILandroid/car/hardware/xpu/XpuFNgpRouteMessage$Boundary$Builder;)V
    .locals 1

    .line 25466
    invoke-direct {p0}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$InternalMap;->ensureBoundaryIsMutable()V

    .line 25467
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$InternalMap;->boundary_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    invoke-virtual {p2}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Boundary$Builder;->build()Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object p2

    check-cast p2, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Boundary;

    invoke-interface {v0, p1, p2}, Lcom/android/carsdk/protobuf/Internal$ProtobufList;->add(ILjava/lang/Object;)V

    return-void
.end method

.method private addBoundary(ILandroid/car/hardware/xpu/XpuFNgpRouteMessage$Boundary;)V
    .locals 1

    .line 25440
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 25442
    invoke-direct {p0}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$InternalMap;->ensureBoundaryIsMutable()V

    .line 25443
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$InternalMap;->boundary_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1, p2}, Lcom/android/carsdk/protobuf/Internal$ProtobufList;->add(ILjava/lang/Object;)V

    return-void
.end method

.method private addBoundary(Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Boundary$Builder;)V
    .locals 1

    .line 25454
    invoke-direct {p0}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$InternalMap;->ensureBoundaryIsMutable()V

    .line 25455
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$InternalMap;->boundary_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    invoke-virtual {p1}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Boundary$Builder;->build()Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Boundary;

    invoke-interface {v0, p1}, Lcom/android/carsdk/protobuf/Internal$ProtobufList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private addBoundary(Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Boundary;)V
    .locals 1

    .line 25425
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 25427
    invoke-direct {p0}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$InternalMap;->ensureBoundaryIsMutable()V

    .line 25428
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$InternalMap;->boundary_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1}, Lcom/android/carsdk/protobuf/Internal$ProtobufList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private addSlot(ILandroid/car/hardware/xpu/XpuFNgpRouteMessage$Slot$Builder;)V
    .locals 1

    .line 25114
    invoke-direct {p0}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$InternalMap;->ensureSlotIsMutable()V

    .line 25115
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$InternalMap;->slot_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    invoke-virtual {p2}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Slot$Builder;->build()Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object p2

    check-cast p2, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Slot;

    invoke-interface {v0, p1, p2}, Lcom/android/carsdk/protobuf/Internal$ProtobufList;->add(ILjava/lang/Object;)V

    return-void
.end method

.method private addSlot(ILandroid/car/hardware/xpu/XpuFNgpRouteMessage$Slot;)V
    .locals 1

    .line 25088
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 25090
    invoke-direct {p0}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$InternalMap;->ensureSlotIsMutable()V

    .line 25091
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$InternalMap;->slot_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1, p2}, Lcom/android/carsdk/protobuf/Internal$ProtobufList;->add(ILjava/lang/Object;)V

    return-void
.end method

.method private addSlot(Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Slot$Builder;)V
    .locals 1

    .line 25102
    invoke-direct {p0}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$InternalMap;->ensureSlotIsMutable()V

    .line 25103
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$InternalMap;->slot_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    invoke-virtual {p1}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Slot$Builder;->build()Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Slot;

    invoke-interface {v0, p1}, Lcom/android/carsdk/protobuf/Internal$ProtobufList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private addSlot(Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Slot;)V
    .locals 1

    .line 25073
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 25075
    invoke-direct {p0}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$InternalMap;->ensureSlotIsMutable()V

    .line 25076
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$InternalMap;->slot_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1}, Lcom/android/carsdk/protobuf/Internal$ProtobufList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private addSpeedBump(ILandroid/car/hardware/xpu/XpuFNgpRouteMessage$SpeedBump$Builder;)V
    .locals 1

    .line 25290
    invoke-direct {p0}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$InternalMap;->ensureSpeedBumpIsMutable()V

    .line 25291
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$InternalMap;->speedBump_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    invoke-virtual {p2}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$SpeedBump$Builder;->build()Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object p2

    check-cast p2, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$SpeedBump;

    invoke-interface {v0, p1, p2}, Lcom/android/carsdk/protobuf/Internal$ProtobufList;->add(ILjava/lang/Object;)V

    return-void
.end method

.method private addSpeedBump(ILandroid/car/hardware/xpu/XpuFNgpRouteMessage$SpeedBump;)V
    .locals 1

    .line 25264
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 25266
    invoke-direct {p0}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$InternalMap;->ensureSpeedBumpIsMutable()V

    .line 25267
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$InternalMap;->speedBump_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1, p2}, Lcom/android/carsdk/protobuf/Internal$ProtobufList;->add(ILjava/lang/Object;)V

    return-void
.end method

.method private addSpeedBump(Landroid/car/hardware/xpu/XpuFNgpRouteMessage$SpeedBump$Builder;)V
    .locals 1

    .line 25278
    invoke-direct {p0}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$InternalMap;->ensureSpeedBumpIsMutable()V

    .line 25279
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$InternalMap;->speedBump_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    invoke-virtual {p1}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$SpeedBump$Builder;->build()Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$SpeedBump;

    invoke-interface {v0, p1}, Lcom/android/carsdk/protobuf/Internal$ProtobufList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private addSpeedBump(Landroid/car/hardware/xpu/XpuFNgpRouteMessage$SpeedBump;)V
    .locals 1

    .line 25249
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 25251
    invoke-direct {p0}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$InternalMap;->ensureSpeedBumpIsMutable()V

    .line 25252
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$InternalMap;->speedBump_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1}, Lcom/android/carsdk/protobuf/Internal$ProtobufList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private addTrajectoryPoses(ILandroid/car/hardware/xpu/XpuFNgpRouteMessage$SemanticTrajectoryPose$Builder;)V
    .locals 1

    .line 24950
    invoke-direct {p0}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$InternalMap;->ensureTrajectoryPosesIsMutable()V

    .line 24951
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$InternalMap;->trajectoryPoses_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    invoke-virtual {p2}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$SemanticTrajectoryPose$Builder;->build()Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object p2

    check-cast p2, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$SemanticTrajectoryPose;

    invoke-interface {v0, p1, p2}, Lcom/android/carsdk/protobuf/Internal$ProtobufList;->add(ILjava/lang/Object;)V

    return-void
.end method

.method private addTrajectoryPoses(ILandroid/car/hardware/xpu/XpuFNgpRouteMessage$SemanticTrajectoryPose;)V
    .locals 1

    .line 24932
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 24934
    invoke-direct {p0}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$InternalMap;->ensureTrajectoryPosesIsMutable()V

    .line 24935
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$InternalMap;->trajectoryPoses_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1, p2}, Lcom/android/carsdk/protobuf/Internal$ProtobufList;->add(ILjava/lang/Object;)V

    return-void
.end method

.method private addTrajectoryPoses(Landroid/car/hardware/xpu/XpuFNgpRouteMessage$SemanticTrajectoryPose$Builder;)V
    .locals 1

    .line 24942
    invoke-direct {p0}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$InternalMap;->ensureTrajectoryPosesIsMutable()V

    .line 24943
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$InternalMap;->trajectoryPoses_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    invoke-virtual {p1}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$SemanticTrajectoryPose$Builder;->build()Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$SemanticTrajectoryPose;

    invoke-interface {v0, p1}, Lcom/android/carsdk/protobuf/Internal$ProtobufList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private addTrajectoryPoses(Landroid/car/hardware/xpu/XpuFNgpRouteMessage$SemanticTrajectoryPose;)V
    .locals 1

    .line 24921
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 24923
    invoke-direct {p0}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$InternalMap;->ensureTrajectoryPosesIsMutable()V

    .line 24924
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$InternalMap;->trajectoryPoses_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1}, Lcom/android/carsdk/protobuf/Internal$ProtobufList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private clearBoundary()V
    .locals 1

    .line 25490
    invoke-static {}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$InternalMap;->emptyProtobufList()Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    move-result-object v0

    iput-object v0, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$InternalMap;->boundary_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    return-void
.end method

.method private clearHeader()V
    .locals 1

    const/4 v0, 0x0

    .line 24852
    iput-object v0, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$InternalMap;->header_:Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Header;

    return-void
.end method

.method private clearSlot()V
    .locals 1

    .line 25138
    invoke-static {}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$InternalMap;->emptyProtobufList()Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    move-result-object v0

    iput-object v0, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$InternalMap;->slot_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    return-void
.end method

.method private clearSpeedBump()V
    .locals 1

    .line 25314
    invoke-static {}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$InternalMap;->emptyProtobufList()Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    move-result-object v0

    iput-object v0, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$InternalMap;->speedBump_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    return-void
.end method

.method private clearTrajectoryPoses()V
    .locals 1

    .line 24966
    invoke-static {}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$InternalMap;->emptyProtobufList()Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    move-result-object v0

    iput-object v0, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$InternalMap;->trajectoryPoses_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    return-void
.end method

.method private ensureBoundaryIsMutable()V
    .locals 1

    .line 25383
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$InternalMap;->boundary_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    invoke-interface {v0}, Lcom/android/carsdk/protobuf/Internal$ProtobufList;->isModifiable()Z

    move-result v0

    if-nez v0, :cond_0

    .line 25384
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$InternalMap;->boundary_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    .line 25385
    invoke-static {v0}, Lcom/android/carsdk/protobuf/GeneratedMessageLite;->mutableCopy(Lcom/android/carsdk/protobuf/Internal$ProtobufList;)Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    move-result-object v0

    iput-object v0, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$InternalMap;->boundary_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    :cond_0
    return-void
.end method

.method private ensureSlotIsMutable()V
    .locals 1

    .line 25031
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$InternalMap;->slot_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    invoke-interface {v0}, Lcom/android/carsdk/protobuf/Internal$ProtobufList;->isModifiable()Z

    move-result v0

    if-nez v0, :cond_0

    .line 25032
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$InternalMap;->slot_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    .line 25033
    invoke-static {v0}, Lcom/android/carsdk/protobuf/GeneratedMessageLite;->mutableCopy(Lcom/android/carsdk/protobuf/Internal$ProtobufList;)Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    move-result-object v0

    iput-object v0, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$InternalMap;->slot_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    :cond_0
    return-void
.end method

.method private ensureSpeedBumpIsMutable()V
    .locals 1

    .line 25207
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$InternalMap;->speedBump_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    invoke-interface {v0}, Lcom/android/carsdk/protobuf/Internal$ProtobufList;->isModifiable()Z

    move-result v0

    if-nez v0, :cond_0

    .line 25208
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$InternalMap;->speedBump_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    .line 25209
    invoke-static {v0}, Lcom/android/carsdk/protobuf/GeneratedMessageLite;->mutableCopy(Lcom/android/carsdk/protobuf/Internal$ProtobufList;)Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    move-result-object v0

    iput-object v0, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$InternalMap;->speedBump_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    :cond_0
    return-void
.end method

.method private ensureTrajectoryPosesIsMutable()V
    .locals 1

    .line 24891
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$InternalMap;->trajectoryPoses_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    invoke-interface {v0}, Lcom/android/carsdk/protobuf/Internal$ProtobufList;->isModifiable()Z

    move-result v0

    if-nez v0, :cond_0

    .line 24892
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$InternalMap;->trajectoryPoses_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    .line 24893
    invoke-static {v0}, Lcom/android/carsdk/protobuf/GeneratedMessageLite;->mutableCopy(Lcom/android/carsdk/protobuf/Internal$ProtobufList;)Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    move-result-object v0

    iput-object v0, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$InternalMap;->trajectoryPoses_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    :cond_0
    return-void
.end method

.method public static getDefaultInstance()Landroid/car/hardware/xpu/XpuFNgpRouteMessage$InternalMap;
    .locals 1

    .line 26355
    sget-object v0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$InternalMap;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuFNgpRouteMessage$InternalMap;

    return-object v0
.end method

.method private mergeHeader(Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Header;)V
    .locals 2

    .line 24840
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$InternalMap;->header_:Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Header;

    if-eqz v0, :cond_0

    .line 24841
    invoke-static {}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Header;->getDefaultInstance()Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Header;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 24842
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$InternalMap;->header_:Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Header;

    .line 24843
    invoke-static {v0}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Header;->newBuilder(Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Header;)Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Header$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Header$Builder;->mergeFrom(Lcom/android/carsdk/protobuf/GeneratedMessageLite;)Lcom/android/carsdk/protobuf/GeneratedMessageLite$Builder;

    move-result-object p1

    check-cast p1, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Header$Builder;

    invoke-virtual {p1}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Header$Builder;->buildPartial()Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Header;

    iput-object p1, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$InternalMap;->header_:Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Header;

    goto :goto_0

    .line 24845
    :cond_0
    iput-object p1, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$InternalMap;->header_:Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Header;

    :goto_0
    return-void
.end method

.method public static newBuilder()Landroid/car/hardware/xpu/XpuFNgpRouteMessage$InternalMap$Builder;
    .locals 1

    .line 25614
    sget-object v0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$InternalMap;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuFNgpRouteMessage$InternalMap;

    invoke-virtual {v0}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$InternalMap;->toBuilder()Lcom/android/carsdk/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$InternalMap$Builder;

    return-object v0
.end method

.method public static newBuilder(Landroid/car/hardware/xpu/XpuFNgpRouteMessage$InternalMap;)Landroid/car/hardware/xpu/XpuFNgpRouteMessage$InternalMap$Builder;
    .locals 1

    .line 25617
    sget-object v0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$InternalMap;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuFNgpRouteMessage$InternalMap;

    invoke-virtual {v0}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$InternalMap;->toBuilder()Lcom/android/carsdk/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$InternalMap$Builder;

    invoke-virtual {v0, p0}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$InternalMap$Builder;->mergeFrom(Lcom/android/carsdk/protobuf/GeneratedMessageLite;)Lcom/android/carsdk/protobuf/GeneratedMessageLite$Builder;

    move-result-object p0

    check-cast p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$InternalMap$Builder;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Landroid/car/hardware/xpu/XpuFNgpRouteMessage$InternalMap;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 25591
    sget-object v0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$InternalMap;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuFNgpRouteMessage$InternalMap;

    invoke-static {v0, p0}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$InternalMap;->parseDelimitedFrom(Lcom/android/carsdk/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$InternalMap;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/android/carsdk/protobuf/ExtensionRegistryLite;)Landroid/car/hardware/xpu/XpuFNgpRouteMessage$InternalMap;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 25597
    sget-object v0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$InternalMap;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuFNgpRouteMessage$InternalMap;

    invoke-static {v0, p0, p1}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$InternalMap;->parseDelimitedFrom(Lcom/android/carsdk/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/android/carsdk/protobuf/ExtensionRegistryLite;)Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$InternalMap;

    return-object p0
.end method

.method public static parseFrom(Lcom/android/carsdk/protobuf/ByteString;)Landroid/car/hardware/xpu/XpuFNgpRouteMessage$InternalMap;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/carsdk/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 25555
    sget-object v0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$InternalMap;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuFNgpRouteMessage$InternalMap;

    invoke-static {v0, p0}, Lcom/android/carsdk/protobuf/GeneratedMessageLite;->parseFrom(Lcom/android/carsdk/protobuf/GeneratedMessageLite;Lcom/android/carsdk/protobuf/ByteString;)Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$InternalMap;

    return-object p0
.end method

.method public static parseFrom(Lcom/android/carsdk/protobuf/ByteString;Lcom/android/carsdk/protobuf/ExtensionRegistryLite;)Landroid/car/hardware/xpu/XpuFNgpRouteMessage$InternalMap;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/carsdk/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 25562
    sget-object v0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$InternalMap;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuFNgpRouteMessage$InternalMap;

    invoke-static {v0, p0, p1}, Lcom/android/carsdk/protobuf/GeneratedMessageLite;->parseFrom(Lcom/android/carsdk/protobuf/GeneratedMessageLite;Lcom/android/carsdk/protobuf/ByteString;Lcom/android/carsdk/protobuf/ExtensionRegistryLite;)Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$InternalMap;

    return-object p0
.end method

.method public static parseFrom(Lcom/android/carsdk/protobuf/CodedInputStream;)Landroid/car/hardware/xpu/XpuFNgpRouteMessage$InternalMap;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 25602
    sget-object v0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$InternalMap;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuFNgpRouteMessage$InternalMap;

    invoke-static {v0, p0}, Lcom/android/carsdk/protobuf/GeneratedMessageLite;->parseFrom(Lcom/android/carsdk/protobuf/GeneratedMessageLite;Lcom/android/carsdk/protobuf/CodedInputStream;)Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$InternalMap;

    return-object p0
.end method

.method public static parseFrom(Lcom/android/carsdk/protobuf/CodedInputStream;Lcom/android/carsdk/protobuf/ExtensionRegistryLite;)Landroid/car/hardware/xpu/XpuFNgpRouteMessage$InternalMap;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 25609
    sget-object v0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$InternalMap;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuFNgpRouteMessage$InternalMap;

    invoke-static {v0, p0, p1}, Lcom/android/carsdk/protobuf/GeneratedMessageLite;->parseFrom(Lcom/android/carsdk/protobuf/GeneratedMessageLite;Lcom/android/carsdk/protobuf/CodedInputStream;Lcom/android/carsdk/protobuf/ExtensionRegistryLite;)Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$InternalMap;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Landroid/car/hardware/xpu/XpuFNgpRouteMessage$InternalMap;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 25579
    sget-object v0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$InternalMap;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuFNgpRouteMessage$InternalMap;

    invoke-static {v0, p0}, Lcom/android/carsdk/protobuf/GeneratedMessageLite;->parseFrom(Lcom/android/carsdk/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$InternalMap;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/android/carsdk/protobuf/ExtensionRegistryLite;)Landroid/car/hardware/xpu/XpuFNgpRouteMessage$InternalMap;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 25586
    sget-object v0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$InternalMap;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuFNgpRouteMessage$InternalMap;

    invoke-static {v0, p0, p1}, Lcom/android/carsdk/protobuf/GeneratedMessageLite;->parseFrom(Lcom/android/carsdk/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/android/carsdk/protobuf/ExtensionRegistryLite;)Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$InternalMap;

    return-object p0
.end method

.method public static parseFrom([B)Landroid/car/hardware/xpu/XpuFNgpRouteMessage$InternalMap;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/carsdk/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 25567
    sget-object v0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$InternalMap;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuFNgpRouteMessage$InternalMap;

    invoke-static {v0, p0}, Lcom/android/carsdk/protobuf/GeneratedMessageLite;->parseFrom(Lcom/android/carsdk/protobuf/GeneratedMessageLite;[B)Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$InternalMap;

    return-object p0
.end method

.method public static parseFrom([BLcom/android/carsdk/protobuf/ExtensionRegistryLite;)Landroid/car/hardware/xpu/XpuFNgpRouteMessage$InternalMap;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/carsdk/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 25574
    sget-object v0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$InternalMap;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuFNgpRouteMessage$InternalMap;

    invoke-static {v0, p0, p1}, Lcom/android/carsdk/protobuf/GeneratedMessageLite;->parseFrom(Lcom/android/carsdk/protobuf/GeneratedMessageLite;[BLcom/android/carsdk/protobuf/ExtensionRegistryLite;)Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$InternalMap;

    return-object p0
.end method

.method public static parser()Lcom/android/carsdk/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/android/carsdk/protobuf/Parser<",
            "Landroid/car/hardware/xpu/XpuFNgpRouteMessage$InternalMap;",
            ">;"
        }
    .end annotation

    .line 26361
    sget-object v0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$InternalMap;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuFNgpRouteMessage$InternalMap;

    invoke-virtual {v0}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$InternalMap;->getParserForType()Lcom/android/carsdk/protobuf/Parser;

    move-result-object v0

    return-object v0
.end method

.method private removeBoundary(I)V
    .locals 1

    .line 25500
    invoke-direct {p0}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$InternalMap;->ensureBoundaryIsMutable()V

    .line 25501
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$InternalMap;->boundary_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1}, Lcom/android/carsdk/protobuf/Internal$ProtobufList;->remove(I)Ljava/lang/Object;

    return-void
.end method

.method private removeSlot(I)V
    .locals 1

    .line 25148
    invoke-direct {p0}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$InternalMap;->ensureSlotIsMutable()V

    .line 25149
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$InternalMap;->slot_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1}, Lcom/android/carsdk/protobuf/Internal$ProtobufList;->remove(I)Ljava/lang/Object;

    return-void
.end method

.method private removeSpeedBump(I)V
    .locals 1

    .line 25324
    invoke-direct {p0}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$InternalMap;->ensureSpeedBumpIsMutable()V

    .line 25325
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$InternalMap;->speedBump_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1}, Lcom/android/carsdk/protobuf/Internal$ProtobufList;->remove(I)Ljava/lang/Object;

    return-void
.end method

.method private removeTrajectoryPoses(I)V
    .locals 1

    .line 24972
    invoke-direct {p0}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$InternalMap;->ensureTrajectoryPosesIsMutable()V

    .line 24973
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$InternalMap;->trajectoryPoses_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1}, Lcom/android/carsdk/protobuf/Internal$ProtobufList;->remove(I)Ljava/lang/Object;

    return-void
.end method

.method private setBoundary(ILandroid/car/hardware/xpu/XpuFNgpRouteMessage$Boundary$Builder;)V
    .locals 1

    .line 25413
    invoke-direct {p0}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$InternalMap;->ensureBoundaryIsMutable()V

    .line 25414
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$InternalMap;->boundary_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    invoke-virtual {p2}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Boundary$Builder;->build()Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object p2

    check-cast p2, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Boundary;

    invoke-interface {v0, p1, p2}, Lcom/android/carsdk/protobuf/Internal$ProtobufList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private setBoundary(ILandroid/car/hardware/xpu/XpuFNgpRouteMessage$Boundary;)V
    .locals 1

    .line 25399
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 25401
    invoke-direct {p0}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$InternalMap;->ensureBoundaryIsMutable()V

    .line 25402
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$InternalMap;->boundary_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1, p2}, Lcom/android/carsdk/protobuf/Internal$ProtobufList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private setHeader(Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Header$Builder;)V
    .locals 0

    .line 24833
    invoke-virtual {p1}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Header$Builder;->build()Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Header;

    iput-object p1, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$InternalMap;->header_:Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Header;

    return-void
.end method

.method private setHeader(Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Header;)V
    .locals 0

    .line 24823
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 24825
    iput-object p1, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$InternalMap;->header_:Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Header;

    return-void
.end method

.method private setSlot(ILandroid/car/hardware/xpu/XpuFNgpRouteMessage$Slot$Builder;)V
    .locals 1

    .line 25061
    invoke-direct {p0}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$InternalMap;->ensureSlotIsMutable()V

    .line 25062
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$InternalMap;->slot_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    invoke-virtual {p2}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Slot$Builder;->build()Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object p2

    check-cast p2, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Slot;

    invoke-interface {v0, p1, p2}, Lcom/android/carsdk/protobuf/Internal$ProtobufList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private setSlot(ILandroid/car/hardware/xpu/XpuFNgpRouteMessage$Slot;)V
    .locals 1

    .line 25047
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 25049
    invoke-direct {p0}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$InternalMap;->ensureSlotIsMutable()V

    .line 25050
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$InternalMap;->slot_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1, p2}, Lcom/android/carsdk/protobuf/Internal$ProtobufList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private setSpeedBump(ILandroid/car/hardware/xpu/XpuFNgpRouteMessage$SpeedBump$Builder;)V
    .locals 1

    .line 25237
    invoke-direct {p0}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$InternalMap;->ensureSpeedBumpIsMutable()V

    .line 25238
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$InternalMap;->speedBump_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    invoke-virtual {p2}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$SpeedBump$Builder;->build()Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object p2

    check-cast p2, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$SpeedBump;

    invoke-interface {v0, p1, p2}, Lcom/android/carsdk/protobuf/Internal$ProtobufList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private setSpeedBump(ILandroid/car/hardware/xpu/XpuFNgpRouteMessage$SpeedBump;)V
    .locals 1

    .line 25223
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 25225
    invoke-direct {p0}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$InternalMap;->ensureSpeedBumpIsMutable()V

    .line 25226
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$InternalMap;->speedBump_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1, p2}, Lcom/android/carsdk/protobuf/Internal$ProtobufList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private setTrajectoryPoses(ILandroid/car/hardware/xpu/XpuFNgpRouteMessage$SemanticTrajectoryPose$Builder;)V
    .locals 1

    .line 24913
    invoke-direct {p0}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$InternalMap;->ensureTrajectoryPosesIsMutable()V

    .line 24914
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$InternalMap;->trajectoryPoses_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    invoke-virtual {p2}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$SemanticTrajectoryPose$Builder;->build()Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object p2

    check-cast p2, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$SemanticTrajectoryPose;

    invoke-interface {v0, p1, p2}, Lcom/android/carsdk/protobuf/Internal$ProtobufList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private setTrajectoryPoses(ILandroid/car/hardware/xpu/XpuFNgpRouteMessage$SemanticTrajectoryPose;)V
    .locals 1

    .line 24903
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 24905
    invoke-direct {p0}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$InternalMap;->ensureTrajectoryPosesIsMutable()V

    .line 24906
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$InternalMap;->trajectoryPoses_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1, p2}, Lcom/android/carsdk/protobuf/Internal$ProtobufList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method protected final dynamicMethod(Lcom/android/carsdk/protobuf/GeneratedMessageLite$MethodToInvoke;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    .line 26220
    sget-object v0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$1;->$SwitchMap$com$google$protobuf$GeneratedMessageLite$MethodToInvoke:[I

    invoke-virtual {p1}, Lcom/android/carsdk/protobuf/GeneratedMessageLite$MethodToInvoke;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x0

    packed-switch p1, :pswitch_data_0

    .line 26343
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1

    .line 26334
    :pswitch_0
    sget-object p1, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$InternalMap;->PARSER:Lcom/android/carsdk/protobuf/Parser;

    if-nez p1, :cond_1

    const-class p1, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$InternalMap;

    monitor-enter p1

    .line 26335
    :try_start_0
    sget-object p2, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$InternalMap;->PARSER:Lcom/android/carsdk/protobuf/Parser;

    if-nez p2, :cond_0

    .line 26336
    new-instance p2, Lcom/android/carsdk/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;

    sget-object p3, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$InternalMap;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuFNgpRouteMessage$InternalMap;

    invoke-direct {p2, p3}, Lcom/android/carsdk/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;-><init>(Lcom/android/carsdk/protobuf/GeneratedMessageLite;)V

    sput-object p2, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$InternalMap;->PARSER:Lcom/android/carsdk/protobuf/Parser;

    .line 26338
    :cond_0
    monitor-exit p1

    goto :goto_0

    :catchall_0
    move-exception p2

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p2

    .line 26340
    :cond_1
    :goto_0
    sget-object p1, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$InternalMap;->PARSER:Lcom/android/carsdk/protobuf/Parser;

    return-object p1

    .line 26252
    :pswitch_1
    check-cast p2, Lcom/android/carsdk/protobuf/CodedInputStream;

    .line 26254
    check-cast p3, Lcom/android/carsdk/protobuf/ExtensionRegistryLite;

    const/4 p1, 0x0

    :cond_2
    :goto_1
    if-nez p1, :cond_e

    .line 26259
    :try_start_1
    invoke-virtual {p2}, Lcom/android/carsdk/protobuf/CodedInputStream;->readTag()I

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_d

    const/16 v3, 0xa

    if-eq v1, v3, :cond_b

    const/16 v3, 0x12

    if-eq v1, v3, :cond_9

    const/16 v3, 0x1a

    if-eq v1, v3, :cond_7

    const/16 v3, 0x22

    if-eq v1, v3, :cond_5

    const/16 v3, 0x2a

    if-eq v1, v3, :cond_3

    .line 26265
    invoke-virtual {p2, v1}, Lcom/android/carsdk/protobuf/CodedInputStream;->skipField(I)Z

    move-result v1

    if-nez v1, :cond_2

    goto/16 :goto_3

    .line 26311
    :cond_3
    iget-object v1, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$InternalMap;->boundary_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    invoke-interface {v1}, Lcom/android/carsdk/protobuf/Internal$ProtobufList;->isModifiable()Z

    move-result v1

    if-nez v1, :cond_4

    .line 26312
    iget-object v1, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$InternalMap;->boundary_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    .line 26313
    invoke-static {v1}, Lcom/android/carsdk/protobuf/GeneratedMessageLite;->mutableCopy(Lcom/android/carsdk/protobuf/Internal$ProtobufList;)Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    move-result-object v1

    iput-object v1, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$InternalMap;->boundary_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    .line 26315
    :cond_4
    iget-object v1, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$InternalMap;->boundary_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    .line 26316
    invoke-static {}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Boundary;->parser()Lcom/android/carsdk/protobuf/Parser;

    move-result-object v2

    invoke-virtual {p2, v2, p3}, Lcom/android/carsdk/protobuf/CodedInputStream;->readMessage(Lcom/android/carsdk/protobuf/Parser;Lcom/android/carsdk/protobuf/ExtensionRegistryLite;)Lcom/android/carsdk/protobuf/MessageLite;

    move-result-object v2

    check-cast v2, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Boundary;

    .line 26315
    invoke-interface {v1, v2}, Lcom/android/carsdk/protobuf/Internal$ProtobufList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 26302
    :cond_5
    iget-object v1, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$InternalMap;->speedBump_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    invoke-interface {v1}, Lcom/android/carsdk/protobuf/Internal$ProtobufList;->isModifiable()Z

    move-result v1

    if-nez v1, :cond_6

    .line 26303
    iget-object v1, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$InternalMap;->speedBump_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    .line 26304
    invoke-static {v1}, Lcom/android/carsdk/protobuf/GeneratedMessageLite;->mutableCopy(Lcom/android/carsdk/protobuf/Internal$ProtobufList;)Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    move-result-object v1

    iput-object v1, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$InternalMap;->speedBump_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    .line 26306
    :cond_6
    iget-object v1, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$InternalMap;->speedBump_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    .line 26307
    invoke-static {}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$SpeedBump;->parser()Lcom/android/carsdk/protobuf/Parser;

    move-result-object v2

    invoke-virtual {p2, v2, p3}, Lcom/android/carsdk/protobuf/CodedInputStream;->readMessage(Lcom/android/carsdk/protobuf/Parser;Lcom/android/carsdk/protobuf/ExtensionRegistryLite;)Lcom/android/carsdk/protobuf/MessageLite;

    move-result-object v2

    check-cast v2, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$SpeedBump;

    .line 26306
    invoke-interface {v1, v2}, Lcom/android/carsdk/protobuf/Internal$ProtobufList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 26293
    :cond_7
    iget-object v1, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$InternalMap;->slot_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    invoke-interface {v1}, Lcom/android/carsdk/protobuf/Internal$ProtobufList;->isModifiable()Z

    move-result v1

    if-nez v1, :cond_8

    .line 26294
    iget-object v1, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$InternalMap;->slot_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    .line 26295
    invoke-static {v1}, Lcom/android/carsdk/protobuf/GeneratedMessageLite;->mutableCopy(Lcom/android/carsdk/protobuf/Internal$ProtobufList;)Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    move-result-object v1

    iput-object v1, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$InternalMap;->slot_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    .line 26297
    :cond_8
    iget-object v1, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$InternalMap;->slot_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    .line 26298
    invoke-static {}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Slot;->parser()Lcom/android/carsdk/protobuf/Parser;

    move-result-object v2

    invoke-virtual {p2, v2, p3}, Lcom/android/carsdk/protobuf/CodedInputStream;->readMessage(Lcom/android/carsdk/protobuf/Parser;Lcom/android/carsdk/protobuf/ExtensionRegistryLite;)Lcom/android/carsdk/protobuf/MessageLite;

    move-result-object v2

    check-cast v2, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Slot;

    .line 26297
    invoke-interface {v1, v2}, Lcom/android/carsdk/protobuf/Internal$ProtobufList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 26284
    :cond_9
    iget-object v1, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$InternalMap;->trajectoryPoses_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    invoke-interface {v1}, Lcom/android/carsdk/protobuf/Internal$ProtobufList;->isModifiable()Z

    move-result v1

    if-nez v1, :cond_a

    .line 26285
    iget-object v1, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$InternalMap;->trajectoryPoses_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    .line 26286
    invoke-static {v1}, Lcom/android/carsdk/protobuf/GeneratedMessageLite;->mutableCopy(Lcom/android/carsdk/protobuf/Internal$ProtobufList;)Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    move-result-object v1

    iput-object v1, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$InternalMap;->trajectoryPoses_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    .line 26288
    :cond_a
    iget-object v1, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$InternalMap;->trajectoryPoses_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    .line 26289
    invoke-static {}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$SemanticTrajectoryPose;->parser()Lcom/android/carsdk/protobuf/Parser;

    move-result-object v2

    invoke-virtual {p2, v2, p3}, Lcom/android/carsdk/protobuf/CodedInputStream;->readMessage(Lcom/android/carsdk/protobuf/Parser;Lcom/android/carsdk/protobuf/ExtensionRegistryLite;)Lcom/android/carsdk/protobuf/MessageLite;

    move-result-object v2

    check-cast v2, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$SemanticTrajectoryPose;

    .line 26288
    invoke-interface {v1, v2}, Lcom/android/carsdk/protobuf/Internal$ProtobufList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 26272
    :cond_b
    iget-object v1, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$InternalMap;->header_:Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Header;

    if-eqz v1, :cond_c

    .line 26273
    invoke-virtual {v1}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Header;->toBuilder()Lcom/android/carsdk/protobuf/GeneratedMessageLite$Builder;

    move-result-object v1

    check-cast v1, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Header$Builder;

    goto :goto_2

    :cond_c
    move-object v1, v0

    .line 26275
    :goto_2
    invoke-static {}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Header;->parser()Lcom/android/carsdk/protobuf/Parser;

    move-result-object v2

    invoke-virtual {p2, v2, p3}, Lcom/android/carsdk/protobuf/CodedInputStream;->readMessage(Lcom/android/carsdk/protobuf/Parser;Lcom/android/carsdk/protobuf/ExtensionRegistryLite;)Lcom/android/carsdk/protobuf/MessageLite;

    move-result-object v2

    check-cast v2, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Header;

    iput-object v2, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$InternalMap;->header_:Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Header;

    if-eqz v1, :cond_2

    .line 26277
    invoke-virtual {v1, v2}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Header$Builder;->mergeFrom(Lcom/android/carsdk/protobuf/GeneratedMessageLite;)Lcom/android/carsdk/protobuf/GeneratedMessageLite$Builder;

    .line 26278
    invoke-virtual {v1}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Header$Builder;->buildPartial()Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object v1

    check-cast v1, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Header;

    iput-object v1, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$InternalMap;->header_:Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Header;
    :try_end_1
    .catch Lcom/android/carsdk/protobuf/InvalidProtocolBufferException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto/16 :goto_1

    :cond_d
    :goto_3
    move p1, v2

    goto/16 :goto_1

    :catchall_1
    move-exception p1

    goto :goto_4

    :catch_0
    move-exception p1

    .line 26324
    :try_start_2
    new-instance p2, Ljava/lang/RuntimeException;

    new-instance p3, Lcom/android/carsdk/protobuf/InvalidProtocolBufferException;

    .line 26326
    invoke-virtual {p1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p3, p1}, Lcom/android/carsdk/protobuf/InvalidProtocolBufferException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, p0}, Lcom/android/carsdk/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/android/carsdk/protobuf/MessageLite;)Lcom/android/carsdk/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p2

    :catch_1
    move-exception p1

    .line 26322
    new-instance p2, Ljava/lang/RuntimeException;

    invoke-virtual {p1, p0}, Lcom/android/carsdk/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/android/carsdk/protobuf/MessageLite;)Lcom/android/carsdk/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 26327
    :goto_4
    throw p1

    .line 26331
    :cond_e
    :pswitch_2
    sget-object p1, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$InternalMap;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuFNgpRouteMessage$InternalMap;

    return-object p1

    .line 26238
    :pswitch_3
    check-cast p2, Lcom/android/carsdk/protobuf/GeneratedMessageLite$Visitor;

    .line 26239
    check-cast p3, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$InternalMap;

    .line 26240
    iget-object p1, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$InternalMap;->header_:Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Header;

    iget-object v0, p3, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$InternalMap;->header_:Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Header;

    invoke-interface {p2, p1, v0}, Lcom/android/carsdk/protobuf/GeneratedMessageLite$Visitor;->visitMessage(Lcom/android/carsdk/protobuf/MessageLite;Lcom/android/carsdk/protobuf/MessageLite;)Lcom/android/carsdk/protobuf/MessageLite;

    move-result-object p1

    check-cast p1, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Header;

    iput-object p1, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$InternalMap;->header_:Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Header;

    .line 26241
    iget-object p1, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$InternalMap;->trajectoryPoses_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    iget-object v0, p3, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$InternalMap;->trajectoryPoses_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    invoke-interface {p2, p1, v0}, Lcom/android/carsdk/protobuf/GeneratedMessageLite$Visitor;->visitList(Lcom/android/carsdk/protobuf/Internal$ProtobufList;Lcom/android/carsdk/protobuf/Internal$ProtobufList;)Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    move-result-object p1

    iput-object p1, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$InternalMap;->trajectoryPoses_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    .line 26242
    iget-object p1, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$InternalMap;->slot_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    iget-object v0, p3, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$InternalMap;->slot_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    invoke-interface {p2, p1, v0}, Lcom/android/carsdk/protobuf/GeneratedMessageLite$Visitor;->visitList(Lcom/android/carsdk/protobuf/Internal$ProtobufList;Lcom/android/carsdk/protobuf/Internal$ProtobufList;)Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    move-result-object p1

    iput-object p1, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$InternalMap;->slot_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    .line 26243
    iget-object p1, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$InternalMap;->speedBump_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    iget-object v0, p3, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$InternalMap;->speedBump_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    invoke-interface {p2, p1, v0}, Lcom/android/carsdk/protobuf/GeneratedMessageLite$Visitor;->visitList(Lcom/android/carsdk/protobuf/Internal$ProtobufList;Lcom/android/carsdk/protobuf/Internal$ProtobufList;)Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    move-result-object p1

    iput-object p1, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$InternalMap;->speedBump_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    .line 26244
    iget-object p1, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$InternalMap;->boundary_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    iget-object v0, p3, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$InternalMap;->boundary_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    invoke-interface {p2, p1, v0}, Lcom/android/carsdk/protobuf/GeneratedMessageLite$Visitor;->visitList(Lcom/android/carsdk/protobuf/Internal$ProtobufList;Lcom/android/carsdk/protobuf/Internal$ProtobufList;)Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    move-result-object p1

    iput-object p1, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$InternalMap;->boundary_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    .line 26245
    sget-object p1, Lcom/android/carsdk/protobuf/GeneratedMessageLite$MergeFromVisitor;->INSTANCE:Lcom/android/carsdk/protobuf/GeneratedMessageLite$MergeFromVisitor;

    if-ne p2, p1, :cond_f

    .line 26247
    iget p1, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$InternalMap;->bitField0_:I

    iget p2, p3, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$InternalMap;->bitField0_:I

    or-int/2addr p1, p2

    iput p1, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$InternalMap;->bitField0_:I

    :cond_f
    return-object p0

    .line 26235
    :pswitch_4
    new-instance p1, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$InternalMap$Builder;

    invoke-direct {p1, v0}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$InternalMap$Builder;-><init>(Landroid/car/hardware/xpu/XpuFNgpRouteMessage$1;)V

    return-object p1

    .line 26228
    :pswitch_5
    iget-object p1, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$InternalMap;->trajectoryPoses_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    invoke-interface {p1}, Lcom/android/carsdk/protobuf/Internal$ProtobufList;->makeImmutable()V

    .line 26229
    iget-object p1, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$InternalMap;->slot_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    invoke-interface {p1}, Lcom/android/carsdk/protobuf/Internal$ProtobufList;->makeImmutable()V

    .line 26230
    iget-object p1, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$InternalMap;->speedBump_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    invoke-interface {p1}, Lcom/android/carsdk/protobuf/Internal$ProtobufList;->makeImmutable()V

    .line 26231
    iget-object p1, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$InternalMap;->boundary_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    invoke-interface {p1}, Lcom/android/carsdk/protobuf/Internal$ProtobufList;->makeImmutable()V

    return-object v0

    .line 26225
    :pswitch_6
    sget-object p1, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$InternalMap;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuFNgpRouteMessage$InternalMap;

    return-object p1

    .line 26222
    :pswitch_7
    new-instance p1, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$InternalMap;

    invoke-direct {p1}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$InternalMap;-><init>()V

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

.method public getBoundary(I)Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Boundary;
    .locals 1

    .line 25369
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$InternalMap;->boundary_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1}, Lcom/android/carsdk/protobuf/Internal$ProtobufList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Boundary;

    return-object p1
.end method

.method public getBoundaryCount()I
    .locals 1

    .line 25359
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$InternalMap;->boundary_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    invoke-interface {v0}, Lcom/android/carsdk/protobuf/Internal$ProtobufList;->size()I

    move-result v0

    return v0
.end method

.method public getBoundaryList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Boundary;",
            ">;"
        }
    .end annotation

    .line 25338
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$InternalMap;->boundary_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    return-object v0
.end method

.method public getBoundaryOrBuilder(I)Landroid/car/hardware/xpu/XpuFNgpRouteMessage$BoundaryOrBuilder;
    .locals 1

    .line 25380
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$InternalMap;->boundary_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1}, Lcom/android/carsdk/protobuf/Internal$ProtobufList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$BoundaryOrBuilder;

    return-object p1
.end method

.method public getBoundaryOrBuilderList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "+",
            "Landroid/car/hardware/xpu/XpuFNgpRouteMessage$BoundaryOrBuilder;",
            ">;"
        }
    .end annotation

    .line 25349
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$InternalMap;->boundary_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    return-object v0
.end method

.method public getHeader()Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Header;
    .locals 1

    .line 24816
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$InternalMap;->header_:Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Header;

    if-nez v0, :cond_0

    invoke-static {}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Header;->getDefaultInstance()Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Header;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public getSerializedSize()I
    .locals 5

    .line 25524
    iget v0, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$InternalMap;->memoizedSerializedSize:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    return v0

    .line 25528
    :cond_0
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$InternalMap;->header_:Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Header;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 25530
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$InternalMap;->getHeader()Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Header;

    move-result-object v0

    const/4 v2, 0x1

    invoke-static {v2, v0}, Lcom/android/carsdk/protobuf/CodedOutputStream;->computeMessageSize(ILcom/android/carsdk/protobuf/MessageLite;)I

    move-result v0

    add-int/2addr v0, v1

    goto :goto_0

    :cond_1
    move v0, v1

    :goto_0
    move v2, v1

    .line 25532
    :goto_1
    iget-object v3, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$InternalMap;->trajectoryPoses_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    invoke-interface {v3}, Lcom/android/carsdk/protobuf/Internal$ProtobufList;->size()I

    move-result v3

    if-ge v2, v3, :cond_2

    const/4 v3, 0x2

    .line 25533
    iget-object v4, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$InternalMap;->trajectoryPoses_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    .line 25534
    invoke-interface {v4, v2}, Lcom/android/carsdk/protobuf/Internal$ProtobufList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/carsdk/protobuf/MessageLite;

    invoke-static {v3, v4}, Lcom/android/carsdk/protobuf/CodedOutputStream;->computeMessageSize(ILcom/android/carsdk/protobuf/MessageLite;)I

    move-result v3

    add-int/2addr v0, v3

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_2
    move v2, v1

    .line 25536
    :goto_2
    iget-object v3, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$InternalMap;->slot_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    invoke-interface {v3}, Lcom/android/carsdk/protobuf/Internal$ProtobufList;->size()I

    move-result v3

    if-ge v2, v3, :cond_3

    const/4 v3, 0x3

    .line 25537
    iget-object v4, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$InternalMap;->slot_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    .line 25538
    invoke-interface {v4, v2}, Lcom/android/carsdk/protobuf/Internal$ProtobufList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/carsdk/protobuf/MessageLite;

    invoke-static {v3, v4}, Lcom/android/carsdk/protobuf/CodedOutputStream;->computeMessageSize(ILcom/android/carsdk/protobuf/MessageLite;)I

    move-result v3

    add-int/2addr v0, v3

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_3
    move v2, v1

    .line 25540
    :goto_3
    iget-object v3, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$InternalMap;->speedBump_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    invoke-interface {v3}, Lcom/android/carsdk/protobuf/Internal$ProtobufList;->size()I

    move-result v3

    if-ge v2, v3, :cond_4

    const/4 v3, 0x4

    .line 25541
    iget-object v4, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$InternalMap;->speedBump_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    .line 25542
    invoke-interface {v4, v2}, Lcom/android/carsdk/protobuf/Internal$ProtobufList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/carsdk/protobuf/MessageLite;

    invoke-static {v3, v4}, Lcom/android/carsdk/protobuf/CodedOutputStream;->computeMessageSize(ILcom/android/carsdk/protobuf/MessageLite;)I

    move-result v3

    add-int/2addr v0, v3

    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 25544
    :cond_4
    :goto_4
    iget-object v2, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$InternalMap;->boundary_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    invoke-interface {v2}, Lcom/android/carsdk/protobuf/Internal$ProtobufList;->size()I

    move-result v2

    if-ge v1, v2, :cond_5

    const/4 v2, 0x5

    .line 25545
    iget-object v3, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$InternalMap;->boundary_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    .line 25546
    invoke-interface {v3, v1}, Lcom/android/carsdk/protobuf/Internal$ProtobufList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/carsdk/protobuf/MessageLite;

    invoke-static {v2, v3}, Lcom/android/carsdk/protobuf/CodedOutputStream;->computeMessageSize(ILcom/android/carsdk/protobuf/MessageLite;)I

    move-result v2

    add-int/2addr v0, v2

    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 25548
    :cond_5
    iput v0, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$InternalMap;->memoizedSerializedSize:I

    return v0
.end method

.method public getSlot(I)Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Slot;
    .locals 1

    .line 25017
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$InternalMap;->slot_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1}, Lcom/android/carsdk/protobuf/Internal$ProtobufList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Slot;

    return-object p1
.end method

.method public getSlotCount()I
    .locals 1

    .line 25007
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$InternalMap;->slot_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    invoke-interface {v0}, Lcom/android/carsdk/protobuf/Internal$ProtobufList;->size()I

    move-result v0

    return v0
.end method

.method public getSlotList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Slot;",
            ">;"
        }
    .end annotation

    .line 24986
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$InternalMap;->slot_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    return-object v0
.end method

.method public getSlotOrBuilder(I)Landroid/car/hardware/xpu/XpuFNgpRouteMessage$SlotOrBuilder;
    .locals 1

    .line 25028
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$InternalMap;->slot_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1}, Lcom/android/carsdk/protobuf/Internal$ProtobufList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$SlotOrBuilder;

    return-object p1
.end method

.method public getSlotOrBuilderList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "+",
            "Landroid/car/hardware/xpu/XpuFNgpRouteMessage$SlotOrBuilder;",
            ">;"
        }
    .end annotation

    .line 24997
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$InternalMap;->slot_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    return-object v0
.end method

.method public getSpeedBump(I)Landroid/car/hardware/xpu/XpuFNgpRouteMessage$SpeedBump;
    .locals 1

    .line 25193
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$InternalMap;->speedBump_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1}, Lcom/android/carsdk/protobuf/Internal$ProtobufList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$SpeedBump;

    return-object p1
.end method

.method public getSpeedBumpCount()I
    .locals 1

    .line 25183
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$InternalMap;->speedBump_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    invoke-interface {v0}, Lcom/android/carsdk/protobuf/Internal$ProtobufList;->size()I

    move-result v0

    return v0
.end method

.method public getSpeedBumpList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/car/hardware/xpu/XpuFNgpRouteMessage$SpeedBump;",
            ">;"
        }
    .end annotation

    .line 25162
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$InternalMap;->speedBump_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    return-object v0
.end method

.method public getSpeedBumpOrBuilder(I)Landroid/car/hardware/xpu/XpuFNgpRouteMessage$SpeedBumpOrBuilder;
    .locals 1

    .line 25204
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$InternalMap;->speedBump_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1}, Lcom/android/carsdk/protobuf/Internal$ProtobufList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$SpeedBumpOrBuilder;

    return-object p1
.end method

.method public getSpeedBumpOrBuilderList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "+",
            "Landroid/car/hardware/xpu/XpuFNgpRouteMessage$SpeedBumpOrBuilder;",
            ">;"
        }
    .end annotation

    .line 25173
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$InternalMap;->speedBump_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    return-object v0
.end method

.method public getTrajectoryPoses(I)Landroid/car/hardware/xpu/XpuFNgpRouteMessage$SemanticTrajectoryPose;
    .locals 1

    .line 24881
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$InternalMap;->trajectoryPoses_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1}, Lcom/android/carsdk/protobuf/Internal$ProtobufList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$SemanticTrajectoryPose;

    return-object p1
.end method

.method public getTrajectoryPosesCount()I
    .locals 1

    .line 24875
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$InternalMap;->trajectoryPoses_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    invoke-interface {v0}, Lcom/android/carsdk/protobuf/Internal$ProtobufList;->size()I

    move-result v0

    return v0
.end method

.method public getTrajectoryPosesList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/car/hardware/xpu/XpuFNgpRouteMessage$SemanticTrajectoryPose;",
            ">;"
        }
    .end annotation

    .line 24862
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$InternalMap;->trajectoryPoses_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    return-object v0
.end method

.method public getTrajectoryPosesOrBuilder(I)Landroid/car/hardware/xpu/XpuFNgpRouteMessage$SemanticTrajectoryPoseOrBuilder;
    .locals 1

    .line 24888
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$InternalMap;->trajectoryPoses_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1}, Lcom/android/carsdk/protobuf/Internal$ProtobufList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$SemanticTrajectoryPoseOrBuilder;

    return-object p1
.end method

.method public getTrajectoryPosesOrBuilderList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "+",
            "Landroid/car/hardware/xpu/XpuFNgpRouteMessage$SemanticTrajectoryPoseOrBuilder;",
            ">;"
        }
    .end annotation

    .line 24869
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$InternalMap;->trajectoryPoses_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    return-object v0
.end method

.method public hasHeader()Z
    .locals 1

    .line 24810
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$InternalMap;->header_:Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Header;

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

    .line 25506
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$InternalMap;->header_:Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Header;

    if-eqz v0, :cond_0

    .line 25507
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$InternalMap;->getHeader()Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Header;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {p1, v1, v0}, Lcom/android/carsdk/protobuf/CodedOutputStream;->writeMessage(ILcom/android/carsdk/protobuf/MessageLite;)V

    :cond_0
    const/4 v0, 0x0

    move v1, v0

    .line 25509
    :goto_0
    iget-object v2, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$InternalMap;->trajectoryPoses_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    invoke-interface {v2}, Lcom/android/carsdk/protobuf/Internal$ProtobufList;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    const/4 v2, 0x2

    .line 25510
    iget-object v3, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$InternalMap;->trajectoryPoses_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    invoke-interface {v3, v1}, Lcom/android/carsdk/protobuf/Internal$ProtobufList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/carsdk/protobuf/MessageLite;

    invoke-virtual {p1, v2, v3}, Lcom/android/carsdk/protobuf/CodedOutputStream;->writeMessage(ILcom/android/carsdk/protobuf/MessageLite;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    move v1, v0

    .line 25512
    :goto_1
    iget-object v2, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$InternalMap;->slot_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    invoke-interface {v2}, Lcom/android/carsdk/protobuf/Internal$ProtobufList;->size()I

    move-result v2

    if-ge v1, v2, :cond_2

    const/4 v2, 0x3

    .line 25513
    iget-object v3, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$InternalMap;->slot_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    invoke-interface {v3, v1}, Lcom/android/carsdk/protobuf/Internal$ProtobufList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/carsdk/protobuf/MessageLite;

    invoke-virtual {p1, v2, v3}, Lcom/android/carsdk/protobuf/CodedOutputStream;->writeMessage(ILcom/android/carsdk/protobuf/MessageLite;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_2
    move v1, v0

    .line 25515
    :goto_2
    iget-object v2, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$InternalMap;->speedBump_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    invoke-interface {v2}, Lcom/android/carsdk/protobuf/Internal$ProtobufList;->size()I

    move-result v2

    if-ge v1, v2, :cond_3

    const/4 v2, 0x4

    .line 25516
    iget-object v3, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$InternalMap;->speedBump_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    invoke-interface {v3, v1}, Lcom/android/carsdk/protobuf/Internal$ProtobufList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/carsdk/protobuf/MessageLite;

    invoke-virtual {p1, v2, v3}, Lcom/android/carsdk/protobuf/CodedOutputStream;->writeMessage(ILcom/android/carsdk/protobuf/MessageLite;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 25518
    :cond_3
    :goto_3
    iget-object v1, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$InternalMap;->boundary_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    invoke-interface {v1}, Lcom/android/carsdk/protobuf/Internal$ProtobufList;->size()I

    move-result v1

    if-ge v0, v1, :cond_4

    const/4 v1, 0x5

    .line 25519
    iget-object v2, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$InternalMap;->boundary_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    invoke-interface {v2, v0}, Lcom/android/carsdk/protobuf/Internal$ProtobufList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/carsdk/protobuf/MessageLite;

    invoke-virtual {p1, v1, v2}, Lcom/android/carsdk/protobuf/CodedOutputStream;->writeMessage(ILcom/android/carsdk/protobuf/MessageLite;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_4
    return-void
.end method
