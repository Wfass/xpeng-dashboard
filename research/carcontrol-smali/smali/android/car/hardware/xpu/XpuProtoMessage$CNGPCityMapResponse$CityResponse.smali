.class public final Landroid/car/hardware/xpu/XpuProtoMessage$CNGPCityMapResponse$CityResponse;
.super Lcom/android/carsdk/protobuf/GeneratedMessageLite;
.source "XpuProtoMessage.java"

# interfaces
.implements Landroid/car/hardware/xpu/XpuProtoMessage$CNGPCityMapResponse$CityResponseOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/car/hardware/xpu/XpuProtoMessage$CNGPCityMapResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "CityResponse"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/car/hardware/xpu/XpuProtoMessage$CNGPCityMapResponse$CityResponse$Builder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/carsdk/protobuf/GeneratedMessageLite<",
        "Landroid/car/hardware/xpu/XpuProtoMessage$CNGPCityMapResponse$CityResponse;",
        "Landroid/car/hardware/xpu/XpuProtoMessage$CNGPCityMapResponse$CityResponse$Builder;",
        ">;",
        "Landroid/car/hardware/xpu/XpuProtoMessage$CNGPCityMapResponse$CityResponseOrBuilder;"
    }
.end annotation


# static fields
.field public static final CITY_CODE_FIELD_NUMBER:I = 0x1

.field private static final DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuProtoMessage$CNGPCityMapResponse$CityResponse;

.field public static final MAP_PROGRESS_FIELD_NUMBER:I = 0x3

.field public static final MAP_STATUS_FIELD_NUMBER:I = 0x2

.field private static volatile PARSER:Lcom/android/carsdk/protobuf/Parser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/carsdk/protobuf/Parser<",
            "Landroid/car/hardware/xpu/XpuProtoMessage$CNGPCityMapResponse$CityResponse;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private cityCode_:I

.field private mapProgress_:I

.field private mapStatus_:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1979
    new-instance v0, Landroid/car/hardware/xpu/XpuProtoMessage$CNGPCityMapResponse$CityResponse;

    invoke-direct {v0}, Landroid/car/hardware/xpu/XpuProtoMessage$CNGPCityMapResponse$CityResponse;-><init>()V

    sput-object v0, Landroid/car/hardware/xpu/XpuProtoMessage$CNGPCityMapResponse$CityResponse;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuProtoMessage$CNGPCityMapResponse$CityResponse;

    .line 1980
    invoke-virtual {v0}, Landroid/car/hardware/xpu/XpuProtoMessage$CNGPCityMapResponse$CityResponse;->makeImmutable()V

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 1551
    invoke-direct {p0}, Lcom/android/carsdk/protobuf/GeneratedMessageLite;-><init>()V

    const/4 v0, 0x0

    .line 1552
    iput v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$CNGPCityMapResponse$CityResponse;->cityCode_:I

    .line 1553
    iput v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$CNGPCityMapResponse$CityResponse;->mapStatus_:I

    .line 1554
    iput v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$CNGPCityMapResponse$CityResponse;->mapProgress_:I

    return-void
.end method

.method static synthetic access$1200()Landroid/car/hardware/xpu/XpuProtoMessage$CNGPCityMapResponse$CityResponse;
    .locals 1

    .line 1546
    sget-object v0, Landroid/car/hardware/xpu/XpuProtoMessage$CNGPCityMapResponse$CityResponse;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuProtoMessage$CNGPCityMapResponse$CityResponse;

    return-object v0
.end method

.method static synthetic access$1300(Landroid/car/hardware/xpu/XpuProtoMessage$CNGPCityMapResponse$CityResponse;I)V
    .locals 0

    .line 1546
    invoke-direct {p0, p1}, Landroid/car/hardware/xpu/XpuProtoMessage$CNGPCityMapResponse$CityResponse;->setCityCode(I)V

    return-void
.end method

.method static synthetic access$1400(Landroid/car/hardware/xpu/XpuProtoMessage$CNGPCityMapResponse$CityResponse;)V
    .locals 0

    .line 1546
    invoke-direct {p0}, Landroid/car/hardware/xpu/XpuProtoMessage$CNGPCityMapResponse$CityResponse;->clearCityCode()V

    return-void
.end method

.method static synthetic access$1500(Landroid/car/hardware/xpu/XpuProtoMessage$CNGPCityMapResponse$CityResponse;I)V
    .locals 0

    .line 1546
    invoke-direct {p0, p1}, Landroid/car/hardware/xpu/XpuProtoMessage$CNGPCityMapResponse$CityResponse;->setMapStatus(I)V

    return-void
.end method

.method static synthetic access$1600(Landroid/car/hardware/xpu/XpuProtoMessage$CNGPCityMapResponse$CityResponse;)V
    .locals 0

    .line 1546
    invoke-direct {p0}, Landroid/car/hardware/xpu/XpuProtoMessage$CNGPCityMapResponse$CityResponse;->clearMapStatus()V

    return-void
.end method

.method static synthetic access$1700(Landroid/car/hardware/xpu/XpuProtoMessage$CNGPCityMapResponse$CityResponse;I)V
    .locals 0

    .line 1546
    invoke-direct {p0, p1}, Landroid/car/hardware/xpu/XpuProtoMessage$CNGPCityMapResponse$CityResponse;->setMapProgress(I)V

    return-void
.end method

.method static synthetic access$1800(Landroid/car/hardware/xpu/XpuProtoMessage$CNGPCityMapResponse$CityResponse;)V
    .locals 0

    .line 1546
    invoke-direct {p0}, Landroid/car/hardware/xpu/XpuProtoMessage$CNGPCityMapResponse$CityResponse;->clearMapProgress()V

    return-void
.end method

.method private clearCityCode()V
    .locals 1

    const/4 v0, 0x0

    .line 1588
    iput v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$CNGPCityMapResponse$CityResponse;->cityCode_:I

    return-void
.end method

.method private clearMapProgress()V
    .locals 1

    const/4 v0, 0x0

    .line 1658
    iput v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$CNGPCityMapResponse$CityResponse;->mapProgress_:I

    return-void
.end method

.method private clearMapStatus()V
    .locals 1

    const/4 v0, 0x0

    .line 1623
    iput v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$CNGPCityMapResponse$CityResponse;->mapStatus_:I

    return-void
.end method

.method public static getDefaultInstance()Landroid/car/hardware/xpu/XpuProtoMessage$CNGPCityMapResponse$CityResponse;
    .locals 1

    .line 1984
    sget-object v0, Landroid/car/hardware/xpu/XpuProtoMessage$CNGPCityMapResponse$CityResponse;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuProtoMessage$CNGPCityMapResponse$CityResponse;

    return-object v0
.end method

.method public static newBuilder()Landroid/car/hardware/xpu/XpuProtoMessage$CNGPCityMapResponse$CityResponse$Builder;
    .locals 1

    .line 1757
    sget-object v0, Landroid/car/hardware/xpu/XpuProtoMessage$CNGPCityMapResponse$CityResponse;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuProtoMessage$CNGPCityMapResponse$CityResponse;

    invoke-virtual {v0}, Landroid/car/hardware/xpu/XpuProtoMessage$CNGPCityMapResponse$CityResponse;->toBuilder()Lcom/android/carsdk/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Landroid/car/hardware/xpu/XpuProtoMessage$CNGPCityMapResponse$CityResponse$Builder;

    return-object v0
.end method

.method public static newBuilder(Landroid/car/hardware/xpu/XpuProtoMessage$CNGPCityMapResponse$CityResponse;)Landroid/car/hardware/xpu/XpuProtoMessage$CNGPCityMapResponse$CityResponse$Builder;
    .locals 1

    .line 1760
    sget-object v0, Landroid/car/hardware/xpu/XpuProtoMessage$CNGPCityMapResponse$CityResponse;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuProtoMessage$CNGPCityMapResponse$CityResponse;

    invoke-virtual {v0}, Landroid/car/hardware/xpu/XpuProtoMessage$CNGPCityMapResponse$CityResponse;->toBuilder()Lcom/android/carsdk/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Landroid/car/hardware/xpu/XpuProtoMessage$CNGPCityMapResponse$CityResponse$Builder;

    invoke-virtual {v0, p0}, Landroid/car/hardware/xpu/XpuProtoMessage$CNGPCityMapResponse$CityResponse$Builder;->mergeFrom(Lcom/android/carsdk/protobuf/GeneratedMessageLite;)Lcom/android/carsdk/protobuf/GeneratedMessageLite$Builder;

    move-result-object p0

    check-cast p0, Landroid/car/hardware/xpu/XpuProtoMessage$CNGPCityMapResponse$CityResponse$Builder;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Landroid/car/hardware/xpu/XpuProtoMessage$CNGPCityMapResponse$CityResponse;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1734
    sget-object v0, Landroid/car/hardware/xpu/XpuProtoMessage$CNGPCityMapResponse$CityResponse;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuProtoMessage$CNGPCityMapResponse$CityResponse;

    invoke-static {v0, p0}, Landroid/car/hardware/xpu/XpuProtoMessage$CNGPCityMapResponse$CityResponse;->parseDelimitedFrom(Lcom/android/carsdk/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Landroid/car/hardware/xpu/XpuProtoMessage$CNGPCityMapResponse$CityResponse;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/android/carsdk/protobuf/ExtensionRegistryLite;)Landroid/car/hardware/xpu/XpuProtoMessage$CNGPCityMapResponse$CityResponse;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1740
    sget-object v0, Landroid/car/hardware/xpu/XpuProtoMessage$CNGPCityMapResponse$CityResponse;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuProtoMessage$CNGPCityMapResponse$CityResponse;

    invoke-static {v0, p0, p1}, Landroid/car/hardware/xpu/XpuProtoMessage$CNGPCityMapResponse$CityResponse;->parseDelimitedFrom(Lcom/android/carsdk/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/android/carsdk/protobuf/ExtensionRegistryLite;)Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Landroid/car/hardware/xpu/XpuProtoMessage$CNGPCityMapResponse$CityResponse;

    return-object p0
.end method

.method public static parseFrom(Lcom/android/carsdk/protobuf/ByteString;)Landroid/car/hardware/xpu/XpuProtoMessage$CNGPCityMapResponse$CityResponse;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/carsdk/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1698
    sget-object v0, Landroid/car/hardware/xpu/XpuProtoMessage$CNGPCityMapResponse$CityResponse;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuProtoMessage$CNGPCityMapResponse$CityResponse;

    invoke-static {v0, p0}, Lcom/android/carsdk/protobuf/GeneratedMessageLite;->parseFrom(Lcom/android/carsdk/protobuf/GeneratedMessageLite;Lcom/android/carsdk/protobuf/ByteString;)Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Landroid/car/hardware/xpu/XpuProtoMessage$CNGPCityMapResponse$CityResponse;

    return-object p0
.end method

.method public static parseFrom(Lcom/android/carsdk/protobuf/ByteString;Lcom/android/carsdk/protobuf/ExtensionRegistryLite;)Landroid/car/hardware/xpu/XpuProtoMessage$CNGPCityMapResponse$CityResponse;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/carsdk/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1705
    sget-object v0, Landroid/car/hardware/xpu/XpuProtoMessage$CNGPCityMapResponse$CityResponse;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuProtoMessage$CNGPCityMapResponse$CityResponse;

    invoke-static {v0, p0, p1}, Lcom/android/carsdk/protobuf/GeneratedMessageLite;->parseFrom(Lcom/android/carsdk/protobuf/GeneratedMessageLite;Lcom/android/carsdk/protobuf/ByteString;Lcom/android/carsdk/protobuf/ExtensionRegistryLite;)Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Landroid/car/hardware/xpu/XpuProtoMessage$CNGPCityMapResponse$CityResponse;

    return-object p0
.end method

.method public static parseFrom(Lcom/android/carsdk/protobuf/CodedInputStream;)Landroid/car/hardware/xpu/XpuProtoMessage$CNGPCityMapResponse$CityResponse;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1745
    sget-object v0, Landroid/car/hardware/xpu/XpuProtoMessage$CNGPCityMapResponse$CityResponse;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuProtoMessage$CNGPCityMapResponse$CityResponse;

    invoke-static {v0, p0}, Lcom/android/carsdk/protobuf/GeneratedMessageLite;->parseFrom(Lcom/android/carsdk/protobuf/GeneratedMessageLite;Lcom/android/carsdk/protobuf/CodedInputStream;)Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Landroid/car/hardware/xpu/XpuProtoMessage$CNGPCityMapResponse$CityResponse;

    return-object p0
.end method

.method public static parseFrom(Lcom/android/carsdk/protobuf/CodedInputStream;Lcom/android/carsdk/protobuf/ExtensionRegistryLite;)Landroid/car/hardware/xpu/XpuProtoMessage$CNGPCityMapResponse$CityResponse;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1752
    sget-object v0, Landroid/car/hardware/xpu/XpuProtoMessage$CNGPCityMapResponse$CityResponse;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuProtoMessage$CNGPCityMapResponse$CityResponse;

    invoke-static {v0, p0, p1}, Lcom/android/carsdk/protobuf/GeneratedMessageLite;->parseFrom(Lcom/android/carsdk/protobuf/GeneratedMessageLite;Lcom/android/carsdk/protobuf/CodedInputStream;Lcom/android/carsdk/protobuf/ExtensionRegistryLite;)Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Landroid/car/hardware/xpu/XpuProtoMessage$CNGPCityMapResponse$CityResponse;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Landroid/car/hardware/xpu/XpuProtoMessage$CNGPCityMapResponse$CityResponse;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1722
    sget-object v0, Landroid/car/hardware/xpu/XpuProtoMessage$CNGPCityMapResponse$CityResponse;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuProtoMessage$CNGPCityMapResponse$CityResponse;

    invoke-static {v0, p0}, Lcom/android/carsdk/protobuf/GeneratedMessageLite;->parseFrom(Lcom/android/carsdk/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Landroid/car/hardware/xpu/XpuProtoMessage$CNGPCityMapResponse$CityResponse;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/android/carsdk/protobuf/ExtensionRegistryLite;)Landroid/car/hardware/xpu/XpuProtoMessage$CNGPCityMapResponse$CityResponse;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1729
    sget-object v0, Landroid/car/hardware/xpu/XpuProtoMessage$CNGPCityMapResponse$CityResponse;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuProtoMessage$CNGPCityMapResponse$CityResponse;

    invoke-static {v0, p0, p1}, Lcom/android/carsdk/protobuf/GeneratedMessageLite;->parseFrom(Lcom/android/carsdk/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/android/carsdk/protobuf/ExtensionRegistryLite;)Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Landroid/car/hardware/xpu/XpuProtoMessage$CNGPCityMapResponse$CityResponse;

    return-object p0
.end method

.method public static parseFrom([B)Landroid/car/hardware/xpu/XpuProtoMessage$CNGPCityMapResponse$CityResponse;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/carsdk/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1710
    sget-object v0, Landroid/car/hardware/xpu/XpuProtoMessage$CNGPCityMapResponse$CityResponse;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuProtoMessage$CNGPCityMapResponse$CityResponse;

    invoke-static {v0, p0}, Lcom/android/carsdk/protobuf/GeneratedMessageLite;->parseFrom(Lcom/android/carsdk/protobuf/GeneratedMessageLite;[B)Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Landroid/car/hardware/xpu/XpuProtoMessage$CNGPCityMapResponse$CityResponse;

    return-object p0
.end method

.method public static parseFrom([BLcom/android/carsdk/protobuf/ExtensionRegistryLite;)Landroid/car/hardware/xpu/XpuProtoMessage$CNGPCityMapResponse$CityResponse;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/carsdk/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1717
    sget-object v0, Landroid/car/hardware/xpu/XpuProtoMessage$CNGPCityMapResponse$CityResponse;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuProtoMessage$CNGPCityMapResponse$CityResponse;

    invoke-static {v0, p0, p1}, Lcom/android/carsdk/protobuf/GeneratedMessageLite;->parseFrom(Lcom/android/carsdk/protobuf/GeneratedMessageLite;[BLcom/android/carsdk/protobuf/ExtensionRegistryLite;)Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Landroid/car/hardware/xpu/XpuProtoMessage$CNGPCityMapResponse$CityResponse;

    return-object p0
.end method

.method public static parser()Lcom/android/carsdk/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/android/carsdk/protobuf/Parser<",
            "Landroid/car/hardware/xpu/XpuProtoMessage$CNGPCityMapResponse$CityResponse;",
            ">;"
        }
    .end annotation

    .line 1990
    sget-object v0, Landroid/car/hardware/xpu/XpuProtoMessage$CNGPCityMapResponse$CityResponse;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuProtoMessage$CNGPCityMapResponse$CityResponse;

    invoke-virtual {v0}, Landroid/car/hardware/xpu/XpuProtoMessage$CNGPCityMapResponse$CityResponse;->getParserForType()Lcom/android/carsdk/protobuf/Parser;

    move-result-object v0

    return-object v0
.end method

.method private setCityCode(I)V
    .locals 0

    .line 1577
    iput p1, p0, Landroid/car/hardware/xpu/XpuProtoMessage$CNGPCityMapResponse$CityResponse;->cityCode_:I

    return-void
.end method

.method private setMapProgress(I)V
    .locals 0

    .line 1647
    iput p1, p0, Landroid/car/hardware/xpu/XpuProtoMessage$CNGPCityMapResponse$CityResponse;->mapProgress_:I

    return-void
.end method

.method private setMapStatus(I)V
    .locals 0

    .line 1612
    iput p1, p0, Landroid/car/hardware/xpu/XpuProtoMessage$CNGPCityMapResponse$CityResponse;->mapStatus_:I

    return-void
.end method


# virtual methods
.method protected final dynamicMethod(Lcom/android/carsdk/protobuf/GeneratedMessageLite$MethodToInvoke;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5

    .line 1887
    sget-object v0, Landroid/car/hardware/xpu/XpuProtoMessage$1;->$SwitchMap$com$google$protobuf$GeneratedMessageLite$MethodToInvoke:[I

    invoke-virtual {p1}, Lcom/android/carsdk/protobuf/GeneratedMessageLite$MethodToInvoke;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x1

    packed-switch p1, :pswitch_data_0

    .line 1972
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1

    .line 1963
    :pswitch_0
    sget-object p1, Landroid/car/hardware/xpu/XpuProtoMessage$CNGPCityMapResponse$CityResponse;->PARSER:Lcom/android/carsdk/protobuf/Parser;

    if-nez p1, :cond_1

    const-class p1, Landroid/car/hardware/xpu/XpuProtoMessage$CNGPCityMapResponse$CityResponse;

    monitor-enter p1

    .line 1964
    :try_start_0
    sget-object p2, Landroid/car/hardware/xpu/XpuProtoMessage$CNGPCityMapResponse$CityResponse;->PARSER:Lcom/android/carsdk/protobuf/Parser;

    if-nez p2, :cond_0

    .line 1965
    new-instance p2, Lcom/android/carsdk/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;

    sget-object p3, Landroid/car/hardware/xpu/XpuProtoMessage$CNGPCityMapResponse$CityResponse;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuProtoMessage$CNGPCityMapResponse$CityResponse;

    invoke-direct {p2, p3}, Lcom/android/carsdk/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;-><init>(Lcom/android/carsdk/protobuf/GeneratedMessageLite;)V

    sput-object p2, Landroid/car/hardware/xpu/XpuProtoMessage$CNGPCityMapResponse$CityResponse;->PARSER:Lcom/android/carsdk/protobuf/Parser;

    .line 1967
    :cond_0
    monitor-exit p1

    goto :goto_0

    :catchall_0
    move-exception p2

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p2

    .line 1969
    :cond_1
    :goto_0
    sget-object p1, Landroid/car/hardware/xpu/XpuProtoMessage$CNGPCityMapResponse$CityResponse;->PARSER:Lcom/android/carsdk/protobuf/Parser;

    return-object p1

    .line 1915
    :pswitch_1
    check-cast p2, Lcom/android/carsdk/protobuf/CodedInputStream;

    .line 1917
    check-cast p3, Lcom/android/carsdk/protobuf/ExtensionRegistryLite;

    :cond_2
    :goto_1
    if-nez v1, :cond_7

    .line 1922
    :try_start_1
    invoke-virtual {p2}, Lcom/android/carsdk/protobuf/CodedInputStream;->readTag()I

    move-result p1

    if-eqz p1, :cond_6

    const/16 p3, 0x8

    if-eq p1, p3, :cond_5

    const/16 p3, 0x10

    if-eq p1, p3, :cond_4

    const/16 p3, 0x18

    if-eq p1, p3, :cond_3

    .line 1928
    invoke-virtual {p2, p1}, Lcom/android/carsdk/protobuf/CodedInputStream;->skipField(I)Z

    move-result p1

    if-nez p1, :cond_2

    goto :goto_2

    .line 1945
    :cond_3
    invoke-virtual {p2}, Lcom/android/carsdk/protobuf/CodedInputStream;->readInt32()I

    move-result p1

    iput p1, p0, Landroid/car/hardware/xpu/XpuProtoMessage$CNGPCityMapResponse$CityResponse;->mapProgress_:I

    goto :goto_1

    .line 1940
    :cond_4
    invoke-virtual {p2}, Lcom/android/carsdk/protobuf/CodedInputStream;->readInt32()I

    move-result p1

    iput p1, p0, Landroid/car/hardware/xpu/XpuProtoMessage$CNGPCityMapResponse$CityResponse;->mapStatus_:I

    goto :goto_1

    .line 1935
    :cond_5
    invoke-virtual {p2}, Lcom/android/carsdk/protobuf/CodedInputStream;->readInt32()I

    move-result p1

    iput p1, p0, Landroid/car/hardware/xpu/XpuProtoMessage$CNGPCityMapResponse$CityResponse;->cityCode_:I
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

    .line 1953
    :try_start_2
    new-instance p2, Ljava/lang/RuntimeException;

    new-instance p3, Lcom/android/carsdk/protobuf/InvalidProtocolBufferException;

    .line 1955
    invoke-virtual {p1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p3, p1}, Lcom/android/carsdk/protobuf/InvalidProtocolBufferException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, p0}, Lcom/android/carsdk/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/android/carsdk/protobuf/MessageLite;)Lcom/android/carsdk/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p2

    :catch_1
    move-exception p1

    .line 1951
    new-instance p2, Ljava/lang/RuntimeException;

    invoke-virtual {p1, p0}, Lcom/android/carsdk/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/android/carsdk/protobuf/MessageLite;)Lcom/android/carsdk/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 1956
    :goto_3
    throw p1

    .line 1960
    :cond_7
    :pswitch_2
    sget-object p1, Landroid/car/hardware/xpu/XpuProtoMessage$CNGPCityMapResponse$CityResponse;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuProtoMessage$CNGPCityMapResponse$CityResponse;

    return-object p1

    .line 1901
    :pswitch_3
    check-cast p2, Lcom/android/carsdk/protobuf/GeneratedMessageLite$Visitor;

    .line 1902
    check-cast p3, Landroid/car/hardware/xpu/XpuProtoMessage$CNGPCityMapResponse$CityResponse;

    .line 1903
    iget p1, p0, Landroid/car/hardware/xpu/XpuProtoMessage$CNGPCityMapResponse$CityResponse;->cityCode_:I

    if-eqz p1, :cond_8

    move v0, v2

    goto :goto_4

    :cond_8
    move v0, v1

    :goto_4
    iget v3, p3, Landroid/car/hardware/xpu/XpuProtoMessage$CNGPCityMapResponse$CityResponse;->cityCode_:I

    if-eqz v3, :cond_9

    move v4, v2

    goto :goto_5

    :cond_9
    move v4, v1

    :goto_5
    invoke-interface {p2, v0, p1, v4, v3}, Lcom/android/carsdk/protobuf/GeneratedMessageLite$Visitor;->visitInt(ZIZI)I

    move-result p1

    iput p1, p0, Landroid/car/hardware/xpu/XpuProtoMessage$CNGPCityMapResponse$CityResponse;->cityCode_:I

    .line 1905
    iget p1, p0, Landroid/car/hardware/xpu/XpuProtoMessage$CNGPCityMapResponse$CityResponse;->mapStatus_:I

    if-eqz p1, :cond_a

    move v0, v2

    goto :goto_6

    :cond_a
    move v0, v1

    :goto_6
    iget v3, p3, Landroid/car/hardware/xpu/XpuProtoMessage$CNGPCityMapResponse$CityResponse;->mapStatus_:I

    if-eqz v3, :cond_b

    move v4, v2

    goto :goto_7

    :cond_b
    move v4, v1

    :goto_7
    invoke-interface {p2, v0, p1, v4, v3}, Lcom/android/carsdk/protobuf/GeneratedMessageLite$Visitor;->visitInt(ZIZI)I

    move-result p1

    iput p1, p0, Landroid/car/hardware/xpu/XpuProtoMessage$CNGPCityMapResponse$CityResponse;->mapStatus_:I

    .line 1907
    iget p1, p0, Landroid/car/hardware/xpu/XpuProtoMessage$CNGPCityMapResponse$CityResponse;->mapProgress_:I

    if-eqz p1, :cond_c

    move v0, v2

    goto :goto_8

    :cond_c
    move v0, v1

    :goto_8
    iget p3, p3, Landroid/car/hardware/xpu/XpuProtoMessage$CNGPCityMapResponse$CityResponse;->mapProgress_:I

    if-eqz p3, :cond_d

    move v1, v2

    :cond_d
    invoke-interface {p2, v0, p1, v1, p3}, Lcom/android/carsdk/protobuf/GeneratedMessageLite$Visitor;->visitInt(ZIZI)I

    move-result p1

    iput p1, p0, Landroid/car/hardware/xpu/XpuProtoMessage$CNGPCityMapResponse$CityResponse;->mapProgress_:I

    .line 1909
    sget-object p1, Lcom/android/carsdk/protobuf/GeneratedMessageLite$MergeFromVisitor;->INSTANCE:Lcom/android/carsdk/protobuf/GeneratedMessageLite$MergeFromVisitor;

    return-object p0

    .line 1898
    :pswitch_4
    new-instance p1, Landroid/car/hardware/xpu/XpuProtoMessage$CNGPCityMapResponse$CityResponse$Builder;

    invoke-direct {p1, v0}, Landroid/car/hardware/xpu/XpuProtoMessage$CNGPCityMapResponse$CityResponse$Builder;-><init>(Landroid/car/hardware/xpu/XpuProtoMessage$1;)V

    return-object p1

    :pswitch_5
    return-object v0

    .line 1892
    :pswitch_6
    sget-object p1, Landroid/car/hardware/xpu/XpuProtoMessage$CNGPCityMapResponse$CityResponse;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuProtoMessage$CNGPCityMapResponse$CityResponse;

    return-object p1

    .line 1889
    :pswitch_7
    new-instance p1, Landroid/car/hardware/xpu/XpuProtoMessage$CNGPCityMapResponse$CityResponse;

    invoke-direct {p1}, Landroid/car/hardware/xpu/XpuProtoMessage$CNGPCityMapResponse$CityResponse;-><init>()V

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

.method public getCityCode()I
    .locals 1

    .line 1566
    iget v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$CNGPCityMapResponse$CityResponse;->cityCode_:I

    return v0
.end method

.method public getMapProgress()I
    .locals 1

    .line 1636
    iget v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$CNGPCityMapResponse$CityResponse;->mapProgress_:I

    return v0
.end method

.method public getMapStatus()I
    .locals 1

    .line 1601
    iget v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$CNGPCityMapResponse$CityResponse;->mapStatus_:I

    return v0
.end method

.method public getSerializedSize()I
    .locals 3

    .line 1675
    iget v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$CNGPCityMapResponse$CityResponse;->memoizedSerializedSize:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    return v0

    :cond_0
    const/4 v0, 0x0

    .line 1679
    iget v1, p0, Landroid/car/hardware/xpu/XpuProtoMessage$CNGPCityMapResponse$CityResponse;->cityCode_:I

    if-eqz v1, :cond_1

    const/4 v2, 0x1

    .line 1681
    invoke-static {v2, v1}, Lcom/android/carsdk/protobuf/CodedOutputStream;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 1683
    :cond_1
    iget v1, p0, Landroid/car/hardware/xpu/XpuProtoMessage$CNGPCityMapResponse$CityResponse;->mapStatus_:I

    if-eqz v1, :cond_2

    const/4 v2, 0x2

    .line 1685
    invoke-static {v2, v1}, Lcom/android/carsdk/protobuf/CodedOutputStream;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 1687
    :cond_2
    iget v1, p0, Landroid/car/hardware/xpu/XpuProtoMessage$CNGPCityMapResponse$CityResponse;->mapProgress_:I

    if-eqz v1, :cond_3

    const/4 v2, 0x3

    .line 1689
    invoke-static {v2, v1}, Lcom/android/carsdk/protobuf/CodedOutputStream;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 1691
    :cond_3
    iput v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$CNGPCityMapResponse$CityResponse;->memoizedSerializedSize:I

    return v0
.end method

.method public writeTo(Lcom/android/carsdk/protobuf/CodedOutputStream;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1663
    iget v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$CNGPCityMapResponse$CityResponse;->cityCode_:I

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    .line 1664
    invoke-virtual {p1, v1, v0}, Lcom/android/carsdk/protobuf/CodedOutputStream;->writeInt32(II)V

    .line 1666
    :cond_0
    iget v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$CNGPCityMapResponse$CityResponse;->mapStatus_:I

    if-eqz v0, :cond_1

    const/4 v1, 0x2

    .line 1667
    invoke-virtual {p1, v1, v0}, Lcom/android/carsdk/protobuf/CodedOutputStream;->writeInt32(II)V

    .line 1669
    :cond_1
    iget v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$CNGPCityMapResponse$CityResponse;->mapProgress_:I

    if-eqz v0, :cond_2

    const/4 v1, 0x3

    .line 1670
    invoke-virtual {p1, v1, v0}, Lcom/android/carsdk/protobuf/CodedOutputStream;->writeInt32(II)V

    :cond_2
    return-void
.end method
