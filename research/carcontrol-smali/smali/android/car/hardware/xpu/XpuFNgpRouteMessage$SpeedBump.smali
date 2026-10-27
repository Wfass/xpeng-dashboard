.class public final Landroid/car/hardware/xpu/XpuFNgpRouteMessage$SpeedBump;
.super Lcom/android/carsdk/protobuf/GeneratedMessageLite;
.source "XpuFNgpRouteMessage.java"

# interfaces
.implements Landroid/car/hardware/xpu/XpuFNgpRouteMessage$SpeedBumpOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/car/hardware/xpu/XpuFNgpRouteMessage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "SpeedBump"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/car/hardware/xpu/XpuFNgpRouteMessage$SpeedBump$Builder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/carsdk/protobuf/GeneratedMessageLite<",
        "Landroid/car/hardware/xpu/XpuFNgpRouteMessage$SpeedBump;",
        "Landroid/car/hardware/xpu/XpuFNgpRouteMessage$SpeedBump$Builder;",
        ">;",
        "Landroid/car/hardware/xpu/XpuFNgpRouteMessage$SpeedBumpOrBuilder;"
    }
.end annotation


# static fields
.field private static final DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuFNgpRouteMessage$SpeedBump;

.field public static final ID_FIELD_NUMBER:I = 0x1

.field private static volatile PARSER:Lcom/android/carsdk/protobuf/Parser; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/carsdk/protobuf/Parser<",
            "Landroid/car/hardware/xpu/XpuFNgpRouteMessage$SpeedBump;",
            ">;"
        }
    .end annotation
.end field

.field public static final POLYGON_FIELD_NUMBER:I = 0x4


# instance fields
.field private id_:Ljava/lang/String;

.field private polygon_:Landroid/car/hardware/xpu/XpuFNgpRouteMessage$PolygonForCdu;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 24118
    new-instance v0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$SpeedBump;

    invoke-direct {v0}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$SpeedBump;-><init>()V

    sput-object v0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$SpeedBump;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuFNgpRouteMessage$SpeedBump;

    .line 24119
    invoke-virtual {v0}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$SpeedBump;->makeImmutable()V

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 23721
    invoke-direct {p0}, Lcom/android/carsdk/protobuf/GeneratedMessageLite;-><init>()V

    const-string v0, ""

    .line 23722
    iput-object v0, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$SpeedBump;->id_:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$41400()Landroid/car/hardware/xpu/XpuFNgpRouteMessage$SpeedBump;
    .locals 1

    .line 23716
    sget-object v0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$SpeedBump;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuFNgpRouteMessage$SpeedBump;

    return-object v0
.end method

.method static synthetic access$41500(Landroid/car/hardware/xpu/XpuFNgpRouteMessage$SpeedBump;Ljava/lang/String;)V
    .locals 0

    .line 23716
    invoke-direct {p0, p1}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$SpeedBump;->setId(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$41600(Landroid/car/hardware/xpu/XpuFNgpRouteMessage$SpeedBump;)V
    .locals 0

    .line 23716
    invoke-direct {p0}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$SpeedBump;->clearId()V

    return-void
.end method

.method static synthetic access$41700(Landroid/car/hardware/xpu/XpuFNgpRouteMessage$SpeedBump;Lcom/android/carsdk/protobuf/ByteString;)V
    .locals 0

    .line 23716
    invoke-direct {p0, p1}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$SpeedBump;->setIdBytes(Lcom/android/carsdk/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$41800(Landroid/car/hardware/xpu/XpuFNgpRouteMessage$SpeedBump;Landroid/car/hardware/xpu/XpuFNgpRouteMessage$PolygonForCdu;)V
    .locals 0

    .line 23716
    invoke-direct {p0, p1}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$SpeedBump;->setPolygon(Landroid/car/hardware/xpu/XpuFNgpRouteMessage$PolygonForCdu;)V

    return-void
.end method

.method static synthetic access$41900(Landroid/car/hardware/xpu/XpuFNgpRouteMessage$SpeedBump;Landroid/car/hardware/xpu/XpuFNgpRouteMessage$PolygonForCdu$Builder;)V
    .locals 0

    .line 23716
    invoke-direct {p0, p1}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$SpeedBump;->setPolygon(Landroid/car/hardware/xpu/XpuFNgpRouteMessage$PolygonForCdu$Builder;)V

    return-void
.end method

.method static synthetic access$42000(Landroid/car/hardware/xpu/XpuFNgpRouteMessage$SpeedBump;Landroid/car/hardware/xpu/XpuFNgpRouteMessage$PolygonForCdu;)V
    .locals 0

    .line 23716
    invoke-direct {p0, p1}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$SpeedBump;->mergePolygon(Landroid/car/hardware/xpu/XpuFNgpRouteMessage$PolygonForCdu;)V

    return-void
.end method

.method static synthetic access$42100(Landroid/car/hardware/xpu/XpuFNgpRouteMessage$SpeedBump;)V
    .locals 0

    .line 23716
    invoke-direct {p0}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$SpeedBump;->clearPolygon()V

    return-void
.end method

.method private clearId()V
    .locals 1

    .line 23755
    invoke-static {}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$SpeedBump;->getDefaultInstance()Landroid/car/hardware/xpu/XpuFNgpRouteMessage$SpeedBump;

    move-result-object v0

    invoke-virtual {v0}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$SpeedBump;->getId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$SpeedBump;->id_:Ljava/lang/String;

    return-void
.end method

.method private clearPolygon()V
    .locals 1

    const/4 v0, 0x0

    .line 23818
    iput-object v0, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$SpeedBump;->polygon_:Landroid/car/hardware/xpu/XpuFNgpRouteMessage$PolygonForCdu;

    return-void
.end method

.method public static getDefaultInstance()Landroid/car/hardware/xpu/XpuFNgpRouteMessage$SpeedBump;
    .locals 1

    .line 24123
    sget-object v0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$SpeedBump;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuFNgpRouteMessage$SpeedBump;

    return-object v0
.end method

.method private mergePolygon(Landroid/car/hardware/xpu/XpuFNgpRouteMessage$PolygonForCdu;)V
    .locals 2

    .line 23806
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$SpeedBump;->polygon_:Landroid/car/hardware/xpu/XpuFNgpRouteMessage$PolygonForCdu;

    if-eqz v0, :cond_0

    .line 23807
    invoke-static {}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$PolygonForCdu;->getDefaultInstance()Landroid/car/hardware/xpu/XpuFNgpRouteMessage$PolygonForCdu;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 23808
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$SpeedBump;->polygon_:Landroid/car/hardware/xpu/XpuFNgpRouteMessage$PolygonForCdu;

    .line 23809
    invoke-static {v0}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$PolygonForCdu;->newBuilder(Landroid/car/hardware/xpu/XpuFNgpRouteMessage$PolygonForCdu;)Landroid/car/hardware/xpu/XpuFNgpRouteMessage$PolygonForCdu$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$PolygonForCdu$Builder;->mergeFrom(Lcom/android/carsdk/protobuf/GeneratedMessageLite;)Lcom/android/carsdk/protobuf/GeneratedMessageLite$Builder;

    move-result-object p1

    check-cast p1, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$PolygonForCdu$Builder;

    invoke-virtual {p1}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$PolygonForCdu$Builder;->buildPartial()Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$PolygonForCdu;

    iput-object p1, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$SpeedBump;->polygon_:Landroid/car/hardware/xpu/XpuFNgpRouteMessage$PolygonForCdu;

    goto :goto_0

    .line 23811
    :cond_0
    iput-object p1, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$SpeedBump;->polygon_:Landroid/car/hardware/xpu/XpuFNgpRouteMessage$PolygonForCdu;

    :goto_0
    return-void
.end method

.method public static newBuilder()Landroid/car/hardware/xpu/XpuFNgpRouteMessage$SpeedBump$Builder;
    .locals 1

    .line 23911
    sget-object v0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$SpeedBump;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuFNgpRouteMessage$SpeedBump;

    invoke-virtual {v0}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$SpeedBump;->toBuilder()Lcom/android/carsdk/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$SpeedBump$Builder;

    return-object v0
.end method

.method public static newBuilder(Landroid/car/hardware/xpu/XpuFNgpRouteMessage$SpeedBump;)Landroid/car/hardware/xpu/XpuFNgpRouteMessage$SpeedBump$Builder;
    .locals 1

    .line 23914
    sget-object v0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$SpeedBump;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuFNgpRouteMessage$SpeedBump;

    invoke-virtual {v0}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$SpeedBump;->toBuilder()Lcom/android/carsdk/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$SpeedBump$Builder;

    invoke-virtual {v0, p0}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$SpeedBump$Builder;->mergeFrom(Lcom/android/carsdk/protobuf/GeneratedMessageLite;)Lcom/android/carsdk/protobuf/GeneratedMessageLite$Builder;

    move-result-object p0

    check-cast p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$SpeedBump$Builder;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Landroid/car/hardware/xpu/XpuFNgpRouteMessage$SpeedBump;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 23888
    sget-object v0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$SpeedBump;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuFNgpRouteMessage$SpeedBump;

    invoke-static {v0, p0}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$SpeedBump;->parseDelimitedFrom(Lcom/android/carsdk/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$SpeedBump;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/android/carsdk/protobuf/ExtensionRegistryLite;)Landroid/car/hardware/xpu/XpuFNgpRouteMessage$SpeedBump;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 23894
    sget-object v0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$SpeedBump;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuFNgpRouteMessage$SpeedBump;

    invoke-static {v0, p0, p1}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$SpeedBump;->parseDelimitedFrom(Lcom/android/carsdk/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/android/carsdk/protobuf/ExtensionRegistryLite;)Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$SpeedBump;

    return-object p0
.end method

.method public static parseFrom(Lcom/android/carsdk/protobuf/ByteString;)Landroid/car/hardware/xpu/XpuFNgpRouteMessage$SpeedBump;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/carsdk/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 23852
    sget-object v0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$SpeedBump;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuFNgpRouteMessage$SpeedBump;

    invoke-static {v0, p0}, Lcom/android/carsdk/protobuf/GeneratedMessageLite;->parseFrom(Lcom/android/carsdk/protobuf/GeneratedMessageLite;Lcom/android/carsdk/protobuf/ByteString;)Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$SpeedBump;

    return-object p0
.end method

.method public static parseFrom(Lcom/android/carsdk/protobuf/ByteString;Lcom/android/carsdk/protobuf/ExtensionRegistryLite;)Landroid/car/hardware/xpu/XpuFNgpRouteMessage$SpeedBump;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/carsdk/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 23859
    sget-object v0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$SpeedBump;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuFNgpRouteMessage$SpeedBump;

    invoke-static {v0, p0, p1}, Lcom/android/carsdk/protobuf/GeneratedMessageLite;->parseFrom(Lcom/android/carsdk/protobuf/GeneratedMessageLite;Lcom/android/carsdk/protobuf/ByteString;Lcom/android/carsdk/protobuf/ExtensionRegistryLite;)Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$SpeedBump;

    return-object p0
.end method

.method public static parseFrom(Lcom/android/carsdk/protobuf/CodedInputStream;)Landroid/car/hardware/xpu/XpuFNgpRouteMessage$SpeedBump;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 23899
    sget-object v0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$SpeedBump;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuFNgpRouteMessage$SpeedBump;

    invoke-static {v0, p0}, Lcom/android/carsdk/protobuf/GeneratedMessageLite;->parseFrom(Lcom/android/carsdk/protobuf/GeneratedMessageLite;Lcom/android/carsdk/protobuf/CodedInputStream;)Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$SpeedBump;

    return-object p0
.end method

.method public static parseFrom(Lcom/android/carsdk/protobuf/CodedInputStream;Lcom/android/carsdk/protobuf/ExtensionRegistryLite;)Landroid/car/hardware/xpu/XpuFNgpRouteMessage$SpeedBump;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 23906
    sget-object v0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$SpeedBump;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuFNgpRouteMessage$SpeedBump;

    invoke-static {v0, p0, p1}, Lcom/android/carsdk/protobuf/GeneratedMessageLite;->parseFrom(Lcom/android/carsdk/protobuf/GeneratedMessageLite;Lcom/android/carsdk/protobuf/CodedInputStream;Lcom/android/carsdk/protobuf/ExtensionRegistryLite;)Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$SpeedBump;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Landroid/car/hardware/xpu/XpuFNgpRouteMessage$SpeedBump;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 23876
    sget-object v0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$SpeedBump;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuFNgpRouteMessage$SpeedBump;

    invoke-static {v0, p0}, Lcom/android/carsdk/protobuf/GeneratedMessageLite;->parseFrom(Lcom/android/carsdk/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$SpeedBump;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/android/carsdk/protobuf/ExtensionRegistryLite;)Landroid/car/hardware/xpu/XpuFNgpRouteMessage$SpeedBump;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 23883
    sget-object v0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$SpeedBump;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuFNgpRouteMessage$SpeedBump;

    invoke-static {v0, p0, p1}, Lcom/android/carsdk/protobuf/GeneratedMessageLite;->parseFrom(Lcom/android/carsdk/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/android/carsdk/protobuf/ExtensionRegistryLite;)Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$SpeedBump;

    return-object p0
.end method

.method public static parseFrom([B)Landroid/car/hardware/xpu/XpuFNgpRouteMessage$SpeedBump;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/carsdk/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 23864
    sget-object v0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$SpeedBump;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuFNgpRouteMessage$SpeedBump;

    invoke-static {v0, p0}, Lcom/android/carsdk/protobuf/GeneratedMessageLite;->parseFrom(Lcom/android/carsdk/protobuf/GeneratedMessageLite;[B)Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$SpeedBump;

    return-object p0
.end method

.method public static parseFrom([BLcom/android/carsdk/protobuf/ExtensionRegistryLite;)Landroid/car/hardware/xpu/XpuFNgpRouteMessage$SpeedBump;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/carsdk/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 23871
    sget-object v0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$SpeedBump;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuFNgpRouteMessage$SpeedBump;

    invoke-static {v0, p0, p1}, Lcom/android/carsdk/protobuf/GeneratedMessageLite;->parseFrom(Lcom/android/carsdk/protobuf/GeneratedMessageLite;[BLcom/android/carsdk/protobuf/ExtensionRegistryLite;)Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$SpeedBump;

    return-object p0
.end method

.method public static parser()Lcom/android/carsdk/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/android/carsdk/protobuf/Parser<",
            "Landroid/car/hardware/xpu/XpuFNgpRouteMessage$SpeedBump;",
            ">;"
        }
    .end annotation

    .line 24129
    sget-object v0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$SpeedBump;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuFNgpRouteMessage$SpeedBump;

    invoke-virtual {v0}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$SpeedBump;->getParserForType()Lcom/android/carsdk/protobuf/Parser;

    move-result-object v0

    return-object v0
.end method

.method private setId(Ljava/lang/String;)V
    .locals 0

    .line 23745
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 23748
    iput-object p1, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$SpeedBump;->id_:Ljava/lang/String;

    return-void
.end method

.method private setIdBytes(Lcom/android/carsdk/protobuf/ByteString;)V
    .locals 0

    .line 23763
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 23765
    invoke-static {p1}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$SpeedBump;->checkByteStringIsUtf8(Lcom/android/carsdk/protobuf/ByteString;)V

    .line 23767
    invoke-virtual {p1}, Lcom/android/carsdk/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$SpeedBump;->id_:Ljava/lang/String;

    return-void
.end method

.method private setPolygon(Landroid/car/hardware/xpu/XpuFNgpRouteMessage$PolygonForCdu$Builder;)V
    .locals 0

    .line 23799
    invoke-virtual {p1}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$PolygonForCdu$Builder;->build()Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$PolygonForCdu;

    iput-object p1, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$SpeedBump;->polygon_:Landroid/car/hardware/xpu/XpuFNgpRouteMessage$PolygonForCdu;

    return-void
.end method

.method private setPolygon(Landroid/car/hardware/xpu/XpuFNgpRouteMessage$PolygonForCdu;)V
    .locals 0

    .line 23789
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 23791
    iput-object p1, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$SpeedBump;->polygon_:Landroid/car/hardware/xpu/XpuFNgpRouteMessage$PolygonForCdu;

    return-void
.end method


# virtual methods
.method protected final dynamicMethod(Lcom/android/carsdk/protobuf/GeneratedMessageLite$MethodToInvoke;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    .line 24025
    sget-object v0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$1;->$SwitchMap$com$google$protobuf$GeneratedMessageLite$MethodToInvoke:[I

    invoke-virtual {p1}, Lcom/android/carsdk/protobuf/GeneratedMessageLite$MethodToInvoke;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x0

    const/4 v1, 0x1

    packed-switch p1, :pswitch_data_0

    .line 24111
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1

    .line 24102
    :pswitch_0
    sget-object p1, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$SpeedBump;->PARSER:Lcom/android/carsdk/protobuf/Parser;

    if-nez p1, :cond_1

    const-class p1, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$SpeedBump;

    monitor-enter p1

    .line 24103
    :try_start_0
    sget-object p2, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$SpeedBump;->PARSER:Lcom/android/carsdk/protobuf/Parser;

    if-nez p2, :cond_0

    .line 24104
    new-instance p2, Lcom/android/carsdk/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;

    sget-object p3, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$SpeedBump;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuFNgpRouteMessage$SpeedBump;

    invoke-direct {p2, p3}, Lcom/android/carsdk/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;-><init>(Lcom/android/carsdk/protobuf/GeneratedMessageLite;)V

    sput-object p2, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$SpeedBump;->PARSER:Lcom/android/carsdk/protobuf/Parser;

    .line 24106
    :cond_0
    monitor-exit p1

    goto :goto_0

    :catchall_0
    move-exception p2

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p2

    .line 24108
    :cond_1
    :goto_0
    sget-object p1, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$SpeedBump;->PARSER:Lcom/android/carsdk/protobuf/Parser;

    return-object p1

    .line 24050
    :pswitch_1
    check-cast p2, Lcom/android/carsdk/protobuf/CodedInputStream;

    .line 24052
    check-cast p3, Lcom/android/carsdk/protobuf/ExtensionRegistryLite;

    const/4 p1, 0x0

    :cond_2
    :goto_1
    if-nez p1, :cond_7

    .line 24057
    :try_start_1
    invoke-virtual {p2}, Lcom/android/carsdk/protobuf/CodedInputStream;->readTag()I

    move-result v2

    if-eqz v2, :cond_6

    const/16 v3, 0xa

    if-eq v2, v3, :cond_5

    const/16 v3, 0x22

    if-eq v2, v3, :cond_3

    .line 24063
    invoke-virtual {p2, v2}, Lcom/android/carsdk/protobuf/CodedInputStream;->skipField(I)Z

    move-result v2

    if-nez v2, :cond_2

    goto :goto_3

    .line 24076
    :cond_3
    iget-object v2, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$SpeedBump;->polygon_:Landroid/car/hardware/xpu/XpuFNgpRouteMessage$PolygonForCdu;

    if-eqz v2, :cond_4

    .line 24077
    invoke-virtual {v2}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$PolygonForCdu;->toBuilder()Lcom/android/carsdk/protobuf/GeneratedMessageLite$Builder;

    move-result-object v2

    check-cast v2, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$PolygonForCdu$Builder;

    goto :goto_2

    :cond_4
    move-object v2, v0

    .line 24079
    :goto_2
    invoke-static {}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$PolygonForCdu;->parser()Lcom/android/carsdk/protobuf/Parser;

    move-result-object v3

    invoke-virtual {p2, v3, p3}, Lcom/android/carsdk/protobuf/CodedInputStream;->readMessage(Lcom/android/carsdk/protobuf/Parser;Lcom/android/carsdk/protobuf/ExtensionRegistryLite;)Lcom/android/carsdk/protobuf/MessageLite;

    move-result-object v3

    check-cast v3, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$PolygonForCdu;

    iput-object v3, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$SpeedBump;->polygon_:Landroid/car/hardware/xpu/XpuFNgpRouteMessage$PolygonForCdu;

    if-eqz v2, :cond_2

    .line 24081
    invoke-virtual {v2, v3}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$PolygonForCdu$Builder;->mergeFrom(Lcom/android/carsdk/protobuf/GeneratedMessageLite;)Lcom/android/carsdk/protobuf/GeneratedMessageLite$Builder;

    .line 24082
    invoke-virtual {v2}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$PolygonForCdu$Builder;->buildPartial()Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object v2

    check-cast v2, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$PolygonForCdu;

    iput-object v2, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$SpeedBump;->polygon_:Landroid/car/hardware/xpu/XpuFNgpRouteMessage$PolygonForCdu;

    goto :goto_1

    .line 24069
    :cond_5
    invoke-virtual {p2}, Lcom/android/carsdk/protobuf/CodedInputStream;->readStringRequireUtf8()Ljava/lang/String;

    move-result-object v2

    .line 24071
    iput-object v2, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$SpeedBump;->id_:Ljava/lang/String;
    :try_end_1
    .catch Lcom/android/carsdk/protobuf/InvalidProtocolBufferException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    :cond_6
    :goto_3
    move p1, v1

    goto :goto_1

    :catchall_1
    move-exception p1

    goto :goto_4

    :catch_0
    move-exception p1

    .line 24092
    :try_start_2
    new-instance p2, Ljava/lang/RuntimeException;

    new-instance p3, Lcom/android/carsdk/protobuf/InvalidProtocolBufferException;

    .line 24094
    invoke-virtual {p1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p3, p1}, Lcom/android/carsdk/protobuf/InvalidProtocolBufferException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, p0}, Lcom/android/carsdk/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/android/carsdk/protobuf/MessageLite;)Lcom/android/carsdk/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p2

    :catch_1
    move-exception p1

    .line 24090
    new-instance p2, Ljava/lang/RuntimeException;

    invoke-virtual {p1, p0}, Lcom/android/carsdk/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/android/carsdk/protobuf/MessageLite;)Lcom/android/carsdk/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 24095
    :goto_4
    throw p1

    .line 24099
    :cond_7
    :pswitch_2
    sget-object p1, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$SpeedBump;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuFNgpRouteMessage$SpeedBump;

    return-object p1

    .line 24039
    :pswitch_3
    check-cast p2, Lcom/android/carsdk/protobuf/GeneratedMessageLite$Visitor;

    .line 24040
    check-cast p3, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$SpeedBump;

    .line 24041
    iget-object p1, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$SpeedBump;->id_:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result p1

    xor-int/2addr p1, v1

    iget-object v0, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$SpeedBump;->id_:Ljava/lang/String;

    iget-object v2, p3, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$SpeedBump;->id_:Ljava/lang/String;

    .line 24042
    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    xor-int/2addr v1, v2

    iget-object v2, p3, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$SpeedBump;->id_:Ljava/lang/String;

    .line 24041
    invoke-interface {p2, p1, v0, v1, v2}, Lcom/android/carsdk/protobuf/GeneratedMessageLite$Visitor;->visitString(ZLjava/lang/String;ZLjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$SpeedBump;->id_:Ljava/lang/String;

    .line 24043
    iget-object p1, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$SpeedBump;->polygon_:Landroid/car/hardware/xpu/XpuFNgpRouteMessage$PolygonForCdu;

    iget-object p3, p3, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$SpeedBump;->polygon_:Landroid/car/hardware/xpu/XpuFNgpRouteMessage$PolygonForCdu;

    invoke-interface {p2, p1, p3}, Lcom/android/carsdk/protobuf/GeneratedMessageLite$Visitor;->visitMessage(Lcom/android/carsdk/protobuf/MessageLite;Lcom/android/carsdk/protobuf/MessageLite;)Lcom/android/carsdk/protobuf/MessageLite;

    move-result-object p1

    check-cast p1, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$PolygonForCdu;

    iput-object p1, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$SpeedBump;->polygon_:Landroid/car/hardware/xpu/XpuFNgpRouteMessage$PolygonForCdu;

    .line 24044
    sget-object p1, Lcom/android/carsdk/protobuf/GeneratedMessageLite$MergeFromVisitor;->INSTANCE:Lcom/android/carsdk/protobuf/GeneratedMessageLite$MergeFromVisitor;

    return-object p0

    .line 24036
    :pswitch_4
    new-instance p1, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$SpeedBump$Builder;

    invoke-direct {p1, v0}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$SpeedBump$Builder;-><init>(Landroid/car/hardware/xpu/XpuFNgpRouteMessage$1;)V

    return-object p1

    :pswitch_5
    return-object v0

    .line 24030
    :pswitch_6
    sget-object p1, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$SpeedBump;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuFNgpRouteMessage$SpeedBump;

    return-object p1

    .line 24027
    :pswitch_7
    new-instance p1, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$SpeedBump;

    invoke-direct {p1}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$SpeedBump;-><init>()V

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

.method public getId()Ljava/lang/String;
    .locals 1

    .line 23730
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$SpeedBump;->id_:Ljava/lang/String;

    return-object v0
.end method

.method public getIdBytes()Lcom/android/carsdk/protobuf/ByteString;
    .locals 1

    .line 23737
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$SpeedBump;->id_:Ljava/lang/String;

    invoke-static {v0}, Lcom/android/carsdk/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/android/carsdk/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getPolygon()Landroid/car/hardware/xpu/XpuFNgpRouteMessage$PolygonForCdu;
    .locals 1

    .line 23782
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$SpeedBump;->polygon_:Landroid/car/hardware/xpu/XpuFNgpRouteMessage$PolygonForCdu;

    if-nez v0, :cond_0

    invoke-static {}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$PolygonForCdu;->getDefaultInstance()Landroid/car/hardware/xpu/XpuFNgpRouteMessage$PolygonForCdu;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public getSerializedSize()I
    .locals 3

    .line 23833
    iget v0, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$SpeedBump;->memoizedSerializedSize:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    return v0

    :cond_0
    const/4 v0, 0x0

    .line 23837
    iget-object v1, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$SpeedBump;->id_:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    const/4 v1, 0x1

    .line 23839
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$SpeedBump;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/carsdk/protobuf/CodedOutputStream;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 23841
    :cond_1
    iget-object v1, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$SpeedBump;->polygon_:Landroid/car/hardware/xpu/XpuFNgpRouteMessage$PolygonForCdu;

    if-eqz v1, :cond_2

    const/4 v1, 0x4

    .line 23843
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$SpeedBump;->getPolygon()Landroid/car/hardware/xpu/XpuFNgpRouteMessage$PolygonForCdu;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/carsdk/protobuf/CodedOutputStream;->computeMessageSize(ILcom/android/carsdk/protobuf/MessageLite;)I

    move-result v1

    add-int/2addr v0, v1

    .line 23845
    :cond_2
    iput v0, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$SpeedBump;->memoizedSerializedSize:I

    return v0
.end method

.method public hasPolygon()Z
    .locals 1

    .line 23776
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$SpeedBump;->polygon_:Landroid/car/hardware/xpu/XpuFNgpRouteMessage$PolygonForCdu;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public writeTo(Lcom/android/carsdk/protobuf/CodedOutputStream;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 23824
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$SpeedBump;->id_:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 23825
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$SpeedBump;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/android/carsdk/protobuf/CodedOutputStream;->writeString(ILjava/lang/String;)V

    .line 23827
    :cond_0
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$SpeedBump;->polygon_:Landroid/car/hardware/xpu/XpuFNgpRouteMessage$PolygonForCdu;

    if-eqz v0, :cond_1

    const/4 v0, 0x4

    .line 23828
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$SpeedBump;->getPolygon()Landroid/car/hardware/xpu/XpuFNgpRouteMessage$PolygonForCdu;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/android/carsdk/protobuf/CodedOutputStream;->writeMessage(ILcom/android/carsdk/protobuf/MessageLite;)V

    :cond_1
    return-void
.end method
