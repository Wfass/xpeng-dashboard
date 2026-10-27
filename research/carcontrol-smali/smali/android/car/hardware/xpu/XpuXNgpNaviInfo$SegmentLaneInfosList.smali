.class public final Landroid/car/hardware/xpu/XpuXNgpNaviInfo$SegmentLaneInfosList;
.super Lcom/android/carsdk/protobuf/GeneratedMessageLite;
.source "XpuXNgpNaviInfo.java"

# interfaces
.implements Landroid/car/hardware/xpu/XpuXNgpNaviInfo$SegmentLaneInfosListOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/car/hardware/xpu/XpuXNgpNaviInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "SegmentLaneInfosList"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/car/hardware/xpu/XpuXNgpNaviInfo$SegmentLaneInfosList$Builder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/carsdk/protobuf/GeneratedMessageLite<",
        "Landroid/car/hardware/xpu/XpuXNgpNaviInfo$SegmentLaneInfosList;",
        "Landroid/car/hardware/xpu/XpuXNgpNaviInfo$SegmentLaneInfosList$Builder;",
        ">;",
        "Landroid/car/hardware/xpu/XpuXNgpNaviInfo$SegmentLaneInfosListOrBuilder;"
    }
.end annotation


# static fields
.field private static final DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuXNgpNaviInfo$SegmentLaneInfosList;

.field public static final INFOS_FIELD_NUMBER:I = 0x1

.field public static final NAVIGATION_ID_FIELD_NUMBER:I = 0x2

.field private static volatile PARSER:Lcom/android/carsdk/protobuf/Parser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/carsdk/protobuf/Parser<",
            "Landroid/car/hardware/xpu/XpuXNgpNaviInfo$SegmentLaneInfosList;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private bitField0_:I

.field private infos_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/carsdk/protobuf/Internal$ProtobufList<",
            "Landroid/car/hardware/xpu/XpuXNgpNaviInfo$SegmentLaneInfo;",
            ">;"
        }
    .end annotation
.end field

.field private navigationId_:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 10846
    new-instance v0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$SegmentLaneInfosList;

    invoke-direct {v0}, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$SegmentLaneInfosList;-><init>()V

    sput-object v0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$SegmentLaneInfosList;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuXNgpNaviInfo$SegmentLaneInfosList;

    .line 10847
    invoke-virtual {v0}, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$SegmentLaneInfosList;->makeImmutable()V

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .line 10246
    invoke-direct {p0}, Lcom/android/carsdk/protobuf/GeneratedMessageLite;-><init>()V

    .line 10247
    invoke-static {}, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$SegmentLaneInfosList;->emptyProtobufList()Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    move-result-object v0

    iput-object v0, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$SegmentLaneInfosList;->infos_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    const-wide/16 v0, 0x0

    .line 10248
    iput-wide v0, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$SegmentLaneInfosList;->navigationId_:J

    return-void
.end method

.method static synthetic access$15000()Landroid/car/hardware/xpu/XpuXNgpNaviInfo$SegmentLaneInfosList;
    .locals 1

    .line 10241
    sget-object v0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$SegmentLaneInfosList;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuXNgpNaviInfo$SegmentLaneInfosList;

    return-object v0
.end method

.method static synthetic access$15100(Landroid/car/hardware/xpu/XpuXNgpNaviInfo$SegmentLaneInfosList;ILandroid/car/hardware/xpu/XpuXNgpNaviInfo$SegmentLaneInfo;)V
    .locals 0

    .line 10241
    invoke-direct {p0, p1, p2}, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$SegmentLaneInfosList;->setInfos(ILandroid/car/hardware/xpu/XpuXNgpNaviInfo$SegmentLaneInfo;)V

    return-void
.end method

.method static synthetic access$15200(Landroid/car/hardware/xpu/XpuXNgpNaviInfo$SegmentLaneInfosList;ILandroid/car/hardware/xpu/XpuXNgpNaviInfo$SegmentLaneInfo$Builder;)V
    .locals 0

    .line 10241
    invoke-direct {p0, p1, p2}, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$SegmentLaneInfosList;->setInfos(ILandroid/car/hardware/xpu/XpuXNgpNaviInfo$SegmentLaneInfo$Builder;)V

    return-void
.end method

.method static synthetic access$15300(Landroid/car/hardware/xpu/XpuXNgpNaviInfo$SegmentLaneInfosList;Landroid/car/hardware/xpu/XpuXNgpNaviInfo$SegmentLaneInfo;)V
    .locals 0

    .line 10241
    invoke-direct {p0, p1}, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$SegmentLaneInfosList;->addInfos(Landroid/car/hardware/xpu/XpuXNgpNaviInfo$SegmentLaneInfo;)V

    return-void
.end method

.method static synthetic access$15400(Landroid/car/hardware/xpu/XpuXNgpNaviInfo$SegmentLaneInfosList;ILandroid/car/hardware/xpu/XpuXNgpNaviInfo$SegmentLaneInfo;)V
    .locals 0

    .line 10241
    invoke-direct {p0, p1, p2}, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$SegmentLaneInfosList;->addInfos(ILandroid/car/hardware/xpu/XpuXNgpNaviInfo$SegmentLaneInfo;)V

    return-void
.end method

.method static synthetic access$15500(Landroid/car/hardware/xpu/XpuXNgpNaviInfo$SegmentLaneInfosList;Landroid/car/hardware/xpu/XpuXNgpNaviInfo$SegmentLaneInfo$Builder;)V
    .locals 0

    .line 10241
    invoke-direct {p0, p1}, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$SegmentLaneInfosList;->addInfos(Landroid/car/hardware/xpu/XpuXNgpNaviInfo$SegmentLaneInfo$Builder;)V

    return-void
.end method

.method static synthetic access$15600(Landroid/car/hardware/xpu/XpuXNgpNaviInfo$SegmentLaneInfosList;ILandroid/car/hardware/xpu/XpuXNgpNaviInfo$SegmentLaneInfo$Builder;)V
    .locals 0

    .line 10241
    invoke-direct {p0, p1, p2}, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$SegmentLaneInfosList;->addInfos(ILandroid/car/hardware/xpu/XpuXNgpNaviInfo$SegmentLaneInfo$Builder;)V

    return-void
.end method

.method static synthetic access$15700(Landroid/car/hardware/xpu/XpuXNgpNaviInfo$SegmentLaneInfosList;Ljava/lang/Iterable;)V
    .locals 0

    .line 10241
    invoke-direct {p0, p1}, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$SegmentLaneInfosList;->addAllInfos(Ljava/lang/Iterable;)V

    return-void
.end method

.method static synthetic access$15800(Landroid/car/hardware/xpu/XpuXNgpNaviInfo$SegmentLaneInfosList;)V
    .locals 0

    .line 10241
    invoke-direct {p0}, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$SegmentLaneInfosList;->clearInfos()V

    return-void
.end method

.method static synthetic access$15900(Landroid/car/hardware/xpu/XpuXNgpNaviInfo$SegmentLaneInfosList;I)V
    .locals 0

    .line 10241
    invoke-direct {p0, p1}, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$SegmentLaneInfosList;->removeInfos(I)V

    return-void
.end method

.method static synthetic access$16000(Landroid/car/hardware/xpu/XpuXNgpNaviInfo$SegmentLaneInfosList;J)V
    .locals 0

    .line 10241
    invoke-direct {p0, p1, p2}, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$SegmentLaneInfosList;->setNavigationId(J)V

    return-void
.end method

.method static synthetic access$16100(Landroid/car/hardware/xpu/XpuXNgpNaviInfo$SegmentLaneInfosList;)V
    .locals 0

    .line 10241
    invoke-direct {p0}, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$SegmentLaneInfosList;->clearNavigationId()V

    return-void
.end method

.method private addAllInfos(Ljava/lang/Iterable;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Landroid/car/hardware/xpu/XpuXNgpNaviInfo$SegmentLaneInfo;",
            ">;)V"
        }
    .end annotation

    .line 10401
    invoke-direct {p0}, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$SegmentLaneInfosList;->ensureInfosIsMutable()V

    .line 10402
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$SegmentLaneInfosList;->infos_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    invoke-static {p1, v0}, Lcom/android/carsdk/protobuf/AbstractMessageLite;->addAll(Ljava/lang/Iterable;Ljava/util/Collection;)V

    return-void
.end method

.method private addInfos(ILandroid/car/hardware/xpu/XpuXNgpNaviInfo$SegmentLaneInfo$Builder;)V
    .locals 1

    .line 10389
    invoke-direct {p0}, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$SegmentLaneInfosList;->ensureInfosIsMutable()V

    .line 10390
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$SegmentLaneInfosList;->infos_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    invoke-virtual {p2}, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$SegmentLaneInfo$Builder;->build()Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object p2

    check-cast p2, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$SegmentLaneInfo;

    invoke-interface {v0, p1, p2}, Lcom/android/carsdk/protobuf/Internal$ProtobufList;->add(ILjava/lang/Object;)V

    return-void
.end method

.method private addInfos(ILandroid/car/hardware/xpu/XpuXNgpNaviInfo$SegmentLaneInfo;)V
    .locals 1

    .line 10363
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 10365
    invoke-direct {p0}, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$SegmentLaneInfosList;->ensureInfosIsMutable()V

    .line 10366
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$SegmentLaneInfosList;->infos_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1, p2}, Lcom/android/carsdk/protobuf/Internal$ProtobufList;->add(ILjava/lang/Object;)V

    return-void
.end method

.method private addInfos(Landroid/car/hardware/xpu/XpuXNgpNaviInfo$SegmentLaneInfo$Builder;)V
    .locals 1

    .line 10377
    invoke-direct {p0}, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$SegmentLaneInfosList;->ensureInfosIsMutable()V

    .line 10378
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$SegmentLaneInfosList;->infos_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    invoke-virtual {p1}, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$SegmentLaneInfo$Builder;->build()Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$SegmentLaneInfo;

    invoke-interface {v0, p1}, Lcom/android/carsdk/protobuf/Internal$ProtobufList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private addInfos(Landroid/car/hardware/xpu/XpuXNgpNaviInfo$SegmentLaneInfo;)V
    .locals 1

    .line 10348
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 10350
    invoke-direct {p0}, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$SegmentLaneInfosList;->ensureInfosIsMutable()V

    .line 10351
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$SegmentLaneInfosList;->infos_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1}, Lcom/android/carsdk/protobuf/Internal$ProtobufList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private clearInfos()V
    .locals 1

    .line 10413
    invoke-static {}, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$SegmentLaneInfosList;->emptyProtobufList()Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    move-result-object v0

    iput-object v0, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$SegmentLaneInfosList;->infos_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    return-void
.end method

.method private clearNavigationId()V
    .locals 2

    const-wide/16 v0, 0x0

    .line 10459
    iput-wide v0, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$SegmentLaneInfosList;->navigationId_:J

    return-void
.end method

.method private ensureInfosIsMutable()V
    .locals 1

    .line 10306
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$SegmentLaneInfosList;->infos_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    invoke-interface {v0}, Lcom/android/carsdk/protobuf/Internal$ProtobufList;->isModifiable()Z

    move-result v0

    if-nez v0, :cond_0

    .line 10307
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$SegmentLaneInfosList;->infos_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    .line 10308
    invoke-static {v0}, Lcom/android/carsdk/protobuf/GeneratedMessageLite;->mutableCopy(Lcom/android/carsdk/protobuf/Internal$ProtobufList;)Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    move-result-object v0

    iput-object v0, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$SegmentLaneInfosList;->infos_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    :cond_0
    return-void
.end method

.method public static getDefaultInstance()Landroid/car/hardware/xpu/XpuXNgpNaviInfo$SegmentLaneInfosList;
    .locals 1

    .line 10851
    sget-object v0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$SegmentLaneInfosList;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuXNgpNaviInfo$SegmentLaneInfosList;

    return-object v0
.end method

.method public static newBuilder()Landroid/car/hardware/xpu/XpuXNgpNaviInfo$SegmentLaneInfosList$Builder;
    .locals 1

    .line 10551
    sget-object v0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$SegmentLaneInfosList;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuXNgpNaviInfo$SegmentLaneInfosList;

    invoke-virtual {v0}, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$SegmentLaneInfosList;->toBuilder()Lcom/android/carsdk/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$SegmentLaneInfosList$Builder;

    return-object v0
.end method

.method public static newBuilder(Landroid/car/hardware/xpu/XpuXNgpNaviInfo$SegmentLaneInfosList;)Landroid/car/hardware/xpu/XpuXNgpNaviInfo$SegmentLaneInfosList$Builder;
    .locals 1

    .line 10554
    sget-object v0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$SegmentLaneInfosList;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuXNgpNaviInfo$SegmentLaneInfosList;

    invoke-virtual {v0}, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$SegmentLaneInfosList;->toBuilder()Lcom/android/carsdk/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$SegmentLaneInfosList$Builder;

    invoke-virtual {v0, p0}, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$SegmentLaneInfosList$Builder;->mergeFrom(Lcom/android/carsdk/protobuf/GeneratedMessageLite;)Lcom/android/carsdk/protobuf/GeneratedMessageLite$Builder;

    move-result-object p0

    check-cast p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$SegmentLaneInfosList$Builder;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Landroid/car/hardware/xpu/XpuXNgpNaviInfo$SegmentLaneInfosList;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 10528
    sget-object v0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$SegmentLaneInfosList;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuXNgpNaviInfo$SegmentLaneInfosList;

    invoke-static {v0, p0}, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$SegmentLaneInfosList;->parseDelimitedFrom(Lcom/android/carsdk/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$SegmentLaneInfosList;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/android/carsdk/protobuf/ExtensionRegistryLite;)Landroid/car/hardware/xpu/XpuXNgpNaviInfo$SegmentLaneInfosList;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 10534
    sget-object v0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$SegmentLaneInfosList;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuXNgpNaviInfo$SegmentLaneInfosList;

    invoke-static {v0, p0, p1}, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$SegmentLaneInfosList;->parseDelimitedFrom(Lcom/android/carsdk/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/android/carsdk/protobuf/ExtensionRegistryLite;)Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$SegmentLaneInfosList;

    return-object p0
.end method

.method public static parseFrom(Lcom/android/carsdk/protobuf/ByteString;)Landroid/car/hardware/xpu/XpuXNgpNaviInfo$SegmentLaneInfosList;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/carsdk/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 10492
    sget-object v0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$SegmentLaneInfosList;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuXNgpNaviInfo$SegmentLaneInfosList;

    invoke-static {v0, p0}, Lcom/android/carsdk/protobuf/GeneratedMessageLite;->parseFrom(Lcom/android/carsdk/protobuf/GeneratedMessageLite;Lcom/android/carsdk/protobuf/ByteString;)Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$SegmentLaneInfosList;

    return-object p0
.end method

.method public static parseFrom(Lcom/android/carsdk/protobuf/ByteString;Lcom/android/carsdk/protobuf/ExtensionRegistryLite;)Landroid/car/hardware/xpu/XpuXNgpNaviInfo$SegmentLaneInfosList;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/carsdk/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 10499
    sget-object v0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$SegmentLaneInfosList;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuXNgpNaviInfo$SegmentLaneInfosList;

    invoke-static {v0, p0, p1}, Lcom/android/carsdk/protobuf/GeneratedMessageLite;->parseFrom(Lcom/android/carsdk/protobuf/GeneratedMessageLite;Lcom/android/carsdk/protobuf/ByteString;Lcom/android/carsdk/protobuf/ExtensionRegistryLite;)Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$SegmentLaneInfosList;

    return-object p0
.end method

.method public static parseFrom(Lcom/android/carsdk/protobuf/CodedInputStream;)Landroid/car/hardware/xpu/XpuXNgpNaviInfo$SegmentLaneInfosList;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 10539
    sget-object v0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$SegmentLaneInfosList;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuXNgpNaviInfo$SegmentLaneInfosList;

    invoke-static {v0, p0}, Lcom/android/carsdk/protobuf/GeneratedMessageLite;->parseFrom(Lcom/android/carsdk/protobuf/GeneratedMessageLite;Lcom/android/carsdk/protobuf/CodedInputStream;)Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$SegmentLaneInfosList;

    return-object p0
.end method

.method public static parseFrom(Lcom/android/carsdk/protobuf/CodedInputStream;Lcom/android/carsdk/protobuf/ExtensionRegistryLite;)Landroid/car/hardware/xpu/XpuXNgpNaviInfo$SegmentLaneInfosList;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 10546
    sget-object v0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$SegmentLaneInfosList;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuXNgpNaviInfo$SegmentLaneInfosList;

    invoke-static {v0, p0, p1}, Lcom/android/carsdk/protobuf/GeneratedMessageLite;->parseFrom(Lcom/android/carsdk/protobuf/GeneratedMessageLite;Lcom/android/carsdk/protobuf/CodedInputStream;Lcom/android/carsdk/protobuf/ExtensionRegistryLite;)Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$SegmentLaneInfosList;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Landroid/car/hardware/xpu/XpuXNgpNaviInfo$SegmentLaneInfosList;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 10516
    sget-object v0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$SegmentLaneInfosList;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuXNgpNaviInfo$SegmentLaneInfosList;

    invoke-static {v0, p0}, Lcom/android/carsdk/protobuf/GeneratedMessageLite;->parseFrom(Lcom/android/carsdk/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$SegmentLaneInfosList;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/android/carsdk/protobuf/ExtensionRegistryLite;)Landroid/car/hardware/xpu/XpuXNgpNaviInfo$SegmentLaneInfosList;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 10523
    sget-object v0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$SegmentLaneInfosList;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuXNgpNaviInfo$SegmentLaneInfosList;

    invoke-static {v0, p0, p1}, Lcom/android/carsdk/protobuf/GeneratedMessageLite;->parseFrom(Lcom/android/carsdk/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/android/carsdk/protobuf/ExtensionRegistryLite;)Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$SegmentLaneInfosList;

    return-object p0
.end method

.method public static parseFrom([B)Landroid/car/hardware/xpu/XpuXNgpNaviInfo$SegmentLaneInfosList;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/carsdk/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 10504
    sget-object v0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$SegmentLaneInfosList;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuXNgpNaviInfo$SegmentLaneInfosList;

    invoke-static {v0, p0}, Lcom/android/carsdk/protobuf/GeneratedMessageLite;->parseFrom(Lcom/android/carsdk/protobuf/GeneratedMessageLite;[B)Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$SegmentLaneInfosList;

    return-object p0
.end method

.method public static parseFrom([BLcom/android/carsdk/protobuf/ExtensionRegistryLite;)Landroid/car/hardware/xpu/XpuXNgpNaviInfo$SegmentLaneInfosList;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/carsdk/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 10511
    sget-object v0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$SegmentLaneInfosList;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuXNgpNaviInfo$SegmentLaneInfosList;

    invoke-static {v0, p0, p1}, Lcom/android/carsdk/protobuf/GeneratedMessageLite;->parseFrom(Lcom/android/carsdk/protobuf/GeneratedMessageLite;[BLcom/android/carsdk/protobuf/ExtensionRegistryLite;)Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$SegmentLaneInfosList;

    return-object p0
.end method

.method public static parser()Lcom/android/carsdk/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/android/carsdk/protobuf/Parser<",
            "Landroid/car/hardware/xpu/XpuXNgpNaviInfo$SegmentLaneInfosList;",
            ">;"
        }
    .end annotation

    .line 10857
    sget-object v0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$SegmentLaneInfosList;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuXNgpNaviInfo$SegmentLaneInfosList;

    invoke-virtual {v0}, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$SegmentLaneInfosList;->getParserForType()Lcom/android/carsdk/protobuf/Parser;

    move-result-object v0

    return-object v0
.end method

.method private removeInfos(I)V
    .locals 1

    .line 10423
    invoke-direct {p0}, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$SegmentLaneInfosList;->ensureInfosIsMutable()V

    .line 10424
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$SegmentLaneInfosList;->infos_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1}, Lcom/android/carsdk/protobuf/Internal$ProtobufList;->remove(I)Ljava/lang/Object;

    return-void
.end method

.method private setInfos(ILandroid/car/hardware/xpu/XpuXNgpNaviInfo$SegmentLaneInfo$Builder;)V
    .locals 1

    .line 10336
    invoke-direct {p0}, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$SegmentLaneInfosList;->ensureInfosIsMutable()V

    .line 10337
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$SegmentLaneInfosList;->infos_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    invoke-virtual {p2}, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$SegmentLaneInfo$Builder;->build()Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object p2

    check-cast p2, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$SegmentLaneInfo;

    invoke-interface {v0, p1, p2}, Lcom/android/carsdk/protobuf/Internal$ProtobufList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private setInfos(ILandroid/car/hardware/xpu/XpuXNgpNaviInfo$SegmentLaneInfo;)V
    .locals 1

    .line 10322
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 10324
    invoke-direct {p0}, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$SegmentLaneInfosList;->ensureInfosIsMutable()V

    .line 10325
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$SegmentLaneInfosList;->infos_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1, p2}, Lcom/android/carsdk/protobuf/Internal$ProtobufList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private setNavigationId(J)V
    .locals 0

    .line 10448
    iput-wide p1, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$SegmentLaneInfosList;->navigationId_:J

    return-void
.end method


# virtual methods
.method protected final dynamicMethod(Lcom/android/carsdk/protobuf/GeneratedMessageLite$MethodToInvoke;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 9

    .line 10756
    sget-object v0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$1;->$SwitchMap$com$google$protobuf$GeneratedMessageLite$MethodToInvoke:[I

    invoke-virtual {p1}, Lcom/android/carsdk/protobuf/GeneratedMessageLite$MethodToInvoke;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x1

    packed-switch p1, :pswitch_data_0

    .line 10839
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1

    .line 10830
    :pswitch_0
    sget-object p1, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$SegmentLaneInfosList;->PARSER:Lcom/android/carsdk/protobuf/Parser;

    if-nez p1, :cond_1

    const-class p1, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$SegmentLaneInfosList;

    monitor-enter p1

    .line 10831
    :try_start_0
    sget-object p2, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$SegmentLaneInfosList;->PARSER:Lcom/android/carsdk/protobuf/Parser;

    if-nez p2, :cond_0

    .line 10832
    new-instance p2, Lcom/android/carsdk/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;

    sget-object p3, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$SegmentLaneInfosList;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuXNgpNaviInfo$SegmentLaneInfosList;

    invoke-direct {p2, p3}, Lcom/android/carsdk/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;-><init>(Lcom/android/carsdk/protobuf/GeneratedMessageLite;)V

    sput-object p2, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$SegmentLaneInfosList;->PARSER:Lcom/android/carsdk/protobuf/Parser;

    .line 10834
    :cond_0
    monitor-exit p1

    goto :goto_0

    :catchall_0
    move-exception p2

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p2

    .line 10836
    :cond_1
    :goto_0
    sget-object p1, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$SegmentLaneInfosList;->PARSER:Lcom/android/carsdk/protobuf/Parser;

    return-object p1

    .line 10783
    :pswitch_1
    check-cast p2, Lcom/android/carsdk/protobuf/CodedInputStream;

    .line 10785
    check-cast p3, Lcom/android/carsdk/protobuf/ExtensionRegistryLite;

    :cond_2
    :goto_1
    if-nez v1, :cond_7

    .line 10790
    :try_start_1
    invoke-virtual {p2}, Lcom/android/carsdk/protobuf/CodedInputStream;->readTag()I

    move-result p1

    if-eqz p1, :cond_6

    const/16 v0, 0xa

    if-eq p1, v0, :cond_4

    const/16 v0, 0x10

    if-eq p1, v0, :cond_3

    .line 10796
    invoke-virtual {p2, p1}, Lcom/android/carsdk/protobuf/CodedInputStream;->skipField(I)Z

    move-result p1

    if-nez p1, :cond_2

    goto :goto_2

    .line 10812
    :cond_3
    invoke-virtual {p2}, Lcom/android/carsdk/protobuf/CodedInputStream;->readUInt64()J

    move-result-wide v3

    iput-wide v3, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$SegmentLaneInfosList;->navigationId_:J

    goto :goto_1

    .line 10802
    :cond_4
    iget-object p1, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$SegmentLaneInfosList;->infos_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    invoke-interface {p1}, Lcom/android/carsdk/protobuf/Internal$ProtobufList;->isModifiable()Z

    move-result p1

    if-nez p1, :cond_5

    .line 10803
    iget-object p1, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$SegmentLaneInfosList;->infos_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    .line 10804
    invoke-static {p1}, Lcom/android/carsdk/protobuf/GeneratedMessageLite;->mutableCopy(Lcom/android/carsdk/protobuf/Internal$ProtobufList;)Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    move-result-object p1

    iput-object p1, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$SegmentLaneInfosList;->infos_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    .line 10806
    :cond_5
    iget-object p1, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$SegmentLaneInfosList;->infos_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    .line 10807
    invoke-static {}, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$SegmentLaneInfo;->parser()Lcom/android/carsdk/protobuf/Parser;

    move-result-object v0

    invoke-virtual {p2, v0, p3}, Lcom/android/carsdk/protobuf/CodedInputStream;->readMessage(Lcom/android/carsdk/protobuf/Parser;Lcom/android/carsdk/protobuf/ExtensionRegistryLite;)Lcom/android/carsdk/protobuf/MessageLite;

    move-result-object v0

    check-cast v0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$SegmentLaneInfo;

    .line 10806
    invoke-interface {p1, v0}, Lcom/android/carsdk/protobuf/Internal$ProtobufList;->add(Ljava/lang/Object;)Z
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

    .line 10820
    :try_start_2
    new-instance p2, Ljava/lang/RuntimeException;

    new-instance p3, Lcom/android/carsdk/protobuf/InvalidProtocolBufferException;

    .line 10822
    invoke-virtual {p1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p3, p1}, Lcom/android/carsdk/protobuf/InvalidProtocolBufferException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, p0}, Lcom/android/carsdk/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/android/carsdk/protobuf/MessageLite;)Lcom/android/carsdk/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p2

    :catch_1
    move-exception p1

    .line 10818
    new-instance p2, Ljava/lang/RuntimeException;

    invoke-virtual {p1, p0}, Lcom/android/carsdk/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/android/carsdk/protobuf/MessageLite;)Lcom/android/carsdk/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 10823
    :goto_3
    throw p1

    .line 10827
    :cond_7
    :pswitch_2
    sget-object p1, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$SegmentLaneInfosList;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuXNgpNaviInfo$SegmentLaneInfosList;

    return-object p1

    .line 10771
    :pswitch_3
    check-cast p2, Lcom/android/carsdk/protobuf/GeneratedMessageLite$Visitor;

    .line 10772
    check-cast p3, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$SegmentLaneInfosList;

    .line 10773
    iget-object p1, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$SegmentLaneInfosList;->infos_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    iget-object v0, p3, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$SegmentLaneInfosList;->infos_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    invoke-interface {p2, p1, v0}, Lcom/android/carsdk/protobuf/GeneratedMessageLite$Visitor;->visitList(Lcom/android/carsdk/protobuf/Internal$ProtobufList;Lcom/android/carsdk/protobuf/Internal$ProtobufList;)Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    move-result-object p1

    iput-object p1, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$SegmentLaneInfosList;->infos_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    .line 10774
    iget-wide v3, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$SegmentLaneInfosList;->navigationId_:J

    const-wide/16 v5, 0x0

    cmp-long p1, v3, v5

    if-eqz p1, :cond_8

    move p1, v2

    goto :goto_4

    :cond_8
    move p1, v1

    :goto_4
    iget-wide v7, p3, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$SegmentLaneInfosList;->navigationId_:J

    cmp-long v0, v7, v5

    if-eqz v0, :cond_9

    move v5, v2

    goto :goto_5

    :cond_9
    move v5, v1

    :goto_5
    move-object v0, p2

    move v1, p1

    move-wide v2, v3

    move v4, v5

    move-wide v5, v7

    invoke-interface/range {v0 .. v6}, Lcom/android/carsdk/protobuf/GeneratedMessageLite$Visitor;->visitLong(ZJZJ)J

    move-result-wide v0

    iput-wide v0, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$SegmentLaneInfosList;->navigationId_:J

    .line 10776
    sget-object p1, Lcom/android/carsdk/protobuf/GeneratedMessageLite$MergeFromVisitor;->INSTANCE:Lcom/android/carsdk/protobuf/GeneratedMessageLite$MergeFromVisitor;

    if-ne p2, p1, :cond_a

    .line 10778
    iget p1, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$SegmentLaneInfosList;->bitField0_:I

    iget p2, p3, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$SegmentLaneInfosList;->bitField0_:I

    or-int/2addr p1, p2

    iput p1, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$SegmentLaneInfosList;->bitField0_:I

    :cond_a
    return-object p0

    .line 10768
    :pswitch_4
    new-instance p1, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$SegmentLaneInfosList$Builder;

    invoke-direct {p1, v0}, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$SegmentLaneInfosList$Builder;-><init>(Landroid/car/hardware/xpu/XpuXNgpNaviInfo$1;)V

    return-object p1

    .line 10764
    :pswitch_5
    iget-object p1, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$SegmentLaneInfosList;->infos_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    invoke-interface {p1}, Lcom/android/carsdk/protobuf/Internal$ProtobufList;->makeImmutable()V

    return-object v0

    .line 10761
    :pswitch_6
    sget-object p1, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$SegmentLaneInfosList;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuXNgpNaviInfo$SegmentLaneInfosList;

    return-object p1

    .line 10758
    :pswitch_7
    new-instance p1, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$SegmentLaneInfosList;

    invoke-direct {p1}, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$SegmentLaneInfosList;-><init>()V

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

.method public getInfos(I)Landroid/car/hardware/xpu/XpuXNgpNaviInfo$SegmentLaneInfo;
    .locals 1

    .line 10292
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$SegmentLaneInfosList;->infos_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1}, Lcom/android/carsdk/protobuf/Internal$ProtobufList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$SegmentLaneInfo;

    return-object p1
.end method

.method public getInfosCount()I
    .locals 1

    .line 10282
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$SegmentLaneInfosList;->infos_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    invoke-interface {v0}, Lcom/android/carsdk/protobuf/Internal$ProtobufList;->size()I

    move-result v0

    return v0
.end method

.method public getInfosList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/car/hardware/xpu/XpuXNgpNaviInfo$SegmentLaneInfo;",
            ">;"
        }
    .end annotation

    .line 10261
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$SegmentLaneInfosList;->infos_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    return-object v0
.end method

.method public getInfosOrBuilder(I)Landroid/car/hardware/xpu/XpuXNgpNaviInfo$SegmentLaneInfoOrBuilder;
    .locals 1

    .line 10303
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$SegmentLaneInfosList;->infos_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1}, Lcom/android/carsdk/protobuf/Internal$ProtobufList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$SegmentLaneInfoOrBuilder;

    return-object p1
.end method

.method public getInfosOrBuilderList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "+",
            "Landroid/car/hardware/xpu/XpuXNgpNaviInfo$SegmentLaneInfoOrBuilder;",
            ">;"
        }
    .end annotation

    .line 10272
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$SegmentLaneInfosList;->infos_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    return-object v0
.end method

.method public getNavigationId()J
    .locals 2

    .line 10437
    iget-wide v0, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$SegmentLaneInfosList;->navigationId_:J

    return-wide v0
.end method

.method public getSerializedSize()I
    .locals 6

    .line 10473
    iget v0, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$SegmentLaneInfosList;->memoizedSerializedSize:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    return v0

    :cond_0
    const/4 v0, 0x0

    move v1, v0

    .line 10477
    :goto_0
    iget-object v2, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$SegmentLaneInfosList;->infos_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    invoke-interface {v2}, Lcom/android/carsdk/protobuf/Internal$ProtobufList;->size()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 10478
    iget-object v2, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$SegmentLaneInfosList;->infos_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    .line 10479
    invoke-interface {v2, v0}, Lcom/android/carsdk/protobuf/Internal$ProtobufList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/carsdk/protobuf/MessageLite;

    const/4 v3, 0x1

    invoke-static {v3, v2}, Lcom/android/carsdk/protobuf/CodedOutputStream;->computeMessageSize(ILcom/android/carsdk/protobuf/MessageLite;)I

    move-result v2

    add-int/2addr v1, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 10481
    :cond_1
    iget-wide v2, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$SegmentLaneInfosList;->navigationId_:J

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-eqz v0, :cond_2

    const/4 v0, 0x2

    .line 10483
    invoke-static {v0, v2, v3}, Lcom/android/carsdk/protobuf/CodedOutputStream;->computeUInt64Size(IJ)I

    move-result v0

    add-int/2addr v1, v0

    .line 10485
    :cond_2
    iput v1, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$SegmentLaneInfosList;->memoizedSerializedSize:I

    return v1
.end method

.method public writeTo(Lcom/android/carsdk/protobuf/CodedOutputStream;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 10464
    :goto_0
    iget-object v1, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$SegmentLaneInfosList;->infos_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    invoke-interface {v1}, Lcom/android/carsdk/protobuf/Internal$ProtobufList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 10465
    iget-object v1, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$SegmentLaneInfosList;->infos_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    invoke-interface {v1, v0}, Lcom/android/carsdk/protobuf/Internal$ProtobufList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/carsdk/protobuf/MessageLite;

    const/4 v2, 0x1

    invoke-virtual {p1, v2, v1}, Lcom/android/carsdk/protobuf/CodedOutputStream;->writeMessage(ILcom/android/carsdk/protobuf/MessageLite;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 10467
    :cond_0
    iget-wide v0, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$SegmentLaneInfosList;->navigationId_:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-eqz v2, :cond_1

    const/4 v2, 0x2

    .line 10468
    invoke-virtual {p1, v2, v0, v1}, Lcom/android/carsdk/protobuf/CodedOutputStream;->writeUInt64(IJ)V

    :cond_1
    return-void
.end method
