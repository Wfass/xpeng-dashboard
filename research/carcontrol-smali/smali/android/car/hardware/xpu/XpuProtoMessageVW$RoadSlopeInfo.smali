.class public final Landroid/car/hardware/xpu/XpuProtoMessageVW$RoadSlopeInfo;
.super Lcom/android/carsdk/protobuf/GeneratedMessageLite;
.source "XpuProtoMessageVW.java"

# interfaces
.implements Landroid/car/hardware/xpu/XpuProtoMessageVW$RoadSlopeInfoOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/car/hardware/xpu/XpuProtoMessageVW;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "RoadSlopeInfo"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/car/hardware/xpu/XpuProtoMessageVW$RoadSlopeInfo$Builder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/carsdk/protobuf/GeneratedMessageLite<",
        "Landroid/car/hardware/xpu/XpuProtoMessageVW$RoadSlopeInfo;",
        "Landroid/car/hardware/xpu/XpuProtoMessageVW$RoadSlopeInfo$Builder;",
        ">;",
        "Landroid/car/hardware/xpu/XpuProtoMessageVW$RoadSlopeInfoOrBuilder;"
    }
.end annotation


# static fields
.field private static final DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuProtoMessageVW$RoadSlopeInfo;

.field private static volatile PARSER:Lcom/android/carsdk/protobuf/Parser; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/carsdk/protobuf/Parser<",
            "Landroid/car/hardware/xpu/XpuProtoMessageVW$RoadSlopeInfo;",
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
            "Landroid/car/hardware/xpu/XpuProtoMessageVW$SlopePoint;",
            ">;"
        }
    .end annotation
.end field

.field private slopeType_:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 7954
    new-instance v0, Landroid/car/hardware/xpu/XpuProtoMessageVW$RoadSlopeInfo;

    invoke-direct {v0}, Landroid/car/hardware/xpu/XpuProtoMessageVW$RoadSlopeInfo;-><init>()V

    sput-object v0, Landroid/car/hardware/xpu/XpuProtoMessageVW$RoadSlopeInfo;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuProtoMessageVW$RoadSlopeInfo;

    .line 7955
    invoke-virtual {v0}, Landroid/car/hardware/xpu/XpuProtoMessageVW$RoadSlopeInfo;->makeImmutable()V

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 7482
    invoke-direct {p0}, Lcom/android/carsdk/protobuf/GeneratedMessageLite;-><init>()V

    const/4 v0, 0x0

    .line 7483
    iput v0, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$RoadSlopeInfo;->slopeType_:I

    .line 7484
    invoke-static {}, Landroid/car/hardware/xpu/XpuProtoMessageVW$RoadSlopeInfo;->emptyProtobufList()Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    move-result-object v0

    iput-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$RoadSlopeInfo;->slopePoints_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    return-void
.end method

.method static synthetic access$14400()Landroid/car/hardware/xpu/XpuProtoMessageVW$RoadSlopeInfo;
    .locals 1

    .line 7477
    sget-object v0, Landroid/car/hardware/xpu/XpuProtoMessageVW$RoadSlopeInfo;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuProtoMessageVW$RoadSlopeInfo;

    return-object v0
.end method

.method static synthetic access$14500(Landroid/car/hardware/xpu/XpuProtoMessageVW$RoadSlopeInfo;I)V
    .locals 0

    .line 7477
    invoke-direct {p0, p1}, Landroid/car/hardware/xpu/XpuProtoMessageVW$RoadSlopeInfo;->setSlopeType(I)V

    return-void
.end method

.method static synthetic access$14600(Landroid/car/hardware/xpu/XpuProtoMessageVW$RoadSlopeInfo;)V
    .locals 0

    .line 7477
    invoke-direct {p0}, Landroid/car/hardware/xpu/XpuProtoMessageVW$RoadSlopeInfo;->clearSlopeType()V

    return-void
.end method

.method static synthetic access$14700(Landroid/car/hardware/xpu/XpuProtoMessageVW$RoadSlopeInfo;ILandroid/car/hardware/xpu/XpuProtoMessageVW$SlopePoint;)V
    .locals 0

    .line 7477
    invoke-direct {p0, p1, p2}, Landroid/car/hardware/xpu/XpuProtoMessageVW$RoadSlopeInfo;->setSlopePoints(ILandroid/car/hardware/xpu/XpuProtoMessageVW$SlopePoint;)V

    return-void
.end method

.method static synthetic access$14800(Landroid/car/hardware/xpu/XpuProtoMessageVW$RoadSlopeInfo;ILandroid/car/hardware/xpu/XpuProtoMessageVW$SlopePoint$Builder;)V
    .locals 0

    .line 7477
    invoke-direct {p0, p1, p2}, Landroid/car/hardware/xpu/XpuProtoMessageVW$RoadSlopeInfo;->setSlopePoints(ILandroid/car/hardware/xpu/XpuProtoMessageVW$SlopePoint$Builder;)V

    return-void
.end method

.method static synthetic access$14900(Landroid/car/hardware/xpu/XpuProtoMessageVW$RoadSlopeInfo;Landroid/car/hardware/xpu/XpuProtoMessageVW$SlopePoint;)V
    .locals 0

    .line 7477
    invoke-direct {p0, p1}, Landroid/car/hardware/xpu/XpuProtoMessageVW$RoadSlopeInfo;->addSlopePoints(Landroid/car/hardware/xpu/XpuProtoMessageVW$SlopePoint;)V

    return-void
.end method

.method static synthetic access$15000(Landroid/car/hardware/xpu/XpuProtoMessageVW$RoadSlopeInfo;ILandroid/car/hardware/xpu/XpuProtoMessageVW$SlopePoint;)V
    .locals 0

    .line 7477
    invoke-direct {p0, p1, p2}, Landroid/car/hardware/xpu/XpuProtoMessageVW$RoadSlopeInfo;->addSlopePoints(ILandroid/car/hardware/xpu/XpuProtoMessageVW$SlopePoint;)V

    return-void
.end method

.method static synthetic access$15100(Landroid/car/hardware/xpu/XpuProtoMessageVW$RoadSlopeInfo;Landroid/car/hardware/xpu/XpuProtoMessageVW$SlopePoint$Builder;)V
    .locals 0

    .line 7477
    invoke-direct {p0, p1}, Landroid/car/hardware/xpu/XpuProtoMessageVW$RoadSlopeInfo;->addSlopePoints(Landroid/car/hardware/xpu/XpuProtoMessageVW$SlopePoint$Builder;)V

    return-void
.end method

.method static synthetic access$15200(Landroid/car/hardware/xpu/XpuProtoMessageVW$RoadSlopeInfo;ILandroid/car/hardware/xpu/XpuProtoMessageVW$SlopePoint$Builder;)V
    .locals 0

    .line 7477
    invoke-direct {p0, p1, p2}, Landroid/car/hardware/xpu/XpuProtoMessageVW$RoadSlopeInfo;->addSlopePoints(ILandroid/car/hardware/xpu/XpuProtoMessageVW$SlopePoint$Builder;)V

    return-void
.end method

.method static synthetic access$15300(Landroid/car/hardware/xpu/XpuProtoMessageVW$RoadSlopeInfo;Ljava/lang/Iterable;)V
    .locals 0

    .line 7477
    invoke-direct {p0, p1}, Landroid/car/hardware/xpu/XpuProtoMessageVW$RoadSlopeInfo;->addAllSlopePoints(Ljava/lang/Iterable;)V

    return-void
.end method

.method static synthetic access$15400(Landroid/car/hardware/xpu/XpuProtoMessageVW$RoadSlopeInfo;)V
    .locals 0

    .line 7477
    invoke-direct {p0}, Landroid/car/hardware/xpu/XpuProtoMessageVW$RoadSlopeInfo;->clearSlopePoints()V

    return-void
.end method

.method static synthetic access$15500(Landroid/car/hardware/xpu/XpuProtoMessageVW$RoadSlopeInfo;I)V
    .locals 0

    .line 7477
    invoke-direct {p0, p1}, Landroid/car/hardware/xpu/XpuProtoMessageVW$RoadSlopeInfo;->removeSlopePoints(I)V

    return-void
.end method

.method private addAllSlopePoints(Ljava/lang/Iterable;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Landroid/car/hardware/xpu/XpuProtoMessageVW$SlopePoint;",
            ">;)V"
        }
    .end annotation

    .line 7612
    invoke-direct {p0}, Landroid/car/hardware/xpu/XpuProtoMessageVW$RoadSlopeInfo;->ensureSlopePointsIsMutable()V

    .line 7613
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$RoadSlopeInfo;->slopePoints_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    invoke-static {p1, v0}, Lcom/android/carsdk/protobuf/AbstractMessageLite;->addAll(Ljava/lang/Iterable;Ljava/util/Collection;)V

    return-void
.end method

.method private addSlopePoints(ILandroid/car/hardware/xpu/XpuProtoMessageVW$SlopePoint$Builder;)V
    .locals 1

    .line 7604
    invoke-direct {p0}, Landroid/car/hardware/xpu/XpuProtoMessageVW$RoadSlopeInfo;->ensureSlopePointsIsMutable()V

    .line 7605
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$RoadSlopeInfo;->slopePoints_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    invoke-virtual {p2}, Landroid/car/hardware/xpu/XpuProtoMessageVW$SlopePoint$Builder;->build()Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object p2

    check-cast p2, Landroid/car/hardware/xpu/XpuProtoMessageVW$SlopePoint;

    invoke-interface {v0, p1, p2}, Lcom/android/carsdk/protobuf/Internal$ProtobufList;->add(ILjava/lang/Object;)V

    return-void
.end method

.method private addSlopePoints(ILandroid/car/hardware/xpu/XpuProtoMessageVW$SlopePoint;)V
    .locals 1

    .line 7586
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 7588
    invoke-direct {p0}, Landroid/car/hardware/xpu/XpuProtoMessageVW$RoadSlopeInfo;->ensureSlopePointsIsMutable()V

    .line 7589
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$RoadSlopeInfo;->slopePoints_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1, p2}, Lcom/android/carsdk/protobuf/Internal$ProtobufList;->add(ILjava/lang/Object;)V

    return-void
.end method

.method private addSlopePoints(Landroid/car/hardware/xpu/XpuProtoMessageVW$SlopePoint$Builder;)V
    .locals 1

    .line 7596
    invoke-direct {p0}, Landroid/car/hardware/xpu/XpuProtoMessageVW$RoadSlopeInfo;->ensureSlopePointsIsMutable()V

    .line 7597
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$RoadSlopeInfo;->slopePoints_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    invoke-virtual {p1}, Landroid/car/hardware/xpu/XpuProtoMessageVW$SlopePoint$Builder;->build()Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Landroid/car/hardware/xpu/XpuProtoMessageVW$SlopePoint;

    invoke-interface {v0, p1}, Lcom/android/carsdk/protobuf/Internal$ProtobufList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private addSlopePoints(Landroid/car/hardware/xpu/XpuProtoMessageVW$SlopePoint;)V
    .locals 1

    .line 7575
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 7577
    invoke-direct {p0}, Landroid/car/hardware/xpu/XpuProtoMessageVW$RoadSlopeInfo;->ensureSlopePointsIsMutable()V

    .line 7578
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$RoadSlopeInfo;->slopePoints_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1}, Lcom/android/carsdk/protobuf/Internal$ProtobufList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private clearSlopePoints()V
    .locals 1

    .line 7620
    invoke-static {}, Landroid/car/hardware/xpu/XpuProtoMessageVW$RoadSlopeInfo;->emptyProtobufList()Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    move-result-object v0

    iput-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$RoadSlopeInfo;->slopePoints_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    return-void
.end method

.method private clearSlopeType()V
    .locals 1

    const/4 v0, 0x0

    .line 7507
    iput v0, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$RoadSlopeInfo;->slopeType_:I

    return-void
.end method

.method private ensureSlopePointsIsMutable()V
    .locals 1

    .line 7545
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$RoadSlopeInfo;->slopePoints_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    invoke-interface {v0}, Lcom/android/carsdk/protobuf/Internal$ProtobufList;->isModifiable()Z

    move-result v0

    if-nez v0, :cond_0

    .line 7546
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$RoadSlopeInfo;->slopePoints_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    .line 7547
    invoke-static {v0}, Lcom/android/carsdk/protobuf/GeneratedMessageLite;->mutableCopy(Lcom/android/carsdk/protobuf/Internal$ProtobufList;)Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    move-result-object v0

    iput-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$RoadSlopeInfo;->slopePoints_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    :cond_0
    return-void
.end method

.method public static getDefaultInstance()Landroid/car/hardware/xpu/XpuProtoMessageVW$RoadSlopeInfo;
    .locals 1

    .line 7959
    sget-object v0, Landroid/car/hardware/xpu/XpuProtoMessageVW$RoadSlopeInfo;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuProtoMessageVW$RoadSlopeInfo;

    return-object v0
.end method

.method public static newBuilder()Landroid/car/hardware/xpu/XpuProtoMessageVW$RoadSlopeInfo$Builder;
    .locals 1

    .line 7719
    sget-object v0, Landroid/car/hardware/xpu/XpuProtoMessageVW$RoadSlopeInfo;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuProtoMessageVW$RoadSlopeInfo;

    invoke-virtual {v0}, Landroid/car/hardware/xpu/XpuProtoMessageVW$RoadSlopeInfo;->toBuilder()Lcom/android/carsdk/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Landroid/car/hardware/xpu/XpuProtoMessageVW$RoadSlopeInfo$Builder;

    return-object v0
.end method

.method public static newBuilder(Landroid/car/hardware/xpu/XpuProtoMessageVW$RoadSlopeInfo;)Landroid/car/hardware/xpu/XpuProtoMessageVW$RoadSlopeInfo$Builder;
    .locals 1

    .line 7722
    sget-object v0, Landroid/car/hardware/xpu/XpuProtoMessageVW$RoadSlopeInfo;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuProtoMessageVW$RoadSlopeInfo;

    invoke-virtual {v0}, Landroid/car/hardware/xpu/XpuProtoMessageVW$RoadSlopeInfo;->toBuilder()Lcom/android/carsdk/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Landroid/car/hardware/xpu/XpuProtoMessageVW$RoadSlopeInfo$Builder;

    invoke-virtual {v0, p0}, Landroid/car/hardware/xpu/XpuProtoMessageVW$RoadSlopeInfo$Builder;->mergeFrom(Lcom/android/carsdk/protobuf/GeneratedMessageLite;)Lcom/android/carsdk/protobuf/GeneratedMessageLite$Builder;

    move-result-object p0

    check-cast p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$RoadSlopeInfo$Builder;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Landroid/car/hardware/xpu/XpuProtoMessageVW$RoadSlopeInfo;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 7696
    sget-object v0, Landroid/car/hardware/xpu/XpuProtoMessageVW$RoadSlopeInfo;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuProtoMessageVW$RoadSlopeInfo;

    invoke-static {v0, p0}, Landroid/car/hardware/xpu/XpuProtoMessageVW$RoadSlopeInfo;->parseDelimitedFrom(Lcom/android/carsdk/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$RoadSlopeInfo;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/android/carsdk/protobuf/ExtensionRegistryLite;)Landroid/car/hardware/xpu/XpuProtoMessageVW$RoadSlopeInfo;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 7702
    sget-object v0, Landroid/car/hardware/xpu/XpuProtoMessageVW$RoadSlopeInfo;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuProtoMessageVW$RoadSlopeInfo;

    invoke-static {v0, p0, p1}, Landroid/car/hardware/xpu/XpuProtoMessageVW$RoadSlopeInfo;->parseDelimitedFrom(Lcom/android/carsdk/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/android/carsdk/protobuf/ExtensionRegistryLite;)Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$RoadSlopeInfo;

    return-object p0
.end method

.method public static parseFrom(Lcom/android/carsdk/protobuf/ByteString;)Landroid/car/hardware/xpu/XpuProtoMessageVW$RoadSlopeInfo;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/carsdk/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 7660
    sget-object v0, Landroid/car/hardware/xpu/XpuProtoMessageVW$RoadSlopeInfo;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuProtoMessageVW$RoadSlopeInfo;

    invoke-static {v0, p0}, Lcom/android/carsdk/protobuf/GeneratedMessageLite;->parseFrom(Lcom/android/carsdk/protobuf/GeneratedMessageLite;Lcom/android/carsdk/protobuf/ByteString;)Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$RoadSlopeInfo;

    return-object p0
.end method

.method public static parseFrom(Lcom/android/carsdk/protobuf/ByteString;Lcom/android/carsdk/protobuf/ExtensionRegistryLite;)Landroid/car/hardware/xpu/XpuProtoMessageVW$RoadSlopeInfo;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/carsdk/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 7667
    sget-object v0, Landroid/car/hardware/xpu/XpuProtoMessageVW$RoadSlopeInfo;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuProtoMessageVW$RoadSlopeInfo;

    invoke-static {v0, p0, p1}, Lcom/android/carsdk/protobuf/GeneratedMessageLite;->parseFrom(Lcom/android/carsdk/protobuf/GeneratedMessageLite;Lcom/android/carsdk/protobuf/ByteString;Lcom/android/carsdk/protobuf/ExtensionRegistryLite;)Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$RoadSlopeInfo;

    return-object p0
.end method

.method public static parseFrom(Lcom/android/carsdk/protobuf/CodedInputStream;)Landroid/car/hardware/xpu/XpuProtoMessageVW$RoadSlopeInfo;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 7707
    sget-object v0, Landroid/car/hardware/xpu/XpuProtoMessageVW$RoadSlopeInfo;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuProtoMessageVW$RoadSlopeInfo;

    invoke-static {v0, p0}, Lcom/android/carsdk/protobuf/GeneratedMessageLite;->parseFrom(Lcom/android/carsdk/protobuf/GeneratedMessageLite;Lcom/android/carsdk/protobuf/CodedInputStream;)Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$RoadSlopeInfo;

    return-object p0
.end method

.method public static parseFrom(Lcom/android/carsdk/protobuf/CodedInputStream;Lcom/android/carsdk/protobuf/ExtensionRegistryLite;)Landroid/car/hardware/xpu/XpuProtoMessageVW$RoadSlopeInfo;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 7714
    sget-object v0, Landroid/car/hardware/xpu/XpuProtoMessageVW$RoadSlopeInfo;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuProtoMessageVW$RoadSlopeInfo;

    invoke-static {v0, p0, p1}, Lcom/android/carsdk/protobuf/GeneratedMessageLite;->parseFrom(Lcom/android/carsdk/protobuf/GeneratedMessageLite;Lcom/android/carsdk/protobuf/CodedInputStream;Lcom/android/carsdk/protobuf/ExtensionRegistryLite;)Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$RoadSlopeInfo;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Landroid/car/hardware/xpu/XpuProtoMessageVW$RoadSlopeInfo;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 7684
    sget-object v0, Landroid/car/hardware/xpu/XpuProtoMessageVW$RoadSlopeInfo;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuProtoMessageVW$RoadSlopeInfo;

    invoke-static {v0, p0}, Lcom/android/carsdk/protobuf/GeneratedMessageLite;->parseFrom(Lcom/android/carsdk/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$RoadSlopeInfo;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/android/carsdk/protobuf/ExtensionRegistryLite;)Landroid/car/hardware/xpu/XpuProtoMessageVW$RoadSlopeInfo;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 7691
    sget-object v0, Landroid/car/hardware/xpu/XpuProtoMessageVW$RoadSlopeInfo;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuProtoMessageVW$RoadSlopeInfo;

    invoke-static {v0, p0, p1}, Lcom/android/carsdk/protobuf/GeneratedMessageLite;->parseFrom(Lcom/android/carsdk/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/android/carsdk/protobuf/ExtensionRegistryLite;)Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$RoadSlopeInfo;

    return-object p0
.end method

.method public static parseFrom([B)Landroid/car/hardware/xpu/XpuProtoMessageVW$RoadSlopeInfo;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/carsdk/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 7672
    sget-object v0, Landroid/car/hardware/xpu/XpuProtoMessageVW$RoadSlopeInfo;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuProtoMessageVW$RoadSlopeInfo;

    invoke-static {v0, p0}, Lcom/android/carsdk/protobuf/GeneratedMessageLite;->parseFrom(Lcom/android/carsdk/protobuf/GeneratedMessageLite;[B)Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$RoadSlopeInfo;

    return-object p0
.end method

.method public static parseFrom([BLcom/android/carsdk/protobuf/ExtensionRegistryLite;)Landroid/car/hardware/xpu/XpuProtoMessageVW$RoadSlopeInfo;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/carsdk/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 7679
    sget-object v0, Landroid/car/hardware/xpu/XpuProtoMessageVW$RoadSlopeInfo;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuProtoMessageVW$RoadSlopeInfo;

    invoke-static {v0, p0, p1}, Lcom/android/carsdk/protobuf/GeneratedMessageLite;->parseFrom(Lcom/android/carsdk/protobuf/GeneratedMessageLite;[BLcom/android/carsdk/protobuf/ExtensionRegistryLite;)Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$RoadSlopeInfo;

    return-object p0
.end method

.method public static parser()Lcom/android/carsdk/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/android/carsdk/protobuf/Parser<",
            "Landroid/car/hardware/xpu/XpuProtoMessageVW$RoadSlopeInfo;",
            ">;"
        }
    .end annotation

    .line 7965
    sget-object v0, Landroid/car/hardware/xpu/XpuProtoMessageVW$RoadSlopeInfo;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuProtoMessageVW$RoadSlopeInfo;

    invoke-virtual {v0}, Landroid/car/hardware/xpu/XpuProtoMessageVW$RoadSlopeInfo;->getParserForType()Lcom/android/carsdk/protobuf/Parser;

    move-result-object v0

    return-object v0
.end method

.method private removeSlopePoints(I)V
    .locals 1

    .line 7626
    invoke-direct {p0}, Landroid/car/hardware/xpu/XpuProtoMessageVW$RoadSlopeInfo;->ensureSlopePointsIsMutable()V

    .line 7627
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$RoadSlopeInfo;->slopePoints_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1}, Lcom/android/carsdk/protobuf/Internal$ProtobufList;->remove(I)Ljava/lang/Object;

    return-void
.end method

.method private setSlopePoints(ILandroid/car/hardware/xpu/XpuProtoMessageVW$SlopePoint$Builder;)V
    .locals 1

    .line 7567
    invoke-direct {p0}, Landroid/car/hardware/xpu/XpuProtoMessageVW$RoadSlopeInfo;->ensureSlopePointsIsMutable()V

    .line 7568
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$RoadSlopeInfo;->slopePoints_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    invoke-virtual {p2}, Landroid/car/hardware/xpu/XpuProtoMessageVW$SlopePoint$Builder;->build()Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object p2

    check-cast p2, Landroid/car/hardware/xpu/XpuProtoMessageVW$SlopePoint;

    invoke-interface {v0, p1, p2}, Lcom/android/carsdk/protobuf/Internal$ProtobufList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private setSlopePoints(ILandroid/car/hardware/xpu/XpuProtoMessageVW$SlopePoint;)V
    .locals 1

    .line 7557
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 7559
    invoke-direct {p0}, Landroid/car/hardware/xpu/XpuProtoMessageVW$RoadSlopeInfo;->ensureSlopePointsIsMutable()V

    .line 7560
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$RoadSlopeInfo;->slopePoints_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1, p2}, Lcom/android/carsdk/protobuf/Internal$ProtobufList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private setSlopeType(I)V
    .locals 0

    .line 7500
    iput p1, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$RoadSlopeInfo;->slopeType_:I

    return-void
.end method


# virtual methods
.method protected final dynamicMethod(Lcom/android/carsdk/protobuf/GeneratedMessageLite$MethodToInvoke;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    .line 7864
    sget-object v0, Landroid/car/hardware/xpu/XpuProtoMessageVW$1;->$SwitchMap$com$google$protobuf$GeneratedMessageLite$MethodToInvoke:[I

    invoke-virtual {p1}, Lcom/android/carsdk/protobuf/GeneratedMessageLite$MethodToInvoke;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x1

    packed-switch p1, :pswitch_data_0

    .line 7947
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1

    .line 7938
    :pswitch_0
    sget-object p1, Landroid/car/hardware/xpu/XpuProtoMessageVW$RoadSlopeInfo;->PARSER:Lcom/android/carsdk/protobuf/Parser;

    if-nez p1, :cond_1

    const-class p1, Landroid/car/hardware/xpu/XpuProtoMessageVW$RoadSlopeInfo;

    monitor-enter p1

    .line 7939
    :try_start_0
    sget-object p2, Landroid/car/hardware/xpu/XpuProtoMessageVW$RoadSlopeInfo;->PARSER:Lcom/android/carsdk/protobuf/Parser;

    if-nez p2, :cond_0

    .line 7940
    new-instance p2, Lcom/android/carsdk/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;

    sget-object p3, Landroid/car/hardware/xpu/XpuProtoMessageVW$RoadSlopeInfo;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuProtoMessageVW$RoadSlopeInfo;

    invoke-direct {p2, p3}, Lcom/android/carsdk/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;-><init>(Lcom/android/carsdk/protobuf/GeneratedMessageLite;)V

    sput-object p2, Landroid/car/hardware/xpu/XpuProtoMessageVW$RoadSlopeInfo;->PARSER:Lcom/android/carsdk/protobuf/Parser;

    .line 7942
    :cond_0
    monitor-exit p1

    goto :goto_0

    :catchall_0
    move-exception p2

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p2

    .line 7944
    :cond_1
    :goto_0
    sget-object p1, Landroid/car/hardware/xpu/XpuProtoMessageVW$RoadSlopeInfo;->PARSER:Lcom/android/carsdk/protobuf/Parser;

    return-object p1

    .line 7891
    :pswitch_1
    check-cast p2, Lcom/android/carsdk/protobuf/CodedInputStream;

    .line 7893
    check-cast p3, Lcom/android/carsdk/protobuf/ExtensionRegistryLite;

    :cond_2
    :goto_1
    if-nez v1, :cond_7

    .line 7898
    :try_start_1
    invoke-virtual {p2}, Lcom/android/carsdk/protobuf/CodedInputStream;->readTag()I

    move-result p1

    if-eqz p1, :cond_6

    const/16 v0, 0x8

    if-eq p1, v0, :cond_5

    const/16 v0, 0x12

    if-eq p1, v0, :cond_3

    .line 7904
    invoke-virtual {p2, p1}, Lcom/android/carsdk/protobuf/CodedInputStream;->skipField(I)Z

    move-result p1

    if-nez p1, :cond_2

    goto :goto_2

    .line 7915
    :cond_3
    iget-object p1, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$RoadSlopeInfo;->slopePoints_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    invoke-interface {p1}, Lcom/android/carsdk/protobuf/Internal$ProtobufList;->isModifiable()Z

    move-result p1

    if-nez p1, :cond_4

    .line 7916
    iget-object p1, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$RoadSlopeInfo;->slopePoints_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    .line 7917
    invoke-static {p1}, Lcom/android/carsdk/protobuf/GeneratedMessageLite;->mutableCopy(Lcom/android/carsdk/protobuf/Internal$ProtobufList;)Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    move-result-object p1

    iput-object p1, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$RoadSlopeInfo;->slopePoints_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    .line 7919
    :cond_4
    iget-object p1, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$RoadSlopeInfo;->slopePoints_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    .line 7920
    invoke-static {}, Landroid/car/hardware/xpu/XpuProtoMessageVW$SlopePoint;->parser()Lcom/android/carsdk/protobuf/Parser;

    move-result-object v0

    invoke-virtual {p2, v0, p3}, Lcom/android/carsdk/protobuf/CodedInputStream;->readMessage(Lcom/android/carsdk/protobuf/Parser;Lcom/android/carsdk/protobuf/ExtensionRegistryLite;)Lcom/android/carsdk/protobuf/MessageLite;

    move-result-object v0

    check-cast v0, Landroid/car/hardware/xpu/XpuProtoMessageVW$SlopePoint;

    .line 7919
    invoke-interface {p1, v0}, Lcom/android/carsdk/protobuf/Internal$ProtobufList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 7911
    :cond_5
    invoke-virtual {p2}, Lcom/android/carsdk/protobuf/CodedInputStream;->readInt32()I

    move-result p1

    iput p1, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$RoadSlopeInfo;->slopeType_:I
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

    .line 7928
    :try_start_2
    new-instance p2, Ljava/lang/RuntimeException;

    new-instance p3, Lcom/android/carsdk/protobuf/InvalidProtocolBufferException;

    .line 7930
    invoke-virtual {p1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p3, p1}, Lcom/android/carsdk/protobuf/InvalidProtocolBufferException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, p0}, Lcom/android/carsdk/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/android/carsdk/protobuf/MessageLite;)Lcom/android/carsdk/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p2

    :catch_1
    move-exception p1

    .line 7926
    new-instance p2, Ljava/lang/RuntimeException;

    invoke-virtual {p1, p0}, Lcom/android/carsdk/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/android/carsdk/protobuf/MessageLite;)Lcom/android/carsdk/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 7931
    :goto_3
    throw p1

    .line 7935
    :cond_7
    :pswitch_2
    sget-object p1, Landroid/car/hardware/xpu/XpuProtoMessageVW$RoadSlopeInfo;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuProtoMessageVW$RoadSlopeInfo;

    return-object p1

    .line 7879
    :pswitch_3
    check-cast p2, Lcom/android/carsdk/protobuf/GeneratedMessageLite$Visitor;

    .line 7880
    check-cast p3, Landroid/car/hardware/xpu/XpuProtoMessageVW$RoadSlopeInfo;

    .line 7881
    iget p1, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$RoadSlopeInfo;->slopeType_:I

    if-eqz p1, :cond_8

    move v0, v2

    goto :goto_4

    :cond_8
    move v0, v1

    :goto_4
    iget v3, p3, Landroid/car/hardware/xpu/XpuProtoMessageVW$RoadSlopeInfo;->slopeType_:I

    if-eqz v3, :cond_9

    move v1, v2

    :cond_9
    invoke-interface {p2, v0, p1, v1, v3}, Lcom/android/carsdk/protobuf/GeneratedMessageLite$Visitor;->visitInt(ZIZI)I

    move-result p1

    iput p1, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$RoadSlopeInfo;->slopeType_:I

    .line 7883
    iget-object p1, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$RoadSlopeInfo;->slopePoints_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    iget-object v0, p3, Landroid/car/hardware/xpu/XpuProtoMessageVW$RoadSlopeInfo;->slopePoints_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    invoke-interface {p2, p1, v0}, Lcom/android/carsdk/protobuf/GeneratedMessageLite$Visitor;->visitList(Lcom/android/carsdk/protobuf/Internal$ProtobufList;Lcom/android/carsdk/protobuf/Internal$ProtobufList;)Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    move-result-object p1

    iput-object p1, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$RoadSlopeInfo;->slopePoints_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    .line 7884
    sget-object p1, Lcom/android/carsdk/protobuf/GeneratedMessageLite$MergeFromVisitor;->INSTANCE:Lcom/android/carsdk/protobuf/GeneratedMessageLite$MergeFromVisitor;

    if-ne p2, p1, :cond_a

    .line 7886
    iget p1, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$RoadSlopeInfo;->bitField0_:I

    iget p2, p3, Landroid/car/hardware/xpu/XpuProtoMessageVW$RoadSlopeInfo;->bitField0_:I

    or-int/2addr p1, p2

    iput p1, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$RoadSlopeInfo;->bitField0_:I

    :cond_a
    return-object p0

    .line 7876
    :pswitch_4
    new-instance p1, Landroid/car/hardware/xpu/XpuProtoMessageVW$RoadSlopeInfo$Builder;

    invoke-direct {p1, v0}, Landroid/car/hardware/xpu/XpuProtoMessageVW$RoadSlopeInfo$Builder;-><init>(Landroid/car/hardware/xpu/XpuProtoMessageVW$1;)V

    return-object p1

    .line 7872
    :pswitch_5
    iget-object p1, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$RoadSlopeInfo;->slopePoints_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    invoke-interface {p1}, Lcom/android/carsdk/protobuf/Internal$ProtobufList;->makeImmutable()V

    return-object v0

    .line 7869
    :pswitch_6
    sget-object p1, Landroid/car/hardware/xpu/XpuProtoMessageVW$RoadSlopeInfo;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuProtoMessageVW$RoadSlopeInfo;

    return-object p1

    .line 7866
    :pswitch_7
    new-instance p1, Landroid/car/hardware/xpu/XpuProtoMessageVW$RoadSlopeInfo;

    invoke-direct {p1}, Landroid/car/hardware/xpu/XpuProtoMessageVW$RoadSlopeInfo;-><init>()V

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

    .line 7641
    iget v0, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$RoadSlopeInfo;->memoizedSerializedSize:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    return v0

    .line 7645
    :cond_0
    iget v0, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$RoadSlopeInfo;->slopeType_:I

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    const/4 v2, 0x1

    .line 7647
    invoke-static {v2, v0}, Lcom/android/carsdk/protobuf/CodedOutputStream;->computeInt32Size(II)I

    move-result v0

    add-int/2addr v0, v1

    goto :goto_0

    :cond_1
    move v0, v1

    .line 7649
    :goto_0
    iget-object v2, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$RoadSlopeInfo;->slopePoints_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    invoke-interface {v2}, Lcom/android/carsdk/protobuf/Internal$ProtobufList;->size()I

    move-result v2

    if-ge v1, v2, :cond_2

    const/4 v2, 0x2

    .line 7650
    iget-object v3, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$RoadSlopeInfo;->slopePoints_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    .line 7651
    invoke-interface {v3, v1}, Lcom/android/carsdk/protobuf/Internal$ProtobufList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/carsdk/protobuf/MessageLite;

    invoke-static {v2, v3}, Lcom/android/carsdk/protobuf/CodedOutputStream;->computeMessageSize(ILcom/android/carsdk/protobuf/MessageLite;)I

    move-result v2

    add-int/2addr v0, v2

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 7653
    :cond_2
    iput v0, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$RoadSlopeInfo;->memoizedSerializedSize:I

    return v0
.end method

.method public getSlopePoints(I)Landroid/car/hardware/xpu/XpuProtoMessageVW$SlopePoint;
    .locals 1

    .line 7535
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$RoadSlopeInfo;->slopePoints_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1}, Lcom/android/carsdk/protobuf/Internal$ProtobufList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/car/hardware/xpu/XpuProtoMessageVW$SlopePoint;

    return-object p1
.end method

.method public getSlopePointsCount()I
    .locals 1

    .line 7529
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$RoadSlopeInfo;->slopePoints_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

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
            "Landroid/car/hardware/xpu/XpuProtoMessageVW$SlopePoint;",
            ">;"
        }
    .end annotation

    .line 7516
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$RoadSlopeInfo;->slopePoints_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    return-object v0
.end method

.method public getSlopePointsOrBuilder(I)Landroid/car/hardware/xpu/XpuProtoMessageVW$SlopePointOrBuilder;
    .locals 1

    .line 7542
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$RoadSlopeInfo;->slopePoints_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1}, Lcom/android/carsdk/protobuf/Internal$ProtobufList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/car/hardware/xpu/XpuProtoMessageVW$SlopePointOrBuilder;

    return-object p1
.end method

.method public getSlopePointsOrBuilderList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "+",
            "Landroid/car/hardware/xpu/XpuProtoMessageVW$SlopePointOrBuilder;",
            ">;"
        }
    .end annotation

    .line 7523
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$RoadSlopeInfo;->slopePoints_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    return-object v0
.end method

.method public getSlopeType()I
    .locals 1

    .line 7493
    iget v0, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$RoadSlopeInfo;->slopeType_:I

    return v0
.end method

.method public writeTo(Lcom/android/carsdk/protobuf/CodedOutputStream;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 7632
    iget v0, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$RoadSlopeInfo;->slopeType_:I

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    .line 7633
    invoke-virtual {p1, v1, v0}, Lcom/android/carsdk/protobuf/CodedOutputStream;->writeInt32(II)V

    :cond_0
    const/4 v0, 0x0

    .line 7635
    :goto_0
    iget-object v1, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$RoadSlopeInfo;->slopePoints_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    invoke-interface {v1}, Lcom/android/carsdk/protobuf/Internal$ProtobufList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    const/4 v1, 0x2

    .line 7636
    iget-object v2, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$RoadSlopeInfo;->slopePoints_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    invoke-interface {v2, v0}, Lcom/android/carsdk/protobuf/Internal$ProtobufList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/carsdk/protobuf/MessageLite;

    invoke-virtual {p1, v1, v2}, Lcom/android/carsdk/protobuf/CodedOutputStream;->writeMessage(ILcom/android/carsdk/protobuf/MessageLite;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method
