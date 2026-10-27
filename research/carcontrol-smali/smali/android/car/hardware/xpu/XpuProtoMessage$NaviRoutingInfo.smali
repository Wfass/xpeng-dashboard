.class public final Landroid/car/hardware/xpu/XpuProtoMessage$NaviRoutingInfo;
.super Lcom/android/carsdk/protobuf/GeneratedMessageLite;
.source "XpuProtoMessage.java"

# interfaces
.implements Landroid/car/hardware/xpu/XpuProtoMessage$NaviRoutingInfoOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/car/hardware/xpu/XpuProtoMessage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "NaviRoutingInfo"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/car/hardware/xpu/XpuProtoMessage$NaviRoutingInfo$Builder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/carsdk/protobuf/GeneratedMessageLite<",
        "Landroid/car/hardware/xpu/XpuProtoMessage$NaviRoutingInfo;",
        "Landroid/car/hardware/xpu/XpuProtoMessage$NaviRoutingInfo$Builder;",
        ">;",
        "Landroid/car/hardware/xpu/XpuProtoMessage$NaviRoutingInfoOrBuilder;"
    }
.end annotation


# static fields
.field private static final DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuProtoMessage$NaviRoutingInfo;

.field public static final NAVIGATION_ID_FIELD_NUMBER:I = 0x2

.field public static final NAVIGATION_STATUS_FIELD_NUMBER:I = 0x1

.field private static volatile PARSER:Lcom/android/carsdk/protobuf/Parser; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/carsdk/protobuf/Parser<",
            "Landroid/car/hardware/xpu/XpuProtoMessage$NaviRoutingInfo;",
            ">;"
        }
    .end annotation
.end field

.field public static final V2_POINTS_FIELD_NUMBER:I = 0x3


# instance fields
.field private bitField0_:I

.field private navigationId_:J

.field private navigationStatus_:I

.field private v2Points_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/carsdk/protobuf/Internal$ProtobufList<",
            "Landroid/car/hardware/xpu/XpuProtoMessage$V2_Point;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 19105
    new-instance v0, Landroid/car/hardware/xpu/XpuProtoMessage$NaviRoutingInfo;

    invoke-direct {v0}, Landroid/car/hardware/xpu/XpuProtoMessage$NaviRoutingInfo;-><init>()V

    sput-object v0, Landroid/car/hardware/xpu/XpuProtoMessage$NaviRoutingInfo;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuProtoMessage$NaviRoutingInfo;

    .line 19106
    invoke-virtual {v0}, Landroid/car/hardware/xpu/XpuProtoMessage$NaviRoutingInfo;->makeImmutable()V

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .line 18370
    invoke-direct {p0}, Lcom/android/carsdk/protobuf/GeneratedMessageLite;-><init>()V

    const/4 v0, 0x0

    .line 18371
    iput v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$NaviRoutingInfo;->navigationStatus_:I

    const-wide/16 v0, 0x0

    .line 18372
    iput-wide v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$NaviRoutingInfo;->navigationId_:J

    .line 18373
    invoke-static {}, Landroid/car/hardware/xpu/XpuProtoMessage$NaviRoutingInfo;->emptyProtobufList()Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    move-result-object v0

    iput-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$NaviRoutingInfo;->v2Points_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    return-void
.end method

.method static synthetic access$44000()Landroid/car/hardware/xpu/XpuProtoMessage$NaviRoutingInfo;
    .locals 1

    .line 18365
    sget-object v0, Landroid/car/hardware/xpu/XpuProtoMessage$NaviRoutingInfo;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuProtoMessage$NaviRoutingInfo;

    return-object v0
.end method

.method static synthetic access$44100(Landroid/car/hardware/xpu/XpuProtoMessage$NaviRoutingInfo;I)V
    .locals 0

    .line 18365
    invoke-direct {p0, p1}, Landroid/car/hardware/xpu/XpuProtoMessage$NaviRoutingInfo;->setNavigationStatusValue(I)V

    return-void
.end method

.method static synthetic access$44200(Landroid/car/hardware/xpu/XpuProtoMessage$NaviRoutingInfo;Landroid/car/hardware/xpu/XpuProtoMessage$NaviStatus;)V
    .locals 0

    .line 18365
    invoke-direct {p0, p1}, Landroid/car/hardware/xpu/XpuProtoMessage$NaviRoutingInfo;->setNavigationStatus(Landroid/car/hardware/xpu/XpuProtoMessage$NaviStatus;)V

    return-void
.end method

.method static synthetic access$44300(Landroid/car/hardware/xpu/XpuProtoMessage$NaviRoutingInfo;)V
    .locals 0

    .line 18365
    invoke-direct {p0}, Landroid/car/hardware/xpu/XpuProtoMessage$NaviRoutingInfo;->clearNavigationStatus()V

    return-void
.end method

.method static synthetic access$44400(Landroid/car/hardware/xpu/XpuProtoMessage$NaviRoutingInfo;J)V
    .locals 0

    .line 18365
    invoke-direct {p0, p1, p2}, Landroid/car/hardware/xpu/XpuProtoMessage$NaviRoutingInfo;->setNavigationId(J)V

    return-void
.end method

.method static synthetic access$44500(Landroid/car/hardware/xpu/XpuProtoMessage$NaviRoutingInfo;)V
    .locals 0

    .line 18365
    invoke-direct {p0}, Landroid/car/hardware/xpu/XpuProtoMessage$NaviRoutingInfo;->clearNavigationId()V

    return-void
.end method

.method static synthetic access$44600(Landroid/car/hardware/xpu/XpuProtoMessage$NaviRoutingInfo;ILandroid/car/hardware/xpu/XpuProtoMessage$V2_Point;)V
    .locals 0

    .line 18365
    invoke-direct {p0, p1, p2}, Landroid/car/hardware/xpu/XpuProtoMessage$NaviRoutingInfo;->setV2Points(ILandroid/car/hardware/xpu/XpuProtoMessage$V2_Point;)V

    return-void
.end method

.method static synthetic access$44700(Landroid/car/hardware/xpu/XpuProtoMessage$NaviRoutingInfo;ILandroid/car/hardware/xpu/XpuProtoMessage$V2_Point$Builder;)V
    .locals 0

    .line 18365
    invoke-direct {p0, p1, p2}, Landroid/car/hardware/xpu/XpuProtoMessage$NaviRoutingInfo;->setV2Points(ILandroid/car/hardware/xpu/XpuProtoMessage$V2_Point$Builder;)V

    return-void
.end method

.method static synthetic access$44800(Landroid/car/hardware/xpu/XpuProtoMessage$NaviRoutingInfo;Landroid/car/hardware/xpu/XpuProtoMessage$V2_Point;)V
    .locals 0

    .line 18365
    invoke-direct {p0, p1}, Landroid/car/hardware/xpu/XpuProtoMessage$NaviRoutingInfo;->addV2Points(Landroid/car/hardware/xpu/XpuProtoMessage$V2_Point;)V

    return-void
.end method

.method static synthetic access$44900(Landroid/car/hardware/xpu/XpuProtoMessage$NaviRoutingInfo;ILandroid/car/hardware/xpu/XpuProtoMessage$V2_Point;)V
    .locals 0

    .line 18365
    invoke-direct {p0, p1, p2}, Landroid/car/hardware/xpu/XpuProtoMessage$NaviRoutingInfo;->addV2Points(ILandroid/car/hardware/xpu/XpuProtoMessage$V2_Point;)V

    return-void
.end method

.method static synthetic access$45000(Landroid/car/hardware/xpu/XpuProtoMessage$NaviRoutingInfo;Landroid/car/hardware/xpu/XpuProtoMessage$V2_Point$Builder;)V
    .locals 0

    .line 18365
    invoke-direct {p0, p1}, Landroid/car/hardware/xpu/XpuProtoMessage$NaviRoutingInfo;->addV2Points(Landroid/car/hardware/xpu/XpuProtoMessage$V2_Point$Builder;)V

    return-void
.end method

.method static synthetic access$45100(Landroid/car/hardware/xpu/XpuProtoMessage$NaviRoutingInfo;ILandroid/car/hardware/xpu/XpuProtoMessage$V2_Point$Builder;)V
    .locals 0

    .line 18365
    invoke-direct {p0, p1, p2}, Landroid/car/hardware/xpu/XpuProtoMessage$NaviRoutingInfo;->addV2Points(ILandroid/car/hardware/xpu/XpuProtoMessage$V2_Point$Builder;)V

    return-void
.end method

.method static synthetic access$45200(Landroid/car/hardware/xpu/XpuProtoMessage$NaviRoutingInfo;Ljava/lang/Iterable;)V
    .locals 0

    .line 18365
    invoke-direct {p0, p1}, Landroid/car/hardware/xpu/XpuProtoMessage$NaviRoutingInfo;->addAllV2Points(Ljava/lang/Iterable;)V

    return-void
.end method

.method static synthetic access$45300(Landroid/car/hardware/xpu/XpuProtoMessage$NaviRoutingInfo;)V
    .locals 0

    .line 18365
    invoke-direct {p0}, Landroid/car/hardware/xpu/XpuProtoMessage$NaviRoutingInfo;->clearV2Points()V

    return-void
.end method

.method static synthetic access$45400(Landroid/car/hardware/xpu/XpuProtoMessage$NaviRoutingInfo;I)V
    .locals 0

    .line 18365
    invoke-direct {p0, p1}, Landroid/car/hardware/xpu/XpuProtoMessage$NaviRoutingInfo;->removeV2Points(I)V

    return-void
.end method

.method private addAllV2Points(Ljava/lang/Iterable;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Landroid/car/hardware/xpu/XpuProtoMessage$V2_Point;",
            ">;)V"
        }
    .end annotation

    .line 18620
    invoke-direct {p0}, Landroid/car/hardware/xpu/XpuProtoMessage$NaviRoutingInfo;->ensureV2PointsIsMutable()V

    .line 18621
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$NaviRoutingInfo;->v2Points_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    invoke-static {p1, v0}, Lcom/android/carsdk/protobuf/AbstractMessageLite;->addAll(Ljava/lang/Iterable;Ljava/util/Collection;)V

    return-void
.end method

.method private addV2Points(ILandroid/car/hardware/xpu/XpuProtoMessage$V2_Point$Builder;)V
    .locals 1

    .line 18608
    invoke-direct {p0}, Landroid/car/hardware/xpu/XpuProtoMessage$NaviRoutingInfo;->ensureV2PointsIsMutable()V

    .line 18609
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$NaviRoutingInfo;->v2Points_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    invoke-virtual {p2}, Landroid/car/hardware/xpu/XpuProtoMessage$V2_Point$Builder;->build()Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object p2

    check-cast p2, Landroid/car/hardware/xpu/XpuProtoMessage$V2_Point;

    invoke-interface {v0, p1, p2}, Lcom/android/carsdk/protobuf/Internal$ProtobufList;->add(ILjava/lang/Object;)V

    return-void
.end method

.method private addV2Points(ILandroid/car/hardware/xpu/XpuProtoMessage$V2_Point;)V
    .locals 1

    .line 18582
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 18584
    invoke-direct {p0}, Landroid/car/hardware/xpu/XpuProtoMessage$NaviRoutingInfo;->ensureV2PointsIsMutable()V

    .line 18585
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$NaviRoutingInfo;->v2Points_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1, p2}, Lcom/android/carsdk/protobuf/Internal$ProtobufList;->add(ILjava/lang/Object;)V

    return-void
.end method

.method private addV2Points(Landroid/car/hardware/xpu/XpuProtoMessage$V2_Point$Builder;)V
    .locals 1

    .line 18596
    invoke-direct {p0}, Landroid/car/hardware/xpu/XpuProtoMessage$NaviRoutingInfo;->ensureV2PointsIsMutable()V

    .line 18597
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$NaviRoutingInfo;->v2Points_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    invoke-virtual {p1}, Landroid/car/hardware/xpu/XpuProtoMessage$V2_Point$Builder;->build()Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Landroid/car/hardware/xpu/XpuProtoMessage$V2_Point;

    invoke-interface {v0, p1}, Lcom/android/carsdk/protobuf/Internal$ProtobufList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private addV2Points(Landroid/car/hardware/xpu/XpuProtoMessage$V2_Point;)V
    .locals 1

    .line 18567
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 18569
    invoke-direct {p0}, Landroid/car/hardware/xpu/XpuProtoMessage$NaviRoutingInfo;->ensureV2PointsIsMutable()V

    .line 18570
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$NaviRoutingInfo;->v2Points_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1}, Lcom/android/carsdk/protobuf/Internal$ProtobufList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private clearNavigationId()V
    .locals 2

    const-wide/16 v0, 0x0

    .line 18467
    iput-wide v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$NaviRoutingInfo;->navigationId_:J

    return-void
.end method

.method private clearNavigationStatus()V
    .locals 1

    const/4 v0, 0x0

    .line 18432
    iput v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$NaviRoutingInfo;->navigationStatus_:I

    return-void
.end method

.method private clearV2Points()V
    .locals 1

    .line 18632
    invoke-static {}, Landroid/car/hardware/xpu/XpuProtoMessage$NaviRoutingInfo;->emptyProtobufList()Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    move-result-object v0

    iput-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$NaviRoutingInfo;->v2Points_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    return-void
.end method

.method private ensureV2PointsIsMutable()V
    .locals 1

    .line 18525
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$NaviRoutingInfo;->v2Points_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    invoke-interface {v0}, Lcom/android/carsdk/protobuf/Internal$ProtobufList;->isModifiable()Z

    move-result v0

    if-nez v0, :cond_0

    .line 18526
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$NaviRoutingInfo;->v2Points_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    .line 18527
    invoke-static {v0}, Lcom/android/carsdk/protobuf/GeneratedMessageLite;->mutableCopy(Lcom/android/carsdk/protobuf/Internal$ProtobufList;)Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    move-result-object v0

    iput-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$NaviRoutingInfo;->v2Points_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    :cond_0
    return-void
.end method

.method public static getDefaultInstance()Landroid/car/hardware/xpu/XpuProtoMessage$NaviRoutingInfo;
    .locals 1

    .line 19110
    sget-object v0, Landroid/car/hardware/xpu/XpuProtoMessage$NaviRoutingInfo;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuProtoMessage$NaviRoutingInfo;

    return-object v0
.end method

.method public static newBuilder()Landroid/car/hardware/xpu/XpuProtoMessage$NaviRoutingInfo$Builder;
    .locals 1

    .line 18742
    sget-object v0, Landroid/car/hardware/xpu/XpuProtoMessage$NaviRoutingInfo;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuProtoMessage$NaviRoutingInfo;

    invoke-virtual {v0}, Landroid/car/hardware/xpu/XpuProtoMessage$NaviRoutingInfo;->toBuilder()Lcom/android/carsdk/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Landroid/car/hardware/xpu/XpuProtoMessage$NaviRoutingInfo$Builder;

    return-object v0
.end method

.method public static newBuilder(Landroid/car/hardware/xpu/XpuProtoMessage$NaviRoutingInfo;)Landroid/car/hardware/xpu/XpuProtoMessage$NaviRoutingInfo$Builder;
    .locals 1

    .line 18745
    sget-object v0, Landroid/car/hardware/xpu/XpuProtoMessage$NaviRoutingInfo;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuProtoMessage$NaviRoutingInfo;

    invoke-virtual {v0}, Landroid/car/hardware/xpu/XpuProtoMessage$NaviRoutingInfo;->toBuilder()Lcom/android/carsdk/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Landroid/car/hardware/xpu/XpuProtoMessage$NaviRoutingInfo$Builder;

    invoke-virtual {v0, p0}, Landroid/car/hardware/xpu/XpuProtoMessage$NaviRoutingInfo$Builder;->mergeFrom(Lcom/android/carsdk/protobuf/GeneratedMessageLite;)Lcom/android/carsdk/protobuf/GeneratedMessageLite$Builder;

    move-result-object p0

    check-cast p0, Landroid/car/hardware/xpu/XpuProtoMessage$NaviRoutingInfo$Builder;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Landroid/car/hardware/xpu/XpuProtoMessage$NaviRoutingInfo;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 18719
    sget-object v0, Landroid/car/hardware/xpu/XpuProtoMessage$NaviRoutingInfo;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuProtoMessage$NaviRoutingInfo;

    invoke-static {v0, p0}, Landroid/car/hardware/xpu/XpuProtoMessage$NaviRoutingInfo;->parseDelimitedFrom(Lcom/android/carsdk/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Landroid/car/hardware/xpu/XpuProtoMessage$NaviRoutingInfo;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/android/carsdk/protobuf/ExtensionRegistryLite;)Landroid/car/hardware/xpu/XpuProtoMessage$NaviRoutingInfo;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 18725
    sget-object v0, Landroid/car/hardware/xpu/XpuProtoMessage$NaviRoutingInfo;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuProtoMessage$NaviRoutingInfo;

    invoke-static {v0, p0, p1}, Landroid/car/hardware/xpu/XpuProtoMessage$NaviRoutingInfo;->parseDelimitedFrom(Lcom/android/carsdk/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/android/carsdk/protobuf/ExtensionRegistryLite;)Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Landroid/car/hardware/xpu/XpuProtoMessage$NaviRoutingInfo;

    return-object p0
.end method

.method public static parseFrom(Lcom/android/carsdk/protobuf/ByteString;)Landroid/car/hardware/xpu/XpuProtoMessage$NaviRoutingInfo;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/carsdk/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 18683
    sget-object v0, Landroid/car/hardware/xpu/XpuProtoMessage$NaviRoutingInfo;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuProtoMessage$NaviRoutingInfo;

    invoke-static {v0, p0}, Lcom/android/carsdk/protobuf/GeneratedMessageLite;->parseFrom(Lcom/android/carsdk/protobuf/GeneratedMessageLite;Lcom/android/carsdk/protobuf/ByteString;)Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Landroid/car/hardware/xpu/XpuProtoMessage$NaviRoutingInfo;

    return-object p0
.end method

.method public static parseFrom(Lcom/android/carsdk/protobuf/ByteString;Lcom/android/carsdk/protobuf/ExtensionRegistryLite;)Landroid/car/hardware/xpu/XpuProtoMessage$NaviRoutingInfo;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/carsdk/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 18690
    sget-object v0, Landroid/car/hardware/xpu/XpuProtoMessage$NaviRoutingInfo;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuProtoMessage$NaviRoutingInfo;

    invoke-static {v0, p0, p1}, Lcom/android/carsdk/protobuf/GeneratedMessageLite;->parseFrom(Lcom/android/carsdk/protobuf/GeneratedMessageLite;Lcom/android/carsdk/protobuf/ByteString;Lcom/android/carsdk/protobuf/ExtensionRegistryLite;)Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Landroid/car/hardware/xpu/XpuProtoMessage$NaviRoutingInfo;

    return-object p0
.end method

.method public static parseFrom(Lcom/android/carsdk/protobuf/CodedInputStream;)Landroid/car/hardware/xpu/XpuProtoMessage$NaviRoutingInfo;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 18730
    sget-object v0, Landroid/car/hardware/xpu/XpuProtoMessage$NaviRoutingInfo;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuProtoMessage$NaviRoutingInfo;

    invoke-static {v0, p0}, Lcom/android/carsdk/protobuf/GeneratedMessageLite;->parseFrom(Lcom/android/carsdk/protobuf/GeneratedMessageLite;Lcom/android/carsdk/protobuf/CodedInputStream;)Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Landroid/car/hardware/xpu/XpuProtoMessage$NaviRoutingInfo;

    return-object p0
.end method

.method public static parseFrom(Lcom/android/carsdk/protobuf/CodedInputStream;Lcom/android/carsdk/protobuf/ExtensionRegistryLite;)Landroid/car/hardware/xpu/XpuProtoMessage$NaviRoutingInfo;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 18737
    sget-object v0, Landroid/car/hardware/xpu/XpuProtoMessage$NaviRoutingInfo;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuProtoMessage$NaviRoutingInfo;

    invoke-static {v0, p0, p1}, Lcom/android/carsdk/protobuf/GeneratedMessageLite;->parseFrom(Lcom/android/carsdk/protobuf/GeneratedMessageLite;Lcom/android/carsdk/protobuf/CodedInputStream;Lcom/android/carsdk/protobuf/ExtensionRegistryLite;)Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Landroid/car/hardware/xpu/XpuProtoMessage$NaviRoutingInfo;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Landroid/car/hardware/xpu/XpuProtoMessage$NaviRoutingInfo;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 18707
    sget-object v0, Landroid/car/hardware/xpu/XpuProtoMessage$NaviRoutingInfo;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuProtoMessage$NaviRoutingInfo;

    invoke-static {v0, p0}, Lcom/android/carsdk/protobuf/GeneratedMessageLite;->parseFrom(Lcom/android/carsdk/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Landroid/car/hardware/xpu/XpuProtoMessage$NaviRoutingInfo;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/android/carsdk/protobuf/ExtensionRegistryLite;)Landroid/car/hardware/xpu/XpuProtoMessage$NaviRoutingInfo;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 18714
    sget-object v0, Landroid/car/hardware/xpu/XpuProtoMessage$NaviRoutingInfo;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuProtoMessage$NaviRoutingInfo;

    invoke-static {v0, p0, p1}, Lcom/android/carsdk/protobuf/GeneratedMessageLite;->parseFrom(Lcom/android/carsdk/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/android/carsdk/protobuf/ExtensionRegistryLite;)Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Landroid/car/hardware/xpu/XpuProtoMessage$NaviRoutingInfo;

    return-object p0
.end method

.method public static parseFrom([B)Landroid/car/hardware/xpu/XpuProtoMessage$NaviRoutingInfo;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/carsdk/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 18695
    sget-object v0, Landroid/car/hardware/xpu/XpuProtoMessage$NaviRoutingInfo;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuProtoMessage$NaviRoutingInfo;

    invoke-static {v0, p0}, Lcom/android/carsdk/protobuf/GeneratedMessageLite;->parseFrom(Lcom/android/carsdk/protobuf/GeneratedMessageLite;[B)Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Landroid/car/hardware/xpu/XpuProtoMessage$NaviRoutingInfo;

    return-object p0
.end method

.method public static parseFrom([BLcom/android/carsdk/protobuf/ExtensionRegistryLite;)Landroid/car/hardware/xpu/XpuProtoMessage$NaviRoutingInfo;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/carsdk/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 18702
    sget-object v0, Landroid/car/hardware/xpu/XpuProtoMessage$NaviRoutingInfo;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuProtoMessage$NaviRoutingInfo;

    invoke-static {v0, p0, p1}, Lcom/android/carsdk/protobuf/GeneratedMessageLite;->parseFrom(Lcom/android/carsdk/protobuf/GeneratedMessageLite;[BLcom/android/carsdk/protobuf/ExtensionRegistryLite;)Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Landroid/car/hardware/xpu/XpuProtoMessage$NaviRoutingInfo;

    return-object p0
.end method

.method public static parser()Lcom/android/carsdk/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/android/carsdk/protobuf/Parser<",
            "Landroid/car/hardware/xpu/XpuProtoMessage$NaviRoutingInfo;",
            ">;"
        }
    .end annotation

    .line 19116
    sget-object v0, Landroid/car/hardware/xpu/XpuProtoMessage$NaviRoutingInfo;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuProtoMessage$NaviRoutingInfo;

    invoke-virtual {v0}, Landroid/car/hardware/xpu/XpuProtoMessage$NaviRoutingInfo;->getParserForType()Lcom/android/carsdk/protobuf/Parser;

    move-result-object v0

    return-object v0
.end method

.method private removeV2Points(I)V
    .locals 1

    .line 18642
    invoke-direct {p0}, Landroid/car/hardware/xpu/XpuProtoMessage$NaviRoutingInfo;->ensureV2PointsIsMutable()V

    .line 18643
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$NaviRoutingInfo;->v2Points_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1}, Lcom/android/carsdk/protobuf/Internal$ProtobufList;->remove(I)Ljava/lang/Object;

    return-void
.end method

.method private setNavigationId(J)V
    .locals 0

    .line 18456
    iput-wide p1, p0, Landroid/car/hardware/xpu/XpuProtoMessage$NaviRoutingInfo;->navigationId_:J

    return-void
.end method

.method private setNavigationStatus(Landroid/car/hardware/xpu/XpuProtoMessage$NaviStatus;)V
    .locals 0

    .line 18418
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 18421
    invoke-virtual {p1}, Landroid/car/hardware/xpu/XpuProtoMessage$NaviStatus;->getNumber()I

    move-result p1

    iput p1, p0, Landroid/car/hardware/xpu/XpuProtoMessage$NaviRoutingInfo;->navigationStatus_:I

    return-void
.end method

.method private setNavigationStatusValue(I)V
    .locals 0

    .line 18407
    iput p1, p0, Landroid/car/hardware/xpu/XpuProtoMessage$NaviRoutingInfo;->navigationStatus_:I

    return-void
.end method

.method private setV2Points(ILandroid/car/hardware/xpu/XpuProtoMessage$V2_Point$Builder;)V
    .locals 1

    .line 18555
    invoke-direct {p0}, Landroid/car/hardware/xpu/XpuProtoMessage$NaviRoutingInfo;->ensureV2PointsIsMutable()V

    .line 18556
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$NaviRoutingInfo;->v2Points_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    invoke-virtual {p2}, Landroid/car/hardware/xpu/XpuProtoMessage$V2_Point$Builder;->build()Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object p2

    check-cast p2, Landroid/car/hardware/xpu/XpuProtoMessage$V2_Point;

    invoke-interface {v0, p1, p2}, Lcom/android/carsdk/protobuf/Internal$ProtobufList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private setV2Points(ILandroid/car/hardware/xpu/XpuProtoMessage$V2_Point;)V
    .locals 1

    .line 18541
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 18543
    invoke-direct {p0}, Landroid/car/hardware/xpu/XpuProtoMessage$NaviRoutingInfo;->ensureV2PointsIsMutable()V

    .line 18544
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$NaviRoutingInfo;->v2Points_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1, p2}, Lcom/android/carsdk/protobuf/Internal$ProtobufList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method protected final dynamicMethod(Lcom/android/carsdk/protobuf/GeneratedMessageLite$MethodToInvoke;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 9

    .line 19008
    sget-object v0, Landroid/car/hardware/xpu/XpuProtoMessage$1;->$SwitchMap$com$google$protobuf$GeneratedMessageLite$MethodToInvoke:[I

    invoke-virtual {p1}, Lcom/android/carsdk/protobuf/GeneratedMessageLite$MethodToInvoke;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x1

    packed-switch p1, :pswitch_data_0

    .line 19098
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1

    .line 19089
    :pswitch_0
    sget-object p1, Landroid/car/hardware/xpu/XpuProtoMessage$NaviRoutingInfo;->PARSER:Lcom/android/carsdk/protobuf/Parser;

    if-nez p1, :cond_1

    const-class p1, Landroid/car/hardware/xpu/XpuProtoMessage$NaviRoutingInfo;

    monitor-enter p1

    .line 19090
    :try_start_0
    sget-object p2, Landroid/car/hardware/xpu/XpuProtoMessage$NaviRoutingInfo;->PARSER:Lcom/android/carsdk/protobuf/Parser;

    if-nez p2, :cond_0

    .line 19091
    new-instance p2, Lcom/android/carsdk/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;

    sget-object p3, Landroid/car/hardware/xpu/XpuProtoMessage$NaviRoutingInfo;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuProtoMessage$NaviRoutingInfo;

    invoke-direct {p2, p3}, Lcom/android/carsdk/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;-><init>(Lcom/android/carsdk/protobuf/GeneratedMessageLite;)V

    sput-object p2, Landroid/car/hardware/xpu/XpuProtoMessage$NaviRoutingInfo;->PARSER:Lcom/android/carsdk/protobuf/Parser;

    .line 19093
    :cond_0
    monitor-exit p1

    goto :goto_0

    :catchall_0
    move-exception p2

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p2

    .line 19095
    :cond_1
    :goto_0
    sget-object p1, Landroid/car/hardware/xpu/XpuProtoMessage$NaviRoutingInfo;->PARSER:Lcom/android/carsdk/protobuf/Parser;

    return-object p1

    .line 19036
    :pswitch_1
    check-cast p2, Lcom/android/carsdk/protobuf/CodedInputStream;

    .line 19038
    check-cast p3, Lcom/android/carsdk/protobuf/ExtensionRegistryLite;

    :cond_2
    :goto_1
    if-nez v1, :cond_8

    .line 19043
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

    .line 19049
    invoke-virtual {p2, p1}, Lcom/android/carsdk/protobuf/CodedInputStream;->skipField(I)Z

    move-result p1

    if-nez p1, :cond_2

    goto :goto_2

    .line 19066
    :cond_3
    iget-object p1, p0, Landroid/car/hardware/xpu/XpuProtoMessage$NaviRoutingInfo;->v2Points_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    invoke-interface {p1}, Lcom/android/carsdk/protobuf/Internal$ProtobufList;->isModifiable()Z

    move-result p1

    if-nez p1, :cond_4

    .line 19067
    iget-object p1, p0, Landroid/car/hardware/xpu/XpuProtoMessage$NaviRoutingInfo;->v2Points_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    .line 19068
    invoke-static {p1}, Lcom/android/carsdk/protobuf/GeneratedMessageLite;->mutableCopy(Lcom/android/carsdk/protobuf/Internal$ProtobufList;)Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    move-result-object p1

    iput-object p1, p0, Landroid/car/hardware/xpu/XpuProtoMessage$NaviRoutingInfo;->v2Points_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    .line 19070
    :cond_4
    iget-object p1, p0, Landroid/car/hardware/xpu/XpuProtoMessage$NaviRoutingInfo;->v2Points_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    .line 19071
    invoke-static {}, Landroid/car/hardware/xpu/XpuProtoMessage$V2_Point;->parser()Lcom/android/carsdk/protobuf/Parser;

    move-result-object v0

    invoke-virtual {p2, v0, p3}, Lcom/android/carsdk/protobuf/CodedInputStream;->readMessage(Lcom/android/carsdk/protobuf/Parser;Lcom/android/carsdk/protobuf/ExtensionRegistryLite;)Lcom/android/carsdk/protobuf/MessageLite;

    move-result-object v0

    check-cast v0, Landroid/car/hardware/xpu/XpuProtoMessage$V2_Point;

    .line 19070
    invoke-interface {p1, v0}, Lcom/android/carsdk/protobuf/Internal$ProtobufList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 19062
    :cond_5
    invoke-virtual {p2}, Lcom/android/carsdk/protobuf/CodedInputStream;->readUInt64()J

    move-result-wide v3

    iput-wide v3, p0, Landroid/car/hardware/xpu/XpuProtoMessage$NaviRoutingInfo;->navigationId_:J

    goto :goto_1

    .line 19055
    :cond_6
    invoke-virtual {p2}, Lcom/android/carsdk/protobuf/CodedInputStream;->readEnum()I

    move-result p1

    .line 19057
    iput p1, p0, Landroid/car/hardware/xpu/XpuProtoMessage$NaviRoutingInfo;->navigationStatus_:I
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

    .line 19079
    :try_start_2
    new-instance p2, Ljava/lang/RuntimeException;

    new-instance p3, Lcom/android/carsdk/protobuf/InvalidProtocolBufferException;

    .line 19081
    invoke-virtual {p1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p3, p1}, Lcom/android/carsdk/protobuf/InvalidProtocolBufferException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, p0}, Lcom/android/carsdk/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/android/carsdk/protobuf/MessageLite;)Lcom/android/carsdk/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p2

    :catch_1
    move-exception p1

    .line 19077
    new-instance p2, Ljava/lang/RuntimeException;

    invoke-virtual {p1, p0}, Lcom/android/carsdk/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/android/carsdk/protobuf/MessageLite;)Lcom/android/carsdk/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 19082
    :goto_3
    throw p1

    .line 19086
    :cond_8
    :pswitch_2
    sget-object p1, Landroid/car/hardware/xpu/XpuProtoMessage$NaviRoutingInfo;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuProtoMessage$NaviRoutingInfo;

    return-object p1

    .line 19023
    :pswitch_3
    check-cast p2, Lcom/android/carsdk/protobuf/GeneratedMessageLite$Visitor;

    .line 19024
    check-cast p3, Landroid/car/hardware/xpu/XpuProtoMessage$NaviRoutingInfo;

    .line 19025
    iget p1, p0, Landroid/car/hardware/xpu/XpuProtoMessage$NaviRoutingInfo;->navigationStatus_:I

    if-eqz p1, :cond_9

    move v0, v2

    goto :goto_4

    :cond_9
    move v0, v1

    :goto_4
    iget v3, p3, Landroid/car/hardware/xpu/XpuProtoMessage$NaviRoutingInfo;->navigationStatus_:I

    if-eqz v3, :cond_a

    move v4, v2

    goto :goto_5

    :cond_a
    move v4, v1

    :goto_5
    invoke-interface {p2, v0, p1, v4, v3}, Lcom/android/carsdk/protobuf/GeneratedMessageLite$Visitor;->visitInt(ZIZI)I

    move-result p1

    iput p1, p0, Landroid/car/hardware/xpu/XpuProtoMessage$NaviRoutingInfo;->navigationStatus_:I

    .line 19026
    iget-wide v3, p0, Landroid/car/hardware/xpu/XpuProtoMessage$NaviRoutingInfo;->navigationId_:J

    const-wide/16 v5, 0x0

    cmp-long p1, v3, v5

    if-eqz p1, :cond_b

    move p1, v2

    goto :goto_6

    :cond_b
    move p1, v1

    :goto_6
    iget-wide v7, p3, Landroid/car/hardware/xpu/XpuProtoMessage$NaviRoutingInfo;->navigationId_:J

    cmp-long v0, v7, v5

    if-eqz v0, :cond_c

    move v5, v2

    goto :goto_7

    :cond_c
    move v5, v1

    :goto_7
    move-object v0, p2

    move v1, p1

    move-wide v2, v3

    move v4, v5

    move-wide v5, v7

    invoke-interface/range {v0 .. v6}, Lcom/android/carsdk/protobuf/GeneratedMessageLite$Visitor;->visitLong(ZJZJ)J

    move-result-wide v0

    iput-wide v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$NaviRoutingInfo;->navigationId_:J

    .line 19028
    iget-object p1, p0, Landroid/car/hardware/xpu/XpuProtoMessage$NaviRoutingInfo;->v2Points_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    iget-object v0, p3, Landroid/car/hardware/xpu/XpuProtoMessage$NaviRoutingInfo;->v2Points_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    invoke-interface {p2, p1, v0}, Lcom/android/carsdk/protobuf/GeneratedMessageLite$Visitor;->visitList(Lcom/android/carsdk/protobuf/Internal$ProtobufList;Lcom/android/carsdk/protobuf/Internal$ProtobufList;)Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    move-result-object p1

    iput-object p1, p0, Landroid/car/hardware/xpu/XpuProtoMessage$NaviRoutingInfo;->v2Points_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    .line 19029
    sget-object p1, Lcom/android/carsdk/protobuf/GeneratedMessageLite$MergeFromVisitor;->INSTANCE:Lcom/android/carsdk/protobuf/GeneratedMessageLite$MergeFromVisitor;

    if-ne p2, p1, :cond_d

    .line 19031
    iget p1, p0, Landroid/car/hardware/xpu/XpuProtoMessage$NaviRoutingInfo;->bitField0_:I

    iget p2, p3, Landroid/car/hardware/xpu/XpuProtoMessage$NaviRoutingInfo;->bitField0_:I

    or-int/2addr p1, p2

    iput p1, p0, Landroid/car/hardware/xpu/XpuProtoMessage$NaviRoutingInfo;->bitField0_:I

    :cond_d
    return-object p0

    .line 19020
    :pswitch_4
    new-instance p1, Landroid/car/hardware/xpu/XpuProtoMessage$NaviRoutingInfo$Builder;

    invoke-direct {p1, v0}, Landroid/car/hardware/xpu/XpuProtoMessage$NaviRoutingInfo$Builder;-><init>(Landroid/car/hardware/xpu/XpuProtoMessage$1;)V

    return-object p1

    .line 19016
    :pswitch_5
    iget-object p1, p0, Landroid/car/hardware/xpu/XpuProtoMessage$NaviRoutingInfo;->v2Points_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    invoke-interface {p1}, Lcom/android/carsdk/protobuf/Internal$ProtobufList;->makeImmutable()V

    return-object v0

    .line 19013
    :pswitch_6
    sget-object p1, Landroid/car/hardware/xpu/XpuProtoMessage$NaviRoutingInfo;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuProtoMessage$NaviRoutingInfo;

    return-object p1

    .line 19010
    :pswitch_7
    new-instance p1, Landroid/car/hardware/xpu/XpuProtoMessage$NaviRoutingInfo;

    invoke-direct {p1}, Landroid/car/hardware/xpu/XpuProtoMessage$NaviRoutingInfo;-><init>()V

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

.method public getNavigationId()J
    .locals 2

    .line 18445
    iget-wide v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$NaviRoutingInfo;->navigationId_:J

    return-wide v0
.end method

.method public getNavigationStatus()Landroid/car/hardware/xpu/XpuProtoMessage$NaviStatus;
    .locals 1

    .line 18396
    iget v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$NaviRoutingInfo;->navigationStatus_:I

    invoke-static {v0}, Landroid/car/hardware/xpu/XpuProtoMessage$NaviStatus;->forNumber(I)Landroid/car/hardware/xpu/XpuProtoMessage$NaviStatus;

    move-result-object v0

    if-nez v0, :cond_0

    .line 18397
    sget-object v0, Landroid/car/hardware/xpu/XpuProtoMessage$NaviStatus;->UNRECOGNIZED:Landroid/car/hardware/xpu/XpuProtoMessage$NaviStatus;

    :cond_0
    return-object v0
.end method

.method public getNavigationStatusValue()I
    .locals 1

    .line 18386
    iget v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$NaviRoutingInfo;->navigationStatus_:I

    return v0
.end method

.method public getSerializedSize()I
    .locals 7

    .line 18660
    iget v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$NaviRoutingInfo;->memoizedSerializedSize:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    return v0

    .line 18664
    :cond_0
    iget v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$NaviRoutingInfo;->navigationStatus_:I

    sget-object v1, Landroid/car/hardware/xpu/XpuProtoMessage$NaviStatus;->NAVI_STATUS_INVALID:Landroid/car/hardware/xpu/XpuProtoMessage$NaviStatus;

    invoke-virtual {v1}, Landroid/car/hardware/xpu/XpuProtoMessage$NaviStatus;->getNumber()I

    move-result v1

    const/4 v2, 0x0

    if-eq v0, v1, :cond_1

    .line 18665
    iget v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$NaviRoutingInfo;->navigationStatus_:I

    const/4 v1, 0x1

    .line 18666
    invoke-static {v1, v0}, Lcom/android/carsdk/protobuf/CodedOutputStream;->computeEnumSize(II)I

    move-result v0

    add-int/2addr v0, v2

    goto :goto_0

    :cond_1
    move v0, v2

    .line 18668
    :goto_0
    iget-wide v3, p0, Landroid/car/hardware/xpu/XpuProtoMessage$NaviRoutingInfo;->navigationId_:J

    const-wide/16 v5, 0x0

    cmp-long v1, v3, v5

    if-eqz v1, :cond_2

    const/4 v1, 0x2

    .line 18670
    invoke-static {v1, v3, v4}, Lcom/android/carsdk/protobuf/CodedOutputStream;->computeUInt64Size(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 18672
    :cond_2
    :goto_1
    iget-object v1, p0, Landroid/car/hardware/xpu/XpuProtoMessage$NaviRoutingInfo;->v2Points_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    invoke-interface {v1}, Lcom/android/carsdk/protobuf/Internal$ProtobufList;->size()I

    move-result v1

    if-ge v2, v1, :cond_3

    const/4 v1, 0x3

    .line 18673
    iget-object v3, p0, Landroid/car/hardware/xpu/XpuProtoMessage$NaviRoutingInfo;->v2Points_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    .line 18674
    invoke-interface {v3, v2}, Lcom/android/carsdk/protobuf/Internal$ProtobufList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/carsdk/protobuf/MessageLite;

    invoke-static {v1, v3}, Lcom/android/carsdk/protobuf/CodedOutputStream;->computeMessageSize(ILcom/android/carsdk/protobuf/MessageLite;)I

    move-result v1

    add-int/2addr v0, v1

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 18676
    :cond_3
    iput v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$NaviRoutingInfo;->memoizedSerializedSize:I

    return v0
.end method

.method public getV2Points(I)Landroid/car/hardware/xpu/XpuProtoMessage$V2_Point;
    .locals 1

    .line 18511
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$NaviRoutingInfo;->v2Points_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1}, Lcom/android/carsdk/protobuf/Internal$ProtobufList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/car/hardware/xpu/XpuProtoMessage$V2_Point;

    return-object p1
.end method

.method public getV2PointsCount()I
    .locals 1

    .line 18501
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$NaviRoutingInfo;->v2Points_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    invoke-interface {v0}, Lcom/android/carsdk/protobuf/Internal$ProtobufList;->size()I

    move-result v0

    return v0
.end method

.method public getV2PointsList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/car/hardware/xpu/XpuProtoMessage$V2_Point;",
            ">;"
        }
    .end annotation

    .line 18480
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$NaviRoutingInfo;->v2Points_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    return-object v0
.end method

.method public getV2PointsOrBuilder(I)Landroid/car/hardware/xpu/XpuProtoMessage$V2_PointOrBuilder;
    .locals 1

    .line 18522
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$NaviRoutingInfo;->v2Points_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1}, Lcom/android/carsdk/protobuf/Internal$ProtobufList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/car/hardware/xpu/XpuProtoMessage$V2_PointOrBuilder;

    return-object p1
.end method

.method public getV2PointsOrBuilderList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "+",
            "Landroid/car/hardware/xpu/XpuProtoMessage$V2_PointOrBuilder;",
            ">;"
        }
    .end annotation

    .line 18491
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$NaviRoutingInfo;->v2Points_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    return-object v0
.end method

.method public writeTo(Lcom/android/carsdk/protobuf/CodedOutputStream;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 18648
    iget v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$NaviRoutingInfo;->navigationStatus_:I

    sget-object v1, Landroid/car/hardware/xpu/XpuProtoMessage$NaviStatus;->NAVI_STATUS_INVALID:Landroid/car/hardware/xpu/XpuProtoMessage$NaviStatus;

    invoke-virtual {v1}, Landroid/car/hardware/xpu/XpuProtoMessage$NaviStatus;->getNumber()I

    move-result v1

    if-eq v0, v1, :cond_0

    .line 18649
    iget v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$NaviRoutingInfo;->navigationStatus_:I

    const/4 v1, 0x1

    invoke-virtual {p1, v1, v0}, Lcom/android/carsdk/protobuf/CodedOutputStream;->writeEnum(II)V

    .line 18651
    :cond_0
    iget-wide v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$NaviRoutingInfo;->navigationId_:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-eqz v2, :cond_1

    const/4 v2, 0x2

    .line 18652
    invoke-virtual {p1, v2, v0, v1}, Lcom/android/carsdk/protobuf/CodedOutputStream;->writeUInt64(IJ)V

    :cond_1
    const/4 v0, 0x0

    .line 18654
    :goto_0
    iget-object v1, p0, Landroid/car/hardware/xpu/XpuProtoMessage$NaviRoutingInfo;->v2Points_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    invoke-interface {v1}, Lcom/android/carsdk/protobuf/Internal$ProtobufList;->size()I

    move-result v1

    if-ge v0, v1, :cond_2

    const/4 v1, 0x3

    .line 18655
    iget-object v2, p0, Landroid/car/hardware/xpu/XpuProtoMessage$NaviRoutingInfo;->v2Points_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    invoke-interface {v2, v0}, Lcom/android/carsdk/protobuf/Internal$ProtobufList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/carsdk/protobuf/MessageLite;

    invoke-virtual {p1, v1, v2}, Lcom/android/carsdk/protobuf/CodedOutputStream;->writeMessage(ILcom/android/carsdk/protobuf/MessageLite;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method
