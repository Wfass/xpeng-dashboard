.class public final Landroid/car/hardware/xpu/XpuApEssentialMsg$ApTrajectoryDataType;
.super Lcom/android/carsdk/protobuf/GeneratedMessageLite;
.source "XpuApEssentialMsg.java"

# interfaces
.implements Landroid/car/hardware/xpu/XpuApEssentialMsg$ApTrajectoryDataTypeOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/car/hardware/xpu/XpuApEssentialMsg;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ApTrajectoryDataType"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/car/hardware/xpu/XpuApEssentialMsg$ApTrajectoryDataType$Builder;,
        Landroid/car/hardware/xpu/XpuApEssentialMsg$ApTrajectoryDataType$ApTrajType;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/carsdk/protobuf/GeneratedMessageLite<",
        "Landroid/car/hardware/xpu/XpuApEssentialMsg$ApTrajectoryDataType;",
        "Landroid/car/hardware/xpu/XpuApEssentialMsg$ApTrajectoryDataType$Builder;",
        ">;",
        "Landroid/car/hardware/xpu/XpuApEssentialMsg$ApTrajectoryDataTypeOrBuilder;"
    }
.end annotation


# static fields
.field private static final DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuApEssentialMsg$ApTrajectoryDataType;

.field public static final ID_FIELD_NUMBER:I = 0x1

.field private static volatile PARSER:Lcom/android/carsdk/protobuf/Parser; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/carsdk/protobuf/Parser<",
            "Landroid/car/hardware/xpu/XpuApEssentialMsg$ApTrajectoryDataType;",
            ">;"
        }
    .end annotation
.end field

.field public static final TRAJECTORY_FIELD_NUMBER:I = 0x3

.field public static final TYPE_FIELD_NUMBER:I = 0x2


# instance fields
.field private bitField0_:I

.field private id_:I

.field private trajectory_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/carsdk/protobuf/Internal$ProtobufList<",
            "Landroid/car/hardware/xpu/XpuApEssentialMsg$ApPathPoint;",
            ">;"
        }
    .end annotation
.end field

.field private type_:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 8169
    new-instance v0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApTrajectoryDataType;

    invoke-direct {v0}, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApTrajectoryDataType;-><init>()V

    sput-object v0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApTrajectoryDataType;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuApEssentialMsg$ApTrajectoryDataType;

    .line 8170
    invoke-virtual {v0}, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApTrajectoryDataType;->makeImmutable()V

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 7497
    invoke-direct {p0}, Lcom/android/carsdk/protobuf/GeneratedMessageLite;-><init>()V

    const/4 v0, 0x0

    .line 7498
    iput v0, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApTrajectoryDataType;->id_:I

    .line 7499
    iput v0, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApTrajectoryDataType;->type_:I

    .line 7500
    invoke-static {}, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApTrajectoryDataType;->emptyProtobufList()Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    move-result-object v0

    iput-object v0, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApTrajectoryDataType;->trajectory_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    return-void
.end method

.method static synthetic access$17000()Landroid/car/hardware/xpu/XpuApEssentialMsg$ApTrajectoryDataType;
    .locals 1

    .line 7492
    sget-object v0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApTrajectoryDataType;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuApEssentialMsg$ApTrajectoryDataType;

    return-object v0
.end method

.method static synthetic access$17100(Landroid/car/hardware/xpu/XpuApEssentialMsg$ApTrajectoryDataType;I)V
    .locals 0

    .line 7492
    invoke-direct {p0, p1}, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApTrajectoryDataType;->setId(I)V

    return-void
.end method

.method static synthetic access$17200(Landroid/car/hardware/xpu/XpuApEssentialMsg$ApTrajectoryDataType;)V
    .locals 0

    .line 7492
    invoke-direct {p0}, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApTrajectoryDataType;->clearId()V

    return-void
.end method

.method static synthetic access$17300(Landroid/car/hardware/xpu/XpuApEssentialMsg$ApTrajectoryDataType;I)V
    .locals 0

    .line 7492
    invoke-direct {p0, p1}, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApTrajectoryDataType;->setTypeValue(I)V

    return-void
.end method

.method static synthetic access$17400(Landroid/car/hardware/xpu/XpuApEssentialMsg$ApTrajectoryDataType;Landroid/car/hardware/xpu/XpuApEssentialMsg$ApTrajectoryDataType$ApTrajType;)V
    .locals 0

    .line 7492
    invoke-direct {p0, p1}, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApTrajectoryDataType;->setType(Landroid/car/hardware/xpu/XpuApEssentialMsg$ApTrajectoryDataType$ApTrajType;)V

    return-void
.end method

.method static synthetic access$17500(Landroid/car/hardware/xpu/XpuApEssentialMsg$ApTrajectoryDataType;)V
    .locals 0

    .line 7492
    invoke-direct {p0}, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApTrajectoryDataType;->clearType()V

    return-void
.end method

.method static synthetic access$17600(Landroid/car/hardware/xpu/XpuApEssentialMsg$ApTrajectoryDataType;ILandroid/car/hardware/xpu/XpuApEssentialMsg$ApPathPoint;)V
    .locals 0

    .line 7492
    invoke-direct {p0, p1, p2}, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApTrajectoryDataType;->setTrajectory(ILandroid/car/hardware/xpu/XpuApEssentialMsg$ApPathPoint;)V

    return-void
.end method

.method static synthetic access$17700(Landroid/car/hardware/xpu/XpuApEssentialMsg$ApTrajectoryDataType;ILandroid/car/hardware/xpu/XpuApEssentialMsg$ApPathPoint$Builder;)V
    .locals 0

    .line 7492
    invoke-direct {p0, p1, p2}, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApTrajectoryDataType;->setTrajectory(ILandroid/car/hardware/xpu/XpuApEssentialMsg$ApPathPoint$Builder;)V

    return-void
.end method

.method static synthetic access$17800(Landroid/car/hardware/xpu/XpuApEssentialMsg$ApTrajectoryDataType;Landroid/car/hardware/xpu/XpuApEssentialMsg$ApPathPoint;)V
    .locals 0

    .line 7492
    invoke-direct {p0, p1}, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApTrajectoryDataType;->addTrajectory(Landroid/car/hardware/xpu/XpuApEssentialMsg$ApPathPoint;)V

    return-void
.end method

.method static synthetic access$17900(Landroid/car/hardware/xpu/XpuApEssentialMsg$ApTrajectoryDataType;ILandroid/car/hardware/xpu/XpuApEssentialMsg$ApPathPoint;)V
    .locals 0

    .line 7492
    invoke-direct {p0, p1, p2}, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApTrajectoryDataType;->addTrajectory(ILandroid/car/hardware/xpu/XpuApEssentialMsg$ApPathPoint;)V

    return-void
.end method

.method static synthetic access$18000(Landroid/car/hardware/xpu/XpuApEssentialMsg$ApTrajectoryDataType;Landroid/car/hardware/xpu/XpuApEssentialMsg$ApPathPoint$Builder;)V
    .locals 0

    .line 7492
    invoke-direct {p0, p1}, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApTrajectoryDataType;->addTrajectory(Landroid/car/hardware/xpu/XpuApEssentialMsg$ApPathPoint$Builder;)V

    return-void
.end method

.method static synthetic access$18100(Landroid/car/hardware/xpu/XpuApEssentialMsg$ApTrajectoryDataType;ILandroid/car/hardware/xpu/XpuApEssentialMsg$ApPathPoint$Builder;)V
    .locals 0

    .line 7492
    invoke-direct {p0, p1, p2}, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApTrajectoryDataType;->addTrajectory(ILandroid/car/hardware/xpu/XpuApEssentialMsg$ApPathPoint$Builder;)V

    return-void
.end method

.method static synthetic access$18200(Landroid/car/hardware/xpu/XpuApEssentialMsg$ApTrajectoryDataType;Ljava/lang/Iterable;)V
    .locals 0

    .line 7492
    invoke-direct {p0, p1}, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApTrajectoryDataType;->addAllTrajectory(Ljava/lang/Iterable;)V

    return-void
.end method

.method static synthetic access$18300(Landroid/car/hardware/xpu/XpuApEssentialMsg$ApTrajectoryDataType;)V
    .locals 0

    .line 7492
    invoke-direct {p0}, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApTrajectoryDataType;->clearTrajectory()V

    return-void
.end method

.method static synthetic access$18400(Landroid/car/hardware/xpu/XpuApEssentialMsg$ApTrajectoryDataType;I)V
    .locals 0

    .line 7492
    invoke-direct {p0, p1}, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApTrajectoryDataType;->removeTrajectory(I)V

    return-void
.end method

.method private addAllTrajectory(Ljava/lang/Iterable;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Landroid/car/hardware/xpu/XpuApEssentialMsg$ApPathPoint;",
            ">;)V"
        }
    .end annotation

    .line 7764
    invoke-direct {p0}, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApTrajectoryDataType;->ensureTrajectoryIsMutable()V

    .line 7765
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApTrajectoryDataType;->trajectory_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    invoke-static {p1, v0}, Lcom/android/carsdk/protobuf/AbstractMessageLite;->addAll(Ljava/lang/Iterable;Ljava/util/Collection;)V

    return-void
.end method

.method private addTrajectory(ILandroid/car/hardware/xpu/XpuApEssentialMsg$ApPathPoint$Builder;)V
    .locals 1

    .line 7756
    invoke-direct {p0}, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApTrajectoryDataType;->ensureTrajectoryIsMutable()V

    .line 7757
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApTrajectoryDataType;->trajectory_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    invoke-virtual {p2}, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApPathPoint$Builder;->build()Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object p2

    check-cast p2, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApPathPoint;

    invoke-interface {v0, p1, p2}, Lcom/android/carsdk/protobuf/Internal$ProtobufList;->add(ILjava/lang/Object;)V

    return-void
.end method

.method private addTrajectory(ILandroid/car/hardware/xpu/XpuApEssentialMsg$ApPathPoint;)V
    .locals 1

    .line 7738
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 7740
    invoke-direct {p0}, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApTrajectoryDataType;->ensureTrajectoryIsMutable()V

    .line 7741
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApTrajectoryDataType;->trajectory_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1, p2}, Lcom/android/carsdk/protobuf/Internal$ProtobufList;->add(ILjava/lang/Object;)V

    return-void
.end method

.method private addTrajectory(Landroid/car/hardware/xpu/XpuApEssentialMsg$ApPathPoint$Builder;)V
    .locals 1

    .line 7748
    invoke-direct {p0}, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApTrajectoryDataType;->ensureTrajectoryIsMutable()V

    .line 7749
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApTrajectoryDataType;->trajectory_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    invoke-virtual {p1}, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApPathPoint$Builder;->build()Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApPathPoint;

    invoke-interface {v0, p1}, Lcom/android/carsdk/protobuf/Internal$ProtobufList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private addTrajectory(Landroid/car/hardware/xpu/XpuApEssentialMsg$ApPathPoint;)V
    .locals 1

    .line 7727
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 7729
    invoke-direct {p0}, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApTrajectoryDataType;->ensureTrajectoryIsMutable()V

    .line 7730
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApTrajectoryDataType;->trajectory_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1}, Lcom/android/carsdk/protobuf/Internal$ProtobufList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private clearId()V
    .locals 1

    const/4 v0, 0x0

    .line 7620
    iput v0, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApTrajectoryDataType;->id_:I

    return-void
.end method

.method private clearTrajectory()V
    .locals 1

    .line 7772
    invoke-static {}, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApTrajectoryDataType;->emptyProtobufList()Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    move-result-object v0

    iput-object v0, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApTrajectoryDataType;->trajectory_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    return-void
.end method

.method private clearType()V
    .locals 1

    const/4 v0, 0x0

    .line 7659
    iput v0, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApTrajectoryDataType;->type_:I

    return-void
.end method

.method private ensureTrajectoryIsMutable()V
    .locals 1

    .line 7697
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApTrajectoryDataType;->trajectory_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    invoke-interface {v0}, Lcom/android/carsdk/protobuf/Internal$ProtobufList;->isModifiable()Z

    move-result v0

    if-nez v0, :cond_0

    .line 7698
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApTrajectoryDataType;->trajectory_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    .line 7699
    invoke-static {v0}, Lcom/android/carsdk/protobuf/GeneratedMessageLite;->mutableCopy(Lcom/android/carsdk/protobuf/Internal$ProtobufList;)Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    move-result-object v0

    iput-object v0, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApTrajectoryDataType;->trajectory_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    :cond_0
    return-void
.end method

.method public static getDefaultInstance()Landroid/car/hardware/xpu/XpuApEssentialMsg$ApTrajectoryDataType;
    .locals 1

    .line 8174
    sget-object v0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApTrajectoryDataType;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuApEssentialMsg$ApTrajectoryDataType;

    return-object v0
.end method

.method public static newBuilder()Landroid/car/hardware/xpu/XpuApEssentialMsg$ApTrajectoryDataType$Builder;
    .locals 1

    .line 7878
    sget-object v0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApTrajectoryDataType;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuApEssentialMsg$ApTrajectoryDataType;

    invoke-virtual {v0}, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApTrajectoryDataType;->toBuilder()Lcom/android/carsdk/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApTrajectoryDataType$Builder;

    return-object v0
.end method

.method public static newBuilder(Landroid/car/hardware/xpu/XpuApEssentialMsg$ApTrajectoryDataType;)Landroid/car/hardware/xpu/XpuApEssentialMsg$ApTrajectoryDataType$Builder;
    .locals 1

    .line 7881
    sget-object v0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApTrajectoryDataType;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuApEssentialMsg$ApTrajectoryDataType;

    invoke-virtual {v0}, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApTrajectoryDataType;->toBuilder()Lcom/android/carsdk/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApTrajectoryDataType$Builder;

    invoke-virtual {v0, p0}, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApTrajectoryDataType$Builder;->mergeFrom(Lcom/android/carsdk/protobuf/GeneratedMessageLite;)Lcom/android/carsdk/protobuf/GeneratedMessageLite$Builder;

    move-result-object p0

    check-cast p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApTrajectoryDataType$Builder;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Landroid/car/hardware/xpu/XpuApEssentialMsg$ApTrajectoryDataType;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 7855
    sget-object v0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApTrajectoryDataType;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuApEssentialMsg$ApTrajectoryDataType;

    invoke-static {v0, p0}, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApTrajectoryDataType;->parseDelimitedFrom(Lcom/android/carsdk/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApTrajectoryDataType;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/android/carsdk/protobuf/ExtensionRegistryLite;)Landroid/car/hardware/xpu/XpuApEssentialMsg$ApTrajectoryDataType;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 7861
    sget-object v0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApTrajectoryDataType;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuApEssentialMsg$ApTrajectoryDataType;

    invoke-static {v0, p0, p1}, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApTrajectoryDataType;->parseDelimitedFrom(Lcom/android/carsdk/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/android/carsdk/protobuf/ExtensionRegistryLite;)Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApTrajectoryDataType;

    return-object p0
.end method

.method public static parseFrom(Lcom/android/carsdk/protobuf/ByteString;)Landroid/car/hardware/xpu/XpuApEssentialMsg$ApTrajectoryDataType;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/carsdk/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 7819
    sget-object v0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApTrajectoryDataType;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuApEssentialMsg$ApTrajectoryDataType;

    invoke-static {v0, p0}, Lcom/android/carsdk/protobuf/GeneratedMessageLite;->parseFrom(Lcom/android/carsdk/protobuf/GeneratedMessageLite;Lcom/android/carsdk/protobuf/ByteString;)Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApTrajectoryDataType;

    return-object p0
.end method

.method public static parseFrom(Lcom/android/carsdk/protobuf/ByteString;Lcom/android/carsdk/protobuf/ExtensionRegistryLite;)Landroid/car/hardware/xpu/XpuApEssentialMsg$ApTrajectoryDataType;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/carsdk/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 7826
    sget-object v0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApTrajectoryDataType;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuApEssentialMsg$ApTrajectoryDataType;

    invoke-static {v0, p0, p1}, Lcom/android/carsdk/protobuf/GeneratedMessageLite;->parseFrom(Lcom/android/carsdk/protobuf/GeneratedMessageLite;Lcom/android/carsdk/protobuf/ByteString;Lcom/android/carsdk/protobuf/ExtensionRegistryLite;)Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApTrajectoryDataType;

    return-object p0
.end method

.method public static parseFrom(Lcom/android/carsdk/protobuf/CodedInputStream;)Landroid/car/hardware/xpu/XpuApEssentialMsg$ApTrajectoryDataType;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 7866
    sget-object v0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApTrajectoryDataType;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuApEssentialMsg$ApTrajectoryDataType;

    invoke-static {v0, p0}, Lcom/android/carsdk/protobuf/GeneratedMessageLite;->parseFrom(Lcom/android/carsdk/protobuf/GeneratedMessageLite;Lcom/android/carsdk/protobuf/CodedInputStream;)Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApTrajectoryDataType;

    return-object p0
.end method

.method public static parseFrom(Lcom/android/carsdk/protobuf/CodedInputStream;Lcom/android/carsdk/protobuf/ExtensionRegistryLite;)Landroid/car/hardware/xpu/XpuApEssentialMsg$ApTrajectoryDataType;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 7873
    sget-object v0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApTrajectoryDataType;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuApEssentialMsg$ApTrajectoryDataType;

    invoke-static {v0, p0, p1}, Lcom/android/carsdk/protobuf/GeneratedMessageLite;->parseFrom(Lcom/android/carsdk/protobuf/GeneratedMessageLite;Lcom/android/carsdk/protobuf/CodedInputStream;Lcom/android/carsdk/protobuf/ExtensionRegistryLite;)Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApTrajectoryDataType;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Landroid/car/hardware/xpu/XpuApEssentialMsg$ApTrajectoryDataType;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 7843
    sget-object v0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApTrajectoryDataType;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuApEssentialMsg$ApTrajectoryDataType;

    invoke-static {v0, p0}, Lcom/android/carsdk/protobuf/GeneratedMessageLite;->parseFrom(Lcom/android/carsdk/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApTrajectoryDataType;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/android/carsdk/protobuf/ExtensionRegistryLite;)Landroid/car/hardware/xpu/XpuApEssentialMsg$ApTrajectoryDataType;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 7850
    sget-object v0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApTrajectoryDataType;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuApEssentialMsg$ApTrajectoryDataType;

    invoke-static {v0, p0, p1}, Lcom/android/carsdk/protobuf/GeneratedMessageLite;->parseFrom(Lcom/android/carsdk/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/android/carsdk/protobuf/ExtensionRegistryLite;)Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApTrajectoryDataType;

    return-object p0
.end method

.method public static parseFrom([B)Landroid/car/hardware/xpu/XpuApEssentialMsg$ApTrajectoryDataType;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/carsdk/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 7831
    sget-object v0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApTrajectoryDataType;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuApEssentialMsg$ApTrajectoryDataType;

    invoke-static {v0, p0}, Lcom/android/carsdk/protobuf/GeneratedMessageLite;->parseFrom(Lcom/android/carsdk/protobuf/GeneratedMessageLite;[B)Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApTrajectoryDataType;

    return-object p0
.end method

.method public static parseFrom([BLcom/android/carsdk/protobuf/ExtensionRegistryLite;)Landroid/car/hardware/xpu/XpuApEssentialMsg$ApTrajectoryDataType;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/carsdk/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 7838
    sget-object v0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApTrajectoryDataType;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuApEssentialMsg$ApTrajectoryDataType;

    invoke-static {v0, p0, p1}, Lcom/android/carsdk/protobuf/GeneratedMessageLite;->parseFrom(Lcom/android/carsdk/protobuf/GeneratedMessageLite;[BLcom/android/carsdk/protobuf/ExtensionRegistryLite;)Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApTrajectoryDataType;

    return-object p0
.end method

.method public static parser()Lcom/android/carsdk/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/android/carsdk/protobuf/Parser<",
            "Landroid/car/hardware/xpu/XpuApEssentialMsg$ApTrajectoryDataType;",
            ">;"
        }
    .end annotation

    .line 8180
    sget-object v0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApTrajectoryDataType;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuApEssentialMsg$ApTrajectoryDataType;

    invoke-virtual {v0}, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApTrajectoryDataType;->getParserForType()Lcom/android/carsdk/protobuf/Parser;

    move-result-object v0

    return-object v0
.end method

.method private removeTrajectory(I)V
    .locals 1

    .line 7778
    invoke-direct {p0}, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApTrajectoryDataType;->ensureTrajectoryIsMutable()V

    .line 7779
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApTrajectoryDataType;->trajectory_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1}, Lcom/android/carsdk/protobuf/Internal$ProtobufList;->remove(I)Ljava/lang/Object;

    return-void
.end method

.method private setId(I)V
    .locals 0

    .line 7609
    iput p1, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApTrajectoryDataType;->id_:I

    return-void
.end method

.method private setTrajectory(ILandroid/car/hardware/xpu/XpuApEssentialMsg$ApPathPoint$Builder;)V
    .locals 1

    .line 7719
    invoke-direct {p0}, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApTrajectoryDataType;->ensureTrajectoryIsMutable()V

    .line 7720
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApTrajectoryDataType;->trajectory_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    invoke-virtual {p2}, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApPathPoint$Builder;->build()Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object p2

    check-cast p2, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApPathPoint;

    invoke-interface {v0, p1, p2}, Lcom/android/carsdk/protobuf/Internal$ProtobufList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private setTrajectory(ILandroid/car/hardware/xpu/XpuApEssentialMsg$ApPathPoint;)V
    .locals 1

    .line 7709
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 7711
    invoke-direct {p0}, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApTrajectoryDataType;->ensureTrajectoryIsMutable()V

    .line 7712
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApTrajectoryDataType;->trajectory_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1, p2}, Lcom/android/carsdk/protobuf/Internal$ProtobufList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private setType(Landroid/car/hardware/xpu/XpuApEssentialMsg$ApTrajectoryDataType$ApTrajType;)V
    .locals 0

    .line 7649
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 7652
    invoke-virtual {p1}, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApTrajectoryDataType$ApTrajType;->getNumber()I

    move-result p1

    iput p1, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApTrajectoryDataType;->type_:I

    return-void
.end method

.method private setTypeValue(I)V
    .locals 0

    .line 7642
    iput p1, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApTrajectoryDataType;->type_:I

    return-void
.end method


# virtual methods
.method protected final dynamicMethod(Lcom/android/carsdk/protobuf/GeneratedMessageLite$MethodToInvoke;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5

    .line 8072
    sget-object v0, Landroid/car/hardware/xpu/XpuApEssentialMsg$1;->$SwitchMap$com$google$protobuf$GeneratedMessageLite$MethodToInvoke:[I

    invoke-virtual {p1}, Lcom/android/carsdk/protobuf/GeneratedMessageLite$MethodToInvoke;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x1

    packed-switch p1, :pswitch_data_0

    .line 8162
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1

    .line 8153
    :pswitch_0
    sget-object p1, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApTrajectoryDataType;->PARSER:Lcom/android/carsdk/protobuf/Parser;

    if-nez p1, :cond_1

    const-class p1, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApTrajectoryDataType;

    monitor-enter p1

    .line 8154
    :try_start_0
    sget-object p2, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApTrajectoryDataType;->PARSER:Lcom/android/carsdk/protobuf/Parser;

    if-nez p2, :cond_0

    .line 8155
    new-instance p2, Lcom/android/carsdk/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;

    sget-object p3, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApTrajectoryDataType;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuApEssentialMsg$ApTrajectoryDataType;

    invoke-direct {p2, p3}, Lcom/android/carsdk/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;-><init>(Lcom/android/carsdk/protobuf/GeneratedMessageLite;)V

    sput-object p2, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApTrajectoryDataType;->PARSER:Lcom/android/carsdk/protobuf/Parser;

    .line 8157
    :cond_0
    monitor-exit p1

    goto :goto_0

    :catchall_0
    move-exception p2

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p2

    .line 8159
    :cond_1
    :goto_0
    sget-object p1, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApTrajectoryDataType;->PARSER:Lcom/android/carsdk/protobuf/Parser;

    return-object p1

    .line 8100
    :pswitch_1
    check-cast p2, Lcom/android/carsdk/protobuf/CodedInputStream;

    .line 8102
    check-cast p3, Lcom/android/carsdk/protobuf/ExtensionRegistryLite;

    :cond_2
    :goto_1
    if-nez v1, :cond_8

    .line 8107
    :try_start_1
    invoke-virtual {p2}, Lcom/android/carsdk/protobuf/CodedInputStream;->readTag()I

    move-result p1

    if-eqz p1, :cond_7

    const/16 v0, 0x8

    if-eq p1, v0, :cond_6

    const/16 v0, 0x10

    if-eq p1, v0, :cond_5

    const/16 v0, 0x1a

    if-eq p1, v0, :cond_3

    .line 8113
    invoke-virtual {p2, p1}, Lcom/android/carsdk/protobuf/CodedInputStream;->skipField(I)Z

    move-result p1

    if-nez p1, :cond_2

    goto :goto_2

    .line 8130
    :cond_3
    iget-object p1, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApTrajectoryDataType;->trajectory_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    invoke-interface {p1}, Lcom/android/carsdk/protobuf/Internal$ProtobufList;->isModifiable()Z

    move-result p1

    if-nez p1, :cond_4

    .line 8131
    iget-object p1, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApTrajectoryDataType;->trajectory_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    .line 8132
    invoke-static {p1}, Lcom/android/carsdk/protobuf/GeneratedMessageLite;->mutableCopy(Lcom/android/carsdk/protobuf/Internal$ProtobufList;)Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    move-result-object p1

    iput-object p1, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApTrajectoryDataType;->trajectory_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    .line 8134
    :cond_4
    iget-object p1, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApTrajectoryDataType;->trajectory_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    .line 8135
    invoke-static {}, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApPathPoint;->parser()Lcom/android/carsdk/protobuf/Parser;

    move-result-object v0

    invoke-virtual {p2, v0, p3}, Lcom/android/carsdk/protobuf/CodedInputStream;->readMessage(Lcom/android/carsdk/protobuf/Parser;Lcom/android/carsdk/protobuf/ExtensionRegistryLite;)Lcom/android/carsdk/protobuf/MessageLite;

    move-result-object v0

    check-cast v0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApPathPoint;

    .line 8134
    invoke-interface {p1, v0}, Lcom/android/carsdk/protobuf/Internal$ProtobufList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 8124
    :cond_5
    invoke-virtual {p2}, Lcom/android/carsdk/protobuf/CodedInputStream;->readEnum()I

    move-result p1

    .line 8126
    iput p1, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApTrajectoryDataType;->type_:I

    goto :goto_1

    .line 8120
    :cond_6
    invoke-virtual {p2}, Lcom/android/carsdk/protobuf/CodedInputStream;->readInt32()I

    move-result p1

    iput p1, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApTrajectoryDataType;->id_:I
    :try_end_1
    .catch Lcom/android/carsdk/protobuf/InvalidProtocolBufferException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    :cond_7
    :goto_2
    move v1, v2

    goto :goto_1

    :catchall_1
    move-exception p1

    goto :goto_3

    :catch_0
    move-exception p1

    .line 8143
    :try_start_2
    new-instance p2, Ljava/lang/RuntimeException;

    new-instance p3, Lcom/android/carsdk/protobuf/InvalidProtocolBufferException;

    .line 8145
    invoke-virtual {p1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p3, p1}, Lcom/android/carsdk/protobuf/InvalidProtocolBufferException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, p0}, Lcom/android/carsdk/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/android/carsdk/protobuf/MessageLite;)Lcom/android/carsdk/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p2

    :catch_1
    move-exception p1

    .line 8141
    new-instance p2, Ljava/lang/RuntimeException;

    invoke-virtual {p1, p0}, Lcom/android/carsdk/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/android/carsdk/protobuf/MessageLite;)Lcom/android/carsdk/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 8146
    :goto_3
    throw p1

    .line 8150
    :cond_8
    :pswitch_2
    sget-object p1, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApTrajectoryDataType;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuApEssentialMsg$ApTrajectoryDataType;

    return-object p1

    .line 8087
    :pswitch_3
    check-cast p2, Lcom/android/carsdk/protobuf/GeneratedMessageLite$Visitor;

    .line 8088
    check-cast p3, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApTrajectoryDataType;

    .line 8089
    iget p1, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApTrajectoryDataType;->id_:I

    if-eqz p1, :cond_9

    move v0, v2

    goto :goto_4

    :cond_9
    move v0, v1

    :goto_4
    iget v3, p3, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApTrajectoryDataType;->id_:I

    if-eqz v3, :cond_a

    move v4, v2

    goto :goto_5

    :cond_a
    move v4, v1

    :goto_5
    invoke-interface {p2, v0, p1, v4, v3}, Lcom/android/carsdk/protobuf/GeneratedMessageLite$Visitor;->visitInt(ZIZI)I

    move-result p1

    iput p1, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApTrajectoryDataType;->id_:I

    .line 8091
    iget p1, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApTrajectoryDataType;->type_:I

    if-eqz p1, :cond_b

    move v0, v2

    goto :goto_6

    :cond_b
    move v0, v1

    :goto_6
    iget v3, p3, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApTrajectoryDataType;->type_:I

    if-eqz v3, :cond_c

    move v1, v2

    :cond_c
    invoke-interface {p2, v0, p1, v1, v3}, Lcom/android/carsdk/protobuf/GeneratedMessageLite$Visitor;->visitInt(ZIZI)I

    move-result p1

    iput p1, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApTrajectoryDataType;->type_:I

    .line 8092
    iget-object p1, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApTrajectoryDataType;->trajectory_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    iget-object v0, p3, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApTrajectoryDataType;->trajectory_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    invoke-interface {p2, p1, v0}, Lcom/android/carsdk/protobuf/GeneratedMessageLite$Visitor;->visitList(Lcom/android/carsdk/protobuf/Internal$ProtobufList;Lcom/android/carsdk/protobuf/Internal$ProtobufList;)Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    move-result-object p1

    iput-object p1, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApTrajectoryDataType;->trajectory_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    .line 8093
    sget-object p1, Lcom/android/carsdk/protobuf/GeneratedMessageLite$MergeFromVisitor;->INSTANCE:Lcom/android/carsdk/protobuf/GeneratedMessageLite$MergeFromVisitor;

    if-ne p2, p1, :cond_d

    .line 8095
    iget p1, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApTrajectoryDataType;->bitField0_:I

    iget p2, p3, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApTrajectoryDataType;->bitField0_:I

    or-int/2addr p1, p2

    iput p1, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApTrajectoryDataType;->bitField0_:I

    :cond_d
    return-object p0

    .line 8084
    :pswitch_4
    new-instance p1, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApTrajectoryDataType$Builder;

    invoke-direct {p1, v0}, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApTrajectoryDataType$Builder;-><init>(Landroid/car/hardware/xpu/XpuApEssentialMsg$1;)V

    return-object p1

    .line 8080
    :pswitch_5
    iget-object p1, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApTrajectoryDataType;->trajectory_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    invoke-interface {p1}, Lcom/android/carsdk/protobuf/Internal$ProtobufList;->makeImmutable()V

    return-object v0

    .line 8077
    :pswitch_6
    sget-object p1, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApTrajectoryDataType;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuApEssentialMsg$ApTrajectoryDataType;

    return-object p1

    .line 8074
    :pswitch_7
    new-instance p1, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApTrajectoryDataType;

    invoke-direct {p1}, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApTrajectoryDataType;-><init>()V

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

.method public getId()I
    .locals 1

    .line 7598
    iget v0, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApTrajectoryDataType;->id_:I

    return v0
.end method

.method public getSerializedSize()I
    .locals 4

    .line 7796
    iget v0, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApTrajectoryDataType;->memoizedSerializedSize:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    return v0

    .line 7800
    :cond_0
    iget v0, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApTrajectoryDataType;->id_:I

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    const/4 v2, 0x1

    .line 7802
    invoke-static {v2, v0}, Lcom/android/carsdk/protobuf/CodedOutputStream;->computeInt32Size(II)I

    move-result v0

    add-int/2addr v0, v1

    goto :goto_0

    :cond_1
    move v0, v1

    .line 7804
    :goto_0
    iget v2, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApTrajectoryDataType;->type_:I

    sget-object v3, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApTrajectoryDataType$ApTrajType;->ApTraj_TYPE_UNKNOWN:Landroid/car/hardware/xpu/XpuApEssentialMsg$ApTrajectoryDataType$ApTrajType;

    invoke-virtual {v3}, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApTrajectoryDataType$ApTrajType;->getNumber()I

    move-result v3

    if-eq v2, v3, :cond_2

    const/4 v2, 0x2

    .line 7805
    iget v3, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApTrajectoryDataType;->type_:I

    .line 7806
    invoke-static {v2, v3}, Lcom/android/carsdk/protobuf/CodedOutputStream;->computeEnumSize(II)I

    move-result v2

    add-int/2addr v0, v2

    .line 7808
    :cond_2
    :goto_1
    iget-object v2, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApTrajectoryDataType;->trajectory_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    invoke-interface {v2}, Lcom/android/carsdk/protobuf/Internal$ProtobufList;->size()I

    move-result v2

    if-ge v1, v2, :cond_3

    const/4 v2, 0x3

    .line 7809
    iget-object v3, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApTrajectoryDataType;->trajectory_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    .line 7810
    invoke-interface {v3, v1}, Lcom/android/carsdk/protobuf/Internal$ProtobufList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/carsdk/protobuf/MessageLite;

    invoke-static {v2, v3}, Lcom/android/carsdk/protobuf/CodedOutputStream;->computeMessageSize(ILcom/android/carsdk/protobuf/MessageLite;)I

    move-result v2

    add-int/2addr v0, v2

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 7812
    :cond_3
    iput v0, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApTrajectoryDataType;->memoizedSerializedSize:I

    return v0
.end method

.method public getTrajectory(I)Landroid/car/hardware/xpu/XpuApEssentialMsg$ApPathPoint;
    .locals 1

    .line 7687
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApTrajectoryDataType;->trajectory_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1}, Lcom/android/carsdk/protobuf/Internal$ProtobufList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApPathPoint;

    return-object p1
.end method

.method public getTrajectoryCount()I
    .locals 1

    .line 7681
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApTrajectoryDataType;->trajectory_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

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
            "Landroid/car/hardware/xpu/XpuApEssentialMsg$ApPathPoint;",
            ">;"
        }
    .end annotation

    .line 7668
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApTrajectoryDataType;->trajectory_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    return-object v0
.end method

.method public getTrajectoryOrBuilder(I)Landroid/car/hardware/xpu/XpuApEssentialMsg$ApPathPointOrBuilder;
    .locals 1

    .line 7694
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApTrajectoryDataType;->trajectory_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1}, Lcom/android/carsdk/protobuf/Internal$ProtobufList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApPathPointOrBuilder;

    return-object p1
.end method

.method public getTrajectoryOrBuilderList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "+",
            "Landroid/car/hardware/xpu/XpuApEssentialMsg$ApPathPointOrBuilder;",
            ">;"
        }
    .end annotation

    .line 7675
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApTrajectoryDataType;->trajectory_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    return-object v0
.end method

.method public getType()Landroid/car/hardware/xpu/XpuApEssentialMsg$ApTrajectoryDataType$ApTrajType;
    .locals 1

    .line 7635
    iget v0, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApTrajectoryDataType;->type_:I

    invoke-static {v0}, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApTrajectoryDataType$ApTrajType;->forNumber(I)Landroid/car/hardware/xpu/XpuApEssentialMsg$ApTrajectoryDataType$ApTrajType;

    move-result-object v0

    if-nez v0, :cond_0

    .line 7636
    sget-object v0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApTrajectoryDataType$ApTrajType;->UNRECOGNIZED:Landroid/car/hardware/xpu/XpuApEssentialMsg$ApTrajectoryDataType$ApTrajType;

    :cond_0
    return-object v0
.end method

.method public getTypeValue()I
    .locals 1

    .line 7629
    iget v0, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApTrajectoryDataType;->type_:I

    return v0
.end method

.method public writeTo(Lcom/android/carsdk/protobuf/CodedOutputStream;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 7784
    iget v0, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApTrajectoryDataType;->id_:I

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    .line 7785
    invoke-virtual {p1, v1, v0}, Lcom/android/carsdk/protobuf/CodedOutputStream;->writeInt32(II)V

    .line 7787
    :cond_0
    iget v0, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApTrajectoryDataType;->type_:I

    sget-object v1, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApTrajectoryDataType$ApTrajType;->ApTraj_TYPE_UNKNOWN:Landroid/car/hardware/xpu/XpuApEssentialMsg$ApTrajectoryDataType$ApTrajType;

    invoke-virtual {v1}, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApTrajectoryDataType$ApTrajType;->getNumber()I

    move-result v1

    if-eq v0, v1, :cond_1

    const/4 v0, 0x2

    .line 7788
    iget v1, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApTrajectoryDataType;->type_:I

    invoke-virtual {p1, v0, v1}, Lcom/android/carsdk/protobuf/CodedOutputStream;->writeEnum(II)V

    :cond_1
    const/4 v0, 0x0

    .line 7790
    :goto_0
    iget-object v1, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApTrajectoryDataType;->trajectory_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    invoke-interface {v1}, Lcom/android/carsdk/protobuf/Internal$ProtobufList;->size()I

    move-result v1

    if-ge v0, v1, :cond_2

    const/4 v1, 0x3

    .line 7791
    iget-object v2, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApTrajectoryDataType;->trajectory_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    invoke-interface {v2, v0}, Lcom/android/carsdk/protobuf/Internal$ProtobufList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/carsdk/protobuf/MessageLite;

    invoke-virtual {p1, v1, v2}, Lcom/android/carsdk/protobuf/CodedOutputStream;->writeMessage(ILcom/android/carsdk/protobuf/MessageLite;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method
