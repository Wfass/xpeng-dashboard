.class public final Landroid/car/hardware/xpu/XpuProtoMessageVW$CNGPCityMapResponse;
.super Lcom/android/carsdk/protobuf/GeneratedMessageLite;
.source "XpuProtoMessageVW.java"

# interfaces
.implements Landroid/car/hardware/xpu/XpuProtoMessageVW$CNGPCityMapResponseOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/car/hardware/xpu/XpuProtoMessageVW;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "CNGPCityMapResponse"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/car/hardware/xpu/XpuProtoMessageVW$CNGPCityMapResponse$Builder;,
        Landroid/car/hardware/xpu/XpuProtoMessageVW$CNGPCityMapResponse$CityResponse;,
        Landroid/car/hardware/xpu/XpuProtoMessageVW$CNGPCityMapResponse$CityResponseOrBuilder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/carsdk/protobuf/GeneratedMessageLite<",
        "Landroid/car/hardware/xpu/XpuProtoMessageVW$CNGPCityMapResponse;",
        "Landroid/car/hardware/xpu/XpuProtoMessageVW$CNGPCityMapResponse$Builder;",
        ">;",
        "Landroid/car/hardware/xpu/XpuProtoMessageVW$CNGPCityMapResponseOrBuilder;"
    }
.end annotation


# static fields
.field public static final CITIES_FIELD_NUMBER:I = 0x1

.field private static final DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuProtoMessageVW$CNGPCityMapResponse;

.field public static final ERROR_CODE_FIELD_NUMBER:I = 0x2

.field private static volatile PARSER:Lcom/android/carsdk/protobuf/Parser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/carsdk/protobuf/Parser<",
            "Landroid/car/hardware/xpu/XpuProtoMessageVW$CNGPCityMapResponse;",
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
            "Landroid/car/hardware/xpu/XpuProtoMessageVW$CNGPCityMapResponse$CityResponse;",
            ">;"
        }
    .end annotation
.end field

.field private errorCode_:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 2323
    new-instance v0, Landroid/car/hardware/xpu/XpuProtoMessageVW$CNGPCityMapResponse;

    invoke-direct {v0}, Landroid/car/hardware/xpu/XpuProtoMessageVW$CNGPCityMapResponse;-><init>()V

    sput-object v0, Landroid/car/hardware/xpu/XpuProtoMessageVW$CNGPCityMapResponse;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuProtoMessageVW$CNGPCityMapResponse;

    .line 2324
    invoke-virtual {v0}, Landroid/car/hardware/xpu/XpuProtoMessageVW$CNGPCityMapResponse;->makeImmutable()V

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 1341
    invoke-direct {p0}, Lcom/android/carsdk/protobuf/GeneratedMessageLite;-><init>()V

    .line 1342
    invoke-static {}, Landroid/car/hardware/xpu/XpuProtoMessageVW$CNGPCityMapResponse;->emptyProtobufList()Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    move-result-object v0

    iput-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$CNGPCityMapResponse;->cities_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    const/4 v0, 0x0

    .line 1343
    iput v0, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$CNGPCityMapResponse;->errorCode_:I

    return-void
.end method

.method static synthetic access$2000()Landroid/car/hardware/xpu/XpuProtoMessageVW$CNGPCityMapResponse;
    .locals 1

    .line 1336
    sget-object v0, Landroid/car/hardware/xpu/XpuProtoMessageVW$CNGPCityMapResponse;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuProtoMessageVW$CNGPCityMapResponse;

    return-object v0
.end method

.method static synthetic access$2100(Landroid/car/hardware/xpu/XpuProtoMessageVW$CNGPCityMapResponse;ILandroid/car/hardware/xpu/XpuProtoMessageVW$CNGPCityMapResponse$CityResponse;)V
    .locals 0

    .line 1336
    invoke-direct {p0, p1, p2}, Landroid/car/hardware/xpu/XpuProtoMessageVW$CNGPCityMapResponse;->setCities(ILandroid/car/hardware/xpu/XpuProtoMessageVW$CNGPCityMapResponse$CityResponse;)V

    return-void
.end method

.method static synthetic access$2200(Landroid/car/hardware/xpu/XpuProtoMessageVW$CNGPCityMapResponse;ILandroid/car/hardware/xpu/XpuProtoMessageVW$CNGPCityMapResponse$CityResponse$Builder;)V
    .locals 0

    .line 1336
    invoke-direct {p0, p1, p2}, Landroid/car/hardware/xpu/XpuProtoMessageVW$CNGPCityMapResponse;->setCities(ILandroid/car/hardware/xpu/XpuProtoMessageVW$CNGPCityMapResponse$CityResponse$Builder;)V

    return-void
.end method

.method static synthetic access$2300(Landroid/car/hardware/xpu/XpuProtoMessageVW$CNGPCityMapResponse;Landroid/car/hardware/xpu/XpuProtoMessageVW$CNGPCityMapResponse$CityResponse;)V
    .locals 0

    .line 1336
    invoke-direct {p0, p1}, Landroid/car/hardware/xpu/XpuProtoMessageVW$CNGPCityMapResponse;->addCities(Landroid/car/hardware/xpu/XpuProtoMessageVW$CNGPCityMapResponse$CityResponse;)V

    return-void
.end method

.method static synthetic access$2400(Landroid/car/hardware/xpu/XpuProtoMessageVW$CNGPCityMapResponse;ILandroid/car/hardware/xpu/XpuProtoMessageVW$CNGPCityMapResponse$CityResponse;)V
    .locals 0

    .line 1336
    invoke-direct {p0, p1, p2}, Landroid/car/hardware/xpu/XpuProtoMessageVW$CNGPCityMapResponse;->addCities(ILandroid/car/hardware/xpu/XpuProtoMessageVW$CNGPCityMapResponse$CityResponse;)V

    return-void
.end method

.method static synthetic access$2500(Landroid/car/hardware/xpu/XpuProtoMessageVW$CNGPCityMapResponse;Landroid/car/hardware/xpu/XpuProtoMessageVW$CNGPCityMapResponse$CityResponse$Builder;)V
    .locals 0

    .line 1336
    invoke-direct {p0, p1}, Landroid/car/hardware/xpu/XpuProtoMessageVW$CNGPCityMapResponse;->addCities(Landroid/car/hardware/xpu/XpuProtoMessageVW$CNGPCityMapResponse$CityResponse$Builder;)V

    return-void
.end method

.method static synthetic access$2600(Landroid/car/hardware/xpu/XpuProtoMessageVW$CNGPCityMapResponse;ILandroid/car/hardware/xpu/XpuProtoMessageVW$CNGPCityMapResponse$CityResponse$Builder;)V
    .locals 0

    .line 1336
    invoke-direct {p0, p1, p2}, Landroid/car/hardware/xpu/XpuProtoMessageVW$CNGPCityMapResponse;->addCities(ILandroid/car/hardware/xpu/XpuProtoMessageVW$CNGPCityMapResponse$CityResponse$Builder;)V

    return-void
.end method

.method static synthetic access$2700(Landroid/car/hardware/xpu/XpuProtoMessageVW$CNGPCityMapResponse;Ljava/lang/Iterable;)V
    .locals 0

    .line 1336
    invoke-direct {p0, p1}, Landroid/car/hardware/xpu/XpuProtoMessageVW$CNGPCityMapResponse;->addAllCities(Ljava/lang/Iterable;)V

    return-void
.end method

.method static synthetic access$2800(Landroid/car/hardware/xpu/XpuProtoMessageVW$CNGPCityMapResponse;)V
    .locals 0

    .line 1336
    invoke-direct {p0}, Landroid/car/hardware/xpu/XpuProtoMessageVW$CNGPCityMapResponse;->clearCities()V

    return-void
.end method

.method static synthetic access$2900(Landroid/car/hardware/xpu/XpuProtoMessageVW$CNGPCityMapResponse;I)V
    .locals 0

    .line 1336
    invoke-direct {p0, p1}, Landroid/car/hardware/xpu/XpuProtoMessageVW$CNGPCityMapResponse;->removeCities(I)V

    return-void
.end method

.method static synthetic access$3000(Landroid/car/hardware/xpu/XpuProtoMessageVW$CNGPCityMapResponse;I)V
    .locals 0

    .line 1336
    invoke-direct {p0, p1}, Landroid/car/hardware/xpu/XpuProtoMessageVW$CNGPCityMapResponse;->setErrorCode(I)V

    return-void
.end method

.method static synthetic access$3100(Landroid/car/hardware/xpu/XpuProtoMessageVW$CNGPCityMapResponse;)V
    .locals 0

    .line 1336
    invoke-direct {p0}, Landroid/car/hardware/xpu/XpuProtoMessageVW$CNGPCityMapResponse;->clearErrorCode()V

    return-void
.end method

.method private addAllCities(Ljava/lang/Iterable;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Landroid/car/hardware/xpu/XpuProtoMessageVW$CNGPCityMapResponse$CityResponse;",
            ">;)V"
        }
    .end annotation

    .line 1930
    invoke-direct {p0}, Landroid/car/hardware/xpu/XpuProtoMessageVW$CNGPCityMapResponse;->ensureCitiesIsMutable()V

    .line 1931
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$CNGPCityMapResponse;->cities_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    invoke-static {p1, v0}, Lcom/android/carsdk/protobuf/AbstractMessageLite;->addAll(Ljava/lang/Iterable;Ljava/util/Collection;)V

    return-void
.end method

.method private addCities(ILandroid/car/hardware/xpu/XpuProtoMessageVW$CNGPCityMapResponse$CityResponse$Builder;)V
    .locals 1

    .line 1922
    invoke-direct {p0}, Landroid/car/hardware/xpu/XpuProtoMessageVW$CNGPCityMapResponse;->ensureCitiesIsMutable()V

    .line 1923
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$CNGPCityMapResponse;->cities_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    invoke-virtual {p2}, Landroid/car/hardware/xpu/XpuProtoMessageVW$CNGPCityMapResponse$CityResponse$Builder;->build()Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object p2

    check-cast p2, Landroid/car/hardware/xpu/XpuProtoMessageVW$CNGPCityMapResponse$CityResponse;

    invoke-interface {v0, p1, p2}, Lcom/android/carsdk/protobuf/Internal$ProtobufList;->add(ILjava/lang/Object;)V

    return-void
.end method

.method private addCities(ILandroid/car/hardware/xpu/XpuProtoMessageVW$CNGPCityMapResponse$CityResponse;)V
    .locals 1

    .line 1904
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1906
    invoke-direct {p0}, Landroid/car/hardware/xpu/XpuProtoMessageVW$CNGPCityMapResponse;->ensureCitiesIsMutable()V

    .line 1907
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$CNGPCityMapResponse;->cities_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1, p2}, Lcom/android/carsdk/protobuf/Internal$ProtobufList;->add(ILjava/lang/Object;)V

    return-void
.end method

.method private addCities(Landroid/car/hardware/xpu/XpuProtoMessageVW$CNGPCityMapResponse$CityResponse$Builder;)V
    .locals 1

    .line 1914
    invoke-direct {p0}, Landroid/car/hardware/xpu/XpuProtoMessageVW$CNGPCityMapResponse;->ensureCitiesIsMutable()V

    .line 1915
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$CNGPCityMapResponse;->cities_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    invoke-virtual {p1}, Landroid/car/hardware/xpu/XpuProtoMessageVW$CNGPCityMapResponse$CityResponse$Builder;->build()Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Landroid/car/hardware/xpu/XpuProtoMessageVW$CNGPCityMapResponse$CityResponse;

    invoke-interface {v0, p1}, Lcom/android/carsdk/protobuf/Internal$ProtobufList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private addCities(Landroid/car/hardware/xpu/XpuProtoMessageVW$CNGPCityMapResponse$CityResponse;)V
    .locals 1

    .line 1893
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1895
    invoke-direct {p0}, Landroid/car/hardware/xpu/XpuProtoMessageVW$CNGPCityMapResponse;->ensureCitiesIsMutable()V

    .line 1896
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$CNGPCityMapResponse;->cities_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1}, Lcom/android/carsdk/protobuf/Internal$ProtobufList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private clearCities()V
    .locals 1

    .line 1938
    invoke-static {}, Landroid/car/hardware/xpu/XpuProtoMessageVW$CNGPCityMapResponse;->emptyProtobufList()Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    move-result-object v0

    iput-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$CNGPCityMapResponse;->cities_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    return-void
.end method

.method private clearErrorCode()V
    .locals 1

    const/4 v0, 0x0

    .line 1980
    iput v0, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$CNGPCityMapResponse;->errorCode_:I

    return-void
.end method

.method private ensureCitiesIsMutable()V
    .locals 1

    .line 1863
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$CNGPCityMapResponse;->cities_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    invoke-interface {v0}, Lcom/android/carsdk/protobuf/Internal$ProtobufList;->isModifiable()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1864
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$CNGPCityMapResponse;->cities_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    .line 1865
    invoke-static {v0}, Lcom/android/carsdk/protobuf/GeneratedMessageLite;->mutableCopy(Lcom/android/carsdk/protobuf/Internal$ProtobufList;)Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    move-result-object v0

    iput-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$CNGPCityMapResponse;->cities_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    :cond_0
    return-void
.end method

.method public static getDefaultInstance()Landroid/car/hardware/xpu/XpuProtoMessageVW$CNGPCityMapResponse;
    .locals 1

    .line 2328
    sget-object v0, Landroid/car/hardware/xpu/XpuProtoMessageVW$CNGPCityMapResponse;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuProtoMessageVW$CNGPCityMapResponse;

    return-object v0
.end method

.method public static newBuilder()Landroid/car/hardware/xpu/XpuProtoMessageVW$CNGPCityMapResponse$Builder;
    .locals 1

    .line 2072
    sget-object v0, Landroid/car/hardware/xpu/XpuProtoMessageVW$CNGPCityMapResponse;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuProtoMessageVW$CNGPCityMapResponse;

    invoke-virtual {v0}, Landroid/car/hardware/xpu/XpuProtoMessageVW$CNGPCityMapResponse;->toBuilder()Lcom/android/carsdk/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Landroid/car/hardware/xpu/XpuProtoMessageVW$CNGPCityMapResponse$Builder;

    return-object v0
.end method

.method public static newBuilder(Landroid/car/hardware/xpu/XpuProtoMessageVW$CNGPCityMapResponse;)Landroid/car/hardware/xpu/XpuProtoMessageVW$CNGPCityMapResponse$Builder;
    .locals 1

    .line 2075
    sget-object v0, Landroid/car/hardware/xpu/XpuProtoMessageVW$CNGPCityMapResponse;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuProtoMessageVW$CNGPCityMapResponse;

    invoke-virtual {v0}, Landroid/car/hardware/xpu/XpuProtoMessageVW$CNGPCityMapResponse;->toBuilder()Lcom/android/carsdk/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Landroid/car/hardware/xpu/XpuProtoMessageVW$CNGPCityMapResponse$Builder;

    invoke-virtual {v0, p0}, Landroid/car/hardware/xpu/XpuProtoMessageVW$CNGPCityMapResponse$Builder;->mergeFrom(Lcom/android/carsdk/protobuf/GeneratedMessageLite;)Lcom/android/carsdk/protobuf/GeneratedMessageLite$Builder;

    move-result-object p0

    check-cast p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$CNGPCityMapResponse$Builder;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Landroid/car/hardware/xpu/XpuProtoMessageVW$CNGPCityMapResponse;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2049
    sget-object v0, Landroid/car/hardware/xpu/XpuProtoMessageVW$CNGPCityMapResponse;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuProtoMessageVW$CNGPCityMapResponse;

    invoke-static {v0, p0}, Landroid/car/hardware/xpu/XpuProtoMessageVW$CNGPCityMapResponse;->parseDelimitedFrom(Lcom/android/carsdk/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$CNGPCityMapResponse;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/android/carsdk/protobuf/ExtensionRegistryLite;)Landroid/car/hardware/xpu/XpuProtoMessageVW$CNGPCityMapResponse;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2055
    sget-object v0, Landroid/car/hardware/xpu/XpuProtoMessageVW$CNGPCityMapResponse;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuProtoMessageVW$CNGPCityMapResponse;

    invoke-static {v0, p0, p1}, Landroid/car/hardware/xpu/XpuProtoMessageVW$CNGPCityMapResponse;->parseDelimitedFrom(Lcom/android/carsdk/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/android/carsdk/protobuf/ExtensionRegistryLite;)Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$CNGPCityMapResponse;

    return-object p0
.end method

.method public static parseFrom(Lcom/android/carsdk/protobuf/ByteString;)Landroid/car/hardware/xpu/XpuProtoMessageVW$CNGPCityMapResponse;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/carsdk/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 2013
    sget-object v0, Landroid/car/hardware/xpu/XpuProtoMessageVW$CNGPCityMapResponse;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuProtoMessageVW$CNGPCityMapResponse;

    invoke-static {v0, p0}, Lcom/android/carsdk/protobuf/GeneratedMessageLite;->parseFrom(Lcom/android/carsdk/protobuf/GeneratedMessageLite;Lcom/android/carsdk/protobuf/ByteString;)Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$CNGPCityMapResponse;

    return-object p0
.end method

.method public static parseFrom(Lcom/android/carsdk/protobuf/ByteString;Lcom/android/carsdk/protobuf/ExtensionRegistryLite;)Landroid/car/hardware/xpu/XpuProtoMessageVW$CNGPCityMapResponse;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/carsdk/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 2020
    sget-object v0, Landroid/car/hardware/xpu/XpuProtoMessageVW$CNGPCityMapResponse;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuProtoMessageVW$CNGPCityMapResponse;

    invoke-static {v0, p0, p1}, Lcom/android/carsdk/protobuf/GeneratedMessageLite;->parseFrom(Lcom/android/carsdk/protobuf/GeneratedMessageLite;Lcom/android/carsdk/protobuf/ByteString;Lcom/android/carsdk/protobuf/ExtensionRegistryLite;)Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$CNGPCityMapResponse;

    return-object p0
.end method

.method public static parseFrom(Lcom/android/carsdk/protobuf/CodedInputStream;)Landroid/car/hardware/xpu/XpuProtoMessageVW$CNGPCityMapResponse;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2060
    sget-object v0, Landroid/car/hardware/xpu/XpuProtoMessageVW$CNGPCityMapResponse;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuProtoMessageVW$CNGPCityMapResponse;

    invoke-static {v0, p0}, Lcom/android/carsdk/protobuf/GeneratedMessageLite;->parseFrom(Lcom/android/carsdk/protobuf/GeneratedMessageLite;Lcom/android/carsdk/protobuf/CodedInputStream;)Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$CNGPCityMapResponse;

    return-object p0
.end method

.method public static parseFrom(Lcom/android/carsdk/protobuf/CodedInputStream;Lcom/android/carsdk/protobuf/ExtensionRegistryLite;)Landroid/car/hardware/xpu/XpuProtoMessageVW$CNGPCityMapResponse;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2067
    sget-object v0, Landroid/car/hardware/xpu/XpuProtoMessageVW$CNGPCityMapResponse;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuProtoMessageVW$CNGPCityMapResponse;

    invoke-static {v0, p0, p1}, Lcom/android/carsdk/protobuf/GeneratedMessageLite;->parseFrom(Lcom/android/carsdk/protobuf/GeneratedMessageLite;Lcom/android/carsdk/protobuf/CodedInputStream;Lcom/android/carsdk/protobuf/ExtensionRegistryLite;)Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$CNGPCityMapResponse;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Landroid/car/hardware/xpu/XpuProtoMessageVW$CNGPCityMapResponse;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2037
    sget-object v0, Landroid/car/hardware/xpu/XpuProtoMessageVW$CNGPCityMapResponse;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuProtoMessageVW$CNGPCityMapResponse;

    invoke-static {v0, p0}, Lcom/android/carsdk/protobuf/GeneratedMessageLite;->parseFrom(Lcom/android/carsdk/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$CNGPCityMapResponse;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/android/carsdk/protobuf/ExtensionRegistryLite;)Landroid/car/hardware/xpu/XpuProtoMessageVW$CNGPCityMapResponse;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2044
    sget-object v0, Landroid/car/hardware/xpu/XpuProtoMessageVW$CNGPCityMapResponse;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuProtoMessageVW$CNGPCityMapResponse;

    invoke-static {v0, p0, p1}, Lcom/android/carsdk/protobuf/GeneratedMessageLite;->parseFrom(Lcom/android/carsdk/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/android/carsdk/protobuf/ExtensionRegistryLite;)Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$CNGPCityMapResponse;

    return-object p0
.end method

.method public static parseFrom([B)Landroid/car/hardware/xpu/XpuProtoMessageVW$CNGPCityMapResponse;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/carsdk/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 2025
    sget-object v0, Landroid/car/hardware/xpu/XpuProtoMessageVW$CNGPCityMapResponse;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuProtoMessageVW$CNGPCityMapResponse;

    invoke-static {v0, p0}, Lcom/android/carsdk/protobuf/GeneratedMessageLite;->parseFrom(Lcom/android/carsdk/protobuf/GeneratedMessageLite;[B)Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$CNGPCityMapResponse;

    return-object p0
.end method

.method public static parseFrom([BLcom/android/carsdk/protobuf/ExtensionRegistryLite;)Landroid/car/hardware/xpu/XpuProtoMessageVW$CNGPCityMapResponse;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/carsdk/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 2032
    sget-object v0, Landroid/car/hardware/xpu/XpuProtoMessageVW$CNGPCityMapResponse;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuProtoMessageVW$CNGPCityMapResponse;

    invoke-static {v0, p0, p1}, Lcom/android/carsdk/protobuf/GeneratedMessageLite;->parseFrom(Lcom/android/carsdk/protobuf/GeneratedMessageLite;[BLcom/android/carsdk/protobuf/ExtensionRegistryLite;)Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$CNGPCityMapResponse;

    return-object p0
.end method

.method public static parser()Lcom/android/carsdk/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/android/carsdk/protobuf/Parser<",
            "Landroid/car/hardware/xpu/XpuProtoMessageVW$CNGPCityMapResponse;",
            ">;"
        }
    .end annotation

    .line 2334
    sget-object v0, Landroid/car/hardware/xpu/XpuProtoMessageVW$CNGPCityMapResponse;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuProtoMessageVW$CNGPCityMapResponse;

    invoke-virtual {v0}, Landroid/car/hardware/xpu/XpuProtoMessageVW$CNGPCityMapResponse;->getParserForType()Lcom/android/carsdk/protobuf/Parser;

    move-result-object v0

    return-object v0
.end method

.method private removeCities(I)V
    .locals 1

    .line 1944
    invoke-direct {p0}, Landroid/car/hardware/xpu/XpuProtoMessageVW$CNGPCityMapResponse;->ensureCitiesIsMutable()V

    .line 1945
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$CNGPCityMapResponse;->cities_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1}, Lcom/android/carsdk/protobuf/Internal$ProtobufList;->remove(I)Ljava/lang/Object;

    return-void
.end method

.method private setCities(ILandroid/car/hardware/xpu/XpuProtoMessageVW$CNGPCityMapResponse$CityResponse$Builder;)V
    .locals 1

    .line 1885
    invoke-direct {p0}, Landroid/car/hardware/xpu/XpuProtoMessageVW$CNGPCityMapResponse;->ensureCitiesIsMutable()V

    .line 1886
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$CNGPCityMapResponse;->cities_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    invoke-virtual {p2}, Landroid/car/hardware/xpu/XpuProtoMessageVW$CNGPCityMapResponse$CityResponse$Builder;->build()Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object p2

    check-cast p2, Landroid/car/hardware/xpu/XpuProtoMessageVW$CNGPCityMapResponse$CityResponse;

    invoke-interface {v0, p1, p2}, Lcom/android/carsdk/protobuf/Internal$ProtobufList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private setCities(ILandroid/car/hardware/xpu/XpuProtoMessageVW$CNGPCityMapResponse$CityResponse;)V
    .locals 1

    .line 1875
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1877
    invoke-direct {p0}, Landroid/car/hardware/xpu/XpuProtoMessageVW$CNGPCityMapResponse;->ensureCitiesIsMutable()V

    .line 1878
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$CNGPCityMapResponse;->cities_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1, p2}, Lcom/android/carsdk/protobuf/Internal$ProtobufList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private setErrorCode(I)V
    .locals 0

    .line 1969
    iput p1, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$CNGPCityMapResponse;->errorCode_:I

    return-void
.end method


# virtual methods
.method protected final dynamicMethod(Lcom/android/carsdk/protobuf/GeneratedMessageLite$MethodToInvoke;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    .line 2233
    sget-object v0, Landroid/car/hardware/xpu/XpuProtoMessageVW$1;->$SwitchMap$com$google$protobuf$GeneratedMessageLite$MethodToInvoke:[I

    invoke-virtual {p1}, Lcom/android/carsdk/protobuf/GeneratedMessageLite$MethodToInvoke;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x1

    packed-switch p1, :pswitch_data_0

    .line 2316
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1

    .line 2307
    :pswitch_0
    sget-object p1, Landroid/car/hardware/xpu/XpuProtoMessageVW$CNGPCityMapResponse;->PARSER:Lcom/android/carsdk/protobuf/Parser;

    if-nez p1, :cond_1

    const-class p1, Landroid/car/hardware/xpu/XpuProtoMessageVW$CNGPCityMapResponse;

    monitor-enter p1

    .line 2308
    :try_start_0
    sget-object p2, Landroid/car/hardware/xpu/XpuProtoMessageVW$CNGPCityMapResponse;->PARSER:Lcom/android/carsdk/protobuf/Parser;

    if-nez p2, :cond_0

    .line 2309
    new-instance p2, Lcom/android/carsdk/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;

    sget-object p3, Landroid/car/hardware/xpu/XpuProtoMessageVW$CNGPCityMapResponse;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuProtoMessageVW$CNGPCityMapResponse;

    invoke-direct {p2, p3}, Lcom/android/carsdk/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;-><init>(Lcom/android/carsdk/protobuf/GeneratedMessageLite;)V

    sput-object p2, Landroid/car/hardware/xpu/XpuProtoMessageVW$CNGPCityMapResponse;->PARSER:Lcom/android/carsdk/protobuf/Parser;

    .line 2311
    :cond_0
    monitor-exit p1

    goto :goto_0

    :catchall_0
    move-exception p2

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p2

    .line 2313
    :cond_1
    :goto_0
    sget-object p1, Landroid/car/hardware/xpu/XpuProtoMessageVW$CNGPCityMapResponse;->PARSER:Lcom/android/carsdk/protobuf/Parser;

    return-object p1

    .line 2260
    :pswitch_1
    check-cast p2, Lcom/android/carsdk/protobuf/CodedInputStream;

    .line 2262
    check-cast p3, Lcom/android/carsdk/protobuf/ExtensionRegistryLite;

    :cond_2
    :goto_1
    if-nez v1, :cond_7

    .line 2267
    :try_start_1
    invoke-virtual {p2}, Lcom/android/carsdk/protobuf/CodedInputStream;->readTag()I

    move-result p1

    if-eqz p1, :cond_6

    const/16 v0, 0xa

    if-eq p1, v0, :cond_4

    const/16 v0, 0x10

    if-eq p1, v0, :cond_3

    .line 2273
    invoke-virtual {p2, p1}, Lcom/android/carsdk/protobuf/CodedInputStream;->skipField(I)Z

    move-result p1

    if-nez p1, :cond_2

    goto :goto_2

    .line 2289
    :cond_3
    invoke-virtual {p2}, Lcom/android/carsdk/protobuf/CodedInputStream;->readInt32()I

    move-result p1

    iput p1, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$CNGPCityMapResponse;->errorCode_:I

    goto :goto_1

    .line 2279
    :cond_4
    iget-object p1, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$CNGPCityMapResponse;->cities_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    invoke-interface {p1}, Lcom/android/carsdk/protobuf/Internal$ProtobufList;->isModifiable()Z

    move-result p1

    if-nez p1, :cond_5

    .line 2280
    iget-object p1, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$CNGPCityMapResponse;->cities_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    .line 2281
    invoke-static {p1}, Lcom/android/carsdk/protobuf/GeneratedMessageLite;->mutableCopy(Lcom/android/carsdk/protobuf/Internal$ProtobufList;)Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    move-result-object p1

    iput-object p1, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$CNGPCityMapResponse;->cities_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    .line 2283
    :cond_5
    iget-object p1, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$CNGPCityMapResponse;->cities_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    .line 2284
    invoke-static {}, Landroid/car/hardware/xpu/XpuProtoMessageVW$CNGPCityMapResponse$CityResponse;->parser()Lcom/android/carsdk/protobuf/Parser;

    move-result-object v0

    invoke-virtual {p2, v0, p3}, Lcom/android/carsdk/protobuf/CodedInputStream;->readMessage(Lcom/android/carsdk/protobuf/Parser;Lcom/android/carsdk/protobuf/ExtensionRegistryLite;)Lcom/android/carsdk/protobuf/MessageLite;

    move-result-object v0

    check-cast v0, Landroid/car/hardware/xpu/XpuProtoMessageVW$CNGPCityMapResponse$CityResponse;

    .line 2283
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

    .line 2297
    :try_start_2
    new-instance p2, Ljava/lang/RuntimeException;

    new-instance p3, Lcom/android/carsdk/protobuf/InvalidProtocolBufferException;

    .line 2299
    invoke-virtual {p1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p3, p1}, Lcom/android/carsdk/protobuf/InvalidProtocolBufferException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, p0}, Lcom/android/carsdk/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/android/carsdk/protobuf/MessageLite;)Lcom/android/carsdk/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p2

    :catch_1
    move-exception p1

    .line 2295
    new-instance p2, Ljava/lang/RuntimeException;

    invoke-virtual {p1, p0}, Lcom/android/carsdk/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/android/carsdk/protobuf/MessageLite;)Lcom/android/carsdk/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 2300
    :goto_3
    throw p1

    .line 2304
    :cond_7
    :pswitch_2
    sget-object p1, Landroid/car/hardware/xpu/XpuProtoMessageVW$CNGPCityMapResponse;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuProtoMessageVW$CNGPCityMapResponse;

    return-object p1

    .line 2248
    :pswitch_3
    check-cast p2, Lcom/android/carsdk/protobuf/GeneratedMessageLite$Visitor;

    .line 2249
    check-cast p3, Landroid/car/hardware/xpu/XpuProtoMessageVW$CNGPCityMapResponse;

    .line 2250
    iget-object p1, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$CNGPCityMapResponse;->cities_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    iget-object v0, p3, Landroid/car/hardware/xpu/XpuProtoMessageVW$CNGPCityMapResponse;->cities_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    invoke-interface {p2, p1, v0}, Lcom/android/carsdk/protobuf/GeneratedMessageLite$Visitor;->visitList(Lcom/android/carsdk/protobuf/Internal$ProtobufList;Lcom/android/carsdk/protobuf/Internal$ProtobufList;)Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    move-result-object p1

    iput-object p1, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$CNGPCityMapResponse;->cities_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    .line 2251
    iget p1, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$CNGPCityMapResponse;->errorCode_:I

    if-eqz p1, :cond_8

    move v0, v2

    goto :goto_4

    :cond_8
    move v0, v1

    :goto_4
    iget v3, p3, Landroid/car/hardware/xpu/XpuProtoMessageVW$CNGPCityMapResponse;->errorCode_:I

    if-eqz v3, :cond_9

    move v1, v2

    :cond_9
    invoke-interface {p2, v0, p1, v1, v3}, Lcom/android/carsdk/protobuf/GeneratedMessageLite$Visitor;->visitInt(ZIZI)I

    move-result p1

    iput p1, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$CNGPCityMapResponse;->errorCode_:I

    .line 2253
    sget-object p1, Lcom/android/carsdk/protobuf/GeneratedMessageLite$MergeFromVisitor;->INSTANCE:Lcom/android/carsdk/protobuf/GeneratedMessageLite$MergeFromVisitor;

    if-ne p2, p1, :cond_a

    .line 2255
    iget p1, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$CNGPCityMapResponse;->bitField0_:I

    iget p2, p3, Landroid/car/hardware/xpu/XpuProtoMessageVW$CNGPCityMapResponse;->bitField0_:I

    or-int/2addr p1, p2

    iput p1, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$CNGPCityMapResponse;->bitField0_:I

    :cond_a
    return-object p0

    .line 2245
    :pswitch_4
    new-instance p1, Landroid/car/hardware/xpu/XpuProtoMessageVW$CNGPCityMapResponse$Builder;

    invoke-direct {p1, v0}, Landroid/car/hardware/xpu/XpuProtoMessageVW$CNGPCityMapResponse$Builder;-><init>(Landroid/car/hardware/xpu/XpuProtoMessageVW$1;)V

    return-object p1

    .line 2241
    :pswitch_5
    iget-object p1, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$CNGPCityMapResponse;->cities_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    invoke-interface {p1}, Lcom/android/carsdk/protobuf/Internal$ProtobufList;->makeImmutable()V

    return-object v0

    .line 2238
    :pswitch_6
    sget-object p1, Landroid/car/hardware/xpu/XpuProtoMessageVW$CNGPCityMapResponse;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuProtoMessageVW$CNGPCityMapResponse;

    return-object p1

    .line 2235
    :pswitch_7
    new-instance p1, Landroid/car/hardware/xpu/XpuProtoMessageVW$CNGPCityMapResponse;

    invoke-direct {p1}, Landroid/car/hardware/xpu/XpuProtoMessageVW$CNGPCityMapResponse;-><init>()V

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

.method public getCities(I)Landroid/car/hardware/xpu/XpuProtoMessageVW$CNGPCityMapResponse$CityResponse;
    .locals 1

    .line 1853
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$CNGPCityMapResponse;->cities_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1}, Lcom/android/carsdk/protobuf/Internal$ProtobufList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/car/hardware/xpu/XpuProtoMessageVW$CNGPCityMapResponse$CityResponse;

    return-object p1
.end method

.method public getCitiesCount()I
    .locals 1

    .line 1847
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$CNGPCityMapResponse;->cities_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

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
            "Landroid/car/hardware/xpu/XpuProtoMessageVW$CNGPCityMapResponse$CityResponse;",
            ">;"
        }
    .end annotation

    .line 1834
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$CNGPCityMapResponse;->cities_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    return-object v0
.end method

.method public getCitiesOrBuilder(I)Landroid/car/hardware/xpu/XpuProtoMessageVW$CNGPCityMapResponse$CityResponseOrBuilder;
    .locals 1

    .line 1860
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$CNGPCityMapResponse;->cities_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1}, Lcom/android/carsdk/protobuf/Internal$ProtobufList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/car/hardware/xpu/XpuProtoMessageVW$CNGPCityMapResponse$CityResponseOrBuilder;

    return-object p1
.end method

.method public getCitiesOrBuilderList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "+",
            "Landroid/car/hardware/xpu/XpuProtoMessageVW$CNGPCityMapResponse$CityResponseOrBuilder;",
            ">;"
        }
    .end annotation

    .line 1841
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$CNGPCityMapResponse;->cities_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    return-object v0
.end method

.method public getErrorCode()I
    .locals 1

    .line 1958
    iget v0, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$CNGPCityMapResponse;->errorCode_:I

    return v0
.end method

.method public getSerializedSize()I
    .locals 4

    .line 1994
    iget v0, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$CNGPCityMapResponse;->memoizedSerializedSize:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    return v0

    :cond_0
    const/4 v0, 0x0

    move v1, v0

    .line 1998
    :goto_0
    iget-object v2, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$CNGPCityMapResponse;->cities_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    invoke-interface {v2}, Lcom/android/carsdk/protobuf/Internal$ProtobufList;->size()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 1999
    iget-object v2, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$CNGPCityMapResponse;->cities_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    .line 2000
    invoke-interface {v2, v0}, Lcom/android/carsdk/protobuf/Internal$ProtobufList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/carsdk/protobuf/MessageLite;

    const/4 v3, 0x1

    invoke-static {v3, v2}, Lcom/android/carsdk/protobuf/CodedOutputStream;->computeMessageSize(ILcom/android/carsdk/protobuf/MessageLite;)I

    move-result v2

    add-int/2addr v1, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2002
    :cond_1
    iget v0, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$CNGPCityMapResponse;->errorCode_:I

    if-eqz v0, :cond_2

    const/4 v2, 0x2

    .line 2004
    invoke-static {v2, v0}, Lcom/android/carsdk/protobuf/CodedOutputStream;->computeInt32Size(II)I

    move-result v0

    add-int/2addr v1, v0

    .line 2006
    :cond_2
    iput v1, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$CNGPCityMapResponse;->memoizedSerializedSize:I

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

    .line 1985
    :goto_0
    iget-object v1, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$CNGPCityMapResponse;->cities_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    invoke-interface {v1}, Lcom/android/carsdk/protobuf/Internal$ProtobufList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 1986
    iget-object v1, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$CNGPCityMapResponse;->cities_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    invoke-interface {v1, v0}, Lcom/android/carsdk/protobuf/Internal$ProtobufList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/carsdk/protobuf/MessageLite;

    const/4 v2, 0x1

    invoke-virtual {p1, v2, v1}, Lcom/android/carsdk/protobuf/CodedOutputStream;->writeMessage(ILcom/android/carsdk/protobuf/MessageLite;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1988
    :cond_0
    iget v0, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$CNGPCityMapResponse;->errorCode_:I

    if-eqz v0, :cond_1

    const/4 v1, 0x2

    .line 1989
    invoke-virtual {p1, v1, v0}, Lcom/android/carsdk/protobuf/CodedOutputStream;->writeInt32(II)V

    :cond_1
    return-void
.end method
