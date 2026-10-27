.class public final Landroid/car/hardware/xpu/XpuProtoMessage$CNGPCityMapResponse;
.super Lcom/android/carsdk/protobuf/GeneratedMessageLite;
.source "XpuProtoMessage.java"

# interfaces
.implements Landroid/car/hardware/xpu/XpuProtoMessage$CNGPCityMapResponseOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/car/hardware/xpu/XpuProtoMessage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "CNGPCityMapResponse"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/car/hardware/xpu/XpuProtoMessage$CNGPCityMapResponse$Builder;,
        Landroid/car/hardware/xpu/XpuProtoMessage$CNGPCityMapResponse$CityResponse;,
        Landroid/car/hardware/xpu/XpuProtoMessage$CNGPCityMapResponse$CityResponseOrBuilder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/carsdk/protobuf/GeneratedMessageLite<",
        "Landroid/car/hardware/xpu/XpuProtoMessage$CNGPCityMapResponse;",
        "Landroid/car/hardware/xpu/XpuProtoMessage$CNGPCityMapResponse$Builder;",
        ">;",
        "Landroid/car/hardware/xpu/XpuProtoMessage$CNGPCityMapResponseOrBuilder;"
    }
.end annotation


# static fields
.field public static final CITIES_FIELD_NUMBER:I = 0x1

.field private static final DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuProtoMessage$CNGPCityMapResponse;

.field public static final ERROR_CODE_FIELD_NUMBER:I = 0x2

.field private static volatile PARSER:Lcom/android/carsdk/protobuf/Parser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/carsdk/protobuf/Parser<",
            "Landroid/car/hardware/xpu/XpuProtoMessage$CNGPCityMapResponse;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private bitField0_:I

.field private cities_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/carsdk/protobuf/Internal$ProtobufList<",
            "Landroid/car/hardware/xpu/XpuProtoMessage$CNGPCityMapResponse$CityResponse;",
            ">;"
        }
    .end annotation
.end field

.field private errorCode_:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 2490
    new-instance v0, Landroid/car/hardware/xpu/XpuProtoMessage$CNGPCityMapResponse;

    invoke-direct {v0}, Landroid/car/hardware/xpu/XpuProtoMessage$CNGPCityMapResponse;-><init>()V

    sput-object v0, Landroid/car/hardware/xpu/XpuProtoMessage$CNGPCityMapResponse;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuProtoMessage$CNGPCityMapResponse;

    .line 2491
    invoke-virtual {v0}, Landroid/car/hardware/xpu/XpuProtoMessage$CNGPCityMapResponse;->makeImmutable()V

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 1508
    invoke-direct {p0}, Lcom/android/carsdk/protobuf/GeneratedMessageLite;-><init>()V

    .line 1509
    invoke-static {}, Landroid/car/hardware/xpu/XpuProtoMessage$CNGPCityMapResponse;->emptyProtobufList()Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    move-result-object v0

    iput-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$CNGPCityMapResponse;->cities_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    const/4 v0, 0x0

    .line 1510
    iput v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$CNGPCityMapResponse;->errorCode_:I

    return-void
.end method

.method static synthetic access$2000()Landroid/car/hardware/xpu/XpuProtoMessage$CNGPCityMapResponse;
    .locals 1

    .line 1503
    sget-object v0, Landroid/car/hardware/xpu/XpuProtoMessage$CNGPCityMapResponse;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuProtoMessage$CNGPCityMapResponse;

    return-object v0
.end method

.method static synthetic access$2100(Landroid/car/hardware/xpu/XpuProtoMessage$CNGPCityMapResponse;ILandroid/car/hardware/xpu/XpuProtoMessage$CNGPCityMapResponse$CityResponse;)V
    .locals 0

    .line 1503
    invoke-direct {p0, p1, p2}, Landroid/car/hardware/xpu/XpuProtoMessage$CNGPCityMapResponse;->setCities(ILandroid/car/hardware/xpu/XpuProtoMessage$CNGPCityMapResponse$CityResponse;)V

    return-void
.end method

.method static synthetic access$2200(Landroid/car/hardware/xpu/XpuProtoMessage$CNGPCityMapResponse;ILandroid/car/hardware/xpu/XpuProtoMessage$CNGPCityMapResponse$CityResponse$Builder;)V
    .locals 0

    .line 1503
    invoke-direct {p0, p1, p2}, Landroid/car/hardware/xpu/XpuProtoMessage$CNGPCityMapResponse;->setCities(ILandroid/car/hardware/xpu/XpuProtoMessage$CNGPCityMapResponse$CityResponse$Builder;)V

    return-void
.end method

.method static synthetic access$2300(Landroid/car/hardware/xpu/XpuProtoMessage$CNGPCityMapResponse;Landroid/car/hardware/xpu/XpuProtoMessage$CNGPCityMapResponse$CityResponse;)V
    .locals 0

    .line 1503
    invoke-direct {p0, p1}, Landroid/car/hardware/xpu/XpuProtoMessage$CNGPCityMapResponse;->addCities(Landroid/car/hardware/xpu/XpuProtoMessage$CNGPCityMapResponse$CityResponse;)V

    return-void
.end method

.method static synthetic access$2400(Landroid/car/hardware/xpu/XpuProtoMessage$CNGPCityMapResponse;ILandroid/car/hardware/xpu/XpuProtoMessage$CNGPCityMapResponse$CityResponse;)V
    .locals 0

    .line 1503
    invoke-direct {p0, p1, p2}, Landroid/car/hardware/xpu/XpuProtoMessage$CNGPCityMapResponse;->addCities(ILandroid/car/hardware/xpu/XpuProtoMessage$CNGPCityMapResponse$CityResponse;)V

    return-void
.end method

.method static synthetic access$2500(Landroid/car/hardware/xpu/XpuProtoMessage$CNGPCityMapResponse;Landroid/car/hardware/xpu/XpuProtoMessage$CNGPCityMapResponse$CityResponse$Builder;)V
    .locals 0

    .line 1503
    invoke-direct {p0, p1}, Landroid/car/hardware/xpu/XpuProtoMessage$CNGPCityMapResponse;->addCities(Landroid/car/hardware/xpu/XpuProtoMessage$CNGPCityMapResponse$CityResponse$Builder;)V

    return-void
.end method

.method static synthetic access$2600(Landroid/car/hardware/xpu/XpuProtoMessage$CNGPCityMapResponse;ILandroid/car/hardware/xpu/XpuProtoMessage$CNGPCityMapResponse$CityResponse$Builder;)V
    .locals 0

    .line 1503
    invoke-direct {p0, p1, p2}, Landroid/car/hardware/xpu/XpuProtoMessage$CNGPCityMapResponse;->addCities(ILandroid/car/hardware/xpu/XpuProtoMessage$CNGPCityMapResponse$CityResponse$Builder;)V

    return-void
.end method

.method static synthetic access$2700(Landroid/car/hardware/xpu/XpuProtoMessage$CNGPCityMapResponse;Ljava/lang/Iterable;)V
    .locals 0

    .line 1503
    invoke-direct {p0, p1}, Landroid/car/hardware/xpu/XpuProtoMessage$CNGPCityMapResponse;->addAllCities(Ljava/lang/Iterable;)V

    return-void
.end method

.method static synthetic access$2800(Landroid/car/hardware/xpu/XpuProtoMessage$CNGPCityMapResponse;)V
    .locals 0

    .line 1503
    invoke-direct {p0}, Landroid/car/hardware/xpu/XpuProtoMessage$CNGPCityMapResponse;->clearCities()V

    return-void
.end method

.method static synthetic access$2900(Landroid/car/hardware/xpu/XpuProtoMessage$CNGPCityMapResponse;I)V
    .locals 0

    .line 1503
    invoke-direct {p0, p1}, Landroid/car/hardware/xpu/XpuProtoMessage$CNGPCityMapResponse;->removeCities(I)V

    return-void
.end method

.method static synthetic access$3000(Landroid/car/hardware/xpu/XpuProtoMessage$CNGPCityMapResponse;I)V
    .locals 0

    .line 1503
    invoke-direct {p0, p1}, Landroid/car/hardware/xpu/XpuProtoMessage$CNGPCityMapResponse;->setErrorCode(I)V

    return-void
.end method

.method static synthetic access$3100(Landroid/car/hardware/xpu/XpuProtoMessage$CNGPCityMapResponse;)V
    .locals 0

    .line 1503
    invoke-direct {p0}, Landroid/car/hardware/xpu/XpuProtoMessage$CNGPCityMapResponse;->clearErrorCode()V

    return-void
.end method

.method private addAllCities(Ljava/lang/Iterable;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Landroid/car/hardware/xpu/XpuProtoMessage$CNGPCityMapResponse$CityResponse;",
            ">;)V"
        }
    .end annotation

    .line 2097
    invoke-direct {p0}, Landroid/car/hardware/xpu/XpuProtoMessage$CNGPCityMapResponse;->ensureCitiesIsMutable()V

    .line 2098
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$CNGPCityMapResponse;->cities_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    invoke-static {p1, v0}, Lcom/android/carsdk/protobuf/AbstractMessageLite;->addAll(Ljava/lang/Iterable;Ljava/util/Collection;)V

    return-void
.end method

.method private addCities(ILandroid/car/hardware/xpu/XpuProtoMessage$CNGPCityMapResponse$CityResponse$Builder;)V
    .locals 1

    .line 2089
    invoke-direct {p0}, Landroid/car/hardware/xpu/XpuProtoMessage$CNGPCityMapResponse;->ensureCitiesIsMutable()V

    .line 2090
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$CNGPCityMapResponse;->cities_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    invoke-virtual {p2}, Landroid/car/hardware/xpu/XpuProtoMessage$CNGPCityMapResponse$CityResponse$Builder;->build()Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object p2

    check-cast p2, Landroid/car/hardware/xpu/XpuProtoMessage$CNGPCityMapResponse$CityResponse;

    invoke-interface {v0, p1, p2}, Lcom/android/carsdk/protobuf/Internal$ProtobufList;->add(ILjava/lang/Object;)V

    return-void
.end method

.method private addCities(ILandroid/car/hardware/xpu/XpuProtoMessage$CNGPCityMapResponse$CityResponse;)V
    .locals 1

    .line 2071
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2073
    invoke-direct {p0}, Landroid/car/hardware/xpu/XpuProtoMessage$CNGPCityMapResponse;->ensureCitiesIsMutable()V

    .line 2074
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$CNGPCityMapResponse;->cities_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1, p2}, Lcom/android/carsdk/protobuf/Internal$ProtobufList;->add(ILjava/lang/Object;)V

    return-void
.end method

.method private addCities(Landroid/car/hardware/xpu/XpuProtoMessage$CNGPCityMapResponse$CityResponse$Builder;)V
    .locals 1

    .line 2081
    invoke-direct {p0}, Landroid/car/hardware/xpu/XpuProtoMessage$CNGPCityMapResponse;->ensureCitiesIsMutable()V

    .line 2082
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$CNGPCityMapResponse;->cities_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    invoke-virtual {p1}, Landroid/car/hardware/xpu/XpuProtoMessage$CNGPCityMapResponse$CityResponse$Builder;->build()Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Landroid/car/hardware/xpu/XpuProtoMessage$CNGPCityMapResponse$CityResponse;

    invoke-interface {v0, p1}, Lcom/android/carsdk/protobuf/Internal$ProtobufList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private addCities(Landroid/car/hardware/xpu/XpuProtoMessage$CNGPCityMapResponse$CityResponse;)V
    .locals 1

    .line 2060
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2062
    invoke-direct {p0}, Landroid/car/hardware/xpu/XpuProtoMessage$CNGPCityMapResponse;->ensureCitiesIsMutable()V

    .line 2063
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$CNGPCityMapResponse;->cities_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1}, Lcom/android/carsdk/protobuf/Internal$ProtobufList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private clearCities()V
    .locals 1

    .line 2105
    invoke-static {}, Landroid/car/hardware/xpu/XpuProtoMessage$CNGPCityMapResponse;->emptyProtobufList()Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    move-result-object v0

    iput-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$CNGPCityMapResponse;->cities_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    return-void
.end method

.method private clearErrorCode()V
    .locals 1

    const/4 v0, 0x0

    .line 2147
    iput v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$CNGPCityMapResponse;->errorCode_:I

    return-void
.end method

.method private ensureCitiesIsMutable()V
    .locals 1

    .line 2030
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$CNGPCityMapResponse;->cities_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    invoke-interface {v0}, Lcom/android/carsdk/protobuf/Internal$ProtobufList;->isModifiable()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2031
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$CNGPCityMapResponse;->cities_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    .line 2032
    invoke-static {v0}, Lcom/android/carsdk/protobuf/GeneratedMessageLite;->mutableCopy(Lcom/android/carsdk/protobuf/Internal$ProtobufList;)Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    move-result-object v0

    iput-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$CNGPCityMapResponse;->cities_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    :cond_0
    return-void
.end method

.method public static getDefaultInstance()Landroid/car/hardware/xpu/XpuProtoMessage$CNGPCityMapResponse;
    .locals 1

    .line 2495
    sget-object v0, Landroid/car/hardware/xpu/XpuProtoMessage$CNGPCityMapResponse;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuProtoMessage$CNGPCityMapResponse;

    return-object v0
.end method

.method public static newBuilder()Landroid/car/hardware/xpu/XpuProtoMessage$CNGPCityMapResponse$Builder;
    .locals 1

    .line 2239
    sget-object v0, Landroid/car/hardware/xpu/XpuProtoMessage$CNGPCityMapResponse;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuProtoMessage$CNGPCityMapResponse;

    invoke-virtual {v0}, Landroid/car/hardware/xpu/XpuProtoMessage$CNGPCityMapResponse;->toBuilder()Lcom/android/carsdk/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Landroid/car/hardware/xpu/XpuProtoMessage$CNGPCityMapResponse$Builder;

    return-object v0
.end method

.method public static newBuilder(Landroid/car/hardware/xpu/XpuProtoMessage$CNGPCityMapResponse;)Landroid/car/hardware/xpu/XpuProtoMessage$CNGPCityMapResponse$Builder;
    .locals 1

    .line 2242
    sget-object v0, Landroid/car/hardware/xpu/XpuProtoMessage$CNGPCityMapResponse;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuProtoMessage$CNGPCityMapResponse;

    invoke-virtual {v0}, Landroid/car/hardware/xpu/XpuProtoMessage$CNGPCityMapResponse;->toBuilder()Lcom/android/carsdk/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Landroid/car/hardware/xpu/XpuProtoMessage$CNGPCityMapResponse$Builder;

    invoke-virtual {v0, p0}, Landroid/car/hardware/xpu/XpuProtoMessage$CNGPCityMapResponse$Builder;->mergeFrom(Lcom/android/carsdk/protobuf/GeneratedMessageLite;)Lcom/android/carsdk/protobuf/GeneratedMessageLite$Builder;

    move-result-object p0

    check-cast p0, Landroid/car/hardware/xpu/XpuProtoMessage$CNGPCityMapResponse$Builder;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Landroid/car/hardware/xpu/XpuProtoMessage$CNGPCityMapResponse;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2216
    sget-object v0, Landroid/car/hardware/xpu/XpuProtoMessage$CNGPCityMapResponse;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuProtoMessage$CNGPCityMapResponse;

    invoke-static {v0, p0}, Landroid/car/hardware/xpu/XpuProtoMessage$CNGPCityMapResponse;->parseDelimitedFrom(Lcom/android/carsdk/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Landroid/car/hardware/xpu/XpuProtoMessage$CNGPCityMapResponse;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/android/carsdk/protobuf/ExtensionRegistryLite;)Landroid/car/hardware/xpu/XpuProtoMessage$CNGPCityMapResponse;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2222
    sget-object v0, Landroid/car/hardware/xpu/XpuProtoMessage$CNGPCityMapResponse;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuProtoMessage$CNGPCityMapResponse;

    invoke-static {v0, p0, p1}, Landroid/car/hardware/xpu/XpuProtoMessage$CNGPCityMapResponse;->parseDelimitedFrom(Lcom/android/carsdk/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/android/carsdk/protobuf/ExtensionRegistryLite;)Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Landroid/car/hardware/xpu/XpuProtoMessage$CNGPCityMapResponse;

    return-object p0
.end method

.method public static parseFrom(Lcom/android/carsdk/protobuf/ByteString;)Landroid/car/hardware/xpu/XpuProtoMessage$CNGPCityMapResponse;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/carsdk/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 2180
    sget-object v0, Landroid/car/hardware/xpu/XpuProtoMessage$CNGPCityMapResponse;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuProtoMessage$CNGPCityMapResponse;

    invoke-static {v0, p0}, Lcom/android/carsdk/protobuf/GeneratedMessageLite;->parseFrom(Lcom/android/carsdk/protobuf/GeneratedMessageLite;Lcom/android/carsdk/protobuf/ByteString;)Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Landroid/car/hardware/xpu/XpuProtoMessage$CNGPCityMapResponse;

    return-object p0
.end method

.method public static parseFrom(Lcom/android/carsdk/protobuf/ByteString;Lcom/android/carsdk/protobuf/ExtensionRegistryLite;)Landroid/car/hardware/xpu/XpuProtoMessage$CNGPCityMapResponse;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/carsdk/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 2187
    sget-object v0, Landroid/car/hardware/xpu/XpuProtoMessage$CNGPCityMapResponse;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuProtoMessage$CNGPCityMapResponse;

    invoke-static {v0, p0, p1}, Lcom/android/carsdk/protobuf/GeneratedMessageLite;->parseFrom(Lcom/android/carsdk/protobuf/GeneratedMessageLite;Lcom/android/carsdk/protobuf/ByteString;Lcom/android/carsdk/protobuf/ExtensionRegistryLite;)Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Landroid/car/hardware/xpu/XpuProtoMessage$CNGPCityMapResponse;

    return-object p0
.end method

.method public static parseFrom(Lcom/android/carsdk/protobuf/CodedInputStream;)Landroid/car/hardware/xpu/XpuProtoMessage$CNGPCityMapResponse;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2227
    sget-object v0, Landroid/car/hardware/xpu/XpuProtoMessage$CNGPCityMapResponse;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuProtoMessage$CNGPCityMapResponse;

    invoke-static {v0, p0}, Lcom/android/carsdk/protobuf/GeneratedMessageLite;->parseFrom(Lcom/android/carsdk/protobuf/GeneratedMessageLite;Lcom/android/carsdk/protobuf/CodedInputStream;)Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Landroid/car/hardware/xpu/XpuProtoMessage$CNGPCityMapResponse;

    return-object p0
.end method

.method public static parseFrom(Lcom/android/carsdk/protobuf/CodedInputStream;Lcom/android/carsdk/protobuf/ExtensionRegistryLite;)Landroid/car/hardware/xpu/XpuProtoMessage$CNGPCityMapResponse;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2234
    sget-object v0, Landroid/car/hardware/xpu/XpuProtoMessage$CNGPCityMapResponse;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuProtoMessage$CNGPCityMapResponse;

    invoke-static {v0, p0, p1}, Lcom/android/carsdk/protobuf/GeneratedMessageLite;->parseFrom(Lcom/android/carsdk/protobuf/GeneratedMessageLite;Lcom/android/carsdk/protobuf/CodedInputStream;Lcom/android/carsdk/protobuf/ExtensionRegistryLite;)Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Landroid/car/hardware/xpu/XpuProtoMessage$CNGPCityMapResponse;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Landroid/car/hardware/xpu/XpuProtoMessage$CNGPCityMapResponse;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2204
    sget-object v0, Landroid/car/hardware/xpu/XpuProtoMessage$CNGPCityMapResponse;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuProtoMessage$CNGPCityMapResponse;

    invoke-static {v0, p0}, Lcom/android/carsdk/protobuf/GeneratedMessageLite;->parseFrom(Lcom/android/carsdk/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Landroid/car/hardware/xpu/XpuProtoMessage$CNGPCityMapResponse;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/android/carsdk/protobuf/ExtensionRegistryLite;)Landroid/car/hardware/xpu/XpuProtoMessage$CNGPCityMapResponse;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2211
    sget-object v0, Landroid/car/hardware/xpu/XpuProtoMessage$CNGPCityMapResponse;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuProtoMessage$CNGPCityMapResponse;

    invoke-static {v0, p0, p1}, Lcom/android/carsdk/protobuf/GeneratedMessageLite;->parseFrom(Lcom/android/carsdk/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/android/carsdk/protobuf/ExtensionRegistryLite;)Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Landroid/car/hardware/xpu/XpuProtoMessage$CNGPCityMapResponse;

    return-object p0
.end method

.method public static parseFrom([B)Landroid/car/hardware/xpu/XpuProtoMessage$CNGPCityMapResponse;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/carsdk/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 2192
    sget-object v0, Landroid/car/hardware/xpu/XpuProtoMessage$CNGPCityMapResponse;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuProtoMessage$CNGPCityMapResponse;

    invoke-static {v0, p0}, Lcom/android/carsdk/protobuf/GeneratedMessageLite;->parseFrom(Lcom/android/carsdk/protobuf/GeneratedMessageLite;[B)Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Landroid/car/hardware/xpu/XpuProtoMessage$CNGPCityMapResponse;

    return-object p0
.end method

.method public static parseFrom([BLcom/android/carsdk/protobuf/ExtensionRegistryLite;)Landroid/car/hardware/xpu/XpuProtoMessage$CNGPCityMapResponse;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/carsdk/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 2199
    sget-object v0, Landroid/car/hardware/xpu/XpuProtoMessage$CNGPCityMapResponse;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuProtoMessage$CNGPCityMapResponse;

    invoke-static {v0, p0, p1}, Lcom/android/carsdk/protobuf/GeneratedMessageLite;->parseFrom(Lcom/android/carsdk/protobuf/GeneratedMessageLite;[BLcom/android/carsdk/protobuf/ExtensionRegistryLite;)Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Landroid/car/hardware/xpu/XpuProtoMessage$CNGPCityMapResponse;

    return-object p0
.end method

.method public static parser()Lcom/android/carsdk/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/android/carsdk/protobuf/Parser<",
            "Landroid/car/hardware/xpu/XpuProtoMessage$CNGPCityMapResponse;",
            ">;"
        }
    .end annotation

    .line 2501
    sget-object v0, Landroid/car/hardware/xpu/XpuProtoMessage$CNGPCityMapResponse;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuProtoMessage$CNGPCityMapResponse;

    invoke-virtual {v0}, Landroid/car/hardware/xpu/XpuProtoMessage$CNGPCityMapResponse;->getParserForType()Lcom/android/carsdk/protobuf/Parser;

    move-result-object v0

    return-object v0
.end method

.method private removeCities(I)V
    .locals 1

    .line 2111
    invoke-direct {p0}, Landroid/car/hardware/xpu/XpuProtoMessage$CNGPCityMapResponse;->ensureCitiesIsMutable()V

    .line 2112
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$CNGPCityMapResponse;->cities_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1}, Lcom/android/carsdk/protobuf/Internal$ProtobufList;->remove(I)Ljava/lang/Object;

    return-void
.end method

.method private setCities(ILandroid/car/hardware/xpu/XpuProtoMessage$CNGPCityMapResponse$CityResponse$Builder;)V
    .locals 1

    .line 2052
    invoke-direct {p0}, Landroid/car/hardware/xpu/XpuProtoMessage$CNGPCityMapResponse;->ensureCitiesIsMutable()V

    .line 2053
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$CNGPCityMapResponse;->cities_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    invoke-virtual {p2}, Landroid/car/hardware/xpu/XpuProtoMessage$CNGPCityMapResponse$CityResponse$Builder;->build()Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object p2

    check-cast p2, Landroid/car/hardware/xpu/XpuProtoMessage$CNGPCityMapResponse$CityResponse;

    invoke-interface {v0, p1, p2}, Lcom/android/carsdk/protobuf/Internal$ProtobufList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private setCities(ILandroid/car/hardware/xpu/XpuProtoMessage$CNGPCityMapResponse$CityResponse;)V
    .locals 1

    .line 2042
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2044
    invoke-direct {p0}, Landroid/car/hardware/xpu/XpuProtoMessage$CNGPCityMapResponse;->ensureCitiesIsMutable()V

    .line 2045
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$CNGPCityMapResponse;->cities_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1, p2}, Lcom/android/carsdk/protobuf/Internal$ProtobufList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private setErrorCode(I)V
    .locals 0

    .line 2136
    iput p1, p0, Landroid/car/hardware/xpu/XpuProtoMessage$CNGPCityMapResponse;->errorCode_:I

    return-void
.end method


# virtual methods
.method protected final dynamicMethod(Lcom/android/carsdk/protobuf/GeneratedMessageLite$MethodToInvoke;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    .line 2400
    sget-object v0, Landroid/car/hardware/xpu/XpuProtoMessage$1;->$SwitchMap$com$google$protobuf$GeneratedMessageLite$MethodToInvoke:[I

    invoke-virtual {p1}, Lcom/android/carsdk/protobuf/GeneratedMessageLite$MethodToInvoke;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x1

    packed-switch p1, :pswitch_data_0

    .line 2483
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1

    .line 2474
    :pswitch_0
    sget-object p1, Landroid/car/hardware/xpu/XpuProtoMessage$CNGPCityMapResponse;->PARSER:Lcom/android/carsdk/protobuf/Parser;

    if-nez p1, :cond_1

    const-class p1, Landroid/car/hardware/xpu/XpuProtoMessage$CNGPCityMapResponse;

    monitor-enter p1

    .line 2475
    :try_start_0
    sget-object p2, Landroid/car/hardware/xpu/XpuProtoMessage$CNGPCityMapResponse;->PARSER:Lcom/android/carsdk/protobuf/Parser;

    if-nez p2, :cond_0

    .line 2476
    new-instance p2, Lcom/android/carsdk/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;

    sget-object p3, Landroid/car/hardware/xpu/XpuProtoMessage$CNGPCityMapResponse;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuProtoMessage$CNGPCityMapResponse;

    invoke-direct {p2, p3}, Lcom/android/carsdk/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;-><init>(Lcom/android/carsdk/protobuf/GeneratedMessageLite;)V

    sput-object p2, Landroid/car/hardware/xpu/XpuProtoMessage$CNGPCityMapResponse;->PARSER:Lcom/android/carsdk/protobuf/Parser;

    .line 2478
    :cond_0
    monitor-exit p1

    goto :goto_0

    :catchall_0
    move-exception p2

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p2

    .line 2480
    :cond_1
    :goto_0
    sget-object p1, Landroid/car/hardware/xpu/XpuProtoMessage$CNGPCityMapResponse;->PARSER:Lcom/android/carsdk/protobuf/Parser;

    return-object p1

    .line 2427
    :pswitch_1
    check-cast p2, Lcom/android/carsdk/protobuf/CodedInputStream;

    .line 2429
    check-cast p3, Lcom/android/carsdk/protobuf/ExtensionRegistryLite;

    :cond_2
    :goto_1
    if-nez v1, :cond_7

    .line 2434
    :try_start_1
    invoke-virtual {p2}, Lcom/android/carsdk/protobuf/CodedInputStream;->readTag()I

    move-result p1

    if-eqz p1, :cond_6

    const/16 v0, 0xa

    if-eq p1, v0, :cond_4

    const/16 v0, 0x10

    if-eq p1, v0, :cond_3

    .line 2440
    invoke-virtual {p2, p1}, Lcom/android/carsdk/protobuf/CodedInputStream;->skipField(I)Z

    move-result p1

    if-nez p1, :cond_2

    goto :goto_2

    .line 2456
    :cond_3
    invoke-virtual {p2}, Lcom/android/carsdk/protobuf/CodedInputStream;->readInt32()I

    move-result p1

    iput p1, p0, Landroid/car/hardware/xpu/XpuProtoMessage$CNGPCityMapResponse;->errorCode_:I

    goto :goto_1

    .line 2446
    :cond_4
    iget-object p1, p0, Landroid/car/hardware/xpu/XpuProtoMessage$CNGPCityMapResponse;->cities_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    invoke-interface {p1}, Lcom/android/carsdk/protobuf/Internal$ProtobufList;->isModifiable()Z

    move-result p1

    if-nez p1, :cond_5

    .line 2447
    iget-object p1, p0, Landroid/car/hardware/xpu/XpuProtoMessage$CNGPCityMapResponse;->cities_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    .line 2448
    invoke-static {p1}, Lcom/android/carsdk/protobuf/GeneratedMessageLite;->mutableCopy(Lcom/android/carsdk/protobuf/Internal$ProtobufList;)Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    move-result-object p1

    iput-object p1, p0, Landroid/car/hardware/xpu/XpuProtoMessage$CNGPCityMapResponse;->cities_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    .line 2450
    :cond_5
    iget-object p1, p0, Landroid/car/hardware/xpu/XpuProtoMessage$CNGPCityMapResponse;->cities_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    .line 2451
    invoke-static {}, Landroid/car/hardware/xpu/XpuProtoMessage$CNGPCityMapResponse$CityResponse;->parser()Lcom/android/carsdk/protobuf/Parser;

    move-result-object v0

    invoke-virtual {p2, v0, p3}, Lcom/android/carsdk/protobuf/CodedInputStream;->readMessage(Lcom/android/carsdk/protobuf/Parser;Lcom/android/carsdk/protobuf/ExtensionRegistryLite;)Lcom/android/carsdk/protobuf/MessageLite;

    move-result-object v0

    check-cast v0, Landroid/car/hardware/xpu/XpuProtoMessage$CNGPCityMapResponse$CityResponse;

    .line 2450
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

    .line 2464
    :try_start_2
    new-instance p2, Ljava/lang/RuntimeException;

    new-instance p3, Lcom/android/carsdk/protobuf/InvalidProtocolBufferException;

    .line 2466
    invoke-virtual {p1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p3, p1}, Lcom/android/carsdk/protobuf/InvalidProtocolBufferException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, p0}, Lcom/android/carsdk/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/android/carsdk/protobuf/MessageLite;)Lcom/android/carsdk/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p2

    :catch_1
    move-exception p1

    .line 2462
    new-instance p2, Ljava/lang/RuntimeException;

    invoke-virtual {p1, p0}, Lcom/android/carsdk/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/android/carsdk/protobuf/MessageLite;)Lcom/android/carsdk/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 2467
    :goto_3
    throw p1

    .line 2471
    :cond_7
    :pswitch_2
    sget-object p1, Landroid/car/hardware/xpu/XpuProtoMessage$CNGPCityMapResponse;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuProtoMessage$CNGPCityMapResponse;

    return-object p1

    .line 2415
    :pswitch_3
    check-cast p2, Lcom/android/carsdk/protobuf/GeneratedMessageLite$Visitor;

    .line 2416
    check-cast p3, Landroid/car/hardware/xpu/XpuProtoMessage$CNGPCityMapResponse;

    .line 2417
    iget-object p1, p0, Landroid/car/hardware/xpu/XpuProtoMessage$CNGPCityMapResponse;->cities_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    iget-object v0, p3, Landroid/car/hardware/xpu/XpuProtoMessage$CNGPCityMapResponse;->cities_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    invoke-interface {p2, p1, v0}, Lcom/android/carsdk/protobuf/GeneratedMessageLite$Visitor;->visitList(Lcom/android/carsdk/protobuf/Internal$ProtobufList;Lcom/android/carsdk/protobuf/Internal$ProtobufList;)Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    move-result-object p1

    iput-object p1, p0, Landroid/car/hardware/xpu/XpuProtoMessage$CNGPCityMapResponse;->cities_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    .line 2418
    iget p1, p0, Landroid/car/hardware/xpu/XpuProtoMessage$CNGPCityMapResponse;->errorCode_:I

    if-eqz p1, :cond_8

    move v0, v2

    goto :goto_4

    :cond_8
    move v0, v1

    :goto_4
    iget v3, p3, Landroid/car/hardware/xpu/XpuProtoMessage$CNGPCityMapResponse;->errorCode_:I

    if-eqz v3, :cond_9

    move v1, v2

    :cond_9
    invoke-interface {p2, v0, p1, v1, v3}, Lcom/android/carsdk/protobuf/GeneratedMessageLite$Visitor;->visitInt(ZIZI)I

    move-result p1

    iput p1, p0, Landroid/car/hardware/xpu/XpuProtoMessage$CNGPCityMapResponse;->errorCode_:I

    .line 2420
    sget-object p1, Lcom/android/carsdk/protobuf/GeneratedMessageLite$MergeFromVisitor;->INSTANCE:Lcom/android/carsdk/protobuf/GeneratedMessageLite$MergeFromVisitor;

    if-ne p2, p1, :cond_a

    .line 2422
    iget p1, p0, Landroid/car/hardware/xpu/XpuProtoMessage$CNGPCityMapResponse;->bitField0_:I

    iget p2, p3, Landroid/car/hardware/xpu/XpuProtoMessage$CNGPCityMapResponse;->bitField0_:I

    or-int/2addr p1, p2

    iput p1, p0, Landroid/car/hardware/xpu/XpuProtoMessage$CNGPCityMapResponse;->bitField0_:I

    :cond_a
    return-object p0

    .line 2412
    :pswitch_4
    new-instance p1, Landroid/car/hardware/xpu/XpuProtoMessage$CNGPCityMapResponse$Builder;

    invoke-direct {p1, v0}, Landroid/car/hardware/xpu/XpuProtoMessage$CNGPCityMapResponse$Builder;-><init>(Landroid/car/hardware/xpu/XpuProtoMessage$1;)V

    return-object p1

    .line 2408
    :pswitch_5
    iget-object p1, p0, Landroid/car/hardware/xpu/XpuProtoMessage$CNGPCityMapResponse;->cities_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    invoke-interface {p1}, Lcom/android/carsdk/protobuf/Internal$ProtobufList;->makeImmutable()V

    return-object v0

    .line 2405
    :pswitch_6
    sget-object p1, Landroid/car/hardware/xpu/XpuProtoMessage$CNGPCityMapResponse;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuProtoMessage$CNGPCityMapResponse;

    return-object p1

    .line 2402
    :pswitch_7
    new-instance p1, Landroid/car/hardware/xpu/XpuProtoMessage$CNGPCityMapResponse;

    invoke-direct {p1}, Landroid/car/hardware/xpu/XpuProtoMessage$CNGPCityMapResponse;-><init>()V

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

.method public getCities(I)Landroid/car/hardware/xpu/XpuProtoMessage$CNGPCityMapResponse$CityResponse;
    .locals 1

    .line 2020
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$CNGPCityMapResponse;->cities_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1}, Lcom/android/carsdk/protobuf/Internal$ProtobufList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/car/hardware/xpu/XpuProtoMessage$CNGPCityMapResponse$CityResponse;

    return-object p1
.end method

.method public getCitiesCount()I
    .locals 1

    .line 2014
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$CNGPCityMapResponse;->cities_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    invoke-interface {v0}, Lcom/android/carsdk/protobuf/Internal$ProtobufList;->size()I

    move-result v0

    return v0
.end method

.method public getCitiesList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/car/hardware/xpu/XpuProtoMessage$CNGPCityMapResponse$CityResponse;",
            ">;"
        }
    .end annotation

    .line 2001
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$CNGPCityMapResponse;->cities_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    return-object v0
.end method

.method public getCitiesOrBuilder(I)Landroid/car/hardware/xpu/XpuProtoMessage$CNGPCityMapResponse$CityResponseOrBuilder;
    .locals 1

    .line 2027
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$CNGPCityMapResponse;->cities_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1}, Lcom/android/carsdk/protobuf/Internal$ProtobufList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/car/hardware/xpu/XpuProtoMessage$CNGPCityMapResponse$CityResponseOrBuilder;

    return-object p1
.end method

.method public getCitiesOrBuilderList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "+",
            "Landroid/car/hardware/xpu/XpuProtoMessage$CNGPCityMapResponse$CityResponseOrBuilder;",
            ">;"
        }
    .end annotation

    .line 2008
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$CNGPCityMapResponse;->cities_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    return-object v0
.end method

.method public getErrorCode()I
    .locals 1

    .line 2125
    iget v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$CNGPCityMapResponse;->errorCode_:I

    return v0
.end method

.method public getSerializedSize()I
    .locals 4

    .line 2161
    iget v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$CNGPCityMapResponse;->memoizedSerializedSize:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    return v0

    :cond_0
    const/4 v0, 0x0

    move v1, v0

    .line 2165
    :goto_0
    iget-object v2, p0, Landroid/car/hardware/xpu/XpuProtoMessage$CNGPCityMapResponse;->cities_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    invoke-interface {v2}, Lcom/android/carsdk/protobuf/Internal$ProtobufList;->size()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 2166
    iget-object v2, p0, Landroid/car/hardware/xpu/XpuProtoMessage$CNGPCityMapResponse;->cities_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    .line 2167
    invoke-interface {v2, v0}, Lcom/android/carsdk/protobuf/Internal$ProtobufList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/carsdk/protobuf/MessageLite;

    const/4 v3, 0x1

    invoke-static {v3, v2}, Lcom/android/carsdk/protobuf/CodedOutputStream;->computeMessageSize(ILcom/android/carsdk/protobuf/MessageLite;)I

    move-result v2

    add-int/2addr v1, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2169
    :cond_1
    iget v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$CNGPCityMapResponse;->errorCode_:I

    if-eqz v0, :cond_2

    const/4 v2, 0x2

    .line 2171
    invoke-static {v2, v0}, Lcom/android/carsdk/protobuf/CodedOutputStream;->computeInt32Size(II)I

    move-result v0

    add-int/2addr v1, v0

    .line 2173
    :cond_2
    iput v1, p0, Landroid/car/hardware/xpu/XpuProtoMessage$CNGPCityMapResponse;->memoizedSerializedSize:I

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

    .line 2152
    :goto_0
    iget-object v1, p0, Landroid/car/hardware/xpu/XpuProtoMessage$CNGPCityMapResponse;->cities_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    invoke-interface {v1}, Lcom/android/carsdk/protobuf/Internal$ProtobufList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 2153
    iget-object v1, p0, Landroid/car/hardware/xpu/XpuProtoMessage$CNGPCityMapResponse;->cities_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    invoke-interface {v1, v0}, Lcom/android/carsdk/protobuf/Internal$ProtobufList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/carsdk/protobuf/MessageLite;

    const/4 v2, 0x1

    invoke-virtual {p1, v2, v1}, Lcom/android/carsdk/protobuf/CodedOutputStream;->writeMessage(ILcom/android/carsdk/protobuf/MessageLite;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2155
    :cond_0
    iget v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$CNGPCityMapResponse;->errorCode_:I

    if-eqz v0, :cond_1

    const/4 v1, 0x2

    .line 2156
    invoke-virtual {p1, v1, v0}, Lcom/android/carsdk/protobuf/CodedOutputStream;->writeInt32(II)V

    :cond_1
    return-void
.end method
