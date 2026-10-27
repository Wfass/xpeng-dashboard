.class public final Landroid/car/hardware/xpu/XpuProtoMessage$NaviRoutingInfoV2Full;
.super Lcom/android/carsdk/protobuf/GeneratedMessageLite;
.source "XpuProtoMessage.java"

# interfaces
.implements Landroid/car/hardware/xpu/XpuProtoMessage$NaviRoutingInfoV2FullOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/car/hardware/xpu/XpuProtoMessage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "NaviRoutingInfoV2Full"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/car/hardware/xpu/XpuProtoMessage$NaviRoutingInfoV2Full$Builder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/carsdk/protobuf/GeneratedMessageLite<",
        "Landroid/car/hardware/xpu/XpuProtoMessage$NaviRoutingInfoV2Full;",
        "Landroid/car/hardware/xpu/XpuProtoMessage$NaviRoutingInfoV2Full$Builder;",
        ">;",
        "Landroid/car/hardware/xpu/XpuProtoMessage$NaviRoutingInfoV2FullOrBuilder;"
    }
.end annotation


# static fields
.field private static final DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuProtoMessage$NaviRoutingInfoV2Full;

.field public static final NAVI_ROUTING_INFO_V2_FULL_FIELD_NUMBER:I = 0x1

.field private static volatile PARSER:Lcom/android/carsdk/protobuf/Parser; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/carsdk/protobuf/Parser<",
            "Landroid/car/hardware/xpu/XpuProtoMessage$NaviRoutingInfoV2Full;",
            ">;"
        }
    .end annotation
.end field

.field public static final REQUEST_CODE_FIELD_NUMBER:I = 0x3

.field public static final REQUEST_SOURCE_FIELD_NUMBER:I = 0x2

.field public static final TIMESTAMP_FIELD_NUMBER:I = 0x4


# instance fields
.field private bitField0_:I

.field private naviRoutingInfoV2Full_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/carsdk/protobuf/Internal$ProtobufList<",
            "Landroid/car/hardware/xpu/XpuProtoMessage$NaviReloadInfo;",
            ">;"
        }
    .end annotation
.end field

.field private requestCode_:I

.field private requestSource_:I

.field private timestamp_:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 24183
    new-instance v0, Landroid/car/hardware/xpu/XpuProtoMessage$NaviRoutingInfoV2Full;

    invoke-direct {v0}, Landroid/car/hardware/xpu/XpuProtoMessage$NaviRoutingInfoV2Full;-><init>()V

    sput-object v0, Landroid/car/hardware/xpu/XpuProtoMessage$NaviRoutingInfoV2Full;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuProtoMessage$NaviRoutingInfoV2Full;

    .line 24184
    invoke-virtual {v0}, Landroid/car/hardware/xpu/XpuProtoMessage$NaviRoutingInfoV2Full;->makeImmutable()V

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .line 23531
    invoke-direct {p0}, Lcom/android/carsdk/protobuf/GeneratedMessageLite;-><init>()V

    .line 23532
    invoke-static {}, Landroid/car/hardware/xpu/XpuProtoMessage$NaviRoutingInfoV2Full;->emptyProtobufList()Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    move-result-object v0

    iput-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$NaviRoutingInfoV2Full;->naviRoutingInfoV2Full_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    const/4 v0, 0x0

    .line 23533
    iput v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$NaviRoutingInfoV2Full;->requestSource_:I

    .line 23534
    iput v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$NaviRoutingInfoV2Full;->requestCode_:I

    const-wide/16 v0, 0x0

    .line 23535
    iput-wide v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$NaviRoutingInfoV2Full;->timestamp_:J

    return-void
.end method

.method static synthetic access$55200()Landroid/car/hardware/xpu/XpuProtoMessage$NaviRoutingInfoV2Full;
    .locals 1

    .line 23526
    sget-object v0, Landroid/car/hardware/xpu/XpuProtoMessage$NaviRoutingInfoV2Full;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuProtoMessage$NaviRoutingInfoV2Full;

    return-object v0
.end method

.method static synthetic access$55300(Landroid/car/hardware/xpu/XpuProtoMessage$NaviRoutingInfoV2Full;ILandroid/car/hardware/xpu/XpuProtoMessage$NaviReloadInfo;)V
    .locals 0

    .line 23526
    invoke-direct {p0, p1, p2}, Landroid/car/hardware/xpu/XpuProtoMessage$NaviRoutingInfoV2Full;->setNaviRoutingInfoV2Full(ILandroid/car/hardware/xpu/XpuProtoMessage$NaviReloadInfo;)V

    return-void
.end method

.method static synthetic access$55400(Landroid/car/hardware/xpu/XpuProtoMessage$NaviRoutingInfoV2Full;ILandroid/car/hardware/xpu/XpuProtoMessage$NaviReloadInfo$Builder;)V
    .locals 0

    .line 23526
    invoke-direct {p0, p1, p2}, Landroid/car/hardware/xpu/XpuProtoMessage$NaviRoutingInfoV2Full;->setNaviRoutingInfoV2Full(ILandroid/car/hardware/xpu/XpuProtoMessage$NaviReloadInfo$Builder;)V

    return-void
.end method

.method static synthetic access$55500(Landroid/car/hardware/xpu/XpuProtoMessage$NaviRoutingInfoV2Full;Landroid/car/hardware/xpu/XpuProtoMessage$NaviReloadInfo;)V
    .locals 0

    .line 23526
    invoke-direct {p0, p1}, Landroid/car/hardware/xpu/XpuProtoMessage$NaviRoutingInfoV2Full;->addNaviRoutingInfoV2Full(Landroid/car/hardware/xpu/XpuProtoMessage$NaviReloadInfo;)V

    return-void
.end method

.method static synthetic access$55600(Landroid/car/hardware/xpu/XpuProtoMessage$NaviRoutingInfoV2Full;ILandroid/car/hardware/xpu/XpuProtoMessage$NaviReloadInfo;)V
    .locals 0

    .line 23526
    invoke-direct {p0, p1, p2}, Landroid/car/hardware/xpu/XpuProtoMessage$NaviRoutingInfoV2Full;->addNaviRoutingInfoV2Full(ILandroid/car/hardware/xpu/XpuProtoMessage$NaviReloadInfo;)V

    return-void
.end method

.method static synthetic access$55700(Landroid/car/hardware/xpu/XpuProtoMessage$NaviRoutingInfoV2Full;Landroid/car/hardware/xpu/XpuProtoMessage$NaviReloadInfo$Builder;)V
    .locals 0

    .line 23526
    invoke-direct {p0, p1}, Landroid/car/hardware/xpu/XpuProtoMessage$NaviRoutingInfoV2Full;->addNaviRoutingInfoV2Full(Landroid/car/hardware/xpu/XpuProtoMessage$NaviReloadInfo$Builder;)V

    return-void
.end method

.method static synthetic access$55800(Landroid/car/hardware/xpu/XpuProtoMessage$NaviRoutingInfoV2Full;ILandroid/car/hardware/xpu/XpuProtoMessage$NaviReloadInfo$Builder;)V
    .locals 0

    .line 23526
    invoke-direct {p0, p1, p2}, Landroid/car/hardware/xpu/XpuProtoMessage$NaviRoutingInfoV2Full;->addNaviRoutingInfoV2Full(ILandroid/car/hardware/xpu/XpuProtoMessage$NaviReloadInfo$Builder;)V

    return-void
.end method

.method static synthetic access$55900(Landroid/car/hardware/xpu/XpuProtoMessage$NaviRoutingInfoV2Full;Ljava/lang/Iterable;)V
    .locals 0

    .line 23526
    invoke-direct {p0, p1}, Landroid/car/hardware/xpu/XpuProtoMessage$NaviRoutingInfoV2Full;->addAllNaviRoutingInfoV2Full(Ljava/lang/Iterable;)V

    return-void
.end method

.method static synthetic access$56000(Landroid/car/hardware/xpu/XpuProtoMessage$NaviRoutingInfoV2Full;)V
    .locals 0

    .line 23526
    invoke-direct {p0}, Landroid/car/hardware/xpu/XpuProtoMessage$NaviRoutingInfoV2Full;->clearNaviRoutingInfoV2Full()V

    return-void
.end method

.method static synthetic access$56100(Landroid/car/hardware/xpu/XpuProtoMessage$NaviRoutingInfoV2Full;I)V
    .locals 0

    .line 23526
    invoke-direct {p0, p1}, Landroid/car/hardware/xpu/XpuProtoMessage$NaviRoutingInfoV2Full;->removeNaviRoutingInfoV2Full(I)V

    return-void
.end method

.method static synthetic access$56200(Landroid/car/hardware/xpu/XpuProtoMessage$NaviRoutingInfoV2Full;I)V
    .locals 0

    .line 23526
    invoke-direct {p0, p1}, Landroid/car/hardware/xpu/XpuProtoMessage$NaviRoutingInfoV2Full;->setRequestSource(I)V

    return-void
.end method

.method static synthetic access$56300(Landroid/car/hardware/xpu/XpuProtoMessage$NaviRoutingInfoV2Full;)V
    .locals 0

    .line 23526
    invoke-direct {p0}, Landroid/car/hardware/xpu/XpuProtoMessage$NaviRoutingInfoV2Full;->clearRequestSource()V

    return-void
.end method

.method static synthetic access$56400(Landroid/car/hardware/xpu/XpuProtoMessage$NaviRoutingInfoV2Full;I)V
    .locals 0

    .line 23526
    invoke-direct {p0, p1}, Landroid/car/hardware/xpu/XpuProtoMessage$NaviRoutingInfoV2Full;->setRequestCode(I)V

    return-void
.end method

.method static synthetic access$56500(Landroid/car/hardware/xpu/XpuProtoMessage$NaviRoutingInfoV2Full;)V
    .locals 0

    .line 23526
    invoke-direct {p0}, Landroid/car/hardware/xpu/XpuProtoMessage$NaviRoutingInfoV2Full;->clearRequestCode()V

    return-void
.end method

.method static synthetic access$56600(Landroid/car/hardware/xpu/XpuProtoMessage$NaviRoutingInfoV2Full;J)V
    .locals 0

    .line 23526
    invoke-direct {p0, p1, p2}, Landroid/car/hardware/xpu/XpuProtoMessage$NaviRoutingInfoV2Full;->setTimestamp(J)V

    return-void
.end method

.method static synthetic access$56700(Landroid/car/hardware/xpu/XpuProtoMessage$NaviRoutingInfoV2Full;)V
    .locals 0

    .line 23526
    invoke-direct {p0}, Landroid/car/hardware/xpu/XpuProtoMessage$NaviRoutingInfoV2Full;->clearTimestamp()V

    return-void
.end method

.method private addAllNaviRoutingInfoV2Full(Ljava/lang/Iterable;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Landroid/car/hardware/xpu/XpuProtoMessage$NaviReloadInfo;",
            ">;)V"
        }
    .end annotation

    .line 23640
    invoke-direct {p0}, Landroid/car/hardware/xpu/XpuProtoMessage$NaviRoutingInfoV2Full;->ensureNaviRoutingInfoV2FullIsMutable()V

    .line 23641
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$NaviRoutingInfoV2Full;->naviRoutingInfoV2Full_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    invoke-static {p1, v0}, Lcom/android/carsdk/protobuf/AbstractMessageLite;->addAll(Ljava/lang/Iterable;Ljava/util/Collection;)V

    return-void
.end method

.method private addNaviRoutingInfoV2Full(ILandroid/car/hardware/xpu/XpuProtoMessage$NaviReloadInfo$Builder;)V
    .locals 1

    .line 23632
    invoke-direct {p0}, Landroid/car/hardware/xpu/XpuProtoMessage$NaviRoutingInfoV2Full;->ensureNaviRoutingInfoV2FullIsMutable()V

    .line 23633
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$NaviRoutingInfoV2Full;->naviRoutingInfoV2Full_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    invoke-virtual {p2}, Landroid/car/hardware/xpu/XpuProtoMessage$NaviReloadInfo$Builder;->build()Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object p2

    check-cast p2, Landroid/car/hardware/xpu/XpuProtoMessage$NaviReloadInfo;

    invoke-interface {v0, p1, p2}, Lcom/android/carsdk/protobuf/Internal$ProtobufList;->add(ILjava/lang/Object;)V

    return-void
.end method

.method private addNaviRoutingInfoV2Full(ILandroid/car/hardware/xpu/XpuProtoMessage$NaviReloadInfo;)V
    .locals 1

    .line 23614
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 23616
    invoke-direct {p0}, Landroid/car/hardware/xpu/XpuProtoMessage$NaviRoutingInfoV2Full;->ensureNaviRoutingInfoV2FullIsMutable()V

    .line 23617
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$NaviRoutingInfoV2Full;->naviRoutingInfoV2Full_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1, p2}, Lcom/android/carsdk/protobuf/Internal$ProtobufList;->add(ILjava/lang/Object;)V

    return-void
.end method

.method private addNaviRoutingInfoV2Full(Landroid/car/hardware/xpu/XpuProtoMessage$NaviReloadInfo$Builder;)V
    .locals 1

    .line 23624
    invoke-direct {p0}, Landroid/car/hardware/xpu/XpuProtoMessage$NaviRoutingInfoV2Full;->ensureNaviRoutingInfoV2FullIsMutable()V

    .line 23625
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$NaviRoutingInfoV2Full;->naviRoutingInfoV2Full_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    invoke-virtual {p1}, Landroid/car/hardware/xpu/XpuProtoMessage$NaviReloadInfo$Builder;->build()Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Landroid/car/hardware/xpu/XpuProtoMessage$NaviReloadInfo;

    invoke-interface {v0, p1}, Lcom/android/carsdk/protobuf/Internal$ProtobufList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private addNaviRoutingInfoV2Full(Landroid/car/hardware/xpu/XpuProtoMessage$NaviReloadInfo;)V
    .locals 1

    .line 23603
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 23605
    invoke-direct {p0}, Landroid/car/hardware/xpu/XpuProtoMessage$NaviRoutingInfoV2Full;->ensureNaviRoutingInfoV2FullIsMutable()V

    .line 23606
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$NaviRoutingInfoV2Full;->naviRoutingInfoV2Full_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1}, Lcom/android/carsdk/protobuf/Internal$ProtobufList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private clearNaviRoutingInfoV2Full()V
    .locals 1

    .line 23648
    invoke-static {}, Landroid/car/hardware/xpu/XpuProtoMessage$NaviRoutingInfoV2Full;->emptyProtobufList()Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    move-result-object v0

    iput-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$NaviRoutingInfoV2Full;->naviRoutingInfoV2Full_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    return-void
.end method

.method private clearRequestCode()V
    .locals 1

    const/4 v0, 0x0

    .line 23716
    iput v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$NaviRoutingInfoV2Full;->requestCode_:I

    return-void
.end method

.method private clearRequestSource()V
    .locals 1

    const/4 v0, 0x0

    .line 23693
    iput v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$NaviRoutingInfoV2Full;->requestSource_:I

    return-void
.end method

.method private clearTimestamp()V
    .locals 2

    const-wide/16 v0, 0x0

    .line 23751
    iput-wide v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$NaviRoutingInfoV2Full;->timestamp_:J

    return-void
.end method

.method private ensureNaviRoutingInfoV2FullIsMutable()V
    .locals 1

    .line 23573
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$NaviRoutingInfoV2Full;->naviRoutingInfoV2Full_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    invoke-interface {v0}, Lcom/android/carsdk/protobuf/Internal$ProtobufList;->isModifiable()Z

    move-result v0

    if-nez v0, :cond_0

    .line 23574
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$NaviRoutingInfoV2Full;->naviRoutingInfoV2Full_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    .line 23575
    invoke-static {v0}, Lcom/android/carsdk/protobuf/GeneratedMessageLite;->mutableCopy(Lcom/android/carsdk/protobuf/Internal$ProtobufList;)Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    move-result-object v0

    iput-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$NaviRoutingInfoV2Full;->naviRoutingInfoV2Full_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    :cond_0
    return-void
.end method

.method public static getDefaultInstance()Landroid/car/hardware/xpu/XpuProtoMessage$NaviRoutingInfoV2Full;
    .locals 1

    .line 24188
    sget-object v0, Landroid/car/hardware/xpu/XpuProtoMessage$NaviRoutingInfoV2Full;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuProtoMessage$NaviRoutingInfoV2Full;

    return-object v0
.end method

.method public static newBuilder()Landroid/car/hardware/xpu/XpuProtoMessage$NaviRoutingInfoV2Full$Builder;
    .locals 1

    .line 23857
    sget-object v0, Landroid/car/hardware/xpu/XpuProtoMessage$NaviRoutingInfoV2Full;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuProtoMessage$NaviRoutingInfoV2Full;

    invoke-virtual {v0}, Landroid/car/hardware/xpu/XpuProtoMessage$NaviRoutingInfoV2Full;->toBuilder()Lcom/android/carsdk/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Landroid/car/hardware/xpu/XpuProtoMessage$NaviRoutingInfoV2Full$Builder;

    return-object v0
.end method

.method public static newBuilder(Landroid/car/hardware/xpu/XpuProtoMessage$NaviRoutingInfoV2Full;)Landroid/car/hardware/xpu/XpuProtoMessage$NaviRoutingInfoV2Full$Builder;
    .locals 1

    .line 23860
    sget-object v0, Landroid/car/hardware/xpu/XpuProtoMessage$NaviRoutingInfoV2Full;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuProtoMessage$NaviRoutingInfoV2Full;

    invoke-virtual {v0}, Landroid/car/hardware/xpu/XpuProtoMessage$NaviRoutingInfoV2Full;->toBuilder()Lcom/android/carsdk/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Landroid/car/hardware/xpu/XpuProtoMessage$NaviRoutingInfoV2Full$Builder;

    invoke-virtual {v0, p0}, Landroid/car/hardware/xpu/XpuProtoMessage$NaviRoutingInfoV2Full$Builder;->mergeFrom(Lcom/android/carsdk/protobuf/GeneratedMessageLite;)Lcom/android/carsdk/protobuf/GeneratedMessageLite$Builder;

    move-result-object p0

    check-cast p0, Landroid/car/hardware/xpu/XpuProtoMessage$NaviRoutingInfoV2Full$Builder;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Landroid/car/hardware/xpu/XpuProtoMessage$NaviRoutingInfoV2Full;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 23834
    sget-object v0, Landroid/car/hardware/xpu/XpuProtoMessage$NaviRoutingInfoV2Full;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuProtoMessage$NaviRoutingInfoV2Full;

    invoke-static {v0, p0}, Landroid/car/hardware/xpu/XpuProtoMessage$NaviRoutingInfoV2Full;->parseDelimitedFrom(Lcom/android/carsdk/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Landroid/car/hardware/xpu/XpuProtoMessage$NaviRoutingInfoV2Full;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/android/carsdk/protobuf/ExtensionRegistryLite;)Landroid/car/hardware/xpu/XpuProtoMessage$NaviRoutingInfoV2Full;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 23840
    sget-object v0, Landroid/car/hardware/xpu/XpuProtoMessage$NaviRoutingInfoV2Full;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuProtoMessage$NaviRoutingInfoV2Full;

    invoke-static {v0, p0, p1}, Landroid/car/hardware/xpu/XpuProtoMessage$NaviRoutingInfoV2Full;->parseDelimitedFrom(Lcom/android/carsdk/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/android/carsdk/protobuf/ExtensionRegistryLite;)Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Landroid/car/hardware/xpu/XpuProtoMessage$NaviRoutingInfoV2Full;

    return-object p0
.end method

.method public static parseFrom(Lcom/android/carsdk/protobuf/ByteString;)Landroid/car/hardware/xpu/XpuProtoMessage$NaviRoutingInfoV2Full;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/carsdk/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 23798
    sget-object v0, Landroid/car/hardware/xpu/XpuProtoMessage$NaviRoutingInfoV2Full;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuProtoMessage$NaviRoutingInfoV2Full;

    invoke-static {v0, p0}, Lcom/android/carsdk/protobuf/GeneratedMessageLite;->parseFrom(Lcom/android/carsdk/protobuf/GeneratedMessageLite;Lcom/android/carsdk/protobuf/ByteString;)Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Landroid/car/hardware/xpu/XpuProtoMessage$NaviRoutingInfoV2Full;

    return-object p0
.end method

.method public static parseFrom(Lcom/android/carsdk/protobuf/ByteString;Lcom/android/carsdk/protobuf/ExtensionRegistryLite;)Landroid/car/hardware/xpu/XpuProtoMessage$NaviRoutingInfoV2Full;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/carsdk/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 23805
    sget-object v0, Landroid/car/hardware/xpu/XpuProtoMessage$NaviRoutingInfoV2Full;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuProtoMessage$NaviRoutingInfoV2Full;

    invoke-static {v0, p0, p1}, Lcom/android/carsdk/protobuf/GeneratedMessageLite;->parseFrom(Lcom/android/carsdk/protobuf/GeneratedMessageLite;Lcom/android/carsdk/protobuf/ByteString;Lcom/android/carsdk/protobuf/ExtensionRegistryLite;)Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Landroid/car/hardware/xpu/XpuProtoMessage$NaviRoutingInfoV2Full;

    return-object p0
.end method

.method public static parseFrom(Lcom/android/carsdk/protobuf/CodedInputStream;)Landroid/car/hardware/xpu/XpuProtoMessage$NaviRoutingInfoV2Full;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 23845
    sget-object v0, Landroid/car/hardware/xpu/XpuProtoMessage$NaviRoutingInfoV2Full;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuProtoMessage$NaviRoutingInfoV2Full;

    invoke-static {v0, p0}, Lcom/android/carsdk/protobuf/GeneratedMessageLite;->parseFrom(Lcom/android/carsdk/protobuf/GeneratedMessageLite;Lcom/android/carsdk/protobuf/CodedInputStream;)Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Landroid/car/hardware/xpu/XpuProtoMessage$NaviRoutingInfoV2Full;

    return-object p0
.end method

.method public static parseFrom(Lcom/android/carsdk/protobuf/CodedInputStream;Lcom/android/carsdk/protobuf/ExtensionRegistryLite;)Landroid/car/hardware/xpu/XpuProtoMessage$NaviRoutingInfoV2Full;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 23852
    sget-object v0, Landroid/car/hardware/xpu/XpuProtoMessage$NaviRoutingInfoV2Full;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuProtoMessage$NaviRoutingInfoV2Full;

    invoke-static {v0, p0, p1}, Lcom/android/carsdk/protobuf/GeneratedMessageLite;->parseFrom(Lcom/android/carsdk/protobuf/GeneratedMessageLite;Lcom/android/carsdk/protobuf/CodedInputStream;Lcom/android/carsdk/protobuf/ExtensionRegistryLite;)Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Landroid/car/hardware/xpu/XpuProtoMessage$NaviRoutingInfoV2Full;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Landroid/car/hardware/xpu/XpuProtoMessage$NaviRoutingInfoV2Full;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 23822
    sget-object v0, Landroid/car/hardware/xpu/XpuProtoMessage$NaviRoutingInfoV2Full;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuProtoMessage$NaviRoutingInfoV2Full;

    invoke-static {v0, p0}, Lcom/android/carsdk/protobuf/GeneratedMessageLite;->parseFrom(Lcom/android/carsdk/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Landroid/car/hardware/xpu/XpuProtoMessage$NaviRoutingInfoV2Full;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/android/carsdk/protobuf/ExtensionRegistryLite;)Landroid/car/hardware/xpu/XpuProtoMessage$NaviRoutingInfoV2Full;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 23829
    sget-object v0, Landroid/car/hardware/xpu/XpuProtoMessage$NaviRoutingInfoV2Full;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuProtoMessage$NaviRoutingInfoV2Full;

    invoke-static {v0, p0, p1}, Lcom/android/carsdk/protobuf/GeneratedMessageLite;->parseFrom(Lcom/android/carsdk/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/android/carsdk/protobuf/ExtensionRegistryLite;)Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Landroid/car/hardware/xpu/XpuProtoMessage$NaviRoutingInfoV2Full;

    return-object p0
.end method

.method public static parseFrom([B)Landroid/car/hardware/xpu/XpuProtoMessage$NaviRoutingInfoV2Full;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/carsdk/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 23810
    sget-object v0, Landroid/car/hardware/xpu/XpuProtoMessage$NaviRoutingInfoV2Full;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuProtoMessage$NaviRoutingInfoV2Full;

    invoke-static {v0, p0}, Lcom/android/carsdk/protobuf/GeneratedMessageLite;->parseFrom(Lcom/android/carsdk/protobuf/GeneratedMessageLite;[B)Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Landroid/car/hardware/xpu/XpuProtoMessage$NaviRoutingInfoV2Full;

    return-object p0
.end method

.method public static parseFrom([BLcom/android/carsdk/protobuf/ExtensionRegistryLite;)Landroid/car/hardware/xpu/XpuProtoMessage$NaviRoutingInfoV2Full;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/carsdk/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 23817
    sget-object v0, Landroid/car/hardware/xpu/XpuProtoMessage$NaviRoutingInfoV2Full;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuProtoMessage$NaviRoutingInfoV2Full;

    invoke-static {v0, p0, p1}, Lcom/android/carsdk/protobuf/GeneratedMessageLite;->parseFrom(Lcom/android/carsdk/protobuf/GeneratedMessageLite;[BLcom/android/carsdk/protobuf/ExtensionRegistryLite;)Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Landroid/car/hardware/xpu/XpuProtoMessage$NaviRoutingInfoV2Full;

    return-object p0
.end method

.method public static parser()Lcom/android/carsdk/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/android/carsdk/protobuf/Parser<",
            "Landroid/car/hardware/xpu/XpuProtoMessage$NaviRoutingInfoV2Full;",
            ">;"
        }
    .end annotation

    .line 24194
    sget-object v0, Landroid/car/hardware/xpu/XpuProtoMessage$NaviRoutingInfoV2Full;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuProtoMessage$NaviRoutingInfoV2Full;

    invoke-virtual {v0}, Landroid/car/hardware/xpu/XpuProtoMessage$NaviRoutingInfoV2Full;->getParserForType()Lcom/android/carsdk/protobuf/Parser;

    move-result-object v0

    return-object v0
.end method

.method private removeNaviRoutingInfoV2Full(I)V
    .locals 1

    .line 23654
    invoke-direct {p0}, Landroid/car/hardware/xpu/XpuProtoMessage$NaviRoutingInfoV2Full;->ensureNaviRoutingInfoV2FullIsMutable()V

    .line 23655
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$NaviRoutingInfoV2Full;->naviRoutingInfoV2Full_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1}, Lcom/android/carsdk/protobuf/Internal$ProtobufList;->remove(I)Ljava/lang/Object;

    return-void
.end method

.method private setNaviRoutingInfoV2Full(ILandroid/car/hardware/xpu/XpuProtoMessage$NaviReloadInfo$Builder;)V
    .locals 1

    .line 23595
    invoke-direct {p0}, Landroid/car/hardware/xpu/XpuProtoMessage$NaviRoutingInfoV2Full;->ensureNaviRoutingInfoV2FullIsMutable()V

    .line 23596
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$NaviRoutingInfoV2Full;->naviRoutingInfoV2Full_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    invoke-virtual {p2}, Landroid/car/hardware/xpu/XpuProtoMessage$NaviReloadInfo$Builder;->build()Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object p2

    check-cast p2, Landroid/car/hardware/xpu/XpuProtoMessage$NaviReloadInfo;

    invoke-interface {v0, p1, p2}, Lcom/android/carsdk/protobuf/Internal$ProtobufList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private setNaviRoutingInfoV2Full(ILandroid/car/hardware/xpu/XpuProtoMessage$NaviReloadInfo;)V
    .locals 1

    .line 23585
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 23587
    invoke-direct {p0}, Landroid/car/hardware/xpu/XpuProtoMessage$NaviRoutingInfoV2Full;->ensureNaviRoutingInfoV2FullIsMutable()V

    .line 23588
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$NaviRoutingInfoV2Full;->naviRoutingInfoV2Full_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1, p2}, Lcom/android/carsdk/protobuf/Internal$ProtobufList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private setRequestCode(I)V
    .locals 0

    .line 23709
    iput p1, p0, Landroid/car/hardware/xpu/XpuProtoMessage$NaviRoutingInfoV2Full;->requestCode_:I

    return-void
.end method

.method private setRequestSource(I)V
    .locals 0

    .line 23681
    iput p1, p0, Landroid/car/hardware/xpu/XpuProtoMessage$NaviRoutingInfoV2Full;->requestSource_:I

    return-void
.end method

.method private setTimestamp(J)V
    .locals 0

    .line 23740
    iput-wide p1, p0, Landroid/car/hardware/xpu/XpuProtoMessage$NaviRoutingInfoV2Full;->timestamp_:J

    return-void
.end method


# virtual methods
.method protected final dynamicMethod(Lcom/android/carsdk/protobuf/GeneratedMessageLite$MethodToInvoke;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 9

    .line 24079
    sget-object v0, Landroid/car/hardware/xpu/XpuProtoMessage$1;->$SwitchMap$com$google$protobuf$GeneratedMessageLite$MethodToInvoke:[I

    invoke-virtual {p1}, Lcom/android/carsdk/protobuf/GeneratedMessageLite$MethodToInvoke;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x1

    packed-switch p1, :pswitch_data_0

    .line 24176
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1

    .line 24167
    :pswitch_0
    sget-object p1, Landroid/car/hardware/xpu/XpuProtoMessage$NaviRoutingInfoV2Full;->PARSER:Lcom/android/carsdk/protobuf/Parser;

    if-nez p1, :cond_1

    const-class p1, Landroid/car/hardware/xpu/XpuProtoMessage$NaviRoutingInfoV2Full;

    monitor-enter p1

    .line 24168
    :try_start_0
    sget-object p2, Landroid/car/hardware/xpu/XpuProtoMessage$NaviRoutingInfoV2Full;->PARSER:Lcom/android/carsdk/protobuf/Parser;

    if-nez p2, :cond_0

    .line 24169
    new-instance p2, Lcom/android/carsdk/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;

    sget-object p3, Landroid/car/hardware/xpu/XpuProtoMessage$NaviRoutingInfoV2Full;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuProtoMessage$NaviRoutingInfoV2Full;

    invoke-direct {p2, p3}, Lcom/android/carsdk/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;-><init>(Lcom/android/carsdk/protobuf/GeneratedMessageLite;)V

    sput-object p2, Landroid/car/hardware/xpu/XpuProtoMessage$NaviRoutingInfoV2Full;->PARSER:Lcom/android/carsdk/protobuf/Parser;

    .line 24171
    :cond_0
    monitor-exit p1

    goto :goto_0

    :catchall_0
    move-exception p2

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p2

    .line 24173
    :cond_1
    :goto_0
    sget-object p1, Landroid/car/hardware/xpu/XpuProtoMessage$NaviRoutingInfoV2Full;->PARSER:Lcom/android/carsdk/protobuf/Parser;

    return-object p1

    .line 24110
    :pswitch_1
    check-cast p2, Lcom/android/carsdk/protobuf/CodedInputStream;

    .line 24112
    check-cast p3, Lcom/android/carsdk/protobuf/ExtensionRegistryLite;

    :cond_2
    :goto_1
    if-nez v1, :cond_9

    .line 24117
    :try_start_1
    invoke-virtual {p2}, Lcom/android/carsdk/protobuf/CodedInputStream;->readTag()I

    move-result p1

    if-eqz p1, :cond_8

    const/16 v0, 0xa

    if-eq p1, v0, :cond_6

    const/16 v0, 0x10

    if-eq p1, v0, :cond_5

    const/16 v0, 0x18

    if-eq p1, v0, :cond_4

    const/16 v0, 0x20

    if-eq p1, v0, :cond_3

    .line 24123
    invoke-virtual {p2, p1}, Lcom/android/carsdk/protobuf/CodedInputStream;->skipField(I)Z

    move-result p1

    if-nez p1, :cond_2

    goto :goto_2

    .line 24149
    :cond_3
    invoke-virtual {p2}, Lcom/android/carsdk/protobuf/CodedInputStream;->readInt64()J

    move-result-wide v3

    iput-wide v3, p0, Landroid/car/hardware/xpu/XpuProtoMessage$NaviRoutingInfoV2Full;->timestamp_:J

    goto :goto_1

    .line 24144
    :cond_4
    invoke-virtual {p2}, Lcom/android/carsdk/protobuf/CodedInputStream;->readInt32()I

    move-result p1

    iput p1, p0, Landroid/car/hardware/xpu/XpuProtoMessage$NaviRoutingInfoV2Full;->requestCode_:I

    goto :goto_1

    .line 24139
    :cond_5
    invoke-virtual {p2}, Lcom/android/carsdk/protobuf/CodedInputStream;->readInt32()I

    move-result p1

    iput p1, p0, Landroid/car/hardware/xpu/XpuProtoMessage$NaviRoutingInfoV2Full;->requestSource_:I

    goto :goto_1

    .line 24129
    :cond_6
    iget-object p1, p0, Landroid/car/hardware/xpu/XpuProtoMessage$NaviRoutingInfoV2Full;->naviRoutingInfoV2Full_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    invoke-interface {p1}, Lcom/android/carsdk/protobuf/Internal$ProtobufList;->isModifiable()Z

    move-result p1

    if-nez p1, :cond_7

    .line 24130
    iget-object p1, p0, Landroid/car/hardware/xpu/XpuProtoMessage$NaviRoutingInfoV2Full;->naviRoutingInfoV2Full_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    .line 24131
    invoke-static {p1}, Lcom/android/carsdk/protobuf/GeneratedMessageLite;->mutableCopy(Lcom/android/carsdk/protobuf/Internal$ProtobufList;)Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    move-result-object p1

    iput-object p1, p0, Landroid/car/hardware/xpu/XpuProtoMessage$NaviRoutingInfoV2Full;->naviRoutingInfoV2Full_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    .line 24133
    :cond_7
    iget-object p1, p0, Landroid/car/hardware/xpu/XpuProtoMessage$NaviRoutingInfoV2Full;->naviRoutingInfoV2Full_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    .line 24134
    invoke-static {}, Landroid/car/hardware/xpu/XpuProtoMessage$NaviReloadInfo;->parser()Lcom/android/carsdk/protobuf/Parser;

    move-result-object v0

    invoke-virtual {p2, v0, p3}, Lcom/android/carsdk/protobuf/CodedInputStream;->readMessage(Lcom/android/carsdk/protobuf/Parser;Lcom/android/carsdk/protobuf/ExtensionRegistryLite;)Lcom/android/carsdk/protobuf/MessageLite;

    move-result-object v0

    check-cast v0, Landroid/car/hardware/xpu/XpuProtoMessage$NaviReloadInfo;

    .line 24133
    invoke-interface {p1, v0}, Lcom/android/carsdk/protobuf/Internal$ProtobufList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Lcom/android/carsdk/protobuf/InvalidProtocolBufferException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    :cond_8
    :goto_2
    move v1, v2

    goto :goto_1

    :catchall_1
    move-exception p1

    goto :goto_3

    :catch_0
    move-exception p1

    .line 24157
    :try_start_2
    new-instance p2, Ljava/lang/RuntimeException;

    new-instance p3, Lcom/android/carsdk/protobuf/InvalidProtocolBufferException;

    .line 24159
    invoke-virtual {p1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p3, p1}, Lcom/android/carsdk/protobuf/InvalidProtocolBufferException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, p0}, Lcom/android/carsdk/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/android/carsdk/protobuf/MessageLite;)Lcom/android/carsdk/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p2

    :catch_1
    move-exception p1

    .line 24155
    new-instance p2, Ljava/lang/RuntimeException;

    invoke-virtual {p1, p0}, Lcom/android/carsdk/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/android/carsdk/protobuf/MessageLite;)Lcom/android/carsdk/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 24160
    :goto_3
    throw p1

    .line 24164
    :cond_9
    :pswitch_2
    sget-object p1, Landroid/car/hardware/xpu/XpuProtoMessage$NaviRoutingInfoV2Full;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuProtoMessage$NaviRoutingInfoV2Full;

    return-object p1

    .line 24094
    :pswitch_3
    check-cast p2, Lcom/android/carsdk/protobuf/GeneratedMessageLite$Visitor;

    .line 24095
    check-cast p3, Landroid/car/hardware/xpu/XpuProtoMessage$NaviRoutingInfoV2Full;

    .line 24096
    iget-object p1, p0, Landroid/car/hardware/xpu/XpuProtoMessage$NaviRoutingInfoV2Full;->naviRoutingInfoV2Full_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    iget-object v0, p3, Landroid/car/hardware/xpu/XpuProtoMessage$NaviRoutingInfoV2Full;->naviRoutingInfoV2Full_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    invoke-interface {p2, p1, v0}, Lcom/android/carsdk/protobuf/GeneratedMessageLite$Visitor;->visitList(Lcom/android/carsdk/protobuf/Internal$ProtobufList;Lcom/android/carsdk/protobuf/Internal$ProtobufList;)Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    move-result-object p1

    iput-object p1, p0, Landroid/car/hardware/xpu/XpuProtoMessage$NaviRoutingInfoV2Full;->naviRoutingInfoV2Full_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    .line 24097
    iget p1, p0, Landroid/car/hardware/xpu/XpuProtoMessage$NaviRoutingInfoV2Full;->requestSource_:I

    if-eqz p1, :cond_a

    move v0, v2

    goto :goto_4

    :cond_a
    move v0, v1

    :goto_4
    iget v3, p3, Landroid/car/hardware/xpu/XpuProtoMessage$NaviRoutingInfoV2Full;->requestSource_:I

    if-eqz v3, :cond_b

    move v4, v2

    goto :goto_5

    :cond_b
    move v4, v1

    :goto_5
    invoke-interface {p2, v0, p1, v4, v3}, Lcom/android/carsdk/protobuf/GeneratedMessageLite$Visitor;->visitInt(ZIZI)I

    move-result p1

    iput p1, p0, Landroid/car/hardware/xpu/XpuProtoMessage$NaviRoutingInfoV2Full;->requestSource_:I

    .line 24099
    iget p1, p0, Landroid/car/hardware/xpu/XpuProtoMessage$NaviRoutingInfoV2Full;->requestCode_:I

    if-eqz p1, :cond_c

    move v0, v2

    goto :goto_6

    :cond_c
    move v0, v1

    :goto_6
    iget v3, p3, Landroid/car/hardware/xpu/XpuProtoMessage$NaviRoutingInfoV2Full;->requestCode_:I

    if-eqz v3, :cond_d

    move v4, v2

    goto :goto_7

    :cond_d
    move v4, v1

    :goto_7
    invoke-interface {p2, v0, p1, v4, v3}, Lcom/android/carsdk/protobuf/GeneratedMessageLite$Visitor;->visitInt(ZIZI)I

    move-result p1

    iput p1, p0, Landroid/car/hardware/xpu/XpuProtoMessage$NaviRoutingInfoV2Full;->requestCode_:I

    .line 24101
    iget-wide v3, p0, Landroid/car/hardware/xpu/XpuProtoMessage$NaviRoutingInfoV2Full;->timestamp_:J

    const-wide/16 v5, 0x0

    cmp-long p1, v3, v5

    if-eqz p1, :cond_e

    move p1, v2

    goto :goto_8

    :cond_e
    move p1, v1

    :goto_8
    iget-wide v7, p3, Landroid/car/hardware/xpu/XpuProtoMessage$NaviRoutingInfoV2Full;->timestamp_:J

    cmp-long v0, v7, v5

    if-eqz v0, :cond_f

    move v5, v2

    goto :goto_9

    :cond_f
    move v5, v1

    :goto_9
    move-object v0, p2

    move v1, p1

    move-wide v2, v3

    move v4, v5

    move-wide v5, v7

    invoke-interface/range {v0 .. v6}, Lcom/android/carsdk/protobuf/GeneratedMessageLite$Visitor;->visitLong(ZJZJ)J

    move-result-wide v0

    iput-wide v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$NaviRoutingInfoV2Full;->timestamp_:J

    .line 24103
    sget-object p1, Lcom/android/carsdk/protobuf/GeneratedMessageLite$MergeFromVisitor;->INSTANCE:Lcom/android/carsdk/protobuf/GeneratedMessageLite$MergeFromVisitor;

    if-ne p2, p1, :cond_10

    .line 24105
    iget p1, p0, Landroid/car/hardware/xpu/XpuProtoMessage$NaviRoutingInfoV2Full;->bitField0_:I

    iget p2, p3, Landroid/car/hardware/xpu/XpuProtoMessage$NaviRoutingInfoV2Full;->bitField0_:I

    or-int/2addr p1, p2

    iput p1, p0, Landroid/car/hardware/xpu/XpuProtoMessage$NaviRoutingInfoV2Full;->bitField0_:I

    :cond_10
    return-object p0

    .line 24091
    :pswitch_4
    new-instance p1, Landroid/car/hardware/xpu/XpuProtoMessage$NaviRoutingInfoV2Full$Builder;

    invoke-direct {p1, v0}, Landroid/car/hardware/xpu/XpuProtoMessage$NaviRoutingInfoV2Full$Builder;-><init>(Landroid/car/hardware/xpu/XpuProtoMessage$1;)V

    return-object p1

    .line 24087
    :pswitch_5
    iget-object p1, p0, Landroid/car/hardware/xpu/XpuProtoMessage$NaviRoutingInfoV2Full;->naviRoutingInfoV2Full_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    invoke-interface {p1}, Lcom/android/carsdk/protobuf/Internal$ProtobufList;->makeImmutable()V

    return-object v0

    .line 24084
    :pswitch_6
    sget-object p1, Landroid/car/hardware/xpu/XpuProtoMessage$NaviRoutingInfoV2Full;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuProtoMessage$NaviRoutingInfoV2Full;

    return-object p1

    .line 24081
    :pswitch_7
    new-instance p1, Landroid/car/hardware/xpu/XpuProtoMessage$NaviRoutingInfoV2Full;

    invoke-direct {p1}, Landroid/car/hardware/xpu/XpuProtoMessage$NaviRoutingInfoV2Full;-><init>()V

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

.method public getNaviRoutingInfoV2Full(I)Landroid/car/hardware/xpu/XpuProtoMessage$NaviReloadInfo;
    .locals 1

    .line 23563
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$NaviRoutingInfoV2Full;->naviRoutingInfoV2Full_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1}, Lcom/android/carsdk/protobuf/Internal$ProtobufList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/car/hardware/xpu/XpuProtoMessage$NaviReloadInfo;

    return-object p1
.end method

.method public getNaviRoutingInfoV2FullCount()I
    .locals 1

    .line 23557
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$NaviRoutingInfoV2Full;->naviRoutingInfoV2Full_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    invoke-interface {v0}, Lcom/android/carsdk/protobuf/Internal$ProtobufList;->size()I

    move-result v0

    return v0
.end method

.method public getNaviRoutingInfoV2FullList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/car/hardware/xpu/XpuProtoMessage$NaviReloadInfo;",
            ">;"
        }
    .end annotation

    .line 23544
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$NaviRoutingInfoV2Full;->naviRoutingInfoV2Full_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    return-object v0
.end method

.method public getNaviRoutingInfoV2FullOrBuilder(I)Landroid/car/hardware/xpu/XpuProtoMessage$NaviReloadInfoOrBuilder;
    .locals 1

    .line 23570
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$NaviRoutingInfoV2Full;->naviRoutingInfoV2Full_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1}, Lcom/android/carsdk/protobuf/Internal$ProtobufList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/car/hardware/xpu/XpuProtoMessage$NaviReloadInfoOrBuilder;

    return-object p1
.end method

.method public getNaviRoutingInfoV2FullOrBuilderList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "+",
            "Landroid/car/hardware/xpu/XpuProtoMessage$NaviReloadInfoOrBuilder;",
            ">;"
        }
    .end annotation

    .line 23551
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$NaviRoutingInfoV2Full;->naviRoutingInfoV2Full_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    return-object v0
.end method

.method public getRequestCode()I
    .locals 1

    .line 23702
    iget v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$NaviRoutingInfoV2Full;->requestCode_:I

    return v0
.end method

.method public getRequestSource()I
    .locals 1

    .line 23669
    iget v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$NaviRoutingInfoV2Full;->requestSource_:I

    return v0
.end method

.method public getSerializedSize()I
    .locals 6

    .line 23771
    iget v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$NaviRoutingInfoV2Full;->memoizedSerializedSize:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    return v0

    :cond_0
    const/4 v0, 0x0

    move v1, v0

    .line 23775
    :goto_0
    iget-object v2, p0, Landroid/car/hardware/xpu/XpuProtoMessage$NaviRoutingInfoV2Full;->naviRoutingInfoV2Full_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    invoke-interface {v2}, Lcom/android/carsdk/protobuf/Internal$ProtobufList;->size()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 23776
    iget-object v2, p0, Landroid/car/hardware/xpu/XpuProtoMessage$NaviRoutingInfoV2Full;->naviRoutingInfoV2Full_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    .line 23777
    invoke-interface {v2, v0}, Lcom/android/carsdk/protobuf/Internal$ProtobufList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/carsdk/protobuf/MessageLite;

    const/4 v3, 0x1

    invoke-static {v3, v2}, Lcom/android/carsdk/protobuf/CodedOutputStream;->computeMessageSize(ILcom/android/carsdk/protobuf/MessageLite;)I

    move-result v2

    add-int/2addr v1, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 23779
    :cond_1
    iget v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$NaviRoutingInfoV2Full;->requestSource_:I

    if-eqz v0, :cond_2

    const/4 v2, 0x2

    .line 23781
    invoke-static {v2, v0}, Lcom/android/carsdk/protobuf/CodedOutputStream;->computeInt32Size(II)I

    move-result v0

    add-int/2addr v1, v0

    .line 23783
    :cond_2
    iget v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$NaviRoutingInfoV2Full;->requestCode_:I

    if-eqz v0, :cond_3

    const/4 v2, 0x3

    .line 23785
    invoke-static {v2, v0}, Lcom/android/carsdk/protobuf/CodedOutputStream;->computeInt32Size(II)I

    move-result v0

    add-int/2addr v1, v0

    .line 23787
    :cond_3
    iget-wide v2, p0, Landroid/car/hardware/xpu/XpuProtoMessage$NaviRoutingInfoV2Full;->timestamp_:J

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-eqz v0, :cond_4

    const/4 v0, 0x4

    .line 23789
    invoke-static {v0, v2, v3}, Lcom/android/carsdk/protobuf/CodedOutputStream;->computeInt64Size(IJ)I

    move-result v0

    add-int/2addr v1, v0

    .line 23791
    :cond_4
    iput v1, p0, Landroid/car/hardware/xpu/XpuProtoMessage$NaviRoutingInfoV2Full;->memoizedSerializedSize:I

    return v1
.end method

.method public getTimestamp()J
    .locals 2

    .line 23729
    iget-wide v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$NaviRoutingInfoV2Full;->timestamp_:J

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

    .line 23756
    :goto_0
    iget-object v1, p0, Landroid/car/hardware/xpu/XpuProtoMessage$NaviRoutingInfoV2Full;->naviRoutingInfoV2Full_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    invoke-interface {v1}, Lcom/android/carsdk/protobuf/Internal$ProtobufList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 23757
    iget-object v1, p0, Landroid/car/hardware/xpu/XpuProtoMessage$NaviRoutingInfoV2Full;->naviRoutingInfoV2Full_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    invoke-interface {v1, v0}, Lcom/android/carsdk/protobuf/Internal$ProtobufList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/carsdk/protobuf/MessageLite;

    const/4 v2, 0x1

    invoke-virtual {p1, v2, v1}, Lcom/android/carsdk/protobuf/CodedOutputStream;->writeMessage(ILcom/android/carsdk/protobuf/MessageLite;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 23759
    :cond_0
    iget v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$NaviRoutingInfoV2Full;->requestSource_:I

    if-eqz v0, :cond_1

    const/4 v1, 0x2

    .line 23760
    invoke-virtual {p1, v1, v0}, Lcom/android/carsdk/protobuf/CodedOutputStream;->writeInt32(II)V

    .line 23762
    :cond_1
    iget v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$NaviRoutingInfoV2Full;->requestCode_:I

    if-eqz v0, :cond_2

    const/4 v1, 0x3

    .line 23763
    invoke-virtual {p1, v1, v0}, Lcom/android/carsdk/protobuf/CodedOutputStream;->writeInt32(II)V

    .line 23765
    :cond_2
    iget-wide v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$NaviRoutingInfoV2Full;->timestamp_:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-eqz v2, :cond_3

    const/4 v2, 0x4

    .line 23766
    invoke-virtual {p1, v2, v0, v1}, Lcom/android/carsdk/protobuf/CodedOutputStream;->writeInt64(IJ)V

    :cond_3
    return-void
.end method
