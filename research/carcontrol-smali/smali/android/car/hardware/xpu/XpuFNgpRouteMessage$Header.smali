.class public final Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Header;
.super Lcom/android/carsdk/protobuf/GeneratedMessageLite;
.source "XpuFNgpRouteMessage.java"

# interfaces
.implements Landroid/car/hardware/xpu/XpuFNgpRouteMessage$HeaderOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/car/hardware/xpu/XpuFNgpRouteMessage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Header"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Header$Builder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/carsdk/protobuf/GeneratedMessageLite<",
        "Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Header;",
        "Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Header$Builder;",
        ">;",
        "Landroid/car/hardware/xpu/XpuFNgpRouteMessage$HeaderOrBuilder;"
    }
.end annotation


# static fields
.field private static final DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Header;

.field public static final ID_FIELD_NUMBER:I = 0x1

.field private static volatile PARSER:Lcom/android/carsdk/protobuf/Parser; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/carsdk/protobuf/Parser<",
            "Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Header;",
            ">;"
        }
    .end annotation
.end field

.field public static final PP_UPDATE_TIME_FIELD_NUMBER:I = 0xe

.field public static final PP_VERSION_FIELD_NUMBER:I = 0xd

.field public static final ROUTE_ID_FIELD_NUMBER:I = 0xb

.field public static final ROUTE_VERSION_FIELD_NUMBER:I = 0xc


# instance fields
.field private id_:Ljava/lang/String;

.field private ppUpdateTime_:J

.field private ppVersion_:Ljava/lang/String;

.field private routeId_:J

.field private routeVersion_:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 21183
    new-instance v0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Header;

    invoke-direct {v0}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Header;-><init>()V

    sput-object v0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Header;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Header;

    .line 21184
    invoke-virtual {v0}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Header;->makeImmutable()V

    return-void
.end method

.method private constructor <init>()V
    .locals 3

    .line 20467
    invoke-direct {p0}, Lcom/android/carsdk/protobuf/GeneratedMessageLite;-><init>()V

    const-string v0, ""

    .line 20468
    iput-object v0, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Header;->id_:Ljava/lang/String;

    const-wide/16 v1, 0x0

    .line 20469
    iput-wide v1, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Header;->routeId_:J

    .line 20470
    iput-wide v1, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Header;->routeVersion_:J

    .line 20471
    iput-object v0, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Header;->ppVersion_:Ljava/lang/String;

    .line 20472
    iput-wide v1, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Header;->ppUpdateTime_:J

    return-void
.end method

.method static synthetic access$35000()Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Header;
    .locals 1

    .line 20462
    sget-object v0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Header;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Header;

    return-object v0
.end method

.method static synthetic access$35100(Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Header;Ljava/lang/String;)V
    .locals 0

    .line 20462
    invoke-direct {p0, p1}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Header;->setId(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$35200(Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Header;)V
    .locals 0

    .line 20462
    invoke-direct {p0}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Header;->clearId()V

    return-void
.end method

.method static synthetic access$35300(Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Header;Lcom/android/carsdk/protobuf/ByteString;)V
    .locals 0

    .line 20462
    invoke-direct {p0, p1}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Header;->setIdBytes(Lcom/android/carsdk/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$35400(Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Header;J)V
    .locals 0

    .line 20462
    invoke-direct {p0, p1, p2}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Header;->setRouteId(J)V

    return-void
.end method

.method static synthetic access$35500(Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Header;)V
    .locals 0

    .line 20462
    invoke-direct {p0}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Header;->clearRouteId()V

    return-void
.end method

.method static synthetic access$35600(Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Header;J)V
    .locals 0

    .line 20462
    invoke-direct {p0, p1, p2}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Header;->setRouteVersion(J)V

    return-void
.end method

.method static synthetic access$35700(Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Header;)V
    .locals 0

    .line 20462
    invoke-direct {p0}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Header;->clearRouteVersion()V

    return-void
.end method

.method static synthetic access$35800(Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Header;Ljava/lang/String;)V
    .locals 0

    .line 20462
    invoke-direct {p0, p1}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Header;->setPpVersion(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$35900(Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Header;)V
    .locals 0

    .line 20462
    invoke-direct {p0}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Header;->clearPpVersion()V

    return-void
.end method

.method static synthetic access$36000(Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Header;Lcom/android/carsdk/protobuf/ByteString;)V
    .locals 0

    .line 20462
    invoke-direct {p0, p1}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Header;->setPpVersionBytes(Lcom/android/carsdk/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$36100(Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Header;J)V
    .locals 0

    .line 20462
    invoke-direct {p0, p1, p2}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Header;->setPpUpdateTime(J)V

    return-void
.end method

.method static synthetic access$36200(Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Header;)V
    .locals 0

    .line 20462
    invoke-direct {p0}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Header;->clearPpUpdateTime()V

    return-void
.end method

.method private clearId()V
    .locals 1

    .line 20521
    invoke-static {}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Header;->getDefaultInstance()Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Header;

    move-result-object v0

    invoke-virtual {v0}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Header;->getId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Header;->id_:Ljava/lang/String;

    return-void
.end method

.method private clearPpUpdateTime()V
    .locals 2

    const-wide/16 v0, 0x0

    .line 20708
    iput-wide v0, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Header;->ppUpdateTime_:J

    return-void
.end method

.method private clearPpVersion()V
    .locals 1

    .line 20657
    invoke-static {}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Header;->getDefaultInstance()Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Header;

    move-result-object v0

    invoke-virtual {v0}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Header;->getPpVersion()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Header;->ppVersion_:Ljava/lang/String;

    return-void
.end method

.method private clearRouteId()V
    .locals 2

    const-wide/16 v0, 0x0

    .line 20572
    iput-wide v0, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Header;->routeId_:J

    return-void
.end method

.method private clearRouteVersion()V
    .locals 2

    const-wide/16 v0, 0x0

    .line 20607
    iput-wide v0, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Header;->routeVersion_:J

    return-void
.end method

.method public static getDefaultInstance()Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Header;
    .locals 1

    .line 21188
    sget-object v0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Header;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Header;

    return-object v0
.end method

.method public static newBuilder()Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Header$Builder;
    .locals 1

    .line 20821
    sget-object v0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Header;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Header;

    invoke-virtual {v0}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Header;->toBuilder()Lcom/android/carsdk/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Header$Builder;

    return-object v0
.end method

.method public static newBuilder(Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Header;)Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Header$Builder;
    .locals 1

    .line 20824
    sget-object v0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Header;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Header;

    invoke-virtual {v0}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Header;->toBuilder()Lcom/android/carsdk/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Header$Builder;

    invoke-virtual {v0, p0}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Header$Builder;->mergeFrom(Lcom/android/carsdk/protobuf/GeneratedMessageLite;)Lcom/android/carsdk/protobuf/GeneratedMessageLite$Builder;

    move-result-object p0

    check-cast p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Header$Builder;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Header;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 20798
    sget-object v0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Header;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Header;

    invoke-static {v0, p0}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Header;->parseDelimitedFrom(Lcom/android/carsdk/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Header;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/android/carsdk/protobuf/ExtensionRegistryLite;)Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Header;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 20804
    sget-object v0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Header;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Header;

    invoke-static {v0, p0, p1}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Header;->parseDelimitedFrom(Lcom/android/carsdk/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/android/carsdk/protobuf/ExtensionRegistryLite;)Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Header;

    return-object p0
.end method

.method public static parseFrom(Lcom/android/carsdk/protobuf/ByteString;)Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Header;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/carsdk/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 20762
    sget-object v0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Header;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Header;

    invoke-static {v0, p0}, Lcom/android/carsdk/protobuf/GeneratedMessageLite;->parseFrom(Lcom/android/carsdk/protobuf/GeneratedMessageLite;Lcom/android/carsdk/protobuf/ByteString;)Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Header;

    return-object p0
.end method

.method public static parseFrom(Lcom/android/carsdk/protobuf/ByteString;Lcom/android/carsdk/protobuf/ExtensionRegistryLite;)Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Header;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/carsdk/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 20769
    sget-object v0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Header;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Header;

    invoke-static {v0, p0, p1}, Lcom/android/carsdk/protobuf/GeneratedMessageLite;->parseFrom(Lcom/android/carsdk/protobuf/GeneratedMessageLite;Lcom/android/carsdk/protobuf/ByteString;Lcom/android/carsdk/protobuf/ExtensionRegistryLite;)Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Header;

    return-object p0
.end method

.method public static parseFrom(Lcom/android/carsdk/protobuf/CodedInputStream;)Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Header;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 20809
    sget-object v0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Header;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Header;

    invoke-static {v0, p0}, Lcom/android/carsdk/protobuf/GeneratedMessageLite;->parseFrom(Lcom/android/carsdk/protobuf/GeneratedMessageLite;Lcom/android/carsdk/protobuf/CodedInputStream;)Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Header;

    return-object p0
.end method

.method public static parseFrom(Lcom/android/carsdk/protobuf/CodedInputStream;Lcom/android/carsdk/protobuf/ExtensionRegistryLite;)Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Header;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 20816
    sget-object v0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Header;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Header;

    invoke-static {v0, p0, p1}, Lcom/android/carsdk/protobuf/GeneratedMessageLite;->parseFrom(Lcom/android/carsdk/protobuf/GeneratedMessageLite;Lcom/android/carsdk/protobuf/CodedInputStream;Lcom/android/carsdk/protobuf/ExtensionRegistryLite;)Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Header;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Header;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 20786
    sget-object v0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Header;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Header;

    invoke-static {v0, p0}, Lcom/android/carsdk/protobuf/GeneratedMessageLite;->parseFrom(Lcom/android/carsdk/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Header;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/android/carsdk/protobuf/ExtensionRegistryLite;)Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Header;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 20793
    sget-object v0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Header;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Header;

    invoke-static {v0, p0, p1}, Lcom/android/carsdk/protobuf/GeneratedMessageLite;->parseFrom(Lcom/android/carsdk/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/android/carsdk/protobuf/ExtensionRegistryLite;)Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Header;

    return-object p0
.end method

.method public static parseFrom([B)Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Header;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/carsdk/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 20774
    sget-object v0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Header;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Header;

    invoke-static {v0, p0}, Lcom/android/carsdk/protobuf/GeneratedMessageLite;->parseFrom(Lcom/android/carsdk/protobuf/GeneratedMessageLite;[B)Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Header;

    return-object p0
.end method

.method public static parseFrom([BLcom/android/carsdk/protobuf/ExtensionRegistryLite;)Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Header;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/carsdk/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 20781
    sget-object v0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Header;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Header;

    invoke-static {v0, p0, p1}, Lcom/android/carsdk/protobuf/GeneratedMessageLite;->parseFrom(Lcom/android/carsdk/protobuf/GeneratedMessageLite;[BLcom/android/carsdk/protobuf/ExtensionRegistryLite;)Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Header;

    return-object p0
.end method

.method public static parser()Lcom/android/carsdk/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/android/carsdk/protobuf/Parser<",
            "Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Header;",
            ">;"
        }
    .end annotation

    .line 21194
    sget-object v0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Header;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Header;

    invoke-virtual {v0}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Header;->getParserForType()Lcom/android/carsdk/protobuf/Parser;

    move-result-object v0

    return-object v0
.end method

.method private setId(Ljava/lang/String;)V
    .locals 0

    .line 20507
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 20510
    iput-object p1, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Header;->id_:Ljava/lang/String;

    return-void
.end method

.method private setIdBytes(Lcom/android/carsdk/protobuf/ByteString;)V
    .locals 0

    .line 20533
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 20535
    invoke-static {p1}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Header;->checkByteStringIsUtf8(Lcom/android/carsdk/protobuf/ByteString;)V

    .line 20537
    invoke-virtual {p1}, Lcom/android/carsdk/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Header;->id_:Ljava/lang/String;

    return-void
.end method

.method private setPpUpdateTime(J)V
    .locals 0

    .line 20697
    iput-wide p1, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Header;->ppUpdateTime_:J

    return-void
.end method

.method private setPpVersion(Ljava/lang/String;)V
    .locals 0

    .line 20643
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 20646
    iput-object p1, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Header;->ppVersion_:Ljava/lang/String;

    return-void
.end method

.method private setPpVersionBytes(Lcom/android/carsdk/protobuf/ByteString;)V
    .locals 0

    .line 20669
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 20671
    invoke-static {p1}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Header;->checkByteStringIsUtf8(Lcom/android/carsdk/protobuf/ByteString;)V

    .line 20673
    invoke-virtual {p1}, Lcom/android/carsdk/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Header;->ppVersion_:Ljava/lang/String;

    return-void
.end method

.method private setRouteId(J)V
    .locals 0

    .line 20561
    iput-wide p1, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Header;->routeId_:J

    return-void
.end method

.method private setRouteVersion(J)V
    .locals 0

    .line 20596
    iput-wide p1, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Header;->routeVersion_:J

    return-void
.end method


# virtual methods
.method protected final dynamicMethod(Lcom/android/carsdk/protobuf/GeneratedMessageLite$MethodToInvoke;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 10

    .line 21075
    sget-object v0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$1;->$SwitchMap$com$google$protobuf$GeneratedMessageLite$MethodToInvoke:[I

    invoke-virtual {p1}, Lcom/android/carsdk/protobuf/GeneratedMessageLite$MethodToInvoke;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x1

    packed-switch p1, :pswitch_data_0

    .line 21176
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1

    .line 21167
    :pswitch_0
    sget-object p1, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Header;->PARSER:Lcom/android/carsdk/protobuf/Parser;

    if-nez p1, :cond_1

    const-class p1, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Header;

    monitor-enter p1

    .line 21168
    :try_start_0
    sget-object p2, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Header;->PARSER:Lcom/android/carsdk/protobuf/Parser;

    if-nez p2, :cond_0

    .line 21169
    new-instance p2, Lcom/android/carsdk/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;

    sget-object p3, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Header;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Header;

    invoke-direct {p2, p3}, Lcom/android/carsdk/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;-><init>(Lcom/android/carsdk/protobuf/GeneratedMessageLite;)V

    sput-object p2, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Header;->PARSER:Lcom/android/carsdk/protobuf/Parser;

    .line 21171
    :cond_0
    monitor-exit p1

    goto :goto_0

    :catchall_0
    move-exception p2

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p2

    .line 21173
    :cond_1
    :goto_0
    sget-object p1, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Header;->PARSER:Lcom/android/carsdk/protobuf/Parser;

    return-object p1

    .line 21107
    :pswitch_1
    check-cast p2, Lcom/android/carsdk/protobuf/CodedInputStream;

    .line 21109
    check-cast p3, Lcom/android/carsdk/protobuf/ExtensionRegistryLite;

    :cond_2
    :goto_1
    if-nez v1, :cond_9

    .line 21114
    :try_start_1
    invoke-virtual {p2}, Lcom/android/carsdk/protobuf/CodedInputStream;->readTag()I

    move-result p1

    if-eqz p1, :cond_8

    const/16 p3, 0xa

    if-eq p1, p3, :cond_7

    const/16 p3, 0x58

    if-eq p1, p3, :cond_6

    const/16 p3, 0x60

    if-eq p1, p3, :cond_5

    const/16 p3, 0x6a

    if-eq p1, p3, :cond_4

    const/16 p3, 0x70

    if-eq p1, p3, :cond_3

    .line 21120
    invoke-virtual {p2, p1}, Lcom/android/carsdk/protobuf/CodedInputStream;->skipField(I)Z

    move-result p1

    if-nez p1, :cond_2

    goto :goto_2

    .line 21149
    :cond_3
    invoke-virtual {p2}, Lcom/android/carsdk/protobuf/CodedInputStream;->readInt64()J

    move-result-wide v3

    iput-wide v3, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Header;->ppUpdateTime_:J

    goto :goto_1

    .line 21142
    :cond_4
    invoke-virtual {p2}, Lcom/android/carsdk/protobuf/CodedInputStream;->readStringRequireUtf8()Ljava/lang/String;

    move-result-object p1

    .line 21144
    iput-object p1, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Header;->ppVersion_:Ljava/lang/String;

    goto :goto_1

    .line 21138
    :cond_5
    invoke-virtual {p2}, Lcom/android/carsdk/protobuf/CodedInputStream;->readUInt64()J

    move-result-wide v3

    iput-wide v3, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Header;->routeVersion_:J

    goto :goto_1

    .line 21133
    :cond_6
    invoke-virtual {p2}, Lcom/android/carsdk/protobuf/CodedInputStream;->readInt64()J

    move-result-wide v3

    iput-wide v3, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Header;->routeId_:J

    goto :goto_1

    .line 21126
    :cond_7
    invoke-virtual {p2}, Lcom/android/carsdk/protobuf/CodedInputStream;->readStringRequireUtf8()Ljava/lang/String;

    move-result-object p1

    .line 21128
    iput-object p1, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Header;->id_:Ljava/lang/String;
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

    .line 21157
    :try_start_2
    new-instance p2, Ljava/lang/RuntimeException;

    new-instance p3, Lcom/android/carsdk/protobuf/InvalidProtocolBufferException;

    .line 21159
    invoke-virtual {p1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p3, p1}, Lcom/android/carsdk/protobuf/InvalidProtocolBufferException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, p0}, Lcom/android/carsdk/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/android/carsdk/protobuf/MessageLite;)Lcom/android/carsdk/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p2

    :catch_1
    move-exception p1

    .line 21155
    new-instance p2, Ljava/lang/RuntimeException;

    invoke-virtual {p1, p0}, Lcom/android/carsdk/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/android/carsdk/protobuf/MessageLite;)Lcom/android/carsdk/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 21160
    :goto_3
    throw p1

    .line 21164
    :cond_9
    :pswitch_2
    sget-object p1, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Header;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Header;

    return-object p1

    .line 21089
    :pswitch_3
    move-object v0, p2

    check-cast v0, Lcom/android/carsdk/protobuf/GeneratedMessageLite$Visitor;

    .line 21090
    check-cast p3, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Header;

    .line 21091
    iget-object p1, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Header;->id_:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result p1

    xor-int/2addr p1, v2

    iget-object p2, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Header;->id_:Ljava/lang/String;

    iget-object v3, p3, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Header;->id_:Ljava/lang/String;

    .line 21092
    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    xor-int/2addr v3, v2

    iget-object v4, p3, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Header;->id_:Ljava/lang/String;

    .line 21091
    invoke-interface {v0, p1, p2, v3, v4}, Lcom/android/carsdk/protobuf/GeneratedMessageLite$Visitor;->visitString(ZLjava/lang/String;ZLjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Header;->id_:Ljava/lang/String;

    .line 21093
    iget-wide v5, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Header;->routeId_:J

    const-wide/16 p1, 0x0

    cmp-long v3, v5, p1

    if-eqz v3, :cond_a

    move v4, v2

    goto :goto_4

    :cond_a
    move v4, v1

    :goto_4
    iget-wide v8, p3, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Header;->routeId_:J

    cmp-long v3, v8, p1

    if-eqz v3, :cond_b

    move v7, v2

    goto :goto_5

    :cond_b
    move v7, v1

    :goto_5
    move-object v3, v0

    invoke-interface/range {v3 .. v9}, Lcom/android/carsdk/protobuf/GeneratedMessageLite$Visitor;->visitLong(ZJZJ)J

    move-result-wide v3

    iput-wide v3, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Header;->routeId_:J

    .line 21095
    iget-wide v5, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Header;->routeVersion_:J

    cmp-long v3, v5, p1

    if-eqz v3, :cond_c

    move v4, v2

    goto :goto_6

    :cond_c
    move v4, v1

    :goto_6
    iget-wide v8, p3, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Header;->routeVersion_:J

    cmp-long v3, v8, p1

    if-eqz v3, :cond_d

    move v7, v2

    goto :goto_7

    :cond_d
    move v7, v1

    :goto_7
    move-object v3, v0

    invoke-interface/range {v3 .. v9}, Lcom/android/carsdk/protobuf/GeneratedMessageLite$Visitor;->visitLong(ZJZJ)J

    move-result-wide v3

    iput-wide v3, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Header;->routeVersion_:J

    .line 21097
    iget-object v3, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Header;->ppVersion_:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    xor-int/2addr v3, v2

    iget-object v4, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Header;->ppVersion_:Ljava/lang/String;

    iget-object v5, p3, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Header;->ppVersion_:Ljava/lang/String;

    .line 21098
    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    xor-int/2addr v5, v2

    iget-object v6, p3, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Header;->ppVersion_:Ljava/lang/String;

    .line 21097
    invoke-interface {v0, v3, v4, v5, v6}, Lcom/android/carsdk/protobuf/GeneratedMessageLite$Visitor;->visitString(ZLjava/lang/String;ZLjava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Header;->ppVersion_:Ljava/lang/String;

    .line 21099
    iget-wide v3, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Header;->ppUpdateTime_:J

    cmp-long v5, v3, p1

    if-eqz v5, :cond_e

    move v5, v2

    goto :goto_8

    :cond_e
    move v5, v1

    :goto_8
    iget-wide v6, p3, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Header;->ppUpdateTime_:J

    cmp-long p1, v6, p1

    if-eqz p1, :cond_f

    move p1, v2

    goto :goto_9

    :cond_f
    move p1, v1

    :goto_9
    move v1, v5

    move-wide v2, v3

    move v4, p1

    move-wide v5, v6

    invoke-interface/range {v0 .. v6}, Lcom/android/carsdk/protobuf/GeneratedMessageLite$Visitor;->visitLong(ZJZJ)J

    move-result-wide p1

    iput-wide p1, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Header;->ppUpdateTime_:J

    .line 21101
    sget-object p1, Lcom/android/carsdk/protobuf/GeneratedMessageLite$MergeFromVisitor;->INSTANCE:Lcom/android/carsdk/protobuf/GeneratedMessageLite$MergeFromVisitor;

    return-object p0

    .line 21086
    :pswitch_4
    new-instance p1, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Header$Builder;

    invoke-direct {p1, v0}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Header$Builder;-><init>(Landroid/car/hardware/xpu/XpuFNgpRouteMessage$1;)V

    return-object p1

    :pswitch_5
    return-object v0

    .line 21080
    :pswitch_6
    sget-object p1, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Header;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Header;

    return-object p1

    .line 21077
    :pswitch_7
    new-instance p1, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Header;

    invoke-direct {p1}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Header;-><init>()V

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

.method public getId()Ljava/lang/String;
    .locals 1

    .line 20484
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Header;->id_:Ljava/lang/String;

    return-object v0
.end method

.method public getIdBytes()Lcom/android/carsdk/protobuf/ByteString;
    .locals 1

    .line 20495
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Header;->id_:Ljava/lang/String;

    invoke-static {v0}, Lcom/android/carsdk/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/android/carsdk/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getPpUpdateTime()J
    .locals 2

    .line 20686
    iget-wide v0, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Header;->ppUpdateTime_:J

    return-wide v0
.end method

.method public getPpVersion()Ljava/lang/String;
    .locals 1

    .line 20620
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Header;->ppVersion_:Ljava/lang/String;

    return-object v0
.end method

.method public getPpVersionBytes()Lcom/android/carsdk/protobuf/ByteString;
    .locals 1

    .line 20631
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Header;->ppVersion_:Ljava/lang/String;

    invoke-static {v0}, Lcom/android/carsdk/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/android/carsdk/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getRouteId()J
    .locals 2

    .line 20550
    iget-wide v0, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Header;->routeId_:J

    return-wide v0
.end method

.method public getRouteVersion()J
    .locals 2

    .line 20585
    iget-wide v0, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Header;->routeVersion_:J

    return-wide v0
.end method

.method public getSerializedSize()I
    .locals 6

    .line 20731
    iget v0, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Header;->memoizedSerializedSize:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    return v0

    :cond_0
    const/4 v0, 0x0

    .line 20735
    iget-object v1, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Header;->id_:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    const/4 v1, 0x1

    .line 20737
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Header;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/carsdk/protobuf/CodedOutputStream;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 20739
    :cond_1
    iget-wide v1, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Header;->routeId_:J

    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-eqz v5, :cond_2

    const/16 v5, 0xb

    .line 20741
    invoke-static {v5, v1, v2}, Lcom/android/carsdk/protobuf/CodedOutputStream;->computeInt64Size(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 20743
    :cond_2
    iget-wide v1, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Header;->routeVersion_:J

    cmp-long v5, v1, v3

    if-eqz v5, :cond_3

    const/16 v5, 0xc

    .line 20745
    invoke-static {v5, v1, v2}, Lcom/android/carsdk/protobuf/CodedOutputStream;->computeUInt64Size(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 20747
    :cond_3
    iget-object v1, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Header;->ppVersion_:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_4

    const/16 v1, 0xd

    .line 20749
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Header;->getPpVersion()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/carsdk/protobuf/CodedOutputStream;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 20751
    :cond_4
    iget-wide v1, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Header;->ppUpdateTime_:J

    cmp-long v3, v1, v3

    if-eqz v3, :cond_5

    const/16 v3, 0xe

    .line 20753
    invoke-static {v3, v1, v2}, Lcom/android/carsdk/protobuf/CodedOutputStream;->computeInt64Size(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 20755
    :cond_5
    iput v0, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Header;->memoizedSerializedSize:I

    return v0
.end method

.method public writeTo(Lcom/android/carsdk/protobuf/CodedOutputStream;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 20713
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Header;->id_:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 20714
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Header;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/android/carsdk/protobuf/CodedOutputStream;->writeString(ILjava/lang/String;)V

    .line 20716
    :cond_0
    iget-wide v0, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Header;->routeId_:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_1

    const/16 v4, 0xb

    .line 20717
    invoke-virtual {p1, v4, v0, v1}, Lcom/android/carsdk/protobuf/CodedOutputStream;->writeInt64(IJ)V

    .line 20719
    :cond_1
    iget-wide v0, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Header;->routeVersion_:J

    cmp-long v4, v0, v2

    if-eqz v4, :cond_2

    const/16 v4, 0xc

    .line 20720
    invoke-virtual {p1, v4, v0, v1}, Lcom/android/carsdk/protobuf/CodedOutputStream;->writeUInt64(IJ)V

    .line 20722
    :cond_2
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Header;->ppVersion_:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    const/16 v0, 0xd

    .line 20723
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Header;->getPpVersion()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/android/carsdk/protobuf/CodedOutputStream;->writeString(ILjava/lang/String;)V

    .line 20725
    :cond_3
    iget-wide v0, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Header;->ppUpdateTime_:J

    cmp-long v2, v0, v2

    if-eqz v2, :cond_4

    const/16 v2, 0xe

    .line 20726
    invoke-virtual {p1, v2, v0, v1}, Lcom/android/carsdk/protobuf/CodedOutputStream;->writeInt64(IJ)V

    :cond_4
    return-void
.end method
