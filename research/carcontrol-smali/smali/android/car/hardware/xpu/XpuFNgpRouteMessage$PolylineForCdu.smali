.class public final Landroid/car/hardware/xpu/XpuFNgpRouteMessage$PolylineForCdu;
.super Lcom/android/carsdk/protobuf/GeneratedMessageLite;
.source "XpuFNgpRouteMessage.java"

# interfaces
.implements Landroid/car/hardware/xpu/XpuFNgpRouteMessage$PolylineForCduOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/car/hardware/xpu/XpuFNgpRouteMessage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "PolylineForCdu"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/car/hardware/xpu/XpuFNgpRouteMessage$PolylineForCdu$Builder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/carsdk/protobuf/GeneratedMessageLite<",
        "Landroid/car/hardware/xpu/XpuFNgpRouteMessage$PolylineForCdu;",
        "Landroid/car/hardware/xpu/XpuFNgpRouteMessage$PolylineForCdu$Builder;",
        ">;",
        "Landroid/car/hardware/xpu/XpuFNgpRouteMessage$PolylineForCduOrBuilder;"
    }
.end annotation


# static fields
.field private static final DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuFNgpRouteMessage$PolylineForCdu;

.field private static volatile PARSER:Lcom/android/carsdk/protobuf/Parser; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/carsdk/protobuf/Parser<",
            "Landroid/car/hardware/xpu/XpuFNgpRouteMessage$PolylineForCdu;",
            ">;"
        }
    .end annotation
.end field

.field public static final POINT_FIELD_NUMBER:I = 0x1


# instance fields
.field private point_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/carsdk/protobuf/Internal$ProtobufList<",
            "Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Point3f;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 22683
    new-instance v0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$PolylineForCdu;

    invoke-direct {v0}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$PolylineForCdu;-><init>()V

    sput-object v0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$PolylineForCdu;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuFNgpRouteMessage$PolylineForCdu;

    .line 22684
    invoke-virtual {v0}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$PolylineForCdu;->makeImmutable()V

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 22270
    invoke-direct {p0}, Lcom/android/carsdk/protobuf/GeneratedMessageLite;-><init>()V

    .line 22271
    invoke-static {}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$PolylineForCdu;->emptyProtobufList()Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    move-result-object v0

    iput-object v0, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$PolylineForCdu;->point_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    return-void
.end method

.method static synthetic access$38500()Landroid/car/hardware/xpu/XpuFNgpRouteMessage$PolylineForCdu;
    .locals 1

    .line 22265
    sget-object v0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$PolylineForCdu;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuFNgpRouteMessage$PolylineForCdu;

    return-object v0
.end method

.method static synthetic access$38600(Landroid/car/hardware/xpu/XpuFNgpRouteMessage$PolylineForCdu;ILandroid/car/hardware/xpu/XpuFNgpRouteMessage$Point3f;)V
    .locals 0

    .line 22265
    invoke-direct {p0, p1, p2}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$PolylineForCdu;->setPoint(ILandroid/car/hardware/xpu/XpuFNgpRouteMessage$Point3f;)V

    return-void
.end method

.method static synthetic access$38700(Landroid/car/hardware/xpu/XpuFNgpRouteMessage$PolylineForCdu;ILandroid/car/hardware/xpu/XpuFNgpRouteMessage$Point3f$Builder;)V
    .locals 0

    .line 22265
    invoke-direct {p0, p1, p2}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$PolylineForCdu;->setPoint(ILandroid/car/hardware/xpu/XpuFNgpRouteMessage$Point3f$Builder;)V

    return-void
.end method

.method static synthetic access$38800(Landroid/car/hardware/xpu/XpuFNgpRouteMessage$PolylineForCdu;Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Point3f;)V
    .locals 0

    .line 22265
    invoke-direct {p0, p1}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$PolylineForCdu;->addPoint(Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Point3f;)V

    return-void
.end method

.method static synthetic access$38900(Landroid/car/hardware/xpu/XpuFNgpRouteMessage$PolylineForCdu;ILandroid/car/hardware/xpu/XpuFNgpRouteMessage$Point3f;)V
    .locals 0

    .line 22265
    invoke-direct {p0, p1, p2}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$PolylineForCdu;->addPoint(ILandroid/car/hardware/xpu/XpuFNgpRouteMessage$Point3f;)V

    return-void
.end method

.method static synthetic access$39000(Landroid/car/hardware/xpu/XpuFNgpRouteMessage$PolylineForCdu;Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Point3f$Builder;)V
    .locals 0

    .line 22265
    invoke-direct {p0, p1}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$PolylineForCdu;->addPoint(Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Point3f$Builder;)V

    return-void
.end method

.method static synthetic access$39100(Landroid/car/hardware/xpu/XpuFNgpRouteMessage$PolylineForCdu;ILandroid/car/hardware/xpu/XpuFNgpRouteMessage$Point3f$Builder;)V
    .locals 0

    .line 22265
    invoke-direct {p0, p1, p2}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$PolylineForCdu;->addPoint(ILandroid/car/hardware/xpu/XpuFNgpRouteMessage$Point3f$Builder;)V

    return-void
.end method

.method static synthetic access$39200(Landroid/car/hardware/xpu/XpuFNgpRouteMessage$PolylineForCdu;Ljava/lang/Iterable;)V
    .locals 0

    .line 22265
    invoke-direct {p0, p1}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$PolylineForCdu;->addAllPoint(Ljava/lang/Iterable;)V

    return-void
.end method

.method static synthetic access$39300(Landroid/car/hardware/xpu/XpuFNgpRouteMessage$PolylineForCdu;)V
    .locals 0

    .line 22265
    invoke-direct {p0}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$PolylineForCdu;->clearPoint()V

    return-void
.end method

.method static synthetic access$39400(Landroid/car/hardware/xpu/XpuFNgpRouteMessage$PolylineForCdu;I)V
    .locals 0

    .line 22265
    invoke-direct {p0, p1}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$PolylineForCdu;->removePoint(I)V

    return-void
.end method

.method private addAllPoint(Ljava/lang/Iterable;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Point3f;",
            ">;)V"
        }
    .end annotation

    .line 22375
    invoke-direct {p0}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$PolylineForCdu;->ensurePointIsMutable()V

    .line 22376
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$PolylineForCdu;->point_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    invoke-static {p1, v0}, Lcom/android/carsdk/protobuf/AbstractMessageLite;->addAll(Ljava/lang/Iterable;Ljava/util/Collection;)V

    return-void
.end method

.method private addPoint(ILandroid/car/hardware/xpu/XpuFNgpRouteMessage$Point3f$Builder;)V
    .locals 1

    .line 22367
    invoke-direct {p0}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$PolylineForCdu;->ensurePointIsMutable()V

    .line 22368
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$PolylineForCdu;->point_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    invoke-virtual {p2}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Point3f$Builder;->build()Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object p2

    check-cast p2, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Point3f;

    invoke-interface {v0, p1, p2}, Lcom/android/carsdk/protobuf/Internal$ProtobufList;->add(ILjava/lang/Object;)V

    return-void
.end method

.method private addPoint(ILandroid/car/hardware/xpu/XpuFNgpRouteMessage$Point3f;)V
    .locals 1

    .line 22349
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 22351
    invoke-direct {p0}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$PolylineForCdu;->ensurePointIsMutable()V

    .line 22352
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$PolylineForCdu;->point_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1, p2}, Lcom/android/carsdk/protobuf/Internal$ProtobufList;->add(ILjava/lang/Object;)V

    return-void
.end method

.method private addPoint(Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Point3f$Builder;)V
    .locals 1

    .line 22359
    invoke-direct {p0}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$PolylineForCdu;->ensurePointIsMutable()V

    .line 22360
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$PolylineForCdu;->point_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    invoke-virtual {p1}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Point3f$Builder;->build()Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Point3f;

    invoke-interface {v0, p1}, Lcom/android/carsdk/protobuf/Internal$ProtobufList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private addPoint(Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Point3f;)V
    .locals 1

    .line 22338
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 22340
    invoke-direct {p0}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$PolylineForCdu;->ensurePointIsMutable()V

    .line 22341
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$PolylineForCdu;->point_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1}, Lcom/android/carsdk/protobuf/Internal$ProtobufList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private clearPoint()V
    .locals 1

    .line 22383
    invoke-static {}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$PolylineForCdu;->emptyProtobufList()Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    move-result-object v0

    iput-object v0, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$PolylineForCdu;->point_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    return-void
.end method

.method private ensurePointIsMutable()V
    .locals 1

    .line 22308
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$PolylineForCdu;->point_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    invoke-interface {v0}, Lcom/android/carsdk/protobuf/Internal$ProtobufList;->isModifiable()Z

    move-result v0

    if-nez v0, :cond_0

    .line 22309
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$PolylineForCdu;->point_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    .line 22310
    invoke-static {v0}, Lcom/android/carsdk/protobuf/GeneratedMessageLite;->mutableCopy(Lcom/android/carsdk/protobuf/Internal$ProtobufList;)Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    move-result-object v0

    iput-object v0, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$PolylineForCdu;->point_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    :cond_0
    return-void
.end method

.method public static getDefaultInstance()Landroid/car/hardware/xpu/XpuFNgpRouteMessage$PolylineForCdu;
    .locals 1

    .line 22688
    sget-object v0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$PolylineForCdu;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuFNgpRouteMessage$PolylineForCdu;

    return-object v0
.end method

.method public static newBuilder()Landroid/car/hardware/xpu/XpuFNgpRouteMessage$PolylineForCdu$Builder;
    .locals 1

    .line 22475
    sget-object v0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$PolylineForCdu;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuFNgpRouteMessage$PolylineForCdu;

    invoke-virtual {v0}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$PolylineForCdu;->toBuilder()Lcom/android/carsdk/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$PolylineForCdu$Builder;

    return-object v0
.end method

.method public static newBuilder(Landroid/car/hardware/xpu/XpuFNgpRouteMessage$PolylineForCdu;)Landroid/car/hardware/xpu/XpuFNgpRouteMessage$PolylineForCdu$Builder;
    .locals 1

    .line 22478
    sget-object v0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$PolylineForCdu;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuFNgpRouteMessage$PolylineForCdu;

    invoke-virtual {v0}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$PolylineForCdu;->toBuilder()Lcom/android/carsdk/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$PolylineForCdu$Builder;

    invoke-virtual {v0, p0}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$PolylineForCdu$Builder;->mergeFrom(Lcom/android/carsdk/protobuf/GeneratedMessageLite;)Lcom/android/carsdk/protobuf/GeneratedMessageLite$Builder;

    move-result-object p0

    check-cast p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$PolylineForCdu$Builder;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Landroid/car/hardware/xpu/XpuFNgpRouteMessage$PolylineForCdu;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 22452
    sget-object v0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$PolylineForCdu;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuFNgpRouteMessage$PolylineForCdu;

    invoke-static {v0, p0}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$PolylineForCdu;->parseDelimitedFrom(Lcom/android/carsdk/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$PolylineForCdu;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/android/carsdk/protobuf/ExtensionRegistryLite;)Landroid/car/hardware/xpu/XpuFNgpRouteMessage$PolylineForCdu;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 22458
    sget-object v0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$PolylineForCdu;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuFNgpRouteMessage$PolylineForCdu;

    invoke-static {v0, p0, p1}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$PolylineForCdu;->parseDelimitedFrom(Lcom/android/carsdk/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/android/carsdk/protobuf/ExtensionRegistryLite;)Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$PolylineForCdu;

    return-object p0
.end method

.method public static parseFrom(Lcom/android/carsdk/protobuf/ByteString;)Landroid/car/hardware/xpu/XpuFNgpRouteMessage$PolylineForCdu;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/carsdk/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 22416
    sget-object v0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$PolylineForCdu;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuFNgpRouteMessage$PolylineForCdu;

    invoke-static {v0, p0}, Lcom/android/carsdk/protobuf/GeneratedMessageLite;->parseFrom(Lcom/android/carsdk/protobuf/GeneratedMessageLite;Lcom/android/carsdk/protobuf/ByteString;)Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$PolylineForCdu;

    return-object p0
.end method

.method public static parseFrom(Lcom/android/carsdk/protobuf/ByteString;Lcom/android/carsdk/protobuf/ExtensionRegistryLite;)Landroid/car/hardware/xpu/XpuFNgpRouteMessage$PolylineForCdu;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/carsdk/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 22423
    sget-object v0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$PolylineForCdu;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuFNgpRouteMessage$PolylineForCdu;

    invoke-static {v0, p0, p1}, Lcom/android/carsdk/protobuf/GeneratedMessageLite;->parseFrom(Lcom/android/carsdk/protobuf/GeneratedMessageLite;Lcom/android/carsdk/protobuf/ByteString;Lcom/android/carsdk/protobuf/ExtensionRegistryLite;)Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$PolylineForCdu;

    return-object p0
.end method

.method public static parseFrom(Lcom/android/carsdk/protobuf/CodedInputStream;)Landroid/car/hardware/xpu/XpuFNgpRouteMessage$PolylineForCdu;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 22463
    sget-object v0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$PolylineForCdu;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuFNgpRouteMessage$PolylineForCdu;

    invoke-static {v0, p0}, Lcom/android/carsdk/protobuf/GeneratedMessageLite;->parseFrom(Lcom/android/carsdk/protobuf/GeneratedMessageLite;Lcom/android/carsdk/protobuf/CodedInputStream;)Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$PolylineForCdu;

    return-object p0
.end method

.method public static parseFrom(Lcom/android/carsdk/protobuf/CodedInputStream;Lcom/android/carsdk/protobuf/ExtensionRegistryLite;)Landroid/car/hardware/xpu/XpuFNgpRouteMessage$PolylineForCdu;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 22470
    sget-object v0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$PolylineForCdu;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuFNgpRouteMessage$PolylineForCdu;

    invoke-static {v0, p0, p1}, Lcom/android/carsdk/protobuf/GeneratedMessageLite;->parseFrom(Lcom/android/carsdk/protobuf/GeneratedMessageLite;Lcom/android/carsdk/protobuf/CodedInputStream;Lcom/android/carsdk/protobuf/ExtensionRegistryLite;)Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$PolylineForCdu;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Landroid/car/hardware/xpu/XpuFNgpRouteMessage$PolylineForCdu;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 22440
    sget-object v0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$PolylineForCdu;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuFNgpRouteMessage$PolylineForCdu;

    invoke-static {v0, p0}, Lcom/android/carsdk/protobuf/GeneratedMessageLite;->parseFrom(Lcom/android/carsdk/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$PolylineForCdu;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/android/carsdk/protobuf/ExtensionRegistryLite;)Landroid/car/hardware/xpu/XpuFNgpRouteMessage$PolylineForCdu;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 22447
    sget-object v0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$PolylineForCdu;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuFNgpRouteMessage$PolylineForCdu;

    invoke-static {v0, p0, p1}, Lcom/android/carsdk/protobuf/GeneratedMessageLite;->parseFrom(Lcom/android/carsdk/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/android/carsdk/protobuf/ExtensionRegistryLite;)Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$PolylineForCdu;

    return-object p0
.end method

.method public static parseFrom([B)Landroid/car/hardware/xpu/XpuFNgpRouteMessage$PolylineForCdu;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/carsdk/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 22428
    sget-object v0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$PolylineForCdu;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuFNgpRouteMessage$PolylineForCdu;

    invoke-static {v0, p0}, Lcom/android/carsdk/protobuf/GeneratedMessageLite;->parseFrom(Lcom/android/carsdk/protobuf/GeneratedMessageLite;[B)Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$PolylineForCdu;

    return-object p0
.end method

.method public static parseFrom([BLcom/android/carsdk/protobuf/ExtensionRegistryLite;)Landroid/car/hardware/xpu/XpuFNgpRouteMessage$PolylineForCdu;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/carsdk/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 22435
    sget-object v0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$PolylineForCdu;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuFNgpRouteMessage$PolylineForCdu;

    invoke-static {v0, p0, p1}, Lcom/android/carsdk/protobuf/GeneratedMessageLite;->parseFrom(Lcom/android/carsdk/protobuf/GeneratedMessageLite;[BLcom/android/carsdk/protobuf/ExtensionRegistryLite;)Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$PolylineForCdu;

    return-object p0
.end method

.method public static parser()Lcom/android/carsdk/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/android/carsdk/protobuf/Parser<",
            "Landroid/car/hardware/xpu/XpuFNgpRouteMessage$PolylineForCdu;",
            ">;"
        }
    .end annotation

    .line 22694
    sget-object v0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$PolylineForCdu;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuFNgpRouteMessage$PolylineForCdu;

    invoke-virtual {v0}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$PolylineForCdu;->getParserForType()Lcom/android/carsdk/protobuf/Parser;

    move-result-object v0

    return-object v0
.end method

.method private removePoint(I)V
    .locals 1

    .line 22389
    invoke-direct {p0}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$PolylineForCdu;->ensurePointIsMutable()V

    .line 22390
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$PolylineForCdu;->point_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1}, Lcom/android/carsdk/protobuf/Internal$ProtobufList;->remove(I)Ljava/lang/Object;

    return-void
.end method

.method private setPoint(ILandroid/car/hardware/xpu/XpuFNgpRouteMessage$Point3f$Builder;)V
    .locals 1

    .line 22330
    invoke-direct {p0}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$PolylineForCdu;->ensurePointIsMutable()V

    .line 22331
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$PolylineForCdu;->point_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    invoke-virtual {p2}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Point3f$Builder;->build()Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object p2

    check-cast p2, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Point3f;

    invoke-interface {v0, p1, p2}, Lcom/android/carsdk/protobuf/Internal$ProtobufList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private setPoint(ILandroid/car/hardware/xpu/XpuFNgpRouteMessage$Point3f;)V
    .locals 1

    .line 22320
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 22322
    invoke-direct {p0}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$PolylineForCdu;->ensurePointIsMutable()V

    .line 22323
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$PolylineForCdu;->point_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1, p2}, Lcom/android/carsdk/protobuf/Internal$ProtobufList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method protected final dynamicMethod(Lcom/android/carsdk/protobuf/GeneratedMessageLite$MethodToInvoke;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    .line 22601
    sget-object v0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$1;->$SwitchMap$com$google$protobuf$GeneratedMessageLite$MethodToInvoke:[I

    invoke-virtual {p1}, Lcom/android/carsdk/protobuf/GeneratedMessageLite$MethodToInvoke;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x0

    packed-switch p1, :pswitch_data_0

    .line 22676
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1

    .line 22667
    :pswitch_0
    sget-object p1, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$PolylineForCdu;->PARSER:Lcom/android/carsdk/protobuf/Parser;

    if-nez p1, :cond_1

    const-class p1, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$PolylineForCdu;

    monitor-enter p1

    .line 22668
    :try_start_0
    sget-object p2, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$PolylineForCdu;->PARSER:Lcom/android/carsdk/protobuf/Parser;

    if-nez p2, :cond_0

    .line 22669
    new-instance p2, Lcom/android/carsdk/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;

    sget-object p3, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$PolylineForCdu;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuFNgpRouteMessage$PolylineForCdu;

    invoke-direct {p2, p3}, Lcom/android/carsdk/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;-><init>(Lcom/android/carsdk/protobuf/GeneratedMessageLite;)V

    sput-object p2, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$PolylineForCdu;->PARSER:Lcom/android/carsdk/protobuf/Parser;

    .line 22671
    :cond_0
    monitor-exit p1

    goto :goto_0

    :catchall_0
    move-exception p2

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p2

    .line 22673
    :cond_1
    :goto_0
    sget-object p1, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$PolylineForCdu;->PARSER:Lcom/android/carsdk/protobuf/Parser;

    return-object p1

    .line 22625
    :pswitch_1
    check-cast p2, Lcom/android/carsdk/protobuf/CodedInputStream;

    .line 22627
    check-cast p3, Lcom/android/carsdk/protobuf/ExtensionRegistryLite;

    const/4 p1, 0x0

    :cond_2
    :goto_1
    if-nez p1, :cond_6

    .line 22632
    :try_start_1
    invoke-virtual {p2}, Lcom/android/carsdk/protobuf/CodedInputStream;->readTag()I

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_5

    const/16 v2, 0xa

    if-eq v0, v2, :cond_3

    .line 22638
    invoke-virtual {p2, v0}, Lcom/android/carsdk/protobuf/CodedInputStream;->skipField(I)Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_2

    .line 22644
    :cond_3
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$PolylineForCdu;->point_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    invoke-interface {v0}, Lcom/android/carsdk/protobuf/Internal$ProtobufList;->isModifiable()Z

    move-result v0

    if-nez v0, :cond_4

    .line 22645
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$PolylineForCdu;->point_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    .line 22646
    invoke-static {v0}, Lcom/android/carsdk/protobuf/GeneratedMessageLite;->mutableCopy(Lcom/android/carsdk/protobuf/Internal$ProtobufList;)Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    move-result-object v0

    iput-object v0, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$PolylineForCdu;->point_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    .line 22648
    :cond_4
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$PolylineForCdu;->point_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    .line 22649
    invoke-static {}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Point3f;->parser()Lcom/android/carsdk/protobuf/Parser;

    move-result-object v1

    invoke-virtual {p2, v1, p3}, Lcom/android/carsdk/protobuf/CodedInputStream;->readMessage(Lcom/android/carsdk/protobuf/Parser;Lcom/android/carsdk/protobuf/ExtensionRegistryLite;)Lcom/android/carsdk/protobuf/MessageLite;

    move-result-object v1

    check-cast v1, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Point3f;

    .line 22648
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

    .line 22657
    :try_start_2
    new-instance p2, Ljava/lang/RuntimeException;

    new-instance p3, Lcom/android/carsdk/protobuf/InvalidProtocolBufferException;

    .line 22659
    invoke-virtual {p1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p3, p1}, Lcom/android/carsdk/protobuf/InvalidProtocolBufferException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, p0}, Lcom/android/carsdk/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/android/carsdk/protobuf/MessageLite;)Lcom/android/carsdk/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p2

    :catch_1
    move-exception p1

    .line 22655
    new-instance p2, Ljava/lang/RuntimeException;

    invoke-virtual {p1, p0}, Lcom/android/carsdk/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/android/carsdk/protobuf/MessageLite;)Lcom/android/carsdk/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 22660
    :goto_3
    throw p1

    .line 22664
    :cond_6
    :pswitch_2
    sget-object p1, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$PolylineForCdu;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuFNgpRouteMessage$PolylineForCdu;

    return-object p1

    .line 22616
    :pswitch_3
    check-cast p2, Lcom/android/carsdk/protobuf/GeneratedMessageLite$Visitor;

    .line 22617
    check-cast p3, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$PolylineForCdu;

    .line 22618
    iget-object p1, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$PolylineForCdu;->point_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    iget-object p3, p3, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$PolylineForCdu;->point_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    invoke-interface {p2, p1, p3}, Lcom/android/carsdk/protobuf/GeneratedMessageLite$Visitor;->visitList(Lcom/android/carsdk/protobuf/Internal$ProtobufList;Lcom/android/carsdk/protobuf/Internal$ProtobufList;)Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    move-result-object p1

    iput-object p1, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$PolylineForCdu;->point_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    .line 22619
    sget-object p1, Lcom/android/carsdk/protobuf/GeneratedMessageLite$MergeFromVisitor;->INSTANCE:Lcom/android/carsdk/protobuf/GeneratedMessageLite$MergeFromVisitor;

    return-object p0

    .line 22613
    :pswitch_4
    new-instance p1, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$PolylineForCdu$Builder;

    invoke-direct {p1, v0}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$PolylineForCdu$Builder;-><init>(Landroid/car/hardware/xpu/XpuFNgpRouteMessage$1;)V

    return-object p1

    .line 22609
    :pswitch_5
    iget-object p1, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$PolylineForCdu;->point_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    invoke-interface {p1}, Lcom/android/carsdk/protobuf/Internal$ProtobufList;->makeImmutable()V

    return-object v0

    .line 22606
    :pswitch_6
    sget-object p1, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$PolylineForCdu;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuFNgpRouteMessage$PolylineForCdu;

    return-object p1

    .line 22603
    :pswitch_7
    new-instance p1, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$PolylineForCdu;

    invoke-direct {p1}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$PolylineForCdu;-><init>()V

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

.method public getPoint(I)Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Point3f;
    .locals 1

    .line 22298
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$PolylineForCdu;->point_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1}, Lcom/android/carsdk/protobuf/Internal$ProtobufList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Point3f;

    return-object p1
.end method

.method public getPointCount()I
    .locals 1

    .line 22292
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$PolylineForCdu;->point_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    invoke-interface {v0}, Lcom/android/carsdk/protobuf/Internal$ProtobufList;->size()I

    move-result v0

    return v0
.end method

.method public getPointList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Point3f;",
            ">;"
        }
    .end annotation

    .line 22279
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$PolylineForCdu;->point_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    return-object v0
.end method

.method public getPointOrBuilder(I)Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Point3fOrBuilder;
    .locals 1

    .line 22305
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$PolylineForCdu;->point_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1}, Lcom/android/carsdk/protobuf/Internal$ProtobufList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Point3fOrBuilder;

    return-object p1
.end method

.method public getPointOrBuilderList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "+",
            "Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Point3fOrBuilder;",
            ">;"
        }
    .end annotation

    .line 22286
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$PolylineForCdu;->point_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    return-object v0
.end method

.method public getSerializedSize()I
    .locals 4

    .line 22401
    iget v0, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$PolylineForCdu;->memoizedSerializedSize:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    return v0

    :cond_0
    const/4 v0, 0x0

    move v1, v0

    .line 22405
    :goto_0
    iget-object v2, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$PolylineForCdu;->point_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    invoke-interface {v2}, Lcom/android/carsdk/protobuf/Internal$ProtobufList;->size()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 22406
    iget-object v2, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$PolylineForCdu;->point_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    .line 22407
    invoke-interface {v2, v0}, Lcom/android/carsdk/protobuf/Internal$ProtobufList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/carsdk/protobuf/MessageLite;

    const/4 v3, 0x1

    invoke-static {v3, v2}, Lcom/android/carsdk/protobuf/CodedOutputStream;->computeMessageSize(ILcom/android/carsdk/protobuf/MessageLite;)I

    move-result v2

    add-int/2addr v1, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 22409
    :cond_1
    iput v1, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$PolylineForCdu;->memoizedSerializedSize:I

    return v1
.end method

.method public writeTo(Lcom/android/carsdk/protobuf/CodedOutputStream;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 22395
    :goto_0
    iget-object v1, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$PolylineForCdu;->point_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    invoke-interface {v1}, Lcom/android/carsdk/protobuf/Internal$ProtobufList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 22396
    iget-object v1, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$PolylineForCdu;->point_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

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
