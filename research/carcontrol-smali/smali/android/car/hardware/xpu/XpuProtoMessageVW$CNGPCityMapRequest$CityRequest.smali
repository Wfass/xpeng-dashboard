.class public final Landroid/car/hardware/xpu/XpuProtoMessageVW$CNGPCityMapRequest$CityRequest;
.super Lcom/android/carsdk/protobuf/GeneratedMessageLite;
.source "XpuProtoMessageVW.java"

# interfaces
.implements Landroid/car/hardware/xpu/XpuProtoMessageVW$CNGPCityMapRequest$CityRequestOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/car/hardware/xpu/XpuProtoMessageVW$CNGPCityMapRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "CityRequest"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/car/hardware/xpu/XpuProtoMessageVW$CNGPCityMapRequest$CityRequest$Builder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/carsdk/protobuf/GeneratedMessageLite<",
        "Landroid/car/hardware/xpu/XpuProtoMessageVW$CNGPCityMapRequest$CityRequest;",
        "Landroid/car/hardware/xpu/XpuProtoMessageVW$CNGPCityMapRequest$CityRequest$Builder;",
        ">;",
        "Landroid/car/hardware/xpu/XpuProtoMessageVW$CNGPCityMapRequest$CityRequestOrBuilder;"
    }
.end annotation


# static fields
.field public static final CITY_CODE_FIELD_NUMBER:I = 0x1

.field private static final DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuProtoMessageVW$CNGPCityMapRequest$CityRequest;

.field private static volatile PARSER:Lcom/android/carsdk/protobuf/Parser; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/carsdk/protobuf/Parser<",
            "Landroid/car/hardware/xpu/XpuProtoMessageVW$CNGPCityMapRequest$CityRequest;",
            ">;"
        }
    .end annotation
.end field

.field public static final REQ_TYPE_FIELD_NUMBER:I = 0x2


# instance fields
.field private cityCode_:I

.field private reqType_:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 927
    new-instance v0, Landroid/car/hardware/xpu/XpuProtoMessageVW$CNGPCityMapRequest$CityRequest;

    invoke-direct {v0}, Landroid/car/hardware/xpu/XpuProtoMessageVW$CNGPCityMapRequest$CityRequest;-><init>()V

    sput-object v0, Landroid/car/hardware/xpu/XpuProtoMessageVW$CNGPCityMapRequest$CityRequest;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuProtoMessageVW$CNGPCityMapRequest$CityRequest;

    .line 928
    invoke-virtual {v0}, Landroid/car/hardware/xpu/XpuProtoMessageVW$CNGPCityMapRequest$CityRequest;->makeImmutable()V

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 584
    invoke-direct {p0}, Lcom/android/carsdk/protobuf/GeneratedMessageLite;-><init>()V

    const/4 v0, 0x0

    .line 585
    iput v0, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$CNGPCityMapRequest$CityRequest;->cityCode_:I

    .line 586
    iput v0, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$CNGPCityMapRequest$CityRequest;->reqType_:I

    return-void
.end method

.method static synthetic access$000()Landroid/car/hardware/xpu/XpuProtoMessageVW$CNGPCityMapRequest$CityRequest;
    .locals 1

    .line 579
    sget-object v0, Landroid/car/hardware/xpu/XpuProtoMessageVW$CNGPCityMapRequest$CityRequest;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuProtoMessageVW$CNGPCityMapRequest$CityRequest;

    return-object v0
.end method

.method static synthetic access$100(Landroid/car/hardware/xpu/XpuProtoMessageVW$CNGPCityMapRequest$CityRequest;I)V
    .locals 0

    .line 579
    invoke-direct {p0, p1}, Landroid/car/hardware/xpu/XpuProtoMessageVW$CNGPCityMapRequest$CityRequest;->setCityCode(I)V

    return-void
.end method

.method static synthetic access$200(Landroid/car/hardware/xpu/XpuProtoMessageVW$CNGPCityMapRequest$CityRequest;)V
    .locals 0

    .line 579
    invoke-direct {p0}, Landroid/car/hardware/xpu/XpuProtoMessageVW$CNGPCityMapRequest$CityRequest;->clearCityCode()V

    return-void
.end method

.method static synthetic access$300(Landroid/car/hardware/xpu/XpuProtoMessageVW$CNGPCityMapRequest$CityRequest;I)V
    .locals 0

    .line 579
    invoke-direct {p0, p1}, Landroid/car/hardware/xpu/XpuProtoMessageVW$CNGPCityMapRequest$CityRequest;->setReqType(I)V

    return-void
.end method

.method static synthetic access$400(Landroid/car/hardware/xpu/XpuProtoMessageVW$CNGPCityMapRequest$CityRequest;)V
    .locals 0

    .line 579
    invoke-direct {p0}, Landroid/car/hardware/xpu/XpuProtoMessageVW$CNGPCityMapRequest$CityRequest;->clearReqType()V

    return-void
.end method

.method private clearCityCode()V
    .locals 1

    const/4 v0, 0x0

    .line 620
    iput v0, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$CNGPCityMapRequest$CityRequest;->cityCode_:I

    return-void
.end method

.method private clearReqType()V
    .locals 1

    const/4 v0, 0x0

    .line 655
    iput v0, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$CNGPCityMapRequest$CityRequest;->reqType_:I

    return-void
.end method

.method public static getDefaultInstance()Landroid/car/hardware/xpu/XpuProtoMessageVW$CNGPCityMapRequest$CityRequest;
    .locals 1

    .line 932
    sget-object v0, Landroid/car/hardware/xpu/XpuProtoMessageVW$CNGPCityMapRequest$CityRequest;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuProtoMessageVW$CNGPCityMapRequest$CityRequest;

    return-object v0
.end method

.method public static newBuilder()Landroid/car/hardware/xpu/XpuProtoMessageVW$CNGPCityMapRequest$CityRequest$Builder;
    .locals 1

    .line 747
    sget-object v0, Landroid/car/hardware/xpu/XpuProtoMessageVW$CNGPCityMapRequest$CityRequest;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuProtoMessageVW$CNGPCityMapRequest$CityRequest;

    invoke-virtual {v0}, Landroid/car/hardware/xpu/XpuProtoMessageVW$CNGPCityMapRequest$CityRequest;->toBuilder()Lcom/android/carsdk/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Landroid/car/hardware/xpu/XpuProtoMessageVW$CNGPCityMapRequest$CityRequest$Builder;

    return-object v0
.end method

.method public static newBuilder(Landroid/car/hardware/xpu/XpuProtoMessageVW$CNGPCityMapRequest$CityRequest;)Landroid/car/hardware/xpu/XpuProtoMessageVW$CNGPCityMapRequest$CityRequest$Builder;
    .locals 1

    .line 750
    sget-object v0, Landroid/car/hardware/xpu/XpuProtoMessageVW$CNGPCityMapRequest$CityRequest;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuProtoMessageVW$CNGPCityMapRequest$CityRequest;

    invoke-virtual {v0}, Landroid/car/hardware/xpu/XpuProtoMessageVW$CNGPCityMapRequest$CityRequest;->toBuilder()Lcom/android/carsdk/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Landroid/car/hardware/xpu/XpuProtoMessageVW$CNGPCityMapRequest$CityRequest$Builder;

    invoke-virtual {v0, p0}, Landroid/car/hardware/xpu/XpuProtoMessageVW$CNGPCityMapRequest$CityRequest$Builder;->mergeFrom(Lcom/android/carsdk/protobuf/GeneratedMessageLite;)Lcom/android/carsdk/protobuf/GeneratedMessageLite$Builder;

    move-result-object p0

    check-cast p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$CNGPCityMapRequest$CityRequest$Builder;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Landroid/car/hardware/xpu/XpuProtoMessageVW$CNGPCityMapRequest$CityRequest;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 724
    sget-object v0, Landroid/car/hardware/xpu/XpuProtoMessageVW$CNGPCityMapRequest$CityRequest;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuProtoMessageVW$CNGPCityMapRequest$CityRequest;

    invoke-static {v0, p0}, Landroid/car/hardware/xpu/XpuProtoMessageVW$CNGPCityMapRequest$CityRequest;->parseDelimitedFrom(Lcom/android/carsdk/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$CNGPCityMapRequest$CityRequest;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/android/carsdk/protobuf/ExtensionRegistryLite;)Landroid/car/hardware/xpu/XpuProtoMessageVW$CNGPCityMapRequest$CityRequest;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 730
    sget-object v0, Landroid/car/hardware/xpu/XpuProtoMessageVW$CNGPCityMapRequest$CityRequest;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuProtoMessageVW$CNGPCityMapRequest$CityRequest;

    invoke-static {v0, p0, p1}, Landroid/car/hardware/xpu/XpuProtoMessageVW$CNGPCityMapRequest$CityRequest;->parseDelimitedFrom(Lcom/android/carsdk/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/android/carsdk/protobuf/ExtensionRegistryLite;)Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$CNGPCityMapRequest$CityRequest;

    return-object p0
.end method

.method public static parseFrom(Lcom/android/carsdk/protobuf/ByteString;)Landroid/car/hardware/xpu/XpuProtoMessageVW$CNGPCityMapRequest$CityRequest;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/carsdk/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 688
    sget-object v0, Landroid/car/hardware/xpu/XpuProtoMessageVW$CNGPCityMapRequest$CityRequest;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuProtoMessageVW$CNGPCityMapRequest$CityRequest;

    invoke-static {v0, p0}, Lcom/android/carsdk/protobuf/GeneratedMessageLite;->parseFrom(Lcom/android/carsdk/protobuf/GeneratedMessageLite;Lcom/android/carsdk/protobuf/ByteString;)Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$CNGPCityMapRequest$CityRequest;

    return-object p0
.end method

.method public static parseFrom(Lcom/android/carsdk/protobuf/ByteString;Lcom/android/carsdk/protobuf/ExtensionRegistryLite;)Landroid/car/hardware/xpu/XpuProtoMessageVW$CNGPCityMapRequest$CityRequest;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/carsdk/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 695
    sget-object v0, Landroid/car/hardware/xpu/XpuProtoMessageVW$CNGPCityMapRequest$CityRequest;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuProtoMessageVW$CNGPCityMapRequest$CityRequest;

    invoke-static {v0, p0, p1}, Lcom/android/carsdk/protobuf/GeneratedMessageLite;->parseFrom(Lcom/android/carsdk/protobuf/GeneratedMessageLite;Lcom/android/carsdk/protobuf/ByteString;Lcom/android/carsdk/protobuf/ExtensionRegistryLite;)Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$CNGPCityMapRequest$CityRequest;

    return-object p0
.end method

.method public static parseFrom(Lcom/android/carsdk/protobuf/CodedInputStream;)Landroid/car/hardware/xpu/XpuProtoMessageVW$CNGPCityMapRequest$CityRequest;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 735
    sget-object v0, Landroid/car/hardware/xpu/XpuProtoMessageVW$CNGPCityMapRequest$CityRequest;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuProtoMessageVW$CNGPCityMapRequest$CityRequest;

    invoke-static {v0, p0}, Lcom/android/carsdk/protobuf/GeneratedMessageLite;->parseFrom(Lcom/android/carsdk/protobuf/GeneratedMessageLite;Lcom/android/carsdk/protobuf/CodedInputStream;)Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$CNGPCityMapRequest$CityRequest;

    return-object p0
.end method

.method public static parseFrom(Lcom/android/carsdk/protobuf/CodedInputStream;Lcom/android/carsdk/protobuf/ExtensionRegistryLite;)Landroid/car/hardware/xpu/XpuProtoMessageVW$CNGPCityMapRequest$CityRequest;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 742
    sget-object v0, Landroid/car/hardware/xpu/XpuProtoMessageVW$CNGPCityMapRequest$CityRequest;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuProtoMessageVW$CNGPCityMapRequest$CityRequest;

    invoke-static {v0, p0, p1}, Lcom/android/carsdk/protobuf/GeneratedMessageLite;->parseFrom(Lcom/android/carsdk/protobuf/GeneratedMessageLite;Lcom/android/carsdk/protobuf/CodedInputStream;Lcom/android/carsdk/protobuf/ExtensionRegistryLite;)Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$CNGPCityMapRequest$CityRequest;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Landroid/car/hardware/xpu/XpuProtoMessageVW$CNGPCityMapRequest$CityRequest;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 712
    sget-object v0, Landroid/car/hardware/xpu/XpuProtoMessageVW$CNGPCityMapRequest$CityRequest;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuProtoMessageVW$CNGPCityMapRequest$CityRequest;

    invoke-static {v0, p0}, Lcom/android/carsdk/protobuf/GeneratedMessageLite;->parseFrom(Lcom/android/carsdk/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$CNGPCityMapRequest$CityRequest;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/android/carsdk/protobuf/ExtensionRegistryLite;)Landroid/car/hardware/xpu/XpuProtoMessageVW$CNGPCityMapRequest$CityRequest;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 719
    sget-object v0, Landroid/car/hardware/xpu/XpuProtoMessageVW$CNGPCityMapRequest$CityRequest;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuProtoMessageVW$CNGPCityMapRequest$CityRequest;

    invoke-static {v0, p0, p1}, Lcom/android/carsdk/protobuf/GeneratedMessageLite;->parseFrom(Lcom/android/carsdk/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/android/carsdk/protobuf/ExtensionRegistryLite;)Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$CNGPCityMapRequest$CityRequest;

    return-object p0
.end method

.method public static parseFrom([B)Landroid/car/hardware/xpu/XpuProtoMessageVW$CNGPCityMapRequest$CityRequest;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/carsdk/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 700
    sget-object v0, Landroid/car/hardware/xpu/XpuProtoMessageVW$CNGPCityMapRequest$CityRequest;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuProtoMessageVW$CNGPCityMapRequest$CityRequest;

    invoke-static {v0, p0}, Lcom/android/carsdk/protobuf/GeneratedMessageLite;->parseFrom(Lcom/android/carsdk/protobuf/GeneratedMessageLite;[B)Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$CNGPCityMapRequest$CityRequest;

    return-object p0
.end method

.method public static parseFrom([BLcom/android/carsdk/protobuf/ExtensionRegistryLite;)Landroid/car/hardware/xpu/XpuProtoMessageVW$CNGPCityMapRequest$CityRequest;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/carsdk/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 707
    sget-object v0, Landroid/car/hardware/xpu/XpuProtoMessageVW$CNGPCityMapRequest$CityRequest;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuProtoMessageVW$CNGPCityMapRequest$CityRequest;

    invoke-static {v0, p0, p1}, Lcom/android/carsdk/protobuf/GeneratedMessageLite;->parseFrom(Lcom/android/carsdk/protobuf/GeneratedMessageLite;[BLcom/android/carsdk/protobuf/ExtensionRegistryLite;)Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$CNGPCityMapRequest$CityRequest;

    return-object p0
.end method

.method public static parser()Lcom/android/carsdk/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/android/carsdk/protobuf/Parser<",
            "Landroid/car/hardware/xpu/XpuProtoMessageVW$CNGPCityMapRequest$CityRequest;",
            ">;"
        }
    .end annotation

    .line 938
    sget-object v0, Landroid/car/hardware/xpu/XpuProtoMessageVW$CNGPCityMapRequest$CityRequest;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuProtoMessageVW$CNGPCityMapRequest$CityRequest;

    invoke-virtual {v0}, Landroid/car/hardware/xpu/XpuProtoMessageVW$CNGPCityMapRequest$CityRequest;->getParserForType()Lcom/android/carsdk/protobuf/Parser;

    move-result-object v0

    return-object v0
.end method

.method private setCityCode(I)V
    .locals 0

    .line 609
    iput p1, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$CNGPCityMapRequest$CityRequest;->cityCode_:I

    return-void
.end method

.method private setReqType(I)V
    .locals 0

    .line 644
    iput p1, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$CNGPCityMapRequest$CityRequest;->reqType_:I

    return-void
.end method


# virtual methods
.method protected final dynamicMethod(Lcom/android/carsdk/protobuf/GeneratedMessageLite$MethodToInvoke;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5

    .line 842
    sget-object v0, Landroid/car/hardware/xpu/XpuProtoMessageVW$1;->$SwitchMap$com$google$protobuf$GeneratedMessageLite$MethodToInvoke:[I

    invoke-virtual {p1}, Lcom/android/carsdk/protobuf/GeneratedMessageLite$MethodToInvoke;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x1

    packed-switch p1, :pswitch_data_0

    .line 920
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1

    .line 911
    :pswitch_0
    sget-object p1, Landroid/car/hardware/xpu/XpuProtoMessageVW$CNGPCityMapRequest$CityRequest;->PARSER:Lcom/android/carsdk/protobuf/Parser;

    if-nez p1, :cond_1

    const-class p1, Landroid/car/hardware/xpu/XpuProtoMessageVW$CNGPCityMapRequest$CityRequest;

    monitor-enter p1

    .line 912
    :try_start_0
    sget-object p2, Landroid/car/hardware/xpu/XpuProtoMessageVW$CNGPCityMapRequest$CityRequest;->PARSER:Lcom/android/carsdk/protobuf/Parser;

    if-nez p2, :cond_0

    .line 913
    new-instance p2, Lcom/android/carsdk/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;

    sget-object p3, Landroid/car/hardware/xpu/XpuProtoMessageVW$CNGPCityMapRequest$CityRequest;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuProtoMessageVW$CNGPCityMapRequest$CityRequest;

    invoke-direct {p2, p3}, Lcom/android/carsdk/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;-><init>(Lcom/android/carsdk/protobuf/GeneratedMessageLite;)V

    sput-object p2, Landroid/car/hardware/xpu/XpuProtoMessageVW$CNGPCityMapRequest$CityRequest;->PARSER:Lcom/android/carsdk/protobuf/Parser;

    .line 915
    :cond_0
    monitor-exit p1

    goto :goto_0

    :catchall_0
    move-exception p2

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p2

    .line 917
    :cond_1
    :goto_0
    sget-object p1, Landroid/car/hardware/xpu/XpuProtoMessageVW$CNGPCityMapRequest$CityRequest;->PARSER:Lcom/android/carsdk/protobuf/Parser;

    return-object p1

    .line 868
    :pswitch_1
    check-cast p2, Lcom/android/carsdk/protobuf/CodedInputStream;

    .line 870
    check-cast p3, Lcom/android/carsdk/protobuf/ExtensionRegistryLite;

    :cond_2
    :goto_1
    if-nez v1, :cond_6

    .line 875
    :try_start_1
    invoke-virtual {p2}, Lcom/android/carsdk/protobuf/CodedInputStream;->readTag()I

    move-result p1

    if-eqz p1, :cond_5

    const/16 p3, 0x8

    if-eq p1, p3, :cond_4

    const/16 p3, 0x10

    if-eq p1, p3, :cond_3

    .line 881
    invoke-virtual {p2, p1}, Lcom/android/carsdk/protobuf/CodedInputStream;->skipField(I)Z

    move-result p1

    if-nez p1, :cond_2

    goto :goto_2

    .line 893
    :cond_3
    invoke-virtual {p2}, Lcom/android/carsdk/protobuf/CodedInputStream;->readInt32()I

    move-result p1

    iput p1, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$CNGPCityMapRequest$CityRequest;->reqType_:I

    goto :goto_1

    .line 888
    :cond_4
    invoke-virtual {p2}, Lcom/android/carsdk/protobuf/CodedInputStream;->readInt32()I

    move-result p1

    iput p1, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$CNGPCityMapRequest$CityRequest;->cityCode_:I
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

    .line 901
    :try_start_2
    new-instance p2, Ljava/lang/RuntimeException;

    new-instance p3, Lcom/android/carsdk/protobuf/InvalidProtocolBufferException;

    .line 903
    invoke-virtual {p1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p3, p1}, Lcom/android/carsdk/protobuf/InvalidProtocolBufferException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, p0}, Lcom/android/carsdk/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/android/carsdk/protobuf/MessageLite;)Lcom/android/carsdk/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p2

    :catch_1
    move-exception p1

    .line 899
    new-instance p2, Ljava/lang/RuntimeException;

    invoke-virtual {p1, p0}, Lcom/android/carsdk/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/android/carsdk/protobuf/MessageLite;)Lcom/android/carsdk/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 904
    :goto_3
    throw p1

    .line 908
    :cond_6
    :pswitch_2
    sget-object p1, Landroid/car/hardware/xpu/XpuProtoMessageVW$CNGPCityMapRequest$CityRequest;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuProtoMessageVW$CNGPCityMapRequest$CityRequest;

    return-object p1

    .line 856
    :pswitch_3
    check-cast p2, Lcom/android/carsdk/protobuf/GeneratedMessageLite$Visitor;

    .line 857
    check-cast p3, Landroid/car/hardware/xpu/XpuProtoMessageVW$CNGPCityMapRequest$CityRequest;

    .line 858
    iget p1, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$CNGPCityMapRequest$CityRequest;->cityCode_:I

    if-eqz p1, :cond_7

    move v0, v2

    goto :goto_4

    :cond_7
    move v0, v1

    :goto_4
    iget v3, p3, Landroid/car/hardware/xpu/XpuProtoMessageVW$CNGPCityMapRequest$CityRequest;->cityCode_:I

    if-eqz v3, :cond_8

    move v4, v2

    goto :goto_5

    :cond_8
    move v4, v1

    :goto_5
    invoke-interface {p2, v0, p1, v4, v3}, Lcom/android/carsdk/protobuf/GeneratedMessageLite$Visitor;->visitInt(ZIZI)I

    move-result p1

    iput p1, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$CNGPCityMapRequest$CityRequest;->cityCode_:I

    .line 860
    iget p1, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$CNGPCityMapRequest$CityRequest;->reqType_:I

    if-eqz p1, :cond_9

    move v0, v2

    goto :goto_6

    :cond_9
    move v0, v1

    :goto_6
    iget p3, p3, Landroid/car/hardware/xpu/XpuProtoMessageVW$CNGPCityMapRequest$CityRequest;->reqType_:I

    if-eqz p3, :cond_a

    move v1, v2

    :cond_a
    invoke-interface {p2, v0, p1, v1, p3}, Lcom/android/carsdk/protobuf/GeneratedMessageLite$Visitor;->visitInt(ZIZI)I

    move-result p1

    iput p1, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$CNGPCityMapRequest$CityRequest;->reqType_:I

    .line 862
    sget-object p1, Lcom/android/carsdk/protobuf/GeneratedMessageLite$MergeFromVisitor;->INSTANCE:Lcom/android/carsdk/protobuf/GeneratedMessageLite$MergeFromVisitor;

    return-object p0

    .line 853
    :pswitch_4
    new-instance p1, Landroid/car/hardware/xpu/XpuProtoMessageVW$CNGPCityMapRequest$CityRequest$Builder;

    invoke-direct {p1, v0}, Landroid/car/hardware/xpu/XpuProtoMessageVW$CNGPCityMapRequest$CityRequest$Builder;-><init>(Landroid/car/hardware/xpu/XpuProtoMessageVW$1;)V

    return-object p1

    :pswitch_5
    return-object v0

    .line 847
    :pswitch_6
    sget-object p1, Landroid/car/hardware/xpu/XpuProtoMessageVW$CNGPCityMapRequest$CityRequest;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuProtoMessageVW$CNGPCityMapRequest$CityRequest;

    return-object p1

    .line 844
    :pswitch_7
    new-instance p1, Landroid/car/hardware/xpu/XpuProtoMessageVW$CNGPCityMapRequest$CityRequest;

    invoke-direct {p1}, Landroid/car/hardware/xpu/XpuProtoMessageVW$CNGPCityMapRequest$CityRequest;-><init>()V

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

    .line 598
    iget v0, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$CNGPCityMapRequest$CityRequest;->cityCode_:I

    return v0
.end method

.method public getReqType()I
    .locals 1

    .line 633
    iget v0, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$CNGPCityMapRequest$CityRequest;->reqType_:I

    return v0
.end method

.method public getSerializedSize()I
    .locals 3

    .line 669
    iget v0, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$CNGPCityMapRequest$CityRequest;->memoizedSerializedSize:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    return v0

    :cond_0
    const/4 v0, 0x0

    .line 673
    iget v1, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$CNGPCityMapRequest$CityRequest;->cityCode_:I

    if-eqz v1, :cond_1

    const/4 v2, 0x1

    .line 675
    invoke-static {v2, v1}, Lcom/android/carsdk/protobuf/CodedOutputStream;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 677
    :cond_1
    iget v1, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$CNGPCityMapRequest$CityRequest;->reqType_:I

    if-eqz v1, :cond_2

    const/4 v2, 0x2

    .line 679
    invoke-static {v2, v1}, Lcom/android/carsdk/protobuf/CodedOutputStream;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 681
    :cond_2
    iput v0, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$CNGPCityMapRequest$CityRequest;->memoizedSerializedSize:I

    return v0
.end method

.method public writeTo(Lcom/android/carsdk/protobuf/CodedOutputStream;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 660
    iget v0, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$CNGPCityMapRequest$CityRequest;->cityCode_:I

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    .line 661
    invoke-virtual {p1, v1, v0}, Lcom/android/carsdk/protobuf/CodedOutputStream;->writeInt32(II)V

    .line 663
    :cond_0
    iget v0, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$CNGPCityMapRequest$CityRequest;->reqType_:I

    if-eqz v0, :cond_1

    const/4 v1, 0x2

    .line 664
    invoke-virtual {p1, v1, v0}, Lcom/android/carsdk/protobuf/CodedOutputStream;->writeInt32(II)V

    :cond_1
    return-void
.end method
