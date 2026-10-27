.class public final Landroid/car/hardware/xpu/XpuProtoMessageVW$CNGPCityMapFinNotify;
.super Lcom/android/carsdk/protobuf/GeneratedMessageLite;
.source "XpuProtoMessageVW.java"

# interfaces
.implements Landroid/car/hardware/xpu/XpuProtoMessageVW$CNGPCityMapFinNotifyOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/car/hardware/xpu/XpuProtoMessageVW;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "CNGPCityMapFinNotify"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/car/hardware/xpu/XpuProtoMessageVW$CNGPCityMapFinNotify$Builder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/carsdk/protobuf/GeneratedMessageLite<",
        "Landroid/car/hardware/xpu/XpuProtoMessageVW$CNGPCityMapFinNotify;",
        "Landroid/car/hardware/xpu/XpuProtoMessageVW$CNGPCityMapFinNotify$Builder;",
        ">;",
        "Landroid/car/hardware/xpu/XpuProtoMessageVW$CNGPCityMapFinNotifyOrBuilder;"
    }
.end annotation


# static fields
.field public static final CITY_CODE_FIELD_NUMBER:I = 0x1

.field private static final DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuProtoMessageVW$CNGPCityMapFinNotify;

.field private static volatile PARSER:Lcom/android/carsdk/protobuf/Parser; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/carsdk/protobuf/Parser<",
            "Landroid/car/hardware/xpu/XpuProtoMessageVW$CNGPCityMapFinNotify;",
            ">;"
        }
    .end annotation
.end field

.field public static final RESULT_FIELD_NUMBER:I = 0x2


# instance fields
.field private cityCode_:I

.field private result_:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 2719
    new-instance v0, Landroid/car/hardware/xpu/XpuProtoMessageVW$CNGPCityMapFinNotify;

    invoke-direct {v0}, Landroid/car/hardware/xpu/XpuProtoMessageVW$CNGPCityMapFinNotify;-><init>()V

    sput-object v0, Landroid/car/hardware/xpu/XpuProtoMessageVW$CNGPCityMapFinNotify;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuProtoMessageVW$CNGPCityMapFinNotify;

    .line 2720
    invoke-virtual {v0}, Landroid/car/hardware/xpu/XpuProtoMessageVW$CNGPCityMapFinNotify;->makeImmutable()V

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 2372
    invoke-direct {p0}, Lcom/android/carsdk/protobuf/GeneratedMessageLite;-><init>()V

    const/4 v0, 0x0

    .line 2373
    iput v0, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$CNGPCityMapFinNotify;->cityCode_:I

    .line 2374
    iput v0, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$CNGPCityMapFinNotify;->result_:I

    return-void
.end method

.method static synthetic access$3300()Landroid/car/hardware/xpu/XpuProtoMessageVW$CNGPCityMapFinNotify;
    .locals 1

    .line 2367
    sget-object v0, Landroid/car/hardware/xpu/XpuProtoMessageVW$CNGPCityMapFinNotify;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuProtoMessageVW$CNGPCityMapFinNotify;

    return-object v0
.end method

.method static synthetic access$3400(Landroid/car/hardware/xpu/XpuProtoMessageVW$CNGPCityMapFinNotify;I)V
    .locals 0

    .line 2367
    invoke-direct {p0, p1}, Landroid/car/hardware/xpu/XpuProtoMessageVW$CNGPCityMapFinNotify;->setCityCode(I)V

    return-void
.end method

.method static synthetic access$3500(Landroid/car/hardware/xpu/XpuProtoMessageVW$CNGPCityMapFinNotify;)V
    .locals 0

    .line 2367
    invoke-direct {p0}, Landroid/car/hardware/xpu/XpuProtoMessageVW$CNGPCityMapFinNotify;->clearCityCode()V

    return-void
.end method

.method static synthetic access$3600(Landroid/car/hardware/xpu/XpuProtoMessageVW$CNGPCityMapFinNotify;I)V
    .locals 0

    .line 2367
    invoke-direct {p0, p1}, Landroid/car/hardware/xpu/XpuProtoMessageVW$CNGPCityMapFinNotify;->setResult(I)V

    return-void
.end method

.method static synthetic access$3700(Landroid/car/hardware/xpu/XpuProtoMessageVW$CNGPCityMapFinNotify;)V
    .locals 0

    .line 2367
    invoke-direct {p0}, Landroid/car/hardware/xpu/XpuProtoMessageVW$CNGPCityMapFinNotify;->clearResult()V

    return-void
.end method

.method private clearCityCode()V
    .locals 1

    const/4 v0, 0x0

    .line 2408
    iput v0, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$CNGPCityMapFinNotify;->cityCode_:I

    return-void
.end method

.method private clearResult()V
    .locals 1

    const/4 v0, 0x0

    .line 2443
    iput v0, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$CNGPCityMapFinNotify;->result_:I

    return-void
.end method

.method public static getDefaultInstance()Landroid/car/hardware/xpu/XpuProtoMessageVW$CNGPCityMapFinNotify;
    .locals 1

    .line 2724
    sget-object v0, Landroid/car/hardware/xpu/XpuProtoMessageVW$CNGPCityMapFinNotify;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuProtoMessageVW$CNGPCityMapFinNotify;

    return-object v0
.end method

.method public static newBuilder()Landroid/car/hardware/xpu/XpuProtoMessageVW$CNGPCityMapFinNotify$Builder;
    .locals 1

    .line 2535
    sget-object v0, Landroid/car/hardware/xpu/XpuProtoMessageVW$CNGPCityMapFinNotify;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuProtoMessageVW$CNGPCityMapFinNotify;

    invoke-virtual {v0}, Landroid/car/hardware/xpu/XpuProtoMessageVW$CNGPCityMapFinNotify;->toBuilder()Lcom/android/carsdk/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Landroid/car/hardware/xpu/XpuProtoMessageVW$CNGPCityMapFinNotify$Builder;

    return-object v0
.end method

.method public static newBuilder(Landroid/car/hardware/xpu/XpuProtoMessageVW$CNGPCityMapFinNotify;)Landroid/car/hardware/xpu/XpuProtoMessageVW$CNGPCityMapFinNotify$Builder;
    .locals 1

    .line 2538
    sget-object v0, Landroid/car/hardware/xpu/XpuProtoMessageVW$CNGPCityMapFinNotify;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuProtoMessageVW$CNGPCityMapFinNotify;

    invoke-virtual {v0}, Landroid/car/hardware/xpu/XpuProtoMessageVW$CNGPCityMapFinNotify;->toBuilder()Lcom/android/carsdk/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Landroid/car/hardware/xpu/XpuProtoMessageVW$CNGPCityMapFinNotify$Builder;

    invoke-virtual {v0, p0}, Landroid/car/hardware/xpu/XpuProtoMessageVW$CNGPCityMapFinNotify$Builder;->mergeFrom(Lcom/android/carsdk/protobuf/GeneratedMessageLite;)Lcom/android/carsdk/protobuf/GeneratedMessageLite$Builder;

    move-result-object p0

    check-cast p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$CNGPCityMapFinNotify$Builder;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Landroid/car/hardware/xpu/XpuProtoMessageVW$CNGPCityMapFinNotify;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2512
    sget-object v0, Landroid/car/hardware/xpu/XpuProtoMessageVW$CNGPCityMapFinNotify;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuProtoMessageVW$CNGPCityMapFinNotify;

    invoke-static {v0, p0}, Landroid/car/hardware/xpu/XpuProtoMessageVW$CNGPCityMapFinNotify;->parseDelimitedFrom(Lcom/android/carsdk/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$CNGPCityMapFinNotify;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/android/carsdk/protobuf/ExtensionRegistryLite;)Landroid/car/hardware/xpu/XpuProtoMessageVW$CNGPCityMapFinNotify;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2518
    sget-object v0, Landroid/car/hardware/xpu/XpuProtoMessageVW$CNGPCityMapFinNotify;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuProtoMessageVW$CNGPCityMapFinNotify;

    invoke-static {v0, p0, p1}, Landroid/car/hardware/xpu/XpuProtoMessageVW$CNGPCityMapFinNotify;->parseDelimitedFrom(Lcom/android/carsdk/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/android/carsdk/protobuf/ExtensionRegistryLite;)Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$CNGPCityMapFinNotify;

    return-object p0
.end method

.method public static parseFrom(Lcom/android/carsdk/protobuf/ByteString;)Landroid/car/hardware/xpu/XpuProtoMessageVW$CNGPCityMapFinNotify;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/carsdk/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 2476
    sget-object v0, Landroid/car/hardware/xpu/XpuProtoMessageVW$CNGPCityMapFinNotify;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuProtoMessageVW$CNGPCityMapFinNotify;

    invoke-static {v0, p0}, Lcom/android/carsdk/protobuf/GeneratedMessageLite;->parseFrom(Lcom/android/carsdk/protobuf/GeneratedMessageLite;Lcom/android/carsdk/protobuf/ByteString;)Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$CNGPCityMapFinNotify;

    return-object p0
.end method

.method public static parseFrom(Lcom/android/carsdk/protobuf/ByteString;Lcom/android/carsdk/protobuf/ExtensionRegistryLite;)Landroid/car/hardware/xpu/XpuProtoMessageVW$CNGPCityMapFinNotify;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/carsdk/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 2483
    sget-object v0, Landroid/car/hardware/xpu/XpuProtoMessageVW$CNGPCityMapFinNotify;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuProtoMessageVW$CNGPCityMapFinNotify;

    invoke-static {v0, p0, p1}, Lcom/android/carsdk/protobuf/GeneratedMessageLite;->parseFrom(Lcom/android/carsdk/protobuf/GeneratedMessageLite;Lcom/android/carsdk/protobuf/ByteString;Lcom/android/carsdk/protobuf/ExtensionRegistryLite;)Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$CNGPCityMapFinNotify;

    return-object p0
.end method

.method public static parseFrom(Lcom/android/carsdk/protobuf/CodedInputStream;)Landroid/car/hardware/xpu/XpuProtoMessageVW$CNGPCityMapFinNotify;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2523
    sget-object v0, Landroid/car/hardware/xpu/XpuProtoMessageVW$CNGPCityMapFinNotify;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuProtoMessageVW$CNGPCityMapFinNotify;

    invoke-static {v0, p0}, Lcom/android/carsdk/protobuf/GeneratedMessageLite;->parseFrom(Lcom/android/carsdk/protobuf/GeneratedMessageLite;Lcom/android/carsdk/protobuf/CodedInputStream;)Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$CNGPCityMapFinNotify;

    return-object p0
.end method

.method public static parseFrom(Lcom/android/carsdk/protobuf/CodedInputStream;Lcom/android/carsdk/protobuf/ExtensionRegistryLite;)Landroid/car/hardware/xpu/XpuProtoMessageVW$CNGPCityMapFinNotify;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2530
    sget-object v0, Landroid/car/hardware/xpu/XpuProtoMessageVW$CNGPCityMapFinNotify;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuProtoMessageVW$CNGPCityMapFinNotify;

    invoke-static {v0, p0, p1}, Lcom/android/carsdk/protobuf/GeneratedMessageLite;->parseFrom(Lcom/android/carsdk/protobuf/GeneratedMessageLite;Lcom/android/carsdk/protobuf/CodedInputStream;Lcom/android/carsdk/protobuf/ExtensionRegistryLite;)Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$CNGPCityMapFinNotify;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Landroid/car/hardware/xpu/XpuProtoMessageVW$CNGPCityMapFinNotify;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2500
    sget-object v0, Landroid/car/hardware/xpu/XpuProtoMessageVW$CNGPCityMapFinNotify;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuProtoMessageVW$CNGPCityMapFinNotify;

    invoke-static {v0, p0}, Lcom/android/carsdk/protobuf/GeneratedMessageLite;->parseFrom(Lcom/android/carsdk/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$CNGPCityMapFinNotify;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/android/carsdk/protobuf/ExtensionRegistryLite;)Landroid/car/hardware/xpu/XpuProtoMessageVW$CNGPCityMapFinNotify;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2507
    sget-object v0, Landroid/car/hardware/xpu/XpuProtoMessageVW$CNGPCityMapFinNotify;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuProtoMessageVW$CNGPCityMapFinNotify;

    invoke-static {v0, p0, p1}, Lcom/android/carsdk/protobuf/GeneratedMessageLite;->parseFrom(Lcom/android/carsdk/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/android/carsdk/protobuf/ExtensionRegistryLite;)Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$CNGPCityMapFinNotify;

    return-object p0
.end method

.method public static parseFrom([B)Landroid/car/hardware/xpu/XpuProtoMessageVW$CNGPCityMapFinNotify;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/carsdk/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 2488
    sget-object v0, Landroid/car/hardware/xpu/XpuProtoMessageVW$CNGPCityMapFinNotify;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuProtoMessageVW$CNGPCityMapFinNotify;

    invoke-static {v0, p0}, Lcom/android/carsdk/protobuf/GeneratedMessageLite;->parseFrom(Lcom/android/carsdk/protobuf/GeneratedMessageLite;[B)Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$CNGPCityMapFinNotify;

    return-object p0
.end method

.method public static parseFrom([BLcom/android/carsdk/protobuf/ExtensionRegistryLite;)Landroid/car/hardware/xpu/XpuProtoMessageVW$CNGPCityMapFinNotify;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/carsdk/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 2495
    sget-object v0, Landroid/car/hardware/xpu/XpuProtoMessageVW$CNGPCityMapFinNotify;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuProtoMessageVW$CNGPCityMapFinNotify;

    invoke-static {v0, p0, p1}, Lcom/android/carsdk/protobuf/GeneratedMessageLite;->parseFrom(Lcom/android/carsdk/protobuf/GeneratedMessageLite;[BLcom/android/carsdk/protobuf/ExtensionRegistryLite;)Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$CNGPCityMapFinNotify;

    return-object p0
.end method

.method public static parser()Lcom/android/carsdk/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/android/carsdk/protobuf/Parser<",
            "Landroid/car/hardware/xpu/XpuProtoMessageVW$CNGPCityMapFinNotify;",
            ">;"
        }
    .end annotation

    .line 2730
    sget-object v0, Landroid/car/hardware/xpu/XpuProtoMessageVW$CNGPCityMapFinNotify;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuProtoMessageVW$CNGPCityMapFinNotify;

    invoke-virtual {v0}, Landroid/car/hardware/xpu/XpuProtoMessageVW$CNGPCityMapFinNotify;->getParserForType()Lcom/android/carsdk/protobuf/Parser;

    move-result-object v0

    return-object v0
.end method

.method private setCityCode(I)V
    .locals 0

    .line 2397
    iput p1, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$CNGPCityMapFinNotify;->cityCode_:I

    return-void
.end method

.method private setResult(I)V
    .locals 0

    .line 2432
    iput p1, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$CNGPCityMapFinNotify;->result_:I

    return-void
.end method


# virtual methods
.method protected final dynamicMethod(Lcom/android/carsdk/protobuf/GeneratedMessageLite$MethodToInvoke;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5

    .line 2634
    sget-object v0, Landroid/car/hardware/xpu/XpuProtoMessageVW$1;->$SwitchMap$com$google$protobuf$GeneratedMessageLite$MethodToInvoke:[I

    invoke-virtual {p1}, Lcom/android/carsdk/protobuf/GeneratedMessageLite$MethodToInvoke;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x1

    packed-switch p1, :pswitch_data_0

    .line 2712
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1

    .line 2703
    :pswitch_0
    sget-object p1, Landroid/car/hardware/xpu/XpuProtoMessageVW$CNGPCityMapFinNotify;->PARSER:Lcom/android/carsdk/protobuf/Parser;

    if-nez p1, :cond_1

    const-class p1, Landroid/car/hardware/xpu/XpuProtoMessageVW$CNGPCityMapFinNotify;

    monitor-enter p1

    .line 2704
    :try_start_0
    sget-object p2, Landroid/car/hardware/xpu/XpuProtoMessageVW$CNGPCityMapFinNotify;->PARSER:Lcom/android/carsdk/protobuf/Parser;

    if-nez p2, :cond_0

    .line 2705
    new-instance p2, Lcom/android/carsdk/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;

    sget-object p3, Landroid/car/hardware/xpu/XpuProtoMessageVW$CNGPCityMapFinNotify;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuProtoMessageVW$CNGPCityMapFinNotify;

    invoke-direct {p2, p3}, Lcom/android/carsdk/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;-><init>(Lcom/android/carsdk/protobuf/GeneratedMessageLite;)V

    sput-object p2, Landroid/car/hardware/xpu/XpuProtoMessageVW$CNGPCityMapFinNotify;->PARSER:Lcom/android/carsdk/protobuf/Parser;

    .line 2707
    :cond_0
    monitor-exit p1

    goto :goto_0

    :catchall_0
    move-exception p2

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p2

    .line 2709
    :cond_1
    :goto_0
    sget-object p1, Landroid/car/hardware/xpu/XpuProtoMessageVW$CNGPCityMapFinNotify;->PARSER:Lcom/android/carsdk/protobuf/Parser;

    return-object p1

    .line 2660
    :pswitch_1
    check-cast p2, Lcom/android/carsdk/protobuf/CodedInputStream;

    .line 2662
    check-cast p3, Lcom/android/carsdk/protobuf/ExtensionRegistryLite;

    :cond_2
    :goto_1
    if-nez v1, :cond_6

    .line 2667
    :try_start_1
    invoke-virtual {p2}, Lcom/android/carsdk/protobuf/CodedInputStream;->readTag()I

    move-result p1

    if-eqz p1, :cond_5

    const/16 p3, 0x8

    if-eq p1, p3, :cond_4

    const/16 p3, 0x10

    if-eq p1, p3, :cond_3

    .line 2673
    invoke-virtual {p2, p1}, Lcom/android/carsdk/protobuf/CodedInputStream;->skipField(I)Z

    move-result p1

    if-nez p1, :cond_2

    goto :goto_2

    .line 2685
    :cond_3
    invoke-virtual {p2}, Lcom/android/carsdk/protobuf/CodedInputStream;->readInt32()I

    move-result p1

    iput p1, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$CNGPCityMapFinNotify;->result_:I

    goto :goto_1

    .line 2680
    :cond_4
    invoke-virtual {p2}, Lcom/android/carsdk/protobuf/CodedInputStream;->readInt32()I

    move-result p1

    iput p1, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$CNGPCityMapFinNotify;->cityCode_:I
    :try_end_1
    .catch Lcom/android/carsdk/protobuf/InvalidProtocolBufferException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    :cond_5
    :goto_2
    move v1, v2

    goto :goto_1

    :catchall_1
    move-exception p1

    goto :goto_3

    :catch_0
    move-exception p1

    .line 2693
    :try_start_2
    new-instance p2, Ljava/lang/RuntimeException;

    new-instance p3, Lcom/android/carsdk/protobuf/InvalidProtocolBufferException;

    .line 2695
    invoke-virtual {p1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p3, p1}, Lcom/android/carsdk/protobuf/InvalidProtocolBufferException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, p0}, Lcom/android/carsdk/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/android/carsdk/protobuf/MessageLite;)Lcom/android/carsdk/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p2

    :catch_1
    move-exception p1

    .line 2691
    new-instance p2, Ljava/lang/RuntimeException;

    invoke-virtual {p1, p0}, Lcom/android/carsdk/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/android/carsdk/protobuf/MessageLite;)Lcom/android/carsdk/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 2696
    :goto_3
    throw p1

    .line 2700
    :cond_6
    :pswitch_2
    sget-object p1, Landroid/car/hardware/xpu/XpuProtoMessageVW$CNGPCityMapFinNotify;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuProtoMessageVW$CNGPCityMapFinNotify;

    return-object p1

    .line 2648
    :pswitch_3
    check-cast p2, Lcom/android/carsdk/protobuf/GeneratedMessageLite$Visitor;

    .line 2649
    check-cast p3, Landroid/car/hardware/xpu/XpuProtoMessageVW$CNGPCityMapFinNotify;

    .line 2650
    iget p1, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$CNGPCityMapFinNotify;->cityCode_:I

    if-eqz p1, :cond_7

    move v0, v2

    goto :goto_4

    :cond_7
    move v0, v1

    :goto_4
    iget v3, p3, Landroid/car/hardware/xpu/XpuProtoMessageVW$CNGPCityMapFinNotify;->cityCode_:I

    if-eqz v3, :cond_8

    move v4, v2

    goto :goto_5

    :cond_8
    move v4, v1

    :goto_5
    invoke-interface {p2, v0, p1, v4, v3}, Lcom/android/carsdk/protobuf/GeneratedMessageLite$Visitor;->visitInt(ZIZI)I

    move-result p1

    iput p1, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$CNGPCityMapFinNotify;->cityCode_:I

    .line 2652
    iget p1, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$CNGPCityMapFinNotify;->result_:I

    if-eqz p1, :cond_9

    move v0, v2

    goto :goto_6

    :cond_9
    move v0, v1

    :goto_6
    iget p3, p3, Landroid/car/hardware/xpu/XpuProtoMessageVW$CNGPCityMapFinNotify;->result_:I

    if-eqz p3, :cond_a

    move v1, v2

    :cond_a
    invoke-interface {p2, v0, p1, v1, p3}, Lcom/android/carsdk/protobuf/GeneratedMessageLite$Visitor;->visitInt(ZIZI)I

    move-result p1

    iput p1, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$CNGPCityMapFinNotify;->result_:I

    .line 2654
    sget-object p1, Lcom/android/carsdk/protobuf/GeneratedMessageLite$MergeFromVisitor;->INSTANCE:Lcom/android/carsdk/protobuf/GeneratedMessageLite$MergeFromVisitor;

    return-object p0

    .line 2645
    :pswitch_4
    new-instance p1, Landroid/car/hardware/xpu/XpuProtoMessageVW$CNGPCityMapFinNotify$Builder;

    invoke-direct {p1, v0}, Landroid/car/hardware/xpu/XpuProtoMessageVW$CNGPCityMapFinNotify$Builder;-><init>(Landroid/car/hardware/xpu/XpuProtoMessageVW$1;)V

    return-object p1

    :pswitch_5
    return-object v0

    .line 2639
    :pswitch_6
    sget-object p1, Landroid/car/hardware/xpu/XpuProtoMessageVW$CNGPCityMapFinNotify;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuProtoMessageVW$CNGPCityMapFinNotify;

    return-object p1

    .line 2636
    :pswitch_7
    new-instance p1, Landroid/car/hardware/xpu/XpuProtoMessageVW$CNGPCityMapFinNotify;

    invoke-direct {p1}, Landroid/car/hardware/xpu/XpuProtoMessageVW$CNGPCityMapFinNotify;-><init>()V

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

.method public getCityCode()I
    .locals 1

    .line 2386
    iget v0, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$CNGPCityMapFinNotify;->cityCode_:I

    return v0
.end method

.method public getResult()I
    .locals 1

    .line 2421
    iget v0, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$CNGPCityMapFinNotify;->result_:I

    return v0
.end method

.method public getSerializedSize()I
    .locals 3

    .line 2457
    iget v0, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$CNGPCityMapFinNotify;->memoizedSerializedSize:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    return v0

    :cond_0
    const/4 v0, 0x0

    .line 2461
    iget v1, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$CNGPCityMapFinNotify;->cityCode_:I

    if-eqz v1, :cond_1

    const/4 v2, 0x1

    .line 2463
    invoke-static {v2, v1}, Lcom/android/carsdk/protobuf/CodedOutputStream;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 2465
    :cond_1
    iget v1, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$CNGPCityMapFinNotify;->result_:I

    if-eqz v1, :cond_2

    const/4 v2, 0x2

    .line 2467
    invoke-static {v2, v1}, Lcom/android/carsdk/protobuf/CodedOutputStream;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 2469
    :cond_2
    iput v0, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$CNGPCityMapFinNotify;->memoizedSerializedSize:I

    return v0
.end method

.method public writeTo(Lcom/android/carsdk/protobuf/CodedOutputStream;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2448
    iget v0, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$CNGPCityMapFinNotify;->cityCode_:I

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    .line 2449
    invoke-virtual {p1, v1, v0}, Lcom/android/carsdk/protobuf/CodedOutputStream;->writeInt32(II)V

    .line 2451
    :cond_0
    iget v0, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$CNGPCityMapFinNotify;->result_:I

    if-eqz v0, :cond_1

    const/4 v1, 0x2

    .line 2452
    invoke-virtual {p1, v1, v0}, Lcom/android/carsdk/protobuf/CodedOutputStream;->writeInt32(II)V

    :cond_1
    return-void
.end method
