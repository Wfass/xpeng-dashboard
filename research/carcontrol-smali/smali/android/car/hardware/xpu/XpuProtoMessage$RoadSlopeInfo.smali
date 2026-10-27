.class public final Landroid/car/hardware/xpu/XpuProtoMessage$RoadSlopeInfo;
.super Lcom/android/carsdk/protobuf/GeneratedMessageLite;
.source "XpuProtoMessage.java"

# interfaces
.implements Landroid/car/hardware/xpu/XpuProtoMessage$RoadSlopeInfoOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/car/hardware/xpu/XpuProtoMessage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "RoadSlopeInfo"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/car/hardware/xpu/XpuProtoMessage$RoadSlopeInfo$Builder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/carsdk/protobuf/GeneratedMessageLite<",
        "Landroid/car/hardware/xpu/XpuProtoMessage$RoadSlopeInfo;",
        "Landroid/car/hardware/xpu/XpuProtoMessage$RoadSlopeInfo$Builder;",
        ">;",
        "Landroid/car/hardware/xpu/XpuProtoMessage$RoadSlopeInfoOrBuilder;"
    }
.end annotation


# static fields
.field private static final DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuProtoMessage$RoadSlopeInfo;

.field private static volatile PARSER:Lcom/android/carsdk/protobuf/Parser; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/carsdk/protobuf/Parser<",
            "Landroid/car/hardware/xpu/XpuProtoMessage$RoadSlopeInfo;",
            ">;"
        }
    .end annotation
.end field

.field public static final SLOPE_POINTS_FIELD_NUMBER:I = 0x2

.field public static final SLOPE_TYPE_FIELD_NUMBER:I = 0x1


# instance fields
.field private bitField0_:I

.field private slopePoints_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/carsdk/protobuf/Internal$ProtobufList<",
            "Landroid/car/hardware/xpu/XpuProtoMessage$SlopePoint;",
            ">;"
        }
    .end annotation
.end field

.field private slopeType_:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 8215
    new-instance v0, Landroid/car/hardware/xpu/XpuProtoMessage$RoadSlopeInfo;

    invoke-direct {v0}, Landroid/car/hardware/xpu/XpuProtoMessage$RoadSlopeInfo;-><init>()V

    sput-object v0, Landroid/car/hardware/xpu/XpuProtoMessage$RoadSlopeInfo;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuProtoMessage$RoadSlopeInfo;

    .line 8216
    invoke-virtual {v0}, Landroid/car/hardware/xpu/XpuProtoMessage$RoadSlopeInfo;->makeImmutable()V

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 7743
    invoke-direct {p0}, Lcom/android/carsdk/protobuf/GeneratedMessageLite;-><init>()V

    const/4 v0, 0x0

    .line 7744
    iput v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$RoadSlopeInfo;->slopeType_:I

    .line 7745
    invoke-static {}, Landroid/car/hardware/xpu/XpuProtoMessage$RoadSlopeInfo;->emptyProtobufList()Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    move-result-object v0

    iput-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$RoadSlopeInfo;->slopePoints_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    return-void
.end method

.method static synthetic access$14600()Landroid/car/hardware/xpu/XpuProtoMessage$RoadSlopeInfo;
    .locals 1

    .line 7738
    sget-object v0, Landroid/car/hardware/xpu/XpuProtoMessage$RoadSlopeInfo;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuProtoMessage$RoadSlopeInfo;

    return-object v0
.end method

.method static synthetic access$14700(Landroid/car/hardware/xpu/XpuProtoMessage$RoadSlopeInfo;I)V
    .locals 0

    .line 7738
    invoke-direct {p0, p1}, Landroid/car/hardware/xpu/XpuProtoMessage$RoadSlopeInfo;->setSlopeType(I)V

    return-void
.end method

.method static synthetic access$14800(Landroid/car/hardware/xpu/XpuProtoMessage$RoadSlopeInfo;)V
    .locals 0

    .line 7738
    invoke-direct {p0}, Landroid/car/hardware/xpu/XpuProtoMessage$RoadSlopeInfo;->clearSlopeType()V

    return-void
.end method

.method static synthetic access$14900(Landroid/car/hardware/xpu/XpuProtoMessage$RoadSlopeInfo;ILandroid/car/hardware/xpu/XpuProtoMessage$SlopePoint;)V
    .locals 0

    .line 7738
    invoke-direct {p0, p1, p2}, Landroid/car/hardware/xpu/XpuProtoMessage$RoadSlopeInfo;->setSlopePoints(ILandroid/car/hardware/xpu/XpuProtoMessage$SlopePoint;)V

    return-void
.end method

.method static synthetic access$15000(Landroid/car/hardware/xpu/XpuProtoMessage$RoadSlopeInfo;ILandroid/car/hardware/xpu/XpuProtoMessage$SlopePoint$Builder;)V
    .locals 0

    .line 7738
    invoke-direct {p0, p1, p2}, Landroid/car/hardware/xpu/XpuProtoMessage$RoadSlopeInfo;->setSlopePoints(ILandroid/car/hardware/xpu/XpuProtoMessage$SlopePoint$Builder;)V

    return-void
.end method

.method static synthetic access$15100(Landroid/car/hardware/xpu/XpuProtoMessage$RoadSlopeInfo;Landroid/car/hardware/xpu/XpuProtoMessage$SlopePoint;)V
    .locals 0

    .line 7738
    invoke-direct {p0, p1}, Landroid/car/hardware/xpu/XpuProtoMessage$RoadSlopeInfo;->addSlopePoints(Landroid/car/hardware/xpu/XpuProtoMessage$SlopePoint;)V

    return-void
.end method

.method static synthetic access$15200(Landroid/car/hardware/xpu/XpuProtoMessage$RoadSlopeInfo;ILandroid/car/hardware/xpu/XpuProtoMessage$SlopePoint;)V
    .locals 0

    .line 7738
    invoke-direct {p0, p1, p2}, Landroid/car/hardware/xpu/XpuProtoMessage$RoadSlopeInfo;->addSlopePoints(ILandroid/car/hardware/xpu/XpuProtoMessage$SlopePoint;)V

    return-void
.end method

.method static synthetic access$15300(Landroid/car/hardware/xpu/XpuProtoMessage$RoadSlopeInfo;Landroid/car/hardware/xpu/XpuProtoMessage$SlopePoint$Builder;)V
    .locals 0

    .line 7738
    invoke-direct {p0, p1}, Landroid/car/hardware/xpu/XpuProtoMessage$RoadSlopeInfo;->addSlopePoints(Landroid/car/hardware/xpu/XpuProtoMessage$SlopePoint$Builder;)V

    return-void
.end method

.method static synthetic access$15400(Landroid/car/hardware/xpu/XpuProtoMessage$RoadSlopeInfo;ILandroid/car/hardware/xpu/XpuProtoMessage$SlopePoint$Builder;)V
    .locals 0

    .line 7738
    invoke-direct {p0, p1, p2}, Landroid/car/hardware/xpu/XpuProtoMessage$RoadSlopeInfo;->addSlopePoints(ILandroid/car/hardware/xpu/XpuProtoMessage$SlopePoint$Builder;)V

    return-void
.end method

.method static synthetic access$15500(Landroid/car/hardware/xpu/XpuProtoMessage$RoadSlopeInfo;Ljava/lang/Iterable;)V
    .locals 0

    .line 7738
    invoke-direct {p0, p1}, Landroid/car/hardware/xpu/XpuProtoMessage$RoadSlopeInfo;->addAllSlopePoints(Ljava/lang/Iterable;)V

    return-void
.end method

.method static synthetic access$15600(Landroid/car/hardware/xpu/XpuProtoMessage$RoadSlopeInfo;)V
    .locals 0

    .line 7738
    invoke-direct {p0}, Landroid/car/hardware/xpu/XpuProtoMessage$RoadSlopeInfo;->clearSlopePoints()V

    return-void
.end method

.method static synthetic access$15700(Landroid/car/hardware/xpu/XpuProtoMessage$RoadSlopeInfo;I)V
    .locals 0

    .line 7738
    invoke-direct {p0, p1}, Landroid/car/hardware/xpu/XpuProtoMessage$RoadSlopeInfo;->removeSlopePoints(I)V

    return-void
.end method

.method private addAllSlopePoints(Ljava/lang/Iterable;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Landroid/car/hardware/xpu/XpuProtoMessage$SlopePoint;",
            ">;)V"
        }
    .end annotation

    .line 7873
    invoke-direct {p0}, Landroid/car/hardware/xpu/XpuProtoMessage$RoadSlopeInfo;->ensureSlopePointsIsMutable()V

    .line 7874
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$RoadSlopeInfo;->slopePoints_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    invoke-static {p1, v0}, Lcom/android/carsdk/protobuf/AbstractMessageLite;->addAll(Ljava/lang/Iterable;Ljava/util/Collection;)V

    return-void
.end method

.method private addSlopePoints(ILandroid/car/hardware/xpu/XpuProtoMessage$SlopePoint$Builder;)V
    .locals 1

    .line 7865
    invoke-direct {p0}, Landroid/car/hardware/xpu/XpuProtoMessage$RoadSlopeInfo;->ensureSlopePointsIsMutable()V

    .line 7866
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$RoadSlopeInfo;->slopePoints_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    invoke-virtual {p2}, Landroid/car/hardware/xpu/XpuProtoMessage$SlopePoint$Builder;->build()Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object p2

    check-cast p2, Landroid/car/hardware/xpu/XpuProtoMessage$SlopePoint;

    invoke-interface {v0, p1, p2}, Lcom/android/carsdk/protobuf/Internal$ProtobufList;->add(ILjava/lang/Object;)V

    return-void
.end method

.method private addSlopePoints(ILandroid/car/hardware/xpu/XpuProtoMessage$SlopePoint;)V
    .locals 1

    .line 7847
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 7849
    invoke-direct {p0}, Landroid/car/hardware/xpu/XpuProtoMessage$RoadSlopeInfo;->ensureSlopePointsIsMutable()V

    .line 7850
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$RoadSlopeInfo;->slopePoints_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1, p2}, Lcom/android/carsdk/protobuf/Internal$ProtobufList;->add(ILjava/lang/Object;)V

    return-void
.end method

.method private addSlopePoints(Landroid/car/hardware/xpu/XpuProtoMessage$SlopePoint$Builder;)V
    .locals 1

    .line 7857
    invoke-direct {p0}, Landroid/car/hardware/xpu/XpuProtoMessage$RoadSlopeInfo;->ensureSlopePointsIsMutable()V

    .line 7858
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$RoadSlopeInfo;->slopePoints_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    invoke-virtual {p1}, Landroid/car/hardware/xpu/XpuProtoMessage$SlopePoint$Builder;->build()Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Landroid/car/hardware/xpu/XpuProtoMessage$SlopePoint;

    invoke-interface {v0, p1}, Lcom/android/carsdk/protobuf/Internal$ProtobufList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private addSlopePoints(Landroid/car/hardware/xpu/XpuProtoMessage$SlopePoint;)V
    .locals 1

    .line 7836
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 7838
    invoke-direct {p0}, Landroid/car/hardware/xpu/XpuProtoMessage$RoadSlopeInfo;->ensureSlopePointsIsMutable()V

    .line 7839
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$RoadSlopeInfo;->slopePoints_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1}, Lcom/android/carsdk/protobuf/Internal$ProtobufList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private clearSlopePoints()V
    .locals 1

    .line 7881
    invoke-static {}, Landroid/car/hardware/xpu/XpuProtoMessage$RoadSlopeInfo;->emptyProtobufList()Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    move-result-object v0

    iput-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$RoadSlopeInfo;->slopePoints_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    return-void
.end method

.method private clearSlopeType()V
    .locals 1

    const/4 v0, 0x0

    .line 7768
    iput v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$RoadSlopeInfo;->slopeType_:I

    return-void
.end method

.method private ensureSlopePointsIsMutable()V
    .locals 1

    .line 7806
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$RoadSlopeInfo;->slopePoints_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    invoke-interface {v0}, Lcom/android/carsdk/protobuf/Internal$ProtobufList;->isModifiable()Z

    move-result v0

    if-nez v0, :cond_0

    .line 7807
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$RoadSlopeInfo;->slopePoints_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    .line 7808
    invoke-static {v0}, Lcom/android/carsdk/protobuf/GeneratedMessageLite;->mutableCopy(Lcom/android/carsdk/protobuf/Internal$ProtobufList;)Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    move-result-object v0

    iput-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$RoadSlopeInfo;->slopePoints_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    :cond_0
    return-void
.end method

.method public static getDefaultInstance()Landroid/car/hardware/xpu/XpuProtoMessage$RoadSlopeInfo;
    .locals 1

    .line 8220
    sget-object v0, Landroid/car/hardware/xpu/XpuProtoMessage$RoadSlopeInfo;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuProtoMessage$RoadSlopeInfo;

    return-object v0
.end method

.method public static newBuilder()Landroid/car/hardware/xpu/XpuProtoMessage$RoadSlopeInfo$Builder;
    .locals 1

    .line 7980
    sget-object v0, Landroid/car/hardware/xpu/XpuProtoMessage$RoadSlopeInfo;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuProtoMessage$RoadSlopeInfo;

    invoke-virtual {v0}, Landroid/car/hardware/xpu/XpuProtoMessage$RoadSlopeInfo;->toBuilder()Lcom/android/carsdk/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Landroid/car/hardware/xpu/XpuProtoMessage$RoadSlopeInfo$Builder;

    return-object v0
.end method

.method public static newBuilder(Landroid/car/hardware/xpu/XpuProtoMessage$RoadSlopeInfo;)Landroid/car/hardware/xpu/XpuProtoMessage$RoadSlopeInfo$Builder;
    .locals 1

    .line 7983
    sget-object v0, Landroid/car/hardware/xpu/XpuProtoMessage$RoadSlopeInfo;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuProtoMessage$RoadSlopeInfo;

    invoke-virtual {v0}, Landroid/car/hardware/xpu/XpuProtoMessage$RoadSlopeInfo;->toBuilder()Lcom/android/carsdk/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Landroid/car/hardware/xpu/XpuProtoMessage$RoadSlopeInfo$Builder;

    invoke-virtual {v0, p0}, Landroid/car/hardware/xpu/XpuProtoMessage$RoadSlopeInfo$Builder;->mergeFrom(Lcom/android/carsdk/protobuf/GeneratedMessageLite;)Lcom/android/carsdk/protobuf/GeneratedMessageLite$Builder;

    move-result-object p0

    check-cast p0, Landroid/car/hardware/xpu/XpuProtoMessage$RoadSlopeInfo$Builder;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Landroid/car/hardware/xpu/XpuProtoMessage$RoadSlopeInfo;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 7957
    sget-object v0, Landroid/car/hardware/xpu/XpuProtoMessage$RoadSlopeInfo;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuProtoMessage$RoadSlopeInfo;

    invoke-static {v0, p0}, Landroid/car/hardware/xpu/XpuProtoMessage$RoadSlopeInfo;->parseDelimitedFrom(Lcom/android/carsdk/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Landroid/car/hardware/xpu/XpuProtoMessage$RoadSlopeInfo;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/android/carsdk/protobuf/ExtensionRegistryLite;)Landroid/car/hardware/xpu/XpuProtoMessage$RoadSlopeInfo;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 7963
    sget-object v0, Landroid/car/hardware/xpu/XpuProtoMessage$RoadSlopeInfo;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuProtoMessage$RoadSlopeInfo;

    invoke-static {v0, p0, p1}, Landroid/car/hardware/xpu/XpuProtoMessage$RoadSlopeInfo;->parseDelimitedFrom(Lcom/android/carsdk/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/android/carsdk/protobuf/ExtensionRegistryLite;)Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Landroid/car/hardware/xpu/XpuProtoMessage$RoadSlopeInfo;

    return-object p0
.end method

.method public static parseFrom(Lcom/android/carsdk/protobuf/ByteString;)Landroid/car/hardware/xpu/XpuProtoMessage$RoadSlopeInfo;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/carsdk/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 7921
    sget-object v0, Landroid/car/hardware/xpu/XpuProtoMessage$RoadSlopeInfo;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuProtoMessage$RoadSlopeInfo;

    invoke-static {v0, p0}, Lcom/android/carsdk/protobuf/GeneratedMessageLite;->parseFrom(Lcom/android/carsdk/protobuf/GeneratedMessageLite;Lcom/android/carsdk/protobuf/ByteString;)Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Landroid/car/hardware/xpu/XpuProtoMessage$RoadSlopeInfo;

    return-object p0
.end method

.method public static parseFrom(Lcom/android/carsdk/protobuf/ByteString;Lcom/android/carsdk/protobuf/ExtensionRegistryLite;)Landroid/car/hardware/xpu/XpuProtoMessage$RoadSlopeInfo;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/carsdk/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 7928
    sget-object v0, Landroid/car/hardware/xpu/XpuProtoMessage$RoadSlopeInfo;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuProtoMessage$RoadSlopeInfo;

    invoke-static {v0, p0, p1}, Lcom/android/carsdk/protobuf/GeneratedMessageLite;->parseFrom(Lcom/android/carsdk/protobuf/GeneratedMessageLite;Lcom/android/carsdk/protobuf/ByteString;Lcom/android/carsdk/protobuf/ExtensionRegistryLite;)Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Landroid/car/hardware/xpu/XpuProtoMessage$RoadSlopeInfo;

    return-object p0
.end method

.method public static parseFrom(Lcom/android/carsdk/protobuf/CodedInputStream;)Landroid/car/hardware/xpu/XpuProtoMessage$RoadSlopeInfo;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 7968
    sget-object v0, Landroid/car/hardware/xpu/XpuProtoMessage$RoadSlopeInfo;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuProtoMessage$RoadSlopeInfo;

    invoke-static {v0, p0}, Lcom/android/carsdk/protobuf/GeneratedMessageLite;->parseFrom(Lcom/android/carsdk/protobuf/GeneratedMessageLite;Lcom/android/carsdk/protobuf/CodedInputStream;)Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Landroid/car/hardware/xpu/XpuProtoMessage$RoadSlopeInfo;

    return-object p0
.end method

.method public static parseFrom(Lcom/android/carsdk/protobuf/CodedInputStream;Lcom/android/carsdk/protobuf/ExtensionRegistryLite;)Landroid/car/hardware/xpu/XpuProtoMessage$RoadSlopeInfo;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 7975
    sget-object v0, Landroid/car/hardware/xpu/XpuProtoMessage$RoadSlopeInfo;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuProtoMessage$RoadSlopeInfo;

    invoke-static {v0, p0, p1}, Lcom/android/carsdk/protobuf/GeneratedMessageLite;->parseFrom(Lcom/android/carsdk/protobuf/GeneratedMessageLite;Lcom/android/carsdk/protobuf/CodedInputStream;Lcom/android/carsdk/protobuf/ExtensionRegistryLite;)Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Landroid/car/hardware/xpu/XpuProtoMessage$RoadSlopeInfo;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Landroid/car/hardware/xpu/XpuProtoMessage$RoadSlopeInfo;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 7945
    sget-object v0, Landroid/car/hardware/xpu/XpuProtoMessage$RoadSlopeInfo;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuProtoMessage$RoadSlopeInfo;

    invoke-static {v0, p0}, Lcom/android/carsdk/protobuf/GeneratedMessageLite;->parseFrom(Lcom/android/carsdk/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Landroid/car/hardware/xpu/XpuProtoMessage$RoadSlopeInfo;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/android/carsdk/protobuf/ExtensionRegistryLite;)Landroid/car/hardware/xpu/XpuProtoMessage$RoadSlopeInfo;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 7952
    sget-object v0, Landroid/car/hardware/xpu/XpuProtoMessage$RoadSlopeInfo;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuProtoMessage$RoadSlopeInfo;

    invoke-static {v0, p0, p1}, Lcom/android/carsdk/protobuf/GeneratedMessageLite;->parseFrom(Lcom/android/carsdk/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/android/carsdk/protobuf/ExtensionRegistryLite;)Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Landroid/car/hardware/xpu/XpuProtoMessage$RoadSlopeInfo;

    return-object p0
.end method

.method public static parseFrom([B)Landroid/car/hardware/xpu/XpuProtoMessage$RoadSlopeInfo;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/carsdk/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 7933
    sget-object v0, Landroid/car/hardware/xpu/XpuProtoMessage$RoadSlopeInfo;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuProtoMessage$RoadSlopeInfo;

    invoke-static {v0, p0}, Lcom/android/carsdk/protobuf/GeneratedMessageLite;->parseFrom(Lcom/android/carsdk/protobuf/GeneratedMessageLite;[B)Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Landroid/car/hardware/xpu/XpuProtoMessage$RoadSlopeInfo;

    return-object p0
.end method

.method public static parseFrom([BLcom/android/carsdk/protobuf/ExtensionRegistryLite;)Landroid/car/hardware/xpu/XpuProtoMessage$RoadSlopeInfo;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/carsdk/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 7940
    sget-object v0, Landroid/car/hardware/xpu/XpuProtoMessage$RoadSlopeInfo;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuProtoMessage$RoadSlopeInfo;

    invoke-static {v0, p0, p1}, Lcom/android/carsdk/protobuf/GeneratedMessageLite;->parseFrom(Lcom/android/carsdk/protobuf/GeneratedMessageLite;[BLcom/android/carsdk/protobuf/ExtensionRegistryLite;)Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Landroid/car/hardware/xpu/XpuProtoMessage$RoadSlopeInfo;

    return-object p0
.end method

.method public static parser()Lcom/android/carsdk/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/android/carsdk/protobuf/Parser<",
            "Landroid/car/hardware/xpu/XpuProtoMessage$RoadSlopeInfo;",
            ">;"
        }
    .end annotation

    .line 8226
    sget-object v0, Landroid/car/hardware/xpu/XpuProtoMessage$RoadSlopeInfo;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuProtoMessage$RoadSlopeInfo;

    invoke-virtual {v0}, Landroid/car/hardware/xpu/XpuProtoMessage$RoadSlopeInfo;->getParserForType()Lcom/android/carsdk/protobuf/Parser;

    move-result-object v0

    return-object v0
.end method

.method private removeSlopePoints(I)V
    .locals 1

    .line 7887
    invoke-direct {p0}, Landroid/car/hardware/xpu/XpuProtoMessage$RoadSlopeInfo;->ensureSlopePointsIsMutable()V

    .line 7888
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$RoadSlopeInfo;->slopePoints_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1}, Lcom/android/carsdk/protobuf/Internal$ProtobufList;->remove(I)Ljava/lang/Object;

    return-void
.end method

.method private setSlopePoints(ILandroid/car/hardware/xpu/XpuProtoMessage$SlopePoint$Builder;)V
    .locals 1

    .line 7828
    invoke-direct {p0}, Landroid/car/hardware/xpu/XpuProtoMessage$RoadSlopeInfo;->ensureSlopePointsIsMutable()V

    .line 7829
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$RoadSlopeInfo;->slopePoints_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    invoke-virtual {p2}, Landroid/car/hardware/xpu/XpuProtoMessage$SlopePoint$Builder;->build()Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object p2

    check-cast p2, Landroid/car/hardware/xpu/XpuProtoMessage$SlopePoint;

    invoke-interface {v0, p1, p2}, Lcom/android/carsdk/protobuf/Internal$ProtobufList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private setSlopePoints(ILandroid/car/hardware/xpu/XpuProtoMessage$SlopePoint;)V
    .locals 1

    .line 7818
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 7820
    invoke-direct {p0}, Landroid/car/hardware/xpu/XpuProtoMessage$RoadSlopeInfo;->ensureSlopePointsIsMutable()V

    .line 7821
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$RoadSlopeInfo;->slopePoints_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1, p2}, Lcom/android/carsdk/protobuf/Internal$ProtobufList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private setSlopeType(I)V
    .locals 0

    .line 7761
    iput p1, p0, Landroid/car/hardware/xpu/XpuProtoMessage$RoadSlopeInfo;->slopeType_:I

    return-void
.end method


# virtual methods
.method protected final dynamicMethod(Lcom/android/carsdk/protobuf/GeneratedMessageLite$MethodToInvoke;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    .line 8125
    sget-object v0, Landroid/car/hardware/xpu/XpuProtoMessage$1;->$SwitchMap$com$google$protobuf$GeneratedMessageLite$MethodToInvoke:[I

    invoke-virtual {p1}, Lcom/android/carsdk/protobuf/GeneratedMessageLite$MethodToInvoke;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x1

    packed-switch p1, :pswitch_data_0

    .line 8208
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1

    .line 8199
    :pswitch_0
    sget-object p1, Landroid/car/hardware/xpu/XpuProtoMessage$RoadSlopeInfo;->PARSER:Lcom/android/carsdk/protobuf/Parser;

    if-nez p1, :cond_1

    const-class p1, Landroid/car/hardware/xpu/XpuProtoMessage$RoadSlopeInfo;

    monitor-enter p1

    .line 8200
    :try_start_0
    sget-object p2, Landroid/car/hardware/xpu/XpuProtoMessage$RoadSlopeInfo;->PARSER:Lcom/android/carsdk/protobuf/Parser;

    if-nez p2, :cond_0

    .line 8201
    new-instance p2, Lcom/android/carsdk/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;

    sget-object p3, Landroid/car/hardware/xpu/XpuProtoMessage$RoadSlopeInfo;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuProtoMessage$RoadSlopeInfo;

    invoke-direct {p2, p3}, Lcom/android/carsdk/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;-><init>(Lcom/android/carsdk/protobuf/GeneratedMessageLite;)V

    sput-object p2, Landroid/car/hardware/xpu/XpuProtoMessage$RoadSlopeInfo;->PARSER:Lcom/android/carsdk/protobuf/Parser;

    .line 8203
    :cond_0
    monitor-exit p1

    goto :goto_0

    :catchall_0
    move-exception p2

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p2

    .line 8205
    :cond_1
    :goto_0
    sget-object p1, Landroid/car/hardware/xpu/XpuProtoMessage$RoadSlopeInfo;->PARSER:Lcom/android/carsdk/protobuf/Parser;

    return-object p1

    .line 8152
    :pswitch_1
    check-cast p2, Lcom/android/carsdk/protobuf/CodedInputStream;

    .line 8154
    check-cast p3, Lcom/android/carsdk/protobuf/ExtensionRegistryLite;

    :cond_2
    :goto_1
    if-nez v1, :cond_7

    .line 8159
    :try_start_1
    invoke-virtual {p2}, Lcom/android/carsdk/protobuf/CodedInputStream;->readTag()I

    move-result p1

    if-eqz p1, :cond_6

    const/16 v0, 0x8

    if-eq p1, v0, :cond_5

    const/16 v0, 0x12

    if-eq p1, v0, :cond_3

    .line 8165
    invoke-virtual {p2, p1}, Lcom/android/carsdk/protobuf/CodedInputStream;->skipField(I)Z

    move-result p1

    if-nez p1, :cond_2

    goto :goto_2

    .line 8176
    :cond_3
    iget-object p1, p0, Landroid/car/hardware/xpu/XpuProtoMessage$RoadSlopeInfo;->slopePoints_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    invoke-interface {p1}, Lcom/android/carsdk/protobuf/Internal$ProtobufList;->isModifiable()Z

    move-result p1

    if-nez p1, :cond_4

    .line 8177
    iget-object p1, p0, Landroid/car/hardware/xpu/XpuProtoMessage$RoadSlopeInfo;->slopePoints_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    .line 8178
    invoke-static {p1}, Lcom/android/carsdk/protobuf/GeneratedMessageLite;->mutableCopy(Lcom/android/carsdk/protobuf/Internal$ProtobufList;)Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    move-result-object p1

    iput-object p1, p0, Landroid/car/hardware/xpu/XpuProtoMessage$RoadSlopeInfo;->slopePoints_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    .line 8180
    :cond_4
    iget-object p1, p0, Landroid/car/hardware/xpu/XpuProtoMessage$RoadSlopeInfo;->slopePoints_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    .line 8181
    invoke-static {}, Landroid/car/hardware/xpu/XpuProtoMessage$SlopePoint;->parser()Lcom/android/carsdk/protobuf/Parser;

    move-result-object v0

    invoke-virtual {p2, v0, p3}, Lcom/android/carsdk/protobuf/CodedInputStream;->readMessage(Lcom/android/carsdk/protobuf/Parser;Lcom/android/carsdk/protobuf/ExtensionRegistryLite;)Lcom/android/carsdk/protobuf/MessageLite;

    move-result-object v0

    check-cast v0, Landroid/car/hardware/xpu/XpuProtoMessage$SlopePoint;

    .line 8180
    invoke-interface {p1, v0}, Lcom/android/carsdk/protobuf/Internal$ProtobufList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 8172
    :cond_5
    invoke-virtual {p2}, Lcom/android/carsdk/protobuf/CodedInputStream;->readInt32()I

    move-result p1

    iput p1, p0, Landroid/car/hardware/xpu/XpuProtoMessage$RoadSlopeInfo;->slopeType_:I
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

    .line 8189
    :try_start_2
    new-instance p2, Ljava/lang/RuntimeException;

    new-instance p3, Lcom/android/carsdk/protobuf/InvalidProtocolBufferException;

    .line 8191
    invoke-virtual {p1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p3, p1}, Lcom/android/carsdk/protobuf/InvalidProtocolBufferException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, p0}, Lcom/android/carsdk/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/android/carsdk/protobuf/MessageLite;)Lcom/android/carsdk/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p2

    :catch_1
    move-exception p1

    .line 8187
    new-instance p2, Ljava/lang/RuntimeException;

    invoke-virtual {p1, p0}, Lcom/android/carsdk/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/android/carsdk/protobuf/MessageLite;)Lcom/android/carsdk/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 8192
    :goto_3
    throw p1

    .line 8196
    :cond_7
    :pswitch_2
    sget-object p1, Landroid/car/hardware/xpu/XpuProtoMessage$RoadSlopeInfo;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuProtoMessage$RoadSlopeInfo;

    return-object p1

    .line 8140
    :pswitch_3
    check-cast p2, Lcom/android/carsdk/protobuf/GeneratedMessageLite$Visitor;

    .line 8141
    check-cast p3, Landroid/car/hardware/xpu/XpuProtoMessage$RoadSlopeInfo;

    .line 8142
    iget p1, p0, Landroid/car/hardware/xpu/XpuProtoMessage$RoadSlopeInfo;->slopeType_:I

    if-eqz p1, :cond_8

    move v0, v2

    goto :goto_4

    :cond_8
    move v0, v1

    :goto_4
    iget v3, p3, Landroid/car/hardware/xpu/XpuProtoMessage$RoadSlopeInfo;->slopeType_:I

    if-eqz v3, :cond_9

    move v1, v2

    :cond_9
    invoke-interface {p2, v0, p1, v1, v3}, Lcom/android/carsdk/protobuf/GeneratedMessageLite$Visitor;->visitInt(ZIZI)I

    move-result p1

    iput p1, p0, Landroid/car/hardware/xpu/XpuProtoMessage$RoadSlopeInfo;->slopeType_:I

    .line 8144
    iget-object p1, p0, Landroid/car/hardware/xpu/XpuProtoMessage$RoadSlopeInfo;->slopePoints_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    iget-object v0, p3, Landroid/car/hardware/xpu/XpuProtoMessage$RoadSlopeInfo;->slopePoints_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    invoke-interface {p2, p1, v0}, Lcom/android/carsdk/protobuf/GeneratedMessageLite$Visitor;->visitList(Lcom/android/carsdk/protobuf/Internal$ProtobufList;Lcom/android/carsdk/protobuf/Internal$ProtobufList;)Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    move-result-object p1

    iput-object p1, p0, Landroid/car/hardware/xpu/XpuProtoMessage$RoadSlopeInfo;->slopePoints_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    .line 8145
    sget-object p1, Lcom/android/carsdk/protobuf/GeneratedMessageLite$MergeFromVisitor;->INSTANCE:Lcom/android/carsdk/protobuf/GeneratedMessageLite$MergeFromVisitor;

    if-ne p2, p1, :cond_a

    .line 8147
    iget p1, p0, Landroid/car/hardware/xpu/XpuProtoMessage$RoadSlopeInfo;->bitField0_:I

    iget p2, p3, Landroid/car/hardware/xpu/XpuProtoMessage$RoadSlopeInfo;->bitField0_:I

    or-int/2addr p1, p2

    iput p1, p0, Landroid/car/hardware/xpu/XpuProtoMessage$RoadSlopeInfo;->bitField0_:I

    :cond_a
    return-object p0

    .line 8137
    :pswitch_4
    new-instance p1, Landroid/car/hardware/xpu/XpuProtoMessage$RoadSlopeInfo$Builder;

    invoke-direct {p1, v0}, Landroid/car/hardware/xpu/XpuProtoMessage$RoadSlopeInfo$Builder;-><init>(Landroid/car/hardware/xpu/XpuProtoMessage$1;)V

    return-object p1

    .line 8133
    :pswitch_5
    iget-object p1, p0, Landroid/car/hardware/xpu/XpuProtoMessage$RoadSlopeInfo;->slopePoints_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    invoke-interface {p1}, Lcom/android/carsdk/protobuf/Internal$ProtobufList;->makeImmutable()V

    return-object v0

    .line 8130
    :pswitch_6
    sget-object p1, Landroid/car/hardware/xpu/XpuProtoMessage$RoadSlopeInfo;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuProtoMessage$RoadSlopeInfo;

    return-object p1

    .line 8127
    :pswitch_7
    new-instance p1, Landroid/car/hardware/xpu/XpuProtoMessage$RoadSlopeInfo;

    invoke-direct {p1}, Landroid/car/hardware/xpu/XpuProtoMessage$RoadSlopeInfo;-><init>()V

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

.method public getSerializedSize()I
    .locals 4

    .line 7902
    iget v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$RoadSlopeInfo;->memoizedSerializedSize:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    return v0

    .line 7906
    :cond_0
    iget v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$RoadSlopeInfo;->slopeType_:I

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    const/4 v2, 0x1

    .line 7908
    invoke-static {v2, v0}, Lcom/android/carsdk/protobuf/CodedOutputStream;->computeInt32Size(II)I

    move-result v0

    add-int/2addr v0, v1

    goto :goto_0

    :cond_1
    move v0, v1

    .line 7910
    :goto_0
    iget-object v2, p0, Landroid/car/hardware/xpu/XpuProtoMessage$RoadSlopeInfo;->slopePoints_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    invoke-interface {v2}, Lcom/android/carsdk/protobuf/Internal$ProtobufList;->size()I

    move-result v2

    if-ge v1, v2, :cond_2

    const/4 v2, 0x2

    .line 7911
    iget-object v3, p0, Landroid/car/hardware/xpu/XpuProtoMessage$RoadSlopeInfo;->slopePoints_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    .line 7912
    invoke-interface {v3, v1}, Lcom/android/carsdk/protobuf/Internal$ProtobufList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/carsdk/protobuf/MessageLite;

    invoke-static {v2, v3}, Lcom/android/carsdk/protobuf/CodedOutputStream;->computeMessageSize(ILcom/android/carsdk/protobuf/MessageLite;)I

    move-result v2

    add-int/2addr v0, v2

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 7914
    :cond_2
    iput v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$RoadSlopeInfo;->memoizedSerializedSize:I

    return v0
.end method

.method public getSlopePoints(I)Landroid/car/hardware/xpu/XpuProtoMessage$SlopePoint;
    .locals 1

    .line 7796
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$RoadSlopeInfo;->slopePoints_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1}, Lcom/android/carsdk/protobuf/Internal$ProtobufList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/car/hardware/xpu/XpuProtoMessage$SlopePoint;

    return-object p1
.end method

.method public getSlopePointsCount()I
    .locals 1

    .line 7790
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$RoadSlopeInfo;->slopePoints_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    invoke-interface {v0}, Lcom/android/carsdk/protobuf/Internal$ProtobufList;->size()I

    move-result v0

    return v0
.end method

.method public getSlopePointsList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/car/hardware/xpu/XpuProtoMessage$SlopePoint;",
            ">;"
        }
    .end annotation

    .line 7777
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$RoadSlopeInfo;->slopePoints_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    return-object v0
.end method

.method public getSlopePointsOrBuilder(I)Landroid/car/hardware/xpu/XpuProtoMessage$SlopePointOrBuilder;
    .locals 1

    .line 7803
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$RoadSlopeInfo;->slopePoints_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1}, Lcom/android/carsdk/protobuf/Internal$ProtobufList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/car/hardware/xpu/XpuProtoMessage$SlopePointOrBuilder;

    return-object p1
.end method

.method public getSlopePointsOrBuilderList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "+",
            "Landroid/car/hardware/xpu/XpuProtoMessage$SlopePointOrBuilder;",
            ">;"
        }
    .end annotation

    .line 7784
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$RoadSlopeInfo;->slopePoints_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    return-object v0
.end method

.method public getSlopeType()I
    .locals 1

    .line 7754
    iget v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$RoadSlopeInfo;->slopeType_:I

    return v0
.end method

.method public writeTo(Lcom/android/carsdk/protobuf/CodedOutputStream;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 7893
    iget v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$RoadSlopeInfo;->slopeType_:I

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    .line 7894
    invoke-virtual {p1, v1, v0}, Lcom/android/carsdk/protobuf/CodedOutputStream;->writeInt32(II)V

    :cond_0
    const/4 v0, 0x0

    .line 7896
    :goto_0
    iget-object v1, p0, Landroid/car/hardware/xpu/XpuProtoMessage$RoadSlopeInfo;->slopePoints_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    invoke-interface {v1}, Lcom/android/carsdk/protobuf/Internal$ProtobufList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    const/4 v1, 0x2

    .line 7897
    iget-object v2, p0, Landroid/car/hardware/xpu/XpuProtoMessage$RoadSlopeInfo;->slopePoints_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    invoke-interface {v2, v0}, Lcom/android/carsdk/protobuf/Internal$ProtobufList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/carsdk/protobuf/MessageLite;

    invoke-virtual {p1, v1, v2}, Lcom/android/carsdk/protobuf/CodedOutputStream;->writeMessage(ILcom/android/carsdk/protobuf/MessageLite;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method
