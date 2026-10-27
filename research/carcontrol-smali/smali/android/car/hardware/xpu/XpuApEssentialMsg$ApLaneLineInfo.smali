.class public final Landroid/car/hardware/xpu/XpuApEssentialMsg$ApLaneLineInfo;
.super Lcom/android/carsdk/protobuf/GeneratedMessageLite;
.source "XpuApEssentialMsg.java"

# interfaces
.implements Landroid/car/hardware/xpu/XpuApEssentialMsg$ApLaneLineInfoOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/car/hardware/xpu/XpuApEssentialMsg;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ApLaneLineInfo"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/car/hardware/xpu/XpuApEssentialMsg$ApLaneLineInfo$Builder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/carsdk/protobuf/GeneratedMessageLite<",
        "Landroid/car/hardware/xpu/XpuApEssentialMsg$ApLaneLineInfo;",
        "Landroid/car/hardware/xpu/XpuApEssentialMsg$ApLaneLineInfo$Builder;",
        ">;",
        "Landroid/car/hardware/xpu/XpuApEssentialMsg$ApLaneLineInfoOrBuilder;"
    }
.end annotation


# static fields
.field public static final ATTRI_FIELD_NUMBER:I = 0x1

.field private static final DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuApEssentialMsg$ApLaneLineInfo;

.field private static volatile PARSER:Lcom/android/carsdk/protobuf/Parser; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/carsdk/protobuf/Parser<",
            "Landroid/car/hardware/xpu/XpuApEssentialMsg$ApLaneLineInfo;",
            ">;"
        }
    .end annotation
.end field

.field public static final PATH_POINTS_FIELD_NUMBER:I = 0x2


# instance fields
.field private attri_:I

.field private bitField0_:I

.field private pathPoints_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/carsdk/protobuf/Internal$ProtobufList<",
            "Landroid/car/hardware/xpu/XpuApEssentialMsg$ApPathPoint;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 6597
    new-instance v0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApLaneLineInfo;

    invoke-direct {v0}, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApLaneLineInfo;-><init>()V

    sput-object v0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApLaneLineInfo;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuApEssentialMsg$ApLaneLineInfo;

    .line 6598
    invoke-virtual {v0}, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApLaneLineInfo;->makeImmutable()V

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 6125
    invoke-direct {p0}, Lcom/android/carsdk/protobuf/GeneratedMessageLite;-><init>()V

    const/4 v0, 0x0

    .line 6126
    iput v0, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApLaneLineInfo;->attri_:I

    .line 6127
    invoke-static {}, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApLaneLineInfo;->emptyProtobufList()Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    move-result-object v0

    iput-object v0, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApLaneLineInfo;->pathPoints_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    return-void
.end method

.method static synthetic access$13600()Landroid/car/hardware/xpu/XpuApEssentialMsg$ApLaneLineInfo;
    .locals 1

    .line 6120
    sget-object v0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApLaneLineInfo;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuApEssentialMsg$ApLaneLineInfo;

    return-object v0
.end method

.method static synthetic access$13700(Landroid/car/hardware/xpu/XpuApEssentialMsg$ApLaneLineInfo;I)V
    .locals 0

    .line 6120
    invoke-direct {p0, p1}, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApLaneLineInfo;->setAttri(I)V

    return-void
.end method

.method static synthetic access$13800(Landroid/car/hardware/xpu/XpuApEssentialMsg$ApLaneLineInfo;)V
    .locals 0

    .line 6120
    invoke-direct {p0}, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApLaneLineInfo;->clearAttri()V

    return-void
.end method

.method static synthetic access$13900(Landroid/car/hardware/xpu/XpuApEssentialMsg$ApLaneLineInfo;ILandroid/car/hardware/xpu/XpuApEssentialMsg$ApPathPoint;)V
    .locals 0

    .line 6120
    invoke-direct {p0, p1, p2}, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApLaneLineInfo;->setPathPoints(ILandroid/car/hardware/xpu/XpuApEssentialMsg$ApPathPoint;)V

    return-void
.end method

.method static synthetic access$14000(Landroid/car/hardware/xpu/XpuApEssentialMsg$ApLaneLineInfo;ILandroid/car/hardware/xpu/XpuApEssentialMsg$ApPathPoint$Builder;)V
    .locals 0

    .line 6120
    invoke-direct {p0, p1, p2}, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApLaneLineInfo;->setPathPoints(ILandroid/car/hardware/xpu/XpuApEssentialMsg$ApPathPoint$Builder;)V

    return-void
.end method

.method static synthetic access$14100(Landroid/car/hardware/xpu/XpuApEssentialMsg$ApLaneLineInfo;Landroid/car/hardware/xpu/XpuApEssentialMsg$ApPathPoint;)V
    .locals 0

    .line 6120
    invoke-direct {p0, p1}, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApLaneLineInfo;->addPathPoints(Landroid/car/hardware/xpu/XpuApEssentialMsg$ApPathPoint;)V

    return-void
.end method

.method static synthetic access$14200(Landroid/car/hardware/xpu/XpuApEssentialMsg$ApLaneLineInfo;ILandroid/car/hardware/xpu/XpuApEssentialMsg$ApPathPoint;)V
    .locals 0

    .line 6120
    invoke-direct {p0, p1, p2}, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApLaneLineInfo;->addPathPoints(ILandroid/car/hardware/xpu/XpuApEssentialMsg$ApPathPoint;)V

    return-void
.end method

.method static synthetic access$14300(Landroid/car/hardware/xpu/XpuApEssentialMsg$ApLaneLineInfo;Landroid/car/hardware/xpu/XpuApEssentialMsg$ApPathPoint$Builder;)V
    .locals 0

    .line 6120
    invoke-direct {p0, p1}, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApLaneLineInfo;->addPathPoints(Landroid/car/hardware/xpu/XpuApEssentialMsg$ApPathPoint$Builder;)V

    return-void
.end method

.method static synthetic access$14400(Landroid/car/hardware/xpu/XpuApEssentialMsg$ApLaneLineInfo;ILandroid/car/hardware/xpu/XpuApEssentialMsg$ApPathPoint$Builder;)V
    .locals 0

    .line 6120
    invoke-direct {p0, p1, p2}, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApLaneLineInfo;->addPathPoints(ILandroid/car/hardware/xpu/XpuApEssentialMsg$ApPathPoint$Builder;)V

    return-void
.end method

.method static synthetic access$14500(Landroid/car/hardware/xpu/XpuApEssentialMsg$ApLaneLineInfo;Ljava/lang/Iterable;)V
    .locals 0

    .line 6120
    invoke-direct {p0, p1}, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApLaneLineInfo;->addAllPathPoints(Ljava/lang/Iterable;)V

    return-void
.end method

.method static synthetic access$14600(Landroid/car/hardware/xpu/XpuApEssentialMsg$ApLaneLineInfo;)V
    .locals 0

    .line 6120
    invoke-direct {p0}, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApLaneLineInfo;->clearPathPoints()V

    return-void
.end method

.method static synthetic access$14700(Landroid/car/hardware/xpu/XpuApEssentialMsg$ApLaneLineInfo;I)V
    .locals 0

    .line 6120
    invoke-direct {p0, p1}, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApLaneLineInfo;->removePathPoints(I)V

    return-void
.end method

.method private addAllPathPoints(Ljava/lang/Iterable;)V
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

    .line 6255
    invoke-direct {p0}, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApLaneLineInfo;->ensurePathPointsIsMutable()V

    .line 6256
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApLaneLineInfo;->pathPoints_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    invoke-static {p1, v0}, Lcom/android/carsdk/protobuf/AbstractMessageLite;->addAll(Ljava/lang/Iterable;Ljava/util/Collection;)V

    return-void
.end method

.method private addPathPoints(ILandroid/car/hardware/xpu/XpuApEssentialMsg$ApPathPoint$Builder;)V
    .locals 1

    .line 6247
    invoke-direct {p0}, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApLaneLineInfo;->ensurePathPointsIsMutable()V

    .line 6248
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApLaneLineInfo;->pathPoints_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    invoke-virtual {p2}, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApPathPoint$Builder;->build()Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object p2

    check-cast p2, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApPathPoint;

    invoke-interface {v0, p1, p2}, Lcom/android/carsdk/protobuf/Internal$ProtobufList;->add(ILjava/lang/Object;)V

    return-void
.end method

.method private addPathPoints(ILandroid/car/hardware/xpu/XpuApEssentialMsg$ApPathPoint;)V
    .locals 1

    .line 6229
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6231
    invoke-direct {p0}, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApLaneLineInfo;->ensurePathPointsIsMutable()V

    .line 6232
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApLaneLineInfo;->pathPoints_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1, p2}, Lcom/android/carsdk/protobuf/Internal$ProtobufList;->add(ILjava/lang/Object;)V

    return-void
.end method

.method private addPathPoints(Landroid/car/hardware/xpu/XpuApEssentialMsg$ApPathPoint$Builder;)V
    .locals 1

    .line 6239
    invoke-direct {p0}, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApLaneLineInfo;->ensurePathPointsIsMutable()V

    .line 6240
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApLaneLineInfo;->pathPoints_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    invoke-virtual {p1}, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApPathPoint$Builder;->build()Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApPathPoint;

    invoke-interface {v0, p1}, Lcom/android/carsdk/protobuf/Internal$ProtobufList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private addPathPoints(Landroid/car/hardware/xpu/XpuApEssentialMsg$ApPathPoint;)V
    .locals 1

    .line 6218
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6220
    invoke-direct {p0}, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApLaneLineInfo;->ensurePathPointsIsMutable()V

    .line 6221
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApLaneLineInfo;->pathPoints_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1}, Lcom/android/carsdk/protobuf/Internal$ProtobufList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private clearAttri()V
    .locals 1

    const/4 v0, 0x0

    .line 6150
    iput v0, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApLaneLineInfo;->attri_:I

    return-void
.end method

.method private clearPathPoints()V
    .locals 1

    .line 6263
    invoke-static {}, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApLaneLineInfo;->emptyProtobufList()Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    move-result-object v0

    iput-object v0, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApLaneLineInfo;->pathPoints_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    return-void
.end method

.method private ensurePathPointsIsMutable()V
    .locals 1

    .line 6188
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApLaneLineInfo;->pathPoints_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    invoke-interface {v0}, Lcom/android/carsdk/protobuf/Internal$ProtobufList;->isModifiable()Z

    move-result v0

    if-nez v0, :cond_0

    .line 6189
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApLaneLineInfo;->pathPoints_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    .line 6190
    invoke-static {v0}, Lcom/android/carsdk/protobuf/GeneratedMessageLite;->mutableCopy(Lcom/android/carsdk/protobuf/Internal$ProtobufList;)Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    move-result-object v0

    iput-object v0, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApLaneLineInfo;->pathPoints_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    :cond_0
    return-void
.end method

.method public static getDefaultInstance()Landroid/car/hardware/xpu/XpuApEssentialMsg$ApLaneLineInfo;
    .locals 1

    .line 6602
    sget-object v0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApLaneLineInfo;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuApEssentialMsg$ApLaneLineInfo;

    return-object v0
.end method

.method public static newBuilder()Landroid/car/hardware/xpu/XpuApEssentialMsg$ApLaneLineInfo$Builder;
    .locals 1

    .line 6362
    sget-object v0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApLaneLineInfo;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuApEssentialMsg$ApLaneLineInfo;

    invoke-virtual {v0}, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApLaneLineInfo;->toBuilder()Lcom/android/carsdk/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApLaneLineInfo$Builder;

    return-object v0
.end method

.method public static newBuilder(Landroid/car/hardware/xpu/XpuApEssentialMsg$ApLaneLineInfo;)Landroid/car/hardware/xpu/XpuApEssentialMsg$ApLaneLineInfo$Builder;
    .locals 1

    .line 6365
    sget-object v0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApLaneLineInfo;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuApEssentialMsg$ApLaneLineInfo;

    invoke-virtual {v0}, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApLaneLineInfo;->toBuilder()Lcom/android/carsdk/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApLaneLineInfo$Builder;

    invoke-virtual {v0, p0}, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApLaneLineInfo$Builder;->mergeFrom(Lcom/android/carsdk/protobuf/GeneratedMessageLite;)Lcom/android/carsdk/protobuf/GeneratedMessageLite$Builder;

    move-result-object p0

    check-cast p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApLaneLineInfo$Builder;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Landroid/car/hardware/xpu/XpuApEssentialMsg$ApLaneLineInfo;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 6339
    sget-object v0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApLaneLineInfo;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuApEssentialMsg$ApLaneLineInfo;

    invoke-static {v0, p0}, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApLaneLineInfo;->parseDelimitedFrom(Lcom/android/carsdk/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApLaneLineInfo;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/android/carsdk/protobuf/ExtensionRegistryLite;)Landroid/car/hardware/xpu/XpuApEssentialMsg$ApLaneLineInfo;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 6345
    sget-object v0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApLaneLineInfo;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuApEssentialMsg$ApLaneLineInfo;

    invoke-static {v0, p0, p1}, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApLaneLineInfo;->parseDelimitedFrom(Lcom/android/carsdk/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/android/carsdk/protobuf/ExtensionRegistryLite;)Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApLaneLineInfo;

    return-object p0
.end method

.method public static parseFrom(Lcom/android/carsdk/protobuf/ByteString;)Landroid/car/hardware/xpu/XpuApEssentialMsg$ApLaneLineInfo;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/carsdk/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 6303
    sget-object v0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApLaneLineInfo;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuApEssentialMsg$ApLaneLineInfo;

    invoke-static {v0, p0}, Lcom/android/carsdk/protobuf/GeneratedMessageLite;->parseFrom(Lcom/android/carsdk/protobuf/GeneratedMessageLite;Lcom/android/carsdk/protobuf/ByteString;)Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApLaneLineInfo;

    return-object p0
.end method

.method public static parseFrom(Lcom/android/carsdk/protobuf/ByteString;Lcom/android/carsdk/protobuf/ExtensionRegistryLite;)Landroid/car/hardware/xpu/XpuApEssentialMsg$ApLaneLineInfo;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/carsdk/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 6310
    sget-object v0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApLaneLineInfo;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuApEssentialMsg$ApLaneLineInfo;

    invoke-static {v0, p0, p1}, Lcom/android/carsdk/protobuf/GeneratedMessageLite;->parseFrom(Lcom/android/carsdk/protobuf/GeneratedMessageLite;Lcom/android/carsdk/protobuf/ByteString;Lcom/android/carsdk/protobuf/ExtensionRegistryLite;)Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApLaneLineInfo;

    return-object p0
.end method

.method public static parseFrom(Lcom/android/carsdk/protobuf/CodedInputStream;)Landroid/car/hardware/xpu/XpuApEssentialMsg$ApLaneLineInfo;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 6350
    sget-object v0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApLaneLineInfo;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuApEssentialMsg$ApLaneLineInfo;

    invoke-static {v0, p0}, Lcom/android/carsdk/protobuf/GeneratedMessageLite;->parseFrom(Lcom/android/carsdk/protobuf/GeneratedMessageLite;Lcom/android/carsdk/protobuf/CodedInputStream;)Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApLaneLineInfo;

    return-object p0
.end method

.method public static parseFrom(Lcom/android/carsdk/protobuf/CodedInputStream;Lcom/android/carsdk/protobuf/ExtensionRegistryLite;)Landroid/car/hardware/xpu/XpuApEssentialMsg$ApLaneLineInfo;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 6357
    sget-object v0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApLaneLineInfo;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuApEssentialMsg$ApLaneLineInfo;

    invoke-static {v0, p0, p1}, Lcom/android/carsdk/protobuf/GeneratedMessageLite;->parseFrom(Lcom/android/carsdk/protobuf/GeneratedMessageLite;Lcom/android/carsdk/protobuf/CodedInputStream;Lcom/android/carsdk/protobuf/ExtensionRegistryLite;)Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApLaneLineInfo;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Landroid/car/hardware/xpu/XpuApEssentialMsg$ApLaneLineInfo;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 6327
    sget-object v0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApLaneLineInfo;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuApEssentialMsg$ApLaneLineInfo;

    invoke-static {v0, p0}, Lcom/android/carsdk/protobuf/GeneratedMessageLite;->parseFrom(Lcom/android/carsdk/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApLaneLineInfo;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/android/carsdk/protobuf/ExtensionRegistryLite;)Landroid/car/hardware/xpu/XpuApEssentialMsg$ApLaneLineInfo;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 6334
    sget-object v0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApLaneLineInfo;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuApEssentialMsg$ApLaneLineInfo;

    invoke-static {v0, p0, p1}, Lcom/android/carsdk/protobuf/GeneratedMessageLite;->parseFrom(Lcom/android/carsdk/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/android/carsdk/protobuf/ExtensionRegistryLite;)Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApLaneLineInfo;

    return-object p0
.end method

.method public static parseFrom([B)Landroid/car/hardware/xpu/XpuApEssentialMsg$ApLaneLineInfo;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/carsdk/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 6315
    sget-object v0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApLaneLineInfo;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuApEssentialMsg$ApLaneLineInfo;

    invoke-static {v0, p0}, Lcom/android/carsdk/protobuf/GeneratedMessageLite;->parseFrom(Lcom/android/carsdk/protobuf/GeneratedMessageLite;[B)Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApLaneLineInfo;

    return-object p0
.end method

.method public static parseFrom([BLcom/android/carsdk/protobuf/ExtensionRegistryLite;)Landroid/car/hardware/xpu/XpuApEssentialMsg$ApLaneLineInfo;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/carsdk/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 6322
    sget-object v0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApLaneLineInfo;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuApEssentialMsg$ApLaneLineInfo;

    invoke-static {v0, p0, p1}, Lcom/android/carsdk/protobuf/GeneratedMessageLite;->parseFrom(Lcom/android/carsdk/protobuf/GeneratedMessageLite;[BLcom/android/carsdk/protobuf/ExtensionRegistryLite;)Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApLaneLineInfo;

    return-object p0
.end method

.method public static parser()Lcom/android/carsdk/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/android/carsdk/protobuf/Parser<",
            "Landroid/car/hardware/xpu/XpuApEssentialMsg$ApLaneLineInfo;",
            ">;"
        }
    .end annotation

    .line 6608
    sget-object v0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApLaneLineInfo;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuApEssentialMsg$ApLaneLineInfo;

    invoke-virtual {v0}, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApLaneLineInfo;->getParserForType()Lcom/android/carsdk/protobuf/Parser;

    move-result-object v0

    return-object v0
.end method

.method private removePathPoints(I)V
    .locals 1

    .line 6269
    invoke-direct {p0}, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApLaneLineInfo;->ensurePathPointsIsMutable()V

    .line 6270
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApLaneLineInfo;->pathPoints_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1}, Lcom/android/carsdk/protobuf/Internal$ProtobufList;->remove(I)Ljava/lang/Object;

    return-void
.end method

.method private setAttri(I)V
    .locals 0

    .line 6143
    iput p1, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApLaneLineInfo;->attri_:I

    return-void
.end method

.method private setPathPoints(ILandroid/car/hardware/xpu/XpuApEssentialMsg$ApPathPoint$Builder;)V
    .locals 1

    .line 6210
    invoke-direct {p0}, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApLaneLineInfo;->ensurePathPointsIsMutable()V

    .line 6211
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApLaneLineInfo;->pathPoints_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    invoke-virtual {p2}, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApPathPoint$Builder;->build()Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object p2

    check-cast p2, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApPathPoint;

    invoke-interface {v0, p1, p2}, Lcom/android/carsdk/protobuf/Internal$ProtobufList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private setPathPoints(ILandroid/car/hardware/xpu/XpuApEssentialMsg$ApPathPoint;)V
    .locals 1

    .line 6200
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6202
    invoke-direct {p0}, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApLaneLineInfo;->ensurePathPointsIsMutable()V

    .line 6203
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApLaneLineInfo;->pathPoints_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1, p2}, Lcom/android/carsdk/protobuf/Internal$ProtobufList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method protected final dynamicMethod(Lcom/android/carsdk/protobuf/GeneratedMessageLite$MethodToInvoke;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    .line 6507
    sget-object v0, Landroid/car/hardware/xpu/XpuApEssentialMsg$1;->$SwitchMap$com$google$protobuf$GeneratedMessageLite$MethodToInvoke:[I

    invoke-virtual {p1}, Lcom/android/carsdk/protobuf/GeneratedMessageLite$MethodToInvoke;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x1

    packed-switch p1, :pswitch_data_0

    .line 6590
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1

    .line 6581
    :pswitch_0
    sget-object p1, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApLaneLineInfo;->PARSER:Lcom/android/carsdk/protobuf/Parser;

    if-nez p1, :cond_1

    const-class p1, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApLaneLineInfo;

    monitor-enter p1

    .line 6582
    :try_start_0
    sget-object p2, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApLaneLineInfo;->PARSER:Lcom/android/carsdk/protobuf/Parser;

    if-nez p2, :cond_0

    .line 6583
    new-instance p2, Lcom/android/carsdk/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;

    sget-object p3, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApLaneLineInfo;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuApEssentialMsg$ApLaneLineInfo;

    invoke-direct {p2, p3}, Lcom/android/carsdk/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;-><init>(Lcom/android/carsdk/protobuf/GeneratedMessageLite;)V

    sput-object p2, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApLaneLineInfo;->PARSER:Lcom/android/carsdk/protobuf/Parser;

    .line 6585
    :cond_0
    monitor-exit p1

    goto :goto_0

    :catchall_0
    move-exception p2

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p2

    .line 6587
    :cond_1
    :goto_0
    sget-object p1, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApLaneLineInfo;->PARSER:Lcom/android/carsdk/protobuf/Parser;

    return-object p1

    .line 6534
    :pswitch_1
    check-cast p2, Lcom/android/carsdk/protobuf/CodedInputStream;

    .line 6536
    check-cast p3, Lcom/android/carsdk/protobuf/ExtensionRegistryLite;

    :cond_2
    :goto_1
    if-nez v1, :cond_7

    .line 6541
    :try_start_1
    invoke-virtual {p2}, Lcom/android/carsdk/protobuf/CodedInputStream;->readTag()I

    move-result p1

    if-eqz p1, :cond_6

    const/16 v0, 0x8

    if-eq p1, v0, :cond_5

    const/16 v0, 0x12

    if-eq p1, v0, :cond_3

    .line 6547
    invoke-virtual {p2, p1}, Lcom/android/carsdk/protobuf/CodedInputStream;->skipField(I)Z

    move-result p1

    if-nez p1, :cond_2

    goto :goto_2

    .line 6558
    :cond_3
    iget-object p1, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApLaneLineInfo;->pathPoints_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    invoke-interface {p1}, Lcom/android/carsdk/protobuf/Internal$ProtobufList;->isModifiable()Z

    move-result p1

    if-nez p1, :cond_4

    .line 6559
    iget-object p1, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApLaneLineInfo;->pathPoints_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    .line 6560
    invoke-static {p1}, Lcom/android/carsdk/protobuf/GeneratedMessageLite;->mutableCopy(Lcom/android/carsdk/protobuf/Internal$ProtobufList;)Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    move-result-object p1

    iput-object p1, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApLaneLineInfo;->pathPoints_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    .line 6562
    :cond_4
    iget-object p1, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApLaneLineInfo;->pathPoints_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    .line 6563
    invoke-static {}, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApPathPoint;->parser()Lcom/android/carsdk/protobuf/Parser;

    move-result-object v0

    invoke-virtual {p2, v0, p3}, Lcom/android/carsdk/protobuf/CodedInputStream;->readMessage(Lcom/android/carsdk/protobuf/Parser;Lcom/android/carsdk/protobuf/ExtensionRegistryLite;)Lcom/android/carsdk/protobuf/MessageLite;

    move-result-object v0

    check-cast v0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApPathPoint;

    .line 6562
    invoke-interface {p1, v0}, Lcom/android/carsdk/protobuf/Internal$ProtobufList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 6554
    :cond_5
    invoke-virtual {p2}, Lcom/android/carsdk/protobuf/CodedInputStream;->readInt32()I

    move-result p1

    iput p1, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApLaneLineInfo;->attri_:I
    :try_end_1
    .catch Lcom/android/carsdk/protobuf/InvalidProtocolBufferException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    :cond_6
    :goto_2
    move v1, v2

    goto :goto_1

    :catchall_1
    move-exception p1

    goto :goto_3

    :catch_0
    move-exception p1

    .line 6571
    :try_start_2
    new-instance p2, Ljava/lang/RuntimeException;

    new-instance p3, Lcom/android/carsdk/protobuf/InvalidProtocolBufferException;

    .line 6573
    invoke-virtual {p1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p3, p1}, Lcom/android/carsdk/protobuf/InvalidProtocolBufferException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, p0}, Lcom/android/carsdk/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/android/carsdk/protobuf/MessageLite;)Lcom/android/carsdk/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p2

    :catch_1
    move-exception p1

    .line 6569
    new-instance p2, Ljava/lang/RuntimeException;

    invoke-virtual {p1, p0}, Lcom/android/carsdk/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/android/carsdk/protobuf/MessageLite;)Lcom/android/carsdk/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 6574
    :goto_3
    throw p1

    .line 6578
    :cond_7
    :pswitch_2
    sget-object p1, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApLaneLineInfo;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuApEssentialMsg$ApLaneLineInfo;

    return-object p1

    .line 6522
    :pswitch_3
    check-cast p2, Lcom/android/carsdk/protobuf/GeneratedMessageLite$Visitor;

    .line 6523
    check-cast p3, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApLaneLineInfo;

    .line 6524
    iget p1, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApLaneLineInfo;->attri_:I

    if-eqz p1, :cond_8

    move v0, v2

    goto :goto_4

    :cond_8
    move v0, v1

    :goto_4
    iget v3, p3, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApLaneLineInfo;->attri_:I

    if-eqz v3, :cond_9

    move v1, v2

    :cond_9
    invoke-interface {p2, v0, p1, v1, v3}, Lcom/android/carsdk/protobuf/GeneratedMessageLite$Visitor;->visitInt(ZIZI)I

    move-result p1

    iput p1, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApLaneLineInfo;->attri_:I

    .line 6526
    iget-object p1, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApLaneLineInfo;->pathPoints_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    iget-object v0, p3, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApLaneLineInfo;->pathPoints_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    invoke-interface {p2, p1, v0}, Lcom/android/carsdk/protobuf/GeneratedMessageLite$Visitor;->visitList(Lcom/android/carsdk/protobuf/Internal$ProtobufList;Lcom/android/carsdk/protobuf/Internal$ProtobufList;)Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    move-result-object p1

    iput-object p1, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApLaneLineInfo;->pathPoints_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    .line 6527
    sget-object p1, Lcom/android/carsdk/protobuf/GeneratedMessageLite$MergeFromVisitor;->INSTANCE:Lcom/android/carsdk/protobuf/GeneratedMessageLite$MergeFromVisitor;

    if-ne p2, p1, :cond_a

    .line 6529
    iget p1, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApLaneLineInfo;->bitField0_:I

    iget p2, p3, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApLaneLineInfo;->bitField0_:I

    or-int/2addr p1, p2

    iput p1, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApLaneLineInfo;->bitField0_:I

    :cond_a
    return-object p0

    .line 6519
    :pswitch_4
    new-instance p1, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApLaneLineInfo$Builder;

    invoke-direct {p1, v0}, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApLaneLineInfo$Builder;-><init>(Landroid/car/hardware/xpu/XpuApEssentialMsg$1;)V

    return-object p1

    .line 6515
    :pswitch_5
    iget-object p1, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApLaneLineInfo;->pathPoints_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    invoke-interface {p1}, Lcom/android/carsdk/protobuf/Internal$ProtobufList;->makeImmutable()V

    return-object v0

    .line 6512
    :pswitch_6
    sget-object p1, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApLaneLineInfo;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuApEssentialMsg$ApLaneLineInfo;

    return-object p1

    .line 6509
    :pswitch_7
    new-instance p1, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApLaneLineInfo;

    invoke-direct {p1}, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApLaneLineInfo;-><init>()V

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

.method public getAttri()I
    .locals 1

    .line 6136
    iget v0, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApLaneLineInfo;->attri_:I

    return v0
.end method

.method public getPathPoints(I)Landroid/car/hardware/xpu/XpuApEssentialMsg$ApPathPoint;
    .locals 1

    .line 6178
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApLaneLineInfo;->pathPoints_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1}, Lcom/android/carsdk/protobuf/Internal$ProtobufList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApPathPoint;

    return-object p1
.end method

.method public getPathPointsCount()I
    .locals 1

    .line 6172
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApLaneLineInfo;->pathPoints_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    invoke-interface {v0}, Lcom/android/carsdk/protobuf/Internal$ProtobufList;->size()I

    move-result v0

    return v0
.end method

.method public getPathPointsList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/car/hardware/xpu/XpuApEssentialMsg$ApPathPoint;",
            ">;"
        }
    .end annotation

    .line 6159
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApLaneLineInfo;->pathPoints_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    return-object v0
.end method

.method public getPathPointsOrBuilder(I)Landroid/car/hardware/xpu/XpuApEssentialMsg$ApPathPointOrBuilder;
    .locals 1

    .line 6185
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApLaneLineInfo;->pathPoints_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1}, Lcom/android/carsdk/protobuf/Internal$ProtobufList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApPathPointOrBuilder;

    return-object p1
.end method

.method public getPathPointsOrBuilderList()Ljava/util/List;
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

    .line 6166
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApLaneLineInfo;->pathPoints_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    return-object v0
.end method

.method public getSerializedSize()I
    .locals 4

    .line 6284
    iget v0, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApLaneLineInfo;->memoizedSerializedSize:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    return v0

    .line 6288
    :cond_0
    iget v0, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApLaneLineInfo;->attri_:I

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    const/4 v2, 0x1

    .line 6290
    invoke-static {v2, v0}, Lcom/android/carsdk/protobuf/CodedOutputStream;->computeInt32Size(II)I

    move-result v0

    add-int/2addr v0, v1

    goto :goto_0

    :cond_1
    move v0, v1

    .line 6292
    :goto_0
    iget-object v2, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApLaneLineInfo;->pathPoints_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    invoke-interface {v2}, Lcom/android/carsdk/protobuf/Internal$ProtobufList;->size()I

    move-result v2

    if-ge v1, v2, :cond_2

    const/4 v2, 0x2

    .line 6293
    iget-object v3, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApLaneLineInfo;->pathPoints_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    .line 6294
    invoke-interface {v3, v1}, Lcom/android/carsdk/protobuf/Internal$ProtobufList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/carsdk/protobuf/MessageLite;

    invoke-static {v2, v3}, Lcom/android/carsdk/protobuf/CodedOutputStream;->computeMessageSize(ILcom/android/carsdk/protobuf/MessageLite;)I

    move-result v2

    add-int/2addr v0, v2

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 6296
    :cond_2
    iput v0, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApLaneLineInfo;->memoizedSerializedSize:I

    return v0
.end method

.method public writeTo(Lcom/android/carsdk/protobuf/CodedOutputStream;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 6275
    iget v0, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApLaneLineInfo;->attri_:I

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    .line 6276
    invoke-virtual {p1, v1, v0}, Lcom/android/carsdk/protobuf/CodedOutputStream;->writeInt32(II)V

    :cond_0
    const/4 v0, 0x0

    .line 6278
    :goto_0
    iget-object v1, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApLaneLineInfo;->pathPoints_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    invoke-interface {v1}, Lcom/android/carsdk/protobuf/Internal$ProtobufList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    const/4 v1, 0x2

    .line 6279
    iget-object v2, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApLaneLineInfo;->pathPoints_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    invoke-interface {v2, v0}, Lcom/android/carsdk/protobuf/Internal$ProtobufList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/carsdk/protobuf/MessageLite;

    invoke-virtual {p1, v1, v2}, Lcom/android/carsdk/protobuf/CodedOutputStream;->writeMessage(ILcom/android/carsdk/protobuf/MessageLite;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method
