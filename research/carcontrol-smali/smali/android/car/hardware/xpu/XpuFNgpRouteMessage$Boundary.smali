.class public final Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Boundary;
.super Lcom/android/carsdk/protobuf/GeneratedMessageLite;
.source "XpuFNgpRouteMessage.java"

# interfaces
.implements Landroid/car/hardware/xpu/XpuFNgpRouteMessage$BoundaryOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/car/hardware/xpu/XpuFNgpRouteMessage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Boundary"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Boundary$Builder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/carsdk/protobuf/GeneratedMessageLite<",
        "Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Boundary;",
        "Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Boundary$Builder;",
        ">;",
        "Landroid/car/hardware/xpu/XpuFNgpRouteMessage$BoundaryOrBuilder;"
    }
.end annotation


# static fields
.field public static final ASCRIPTION_FIELD_NUMBER:I = 0x5

.field private static final DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Boundary;

.field public static final ID_FIELD_NUMBER:I = 0x1

.field private static volatile PARSER:Lcom/android/carsdk/protobuf/Parser; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/carsdk/protobuf/Parser<",
            "Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Boundary;",
            ">;"
        }
    .end annotation
.end field

.field public static final POLYLINE_FIELD_NUMBER:I = 0x7


# instance fields
.field private ascription_:I

.field private id_:Ljava/lang/String;

.field private polyline_:Landroid/car/hardware/xpu/XpuFNgpRouteMessage$PolylineForCdu;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 24665
    new-instance v0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Boundary;

    invoke-direct {v0}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Boundary;-><init>()V

    sput-object v0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Boundary;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Boundary;

    .line 24666
    invoke-virtual {v0}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Boundary;->makeImmutable()V

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 24177
    invoke-direct {p0}, Lcom/android/carsdk/protobuf/GeneratedMessageLite;-><init>()V

    const-string v0, ""

    .line 24178
    iput-object v0, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Boundary;->id_:Ljava/lang/String;

    const/4 v0, 0x0

    .line 24179
    iput v0, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Boundary;->ascription_:I

    return-void
.end method

.method static synthetic access$42300()Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Boundary;
    .locals 1

    .line 24172
    sget-object v0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Boundary;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Boundary;

    return-object v0
.end method

.method static synthetic access$42400(Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Boundary;Ljava/lang/String;)V
    .locals 0

    .line 24172
    invoke-direct {p0, p1}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Boundary;->setId(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$42500(Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Boundary;)V
    .locals 0

    .line 24172
    invoke-direct {p0}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Boundary;->clearId()V

    return-void
.end method

.method static synthetic access$42600(Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Boundary;Lcom/android/carsdk/protobuf/ByteString;)V
    .locals 0

    .line 24172
    invoke-direct {p0, p1}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Boundary;->setIdBytes(Lcom/android/carsdk/protobuf/ByteString;)V

    return-void
.end method

.method static synthetic access$42700(Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Boundary;I)V
    .locals 0

    .line 24172
    invoke-direct {p0, p1}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Boundary;->setAscriptionValue(I)V

    return-void
.end method

.method static synthetic access$42800(Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Boundary;Landroid/car/hardware/xpu/XpuFNgpRouteMessage$BoundaryAscription;)V
    .locals 0

    .line 24172
    invoke-direct {p0, p1}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Boundary;->setAscription(Landroid/car/hardware/xpu/XpuFNgpRouteMessage$BoundaryAscription;)V

    return-void
.end method

.method static synthetic access$42900(Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Boundary;)V
    .locals 0

    .line 24172
    invoke-direct {p0}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Boundary;->clearAscription()V

    return-void
.end method

.method static synthetic access$43000(Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Boundary;Landroid/car/hardware/xpu/XpuFNgpRouteMessage$PolylineForCdu;)V
    .locals 0

    .line 24172
    invoke-direct {p0, p1}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Boundary;->setPolyline(Landroid/car/hardware/xpu/XpuFNgpRouteMessage$PolylineForCdu;)V

    return-void
.end method

.method static synthetic access$43100(Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Boundary;Landroid/car/hardware/xpu/XpuFNgpRouteMessage$PolylineForCdu$Builder;)V
    .locals 0

    .line 24172
    invoke-direct {p0, p1}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Boundary;->setPolyline(Landroid/car/hardware/xpu/XpuFNgpRouteMessage$PolylineForCdu$Builder;)V

    return-void
.end method

.method static synthetic access$43200(Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Boundary;Landroid/car/hardware/xpu/XpuFNgpRouteMessage$PolylineForCdu;)V
    .locals 0

    .line 24172
    invoke-direct {p0, p1}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Boundary;->mergePolyline(Landroid/car/hardware/xpu/XpuFNgpRouteMessage$PolylineForCdu;)V

    return-void
.end method

.method static synthetic access$43300(Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Boundary;)V
    .locals 0

    .line 24172
    invoke-direct {p0}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Boundary;->clearPolyline()V

    return-void
.end method

.method private clearAscription()V
    .locals 1

    const/4 v0, 0x0

    .line 24263
    iput v0, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Boundary;->ascription_:I

    return-void
.end method

.method private clearId()V
    .locals 1

    .line 24212
    invoke-static {}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Boundary;->getDefaultInstance()Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Boundary;

    move-result-object v0

    invoke-virtual {v0}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Boundary;->getId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Boundary;->id_:Ljava/lang/String;

    return-void
.end method

.method private clearPolyline()V
    .locals 1

    const/4 v0, 0x0

    .line 24314
    iput-object v0, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Boundary;->polyline_:Landroid/car/hardware/xpu/XpuFNgpRouteMessage$PolylineForCdu;

    return-void
.end method

.method public static getDefaultInstance()Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Boundary;
    .locals 1

    .line 24670
    sget-object v0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Boundary;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Boundary;

    return-object v0
.end method

.method private mergePolyline(Landroid/car/hardware/xpu/XpuFNgpRouteMessage$PolylineForCdu;)V
    .locals 2

    .line 24302
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Boundary;->polyline_:Landroid/car/hardware/xpu/XpuFNgpRouteMessage$PolylineForCdu;

    if-eqz v0, :cond_0

    .line 24303
    invoke-static {}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$PolylineForCdu;->getDefaultInstance()Landroid/car/hardware/xpu/XpuFNgpRouteMessage$PolylineForCdu;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 24304
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Boundary;->polyline_:Landroid/car/hardware/xpu/XpuFNgpRouteMessage$PolylineForCdu;

    .line 24305
    invoke-static {v0}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$PolylineForCdu;->newBuilder(Landroid/car/hardware/xpu/XpuFNgpRouteMessage$PolylineForCdu;)Landroid/car/hardware/xpu/XpuFNgpRouteMessage$PolylineForCdu$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$PolylineForCdu$Builder;->mergeFrom(Lcom/android/carsdk/protobuf/GeneratedMessageLite;)Lcom/android/carsdk/protobuf/GeneratedMessageLite$Builder;

    move-result-object p1

    check-cast p1, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$PolylineForCdu$Builder;

    invoke-virtual {p1}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$PolylineForCdu$Builder;->buildPartial()Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$PolylineForCdu;

    iput-object p1, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Boundary;->polyline_:Landroid/car/hardware/xpu/XpuFNgpRouteMessage$PolylineForCdu;

    goto :goto_0

    .line 24307
    :cond_0
    iput-object p1, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Boundary;->polyline_:Landroid/car/hardware/xpu/XpuFNgpRouteMessage$PolylineForCdu;

    :goto_0
    return-void
.end method

.method public static newBuilder()Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Boundary$Builder;
    .locals 1

    .line 24414
    sget-object v0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Boundary;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Boundary;

    invoke-virtual {v0}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Boundary;->toBuilder()Lcom/android/carsdk/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Boundary$Builder;

    return-object v0
.end method

.method public static newBuilder(Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Boundary;)Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Boundary$Builder;
    .locals 1

    .line 24417
    sget-object v0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Boundary;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Boundary;

    invoke-virtual {v0}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Boundary;->toBuilder()Lcom/android/carsdk/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Boundary$Builder;

    invoke-virtual {v0, p0}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Boundary$Builder;->mergeFrom(Lcom/android/carsdk/protobuf/GeneratedMessageLite;)Lcom/android/carsdk/protobuf/GeneratedMessageLite$Builder;

    move-result-object p0

    check-cast p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Boundary$Builder;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Boundary;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 24391
    sget-object v0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Boundary;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Boundary;

    invoke-static {v0, p0}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Boundary;->parseDelimitedFrom(Lcom/android/carsdk/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Boundary;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/android/carsdk/protobuf/ExtensionRegistryLite;)Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Boundary;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 24397
    sget-object v0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Boundary;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Boundary;

    invoke-static {v0, p0, p1}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Boundary;->parseDelimitedFrom(Lcom/android/carsdk/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/android/carsdk/protobuf/ExtensionRegistryLite;)Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Boundary;

    return-object p0
.end method

.method public static parseFrom(Lcom/android/carsdk/protobuf/ByteString;)Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Boundary;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/carsdk/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 24355
    sget-object v0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Boundary;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Boundary;

    invoke-static {v0, p0}, Lcom/android/carsdk/protobuf/GeneratedMessageLite;->parseFrom(Lcom/android/carsdk/protobuf/GeneratedMessageLite;Lcom/android/carsdk/protobuf/ByteString;)Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Boundary;

    return-object p0
.end method

.method public static parseFrom(Lcom/android/carsdk/protobuf/ByteString;Lcom/android/carsdk/protobuf/ExtensionRegistryLite;)Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Boundary;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/carsdk/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 24362
    sget-object v0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Boundary;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Boundary;

    invoke-static {v0, p0, p1}, Lcom/android/carsdk/protobuf/GeneratedMessageLite;->parseFrom(Lcom/android/carsdk/protobuf/GeneratedMessageLite;Lcom/android/carsdk/protobuf/ByteString;Lcom/android/carsdk/protobuf/ExtensionRegistryLite;)Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Boundary;

    return-object p0
.end method

.method public static parseFrom(Lcom/android/carsdk/protobuf/CodedInputStream;)Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Boundary;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 24402
    sget-object v0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Boundary;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Boundary;

    invoke-static {v0, p0}, Lcom/android/carsdk/protobuf/GeneratedMessageLite;->parseFrom(Lcom/android/carsdk/protobuf/GeneratedMessageLite;Lcom/android/carsdk/protobuf/CodedInputStream;)Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Boundary;

    return-object p0
.end method

.method public static parseFrom(Lcom/android/carsdk/protobuf/CodedInputStream;Lcom/android/carsdk/protobuf/ExtensionRegistryLite;)Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Boundary;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 24409
    sget-object v0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Boundary;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Boundary;

    invoke-static {v0, p0, p1}, Lcom/android/carsdk/protobuf/GeneratedMessageLite;->parseFrom(Lcom/android/carsdk/protobuf/GeneratedMessageLite;Lcom/android/carsdk/protobuf/CodedInputStream;Lcom/android/carsdk/protobuf/ExtensionRegistryLite;)Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Boundary;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Boundary;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 24379
    sget-object v0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Boundary;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Boundary;

    invoke-static {v0, p0}, Lcom/android/carsdk/protobuf/GeneratedMessageLite;->parseFrom(Lcom/android/carsdk/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Boundary;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/android/carsdk/protobuf/ExtensionRegistryLite;)Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Boundary;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 24386
    sget-object v0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Boundary;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Boundary;

    invoke-static {v0, p0, p1}, Lcom/android/carsdk/protobuf/GeneratedMessageLite;->parseFrom(Lcom/android/carsdk/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/android/carsdk/protobuf/ExtensionRegistryLite;)Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Boundary;

    return-object p0
.end method

.method public static parseFrom([B)Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Boundary;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/carsdk/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 24367
    sget-object v0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Boundary;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Boundary;

    invoke-static {v0, p0}, Lcom/android/carsdk/protobuf/GeneratedMessageLite;->parseFrom(Lcom/android/carsdk/protobuf/GeneratedMessageLite;[B)Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Boundary;

    return-object p0
.end method

.method public static parseFrom([BLcom/android/carsdk/protobuf/ExtensionRegistryLite;)Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Boundary;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/carsdk/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 24374
    sget-object v0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Boundary;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Boundary;

    invoke-static {v0, p0, p1}, Lcom/android/carsdk/protobuf/GeneratedMessageLite;->parseFrom(Lcom/android/carsdk/protobuf/GeneratedMessageLite;[BLcom/android/carsdk/protobuf/ExtensionRegistryLite;)Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Boundary;

    return-object p0
.end method

.method public static parser()Lcom/android/carsdk/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/android/carsdk/protobuf/Parser<",
            "Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Boundary;",
            ">;"
        }
    .end annotation

    .line 24676
    sget-object v0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Boundary;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Boundary;

    invoke-virtual {v0}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Boundary;->getParserForType()Lcom/android/carsdk/protobuf/Parser;

    move-result-object v0

    return-object v0
.end method

.method private setAscription(Landroid/car/hardware/xpu/XpuFNgpRouteMessage$BoundaryAscription;)V
    .locals 0

    .line 24253
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 24256
    invoke-virtual {p1}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$BoundaryAscription;->getNumber()I

    move-result p1

    iput p1, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Boundary;->ascription_:I

    return-void
.end method

.method private setAscriptionValue(I)V
    .locals 0

    .line 24246
    iput p1, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Boundary;->ascription_:I

    return-void
.end method

.method private setId(Ljava/lang/String;)V
    .locals 0

    .line 24202
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 24205
    iput-object p1, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Boundary;->id_:Ljava/lang/String;

    return-void
.end method

.method private setIdBytes(Lcom/android/carsdk/protobuf/ByteString;)V
    .locals 0

    .line 24220
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 24222
    invoke-static {p1}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Boundary;->checkByteStringIsUtf8(Lcom/android/carsdk/protobuf/ByteString;)V

    .line 24224
    invoke-virtual {p1}, Lcom/android/carsdk/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Boundary;->id_:Ljava/lang/String;

    return-void
.end method

.method private setPolyline(Landroid/car/hardware/xpu/XpuFNgpRouteMessage$PolylineForCdu$Builder;)V
    .locals 0

    .line 24295
    invoke-virtual {p1}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$PolylineForCdu$Builder;->build()Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$PolylineForCdu;

    iput-object p1, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Boundary;->polyline_:Landroid/car/hardware/xpu/XpuFNgpRouteMessage$PolylineForCdu;

    return-void
.end method

.method private setPolyline(Landroid/car/hardware/xpu/XpuFNgpRouteMessage$PolylineForCdu;)V
    .locals 0

    .line 24285
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 24287
    iput-object p1, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Boundary;->polyline_:Landroid/car/hardware/xpu/XpuFNgpRouteMessage$PolylineForCdu;

    return-void
.end method


# virtual methods
.method protected final dynamicMethod(Lcom/android/carsdk/protobuf/GeneratedMessageLite$MethodToInvoke;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5

    .line 24565
    sget-object v0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$1;->$SwitchMap$com$google$protobuf$GeneratedMessageLite$MethodToInvoke:[I

    invoke-virtual {p1}, Lcom/android/carsdk/protobuf/GeneratedMessageLite$MethodToInvoke;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x1

    packed-switch p1, :pswitch_data_0

    .line 24658
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1

    .line 24649
    :pswitch_0
    sget-object p1, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Boundary;->PARSER:Lcom/android/carsdk/protobuf/Parser;

    if-nez p1, :cond_1

    const-class p1, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Boundary;

    monitor-enter p1

    .line 24650
    :try_start_0
    sget-object p2, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Boundary;->PARSER:Lcom/android/carsdk/protobuf/Parser;

    if-nez p2, :cond_0

    .line 24651
    new-instance p2, Lcom/android/carsdk/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;

    sget-object p3, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Boundary;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Boundary;

    invoke-direct {p2, p3}, Lcom/android/carsdk/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;-><init>(Lcom/android/carsdk/protobuf/GeneratedMessageLite;)V

    sput-object p2, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Boundary;->PARSER:Lcom/android/carsdk/protobuf/Parser;

    .line 24653
    :cond_0
    monitor-exit p1

    goto :goto_0

    :catchall_0
    move-exception p2

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p2

    .line 24655
    :cond_1
    :goto_0
    sget-object p1, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Boundary;->PARSER:Lcom/android/carsdk/protobuf/Parser;

    return-object p1

    .line 24591
    :pswitch_1
    check-cast p2, Lcom/android/carsdk/protobuf/CodedInputStream;

    .line 24593
    check-cast p3, Lcom/android/carsdk/protobuf/ExtensionRegistryLite;

    :cond_2
    :goto_1
    if-nez v0, :cond_8

    .line 24598
    :try_start_1
    invoke-virtual {p2}, Lcom/android/carsdk/protobuf/CodedInputStream;->readTag()I

    move-result p1

    if-eqz p1, :cond_7

    const/16 v3, 0xa

    if-eq p1, v3, :cond_6

    const/16 v3, 0x28

    if-eq p1, v3, :cond_5

    const/16 v3, 0x3a

    if-eq p1, v3, :cond_3

    .line 24604
    invoke-virtual {p2, p1}, Lcom/android/carsdk/protobuf/CodedInputStream;->skipField(I)Z

    move-result p1

    if-nez p1, :cond_2

    goto :goto_3

    .line 24623
    :cond_3
    iget-object p1, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Boundary;->polyline_:Landroid/car/hardware/xpu/XpuFNgpRouteMessage$PolylineForCdu;

    if-eqz p1, :cond_4

    .line 24624
    invoke-virtual {p1}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$PolylineForCdu;->toBuilder()Lcom/android/carsdk/protobuf/GeneratedMessageLite$Builder;

    move-result-object p1

    check-cast p1, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$PolylineForCdu$Builder;

    goto :goto_2

    :cond_4
    move-object p1, v1

    .line 24626
    :goto_2
    invoke-static {}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$PolylineForCdu;->parser()Lcom/android/carsdk/protobuf/Parser;

    move-result-object v3

    invoke-virtual {p2, v3, p3}, Lcom/android/carsdk/protobuf/CodedInputStream;->readMessage(Lcom/android/carsdk/protobuf/Parser;Lcom/android/carsdk/protobuf/ExtensionRegistryLite;)Lcom/android/carsdk/protobuf/MessageLite;

    move-result-object v3

    check-cast v3, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$PolylineForCdu;

    iput-object v3, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Boundary;->polyline_:Landroid/car/hardware/xpu/XpuFNgpRouteMessage$PolylineForCdu;

    if-eqz p1, :cond_2

    .line 24628
    invoke-virtual {p1, v3}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$PolylineForCdu$Builder;->mergeFrom(Lcom/android/carsdk/protobuf/GeneratedMessageLite;)Lcom/android/carsdk/protobuf/GeneratedMessageLite$Builder;

    .line 24629
    invoke-virtual {p1}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$PolylineForCdu$Builder;->buildPartial()Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$PolylineForCdu;

    iput-object p1, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Boundary;->polyline_:Landroid/car/hardware/xpu/XpuFNgpRouteMessage$PolylineForCdu;

    goto :goto_1

    .line 24616
    :cond_5
    invoke-virtual {p2}, Lcom/android/carsdk/protobuf/CodedInputStream;->readEnum()I

    move-result p1

    .line 24618
    iput p1, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Boundary;->ascription_:I

    goto :goto_1

    .line 24610
    :cond_6
    invoke-virtual {p2}, Lcom/android/carsdk/protobuf/CodedInputStream;->readStringRequireUtf8()Ljava/lang/String;

    move-result-object p1

    .line 24612
    iput-object p1, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Boundary;->id_:Ljava/lang/String;
    :try_end_1
    .catch Lcom/android/carsdk/protobuf/InvalidProtocolBufferException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    :cond_7
    :goto_3
    move v0, v2

    goto :goto_1

    :catchall_1
    move-exception p1

    goto :goto_4

    :catch_0
    move-exception p1

    .line 24639
    :try_start_2
    new-instance p2, Ljava/lang/RuntimeException;

    new-instance p3, Lcom/android/carsdk/protobuf/InvalidProtocolBufferException;

    .line 24641
    invoke-virtual {p1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p3, p1}, Lcom/android/carsdk/protobuf/InvalidProtocolBufferException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, p0}, Lcom/android/carsdk/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/android/carsdk/protobuf/MessageLite;)Lcom/android/carsdk/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p2

    :catch_1
    move-exception p1

    .line 24637
    new-instance p2, Ljava/lang/RuntimeException;

    invoke-virtual {p1, p0}, Lcom/android/carsdk/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/android/carsdk/protobuf/MessageLite;)Lcom/android/carsdk/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 24642
    :goto_4
    throw p1

    .line 24646
    :cond_8
    :pswitch_2
    sget-object p1, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Boundary;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Boundary;

    return-object p1

    .line 24579
    :pswitch_3
    check-cast p2, Lcom/android/carsdk/protobuf/GeneratedMessageLite$Visitor;

    .line 24580
    check-cast p3, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Boundary;

    .line 24581
    iget-object p1, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Boundary;->id_:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result p1

    xor-int/2addr p1, v2

    iget-object v1, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Boundary;->id_:Ljava/lang/String;

    iget-object v3, p3, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Boundary;->id_:Ljava/lang/String;

    .line 24582
    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    xor-int/2addr v3, v2

    iget-object v4, p3, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Boundary;->id_:Ljava/lang/String;

    .line 24581
    invoke-interface {p2, p1, v1, v3, v4}, Lcom/android/carsdk/protobuf/GeneratedMessageLite$Visitor;->visitString(ZLjava/lang/String;ZLjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Boundary;->id_:Ljava/lang/String;

    .line 24583
    iget p1, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Boundary;->ascription_:I

    if-eqz p1, :cond_9

    move v1, v2

    goto :goto_5

    :cond_9
    move v1, v0

    :goto_5
    iget v3, p3, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Boundary;->ascription_:I

    if-eqz v3, :cond_a

    move v0, v2

    :cond_a
    invoke-interface {p2, v1, p1, v0, v3}, Lcom/android/carsdk/protobuf/GeneratedMessageLite$Visitor;->visitInt(ZIZI)I

    move-result p1

    iput p1, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Boundary;->ascription_:I

    .line 24584
    iget-object p1, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Boundary;->polyline_:Landroid/car/hardware/xpu/XpuFNgpRouteMessage$PolylineForCdu;

    iget-object p3, p3, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Boundary;->polyline_:Landroid/car/hardware/xpu/XpuFNgpRouteMessage$PolylineForCdu;

    invoke-interface {p2, p1, p3}, Lcom/android/carsdk/protobuf/GeneratedMessageLite$Visitor;->visitMessage(Lcom/android/carsdk/protobuf/MessageLite;Lcom/android/carsdk/protobuf/MessageLite;)Lcom/android/carsdk/protobuf/MessageLite;

    move-result-object p1

    check-cast p1, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$PolylineForCdu;

    iput-object p1, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Boundary;->polyline_:Landroid/car/hardware/xpu/XpuFNgpRouteMessage$PolylineForCdu;

    .line 24585
    sget-object p1, Lcom/android/carsdk/protobuf/GeneratedMessageLite$MergeFromVisitor;->INSTANCE:Lcom/android/carsdk/protobuf/GeneratedMessageLite$MergeFromVisitor;

    return-object p0

    .line 24576
    :pswitch_4
    new-instance p1, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Boundary$Builder;

    invoke-direct {p1, v1}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Boundary$Builder;-><init>(Landroid/car/hardware/xpu/XpuFNgpRouteMessage$1;)V

    return-object p1

    :pswitch_5
    return-object v1

    .line 24570
    :pswitch_6
    sget-object p1, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Boundary;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Boundary;

    return-object p1

    .line 24567
    :pswitch_7
    new-instance p1, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Boundary;

    invoke-direct {p1}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Boundary;-><init>()V

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

.method public getAscription()Landroid/car/hardware/xpu/XpuFNgpRouteMessage$BoundaryAscription;
    .locals 1

    .line 24239
    iget v0, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Boundary;->ascription_:I

    invoke-static {v0}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$BoundaryAscription;->forNumber(I)Landroid/car/hardware/xpu/XpuFNgpRouteMessage$BoundaryAscription;

    move-result-object v0

    if-nez v0, :cond_0

    .line 24240
    sget-object v0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$BoundaryAscription;->UNRECOGNIZED:Landroid/car/hardware/xpu/XpuFNgpRouteMessage$BoundaryAscription;

    :cond_0
    return-object v0
.end method

.method public getAscriptionValue()I
    .locals 1

    .line 24233
    iget v0, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Boundary;->ascription_:I

    return v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .line 24187
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Boundary;->id_:Ljava/lang/String;

    return-object v0
.end method

.method public getIdBytes()Lcom/android/carsdk/protobuf/ByteString;
    .locals 1

    .line 24194
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Boundary;->id_:Ljava/lang/String;

    invoke-static {v0}, Lcom/android/carsdk/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/android/carsdk/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getPolyline()Landroid/car/hardware/xpu/XpuFNgpRouteMessage$PolylineForCdu;
    .locals 1

    .line 24278
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Boundary;->polyline_:Landroid/car/hardware/xpu/XpuFNgpRouteMessage$PolylineForCdu;

    if-nez v0, :cond_0

    invoke-static {}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$PolylineForCdu;->getDefaultInstance()Landroid/car/hardware/xpu/XpuFNgpRouteMessage$PolylineForCdu;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public getSerializedSize()I
    .locals 3

    .line 24332
    iget v0, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Boundary;->memoizedSerializedSize:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    return v0

    :cond_0
    const/4 v0, 0x0

    .line 24336
    iget-object v1, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Boundary;->id_:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    const/4 v1, 0x1

    .line 24338
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Boundary;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/carsdk/protobuf/CodedOutputStream;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 24340
    :cond_1
    iget v1, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Boundary;->ascription_:I

    sget-object v2, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$BoundaryAscription;->BOUNDARY_ASCRIPTION_UNKNOWN:Landroid/car/hardware/xpu/XpuFNgpRouteMessage$BoundaryAscription;

    invoke-virtual {v2}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$BoundaryAscription;->getNumber()I

    move-result v2

    if-eq v1, v2, :cond_2

    const/4 v1, 0x5

    .line 24341
    iget v2, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Boundary;->ascription_:I

    .line 24342
    invoke-static {v1, v2}, Lcom/android/carsdk/protobuf/CodedOutputStream;->computeEnumSize(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 24344
    :cond_2
    iget-object v1, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Boundary;->polyline_:Landroid/car/hardware/xpu/XpuFNgpRouteMessage$PolylineForCdu;

    if-eqz v1, :cond_3

    const/4 v1, 0x7

    .line 24346
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Boundary;->getPolyline()Landroid/car/hardware/xpu/XpuFNgpRouteMessage$PolylineForCdu;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/carsdk/protobuf/CodedOutputStream;->computeMessageSize(ILcom/android/carsdk/protobuf/MessageLite;)I

    move-result v1

    add-int/2addr v0, v1

    .line 24348
    :cond_3
    iput v0, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Boundary;->memoizedSerializedSize:I

    return v0
.end method

.method public hasPolyline()Z
    .locals 1

    .line 24272
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Boundary;->polyline_:Landroid/car/hardware/xpu/XpuFNgpRouteMessage$PolylineForCdu;

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

    .line 24320
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Boundary;->id_:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 24321
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Boundary;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/android/carsdk/protobuf/CodedOutputStream;->writeString(ILjava/lang/String;)V

    .line 24323
    :cond_0
    iget v0, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Boundary;->ascription_:I

    sget-object v1, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$BoundaryAscription;->BOUNDARY_ASCRIPTION_UNKNOWN:Landroid/car/hardware/xpu/XpuFNgpRouteMessage$BoundaryAscription;

    invoke-virtual {v1}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$BoundaryAscription;->getNumber()I

    move-result v1

    if-eq v0, v1, :cond_1

    const/4 v0, 0x5

    .line 24324
    iget v1, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Boundary;->ascription_:I

    invoke-virtual {p1, v0, v1}, Lcom/android/carsdk/protobuf/CodedOutputStream;->writeEnum(II)V

    .line 24326
    :cond_1
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Boundary;->polyline_:Landroid/car/hardware/xpu/XpuFNgpRouteMessage$PolylineForCdu;

    if-eqz v0, :cond_2

    const/4 v0, 0x7

    .line 24327
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$Boundary;->getPolyline()Landroid/car/hardware/xpu/XpuFNgpRouteMessage$PolylineForCdu;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/android/carsdk/protobuf/CodedOutputStream;->writeMessage(ILcom/android/carsdk/protobuf/MessageLite;)V

    :cond_2
    return-void
.end method
