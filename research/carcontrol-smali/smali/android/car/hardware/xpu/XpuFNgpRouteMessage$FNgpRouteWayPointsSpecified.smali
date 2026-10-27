.class public final Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteWayPointsSpecified;
.super Lcom/android/carsdk/protobuf/GeneratedMessageLite;
.source "XpuFNgpRouteMessage.java"

# interfaces
.implements Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteWayPointsSpecifiedOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/car/hardware/xpu/XpuFNgpRouteMessage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "FNgpRouteWayPointsSpecified"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteWayPointsSpecified$Builder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/carsdk/protobuf/GeneratedMessageLite<",
        "Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteWayPointsSpecified;",
        "Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteWayPointsSpecified$Builder;",
        ">;",
        "Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteWayPointsSpecifiedOrBuilder;"
    }
.end annotation


# static fields
.field private static final DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteWayPointsSpecified;

.field private static volatile PARSER:Lcom/android/carsdk/protobuf/Parser; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/carsdk/protobuf/Parser<",
            "Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteWayPointsSpecified;",
            ">;"
        }
    .end annotation
.end field

.field public static final V2_POINT_LIST_SPECIFIED_FIELD_NUMBER:I = 0x1


# instance fields
.field private v2PointListSpecified_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/carsdk/protobuf/Internal$ProtobufList<",
            "Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Point;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 12635
    new-instance v0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteWayPointsSpecified;

    invoke-direct {v0}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteWayPointsSpecified;-><init>()V

    sput-object v0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteWayPointsSpecified;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteWayPointsSpecified;

    .line 12636
    invoke-virtual {v0}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteWayPointsSpecified;->makeImmutable()V

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 12226
    invoke-direct {p0}, Lcom/android/carsdk/protobuf/GeneratedMessageLite;-><init>()V

    .line 12227
    invoke-static {}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteWayPointsSpecified;->emptyProtobufList()Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    move-result-object v0

    iput-object v0, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteWayPointsSpecified;->v2PointListSpecified_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    return-void
.end method

.method static synthetic access$19400()Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteWayPointsSpecified;
    .locals 1

    .line 12221
    sget-object v0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteWayPointsSpecified;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteWayPointsSpecified;

    return-object v0
.end method

.method static synthetic access$19500(Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteWayPointsSpecified;ILandroid/car/hardware/xpu/XpuFNgpRouteMessage$Point;)V
    .locals 0

    .line 12221
    invoke-direct {p0, p1, p2}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteWayPointsSpecified;->setV2PointListSpecified(ILandroid/car/hardware/xpu/XpuFNgpRouteMessage$Point;)V

    return-void
.end method

.method static synthetic access$19600(Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteWayPointsSpecified;ILandroid/car/hardware/xpu/XpuFNgpRouteMessage$Point$Builder;)V
    .locals 0

    .line 12221
    invoke-direct {p0, p1, p2}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteWayPointsSpecified;->setV2PointListSpecified(ILandroid/car/hardware/xpu/XpuFNgpRouteMessage$Point$Builder;)V

    return-void
.end method

.method static synthetic access$19700(Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteWayPointsSpecified;Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Point;)V
    .locals 0

    .line 12221
    invoke-direct {p0, p1}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteWayPointsSpecified;->addV2PointListSpecified(Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Point;)V

    return-void
.end method

.method static synthetic access$19800(Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteWayPointsSpecified;ILandroid/car/hardware/xpu/XpuFNgpRouteMessage$Point;)V
    .locals 0

    .line 12221
    invoke-direct {p0, p1, p2}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteWayPointsSpecified;->addV2PointListSpecified(ILandroid/car/hardware/xpu/XpuFNgpRouteMessage$Point;)V

    return-void
.end method

.method static synthetic access$19900(Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteWayPointsSpecified;Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Point$Builder;)V
    .locals 0

    .line 12221
    invoke-direct {p0, p1}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteWayPointsSpecified;->addV2PointListSpecified(Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Point$Builder;)V

    return-void
.end method

.method static synthetic access$20000(Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteWayPointsSpecified;ILandroid/car/hardware/xpu/XpuFNgpRouteMessage$Point$Builder;)V
    .locals 0

    .line 12221
    invoke-direct {p0, p1, p2}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteWayPointsSpecified;->addV2PointListSpecified(ILandroid/car/hardware/xpu/XpuFNgpRouteMessage$Point$Builder;)V

    return-void
.end method

.method static synthetic access$20100(Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteWayPointsSpecified;Ljava/lang/Iterable;)V
    .locals 0

    .line 12221
    invoke-direct {p0, p1}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteWayPointsSpecified;->addAllV2PointListSpecified(Ljava/lang/Iterable;)V

    return-void
.end method

.method static synthetic access$20200(Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteWayPointsSpecified;)V
    .locals 0

    .line 12221
    invoke-direct {p0}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteWayPointsSpecified;->clearV2PointListSpecified()V

    return-void
.end method

.method static synthetic access$20300(Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteWayPointsSpecified;I)V
    .locals 0

    .line 12221
    invoke-direct {p0, p1}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteWayPointsSpecified;->removeV2PointListSpecified(I)V

    return-void
.end method

.method private addAllV2PointListSpecified(Ljava/lang/Iterable;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Point;",
            ">;)V"
        }
    .end annotation

    .line 12331
    invoke-direct {p0}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteWayPointsSpecified;->ensureV2PointListSpecifiedIsMutable()V

    .line 12332
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteWayPointsSpecified;->v2PointListSpecified_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    invoke-static {p1, v0}, Lcom/android/carsdk/protobuf/AbstractMessageLite;->addAll(Ljava/lang/Iterable;Ljava/util/Collection;)V

    return-void
.end method

.method private addV2PointListSpecified(ILandroid/car/hardware/xpu/XpuFNgpRouteMessage$Point$Builder;)V
    .locals 1

    .line 12323
    invoke-direct {p0}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteWayPointsSpecified;->ensureV2PointListSpecifiedIsMutable()V

    .line 12324
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteWayPointsSpecified;->v2PointListSpecified_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    invoke-virtual {p2}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Point$Builder;->build()Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object p2

    check-cast p2, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Point;

    invoke-interface {v0, p1, p2}, Lcom/android/carsdk/protobuf/Internal$ProtobufList;->add(ILjava/lang/Object;)V

    return-void
.end method

.method private addV2PointListSpecified(ILandroid/car/hardware/xpu/XpuFNgpRouteMessage$Point;)V
    .locals 1

    .line 12305
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 12307
    invoke-direct {p0}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteWayPointsSpecified;->ensureV2PointListSpecifiedIsMutable()V

    .line 12308
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteWayPointsSpecified;->v2PointListSpecified_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1, p2}, Lcom/android/carsdk/protobuf/Internal$ProtobufList;->add(ILjava/lang/Object;)V

    return-void
.end method

.method private addV2PointListSpecified(Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Point$Builder;)V
    .locals 1

    .line 12315
    invoke-direct {p0}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteWayPointsSpecified;->ensureV2PointListSpecifiedIsMutable()V

    .line 12316
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteWayPointsSpecified;->v2PointListSpecified_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    invoke-virtual {p1}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Point$Builder;->build()Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Point;

    invoke-interface {v0, p1}, Lcom/android/carsdk/protobuf/Internal$ProtobufList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private addV2PointListSpecified(Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Point;)V
    .locals 1

    .line 12294
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 12296
    invoke-direct {p0}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteWayPointsSpecified;->ensureV2PointListSpecifiedIsMutable()V

    .line 12297
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteWayPointsSpecified;->v2PointListSpecified_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1}, Lcom/android/carsdk/protobuf/Internal$ProtobufList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private clearV2PointListSpecified()V
    .locals 1

    .line 12339
    invoke-static {}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteWayPointsSpecified;->emptyProtobufList()Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    move-result-object v0

    iput-object v0, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteWayPointsSpecified;->v2PointListSpecified_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    return-void
.end method

.method private ensureV2PointListSpecifiedIsMutable()V
    .locals 1

    .line 12264
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteWayPointsSpecified;->v2PointListSpecified_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    invoke-interface {v0}, Lcom/android/carsdk/protobuf/Internal$ProtobufList;->isModifiable()Z

    move-result v0

    if-nez v0, :cond_0

    .line 12265
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteWayPointsSpecified;->v2PointListSpecified_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    .line 12266
    invoke-static {v0}, Lcom/android/carsdk/protobuf/GeneratedMessageLite;->mutableCopy(Lcom/android/carsdk/protobuf/Internal$ProtobufList;)Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    move-result-object v0

    iput-object v0, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteWayPointsSpecified;->v2PointListSpecified_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    :cond_0
    return-void
.end method

.method public static getDefaultInstance()Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteWayPointsSpecified;
    .locals 1

    .line 12640
    sget-object v0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteWayPointsSpecified;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteWayPointsSpecified;

    return-object v0
.end method

.method public static newBuilder()Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteWayPointsSpecified$Builder;
    .locals 1

    .line 12431
    sget-object v0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteWayPointsSpecified;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteWayPointsSpecified;

    invoke-virtual {v0}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteWayPointsSpecified;->toBuilder()Lcom/android/carsdk/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteWayPointsSpecified$Builder;

    return-object v0
.end method

.method public static newBuilder(Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteWayPointsSpecified;)Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteWayPointsSpecified$Builder;
    .locals 1

    .line 12434
    sget-object v0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteWayPointsSpecified;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteWayPointsSpecified;

    invoke-virtual {v0}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteWayPointsSpecified;->toBuilder()Lcom/android/carsdk/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteWayPointsSpecified$Builder;

    invoke-virtual {v0, p0}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteWayPointsSpecified$Builder;->mergeFrom(Lcom/android/carsdk/protobuf/GeneratedMessageLite;)Lcom/android/carsdk/protobuf/GeneratedMessageLite$Builder;

    move-result-object p0

    check-cast p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteWayPointsSpecified$Builder;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteWayPointsSpecified;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 12408
    sget-object v0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteWayPointsSpecified;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteWayPointsSpecified;

    invoke-static {v0, p0}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteWayPointsSpecified;->parseDelimitedFrom(Lcom/android/carsdk/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteWayPointsSpecified;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/android/carsdk/protobuf/ExtensionRegistryLite;)Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteWayPointsSpecified;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 12414
    sget-object v0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteWayPointsSpecified;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteWayPointsSpecified;

    invoke-static {v0, p0, p1}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteWayPointsSpecified;->parseDelimitedFrom(Lcom/android/carsdk/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/android/carsdk/protobuf/ExtensionRegistryLite;)Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteWayPointsSpecified;

    return-object p0
.end method

.method public static parseFrom(Lcom/android/carsdk/protobuf/ByteString;)Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteWayPointsSpecified;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/carsdk/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 12372
    sget-object v0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteWayPointsSpecified;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteWayPointsSpecified;

    invoke-static {v0, p0}, Lcom/android/carsdk/protobuf/GeneratedMessageLite;->parseFrom(Lcom/android/carsdk/protobuf/GeneratedMessageLite;Lcom/android/carsdk/protobuf/ByteString;)Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteWayPointsSpecified;

    return-object p0
.end method

.method public static parseFrom(Lcom/android/carsdk/protobuf/ByteString;Lcom/android/carsdk/protobuf/ExtensionRegistryLite;)Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteWayPointsSpecified;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/carsdk/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 12379
    sget-object v0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteWayPointsSpecified;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteWayPointsSpecified;

    invoke-static {v0, p0, p1}, Lcom/android/carsdk/protobuf/GeneratedMessageLite;->parseFrom(Lcom/android/carsdk/protobuf/GeneratedMessageLite;Lcom/android/carsdk/protobuf/ByteString;Lcom/android/carsdk/protobuf/ExtensionRegistryLite;)Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteWayPointsSpecified;

    return-object p0
.end method

.method public static parseFrom(Lcom/android/carsdk/protobuf/CodedInputStream;)Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteWayPointsSpecified;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 12419
    sget-object v0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteWayPointsSpecified;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteWayPointsSpecified;

    invoke-static {v0, p0}, Lcom/android/carsdk/protobuf/GeneratedMessageLite;->parseFrom(Lcom/android/carsdk/protobuf/GeneratedMessageLite;Lcom/android/carsdk/protobuf/CodedInputStream;)Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteWayPointsSpecified;

    return-object p0
.end method

.method public static parseFrom(Lcom/android/carsdk/protobuf/CodedInputStream;Lcom/android/carsdk/protobuf/ExtensionRegistryLite;)Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteWayPointsSpecified;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 12426
    sget-object v0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteWayPointsSpecified;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteWayPointsSpecified;

    invoke-static {v0, p0, p1}, Lcom/android/carsdk/protobuf/GeneratedMessageLite;->parseFrom(Lcom/android/carsdk/protobuf/GeneratedMessageLite;Lcom/android/carsdk/protobuf/CodedInputStream;Lcom/android/carsdk/protobuf/ExtensionRegistryLite;)Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteWayPointsSpecified;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteWayPointsSpecified;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 12396
    sget-object v0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteWayPointsSpecified;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteWayPointsSpecified;

    invoke-static {v0, p0}, Lcom/android/carsdk/protobuf/GeneratedMessageLite;->parseFrom(Lcom/android/carsdk/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteWayPointsSpecified;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/android/carsdk/protobuf/ExtensionRegistryLite;)Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteWayPointsSpecified;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 12403
    sget-object v0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteWayPointsSpecified;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteWayPointsSpecified;

    invoke-static {v0, p0, p1}, Lcom/android/carsdk/protobuf/GeneratedMessageLite;->parseFrom(Lcom/android/carsdk/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/android/carsdk/protobuf/ExtensionRegistryLite;)Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteWayPointsSpecified;

    return-object p0
.end method

.method public static parseFrom([B)Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteWayPointsSpecified;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/carsdk/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 12384
    sget-object v0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteWayPointsSpecified;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteWayPointsSpecified;

    invoke-static {v0, p0}, Lcom/android/carsdk/protobuf/GeneratedMessageLite;->parseFrom(Lcom/android/carsdk/protobuf/GeneratedMessageLite;[B)Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteWayPointsSpecified;

    return-object p0
.end method

.method public static parseFrom([BLcom/android/carsdk/protobuf/ExtensionRegistryLite;)Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteWayPointsSpecified;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/carsdk/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 12391
    sget-object v0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteWayPointsSpecified;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteWayPointsSpecified;

    invoke-static {v0, p0, p1}, Lcom/android/carsdk/protobuf/GeneratedMessageLite;->parseFrom(Lcom/android/carsdk/protobuf/GeneratedMessageLite;[BLcom/android/carsdk/protobuf/ExtensionRegistryLite;)Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteWayPointsSpecified;

    return-object p0
.end method

.method public static parser()Lcom/android/carsdk/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/android/carsdk/protobuf/Parser<",
            "Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteWayPointsSpecified;",
            ">;"
        }
    .end annotation

    .line 12646
    sget-object v0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteWayPointsSpecified;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteWayPointsSpecified;

    invoke-virtual {v0}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteWayPointsSpecified;->getParserForType()Lcom/android/carsdk/protobuf/Parser;

    move-result-object v0

    return-object v0
.end method

.method private removeV2PointListSpecified(I)V
    .locals 1

    .line 12345
    invoke-direct {p0}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteWayPointsSpecified;->ensureV2PointListSpecifiedIsMutable()V

    .line 12346
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteWayPointsSpecified;->v2PointListSpecified_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1}, Lcom/android/carsdk/protobuf/Internal$ProtobufList;->remove(I)Ljava/lang/Object;

    return-void
.end method

.method private setV2PointListSpecified(ILandroid/car/hardware/xpu/XpuFNgpRouteMessage$Point$Builder;)V
    .locals 1

    .line 12286
    invoke-direct {p0}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteWayPointsSpecified;->ensureV2PointListSpecifiedIsMutable()V

    .line 12287
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteWayPointsSpecified;->v2PointListSpecified_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    invoke-virtual {p2}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Point$Builder;->build()Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object p2

    check-cast p2, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Point;

    invoke-interface {v0, p1, p2}, Lcom/android/carsdk/protobuf/Internal$ProtobufList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private setV2PointListSpecified(ILandroid/car/hardware/xpu/XpuFNgpRouteMessage$Point;)V
    .locals 1

    .line 12276
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 12278
    invoke-direct {p0}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteWayPointsSpecified;->ensureV2PointListSpecifiedIsMutable()V

    .line 12279
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteWayPointsSpecified;->v2PointListSpecified_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1, p2}, Lcom/android/carsdk/protobuf/Internal$ProtobufList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method protected final dynamicMethod(Lcom/android/carsdk/protobuf/GeneratedMessageLite$MethodToInvoke;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    .line 12553
    sget-object v0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$1;->$SwitchMap$com$google$protobuf$GeneratedMessageLite$MethodToInvoke:[I

    invoke-virtual {p1}, Lcom/android/carsdk/protobuf/GeneratedMessageLite$MethodToInvoke;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x0

    packed-switch p1, :pswitch_data_0

    .line 12628
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1

    .line 12619
    :pswitch_0
    sget-object p1, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteWayPointsSpecified;->PARSER:Lcom/android/carsdk/protobuf/Parser;

    if-nez p1, :cond_1

    const-class p1, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteWayPointsSpecified;

    monitor-enter p1

    .line 12620
    :try_start_0
    sget-object p2, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteWayPointsSpecified;->PARSER:Lcom/android/carsdk/protobuf/Parser;

    if-nez p2, :cond_0

    .line 12621
    new-instance p2, Lcom/android/carsdk/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;

    sget-object p3, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteWayPointsSpecified;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteWayPointsSpecified;

    invoke-direct {p2, p3}, Lcom/android/carsdk/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;-><init>(Lcom/android/carsdk/protobuf/GeneratedMessageLite;)V

    sput-object p2, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteWayPointsSpecified;->PARSER:Lcom/android/carsdk/protobuf/Parser;

    .line 12623
    :cond_0
    monitor-exit p1

    goto :goto_0

    :catchall_0
    move-exception p2

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p2

    .line 12625
    :cond_1
    :goto_0
    sget-object p1, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteWayPointsSpecified;->PARSER:Lcom/android/carsdk/protobuf/Parser;

    return-object p1

    .line 12577
    :pswitch_1
    check-cast p2, Lcom/android/carsdk/protobuf/CodedInputStream;

    .line 12579
    check-cast p3, Lcom/android/carsdk/protobuf/ExtensionRegistryLite;

    const/4 p1, 0x0

    :cond_2
    :goto_1
    if-nez p1, :cond_6

    .line 12584
    :try_start_1
    invoke-virtual {p2}, Lcom/android/carsdk/protobuf/CodedInputStream;->readTag()I

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_5

    const/16 v2, 0xa

    if-eq v0, v2, :cond_3

    .line 12590
    invoke-virtual {p2, v0}, Lcom/android/carsdk/protobuf/CodedInputStream;->skipField(I)Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_2

    .line 12596
    :cond_3
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteWayPointsSpecified;->v2PointListSpecified_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    invoke-interface {v0}, Lcom/android/carsdk/protobuf/Internal$ProtobufList;->isModifiable()Z

    move-result v0

    if-nez v0, :cond_4

    .line 12597
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteWayPointsSpecified;->v2PointListSpecified_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    .line 12598
    invoke-static {v0}, Lcom/android/carsdk/protobuf/GeneratedMessageLite;->mutableCopy(Lcom/android/carsdk/protobuf/Internal$ProtobufList;)Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    move-result-object v0

    iput-object v0, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteWayPointsSpecified;->v2PointListSpecified_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    .line 12600
    :cond_4
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteWayPointsSpecified;->v2PointListSpecified_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    .line 12601
    invoke-static {}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Point;->parser()Lcom/android/carsdk/protobuf/Parser;

    move-result-object v1

    invoke-virtual {p2, v1, p3}, Lcom/android/carsdk/protobuf/CodedInputStream;->readMessage(Lcom/android/carsdk/protobuf/Parser;Lcom/android/carsdk/protobuf/ExtensionRegistryLite;)Lcom/android/carsdk/protobuf/MessageLite;

    move-result-object v1

    check-cast v1, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Point;

    .line 12600
    invoke-interface {v0, v1}, Lcom/android/carsdk/protobuf/Internal$ProtobufList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Lcom/android/carsdk/protobuf/InvalidProtocolBufferException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    :cond_5
    :goto_2
    move p1, v1

    goto :goto_1

    :catchall_1
    move-exception p1

    goto :goto_3

    :catch_0
    move-exception p1

    .line 12609
    :try_start_2
    new-instance p2, Ljava/lang/RuntimeException;

    new-instance p3, Lcom/android/carsdk/protobuf/InvalidProtocolBufferException;

    .line 12611
    invoke-virtual {p1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p3, p1}, Lcom/android/carsdk/protobuf/InvalidProtocolBufferException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, p0}, Lcom/android/carsdk/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/android/carsdk/protobuf/MessageLite;)Lcom/android/carsdk/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p2

    :catch_1
    move-exception p1

    .line 12607
    new-instance p2, Ljava/lang/RuntimeException;

    invoke-virtual {p1, p0}, Lcom/android/carsdk/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/android/carsdk/protobuf/MessageLite;)Lcom/android/carsdk/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 12612
    :goto_3
    throw p1

    .line 12616
    :cond_6
    :pswitch_2
    sget-object p1, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteWayPointsSpecified;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteWayPointsSpecified;

    return-object p1

    .line 12568
    :pswitch_3
    check-cast p2, Lcom/android/carsdk/protobuf/GeneratedMessageLite$Visitor;

    .line 12569
    check-cast p3, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteWayPointsSpecified;

    .line 12570
    iget-object p1, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteWayPointsSpecified;->v2PointListSpecified_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    iget-object p3, p3, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteWayPointsSpecified;->v2PointListSpecified_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    invoke-interface {p2, p1, p3}, Lcom/android/carsdk/protobuf/GeneratedMessageLite$Visitor;->visitList(Lcom/android/carsdk/protobuf/Internal$ProtobufList;Lcom/android/carsdk/protobuf/Internal$ProtobufList;)Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    move-result-object p1

    iput-object p1, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteWayPointsSpecified;->v2PointListSpecified_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    .line 12571
    sget-object p1, Lcom/android/carsdk/protobuf/GeneratedMessageLite$MergeFromVisitor;->INSTANCE:Lcom/android/carsdk/protobuf/GeneratedMessageLite$MergeFromVisitor;

    return-object p0

    .line 12565
    :pswitch_4
    new-instance p1, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteWayPointsSpecified$Builder;

    invoke-direct {p1, v0}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteWayPointsSpecified$Builder;-><init>(Landroid/car/hardware/xpu/XpuFNgpRouteMessage$1;)V

    return-object p1

    .line 12561
    :pswitch_5
    iget-object p1, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteWayPointsSpecified;->v2PointListSpecified_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    invoke-interface {p1}, Lcom/android/carsdk/protobuf/Internal$ProtobufList;->makeImmutable()V

    return-object v0

    .line 12558
    :pswitch_6
    sget-object p1, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteWayPointsSpecified;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteWayPointsSpecified;

    return-object p1

    .line 12555
    :pswitch_7
    new-instance p1, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteWayPointsSpecified;

    invoke-direct {p1}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteWayPointsSpecified;-><init>()V

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

    .line 12357
    iget v0, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteWayPointsSpecified;->memoizedSerializedSize:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    return v0

    :cond_0
    const/4 v0, 0x0

    move v1, v0

    .line 12361
    :goto_0
    iget-object v2, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteWayPointsSpecified;->v2PointListSpecified_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    invoke-interface {v2}, Lcom/android/carsdk/protobuf/Internal$ProtobufList;->size()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 12362
    iget-object v2, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteWayPointsSpecified;->v2PointListSpecified_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    .line 12363
    invoke-interface {v2, v0}, Lcom/android/carsdk/protobuf/Internal$ProtobufList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/carsdk/protobuf/MessageLite;

    const/4 v3, 0x1

    invoke-static {v3, v2}, Lcom/android/carsdk/protobuf/CodedOutputStream;->computeMessageSize(ILcom/android/carsdk/protobuf/MessageLite;)I

    move-result v2

    add-int/2addr v1, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 12365
    :cond_1
    iput v1, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteWayPointsSpecified;->memoizedSerializedSize:I

    return v1
.end method

.method public getV2PointListSpecified(I)Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Point;
    .locals 1

    .line 12254
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteWayPointsSpecified;->v2PointListSpecified_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1}, Lcom/android/carsdk/protobuf/Internal$ProtobufList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Point;

    return-object p1
.end method

.method public getV2PointListSpecifiedCount()I
    .locals 1

    .line 12248
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteWayPointsSpecified;->v2PointListSpecified_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    invoke-interface {v0}, Lcom/android/carsdk/protobuf/Internal$ProtobufList;->size()I

    move-result v0

    return v0
.end method

.method public getV2PointListSpecifiedList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Point;",
            ">;"
        }
    .end annotation

    .line 12235
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteWayPointsSpecified;->v2PointListSpecified_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    return-object v0
.end method

.method public getV2PointListSpecifiedOrBuilder(I)Landroid/car/hardware/xpu/XpuFNgpRouteMessage$PointOrBuilder;
    .locals 1

    .line 12261
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteWayPointsSpecified;->v2PointListSpecified_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1}, Lcom/android/carsdk/protobuf/Internal$ProtobufList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$PointOrBuilder;

    return-object p1
.end method

.method public getV2PointListSpecifiedOrBuilderList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "+",
            "Landroid/car/hardware/xpu/XpuFNgpRouteMessage$PointOrBuilder;",
            ">;"
        }
    .end annotation

    .line 12242
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteWayPointsSpecified;->v2PointListSpecified_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    return-object v0
.end method

.method public writeTo(Lcom/android/carsdk/protobuf/CodedOutputStream;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 12351
    :goto_0
    iget-object v1, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteWayPointsSpecified;->v2PointListSpecified_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    invoke-interface {v1}, Lcom/android/carsdk/protobuf/Internal$ProtobufList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 12352
    iget-object v1, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$FNgpRouteWayPointsSpecified;->v2PointListSpecified_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    invoke-interface {v1, v0}, Lcom/android/carsdk/protobuf/Internal$ProtobufList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/carsdk/protobuf/MessageLite;

    const/4 v2, 0x1

    invoke-virtual {p1, v2, v1}, Lcom/android/carsdk/protobuf/CodedOutputStream;->writeMessage(ILcom/android/carsdk/protobuf/MessageLite;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method
