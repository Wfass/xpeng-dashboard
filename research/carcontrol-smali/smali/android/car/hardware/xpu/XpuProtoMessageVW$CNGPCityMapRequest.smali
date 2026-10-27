.class public final Landroid/car/hardware/xpu/XpuProtoMessageVW$CNGPCityMapRequest;
.super Lcom/android/carsdk/protobuf/GeneratedMessageLite;
.source "XpuProtoMessageVW.java"

# interfaces
.implements Landroid/car/hardware/xpu/XpuProtoMessageVW$CNGPCityMapRequestOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/car/hardware/xpu/XpuProtoMessageVW;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "CNGPCityMapRequest"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/car/hardware/xpu/XpuProtoMessageVW$CNGPCityMapRequest$Builder;,
        Landroid/car/hardware/xpu/XpuProtoMessageVW$CNGPCityMapRequest$CityRequest;,
        Landroid/car/hardware/xpu/XpuProtoMessageVW$CNGPCityMapRequest$CityRequestOrBuilder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/carsdk/protobuf/GeneratedMessageLite<",
        "Landroid/car/hardware/xpu/XpuProtoMessageVW$CNGPCityMapRequest;",
        "Landroid/car/hardware/xpu/XpuProtoMessageVW$CNGPCityMapRequest$Builder;",
        ">;",
        "Landroid/car/hardware/xpu/XpuProtoMessageVW$CNGPCityMapRequestOrBuilder;"
    }
.end annotation


# static fields
.field public static final CITY_FIELD_NUMBER:I = 0x1

.field private static final DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuProtoMessageVW$CNGPCityMapRequest;

.field private static volatile PARSER:Lcom/android/carsdk/protobuf/Parser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/carsdk/protobuf/Parser<",
            "Landroid/car/hardware/xpu/XpuProtoMessageVW$CNGPCityMapRequest;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private city_:Landroid/car/hardware/xpu/XpuProtoMessageVW$CNGPCityMapRequest$CityRequest;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1287
    new-instance v0, Landroid/car/hardware/xpu/XpuProtoMessageVW$CNGPCityMapRequest;

    invoke-direct {v0}, Landroid/car/hardware/xpu/XpuProtoMessageVW$CNGPCityMapRequest;-><init>()V

    sput-object v0, Landroid/car/hardware/xpu/XpuProtoMessageVW$CNGPCityMapRequest;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuProtoMessageVW$CNGPCityMapRequest;

    .line 1288
    invoke-virtual {v0}, Landroid/car/hardware/xpu/XpuProtoMessageVW$CNGPCityMapRequest;->makeImmutable()V

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 552
    invoke-direct {p0}, Lcom/android/carsdk/protobuf/GeneratedMessageLite;-><init>()V

    return-void
.end method

.method static synthetic access$1000(Landroid/car/hardware/xpu/XpuProtoMessageVW$CNGPCityMapRequest;)V
    .locals 0

    .line 547
    invoke-direct {p0}, Landroid/car/hardware/xpu/XpuProtoMessageVW$CNGPCityMapRequest;->clearCity()V

    return-void
.end method

.method static synthetic access$600()Landroid/car/hardware/xpu/XpuProtoMessageVW$CNGPCityMapRequest;
    .locals 1

    .line 547
    sget-object v0, Landroid/car/hardware/xpu/XpuProtoMessageVW$CNGPCityMapRequest;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuProtoMessageVW$CNGPCityMapRequest;

    return-object v0
.end method

.method static synthetic access$700(Landroid/car/hardware/xpu/XpuProtoMessageVW$CNGPCityMapRequest;Landroid/car/hardware/xpu/XpuProtoMessageVW$CNGPCityMapRequest$CityRequest;)V
    .locals 0

    .line 547
    invoke-direct {p0, p1}, Landroid/car/hardware/xpu/XpuProtoMessageVW$CNGPCityMapRequest;->setCity(Landroid/car/hardware/xpu/XpuProtoMessageVW$CNGPCityMapRequest$CityRequest;)V

    return-void
.end method

.method static synthetic access$800(Landroid/car/hardware/xpu/XpuProtoMessageVW$CNGPCityMapRequest;Landroid/car/hardware/xpu/XpuProtoMessageVW$CNGPCityMapRequest$CityRequest$Builder;)V
    .locals 0

    .line 547
    invoke-direct {p0, p1}, Landroid/car/hardware/xpu/XpuProtoMessageVW$CNGPCityMapRequest;->setCity(Landroid/car/hardware/xpu/XpuProtoMessageVW$CNGPCityMapRequest$CityRequest$Builder;)V

    return-void
.end method

.method static synthetic access$900(Landroid/car/hardware/xpu/XpuProtoMessageVW$CNGPCityMapRequest;Landroid/car/hardware/xpu/XpuProtoMessageVW$CNGPCityMapRequest$CityRequest;)V
    .locals 0

    .line 547
    invoke-direct {p0, p1}, Landroid/car/hardware/xpu/XpuProtoMessageVW$CNGPCityMapRequest;->mergeCity(Landroid/car/hardware/xpu/XpuProtoMessageVW$CNGPCityMapRequest$CityRequest;)V

    return-void
.end method

.method private clearCity()V
    .locals 1

    const/4 v0, 0x0

    .line 1014
    iput-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$CNGPCityMapRequest;->city_:Landroid/car/hardware/xpu/XpuProtoMessageVW$CNGPCityMapRequest$CityRequest;

    return-void
.end method

.method public static getDefaultInstance()Landroid/car/hardware/xpu/XpuProtoMessageVW$CNGPCityMapRequest;
    .locals 1

    .line 1292
    sget-object v0, Landroid/car/hardware/xpu/XpuProtoMessageVW$CNGPCityMapRequest;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuProtoMessageVW$CNGPCityMapRequest;

    return-object v0
.end method

.method private mergeCity(Landroid/car/hardware/xpu/XpuProtoMessageVW$CNGPCityMapRequest$CityRequest;)V
    .locals 2

    .line 998
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$CNGPCityMapRequest;->city_:Landroid/car/hardware/xpu/XpuProtoMessageVW$CNGPCityMapRequest$CityRequest;

    if-eqz v0, :cond_0

    .line 999
    invoke-static {}, Landroid/car/hardware/xpu/XpuProtoMessageVW$CNGPCityMapRequest$CityRequest;->getDefaultInstance()Landroid/car/hardware/xpu/XpuProtoMessageVW$CNGPCityMapRequest$CityRequest;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 1000
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$CNGPCityMapRequest;->city_:Landroid/car/hardware/xpu/XpuProtoMessageVW$CNGPCityMapRequest$CityRequest;

    .line 1001
    invoke-static {v0}, Landroid/car/hardware/xpu/XpuProtoMessageVW$CNGPCityMapRequest$CityRequest;->newBuilder(Landroid/car/hardware/xpu/XpuProtoMessageVW$CNGPCityMapRequest$CityRequest;)Landroid/car/hardware/xpu/XpuProtoMessageVW$CNGPCityMapRequest$CityRequest$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/car/hardware/xpu/XpuProtoMessageVW$CNGPCityMapRequest$CityRequest$Builder;->mergeFrom(Lcom/android/carsdk/protobuf/GeneratedMessageLite;)Lcom/android/carsdk/protobuf/GeneratedMessageLite$Builder;

    move-result-object p1

    check-cast p1, Landroid/car/hardware/xpu/XpuProtoMessageVW$CNGPCityMapRequest$CityRequest$Builder;

    invoke-virtual {p1}, Landroid/car/hardware/xpu/XpuProtoMessageVW$CNGPCityMapRequest$CityRequest$Builder;->buildPartial()Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Landroid/car/hardware/xpu/XpuProtoMessageVW$CNGPCityMapRequest$CityRequest;

    iput-object p1, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$CNGPCityMapRequest;->city_:Landroid/car/hardware/xpu/XpuProtoMessageVW$CNGPCityMapRequest$CityRequest;

    goto :goto_0

    .line 1003
    :cond_0
    iput-object p1, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$CNGPCityMapRequest;->city_:Landroid/car/hardware/xpu/XpuProtoMessageVW$CNGPCityMapRequest$CityRequest;

    :goto_0
    return-void
.end method

.method public static newBuilder()Landroid/car/hardware/xpu/XpuProtoMessageVW$CNGPCityMapRequest$Builder;
    .locals 1

    .line 1100
    sget-object v0, Landroid/car/hardware/xpu/XpuProtoMessageVW$CNGPCityMapRequest;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuProtoMessageVW$CNGPCityMapRequest;

    invoke-virtual {v0}, Landroid/car/hardware/xpu/XpuProtoMessageVW$CNGPCityMapRequest;->toBuilder()Lcom/android/carsdk/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Landroid/car/hardware/xpu/XpuProtoMessageVW$CNGPCityMapRequest$Builder;

    return-object v0
.end method

.method public static newBuilder(Landroid/car/hardware/xpu/XpuProtoMessageVW$CNGPCityMapRequest;)Landroid/car/hardware/xpu/XpuProtoMessageVW$CNGPCityMapRequest$Builder;
    .locals 1

    .line 1103
    sget-object v0, Landroid/car/hardware/xpu/XpuProtoMessageVW$CNGPCityMapRequest;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuProtoMessageVW$CNGPCityMapRequest;

    invoke-virtual {v0}, Landroid/car/hardware/xpu/XpuProtoMessageVW$CNGPCityMapRequest;->toBuilder()Lcom/android/carsdk/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Landroid/car/hardware/xpu/XpuProtoMessageVW$CNGPCityMapRequest$Builder;

    invoke-virtual {v0, p0}, Landroid/car/hardware/xpu/XpuProtoMessageVW$CNGPCityMapRequest$Builder;->mergeFrom(Lcom/android/carsdk/protobuf/GeneratedMessageLite;)Lcom/android/carsdk/protobuf/GeneratedMessageLite$Builder;

    move-result-object p0

    check-cast p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$CNGPCityMapRequest$Builder;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Landroid/car/hardware/xpu/XpuProtoMessageVW$CNGPCityMapRequest;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1077
    sget-object v0, Landroid/car/hardware/xpu/XpuProtoMessageVW$CNGPCityMapRequest;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuProtoMessageVW$CNGPCityMapRequest;

    invoke-static {v0, p0}, Landroid/car/hardware/xpu/XpuProtoMessageVW$CNGPCityMapRequest;->parseDelimitedFrom(Lcom/android/carsdk/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$CNGPCityMapRequest;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/android/carsdk/protobuf/ExtensionRegistryLite;)Landroid/car/hardware/xpu/XpuProtoMessageVW$CNGPCityMapRequest;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1083
    sget-object v0, Landroid/car/hardware/xpu/XpuProtoMessageVW$CNGPCityMapRequest;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuProtoMessageVW$CNGPCityMapRequest;

    invoke-static {v0, p0, p1}, Landroid/car/hardware/xpu/XpuProtoMessageVW$CNGPCityMapRequest;->parseDelimitedFrom(Lcom/android/carsdk/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/android/carsdk/protobuf/ExtensionRegistryLite;)Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$CNGPCityMapRequest;

    return-object p0
.end method

.method public static parseFrom(Lcom/android/carsdk/protobuf/ByteString;)Landroid/car/hardware/xpu/XpuProtoMessageVW$CNGPCityMapRequest;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/carsdk/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1041
    sget-object v0, Landroid/car/hardware/xpu/XpuProtoMessageVW$CNGPCityMapRequest;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuProtoMessageVW$CNGPCityMapRequest;

    invoke-static {v0, p0}, Lcom/android/carsdk/protobuf/GeneratedMessageLite;->parseFrom(Lcom/android/carsdk/protobuf/GeneratedMessageLite;Lcom/android/carsdk/protobuf/ByteString;)Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$CNGPCityMapRequest;

    return-object p0
.end method

.method public static parseFrom(Lcom/android/carsdk/protobuf/ByteString;Lcom/android/carsdk/protobuf/ExtensionRegistryLite;)Landroid/car/hardware/xpu/XpuProtoMessageVW$CNGPCityMapRequest;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/carsdk/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1048
    sget-object v0, Landroid/car/hardware/xpu/XpuProtoMessageVW$CNGPCityMapRequest;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuProtoMessageVW$CNGPCityMapRequest;

    invoke-static {v0, p0, p1}, Lcom/android/carsdk/protobuf/GeneratedMessageLite;->parseFrom(Lcom/android/carsdk/protobuf/GeneratedMessageLite;Lcom/android/carsdk/protobuf/ByteString;Lcom/android/carsdk/protobuf/ExtensionRegistryLite;)Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$CNGPCityMapRequest;

    return-object p0
.end method

.method public static parseFrom(Lcom/android/carsdk/protobuf/CodedInputStream;)Landroid/car/hardware/xpu/XpuProtoMessageVW$CNGPCityMapRequest;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1088
    sget-object v0, Landroid/car/hardware/xpu/XpuProtoMessageVW$CNGPCityMapRequest;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuProtoMessageVW$CNGPCityMapRequest;

    invoke-static {v0, p0}, Lcom/android/carsdk/protobuf/GeneratedMessageLite;->parseFrom(Lcom/android/carsdk/protobuf/GeneratedMessageLite;Lcom/android/carsdk/protobuf/CodedInputStream;)Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$CNGPCityMapRequest;

    return-object p0
.end method

.method public static parseFrom(Lcom/android/carsdk/protobuf/CodedInputStream;Lcom/android/carsdk/protobuf/ExtensionRegistryLite;)Landroid/car/hardware/xpu/XpuProtoMessageVW$CNGPCityMapRequest;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1095
    sget-object v0, Landroid/car/hardware/xpu/XpuProtoMessageVW$CNGPCityMapRequest;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuProtoMessageVW$CNGPCityMapRequest;

    invoke-static {v0, p0, p1}, Lcom/android/carsdk/protobuf/GeneratedMessageLite;->parseFrom(Lcom/android/carsdk/protobuf/GeneratedMessageLite;Lcom/android/carsdk/protobuf/CodedInputStream;Lcom/android/carsdk/protobuf/ExtensionRegistryLite;)Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$CNGPCityMapRequest;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Landroid/car/hardware/xpu/XpuProtoMessageVW$CNGPCityMapRequest;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1065
    sget-object v0, Landroid/car/hardware/xpu/XpuProtoMessageVW$CNGPCityMapRequest;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuProtoMessageVW$CNGPCityMapRequest;

    invoke-static {v0, p0}, Lcom/android/carsdk/protobuf/GeneratedMessageLite;->parseFrom(Lcom/android/carsdk/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$CNGPCityMapRequest;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/android/carsdk/protobuf/ExtensionRegistryLite;)Landroid/car/hardware/xpu/XpuProtoMessageVW$CNGPCityMapRequest;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1072
    sget-object v0, Landroid/car/hardware/xpu/XpuProtoMessageVW$CNGPCityMapRequest;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuProtoMessageVW$CNGPCityMapRequest;

    invoke-static {v0, p0, p1}, Lcom/android/carsdk/protobuf/GeneratedMessageLite;->parseFrom(Lcom/android/carsdk/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/android/carsdk/protobuf/ExtensionRegistryLite;)Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$CNGPCityMapRequest;

    return-object p0
.end method

.method public static parseFrom([B)Landroid/car/hardware/xpu/XpuProtoMessageVW$CNGPCityMapRequest;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/carsdk/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1053
    sget-object v0, Landroid/car/hardware/xpu/XpuProtoMessageVW$CNGPCityMapRequest;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuProtoMessageVW$CNGPCityMapRequest;

    invoke-static {v0, p0}, Lcom/android/carsdk/protobuf/GeneratedMessageLite;->parseFrom(Lcom/android/carsdk/protobuf/GeneratedMessageLite;[B)Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$CNGPCityMapRequest;

    return-object p0
.end method

.method public static parseFrom([BLcom/android/carsdk/protobuf/ExtensionRegistryLite;)Landroid/car/hardware/xpu/XpuProtoMessageVW$CNGPCityMapRequest;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/carsdk/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1060
    sget-object v0, Landroid/car/hardware/xpu/XpuProtoMessageVW$CNGPCityMapRequest;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuProtoMessageVW$CNGPCityMapRequest;

    invoke-static {v0, p0, p1}, Lcom/android/carsdk/protobuf/GeneratedMessageLite;->parseFrom(Lcom/android/carsdk/protobuf/GeneratedMessageLite;[BLcom/android/carsdk/protobuf/ExtensionRegistryLite;)Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$CNGPCityMapRequest;

    return-object p0
.end method

.method public static parser()Lcom/android/carsdk/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/android/carsdk/protobuf/Parser<",
            "Landroid/car/hardware/xpu/XpuProtoMessageVW$CNGPCityMapRequest;",
            ">;"
        }
    .end annotation

    .line 1298
    sget-object v0, Landroid/car/hardware/xpu/XpuProtoMessageVW$CNGPCityMapRequest;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuProtoMessageVW$CNGPCityMapRequest;

    invoke-virtual {v0}, Landroid/car/hardware/xpu/XpuProtoMessageVW$CNGPCityMapRequest;->getParserForType()Lcom/android/carsdk/protobuf/Parser;

    move-result-object v0

    return-object v0
.end method

.method private setCity(Landroid/car/hardware/xpu/XpuProtoMessageVW$CNGPCityMapRequest$CityRequest$Builder;)V
    .locals 0

    .line 987
    invoke-virtual {p1}, Landroid/car/hardware/xpu/XpuProtoMessageVW$CNGPCityMapRequest$CityRequest$Builder;->build()Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Landroid/car/hardware/xpu/XpuProtoMessageVW$CNGPCityMapRequest$CityRequest;

    iput-object p1, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$CNGPCityMapRequest;->city_:Landroid/car/hardware/xpu/XpuProtoMessageVW$CNGPCityMapRequest$CityRequest;

    return-void
.end method

.method private setCity(Landroid/car/hardware/xpu/XpuProtoMessageVW$CNGPCityMapRequest$CityRequest;)V
    .locals 0

    .line 973
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 975
    iput-object p1, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$CNGPCityMapRequest;->city_:Landroid/car/hardware/xpu/XpuProtoMessageVW$CNGPCityMapRequest$CityRequest;

    return-void
.end method


# virtual methods
.method protected final dynamicMethod(Lcom/android/carsdk/protobuf/GeneratedMessageLite$MethodToInvoke;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    .line 1202
    sget-object v0, Landroid/car/hardware/xpu/XpuProtoMessageVW$1;->$SwitchMap$com$google$protobuf$GeneratedMessageLite$MethodToInvoke:[I

    invoke-virtual {p1}, Lcom/android/carsdk/protobuf/GeneratedMessageLite$MethodToInvoke;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x0

    packed-switch p1, :pswitch_data_0

    .line 1280
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1

    .line 1271
    :pswitch_0
    sget-object p1, Landroid/car/hardware/xpu/XpuProtoMessageVW$CNGPCityMapRequest;->PARSER:Lcom/android/carsdk/protobuf/Parser;

    if-nez p1, :cond_1

    const-class p1, Landroid/car/hardware/xpu/XpuProtoMessageVW$CNGPCityMapRequest;

    monitor-enter p1

    .line 1272
    :try_start_0
    sget-object p2, Landroid/car/hardware/xpu/XpuProtoMessageVW$CNGPCityMapRequest;->PARSER:Lcom/android/carsdk/protobuf/Parser;

    if-nez p2, :cond_0

    .line 1273
    new-instance p2, Lcom/android/carsdk/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;

    sget-object p3, Landroid/car/hardware/xpu/XpuProtoMessageVW$CNGPCityMapRequest;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuProtoMessageVW$CNGPCityMapRequest;

    invoke-direct {p2, p3}, Lcom/android/carsdk/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;-><init>(Lcom/android/carsdk/protobuf/GeneratedMessageLite;)V

    sput-object p2, Landroid/car/hardware/xpu/XpuProtoMessageVW$CNGPCityMapRequest;->PARSER:Lcom/android/carsdk/protobuf/Parser;

    .line 1275
    :cond_0
    monitor-exit p1

    goto :goto_0

    :catchall_0
    move-exception p2

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p2

    .line 1277
    :cond_1
    :goto_0
    sget-object p1, Landroid/car/hardware/xpu/XpuProtoMessageVW$CNGPCityMapRequest;->PARSER:Lcom/android/carsdk/protobuf/Parser;

    return-object p1

    .line 1225
    :pswitch_1
    check-cast p2, Lcom/android/carsdk/protobuf/CodedInputStream;

    .line 1227
    check-cast p3, Lcom/android/carsdk/protobuf/ExtensionRegistryLite;

    const/4 p1, 0x0

    :cond_2
    :goto_1
    if-nez p1, :cond_6

    .line 1232
    :try_start_1
    invoke-virtual {p2}, Lcom/android/carsdk/protobuf/CodedInputStream;->readTag()I

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_5

    const/16 v3, 0xa

    if-eq v1, v3, :cond_3

    .line 1238
    invoke-virtual {p2, v1}, Lcom/android/carsdk/protobuf/CodedInputStream;->skipField(I)Z

    move-result v1

    if-nez v1, :cond_2

    goto :goto_3

    .line 1245
    :cond_3
    iget-object v1, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$CNGPCityMapRequest;->city_:Landroid/car/hardware/xpu/XpuProtoMessageVW$CNGPCityMapRequest$CityRequest;

    if-eqz v1, :cond_4

    .line 1246
    invoke-virtual {v1}, Landroid/car/hardware/xpu/XpuProtoMessageVW$CNGPCityMapRequest$CityRequest;->toBuilder()Lcom/android/carsdk/protobuf/GeneratedMessageLite$Builder;

    move-result-object v1

    check-cast v1, Landroid/car/hardware/xpu/XpuProtoMessageVW$CNGPCityMapRequest$CityRequest$Builder;

    goto :goto_2

    :cond_4
    move-object v1, v0

    .line 1248
    :goto_2
    invoke-static {}, Landroid/car/hardware/xpu/XpuProtoMessageVW$CNGPCityMapRequest$CityRequest;->parser()Lcom/android/carsdk/protobuf/Parser;

    move-result-object v2

    invoke-virtual {p2, v2, p3}, Lcom/android/carsdk/protobuf/CodedInputStream;->readMessage(Lcom/android/carsdk/protobuf/Parser;Lcom/android/carsdk/protobuf/ExtensionRegistryLite;)Lcom/android/carsdk/protobuf/MessageLite;

    move-result-object v2

    check-cast v2, Landroid/car/hardware/xpu/XpuProtoMessageVW$CNGPCityMapRequest$CityRequest;

    iput-object v2, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$CNGPCityMapRequest;->city_:Landroid/car/hardware/xpu/XpuProtoMessageVW$CNGPCityMapRequest$CityRequest;

    if-eqz v1, :cond_2

    .line 1250
    invoke-virtual {v1, v2}, Landroid/car/hardware/xpu/XpuProtoMessageVW$CNGPCityMapRequest$CityRequest$Builder;->mergeFrom(Lcom/android/carsdk/protobuf/GeneratedMessageLite;)Lcom/android/carsdk/protobuf/GeneratedMessageLite$Builder;

    .line 1251
    invoke-virtual {v1}, Landroid/car/hardware/xpu/XpuProtoMessageVW$CNGPCityMapRequest$CityRequest$Builder;->buildPartial()Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object v1

    check-cast v1, Landroid/car/hardware/xpu/XpuProtoMessageVW$CNGPCityMapRequest$CityRequest;

    iput-object v1, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$CNGPCityMapRequest;->city_:Landroid/car/hardware/xpu/XpuProtoMessageVW$CNGPCityMapRequest$CityRequest;
    :try_end_1
    .catch Lcom/android/carsdk/protobuf/InvalidProtocolBufferException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    :cond_5
    :goto_3
    move p1, v2

    goto :goto_1

    :catchall_1
    move-exception p1

    goto :goto_4

    :catch_0
    move-exception p1

    .line 1261
    :try_start_2
    new-instance p2, Ljava/lang/RuntimeException;

    new-instance p3, Lcom/android/carsdk/protobuf/InvalidProtocolBufferException;

    .line 1263
    invoke-virtual {p1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p3, p1}, Lcom/android/carsdk/protobuf/InvalidProtocolBufferException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, p0}, Lcom/android/carsdk/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/android/carsdk/protobuf/MessageLite;)Lcom/android/carsdk/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p2

    :catch_1
    move-exception p1

    .line 1259
    new-instance p2, Ljava/lang/RuntimeException;

    invoke-virtual {p1, p0}, Lcom/android/carsdk/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/android/carsdk/protobuf/MessageLite;)Lcom/android/carsdk/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 1264
    :goto_4
    throw p1

    .line 1268
    :cond_6
    :pswitch_2
    sget-object p1, Landroid/car/hardware/xpu/XpuProtoMessageVW$CNGPCityMapRequest;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuProtoMessageVW$CNGPCityMapRequest;

    return-object p1

    .line 1216
    :pswitch_3
    check-cast p2, Lcom/android/carsdk/protobuf/GeneratedMessageLite$Visitor;

    .line 1217
    check-cast p3, Landroid/car/hardware/xpu/XpuProtoMessageVW$CNGPCityMapRequest;

    .line 1218
    iget-object p1, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$CNGPCityMapRequest;->city_:Landroid/car/hardware/xpu/XpuProtoMessageVW$CNGPCityMapRequest$CityRequest;

    iget-object p3, p3, Landroid/car/hardware/xpu/XpuProtoMessageVW$CNGPCityMapRequest;->city_:Landroid/car/hardware/xpu/XpuProtoMessageVW$CNGPCityMapRequest$CityRequest;

    invoke-interface {p2, p1, p3}, Lcom/android/carsdk/protobuf/GeneratedMessageLite$Visitor;->visitMessage(Lcom/android/carsdk/protobuf/MessageLite;Lcom/android/carsdk/protobuf/MessageLite;)Lcom/android/carsdk/protobuf/MessageLite;

    move-result-object p1

    check-cast p1, Landroid/car/hardware/xpu/XpuProtoMessageVW$CNGPCityMapRequest$CityRequest;

    iput-object p1, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$CNGPCityMapRequest;->city_:Landroid/car/hardware/xpu/XpuProtoMessageVW$CNGPCityMapRequest$CityRequest;

    .line 1219
    sget-object p1, Lcom/android/carsdk/protobuf/GeneratedMessageLite$MergeFromVisitor;->INSTANCE:Lcom/android/carsdk/protobuf/GeneratedMessageLite$MergeFromVisitor;

    return-object p0

    .line 1213
    :pswitch_4
    new-instance p1, Landroid/car/hardware/xpu/XpuProtoMessageVW$CNGPCityMapRequest$Builder;

    invoke-direct {p1, v0}, Landroid/car/hardware/xpu/XpuProtoMessageVW$CNGPCityMapRequest$Builder;-><init>(Landroid/car/hardware/xpu/XpuProtoMessageVW$1;)V

    return-object p1

    :pswitch_5
    return-object v0

    .line 1207
    :pswitch_6
    sget-object p1, Landroid/car/hardware/xpu/XpuProtoMessageVW$CNGPCityMapRequest;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuProtoMessageVW$CNGPCityMapRequest;

    return-object p1

    .line 1204
    :pswitch_7
    new-instance p1, Landroid/car/hardware/xpu/XpuProtoMessageVW$CNGPCityMapRequest;

    invoke-direct {p1}, Landroid/car/hardware/xpu/XpuProtoMessageVW$CNGPCityMapRequest;-><init>()V

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

.method public getCity()Landroid/car/hardware/xpu/XpuProtoMessageVW$CNGPCityMapRequest$CityRequest;
    .locals 1

    .line 962
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$CNGPCityMapRequest;->city_:Landroid/car/hardware/xpu/XpuProtoMessageVW$CNGPCityMapRequest$CityRequest;

    if-nez v0, :cond_0

    invoke-static {}, Landroid/car/hardware/xpu/XpuProtoMessageVW$CNGPCityMapRequest$CityRequest;->getDefaultInstance()Landroid/car/hardware/xpu/XpuProtoMessageVW$CNGPCityMapRequest$CityRequest;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public getSerializedSize()I
    .locals 3

    .line 1026
    iget v0, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$CNGPCityMapRequest;->memoizedSerializedSize:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    return v0

    :cond_0
    const/4 v0, 0x0

    .line 1030
    iget-object v1, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$CNGPCityMapRequest;->city_:Landroid/car/hardware/xpu/XpuProtoMessageVW$CNGPCityMapRequest$CityRequest;

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    .line 1032
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuProtoMessageVW$CNGPCityMapRequest;->getCity()Landroid/car/hardware/xpu/XpuProtoMessageVW$CNGPCityMapRequest$CityRequest;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/carsdk/protobuf/CodedOutputStream;->computeMessageSize(ILcom/android/carsdk/protobuf/MessageLite;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1034
    :cond_1
    iput v0, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$CNGPCityMapRequest;->memoizedSerializedSize:I

    return v0
.end method

.method public hasCity()Z
    .locals 1

    .line 952
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$CNGPCityMapRequest;->city_:Landroid/car/hardware/xpu/XpuProtoMessageVW$CNGPCityMapRequest$CityRequest;

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

    .line 1020
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$CNGPCityMapRequest;->city_:Landroid/car/hardware/xpu/XpuProtoMessageVW$CNGPCityMapRequest$CityRequest;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 1021
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuProtoMessageVW$CNGPCityMapRequest;->getCity()Landroid/car/hardware/xpu/XpuProtoMessageVW$CNGPCityMapRequest$CityRequest;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/android/carsdk/protobuf/CodedOutputStream;->writeMessage(ILcom/android/carsdk/protobuf/MessageLite;)V

    :cond_0
    return-void
.end method
