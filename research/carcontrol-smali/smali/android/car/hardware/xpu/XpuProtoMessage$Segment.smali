.class public final Landroid/car/hardware/xpu/XpuProtoMessage$Segment;
.super Lcom/android/carsdk/protobuf/GeneratedMessageLite;
.source "XpuProtoMessage.java"

# interfaces
.implements Landroid/car/hardware/xpu/XpuProtoMessage$SegmentOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/car/hardware/xpu/XpuProtoMessage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Segment"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/car/hardware/xpu/XpuProtoMessage$Segment$Builder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/carsdk/protobuf/GeneratedMessageLite<",
        "Landroid/car/hardware/xpu/XpuProtoMessage$Segment;",
        "Landroid/car/hardware/xpu/XpuProtoMessage$Segment$Builder;",
        ">;",
        "Landroid/car/hardware/xpu/XpuProtoMessage$SegmentOrBuilder;"
    }
.end annotation


# static fields
.field private static final DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuProtoMessage$Segment;

.field public static final GUIDEBOARD_NAME_FIELD_NUMBER:I = 0x5

.field public static final HAS_CROSS_IMAGE_FIELD_NUMBER:I = 0x4

.field public static final LENGTH_FIELD_NUMBER:I = 0x2

.field public static final LINKS_FIELD_NUMBER:I = 0x1

.field private static volatile PARSER:Lcom/android/carsdk/protobuf/Parser; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/carsdk/protobuf/Parser<",
            "Landroid/car/hardware/xpu/XpuProtoMessage$Segment;",
            ">;"
        }
    .end annotation
.end field

.field public static final SLOPE_FIELD_NUMBER:I = 0x6

.field public static final TRAFFIC_LIGHT_NUM_FIELD_NUMBER:I = 0x3


# instance fields
.field private bitField0_:I

.field private guideboardName_:Ljava/lang/String;

.field private hasCrossImage_:Z

.field private length_:D

.field private links_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/carsdk/protobuf/Internal$ProtobufList<",
            "Landroid/car/hardware/xpu/XpuProtoMessage$Link;",
            ">;"
        }
    .end annotation
.end field

.field private slope_:I

.field private trafficLightNum_:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 12185
    new-instance v0, Landroid/car/hardware/xpu/XpuProtoMessage$Segment;

    invoke-direct {v0}, Landroid/car/hardware/xpu/XpuProtoMessage$Segment;-><init>()V

    sput-object v0, Landroid/car/hardware/xpu/XpuProtoMessage$Segment;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuProtoMessage$Segment;

    .line 12186
    invoke-virtual {v0}, Landroid/car/hardware/xpu/XpuProtoMessage$Segment;->makeImmutable()V

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .line 11404
    invoke-direct {p0}, Lcom/android/carsdk/protobuf/GeneratedMessageLite;-><init>()V

    .line 11405
    invoke-static {}, Landroid/car/hardware/xpu/XpuProtoMessage$Segment;->emptyProtobufList()Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    move-result-object v0

    iput-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$Segment;->links_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    const-wide/16 v0, 0x0

    .line 11406
    iput-wide v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$Segment;->length_:D

    const-wide/16 v0, 0x0

    .line 11407
    iput-wide v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$Segment;->trafficLightNum_:J

    const/4 v0, 0x0

    .line 11408
    iput-boolean v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$Segment;->hasCrossImage_:Z

    const-string v1, ""

    .line 11409
    iput-object v1, p0, Landroid/car/hardware/xpu/XpuProtoMessage$Segment;->guideboardName_:Ljava/lang/String;

    .line 11410
    iput v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$Segment;->slope_:I

    return-void
.end method

.method static synthetic access$24700()Landroid/car/hardware/xpu/XpuProtoMessage$Segment;
    .locals 1

    .line 11399
    sget-object v0, Landroid/car/hardware/xpu/XpuProtoMessage$Segment;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuProtoMessage$Segment;

    return-object v0
.end method

.method static synthetic access$24800(Landroid/car/hardware/xpu/XpuProtoMessage$Segment;ILandroid/car/hardware/xpu/XpuProtoMessage$Link;)V
    .locals 0

    .line 11399
    invoke-direct {p0, p1, p2}, Landroid/car/hardware/xpu/XpuProtoMessage$Segment;->setLinks(ILandroid/car/hardware/xpu/XpuProtoMessage$Link;)V

    return-void
.end method

.method static synthetic access$24900(Landroid/car/hardware/xpu/XpuProtoMessage$Segment;ILandroid/car/hardware/xpu/XpuProtoMessage$Link$Builder;)V
    .locals 0

    .line 11399
    invoke-direct {p0, p1, p2}, Landroid/car/hardware/xpu/XpuProtoMessage$Segment;->setLinks(ILandroid/car/hardware/xpu/XpuProtoMessage$Link$Builder;)V

    return-void
.end method

.method static synthetic access$25000(Landroid/car/hardware/xpu/XpuProtoMessage$Segment;Landroid/car/hardware/xpu/XpuProtoMessage$Link;)V
    .locals 0

    .line 11399
    invoke-direct {p0, p1}, Landroid/car/hardware/xpu/XpuProtoMessage$Segment;->addLinks(Landroid/car/hardware/xpu/XpuProtoMessage$Link;)V

    return-void
.end method

.method static synthetic access$25100(Landroid/car/hardware/xpu/XpuProtoMessage$Segment;ILandroid/car/hardware/xpu/XpuProtoMessage$Link;)V
    .locals 0

    .line 11399
    invoke-direct {p0, p1, p2}, Landroid/car/hardware/xpu/XpuProtoMessage$Segment;->addLinks(ILandroid/car/hardware/xpu/XpuProtoMessage$Link;)V

    return-void
.end method

.method static synthetic access$25200(Landroid/car/hardware/xpu/XpuProtoMessage$Segment;Landroid/car/hardware/xpu/XpuProtoMessage$Link$Builder;)V
    .locals 0

    .line 11399
    invoke-direct {p0, p1}, Landroid/car/hardware/xpu/XpuProtoMessage$Segment;->addLinks(Landroid/car/hardware/xpu/XpuProtoMessage$Link$Builder;)V

    return-void
.end method

.method static synthetic access$25300(Landroid/car/hardware/xpu/XpuProtoMessage$Segment;ILandroid/car/hardware/xpu/XpuProtoMessage$Link$Builder;)V
    .locals 0

    .line 11399
    invoke-direct {p0, p1, p2}, Landroid/car/hardware/xpu/XpuProtoMessage$Segment;->addLinks(ILandroid/car/hardware/xpu/XpuProtoMessage$Link$Builder;)V

    return-void
.end method

.method static synthetic access$25400(Landroid/car/hardware/xpu/XpuProtoMessage$Segment;Ljava/lang/Iterable;)V
    .locals 0

    .line 11399
    invoke-direct {p0, p1}, Landroid/car/hardware/xpu/XpuProtoMessage$Segment;->addAllLinks(Ljava/lang/Iterable;)V

    return-void
.end method

.method static synthetic access$25500(Landroid/car/hardware/xpu/XpuProtoMessage$Segment;)V
    .locals 0

    .line 11399
    invoke-direct {p0}, Landroid/car/hardware/xpu/XpuProtoMessage$Segment;->clearLinks()V

    return-void
.end method

.method static synthetic access$25600(Landroid/car/hardware/xpu/XpuProtoMessage$Segment;I)V
    .locals 0

    .line 11399
    invoke-direct {p0, p1}, Landroid/car/hardware/xpu/XpuProtoMessage$Segment;->removeLinks(I)V

    return-void
.end method

.method static synthetic access$25700(Landroid/car/hardware/xpu/XpuProtoMessage$Segment;D)V
    .locals 0

    .line 11399
    invoke-direct {p0, p1, p2}, Landroid/car/hardware/xpu/XpuProtoMessage$Segment;->setLength(D)V

    return-void
.end method

.method static synthetic access$25800(Landroid/car/hardware/xpu/XpuProtoMessage$Segment;)V
    .locals 0

    .line 11399
    invoke-direct {p0}, Landroid/car/hardware/xpu/XpuProtoMessage$Segment;->clearLength()V

    return-void
.end method

.method static synthetic access$25900(Landroid/car/hardware/xpu/XpuProtoMessage$Segment;J)V
    .locals 0

    .line 11399
    invoke-direct {p0, p1, p2}, Landroid/car/hardware/xpu/XpuProtoMessage$Segment;->setTrafficLightNum(J)V

    return-void
.end method

.method static synthetic access$26000(Landroid/car/hardware/xpu/XpuProtoMessage$Segment;)V
    .locals 0

    .line 11399
    invoke-direct {p0}, Landroid/car/hardware/xpu/XpuProtoMessage$Segment;->clearTrafficLightNum()V

    return-void
.end method

.method static synthetic access$26100(Landroid/car/hardware/xpu/XpuProtoMessage$Segment;Z)V
    .locals 0

    .line 11399
    invoke-direct {p0, p1}, Landroid/car/hardware/xpu/XpuProtoMessage$Segment;->setHasCrossImage(Z)V

    return-void
.end method

.method static synthetic access$26200(Landroid/car/hardware/xpu/XpuProtoMessage$Segment;)V
    .locals 0

    .line 11399
    invoke-direct {p0}, Landroid/car/hardware/xpu/XpuProtoMessage$Segment;->clearHasCrossImage()V

    return-void
.end method

.method static synthetic access$26300(Landroid/car/hardware/xpu/XpuProtoMessage$Segment;Ljava/lang/String;)V
    .locals 0

    .line 11399
    invoke-direct {p0, p1}, Landroid/car/hardware/xpu/XpuProtoMessage$Segment;->setGuideboardName(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$26400(Landroid/car/hardware/xpu/XpuProtoMessage$Segment;)V
    .locals 0

    .line 11399
    invoke-direct {p0}, Landroid/car/hardware/xpu/XpuProtoMessage$Segment;->clearGuideboardName()V

    return-void
.end method

.method static synthetic access$26500(Landroid/car/hardware/xpu/XpuProtoMessage$Segment;Lcom/android/carsdk/protobuf/ByteString;)V
    .locals 0

    .line 11399
    invoke-direct {p0, p1}, Landroid/car/hardware/xpu/XpuProtoMessage$Segment;->setGuideboardNameBytes(Lcom/android/carsdk/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$26600(Landroid/car/hardware/xpu/XpuProtoMessage$Segment;I)V
    .locals 0

    .line 11399
    invoke-direct {p0, p1}, Landroid/car/hardware/xpu/XpuProtoMessage$Segment;->setSlope(I)V

    return-void
.end method

.method static synthetic access$26700(Landroid/car/hardware/xpu/XpuProtoMessage$Segment;)V
    .locals 0

    .line 11399
    invoke-direct {p0}, Landroid/car/hardware/xpu/XpuProtoMessage$Segment;->clearSlope()V

    return-void
.end method

.method private addAllLinks(Ljava/lang/Iterable;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Landroid/car/hardware/xpu/XpuProtoMessage$Link;",
            ">;)V"
        }
    .end annotation

    .line 11515
    invoke-direct {p0}, Landroid/car/hardware/xpu/XpuProtoMessage$Segment;->ensureLinksIsMutable()V

    .line 11516
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$Segment;->links_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    invoke-static {p1, v0}, Lcom/android/carsdk/protobuf/AbstractMessageLite;->addAll(Ljava/lang/Iterable;Ljava/util/Collection;)V

    return-void
.end method

.method private addLinks(ILandroid/car/hardware/xpu/XpuProtoMessage$Link$Builder;)V
    .locals 1

    .line 11507
    invoke-direct {p0}, Landroid/car/hardware/xpu/XpuProtoMessage$Segment;->ensureLinksIsMutable()V

    .line 11508
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$Segment;->links_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    invoke-virtual {p2}, Landroid/car/hardware/xpu/XpuProtoMessage$Link$Builder;->build()Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object p2

    check-cast p2, Landroid/car/hardware/xpu/XpuProtoMessage$Link;

    invoke-interface {v0, p1, p2}, Lcom/android/carsdk/protobuf/Internal$ProtobufList;->add(ILjava/lang/Object;)V

    return-void
.end method

.method private addLinks(ILandroid/car/hardware/xpu/XpuProtoMessage$Link;)V
    .locals 1

    .line 11489
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 11491
    invoke-direct {p0}, Landroid/car/hardware/xpu/XpuProtoMessage$Segment;->ensureLinksIsMutable()V

    .line 11492
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$Segment;->links_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1, p2}, Lcom/android/carsdk/protobuf/Internal$ProtobufList;->add(ILjava/lang/Object;)V

    return-void
.end method

.method private addLinks(Landroid/car/hardware/xpu/XpuProtoMessage$Link$Builder;)V
    .locals 1

    .line 11499
    invoke-direct {p0}, Landroid/car/hardware/xpu/XpuProtoMessage$Segment;->ensureLinksIsMutable()V

    .line 11500
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$Segment;->links_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    invoke-virtual {p1}, Landroid/car/hardware/xpu/XpuProtoMessage$Link$Builder;->build()Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Landroid/car/hardware/xpu/XpuProtoMessage$Link;

    invoke-interface {v0, p1}, Lcom/android/carsdk/protobuf/Internal$ProtobufList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private addLinks(Landroid/car/hardware/xpu/XpuProtoMessage$Link;)V
    .locals 1

    .line 11478
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 11480
    invoke-direct {p0}, Landroid/car/hardware/xpu/XpuProtoMessage$Segment;->ensureLinksIsMutable()V

    .line 11481
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$Segment;->links_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1}, Lcom/android/carsdk/protobuf/Internal$ProtobufList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private clearGuideboardName()V
    .locals 1

    .line 11645
    invoke-static {}, Landroid/car/hardware/xpu/XpuProtoMessage$Segment;->getDefaultInstance()Landroid/car/hardware/xpu/XpuProtoMessage$Segment;

    move-result-object v0

    invoke-virtual {v0}, Landroid/car/hardware/xpu/XpuProtoMessage$Segment;->getGuideboardName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$Segment;->guideboardName_:Ljava/lang/String;

    return-void
.end method

.method private clearHasCrossImage()V
    .locals 1

    const/4 v0, 0x0

    .line 11611
    iput-boolean v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$Segment;->hasCrossImage_:Z

    return-void
.end method

.method private clearLength()V
    .locals 2

    const-wide/16 v0, 0x0

    .line 11553
    iput-wide v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$Segment;->length_:D

    return-void
.end method

.method private clearLinks()V
    .locals 1

    .line 11523
    invoke-static {}, Landroid/car/hardware/xpu/XpuProtoMessage$Segment;->emptyProtobufList()Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    move-result-object v0

    iput-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$Segment;->links_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    return-void
.end method

.method private clearSlope()V
    .locals 1

    const/4 v0, 0x0

    .line 11680
    iput v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$Segment;->slope_:I

    return-void
.end method

.method private clearTrafficLightNum()V
    .locals 2

    const-wide/16 v0, 0x0

    .line 11588
    iput-wide v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$Segment;->trafficLightNum_:J

    return-void
.end method

.method private ensureLinksIsMutable()V
    .locals 1

    .line 11448
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$Segment;->links_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    invoke-interface {v0}, Lcom/android/carsdk/protobuf/Internal$ProtobufList;->isModifiable()Z

    move-result v0

    if-nez v0, :cond_0

    .line 11449
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$Segment;->links_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    .line 11450
    invoke-static {v0}, Lcom/android/carsdk/protobuf/GeneratedMessageLite;->mutableCopy(Lcom/android/carsdk/protobuf/Internal$ProtobufList;)Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    move-result-object v0

    iput-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$Segment;->links_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    :cond_0
    return-void
.end method

.method public static getDefaultInstance()Landroid/car/hardware/xpu/XpuProtoMessage$Segment;
    .locals 1

    .line 12190
    sget-object v0, Landroid/car/hardware/xpu/XpuProtoMessage$Segment;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuProtoMessage$Segment;

    return-object v0
.end method

.method public static newBuilder()Landroid/car/hardware/xpu/XpuProtoMessage$Segment$Builder;
    .locals 1

    .line 11800
    sget-object v0, Landroid/car/hardware/xpu/XpuProtoMessage$Segment;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuProtoMessage$Segment;

    invoke-virtual {v0}, Landroid/car/hardware/xpu/XpuProtoMessage$Segment;->toBuilder()Lcom/android/carsdk/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Landroid/car/hardware/xpu/XpuProtoMessage$Segment$Builder;

    return-object v0
.end method

.method public static newBuilder(Landroid/car/hardware/xpu/XpuProtoMessage$Segment;)Landroid/car/hardware/xpu/XpuProtoMessage$Segment$Builder;
    .locals 1

    .line 11803
    sget-object v0, Landroid/car/hardware/xpu/XpuProtoMessage$Segment;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuProtoMessage$Segment;

    invoke-virtual {v0}, Landroid/car/hardware/xpu/XpuProtoMessage$Segment;->toBuilder()Lcom/android/carsdk/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Landroid/car/hardware/xpu/XpuProtoMessage$Segment$Builder;

    invoke-virtual {v0, p0}, Landroid/car/hardware/xpu/XpuProtoMessage$Segment$Builder;->mergeFrom(Lcom/android/carsdk/protobuf/GeneratedMessageLite;)Lcom/android/carsdk/protobuf/GeneratedMessageLite$Builder;

    move-result-object p0

    check-cast p0, Landroid/car/hardware/xpu/XpuProtoMessage$Segment$Builder;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Landroid/car/hardware/xpu/XpuProtoMessage$Segment;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 11777
    sget-object v0, Landroid/car/hardware/xpu/XpuProtoMessage$Segment;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuProtoMessage$Segment;

    invoke-static {v0, p0}, Landroid/car/hardware/xpu/XpuProtoMessage$Segment;->parseDelimitedFrom(Lcom/android/carsdk/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Landroid/car/hardware/xpu/XpuProtoMessage$Segment;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/android/carsdk/protobuf/ExtensionRegistryLite;)Landroid/car/hardware/xpu/XpuProtoMessage$Segment;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 11783
    sget-object v0, Landroid/car/hardware/xpu/XpuProtoMessage$Segment;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuProtoMessage$Segment;

    invoke-static {v0, p0, p1}, Landroid/car/hardware/xpu/XpuProtoMessage$Segment;->parseDelimitedFrom(Lcom/android/carsdk/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/android/carsdk/protobuf/ExtensionRegistryLite;)Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Landroid/car/hardware/xpu/XpuProtoMessage$Segment;

    return-object p0
.end method

.method public static parseFrom(Lcom/android/carsdk/protobuf/ByteString;)Landroid/car/hardware/xpu/XpuProtoMessage$Segment;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/carsdk/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 11741
    sget-object v0, Landroid/car/hardware/xpu/XpuProtoMessage$Segment;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuProtoMessage$Segment;

    invoke-static {v0, p0}, Lcom/android/carsdk/protobuf/GeneratedMessageLite;->parseFrom(Lcom/android/carsdk/protobuf/GeneratedMessageLite;Lcom/android/carsdk/protobuf/ByteString;)Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Landroid/car/hardware/xpu/XpuProtoMessage$Segment;

    return-object p0
.end method

.method public static parseFrom(Lcom/android/carsdk/protobuf/ByteString;Lcom/android/carsdk/protobuf/ExtensionRegistryLite;)Landroid/car/hardware/xpu/XpuProtoMessage$Segment;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/carsdk/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 11748
    sget-object v0, Landroid/car/hardware/xpu/XpuProtoMessage$Segment;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuProtoMessage$Segment;

    invoke-static {v0, p0, p1}, Lcom/android/carsdk/protobuf/GeneratedMessageLite;->parseFrom(Lcom/android/carsdk/protobuf/GeneratedMessageLite;Lcom/android/carsdk/protobuf/ByteString;Lcom/android/carsdk/protobuf/ExtensionRegistryLite;)Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Landroid/car/hardware/xpu/XpuProtoMessage$Segment;

    return-object p0
.end method

.method public static parseFrom(Lcom/android/carsdk/protobuf/CodedInputStream;)Landroid/car/hardware/xpu/XpuProtoMessage$Segment;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 11788
    sget-object v0, Landroid/car/hardware/xpu/XpuProtoMessage$Segment;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuProtoMessage$Segment;

    invoke-static {v0, p0}, Lcom/android/carsdk/protobuf/GeneratedMessageLite;->parseFrom(Lcom/android/carsdk/protobuf/GeneratedMessageLite;Lcom/android/carsdk/protobuf/CodedInputStream;)Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Landroid/car/hardware/xpu/XpuProtoMessage$Segment;

    return-object p0
.end method

.method public static parseFrom(Lcom/android/carsdk/protobuf/CodedInputStream;Lcom/android/carsdk/protobuf/ExtensionRegistryLite;)Landroid/car/hardware/xpu/XpuProtoMessage$Segment;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 11795
    sget-object v0, Landroid/car/hardware/xpu/XpuProtoMessage$Segment;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuProtoMessage$Segment;

    invoke-static {v0, p0, p1}, Lcom/android/carsdk/protobuf/GeneratedMessageLite;->parseFrom(Lcom/android/carsdk/protobuf/GeneratedMessageLite;Lcom/android/carsdk/protobuf/CodedInputStream;Lcom/android/carsdk/protobuf/ExtensionRegistryLite;)Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Landroid/car/hardware/xpu/XpuProtoMessage$Segment;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Landroid/car/hardware/xpu/XpuProtoMessage$Segment;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 11765
    sget-object v0, Landroid/car/hardware/xpu/XpuProtoMessage$Segment;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuProtoMessage$Segment;

    invoke-static {v0, p0}, Lcom/android/carsdk/protobuf/GeneratedMessageLite;->parseFrom(Lcom/android/carsdk/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Landroid/car/hardware/xpu/XpuProtoMessage$Segment;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/android/carsdk/protobuf/ExtensionRegistryLite;)Landroid/car/hardware/xpu/XpuProtoMessage$Segment;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 11772
    sget-object v0, Landroid/car/hardware/xpu/XpuProtoMessage$Segment;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuProtoMessage$Segment;

    invoke-static {v0, p0, p1}, Lcom/android/carsdk/protobuf/GeneratedMessageLite;->parseFrom(Lcom/android/carsdk/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/android/carsdk/protobuf/ExtensionRegistryLite;)Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Landroid/car/hardware/xpu/XpuProtoMessage$Segment;

    return-object p0
.end method

.method public static parseFrom([B)Landroid/car/hardware/xpu/XpuProtoMessage$Segment;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/carsdk/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 11753
    sget-object v0, Landroid/car/hardware/xpu/XpuProtoMessage$Segment;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuProtoMessage$Segment;

    invoke-static {v0, p0}, Lcom/android/carsdk/protobuf/GeneratedMessageLite;->parseFrom(Lcom/android/carsdk/protobuf/GeneratedMessageLite;[B)Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Landroid/car/hardware/xpu/XpuProtoMessage$Segment;

    return-object p0
.end method

.method public static parseFrom([BLcom/android/carsdk/protobuf/ExtensionRegistryLite;)Landroid/car/hardware/xpu/XpuProtoMessage$Segment;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/carsdk/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 11760
    sget-object v0, Landroid/car/hardware/xpu/XpuProtoMessage$Segment;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuProtoMessage$Segment;

    invoke-static {v0, p0, p1}, Lcom/android/carsdk/protobuf/GeneratedMessageLite;->parseFrom(Lcom/android/carsdk/protobuf/GeneratedMessageLite;[BLcom/android/carsdk/protobuf/ExtensionRegistryLite;)Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Landroid/car/hardware/xpu/XpuProtoMessage$Segment;

    return-object p0
.end method

.method public static parser()Lcom/android/carsdk/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/android/carsdk/protobuf/Parser<",
            "Landroid/car/hardware/xpu/XpuProtoMessage$Segment;",
            ">;"
        }
    .end annotation

    .line 12196
    sget-object v0, Landroid/car/hardware/xpu/XpuProtoMessage$Segment;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuProtoMessage$Segment;

    invoke-virtual {v0}, Landroid/car/hardware/xpu/XpuProtoMessage$Segment;->getParserForType()Lcom/android/carsdk/protobuf/Parser;

    move-result-object v0

    return-object v0
.end method

.method private removeLinks(I)V
    .locals 1

    .line 11529
    invoke-direct {p0}, Landroid/car/hardware/xpu/XpuProtoMessage$Segment;->ensureLinksIsMutable()V

    .line 11530
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$Segment;->links_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1}, Lcom/android/carsdk/protobuf/Internal$ProtobufList;->remove(I)Ljava/lang/Object;

    return-void
.end method

.method private setGuideboardName(Ljava/lang/String;)V
    .locals 0

    .line 11635
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 11638
    iput-object p1, p0, Landroid/car/hardware/xpu/XpuProtoMessage$Segment;->guideboardName_:Ljava/lang/String;

    return-void
.end method

.method private setGuideboardNameBytes(Lcom/android/carsdk/protobuf/ByteString;)V
    .locals 0

    .line 11653
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 11655
    invoke-static {p1}, Landroid/car/hardware/xpu/XpuProtoMessage$Segment;->checkByteStringIsUtf8(Lcom/android/carsdk/protobuf/ByteString;)V

    .line 11657
    invoke-virtual {p1}, Lcom/android/carsdk/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Landroid/car/hardware/xpu/XpuProtoMessage$Segment;->guideboardName_:Ljava/lang/String;

    return-void
.end method

.method private setHasCrossImage(Z)V
    .locals 0

    .line 11604
    iput-boolean p1, p0, Landroid/car/hardware/xpu/XpuProtoMessage$Segment;->hasCrossImage_:Z

    return-void
.end method

.method private setLength(D)V
    .locals 0

    .line 11546
    iput-wide p1, p0, Landroid/car/hardware/xpu/XpuProtoMessage$Segment;->length_:D

    return-void
.end method

.method private setLinks(ILandroid/car/hardware/xpu/XpuProtoMessage$Link$Builder;)V
    .locals 1

    .line 11470
    invoke-direct {p0}, Landroid/car/hardware/xpu/XpuProtoMessage$Segment;->ensureLinksIsMutable()V

    .line 11471
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$Segment;->links_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    invoke-virtual {p2}, Landroid/car/hardware/xpu/XpuProtoMessage$Link$Builder;->build()Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object p2

    check-cast p2, Landroid/car/hardware/xpu/XpuProtoMessage$Link;

    invoke-interface {v0, p1, p2}, Lcom/android/carsdk/protobuf/Internal$ProtobufList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private setLinks(ILandroid/car/hardware/xpu/XpuProtoMessage$Link;)V
    .locals 1

    .line 11460
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 11462
    invoke-direct {p0}, Landroid/car/hardware/xpu/XpuProtoMessage$Segment;->ensureLinksIsMutable()V

    .line 11463
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$Segment;->links_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1, p2}, Lcom/android/carsdk/protobuf/Internal$ProtobufList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private setSlope(I)V
    .locals 0

    .line 11673
    iput p1, p0, Landroid/car/hardware/xpu/XpuProtoMessage$Segment;->slope_:I

    return-void
.end method

.method private setTrafficLightNum(J)V
    .locals 0

    .line 11577
    iput-wide p1, p0, Landroid/car/hardware/xpu/XpuProtoMessage$Segment;->trafficLightNum_:J

    return-void
.end method


# virtual methods
.method protected final dynamicMethod(Lcom/android/carsdk/protobuf/GeneratedMessageLite$MethodToInvoke;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 10

    .line 12066
    sget-object v0, Landroid/car/hardware/xpu/XpuProtoMessage$1;->$SwitchMap$com$google$protobuf$GeneratedMessageLite$MethodToInvoke:[I

    invoke-virtual {p1}, Lcom/android/carsdk/protobuf/GeneratedMessageLite$MethodToInvoke;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x1

    packed-switch p1, :pswitch_data_0

    .line 12178
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1

    .line 12169
    :pswitch_0
    sget-object p1, Landroid/car/hardware/xpu/XpuProtoMessage$Segment;->PARSER:Lcom/android/carsdk/protobuf/Parser;

    if-nez p1, :cond_1

    const-class p1, Landroid/car/hardware/xpu/XpuProtoMessage$Segment;

    monitor-enter p1

    .line 12170
    :try_start_0
    sget-object p2, Landroid/car/hardware/xpu/XpuProtoMessage$Segment;->PARSER:Lcom/android/carsdk/protobuf/Parser;

    if-nez p2, :cond_0

    .line 12171
    new-instance p2, Lcom/android/carsdk/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;

    sget-object p3, Landroid/car/hardware/xpu/XpuProtoMessage$Segment;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuProtoMessage$Segment;

    invoke-direct {p2, p3}, Lcom/android/carsdk/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;-><init>(Lcom/android/carsdk/protobuf/GeneratedMessageLite;)V

    sput-object p2, Landroid/car/hardware/xpu/XpuProtoMessage$Segment;->PARSER:Lcom/android/carsdk/protobuf/Parser;

    .line 12173
    :cond_0
    monitor-exit p1

    goto :goto_0

    :catchall_0
    move-exception p2

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p2

    .line 12175
    :cond_1
    :goto_0
    sget-object p1, Landroid/car/hardware/xpu/XpuProtoMessage$Segment;->PARSER:Lcom/android/carsdk/protobuf/Parser;

    return-object p1

    .line 12101
    :pswitch_1
    check-cast p2, Lcom/android/carsdk/protobuf/CodedInputStream;

    .line 12103
    check-cast p3, Lcom/android/carsdk/protobuf/ExtensionRegistryLite;

    :cond_2
    :goto_1
    if-nez v1, :cond_b

    .line 12108
    :try_start_1
    invoke-virtual {p2}, Lcom/android/carsdk/protobuf/CodedInputStream;->readTag()I

    move-result p1

    if-eqz p1, :cond_a

    const/16 v0, 0xa

    if-eq p1, v0, :cond_8

    const/16 v0, 0x11

    if-eq p1, v0, :cond_7

    const/16 v0, 0x18

    if-eq p1, v0, :cond_6

    const/16 v0, 0x20

    if-eq p1, v0, :cond_5

    const/16 v0, 0x2a

    if-eq p1, v0, :cond_4

    const/16 v0, 0x30

    if-eq p1, v0, :cond_3

    .line 12114
    invoke-virtual {p2, p1}, Lcom/android/carsdk/protobuf/CodedInputStream;->skipField(I)Z

    move-result p1

    if-nez p1, :cond_2

    goto :goto_2

    .line 12151
    :cond_3
    invoke-virtual {p2}, Lcom/android/carsdk/protobuf/CodedInputStream;->readInt32()I

    move-result p1

    iput p1, p0, Landroid/car/hardware/xpu/XpuProtoMessage$Segment;->slope_:I

    goto :goto_1

    .line 12144
    :cond_4
    invoke-virtual {p2}, Lcom/android/carsdk/protobuf/CodedInputStream;->readStringRequireUtf8()Ljava/lang/String;

    move-result-object p1

    .line 12146
    iput-object p1, p0, Landroid/car/hardware/xpu/XpuProtoMessage$Segment;->guideboardName_:Ljava/lang/String;

    goto :goto_1

    .line 12140
    :cond_5
    invoke-virtual {p2}, Lcom/android/carsdk/protobuf/CodedInputStream;->readBool()Z

    move-result p1

    iput-boolean p1, p0, Landroid/car/hardware/xpu/XpuProtoMessage$Segment;->hasCrossImage_:Z

    goto :goto_1

    .line 12135
    :cond_6
    invoke-virtual {p2}, Lcom/android/carsdk/protobuf/CodedInputStream;->readInt64()J

    move-result-wide v3

    iput-wide v3, p0, Landroid/car/hardware/xpu/XpuProtoMessage$Segment;->trafficLightNum_:J

    goto :goto_1

    .line 12130
    :cond_7
    invoke-virtual {p2}, Lcom/android/carsdk/protobuf/CodedInputStream;->readDouble()D

    move-result-wide v3

    iput-wide v3, p0, Landroid/car/hardware/xpu/XpuProtoMessage$Segment;->length_:D

    goto :goto_1

    .line 12120
    :cond_8
    iget-object p1, p0, Landroid/car/hardware/xpu/XpuProtoMessage$Segment;->links_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    invoke-interface {p1}, Lcom/android/carsdk/protobuf/Internal$ProtobufList;->isModifiable()Z

    move-result p1

    if-nez p1, :cond_9

    .line 12121
    iget-object p1, p0, Landroid/car/hardware/xpu/XpuProtoMessage$Segment;->links_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    .line 12122
    invoke-static {p1}, Lcom/android/carsdk/protobuf/GeneratedMessageLite;->mutableCopy(Lcom/android/carsdk/protobuf/Internal$ProtobufList;)Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    move-result-object p1

    iput-object p1, p0, Landroid/car/hardware/xpu/XpuProtoMessage$Segment;->links_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    .line 12124
    :cond_9
    iget-object p1, p0, Landroid/car/hardware/xpu/XpuProtoMessage$Segment;->links_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    .line 12125
    invoke-static {}, Landroid/car/hardware/xpu/XpuProtoMessage$Link;->parser()Lcom/android/carsdk/protobuf/Parser;

    move-result-object v0

    invoke-virtual {p2, v0, p3}, Lcom/android/carsdk/protobuf/CodedInputStream;->readMessage(Lcom/android/carsdk/protobuf/Parser;Lcom/android/carsdk/protobuf/ExtensionRegistryLite;)Lcom/android/carsdk/protobuf/MessageLite;

    move-result-object v0

    check-cast v0, Landroid/car/hardware/xpu/XpuProtoMessage$Link;

    .line 12124
    invoke-interface {p1, v0}, Lcom/android/carsdk/protobuf/Internal$ProtobufList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Lcom/android/carsdk/protobuf/InvalidProtocolBufferException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    :cond_a
    :goto_2
    move v1, v2

    goto :goto_1

    :catchall_1
    move-exception p1

    goto :goto_3

    :catch_0
    move-exception p1

    .line 12159
    :try_start_2
    new-instance p2, Ljava/lang/RuntimeException;

    new-instance p3, Lcom/android/carsdk/protobuf/InvalidProtocolBufferException;

    .line 12161
    invoke-virtual {p1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p3, p1}, Lcom/android/carsdk/protobuf/InvalidProtocolBufferException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, p0}, Lcom/android/carsdk/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/android/carsdk/protobuf/MessageLite;)Lcom/android/carsdk/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p2

    :catch_1
    move-exception p1

    .line 12157
    new-instance p2, Ljava/lang/RuntimeException;

    invoke-virtual {p1, p0}, Lcom/android/carsdk/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/android/carsdk/protobuf/MessageLite;)Lcom/android/carsdk/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 12162
    :goto_3
    throw p1

    .line 12166
    :cond_b
    :pswitch_2
    sget-object p1, Landroid/car/hardware/xpu/XpuProtoMessage$Segment;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuProtoMessage$Segment;

    return-object p1

    .line 12081
    :pswitch_3
    check-cast p2, Lcom/android/carsdk/protobuf/GeneratedMessageLite$Visitor;

    .line 12082
    check-cast p3, Landroid/car/hardware/xpu/XpuProtoMessage$Segment;

    .line 12083
    iget-object p1, p0, Landroid/car/hardware/xpu/XpuProtoMessage$Segment;->links_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    iget-object v0, p3, Landroid/car/hardware/xpu/XpuProtoMessage$Segment;->links_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    invoke-interface {p2, p1, v0}, Lcom/android/carsdk/protobuf/GeneratedMessageLite$Visitor;->visitList(Lcom/android/carsdk/protobuf/Internal$ProtobufList;Lcom/android/carsdk/protobuf/Internal$ProtobufList;)Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    move-result-object p1

    iput-object p1, p0, Landroid/car/hardware/xpu/XpuProtoMessage$Segment;->links_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    .line 12084
    iget-wide v5, p0, Landroid/car/hardware/xpu/XpuProtoMessage$Segment;->length_:D

    const-wide/16 v3, 0x0

    cmpl-double p1, v5, v3

    if-eqz p1, :cond_c

    move p1, v2

    goto :goto_4

    :cond_c
    move p1, v1

    :goto_4
    iget-wide v8, p3, Landroid/car/hardware/xpu/XpuProtoMessage$Segment;->length_:D

    cmpl-double v0, v8, v3

    if-eqz v0, :cond_d

    move v7, v2

    goto :goto_5

    :cond_d
    move v7, v1

    :goto_5
    move-object v3, p2

    move v4, p1

    invoke-interface/range {v3 .. v9}, Lcom/android/carsdk/protobuf/GeneratedMessageLite$Visitor;->visitDouble(ZDZD)D

    move-result-wide v3

    iput-wide v3, p0, Landroid/car/hardware/xpu/XpuProtoMessage$Segment;->length_:D

    .line 12086
    iget-wide v5, p0, Landroid/car/hardware/xpu/XpuProtoMessage$Segment;->trafficLightNum_:J

    const-wide/16 v3, 0x0

    cmp-long p1, v5, v3

    if-eqz p1, :cond_e

    move p1, v2

    goto :goto_6

    :cond_e
    move p1, v1

    :goto_6
    iget-wide v8, p3, Landroid/car/hardware/xpu/XpuProtoMessage$Segment;->trafficLightNum_:J

    cmp-long v0, v8, v3

    if-eqz v0, :cond_f

    move v7, v2

    goto :goto_7

    :cond_f
    move v7, v1

    :goto_7
    move-object v3, p2

    move v4, p1

    invoke-interface/range {v3 .. v9}, Lcom/android/carsdk/protobuf/GeneratedMessageLite$Visitor;->visitLong(ZJZJ)J

    move-result-wide v3

    iput-wide v3, p0, Landroid/car/hardware/xpu/XpuProtoMessage$Segment;->trafficLightNum_:J

    .line 12088
    iget-boolean p1, p0, Landroid/car/hardware/xpu/XpuProtoMessage$Segment;->hasCrossImage_:Z

    iget-boolean v0, p3, Landroid/car/hardware/xpu/XpuProtoMessage$Segment;->hasCrossImage_:Z

    invoke-interface {p2, p1, p1, v0, v0}, Lcom/android/carsdk/protobuf/GeneratedMessageLite$Visitor;->visitBoolean(ZZZZ)Z

    move-result p1

    iput-boolean p1, p0, Landroid/car/hardware/xpu/XpuProtoMessage$Segment;->hasCrossImage_:Z

    .line 12090
    iget-object p1, p0, Landroid/car/hardware/xpu/XpuProtoMessage$Segment;->guideboardName_:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result p1

    xor-int/2addr p1, v2

    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$Segment;->guideboardName_:Ljava/lang/String;

    iget-object v3, p3, Landroid/car/hardware/xpu/XpuProtoMessage$Segment;->guideboardName_:Ljava/lang/String;

    .line 12091
    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    xor-int/2addr v3, v2

    iget-object v4, p3, Landroid/car/hardware/xpu/XpuProtoMessage$Segment;->guideboardName_:Ljava/lang/String;

    .line 12090
    invoke-interface {p2, p1, v0, v3, v4}, Lcom/android/carsdk/protobuf/GeneratedMessageLite$Visitor;->visitString(ZLjava/lang/String;ZLjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Landroid/car/hardware/xpu/XpuProtoMessage$Segment;->guideboardName_:Ljava/lang/String;

    .line 12092
    iget p1, p0, Landroid/car/hardware/xpu/XpuProtoMessage$Segment;->slope_:I

    if-eqz p1, :cond_10

    move v0, v2

    goto :goto_8

    :cond_10
    move v0, v1

    :goto_8
    iget v3, p3, Landroid/car/hardware/xpu/XpuProtoMessage$Segment;->slope_:I

    if-eqz v3, :cond_11

    move v1, v2

    :cond_11
    invoke-interface {p2, v0, p1, v1, v3}, Lcom/android/carsdk/protobuf/GeneratedMessageLite$Visitor;->visitInt(ZIZI)I

    move-result p1

    iput p1, p0, Landroid/car/hardware/xpu/XpuProtoMessage$Segment;->slope_:I

    .line 12094
    sget-object p1, Lcom/android/carsdk/protobuf/GeneratedMessageLite$MergeFromVisitor;->INSTANCE:Lcom/android/carsdk/protobuf/GeneratedMessageLite$MergeFromVisitor;

    if-ne p2, p1, :cond_12

    .line 12096
    iget p1, p0, Landroid/car/hardware/xpu/XpuProtoMessage$Segment;->bitField0_:I

    iget p2, p3, Landroid/car/hardware/xpu/XpuProtoMessage$Segment;->bitField0_:I

    or-int/2addr p1, p2

    iput p1, p0, Landroid/car/hardware/xpu/XpuProtoMessage$Segment;->bitField0_:I

    :cond_12
    return-object p0

    .line 12078
    :pswitch_4
    new-instance p1, Landroid/car/hardware/xpu/XpuProtoMessage$Segment$Builder;

    invoke-direct {p1, v0}, Landroid/car/hardware/xpu/XpuProtoMessage$Segment$Builder;-><init>(Landroid/car/hardware/xpu/XpuProtoMessage$1;)V

    return-object p1

    .line 12074
    :pswitch_5
    iget-object p1, p0, Landroid/car/hardware/xpu/XpuProtoMessage$Segment;->links_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    invoke-interface {p1}, Lcom/android/carsdk/protobuf/Internal$ProtobufList;->makeImmutable()V

    return-object v0

    .line 12071
    :pswitch_6
    sget-object p1, Landroid/car/hardware/xpu/XpuProtoMessage$Segment;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuProtoMessage$Segment;

    return-object p1

    .line 12068
    :pswitch_7
    new-instance p1, Landroid/car/hardware/xpu/XpuProtoMessage$Segment;

    invoke-direct {p1}, Landroid/car/hardware/xpu/XpuProtoMessage$Segment;-><init>()V

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

.method public getGuideboardName()Ljava/lang/String;
    .locals 1

    .line 11620
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$Segment;->guideboardName_:Ljava/lang/String;

    return-object v0
.end method

.method public getGuideboardNameBytes()Lcom/android/carsdk/protobuf/ByteString;
    .locals 1

    .line 11627
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$Segment;->guideboardName_:Ljava/lang/String;

    invoke-static {v0}, Lcom/android/carsdk/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/android/carsdk/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getHasCrossImage()Z
    .locals 1

    .line 11597
    iget-boolean v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$Segment;->hasCrossImage_:Z

    return v0
.end method

.method public getLength()D
    .locals 2

    .line 11539
    iget-wide v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$Segment;->length_:D

    return-wide v0
.end method

.method public getLinks(I)Landroid/car/hardware/xpu/XpuProtoMessage$Link;
    .locals 1

    .line 11438
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$Segment;->links_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1}, Lcom/android/carsdk/protobuf/Internal$ProtobufList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/car/hardware/xpu/XpuProtoMessage$Link;

    return-object p1
.end method

.method public getLinksCount()I
    .locals 1

    .line 11432
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$Segment;->links_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    invoke-interface {v0}, Lcom/android/carsdk/protobuf/Internal$ProtobufList;->size()I

    move-result v0

    return v0
.end method

.method public getLinksList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/car/hardware/xpu/XpuProtoMessage$Link;",
            ">;"
        }
    .end annotation

    .line 11419
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$Segment;->links_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    return-object v0
.end method

.method public getLinksOrBuilder(I)Landroid/car/hardware/xpu/XpuProtoMessage$LinkOrBuilder;
    .locals 1

    .line 11445
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$Segment;->links_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1}, Lcom/android/carsdk/protobuf/Internal$ProtobufList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/car/hardware/xpu/XpuProtoMessage$LinkOrBuilder;

    return-object p1
.end method

.method public getLinksOrBuilderList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "+",
            "Landroid/car/hardware/xpu/XpuProtoMessage$LinkOrBuilder;",
            ">;"
        }
    .end annotation

    .line 11426
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$Segment;->links_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    return-object v0
.end method

.method public getSerializedSize()I
    .locals 6

    .line 11706
    iget v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$Segment;->memoizedSerializedSize:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    return v0

    :cond_0
    const/4 v0, 0x0

    move v1, v0

    .line 11710
    :goto_0
    iget-object v2, p0, Landroid/car/hardware/xpu/XpuProtoMessage$Segment;->links_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    invoke-interface {v2}, Lcom/android/carsdk/protobuf/Internal$ProtobufList;->size()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 11711
    iget-object v2, p0, Landroid/car/hardware/xpu/XpuProtoMessage$Segment;->links_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    .line 11712
    invoke-interface {v2, v0}, Lcom/android/carsdk/protobuf/Internal$ProtobufList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/carsdk/protobuf/MessageLite;

    const/4 v3, 0x1

    invoke-static {v3, v2}, Lcom/android/carsdk/protobuf/CodedOutputStream;->computeMessageSize(ILcom/android/carsdk/protobuf/MessageLite;)I

    move-result v2

    add-int/2addr v1, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 11714
    :cond_1
    iget-wide v2, p0, Landroid/car/hardware/xpu/XpuProtoMessage$Segment;->length_:D

    const-wide/16 v4, 0x0

    cmpl-double v0, v2, v4

    if-eqz v0, :cond_2

    const/4 v0, 0x2

    .line 11716
    invoke-static {v0, v2, v3}, Lcom/android/carsdk/protobuf/CodedOutputStream;->computeDoubleSize(ID)I

    move-result v0

    add-int/2addr v1, v0

    .line 11718
    :cond_2
    iget-wide v2, p0, Landroid/car/hardware/xpu/XpuProtoMessage$Segment;->trafficLightNum_:J

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-eqz v0, :cond_3

    const/4 v0, 0x3

    .line 11720
    invoke-static {v0, v2, v3}, Lcom/android/carsdk/protobuf/CodedOutputStream;->computeInt64Size(IJ)I

    move-result v0

    add-int/2addr v1, v0

    .line 11722
    :cond_3
    iget-boolean v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$Segment;->hasCrossImage_:Z

    if-eqz v0, :cond_4

    const/4 v2, 0x4

    .line 11724
    invoke-static {v2, v0}, Lcom/android/carsdk/protobuf/CodedOutputStream;->computeBoolSize(IZ)I

    move-result v0

    add-int/2addr v1, v0

    .line 11726
    :cond_4
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$Segment;->guideboardName_:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_5

    const/4 v0, 0x5

    .line 11728
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuProtoMessage$Segment;->getGuideboardName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/android/carsdk/protobuf/CodedOutputStream;->computeStringSize(ILjava/lang/String;)I

    move-result v0

    add-int/2addr v1, v0

    .line 11730
    :cond_5
    iget v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$Segment;->slope_:I

    if-eqz v0, :cond_6

    const/4 v2, 0x6

    .line 11732
    invoke-static {v2, v0}, Lcom/android/carsdk/protobuf/CodedOutputStream;->computeInt32Size(II)I

    move-result v0

    add-int/2addr v1, v0

    .line 11734
    :cond_6
    iput v1, p0, Landroid/car/hardware/xpu/XpuProtoMessage$Segment;->memoizedSerializedSize:I

    return v1
.end method

.method public getSlope()I
    .locals 1

    .line 11666
    iget v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$Segment;->slope_:I

    return v0
.end method

.method public getTrafficLightNum()J
    .locals 2

    .line 11566
    iget-wide v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$Segment;->trafficLightNum_:J

    return-wide v0
.end method

.method public writeTo(Lcom/android/carsdk/protobuf/CodedOutputStream;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 11685
    :goto_0
    iget-object v1, p0, Landroid/car/hardware/xpu/XpuProtoMessage$Segment;->links_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    invoke-interface {v1}, Lcom/android/carsdk/protobuf/Internal$ProtobufList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 11686
    iget-object v1, p0, Landroid/car/hardware/xpu/XpuProtoMessage$Segment;->links_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    invoke-interface {v1, v0}, Lcom/android/carsdk/protobuf/Internal$ProtobufList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/carsdk/protobuf/MessageLite;

    const/4 v2, 0x1

    invoke-virtual {p1, v2, v1}, Lcom/android/carsdk/protobuf/CodedOutputStream;->writeMessage(ILcom/android/carsdk/protobuf/MessageLite;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 11688
    :cond_0
    iget-wide v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$Segment;->length_:D

    const-wide/16 v2, 0x0

    cmpl-double v2, v0, v2

    if-eqz v2, :cond_1

    const/4 v2, 0x2

    .line 11689
    invoke-virtual {p1, v2, v0, v1}, Lcom/android/carsdk/protobuf/CodedOutputStream;->writeDouble(ID)V

    .line 11691
    :cond_1
    iget-wide v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$Segment;->trafficLightNum_:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-eqz v2, :cond_2

    const/4 v2, 0x3

    .line 11692
    invoke-virtual {p1, v2, v0, v1}, Lcom/android/carsdk/protobuf/CodedOutputStream;->writeInt64(IJ)V

    .line 11694
    :cond_2
    iget-boolean v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$Segment;->hasCrossImage_:Z

    if-eqz v0, :cond_3

    const/4 v1, 0x4

    .line 11695
    invoke-virtual {p1, v1, v0}, Lcom/android/carsdk/protobuf/CodedOutputStream;->writeBool(IZ)V

    .line 11697
    :cond_3
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$Segment;->guideboardName_:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_4

    const/4 v0, 0x5

    .line 11698
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuProtoMessage$Segment;->getGuideboardName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/android/carsdk/protobuf/CodedOutputStream;->writeString(ILjava/lang/String;)V

    .line 11700
    :cond_4
    iget v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$Segment;->slope_:I

    if-eqz v0, :cond_5

    const/4 v1, 0x6

    .line 11701
    invoke-virtual {p1, v1, v0}, Lcom/android/carsdk/protobuf/CodedOutputStream;->writeInt32(II)V

    :cond_5
    return-void
.end method
