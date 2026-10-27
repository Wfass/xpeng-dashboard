.class public final Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FngpXpuCduRouteCmd;
.super Lcom/android/carsdk/protobuf/GeneratedMessageLite;
.source "XpuFNgpRouteMessage.java"

# interfaces
.implements Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FngpXpuCduRouteCmdOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/car/hardware/xpu/XpuFNgpRouteMessage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "FngpXpuCduRouteCmd"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FngpXpuCduRouteCmd$Builder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/carsdk/protobuf/GeneratedMessageLite<",
        "Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FngpXpuCduRouteCmd;",
        "Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FngpXpuCduRouteCmd$Builder;",
        ">;",
        "Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FngpXpuCduRouteCmdOrBuilder;"
    }
.end annotation


# static fields
.field public static final DATA_FIELD_NUMBER:I = 0x5

.field private static final DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FngpXpuCduRouteCmd;

.field public static final END_LONLAT_POINT_FIELD_NUMBER:I = 0x4

.field public static final FNGP_ROUTE_CMD_FIELD_NUMBER:I = 0x2

.field public static final NAVIGATION_ID_FIELD_NUMBER:I = 0x6

.field private static volatile PARSER:Lcom/android/carsdk/protobuf/Parser; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/carsdk/protobuf/Parser<",
            "Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FngpXpuCduRouteCmd;",
            ">;"
        }
    .end annotation
.end field

.field public static final ROUTE_ID_FIELD_NUMBER:I = 0x3

.field public static final SEQUENCE_NUMBER_FIELD_NUMBER:I = 0x1

.field public static final TIMESTAMP_FIELD_NUMBER:I = 0x7


# instance fields
.field private data_:Ljava/lang/String;

.field private endLonlatPoint_:Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Point;

.field private fngpRouteCmd_:I

.field private navigationId_:J

.field private routeId_:J

.field private sequenceNumber_:I

.field private timestamp_:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 20373
    new-instance v0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FngpXpuCduRouteCmd;

    invoke-direct {v0}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FngpXpuCduRouteCmd;-><init>()V

    sput-object v0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FngpXpuCduRouteCmd;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FngpXpuCduRouteCmd;

    .line 20374
    invoke-virtual {v0}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FngpXpuCduRouteCmd;->makeImmutable()V

    return-void
.end method

.method private constructor <init>()V
    .locals 3

    .line 19417
    invoke-direct {p0}, Lcom/android/carsdk/protobuf/GeneratedMessageLite;-><init>()V

    const/4 v0, 0x0

    .line 19418
    iput v0, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FngpXpuCduRouteCmd;->sequenceNumber_:I

    .line 19419
    iput v0, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FngpXpuCduRouteCmd;->fngpRouteCmd_:I

    const-wide/16 v0, 0x0

    .line 19420
    iput-wide v0, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FngpXpuCduRouteCmd;->routeId_:J

    const-string v2, ""

    .line 19421
    iput-object v2, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FngpXpuCduRouteCmd;->data_:Ljava/lang/String;

    .line 19422
    iput-wide v0, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FngpXpuCduRouteCmd;->navigationId_:J

    .line 19423
    iput-wide v0, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FngpXpuCduRouteCmd;->timestamp_:J

    return-void
.end method

.method static synthetic access$33000()Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FngpXpuCduRouteCmd;
    .locals 1

    .line 19412
    sget-object v0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FngpXpuCduRouteCmd;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FngpXpuCduRouteCmd;

    return-object v0
.end method

.method static synthetic access$33100(Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FngpXpuCduRouteCmd;I)V
    .locals 0

    .line 19412
    invoke-direct {p0, p1}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FngpXpuCduRouteCmd;->setSequenceNumber(I)V

    return-void
.end method

.method static synthetic access$33200(Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FngpXpuCduRouteCmd;)V
    .locals 0

    .line 19412
    invoke-direct {p0}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FngpXpuCduRouteCmd;->clearSequenceNumber()V

    return-void
.end method

.method static synthetic access$33300(Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FngpXpuCduRouteCmd;I)V
    .locals 0

    .line 19412
    invoke-direct {p0, p1}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FngpXpuCduRouteCmd;->setFngpRouteCmdValue(I)V

    return-void
.end method

.method static synthetic access$33400(Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FngpXpuCduRouteCmd;Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FngpXpuCduRouteCmdType;)V
    .locals 0

    .line 19412
    invoke-direct {p0, p1}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FngpXpuCduRouteCmd;->setFngpRouteCmd(Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FngpXpuCduRouteCmdType;)V

    return-void
.end method

.method static synthetic access$33500(Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FngpXpuCduRouteCmd;)V
    .locals 0

    .line 19412
    invoke-direct {p0}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FngpXpuCduRouteCmd;->clearFngpRouteCmd()V

    return-void
.end method

.method static synthetic access$33600(Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FngpXpuCduRouteCmd;J)V
    .locals 0

    .line 19412
    invoke-direct {p0, p1, p2}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FngpXpuCduRouteCmd;->setRouteId(J)V

    return-void
.end method

.method static synthetic access$33700(Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FngpXpuCduRouteCmd;)V
    .locals 0

    .line 19412
    invoke-direct {p0}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FngpXpuCduRouteCmd;->clearRouteId()V

    return-void
.end method

.method static synthetic access$33800(Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FngpXpuCduRouteCmd;Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Point;)V
    .locals 0

    .line 19412
    invoke-direct {p0, p1}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FngpXpuCduRouteCmd;->setEndLonlatPoint(Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Point;)V

    return-void
.end method

.method static synthetic access$33900(Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FngpXpuCduRouteCmd;Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Point$Builder;)V
    .locals 0

    .line 19412
    invoke-direct {p0, p1}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FngpXpuCduRouteCmd;->setEndLonlatPoint(Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Point$Builder;)V

    return-void
.end method

.method static synthetic access$34000(Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FngpXpuCduRouteCmd;Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Point;)V
    .locals 0

    .line 19412
    invoke-direct {p0, p1}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FngpXpuCduRouteCmd;->mergeEndLonlatPoint(Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Point;)V

    return-void
.end method

.method static synthetic access$34100(Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FngpXpuCduRouteCmd;)V
    .locals 0

    .line 19412
    invoke-direct {p0}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FngpXpuCduRouteCmd;->clearEndLonlatPoint()V

    return-void
.end method

.method static synthetic access$34200(Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FngpXpuCduRouteCmd;Ljava/lang/String;)V
    .locals 0

    .line 19412
    invoke-direct {p0, p1}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FngpXpuCduRouteCmd;->setData(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$34300(Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FngpXpuCduRouteCmd;)V
    .locals 0

    .line 19412
    invoke-direct {p0}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FngpXpuCduRouteCmd;->clearData()V

    return-void
.end method

.method static synthetic access$34400(Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FngpXpuCduRouteCmd;Lcom/android/carsdk/protobuf/ByteString;)V
    .locals 0

    .line 19412
    invoke-direct {p0, p1}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FngpXpuCduRouteCmd;->setDataBytes(Lcom/android/carsdk/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$34500(Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FngpXpuCduRouteCmd;J)V
    .locals 0

    .line 19412
    invoke-direct {p0, p1, p2}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FngpXpuCduRouteCmd;->setNavigationId(J)V

    return-void
.end method

.method static synthetic access$34600(Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FngpXpuCduRouteCmd;)V
    .locals 0

    .line 19412
    invoke-direct {p0}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FngpXpuCduRouteCmd;->clearNavigationId()V

    return-void
.end method

.method static synthetic access$34700(Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FngpXpuCduRouteCmd;J)V
    .locals 0

    .line 19412
    invoke-direct {p0, p1, p2}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FngpXpuCduRouteCmd;->setTimestamp(J)V

    return-void
.end method

.method static synthetic access$34800(Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FngpXpuCduRouteCmd;)V
    .locals 0

    .line 19412
    invoke-direct {p0}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FngpXpuCduRouteCmd;->clearTimestamp()V

    return-void
.end method

.method private clearData()V
    .locals 1

    .line 19677
    invoke-static {}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FngpXpuCduRouteCmd;->getDefaultInstance()Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FngpXpuCduRouteCmd;

    move-result-object v0

    invoke-virtual {v0}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FngpXpuCduRouteCmd;->getData()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FngpXpuCduRouteCmd;->data_:Ljava/lang/String;

    return-void
.end method

.method private clearEndLonlatPoint()V
    .locals 1

    const/4 v0, 0x0

    .line 19626
    iput-object v0, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FngpXpuCduRouteCmd;->endLonlatPoint_:Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Point;

    return-void
.end method

.method private clearFngpRouteCmd()V
    .locals 1

    const/4 v0, 0x0

    .line 19516
    iput v0, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FngpXpuCduRouteCmd;->fngpRouteCmd_:I

    return-void
.end method

.method private clearNavigationId()V
    .locals 2

    const-wide/16 v0, 0x0

    .line 19728
    iput-wide v0, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FngpXpuCduRouteCmd;->navigationId_:J

    return-void
.end method

.method private clearRouteId()V
    .locals 2

    const-wide/16 v0, 0x0

    .line 19551
    iput-wide v0, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FngpXpuCduRouteCmd;->routeId_:J

    return-void
.end method

.method private clearSequenceNumber()V
    .locals 1

    const/4 v0, 0x0

    .line 19457
    iput v0, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FngpXpuCduRouteCmd;->sequenceNumber_:I

    return-void
.end method

.method private clearTimestamp()V
    .locals 2

    const-wide/16 v0, 0x0

    .line 19763
    iput-wide v0, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FngpXpuCduRouteCmd;->timestamp_:J

    return-void
.end method

.method public static getDefaultInstance()Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FngpXpuCduRouteCmd;
    .locals 1

    .line 20378
    sget-object v0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FngpXpuCduRouteCmd;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FngpXpuCduRouteCmd;

    return-object v0
.end method

.method private mergeEndLonlatPoint(Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Point;)V
    .locals 2

    .line 19610
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FngpXpuCduRouteCmd;->endLonlatPoint_:Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Point;

    if-eqz v0, :cond_0

    .line 19611
    invoke-static {}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Point;->getDefaultInstance()Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Point;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 19612
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FngpXpuCduRouteCmd;->endLonlatPoint_:Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Point;

    .line 19613
    invoke-static {v0}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Point;->newBuilder(Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Point;)Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Point$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Point$Builder;->mergeFrom(Lcom/android/carsdk/protobuf/GeneratedMessageLite;)Lcom/android/carsdk/protobuf/GeneratedMessageLite$Builder;

    move-result-object p1

    check-cast p1, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Point$Builder;

    invoke-virtual {p1}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Point$Builder;->buildPartial()Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Point;

    iput-object p1, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FngpXpuCduRouteCmd;->endLonlatPoint_:Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Point;

    goto :goto_0

    .line 19615
    :cond_0
    iput-object p1, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FngpXpuCduRouteCmd;->endLonlatPoint_:Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Point;

    :goto_0
    return-void
.end method

.method public static newBuilder()Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FngpXpuCduRouteCmd$Builder;
    .locals 1

    .line 19890
    sget-object v0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FngpXpuCduRouteCmd;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FngpXpuCduRouteCmd;

    invoke-virtual {v0}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FngpXpuCduRouteCmd;->toBuilder()Lcom/android/carsdk/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FngpXpuCduRouteCmd$Builder;

    return-object v0
.end method

.method public static newBuilder(Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FngpXpuCduRouteCmd;)Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FngpXpuCduRouteCmd$Builder;
    .locals 1

    .line 19893
    sget-object v0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FngpXpuCduRouteCmd;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FngpXpuCduRouteCmd;

    invoke-virtual {v0}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FngpXpuCduRouteCmd;->toBuilder()Lcom/android/carsdk/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FngpXpuCduRouteCmd$Builder;

    invoke-virtual {v0, p0}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FngpXpuCduRouteCmd$Builder;->mergeFrom(Lcom/android/carsdk/protobuf/GeneratedMessageLite;)Lcom/android/carsdk/protobuf/GeneratedMessageLite$Builder;

    move-result-object p0

    check-cast p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FngpXpuCduRouteCmd$Builder;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FngpXpuCduRouteCmd;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 19867
    sget-object v0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FngpXpuCduRouteCmd;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FngpXpuCduRouteCmd;

    invoke-static {v0, p0}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FngpXpuCduRouteCmd;->parseDelimitedFrom(Lcom/android/carsdk/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FngpXpuCduRouteCmd;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/android/carsdk/protobuf/ExtensionRegistryLite;)Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FngpXpuCduRouteCmd;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 19873
    sget-object v0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FngpXpuCduRouteCmd;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FngpXpuCduRouteCmd;

    invoke-static {v0, p0, p1}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FngpXpuCduRouteCmd;->parseDelimitedFrom(Lcom/android/carsdk/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/android/carsdk/protobuf/ExtensionRegistryLite;)Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FngpXpuCduRouteCmd;

    return-object p0
.end method

.method public static parseFrom(Lcom/android/carsdk/protobuf/ByteString;)Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FngpXpuCduRouteCmd;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/carsdk/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 19831
    sget-object v0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FngpXpuCduRouteCmd;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FngpXpuCduRouteCmd;

    invoke-static {v0, p0}, Lcom/android/carsdk/protobuf/GeneratedMessageLite;->parseFrom(Lcom/android/carsdk/protobuf/GeneratedMessageLite;Lcom/android/carsdk/protobuf/ByteString;)Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FngpXpuCduRouteCmd;

    return-object p0
.end method

.method public static parseFrom(Lcom/android/carsdk/protobuf/ByteString;Lcom/android/carsdk/protobuf/ExtensionRegistryLite;)Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FngpXpuCduRouteCmd;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/carsdk/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 19838
    sget-object v0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FngpXpuCduRouteCmd;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FngpXpuCduRouteCmd;

    invoke-static {v0, p0, p1}, Lcom/android/carsdk/protobuf/GeneratedMessageLite;->parseFrom(Lcom/android/carsdk/protobuf/GeneratedMessageLite;Lcom/android/carsdk/protobuf/ByteString;Lcom/android/carsdk/protobuf/ExtensionRegistryLite;)Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FngpXpuCduRouteCmd;

    return-object p0
.end method

.method public static parseFrom(Lcom/android/carsdk/protobuf/CodedInputStream;)Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FngpXpuCduRouteCmd;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 19878
    sget-object v0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FngpXpuCduRouteCmd;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FngpXpuCduRouteCmd;

    invoke-static {v0, p0}, Lcom/android/carsdk/protobuf/GeneratedMessageLite;->parseFrom(Lcom/android/carsdk/protobuf/GeneratedMessageLite;Lcom/android/carsdk/protobuf/CodedInputStream;)Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FngpXpuCduRouteCmd;

    return-object p0
.end method

.method public static parseFrom(Lcom/android/carsdk/protobuf/CodedInputStream;Lcom/android/carsdk/protobuf/ExtensionRegistryLite;)Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FngpXpuCduRouteCmd;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 19885
    sget-object v0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FngpXpuCduRouteCmd;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FngpXpuCduRouteCmd;

    invoke-static {v0, p0, p1}, Lcom/android/carsdk/protobuf/GeneratedMessageLite;->parseFrom(Lcom/android/carsdk/protobuf/GeneratedMessageLite;Lcom/android/carsdk/protobuf/CodedInputStream;Lcom/android/carsdk/protobuf/ExtensionRegistryLite;)Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FngpXpuCduRouteCmd;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FngpXpuCduRouteCmd;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 19855
    sget-object v0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FngpXpuCduRouteCmd;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FngpXpuCduRouteCmd;

    invoke-static {v0, p0}, Lcom/android/carsdk/protobuf/GeneratedMessageLite;->parseFrom(Lcom/android/carsdk/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FngpXpuCduRouteCmd;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/android/carsdk/protobuf/ExtensionRegistryLite;)Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FngpXpuCduRouteCmd;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 19862
    sget-object v0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FngpXpuCduRouteCmd;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FngpXpuCduRouteCmd;

    invoke-static {v0, p0, p1}, Lcom/android/carsdk/protobuf/GeneratedMessageLite;->parseFrom(Lcom/android/carsdk/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/android/carsdk/protobuf/ExtensionRegistryLite;)Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FngpXpuCduRouteCmd;

    return-object p0
.end method

.method public static parseFrom([B)Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FngpXpuCduRouteCmd;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/carsdk/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 19843
    sget-object v0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FngpXpuCduRouteCmd;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FngpXpuCduRouteCmd;

    invoke-static {v0, p0}, Lcom/android/carsdk/protobuf/GeneratedMessageLite;->parseFrom(Lcom/android/carsdk/protobuf/GeneratedMessageLite;[B)Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FngpXpuCduRouteCmd;

    return-object p0
.end method

.method public static parseFrom([BLcom/android/carsdk/protobuf/ExtensionRegistryLite;)Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FngpXpuCduRouteCmd;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/carsdk/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 19850
    sget-object v0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FngpXpuCduRouteCmd;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FngpXpuCduRouteCmd;

    invoke-static {v0, p0, p1}, Lcom/android/carsdk/protobuf/GeneratedMessageLite;->parseFrom(Lcom/android/carsdk/protobuf/GeneratedMessageLite;[BLcom/android/carsdk/protobuf/ExtensionRegistryLite;)Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FngpXpuCduRouteCmd;

    return-object p0
.end method

.method public static parser()Lcom/android/carsdk/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/android/carsdk/protobuf/Parser<",
            "Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FngpXpuCduRouteCmd;",
            ">;"
        }
    .end annotation

    .line 20384
    sget-object v0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FngpXpuCduRouteCmd;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FngpXpuCduRouteCmd;

    invoke-virtual {v0}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FngpXpuCduRouteCmd;->getParserForType()Lcom/android/carsdk/protobuf/Parser;

    move-result-object v0

    return-object v0
.end method

.method private setData(Ljava/lang/String;)V
    .locals 0

    .line 19663
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 19666
    iput-object p1, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FngpXpuCduRouteCmd;->data_:Ljava/lang/String;

    return-void
.end method

.method private setDataBytes(Lcom/android/carsdk/protobuf/ByteString;)V
    .locals 0

    .line 19689
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 19691
    invoke-static {p1}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FngpXpuCduRouteCmd;->checkByteStringIsUtf8(Lcom/android/carsdk/protobuf/ByteString;)V

    .line 19693
    invoke-virtual {p1}, Lcom/android/carsdk/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FngpXpuCduRouteCmd;->data_:Ljava/lang/String;

    return-void
.end method

.method private setEndLonlatPoint(Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Point$Builder;)V
    .locals 0

    .line 19599
    invoke-virtual {p1}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Point$Builder;->build()Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Point;

    iput-object p1, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FngpXpuCduRouteCmd;->endLonlatPoint_:Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Point;

    return-void
.end method

.method private setEndLonlatPoint(Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Point;)V
    .locals 0

    .line 19585
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 19587
    iput-object p1, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FngpXpuCduRouteCmd;->endLonlatPoint_:Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Point;

    return-void
.end method

.method private setFngpRouteCmd(Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FngpXpuCduRouteCmdType;)V
    .locals 0

    .line 19502
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 19505
    invoke-virtual {p1}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FngpXpuCduRouteCmdType;->getNumber()I

    move-result p1

    iput p1, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FngpXpuCduRouteCmd;->fngpRouteCmd_:I

    return-void
.end method

.method private setFngpRouteCmdValue(I)V
    .locals 0

    .line 19491
    iput p1, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FngpXpuCduRouteCmd;->fngpRouteCmd_:I

    return-void
.end method

.method private setNavigationId(J)V
    .locals 0

    .line 19717
    iput-wide p1, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FngpXpuCduRouteCmd;->navigationId_:J

    return-void
.end method

.method private setRouteId(J)V
    .locals 0

    .line 19540
    iput-wide p1, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FngpXpuCduRouteCmd;->routeId_:J

    return-void
.end method

.method private setSequenceNumber(I)V
    .locals 0

    .line 19446
    iput p1, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FngpXpuCduRouteCmd;->sequenceNumber_:I

    return-void
.end method

.method private setTimestamp(J)V
    .locals 0

    .line 19752
    iput-wide p1, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FngpXpuCduRouteCmd;->timestamp_:J

    return-void
.end method


# virtual methods
.method protected final dynamicMethod(Lcom/android/carsdk/protobuf/GeneratedMessageLite$MethodToInvoke;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 10

    .line 20245
    sget-object v0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$1;->$SwitchMap$com$google$protobuf$GeneratedMessageLite$MethodToInvoke:[I

    invoke-virtual {p1}, Lcom/android/carsdk/protobuf/GeneratedMessageLite$MethodToInvoke;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x1

    packed-switch p1, :pswitch_data_0

    .line 20366
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1

    .line 20357
    :pswitch_0
    sget-object p1, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FngpXpuCduRouteCmd;->PARSER:Lcom/android/carsdk/protobuf/Parser;

    if-nez p1, :cond_1

    const-class p1, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FngpXpuCduRouteCmd;

    monitor-enter p1

    .line 20358
    :try_start_0
    sget-object p2, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FngpXpuCduRouteCmd;->PARSER:Lcom/android/carsdk/protobuf/Parser;

    if-nez p2, :cond_0

    .line 20359
    new-instance p2, Lcom/android/carsdk/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;

    sget-object p3, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FngpXpuCduRouteCmd;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FngpXpuCduRouteCmd;

    invoke-direct {p2, p3}, Lcom/android/carsdk/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;-><init>(Lcom/android/carsdk/protobuf/GeneratedMessageLite;)V

    sput-object p2, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FngpXpuCduRouteCmd;->PARSER:Lcom/android/carsdk/protobuf/Parser;

    .line 20361
    :cond_0
    monitor-exit p1

    goto :goto_0

    :catchall_0
    move-exception p2

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p2

    .line 20363
    :cond_1
    :goto_0
    sget-object p1, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FngpXpuCduRouteCmd;->PARSER:Lcom/android/carsdk/protobuf/Parser;

    return-object p1

    .line 20279
    :pswitch_1
    check-cast p2, Lcom/android/carsdk/protobuf/CodedInputStream;

    .line 20281
    check-cast p3, Lcom/android/carsdk/protobuf/ExtensionRegistryLite;

    :cond_2
    :goto_1
    if-nez v1, :cond_c

    .line 20286
    :try_start_1
    invoke-virtual {p2}, Lcom/android/carsdk/protobuf/CodedInputStream;->readTag()I

    move-result p1

    if-eqz p1, :cond_b

    const/16 v3, 0x8

    if-eq p1, v3, :cond_a

    const/16 v3, 0x10

    if-eq p1, v3, :cond_9

    const/16 v3, 0x18

    if-eq p1, v3, :cond_8

    const/16 v3, 0x22

    if-eq p1, v3, :cond_6

    const/16 v3, 0x2a

    if-eq p1, v3, :cond_5

    const/16 v3, 0x30

    if-eq p1, v3, :cond_4

    const/16 v3, 0x38

    if-eq p1, v3, :cond_3

    .line 20292
    invoke-virtual {p2, p1}, Lcom/android/carsdk/protobuf/CodedInputStream;->skipField(I)Z

    move-result p1

    if-nez p1, :cond_2

    goto :goto_3

    .line 20339
    :cond_3
    invoke-virtual {p2}, Lcom/android/carsdk/protobuf/CodedInputStream;->readInt64()J

    move-result-wide v3

    iput-wide v3, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FngpXpuCduRouteCmd;->timestamp_:J

    goto :goto_1

    .line 20334
    :cond_4
    invoke-virtual {p2}, Lcom/android/carsdk/protobuf/CodedInputStream;->readUInt64()J

    move-result-wide v3

    iput-wide v3, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FngpXpuCduRouteCmd;->navigationId_:J

    goto :goto_1

    .line 20327
    :cond_5
    invoke-virtual {p2}, Lcom/android/carsdk/protobuf/CodedInputStream;->readStringRequireUtf8()Ljava/lang/String;

    move-result-object p1

    .line 20329
    iput-object p1, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FngpXpuCduRouteCmd;->data_:Ljava/lang/String;

    goto :goto_1

    .line 20315
    :cond_6
    iget-object p1, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FngpXpuCduRouteCmd;->endLonlatPoint_:Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Point;

    if-eqz p1, :cond_7

    .line 20316
    invoke-virtual {p1}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Point;->toBuilder()Lcom/android/carsdk/protobuf/GeneratedMessageLite$Builder;

    move-result-object p1

    check-cast p1, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Point$Builder;

    goto :goto_2

    :cond_7
    move-object p1, v0

    .line 20318
    :goto_2
    invoke-static {}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Point;->parser()Lcom/android/carsdk/protobuf/Parser;

    move-result-object v3

    invoke-virtual {p2, v3, p3}, Lcom/android/carsdk/protobuf/CodedInputStream;->readMessage(Lcom/android/carsdk/protobuf/Parser;Lcom/android/carsdk/protobuf/ExtensionRegistryLite;)Lcom/android/carsdk/protobuf/MessageLite;

    move-result-object v3

    check-cast v3, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Point;

    iput-object v3, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FngpXpuCduRouteCmd;->endLonlatPoint_:Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Point;

    if-eqz p1, :cond_2

    .line 20320
    invoke-virtual {p1, v3}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Point$Builder;->mergeFrom(Lcom/android/carsdk/protobuf/GeneratedMessageLite;)Lcom/android/carsdk/protobuf/GeneratedMessageLite$Builder;

    .line 20321
    invoke-virtual {p1}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Point$Builder;->buildPartial()Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Point;

    iput-object p1, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FngpXpuCduRouteCmd;->endLonlatPoint_:Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Point;

    goto :goto_1

    .line 20310
    :cond_8
    invoke-virtual {p2}, Lcom/android/carsdk/protobuf/CodedInputStream;->readInt64()J

    move-result-wide v3

    iput-wide v3, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FngpXpuCduRouteCmd;->routeId_:J

    goto :goto_1

    .line 20303
    :cond_9
    invoke-virtual {p2}, Lcom/android/carsdk/protobuf/CodedInputStream;->readEnum()I

    move-result p1

    .line 20305
    iput p1, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FngpXpuCduRouteCmd;->fngpRouteCmd_:I

    goto :goto_1

    .line 20299
    :cond_a
    invoke-virtual {p2}, Lcom/android/carsdk/protobuf/CodedInputStream;->readUInt32()I

    move-result p1

    iput p1, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FngpXpuCduRouteCmd;->sequenceNumber_:I
    :try_end_1
    .catch Lcom/android/carsdk/protobuf/InvalidProtocolBufferException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    :cond_b
    :goto_3
    move v1, v2

    goto :goto_1

    :catchall_1
    move-exception p1

    goto :goto_4

    :catch_0
    move-exception p1

    .line 20347
    :try_start_2
    new-instance p2, Ljava/lang/RuntimeException;

    new-instance p3, Lcom/android/carsdk/protobuf/InvalidProtocolBufferException;

    .line 20349
    invoke-virtual {p1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p3, p1}, Lcom/android/carsdk/protobuf/InvalidProtocolBufferException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, p0}, Lcom/android/carsdk/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/android/carsdk/protobuf/MessageLite;)Lcom/android/carsdk/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p2

    :catch_1
    move-exception p1

    .line 20345
    new-instance p2, Ljava/lang/RuntimeException;

    invoke-virtual {p1, p0}, Lcom/android/carsdk/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/android/carsdk/protobuf/MessageLite;)Lcom/android/carsdk/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 20350
    :goto_4
    throw p1

    .line 20354
    :cond_c
    :pswitch_2
    sget-object p1, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FngpXpuCduRouteCmd;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FngpXpuCduRouteCmd;

    return-object p1

    .line 20259
    :pswitch_3
    move-object v0, p2

    check-cast v0, Lcom/android/carsdk/protobuf/GeneratedMessageLite$Visitor;

    .line 20260
    check-cast p3, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FngpXpuCduRouteCmd;

    .line 20261
    iget p1, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FngpXpuCduRouteCmd;->sequenceNumber_:I

    if-eqz p1, :cond_d

    move p2, v2

    goto :goto_5

    :cond_d
    move p2, v1

    :goto_5
    iget v3, p3, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FngpXpuCduRouteCmd;->sequenceNumber_:I

    if-eqz v3, :cond_e

    move v4, v2

    goto :goto_6

    :cond_e
    move v4, v1

    :goto_6
    invoke-interface {v0, p2, p1, v4, v3}, Lcom/android/carsdk/protobuf/GeneratedMessageLite$Visitor;->visitInt(ZIZI)I

    move-result p1

    iput p1, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FngpXpuCduRouteCmd;->sequenceNumber_:I

    .line 20263
    iget p1, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FngpXpuCduRouteCmd;->fngpRouteCmd_:I

    if-eqz p1, :cond_f

    move p2, v2

    goto :goto_7

    :cond_f
    move p2, v1

    :goto_7
    iget v3, p3, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FngpXpuCduRouteCmd;->fngpRouteCmd_:I

    if-eqz v3, :cond_10

    move v4, v2

    goto :goto_8

    :cond_10
    move v4, v1

    :goto_8
    invoke-interface {v0, p2, p1, v4, v3}, Lcom/android/carsdk/protobuf/GeneratedMessageLite$Visitor;->visitInt(ZIZI)I

    move-result p1

    iput p1, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FngpXpuCduRouteCmd;->fngpRouteCmd_:I

    .line 20264
    iget-wide v5, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FngpXpuCduRouteCmd;->routeId_:J

    const-wide/16 p1, 0x0

    cmp-long v3, v5, p1

    if-eqz v3, :cond_11

    move v4, v2

    goto :goto_9

    :cond_11
    move v4, v1

    :goto_9
    iget-wide v8, p3, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FngpXpuCduRouteCmd;->routeId_:J

    cmp-long v3, v8, p1

    if-eqz v3, :cond_12

    move v7, v2

    goto :goto_a

    :cond_12
    move v7, v1

    :goto_a
    move-object v3, v0

    invoke-interface/range {v3 .. v9}, Lcom/android/carsdk/protobuf/GeneratedMessageLite$Visitor;->visitLong(ZJZJ)J

    move-result-wide v3

    iput-wide v3, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FngpXpuCduRouteCmd;->routeId_:J

    .line 20266
    iget-object v3, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FngpXpuCduRouteCmd;->endLonlatPoint_:Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Point;

    iget-object v4, p3, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FngpXpuCduRouteCmd;->endLonlatPoint_:Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Point;

    invoke-interface {v0, v3, v4}, Lcom/android/carsdk/protobuf/GeneratedMessageLite$Visitor;->visitMessage(Lcom/android/carsdk/protobuf/MessageLite;Lcom/android/carsdk/protobuf/MessageLite;)Lcom/android/carsdk/protobuf/MessageLite;

    move-result-object v3

    check-cast v3, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Point;

    iput-object v3, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FngpXpuCduRouteCmd;->endLonlatPoint_:Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Point;

    .line 20267
    iget-object v3, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FngpXpuCduRouteCmd;->data_:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    xor-int/2addr v3, v2

    iget-object v4, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FngpXpuCduRouteCmd;->data_:Ljava/lang/String;

    iget-object v5, p3, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FngpXpuCduRouteCmd;->data_:Ljava/lang/String;

    .line 20268
    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    xor-int/2addr v5, v2

    iget-object v6, p3, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FngpXpuCduRouteCmd;->data_:Ljava/lang/String;

    .line 20267
    invoke-interface {v0, v3, v4, v5, v6}, Lcom/android/carsdk/protobuf/GeneratedMessageLite$Visitor;->visitString(ZLjava/lang/String;ZLjava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FngpXpuCduRouteCmd;->data_:Ljava/lang/String;

    .line 20269
    iget-wide v5, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FngpXpuCduRouteCmd;->navigationId_:J

    cmp-long v3, v5, p1

    if-eqz v3, :cond_13

    move v4, v2

    goto :goto_b

    :cond_13
    move v4, v1

    :goto_b
    iget-wide v8, p3, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FngpXpuCduRouteCmd;->navigationId_:J

    cmp-long v3, v8, p1

    if-eqz v3, :cond_14

    move v7, v2

    goto :goto_c

    :cond_14
    move v7, v1

    :goto_c
    move-object v3, v0

    invoke-interface/range {v3 .. v9}, Lcom/android/carsdk/protobuf/GeneratedMessageLite$Visitor;->visitLong(ZJZJ)J

    move-result-wide v3

    iput-wide v3, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FngpXpuCduRouteCmd;->navigationId_:J

    .line 20271
    iget-wide v3, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FngpXpuCduRouteCmd;->timestamp_:J

    cmp-long v5, v3, p1

    if-eqz v5, :cond_15

    move v5, v2

    goto :goto_d

    :cond_15
    move v5, v1

    :goto_d
    iget-wide v6, p3, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FngpXpuCduRouteCmd;->timestamp_:J

    cmp-long p1, v6, p1

    if-eqz p1, :cond_16

    move p1, v2

    goto :goto_e

    :cond_16
    move p1, v1

    :goto_e
    move v1, v5

    move-wide v2, v3

    move v4, p1

    move-wide v5, v6

    invoke-interface/range {v0 .. v6}, Lcom/android/carsdk/protobuf/GeneratedMessageLite$Visitor;->visitLong(ZJZJ)J

    move-result-wide p1

    iput-wide p1, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FngpXpuCduRouteCmd;->timestamp_:J

    .line 20273
    sget-object p1, Lcom/android/carsdk/protobuf/GeneratedMessageLite$MergeFromVisitor;->INSTANCE:Lcom/android/carsdk/protobuf/GeneratedMessageLite$MergeFromVisitor;

    return-object p0

    .line 20256
    :pswitch_4
    new-instance p1, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FngpXpuCduRouteCmd$Builder;

    invoke-direct {p1, v0}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FngpXpuCduRouteCmd$Builder;-><init>(Landroid/car/hardware/xpu/XpuFNgpRouteMessage$1;)V

    return-object p1

    :pswitch_5
    return-object v0

    .line 20250
    :pswitch_6
    sget-object p1, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FngpXpuCduRouteCmd;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FngpXpuCduRouteCmd;

    return-object p1

    .line 20247
    :pswitch_7
    new-instance p1, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FngpXpuCduRouteCmd;

    invoke-direct {p1}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FngpXpuCduRouteCmd;-><init>()V

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

.method public getData()Ljava/lang/String;
    .locals 1

    .line 19640
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FngpXpuCduRouteCmd;->data_:Ljava/lang/String;

    return-object v0
.end method

.method public getDataBytes()Lcom/android/carsdk/protobuf/ByteString;
    .locals 1

    .line 19651
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FngpXpuCduRouteCmd;->data_:Ljava/lang/String;

    invoke-static {v0}, Lcom/android/carsdk/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/android/carsdk/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getEndLonlatPoint()Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Point;
    .locals 1

    .line 19574
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FngpXpuCduRouteCmd;->endLonlatPoint_:Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Point;

    if-nez v0, :cond_0

    invoke-static {}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Point;->getDefaultInstance()Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Point;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public getFngpRouteCmd()Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FngpXpuCduRouteCmdType;
    .locals 1

    .line 19480
    iget v0, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FngpXpuCduRouteCmd;->fngpRouteCmd_:I

    invoke-static {v0}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FngpXpuCduRouteCmdType;->forNumber(I)Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FngpXpuCduRouteCmdType;

    move-result-object v0

    if-nez v0, :cond_0

    .line 19481
    sget-object v0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FngpXpuCduRouteCmdType;->UNRECOGNIZED:Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FngpXpuCduRouteCmdType;

    :cond_0
    return-object v0
.end method

.method public getFngpRouteCmdValue()I
    .locals 1

    .line 19470
    iget v0, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FngpXpuCduRouteCmd;->fngpRouteCmd_:I

    return v0
.end method

.method public getNavigationId()J
    .locals 2

    .line 19706
    iget-wide v0, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FngpXpuCduRouteCmd;->navigationId_:J

    return-wide v0
.end method

.method public getRouteId()J
    .locals 2

    .line 19529
    iget-wide v0, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FngpXpuCduRouteCmd;->routeId_:J

    return-wide v0
.end method

.method public getSequenceNumber()I
    .locals 1

    .line 19435
    iget v0, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FngpXpuCduRouteCmd;->sequenceNumber_:I

    return v0
.end method

.method public getSerializedSize()I
    .locals 6

    .line 19792
    iget v0, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FngpXpuCduRouteCmd;->memoizedSerializedSize:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    return v0

    :cond_0
    const/4 v0, 0x0

    .line 19796
    iget v1, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FngpXpuCduRouteCmd;->sequenceNumber_:I

    if-eqz v1, :cond_1

    const/4 v2, 0x1

    .line 19798
    invoke-static {v2, v1}, Lcom/android/carsdk/protobuf/CodedOutputStream;->computeUInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 19800
    :cond_1
    iget v1, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FngpXpuCduRouteCmd;->fngpRouteCmd_:I

    sget-object v2, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FngpXpuCduRouteCmdType;->ROUTE_CMD_REQ_DEFAULT:Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FngpXpuCduRouteCmdType;

    invoke-virtual {v2}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FngpXpuCduRouteCmdType;->getNumber()I

    move-result v2

    if-eq v1, v2, :cond_2

    const/4 v1, 0x2

    .line 19801
    iget v2, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FngpXpuCduRouteCmd;->fngpRouteCmd_:I

    .line 19802
    invoke-static {v1, v2}, Lcom/android/carsdk/protobuf/CodedOutputStream;->computeEnumSize(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 19804
    :cond_2
    iget-wide v1, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FngpXpuCduRouteCmd;->routeId_:J

    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-eqz v5, :cond_3

    const/4 v5, 0x3

    .line 19806
    invoke-static {v5, v1, v2}, Lcom/android/carsdk/protobuf/CodedOutputStream;->computeInt64Size(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 19808
    :cond_3
    iget-object v1, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FngpXpuCduRouteCmd;->endLonlatPoint_:Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Point;

    if-eqz v1, :cond_4

    const/4 v1, 0x4

    .line 19810
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FngpXpuCduRouteCmd;->getEndLonlatPoint()Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Point;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/carsdk/protobuf/CodedOutputStream;->computeMessageSize(ILcom/android/carsdk/protobuf/MessageLite;)I

    move-result v1

    add-int/2addr v0, v1

    .line 19812
    :cond_4
    iget-object v1, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FngpXpuCduRouteCmd;->data_:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_5

    const/4 v1, 0x5

    .line 19814
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FngpXpuCduRouteCmd;->getData()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/carsdk/protobuf/CodedOutputStream;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 19816
    :cond_5
    iget-wide v1, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FngpXpuCduRouteCmd;->navigationId_:J

    cmp-long v5, v1, v3

    if-eqz v5, :cond_6

    const/4 v5, 0x6

    .line 19818
    invoke-static {v5, v1, v2}, Lcom/android/carsdk/protobuf/CodedOutputStream;->computeUInt64Size(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 19820
    :cond_6
    iget-wide v1, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FngpXpuCduRouteCmd;->timestamp_:J

    cmp-long v3, v1, v3

    if-eqz v3, :cond_7

    const/4 v3, 0x7

    .line 19822
    invoke-static {v3, v1, v2}, Lcom/android/carsdk/protobuf/CodedOutputStream;->computeInt64Size(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 19824
    :cond_7
    iput v0, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FngpXpuCduRouteCmd;->memoizedSerializedSize:I

    return v0
.end method

.method public getTimestamp()J
    .locals 2

    .line 19741
    iget-wide v0, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FngpXpuCduRouteCmd;->timestamp_:J

    return-wide v0
.end method

.method public hasEndLonlatPoint()Z
    .locals 1

    .line 19564
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FngpXpuCduRouteCmd;->endLonlatPoint_:Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Point;

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

    .line 19768
    iget v0, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FngpXpuCduRouteCmd;->sequenceNumber_:I

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    .line 19769
    invoke-virtual {p1, v1, v0}, Lcom/android/carsdk/protobuf/CodedOutputStream;->writeUInt32(II)V

    .line 19771
    :cond_0
    iget v0, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FngpXpuCduRouteCmd;->fngpRouteCmd_:I

    sget-object v1, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FngpXpuCduRouteCmdType;->ROUTE_CMD_REQ_DEFAULT:Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FngpXpuCduRouteCmdType;

    invoke-virtual {v1}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FngpXpuCduRouteCmdType;->getNumber()I

    move-result v1

    if-eq v0, v1, :cond_1

    const/4 v0, 0x2

    .line 19772
    iget v1, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FngpXpuCduRouteCmd;->fngpRouteCmd_:I

    invoke-virtual {p1, v0, v1}, Lcom/android/carsdk/protobuf/CodedOutputStream;->writeEnum(II)V

    .line 19774
    :cond_1
    iget-wide v0, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FngpXpuCduRouteCmd;->routeId_:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_2

    const/4 v4, 0x3

    .line 19775
    invoke-virtual {p1, v4, v0, v1}, Lcom/android/carsdk/protobuf/CodedOutputStream;->writeInt64(IJ)V

    .line 19777
    :cond_2
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FngpXpuCduRouteCmd;->endLonlatPoint_:Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Point;

    if-eqz v0, :cond_3

    const/4 v0, 0x4

    .line 19778
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FngpXpuCduRouteCmd;->getEndLonlatPoint()Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Point;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/android/carsdk/protobuf/CodedOutputStream;->writeMessage(ILcom/android/carsdk/protobuf/MessageLite;)V

    .line 19780
    :cond_3
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FngpXpuCduRouteCmd;->data_:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_4

    const/4 v0, 0x5

    .line 19781
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FngpXpuCduRouteCmd;->getData()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/android/carsdk/protobuf/CodedOutputStream;->writeString(ILjava/lang/String;)V

    .line 19783
    :cond_4
    iget-wide v0, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FngpXpuCduRouteCmd;->navigationId_:J

    cmp-long v4, v0, v2

    if-eqz v4, :cond_5

    const/4 v4, 0x6

    .line 19784
    invoke-virtual {p1, v4, v0, v1}, Lcom/android/carsdk/protobuf/CodedOutputStream;->writeUInt64(IJ)V

    .line 19786
    :cond_5
    iget-wide v0, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FngpXpuCduRouteCmd;->timestamp_:J

    cmp-long v2, v0, v2

    if-eqz v2, :cond_6

    const/4 v2, 0x7

    .line 19787
    invoke-virtual {p1, v2, v0, v1}, Lcom/android/carsdk/protobuf/CodedOutputStream;->writeInt64(IJ)V

    :cond_6
    return-void
.end method
