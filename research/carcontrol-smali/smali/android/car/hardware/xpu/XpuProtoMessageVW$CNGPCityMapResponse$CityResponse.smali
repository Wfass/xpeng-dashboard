.class public final Landroid/car/hardware/xpu/XpuProtoMessageVW$CNGPCityMapResponse$CityResponse;
.super Lcom/android/carsdk/protobuf/GeneratedMessageLite;
.source "XpuProtoMessageVW.java"

# interfaces
.implements Landroid/car/hardware/xpu/XpuProtoMessageVW$CNGPCityMapResponse$CityResponseOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/car/hardware/xpu/XpuProtoMessageVW$CNGPCityMapResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "CityResponse"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/car/hardware/xpu/XpuProtoMessageVW$CNGPCityMapResponse$CityResponse$Builder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/carsdk/protobuf/GeneratedMessageLite<",
        "Landroid/car/hardware/xpu/XpuProtoMessageVW$CNGPCityMapResponse$CityResponse;",
        "Landroid/car/hardware/xpu/XpuProtoMessageVW$CNGPCityMapResponse$CityResponse$Builder;",
        ">;",
        "Landroid/car/hardware/xpu/XpuProtoMessageVW$CNGPCityMapResponse$CityResponseOrBuilder;"
    }
.end annotation


# static fields
.field public static final CITY_CODE_FIELD_NUMBER:I = 0x1

.field private static final DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuProtoMessageVW$CNGPCityMapResponse$CityResponse;

.field public static final MAP_PROGRESS_FIELD_NUMBER:I = 0x3

.field public static final MAP_STATUS_FIELD_NUMBER:I = 0x2

.field private static volatile PARSER:Lcom/android/carsdk/protobuf/Parser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/carsdk/protobuf/Parser<",
            "Landroid/car/hardware/xpu/XpuProtoMessageVW$CNGPCityMapResponse$CityResponse;",
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

    .line 1812
    new-instance v0, Landroid/car/hardware/xpu/XpuProtoMessageVW$CNGPCityMapResponse$CityResponse;

    invoke-direct {v0}, Landroid/car/hardware/xpu/XpuProtoMessageVW$CNGPCityMapResponse$CityResponse;-><init>()V

    sput-object v0, Landroid/car/hardware/xpu/XpuProtoMessageVW$CNGPCityMapResponse$CityResponse;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuProtoMessageVW$CNGPCityMapResponse$CityResponse;

    .line 1813
    invoke-virtual {v0}, Landroid/car/hardware/xpu/XpuProtoMessageVW$CNGPCityMapResponse$CityResponse;->makeImmutable()V

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 1384
    invoke-direct {p0}, Lcom/android/carsdk/protobuf/GeneratedMessageLite;-><init>()V

    const/4 v0, 0x0

    .line 1385
    iput v0, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$CNGPCityMapResponse$CityResponse;->cityCode_:I

    .line 1386
    iput v0, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$CNGPCityMapResponse$CityResponse;->mapStatus_:I

    .line 1387
    iput v0, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$CNGPCityMapResponse$CityResponse;->mapProgress_:I

    return-void
.end method

.method static synthetic access$1200()Landroid/car/hardware/xpu/XpuProtoMessageVW$CNGPCityMapResponse$CityResponse;
    .locals 1

    .line 1379
    sget-object v0, Landroid/car/hardware/xpu/XpuProtoMessageVW$CNGPCityMapResponse$CityResponse;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuProtoMessageVW$CNGPCityMapResponse$CityResponse;

    return-object v0
.end method

.method static synthetic access$1300(Landroid/car/hardware/xpu/XpuProtoMessageVW$CNGPCityMapResponse$CityResponse;I)V
    .locals 0

    .line 1379
    invoke-direct {p0, p1}, Landroid/car/hardware/xpu/XpuProtoMessageVW$CNGPCityMapResponse$CityResponse;->setCityCode(I)V

    return-void
.end method

.method static synthetic access$1400(Landroid/car/hardware/xpu/XpuProtoMessageVW$CNGPCityMapResponse$CityResponse;)V
    .locals 0

    .line 1379
    invoke-direct {p0}, Landroid/car/hardware/xpu/XpuProtoMessageVW$CNGPCityMapResponse$CityResponse;->clearCityCode()V

    return-void
.end method

.method static synthetic access$1500(Landroid/car/hardware/xpu/XpuProtoMessageVW$CNGPCityMapResponse$CityResponse;I)V
    .locals 0

    .line 1379
    invoke-direct {p0, p1}, Landroid/car/hardware/xpu/XpuProtoMessageVW$CNGPCityMapResponse$CityResponse;->setMapStatus(I)V

    return-void
.end method

.method static synthetic access$1600(Landroid/car/hardware/xpu/XpuProtoMessageVW$CNGPCityMapResponse$CityResponse;)V
    .locals 0

    .line 1379
    invoke-direct {p0}, Landroid/car/hardware/xpu/XpuProtoMessageVW$CNGPCityMapResponse$CityResponse;->clearMapStatus()V

    return-void
.end method

.method static synthetic access$1700(Landroid/car/hardware/xpu/XpuProtoMessageVW$CNGPCityMapResponse$CityResponse;I)V
    .locals 0

    .line 1379
    invoke-direct {p0, p1}, Landroid/car/hardware/xpu/XpuProtoMessageVW$CNGPCityMapResponse$CityResponse;->setMapProgress(I)V

    return-void
.end method

.method static synthetic access$1800(Landroid/car/hardware/xpu/XpuProtoMessageVW$CNGPCityMapResponse$CityResponse;)V
    .locals 0

    .line 1379
    invoke-direct {p0}, Landroid/car/hardware/xpu/XpuProtoMessageVW$CNGPCityMapResponse$CityResponse;->clearMapProgress()V

    return-void
.end method

.method private clearCityCode()V
    .locals 1

    const/4 v0, 0x0

    .line 1421
    iput v0, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$CNGPCityMapResponse$CityResponse;->cityCode_:I

    return-void
.end method

.method private clearMapProgress()V
    .locals 1

    const/4 v0, 0x0

    .line 1491
    iput v0, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$CNGPCityMapResponse$CityResponse;->mapProgress_:I

    return-void
.end method

.method private clearMapStatus()V
    .locals 1

    const/4 v0, 0x0

    .line 1456
    iput v0, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$CNGPCityMapResponse$CityResponse;->mapStatus_:I

    return-void
.end method

.method public static getDefaultInstance()Landroid/car/hardware/xpu/XpuProtoMessageVW$CNGPCityMapResponse$CityResponse;
    .locals 1

    .line 1817
    sget-object v0, Landroid/car/hardware/xpu/XpuProtoMessageVW$CNGPCityMapResponse$CityResponse;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuProtoMessageVW$CNGPCityMapResponse$CityResponse;

    return-object v0
.end method

.method public static newBuilder()Landroid/car/hardware/xpu/XpuProtoMessageVW$CNGPCityMapResponse$CityResponse$Builder;
    .locals 1

    .line 1590
    sget-object v0, Landroid/car/hardware/xpu/XpuProtoMessageVW$CNGPCityMapResponse$CityResponse;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuProtoMessageVW$CNGPCityMapResponse$CityResponse;

    invoke-virtual {v0}, Landroid/car/hardware/xpu/XpuProtoMessageVW$CNGPCityMapResponse$CityResponse;->toBuilder()Lcom/android/carsdk/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Landroid/car/hardware/xpu/XpuProtoMessageVW$CNGPCityMapResponse$CityResponse$Builder;

    return-object v0
.end method

.method public static newBuilder(Landroid/car/hardware/xpu/XpuProtoMessageVW$CNGPCityMapResponse$CityResponse;)Landroid/car/hardware/xpu/XpuProtoMessageVW$CNGPCityMapResponse$CityResponse$Builder;
    .locals 1

    .line 1593
    sget-object v0, Landroid/car/hardware/xpu/XpuProtoMessageVW$CNGPCityMapResponse$CityResponse;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuProtoMessageVW$CNGPCityMapResponse$CityResponse;

    invoke-virtual {v0}, Landroid/car/hardware/xpu/XpuProtoMessageVW$CNGPCityMapResponse$CityResponse;->toBuilder()Lcom/android/carsdk/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Landroid/car/hardware/xpu/XpuProtoMessageVW$CNGPCityMapResponse$CityResponse$Builder;

    invoke-virtual {v0, p0}, Landroid/car/hardware/xpu/XpuProtoMessageVW$CNGPCityMapResponse$CityResponse$Builder;->mergeFrom(Lcom/android/carsdk/protobuf/GeneratedMessageLite;)Lcom/android/carsdk/protobuf/GeneratedMessageLite$Builder;

    move-result-object p0

    check-cast p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$CNGPCityMapResponse$CityResponse$Builder;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Landroid/car/hardware/xpu/XpuProtoMessageVW$CNGPCityMapResponse$CityResponse;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1567
    sget-object v0, Landroid/car/hardware/xpu/XpuProtoMessageVW$CNGPCityMapResponse$CityResponse;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuProtoMessageVW$CNGPCityMapResponse$CityResponse;

    invoke-static {v0, p0}, Landroid/car/hardware/xpu/XpuProtoMessageVW$CNGPCityMapResponse$CityResponse;->parseDelimitedFrom(Lcom/android/carsdk/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$CNGPCityMapResponse$CityResponse;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/android/carsdk/protobuf/ExtensionRegistryLite;)Landroid/car/hardware/xpu/XpuProtoMessageVW$CNGPCityMapResponse$CityResponse;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1573
    sget-object v0, Landroid/car/hardware/xpu/XpuProtoMessageVW$CNGPCityMapResponse$CityResponse;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuProtoMessageVW$CNGPCityMapResponse$CityResponse;

    invoke-static {v0, p0, p1}, Landroid/car/hardware/xpu/XpuProtoMessageVW$CNGPCityMapResponse$CityResponse;->parseDelimitedFrom(Lcom/android/carsdk/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/android/carsdk/protobuf/ExtensionRegistryLite;)Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$CNGPCityMapResponse$CityResponse;

    return-object p0
.end method

.method public static parseFrom(Lcom/android/carsdk/protobuf/ByteString;)Landroid/car/hardware/xpu/XpuProtoMessageVW$CNGPCityMapResponse$CityResponse;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/carsdk/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1531
    sget-object v0, Landroid/car/hardware/xpu/XpuProtoMessageVW$CNGPCityMapResponse$CityResponse;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuProtoMessageVW$CNGPCityMapResponse$CityResponse;

    invoke-static {v0, p0}, Lcom/android/carsdk/protobuf/GeneratedMessageLite;->parseFrom(Lcom/android/carsdk/protobuf/GeneratedMessageLite;Lcom/android/carsdk/protobuf/ByteString;)Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$CNGPCityMapResponse$CityResponse;

    return-object p0
.end method

.method public static parseFrom(Lcom/android/carsdk/protobuf/ByteString;Lcom/android/carsdk/protobuf/ExtensionRegistryLite;)Landroid/car/hardware/xpu/XpuProtoMessageVW$CNGPCityMapResponse$CityResponse;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/carsdk/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1538
    sget-object v0, Landroid/car/hardware/xpu/XpuProtoMessageVW$CNGPCityMapResponse$CityResponse;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuProtoMessageVW$CNGPCityMapResponse$CityResponse;

    invoke-static {v0, p0, p1}, Lcom/android/carsdk/protobuf/GeneratedMessageLite;->parseFrom(Lcom/android/carsdk/protobuf/GeneratedMessageLite;Lcom/android/carsdk/protobuf/ByteString;Lcom/android/carsdk/protobuf/ExtensionRegistryLite;)Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$CNGPCityMapResponse$CityResponse;

    return-object p0
.end method

.method public static parseFrom(Lcom/android/carsdk/protobuf/CodedInputStream;)Landroid/car/hardware/xpu/XpuProtoMessageVW$CNGPCityMapResponse$CityResponse;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1578
    sget-object v0, Landroid/car/hardware/xpu/XpuProtoMessageVW$CNGPCityMapResponse$CityResponse;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuProtoMessageVW$CNGPCityMapResponse$CityResponse;

    invoke-static {v0, p0}, Lcom/android/carsdk/protobuf/GeneratedMessageLite;->parseFrom(Lcom/android/carsdk/protobuf/GeneratedMessageLite;Lcom/android/carsdk/protobuf/CodedInputStream;)Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$CNGPCityMapResponse$CityResponse;

    return-object p0
.end method

.method public static parseFrom(Lcom/android/carsdk/protobuf/CodedInputStream;Lcom/android/carsdk/protobuf/ExtensionRegistryLite;)Landroid/car/hardware/xpu/XpuProtoMessageVW$CNGPCityMapResponse$CityResponse;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1585
    sget-object v0, Landroid/car/hardware/xpu/XpuProtoMessageVW$CNGPCityMapResponse$CityResponse;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuProtoMessageVW$CNGPCityMapResponse$CityResponse;

    invoke-static {v0, p0, p1}, Lcom/android/carsdk/protobuf/GeneratedMessageLite;->parseFrom(Lcom/android/carsdk/protobuf/GeneratedMessageLite;Lcom/android/carsdk/protobuf/CodedInputStream;Lcom/android/carsdk/protobuf/ExtensionRegistryLite;)Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$CNGPCityMapResponse$CityResponse;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Landroid/car/hardware/xpu/XpuProtoMessageVW$CNGPCityMapResponse$CityResponse;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1555
    sget-object v0, Landroid/car/hardware/xpu/XpuProtoMessageVW$CNGPCityMapResponse$CityResponse;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuProtoMessageVW$CNGPCityMapResponse$CityResponse;

    invoke-static {v0, p0}, Lcom/android/carsdk/protobuf/GeneratedMessageLite;->parseFrom(Lcom/android/carsdk/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$CNGPCityMapResponse$CityResponse;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/android/carsdk/protobuf/ExtensionRegistryLite;)Landroid/car/hardware/xpu/XpuProtoMessageVW$CNGPCityMapResponse$CityResponse;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1562
    sget-object v0, Landroid/car/hardware/xpu/XpuProtoMessageVW$CNGPCityMapResponse$CityResponse;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuProtoMessageVW$CNGPCityMapResponse$CityResponse;

    invoke-static {v0, p0, p1}, Lcom/android/carsdk/protobuf/GeneratedMessageLite;->parseFrom(Lcom/android/carsdk/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/android/carsdk/protobuf/ExtensionRegistryLite;)Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$CNGPCityMapResponse$CityResponse;

    return-object p0
.end method

.method public static parseFrom([B)Landroid/car/hardware/xpu/XpuProtoMessageVW$CNGPCityMapResponse$CityResponse;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/carsdk/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1543
    sget-object v0, Landroid/car/hardware/xpu/XpuProtoMessageVW$CNGPCityMapResponse$CityResponse;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuProtoMessageVW$CNGPCityMapResponse$CityResponse;

    invoke-static {v0, p0}, Lcom/android/carsdk/protobuf/GeneratedMessageLite;->parseFrom(Lcom/android/carsdk/protobuf/GeneratedMessageLite;[B)Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$CNGPCityMapResponse$CityResponse;

    return-object p0
.end method

.method public static parseFrom([BLcom/android/carsdk/protobuf/ExtensionRegistryLite;)Landroid/car/hardware/xpu/XpuProtoMessageVW$CNGPCityMapResponse$CityResponse;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/carsdk/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1550
    sget-object v0, Landroid/car/hardware/xpu/XpuProtoMessageVW$CNGPCityMapResponse$CityResponse;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuProtoMessageVW$CNGPCityMapResponse$CityResponse;

    invoke-static {v0, p0, p1}, Lcom/android/carsdk/protobuf/GeneratedMessageLite;->parseFrom(Lcom/android/carsdk/protobuf/GeneratedMessageLite;[BLcom/android/carsdk/protobuf/ExtensionRegistryLite;)Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$CNGPCityMapResponse$CityResponse;

    return-object p0
.end method

.method public static parser()Lcom/android/carsdk/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/android/carsdk/protobuf/Parser<",
            "Landroid/car/hardware/xpu/XpuProtoMessageVW$CNGPCityMapResponse$CityResponse;",
            ">;"
        }
    .end annotation

    .line 1823
    sget-object v0, Landroid/car/hardware/xpu/XpuProtoMessageVW$CNGPCityMapResponse$CityResponse;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuProtoMessageVW$CNGPCityMapResponse$CityResponse;

    invoke-virtual {v0}, Landroid/car/hardware/xpu/XpuProtoMessageVW$CNGPCityMapResponse$CityResponse;->getParserForType()Lcom/android/carsdk/protobuf/Parser;

    move-result-object v0

    return-object v0
.end method

.method private setCityCode(I)V
    .locals 0

    .line 1410
    iput p1, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$CNGPCityMapResponse$CityResponse;->cityCode_:I

    return-void
.end method

.method private setMapProgress(I)V
    .locals 0

    .line 1480
    iput p1, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$CNGPCityMapResponse$CityResponse;->mapProgress_:I

    return-void
.end method

.method private setMapStatus(I)V
    .locals 0

    .line 1445
    iput p1, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$CNGPCityMapResponse$CityResponse;->mapStatus_:I

    return-void
.end method


# virtual methods
.method protected final dynamicMethod(Lcom/android/carsdk/protobuf/GeneratedMessageLite$MethodToInvoke;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5

    .line 1720
    sget-object v0, Landroid/car/hardware/xpu/XpuProtoMessageVW$1;->$SwitchMap$com$google$protobuf$GeneratedMessageLite$MethodToInvoke:[I

    invoke-virtual {p1}, Lcom/android/carsdk/protobuf/GeneratedMessageLite$MethodToInvoke;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x1

    packed-switch p1, :pswitch_data_0

    .line 1805
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1

    .line 1796
    :pswitch_0
    sget-object p1, Landroid/car/hardware/xpu/XpuProtoMessageVW$CNGPCityMapResponse$CityResponse;->PARSER:Lcom/android/carsdk/protobuf/Parser;

    if-nez p1, :cond_1

    const-class p1, Landroid/car/hardware/xpu/XpuProtoMessageVW$CNGPCityMapResponse$CityResponse;

    monitor-enter p1

    .line 1797
    :try_start_0
    sget-object p2, Landroid/car/hardware/xpu/XpuProtoMessageVW$CNGPCityMapResponse$CityResponse;->PARSER:Lcom/android/carsdk/protobuf/Parser;

    if-nez p2, :cond_0

    .line 1798
    new-instance p2, Lcom/android/carsdk/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;

    sget-object p3, Landroid/car/hardware/xpu/XpuProtoMessageVW$CNGPCityMapResponse$CityResponse;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuProtoMessageVW$CNGPCityMapResponse$CityResponse;

    invoke-direct {p2, p3}, Lcom/android/carsdk/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;-><init>(Lcom/android/carsdk/protobuf/GeneratedMessageLite;)V

    sput-object p2, Landroid/car/hardware/xpu/XpuProtoMessageVW$CNGPCityMapResponse$CityResponse;->PARSER:Lcom/android/carsdk/protobuf/Parser;

    .line 1800
    :cond_0
    monitor-exit p1

    goto :goto_0

    :catchall_0
    move-exception p2

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p2

    .line 1802
    :cond_1
    :goto_0
    sget-object p1, Landroid/car/hardware/xpu/XpuProtoMessageVW$CNGPCityMapResponse$CityResponse;->PARSER:Lcom/android/carsdk/protobuf/Parser;

    return-object p1

    .line 1748
    :pswitch_1
    check-cast p2, Lcom/android/carsdk/protobuf/CodedInputStream;

    .line 1750
    check-cast p3, Lcom/android/carsdk/protobuf/ExtensionRegistryLite;

    :cond_2
    :goto_1
    if-nez v1, :cond_7

    .line 1755
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

    .line 1761
    invoke-virtual {p2, p1}, Lcom/android/carsdk/protobuf/CodedInputStream;->skipField(I)Z

    move-result p1

    if-nez p1, :cond_2

    goto :goto_2

    .line 1778
    :cond_3
    invoke-virtual {p2}, Lcom/android/carsdk/protobuf/CodedInputStream;->readInt32()I

    move-result p1

    iput p1, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$CNGPCityMapResponse$CityResponse;->mapProgress_:I

    goto :goto_1

    .line 1773
    :cond_4
    invoke-virtual {p2}, Lcom/android/carsdk/protobuf/CodedInputStream;->readInt32()I

    move-result p1

    iput p1, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$CNGPCityMapResponse$CityResponse;->mapStatus_:I

    goto :goto_1

    .line 1768
    :cond_5
    invoke-virtual {p2}, Lcom/android/carsdk/protobuf/CodedInputStream;->readInt32()I

    move-result p1

    iput p1, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$CNGPCityMapResponse$CityResponse;->cityCode_:I
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

    .line 1786
    :try_start_2
    new-instance p2, Ljava/lang/RuntimeException;

    new-instance p3, Lcom/android/carsdk/protobuf/InvalidProtocolBufferException;

    .line 1788
    invoke-virtual {p1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p3, p1}, Lcom/android/carsdk/protobuf/InvalidProtocolBufferException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, p0}, Lcom/android/carsdk/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/android/carsdk/protobuf/MessageLite;)Lcom/android/carsdk/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p2

    :catch_1
    move-exception p1

    .line 1784
    new-instance p2, Ljava/lang/RuntimeException;

    invoke-virtual {p1, p0}, Lcom/android/carsdk/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/android/carsdk/protobuf/MessageLite;)Lcom/android/carsdk/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 1789
    :goto_3
    throw p1

    .line 1793
    :cond_7
    :pswitch_2
    sget-object p1, Landroid/car/hardware/xpu/XpuProtoMessageVW$CNGPCityMapResponse$CityResponse;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuProtoMessageVW$CNGPCityMapResponse$CityResponse;

    return-object p1

    .line 1734
    :pswitch_3
    check-cast p2, Lcom/android/carsdk/protobuf/GeneratedMessageLite$Visitor;

    .line 1735
    check-cast p3, Landroid/car/hardware/xpu/XpuProtoMessageVW$CNGPCityMapResponse$CityResponse;

    .line 1736
    iget p1, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$CNGPCityMapResponse$CityResponse;->cityCode_:I

    if-eqz p1, :cond_8

    move v0, v2

    goto :goto_4

    :cond_8
    move v0, v1

    :goto_4
    iget v3, p3, Landroid/car/hardware/xpu/XpuProtoMessageVW$CNGPCityMapResponse$CityResponse;->cityCode_:I

    if-eqz v3, :cond_9

    move v4, v2

    goto :goto_5

    :cond_9
    move v4, v1

    :goto_5
    invoke-interface {p2, v0, p1, v4, v3}, Lcom/android/carsdk/protobuf/GeneratedMessageLite$Visitor;->visitInt(ZIZI)I

    move-result p1

    iput p1, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$CNGPCityMapResponse$CityResponse;->cityCode_:I

    .line 1738
    iget p1, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$CNGPCityMapResponse$CityResponse;->mapStatus_:I

    if-eqz p1, :cond_a

    move v0, v2

    goto :goto_6

    :cond_a
    move v0, v1

    :goto_6
    iget v3, p3, Landroid/car/hardware/xpu/XpuProtoMessageVW$CNGPCityMapResponse$CityResponse;->mapStatus_:I

    if-eqz v3, :cond_b

    move v4, v2

    goto :goto_7

    :cond_b
    move v4, v1

    :goto_7
    invoke-interface {p2, v0, p1, v4, v3}, Lcom/android/carsdk/protobuf/GeneratedMessageLite$Visitor;->visitInt(ZIZI)I

    move-result p1

    iput p1, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$CNGPCityMapResponse$CityResponse;->mapStatus_:I

    .line 1740
    iget p1, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$CNGPCityMapResponse$CityResponse;->mapProgress_:I

    if-eqz p1, :cond_c

    move v0, v2

    goto :goto_8

    :cond_c
    move v0, v1

    :goto_8
    iget p3, p3, Landroid/car/hardware/xpu/XpuProtoMessageVW$CNGPCityMapResponse$CityResponse;->mapProgress_:I

    if-eqz p3, :cond_d

    move v1, v2

    :cond_d
    invoke-interface {p2, v0, p1, v1, p3}, Lcom/android/carsdk/protobuf/GeneratedMessageLite$Visitor;->visitInt(ZIZI)I

    move-result p1

    iput p1, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$CNGPCityMapResponse$CityResponse;->mapProgress_:I

    .line 1742
    sget-object p1, Lcom/android/carsdk/protobuf/GeneratedMessageLite$MergeFromVisitor;->INSTANCE:Lcom/android/carsdk/protobuf/GeneratedMessageLite$MergeFromVisitor;

    return-object p0

    .line 1731
    :pswitch_4
    new-instance p1, Landroid/car/hardware/xpu/XpuProtoMessageVW$CNGPCityMapResponse$CityResponse$Builder;

    invoke-direct {p1, v0}, Landroid/car/hardware/xpu/XpuProtoMessageVW$CNGPCityMapResponse$CityResponse$Builder;-><init>(Landroid/car/hardware/xpu/XpuProtoMessageVW$1;)V

    return-object p1

    :pswitch_5
    return-object v0

    .line 1725
    :pswitch_6
    sget-object p1, Landroid/car/hardware/xpu/XpuProtoMessageVW$CNGPCityMapResponse$CityResponse;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuProtoMessageVW$CNGPCityMapResponse$CityResponse;

    return-object p1

    .line 1722
    :pswitch_7
    new-instance p1, Landroid/car/hardware/xpu/XpuProtoMessageVW$CNGPCityMapResponse$CityResponse;

    invoke-direct {p1}, Landroid/car/hardware/xpu/XpuProtoMessageVW$CNGPCityMapResponse$CityResponse;-><init>()V

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

    .line 1399
    iget v0, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$CNGPCityMapResponse$CityResponse;->cityCode_:I

    return v0
.end method

.method public getMapProgress()I
    .locals 1

    .line 1469
    iget v0, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$CNGPCityMapResponse$CityResponse;->mapProgress_:I

    return v0
.end method

.method public getMapStatus()I
    .locals 1

    .line 1434
    iget v0, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$CNGPCityMapResponse$CityResponse;->mapStatus_:I

    return v0
.end method

.method public getSerializedSize()I
    .locals 3

    .line 1508
    iget v0, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$CNGPCityMapResponse$CityResponse;->memoizedSerializedSize:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    return v0

    :cond_0
    const/4 v0, 0x0

    .line 1512
    iget v1, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$CNGPCityMapResponse$CityResponse;->cityCode_:I

    if-eqz v1, :cond_1

    const/4 v2, 0x1

    .line 1514
    invoke-static {v2, v1}, Lcom/android/carsdk/protobuf/CodedOutputStream;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 1516
    :cond_1
    iget v1, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$CNGPCityMapResponse$CityResponse;->mapStatus_:I

    if-eqz v1, :cond_2

    const/4 v2, 0x2

    .line 1518
    invoke-static {v2, v1}, Lcom/android/carsdk/protobuf/CodedOutputStream;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 1520
    :cond_2
    iget v1, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$CNGPCityMapResponse$CityResponse;->mapProgress_:I

    if-eqz v1, :cond_3

    const/4 v2, 0x3

    .line 1522
    invoke-static {v2, v1}, Lcom/android/carsdk/protobuf/CodedOutputStream;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 1524
    :cond_3
    iput v0, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$CNGPCityMapResponse$CityResponse;->memoizedSerializedSize:I

    return v0
.end method

.method public writeTo(Lcom/android/carsdk/protobuf/CodedOutputStream;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1496
    iget v0, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$CNGPCityMapResponse$CityResponse;->cityCode_:I

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    .line 1497
    invoke-virtual {p1, v1, v0}, Lcom/android/carsdk/protobuf/CodedOutputStream;->writeInt32(II)V

    .line 1499
    :cond_0
    iget v0, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$CNGPCityMapResponse$CityResponse;->mapStatus_:I

    if-eqz v0, :cond_1

    const/4 v1, 0x2

    .line 1500
    invoke-virtual {p1, v1, v0}, Lcom/android/carsdk/protobuf/CodedOutputStream;->writeInt32(II)V

    .line 1502
    :cond_1
    iget v0, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$CNGPCityMapResponse$CityResponse;->mapProgress_:I

    if-eqz v0, :cond_2

    const/4 v1, 0x3

    .line 1503
    invoke-virtual {p1, v1, v0}, Lcom/android/carsdk/protobuf/CodedOutputStream;->writeInt32(II)V

    :cond_2
    return-void
.end method
