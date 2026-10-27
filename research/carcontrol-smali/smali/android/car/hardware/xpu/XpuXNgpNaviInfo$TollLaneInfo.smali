.class public final Landroid/car/hardware/xpu/XpuXNgpNaviInfo$TollLaneInfo;
.super Lcom/android/carsdk/protobuf/GeneratedMessageLite;
.source "XpuXNgpNaviInfo.java"

# interfaces
.implements Landroid/car/hardware/xpu/XpuXNgpNaviInfo$TollLaneInfoOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/car/hardware/xpu/XpuXNgpNaviInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "TollLaneInfo"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/car/hardware/xpu/XpuXNgpNaviInfo$TollLaneInfo$Builder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/carsdk/protobuf/GeneratedMessageLite<",
        "Landroid/car/hardware/xpu/XpuXNgpNaviInfo$TollLaneInfo;",
        "Landroid/car/hardware/xpu/XpuXNgpNaviInfo$TollLaneInfo$Builder;",
        ">;",
        "Landroid/car/hardware/xpu/XpuXNgpNaviInfo$TollLaneInfoOrBuilder;"
    }
.end annotation


# static fields
.field private static final DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuXNgpNaviInfo$TollLaneInfo;

.field private static volatile PARSER:Lcom/android/carsdk/protobuf/Parser; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/carsdk/protobuf/Parser<",
            "Landroid/car/hardware/xpu/XpuXNgpNaviInfo$TollLaneInfo;",
            ">;"
        }
    .end annotation
.end field

.field public static final TOLLGATEINFO_FIELD_NUMBER:I = 0x1

.field private static final tollGateInfo_converter_:Lcom/android/carsdk/protobuf/Internal$ListAdapter$Converter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/carsdk/protobuf/Internal$ListAdapter$Converter<",
            "Ljava/lang/Integer;",
            "Landroid/car/hardware/xpu/XpuXNgpNaviInfo$TollLaneType;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private tollGateInfo_:Lcom/android/carsdk/protobuf/Internal$IntList;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 6264
    new-instance v0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$TollLaneInfo$1;

    invoke-direct {v0}, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$TollLaneInfo$1;-><init>()V

    sput-object v0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$TollLaneInfo;->tollGateInfo_converter_:Lcom/android/carsdk/protobuf/Internal$ListAdapter$Converter;

    .line 6767
    new-instance v0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$TollLaneInfo;

    invoke-direct {v0}, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$TollLaneInfo;-><init>()V

    sput-object v0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$TollLaneInfo;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuXNgpNaviInfo$TollLaneInfo;

    .line 6768
    invoke-virtual {v0}, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$TollLaneInfo;->makeImmutable()V

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 6258
    invoke-direct {p0}, Lcom/android/carsdk/protobuf/GeneratedMessageLite;-><init>()V

    .line 6259
    invoke-static {}, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$TollLaneInfo;->emptyIntList()Lcom/android/carsdk/protobuf/Internal$IntList;

    move-result-object v0

    iput-object v0, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$TollLaneInfo;->tollGateInfo_:Lcom/android/carsdk/protobuf/Internal$IntList;

    return-void
.end method

.method static synthetic access$7800()Landroid/car/hardware/xpu/XpuXNgpNaviInfo$TollLaneInfo;
    .locals 1

    .line 6253
    sget-object v0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$TollLaneInfo;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuXNgpNaviInfo$TollLaneInfo;

    return-object v0
.end method

.method static synthetic access$7900(Landroid/car/hardware/xpu/XpuXNgpNaviInfo$TollLaneInfo;ILandroid/car/hardware/xpu/XpuXNgpNaviInfo$TollLaneType;)V
    .locals 0

    .line 6253
    invoke-direct {p0, p1, p2}, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$TollLaneInfo;->setTollGateInfo(ILandroid/car/hardware/xpu/XpuXNgpNaviInfo$TollLaneType;)V

    return-void
.end method

.method static synthetic access$8000(Landroid/car/hardware/xpu/XpuXNgpNaviInfo$TollLaneInfo;Landroid/car/hardware/xpu/XpuXNgpNaviInfo$TollLaneType;)V
    .locals 0

    .line 6253
    invoke-direct {p0, p1}, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$TollLaneInfo;->addTollGateInfo(Landroid/car/hardware/xpu/XpuXNgpNaviInfo$TollLaneType;)V

    return-void
.end method

.method static synthetic access$8100(Landroid/car/hardware/xpu/XpuXNgpNaviInfo$TollLaneInfo;Ljava/lang/Iterable;)V
    .locals 0

    .line 6253
    invoke-direct {p0, p1}, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$TollLaneInfo;->addAllTollGateInfo(Ljava/lang/Iterable;)V

    return-void
.end method

.method static synthetic access$8200(Landroid/car/hardware/xpu/XpuXNgpNaviInfo$TollLaneInfo;)V
    .locals 0

    .line 6253
    invoke-direct {p0}, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$TollLaneInfo;->clearTollGateInfo()V

    return-void
.end method

.method static synthetic access$8300(Landroid/car/hardware/xpu/XpuXNgpNaviInfo$TollLaneInfo;II)V
    .locals 0

    .line 6253
    invoke-direct {p0, p1, p2}, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$TollLaneInfo;->setTollGateInfoValue(II)V

    return-void
.end method

.method static synthetic access$8400(Landroid/car/hardware/xpu/XpuXNgpNaviInfo$TollLaneInfo;I)V
    .locals 0

    .line 6253
    invoke-direct {p0, p1}, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$TollLaneInfo;->addTollGateInfoValue(I)V

    return-void
.end method

.method static synthetic access$8500(Landroid/car/hardware/xpu/XpuXNgpNaviInfo$TollLaneInfo;Ljava/lang/Iterable;)V
    .locals 0

    .line 6253
    invoke-direct {p0, p1}, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$TollLaneInfo;->addAllTollGateInfoValue(Ljava/lang/Iterable;)V

    return-void
.end method

.method private addAllTollGateInfo(Ljava/lang/Iterable;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Landroid/car/hardware/xpu/XpuXNgpNaviInfo$TollLaneType;",
            ">;)V"
        }
    .end annotation

    .line 6368
    invoke-direct {p0}, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$TollLaneInfo;->ensureTollGateInfoIsMutable()V

    .line 6369
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$TollLaneType;

    .line 6370
    iget-object v1, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$TollLaneInfo;->tollGateInfo_:Lcom/android/carsdk/protobuf/Internal$IntList;

    invoke-virtual {v0}, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$TollLaneType;->getNumber()I

    move-result v0

    invoke-interface {v1, v0}, Lcom/android/carsdk/protobuf/Internal$IntList;->addInt(I)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private addAllTollGateInfoValue(Ljava/lang/Iterable;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 6415
    invoke-direct {p0}, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$TollLaneInfo;->ensureTollGateInfoIsMutable()V

    .line 6416
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 6417
    iget-object v1, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$TollLaneInfo;->tollGateInfo_:Lcom/android/carsdk/protobuf/Internal$IntList;

    invoke-interface {v1, v0}, Lcom/android/carsdk/protobuf/Internal$IntList;->addInt(I)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private addTollGateInfo(Landroid/car/hardware/xpu/XpuXNgpNaviInfo$TollLaneType;)V
    .locals 1

    .line 6354
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6356
    invoke-direct {p0}, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$TollLaneInfo;->ensureTollGateInfoIsMutable()V

    .line 6357
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$TollLaneInfo;->tollGateInfo_:Lcom/android/carsdk/protobuf/Internal$IntList;

    invoke-virtual {p1}, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$TollLaneType;->getNumber()I

    move-result p1

    invoke-interface {v0, p1}, Lcom/android/carsdk/protobuf/Internal$IntList;->addInt(I)V

    return-void
.end method

.method private addTollGateInfoValue(I)V
    .locals 1

    .line 6403
    invoke-direct {p0}, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$TollLaneInfo;->ensureTollGateInfoIsMutable()V

    .line 6404
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$TollLaneInfo;->tollGateInfo_:Lcom/android/carsdk/protobuf/Internal$IntList;

    invoke-interface {v0, p1}, Lcom/android/carsdk/protobuf/Internal$IntList;->addInt(I)V

    return-void
.end method

.method private clearTollGateInfo()V
    .locals 1

    .line 6381
    invoke-static {}, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$TollLaneInfo;->emptyIntList()Lcom/android/carsdk/protobuf/Internal$IntList;

    move-result-object v0

    iput-object v0, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$TollLaneInfo;->tollGateInfo_:Lcom/android/carsdk/protobuf/Internal$IntList;

    return-void
.end method

.method private ensureTollGateInfoIsMutable()V
    .locals 1

    .line 6325
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$TollLaneInfo;->tollGateInfo_:Lcom/android/carsdk/protobuf/Internal$IntList;

    invoke-interface {v0}, Lcom/android/carsdk/protobuf/Internal$IntList;->isModifiable()Z

    move-result v0

    if-nez v0, :cond_0

    .line 6326
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$TollLaneInfo;->tollGateInfo_:Lcom/android/carsdk/protobuf/Internal$IntList;

    .line 6327
    invoke-static {v0}, Lcom/android/carsdk/protobuf/GeneratedMessageLite;->mutableCopy(Lcom/android/carsdk/protobuf/Internal$IntList;)Lcom/android/carsdk/protobuf/Internal$IntList;

    move-result-object v0

    iput-object v0, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$TollLaneInfo;->tollGateInfo_:Lcom/android/carsdk/protobuf/Internal$IntList;

    :cond_0
    return-void
.end method

.method public static getDefaultInstance()Landroid/car/hardware/xpu/XpuXNgpNaviInfo$TollLaneInfo;
    .locals 1

    .line 6772
    sget-object v0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$TollLaneInfo;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuXNgpNaviInfo$TollLaneInfo;

    return-object v0
.end method

.method public static newBuilder()Landroid/car/hardware/xpu/XpuXNgpNaviInfo$TollLaneInfo$Builder;
    .locals 1

    .line 6509
    sget-object v0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$TollLaneInfo;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuXNgpNaviInfo$TollLaneInfo;

    invoke-virtual {v0}, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$TollLaneInfo;->toBuilder()Lcom/android/carsdk/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$TollLaneInfo$Builder;

    return-object v0
.end method

.method public static newBuilder(Landroid/car/hardware/xpu/XpuXNgpNaviInfo$TollLaneInfo;)Landroid/car/hardware/xpu/XpuXNgpNaviInfo$TollLaneInfo$Builder;
    .locals 1

    .line 6512
    sget-object v0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$TollLaneInfo;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuXNgpNaviInfo$TollLaneInfo;

    invoke-virtual {v0}, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$TollLaneInfo;->toBuilder()Lcom/android/carsdk/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$TollLaneInfo$Builder;

    invoke-virtual {v0, p0}, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$TollLaneInfo$Builder;->mergeFrom(Lcom/android/carsdk/protobuf/GeneratedMessageLite;)Lcom/android/carsdk/protobuf/GeneratedMessageLite$Builder;

    move-result-object p0

    check-cast p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$TollLaneInfo$Builder;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Landroid/car/hardware/xpu/XpuXNgpNaviInfo$TollLaneInfo;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 6486
    sget-object v0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$TollLaneInfo;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuXNgpNaviInfo$TollLaneInfo;

    invoke-static {v0, p0}, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$TollLaneInfo;->parseDelimitedFrom(Lcom/android/carsdk/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$TollLaneInfo;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/android/carsdk/protobuf/ExtensionRegistryLite;)Landroid/car/hardware/xpu/XpuXNgpNaviInfo$TollLaneInfo;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 6492
    sget-object v0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$TollLaneInfo;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuXNgpNaviInfo$TollLaneInfo;

    invoke-static {v0, p0, p1}, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$TollLaneInfo;->parseDelimitedFrom(Lcom/android/carsdk/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/android/carsdk/protobuf/ExtensionRegistryLite;)Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$TollLaneInfo;

    return-object p0
.end method

.method public static parseFrom(Lcom/android/carsdk/protobuf/ByteString;)Landroid/car/hardware/xpu/XpuXNgpNaviInfo$TollLaneInfo;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/carsdk/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 6450
    sget-object v0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$TollLaneInfo;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuXNgpNaviInfo$TollLaneInfo;

    invoke-static {v0, p0}, Lcom/android/carsdk/protobuf/GeneratedMessageLite;->parseFrom(Lcom/android/carsdk/protobuf/GeneratedMessageLite;Lcom/android/carsdk/protobuf/ByteString;)Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$TollLaneInfo;

    return-object p0
.end method

.method public static parseFrom(Lcom/android/carsdk/protobuf/ByteString;Lcom/android/carsdk/protobuf/ExtensionRegistryLite;)Landroid/car/hardware/xpu/XpuXNgpNaviInfo$TollLaneInfo;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/carsdk/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 6457
    sget-object v0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$TollLaneInfo;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuXNgpNaviInfo$TollLaneInfo;

    invoke-static {v0, p0, p1}, Lcom/android/carsdk/protobuf/GeneratedMessageLite;->parseFrom(Lcom/android/carsdk/protobuf/GeneratedMessageLite;Lcom/android/carsdk/protobuf/ByteString;Lcom/android/carsdk/protobuf/ExtensionRegistryLite;)Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$TollLaneInfo;

    return-object p0
.end method

.method public static parseFrom(Lcom/android/carsdk/protobuf/CodedInputStream;)Landroid/car/hardware/xpu/XpuXNgpNaviInfo$TollLaneInfo;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 6497
    sget-object v0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$TollLaneInfo;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuXNgpNaviInfo$TollLaneInfo;

    invoke-static {v0, p0}, Lcom/android/carsdk/protobuf/GeneratedMessageLite;->parseFrom(Lcom/android/carsdk/protobuf/GeneratedMessageLite;Lcom/android/carsdk/protobuf/CodedInputStream;)Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$TollLaneInfo;

    return-object p0
.end method

.method public static parseFrom(Lcom/android/carsdk/protobuf/CodedInputStream;Lcom/android/carsdk/protobuf/ExtensionRegistryLite;)Landroid/car/hardware/xpu/XpuXNgpNaviInfo$TollLaneInfo;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 6504
    sget-object v0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$TollLaneInfo;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuXNgpNaviInfo$TollLaneInfo;

    invoke-static {v0, p0, p1}, Lcom/android/carsdk/protobuf/GeneratedMessageLite;->parseFrom(Lcom/android/carsdk/protobuf/GeneratedMessageLite;Lcom/android/carsdk/protobuf/CodedInputStream;Lcom/android/carsdk/protobuf/ExtensionRegistryLite;)Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$TollLaneInfo;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Landroid/car/hardware/xpu/XpuXNgpNaviInfo$TollLaneInfo;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 6474
    sget-object v0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$TollLaneInfo;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuXNgpNaviInfo$TollLaneInfo;

    invoke-static {v0, p0}, Lcom/android/carsdk/protobuf/GeneratedMessageLite;->parseFrom(Lcom/android/carsdk/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$TollLaneInfo;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/android/carsdk/protobuf/ExtensionRegistryLite;)Landroid/car/hardware/xpu/XpuXNgpNaviInfo$TollLaneInfo;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 6481
    sget-object v0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$TollLaneInfo;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuXNgpNaviInfo$TollLaneInfo;

    invoke-static {v0, p0, p1}, Lcom/android/carsdk/protobuf/GeneratedMessageLite;->parseFrom(Lcom/android/carsdk/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/android/carsdk/protobuf/ExtensionRegistryLite;)Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$TollLaneInfo;

    return-object p0
.end method

.method public static parseFrom([B)Landroid/car/hardware/xpu/XpuXNgpNaviInfo$TollLaneInfo;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/carsdk/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 6462
    sget-object v0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$TollLaneInfo;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuXNgpNaviInfo$TollLaneInfo;

    invoke-static {v0, p0}, Lcom/android/carsdk/protobuf/GeneratedMessageLite;->parseFrom(Lcom/android/carsdk/protobuf/GeneratedMessageLite;[B)Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$TollLaneInfo;

    return-object p0
.end method

.method public static parseFrom([BLcom/android/carsdk/protobuf/ExtensionRegistryLite;)Landroid/car/hardware/xpu/XpuXNgpNaviInfo$TollLaneInfo;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/carsdk/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 6469
    sget-object v0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$TollLaneInfo;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuXNgpNaviInfo$TollLaneInfo;

    invoke-static {v0, p0, p1}, Lcom/android/carsdk/protobuf/GeneratedMessageLite;->parseFrom(Lcom/android/carsdk/protobuf/GeneratedMessageLite;[BLcom/android/carsdk/protobuf/ExtensionRegistryLite;)Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$TollLaneInfo;

    return-object p0
.end method

.method public static parser()Lcom/android/carsdk/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/android/carsdk/protobuf/Parser<",
            "Landroid/car/hardware/xpu/XpuXNgpNaviInfo$TollLaneInfo;",
            ">;"
        }
    .end annotation

    .line 6778
    sget-object v0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$TollLaneInfo;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuXNgpNaviInfo$TollLaneInfo;

    invoke-virtual {v0}, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$TollLaneInfo;->getParserForType()Lcom/android/carsdk/protobuf/Parser;

    move-result-object v0

    return-object v0
.end method

.method private setTollGateInfo(ILandroid/car/hardware/xpu/XpuXNgpNaviInfo$TollLaneType;)V
    .locals 1

    .line 6340
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6342
    invoke-direct {p0}, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$TollLaneInfo;->ensureTollGateInfoIsMutable()V

    .line 6343
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$TollLaneInfo;->tollGateInfo_:Lcom/android/carsdk/protobuf/Internal$IntList;

    invoke-virtual {p2}, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$TollLaneType;->getNumber()I

    move-result p2

    invoke-interface {v0, p1, p2}, Lcom/android/carsdk/protobuf/Internal$IntList;->setInt(II)I

    return-void
.end method

.method private setTollGateInfoValue(II)V
    .locals 1

    .line 6392
    invoke-direct {p0}, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$TollLaneInfo;->ensureTollGateInfoIsMutable()V

    .line 6393
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$TollLaneInfo;->tollGateInfo_:Lcom/android/carsdk/protobuf/Internal$IntList;

    invoke-interface {v0, p1, p2}, Lcom/android/carsdk/protobuf/Internal$IntList;->setInt(II)I

    return-void
.end method


# virtual methods
.method protected final dynamicMethod(Lcom/android/carsdk/protobuf/GeneratedMessageLite$MethodToInvoke;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 6673
    sget-object v0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$1;->$SwitchMap$com$google$protobuf$GeneratedMessageLite$MethodToInvoke:[I

    invoke-virtual {p1}, Lcom/android/carsdk/protobuf/GeneratedMessageLite$MethodToInvoke;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x0

    packed-switch p1, :pswitch_data_0

    .line 6760
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1

    .line 6751
    :pswitch_0
    sget-object p1, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$TollLaneInfo;->PARSER:Lcom/android/carsdk/protobuf/Parser;

    if-nez p1, :cond_1

    const-class p1, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$TollLaneInfo;

    monitor-enter p1

    .line 6752
    :try_start_0
    sget-object p2, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$TollLaneInfo;->PARSER:Lcom/android/carsdk/protobuf/Parser;

    if-nez p2, :cond_0

    .line 6753
    new-instance p2, Lcom/android/carsdk/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;

    sget-object p3, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$TollLaneInfo;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuXNgpNaviInfo$TollLaneInfo;

    invoke-direct {p2, p3}, Lcom/android/carsdk/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;-><init>(Lcom/android/carsdk/protobuf/GeneratedMessageLite;)V

    sput-object p2, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$TollLaneInfo;->PARSER:Lcom/android/carsdk/protobuf/Parser;

    .line 6755
    :cond_0
    monitor-exit p1

    goto :goto_0

    :catchall_0
    move-exception p2

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p2

    .line 6757
    :cond_1
    :goto_0
    sget-object p1, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$TollLaneInfo;->PARSER:Lcom/android/carsdk/protobuf/Parser;

    return-object p1

    .line 6697
    :pswitch_1
    check-cast p2, Lcom/android/carsdk/protobuf/CodedInputStream;

    .line 6699
    check-cast p3, Lcom/android/carsdk/protobuf/ExtensionRegistryLite;

    const/4 p1, 0x0

    :cond_2
    :goto_1
    if-nez p1, :cond_9

    .line 6704
    :try_start_1
    invoke-virtual {p2}, Lcom/android/carsdk/protobuf/CodedInputStream;->readTag()I

    move-result p3

    const/4 v0, 0x1

    if-eqz p3, :cond_8

    const/16 v1, 0x8

    if-eq p3, v1, :cond_6

    const/16 v1, 0xa

    if-eq p3, v1, :cond_3

    .line 6710
    invoke-virtual {p2, p3}, Lcom/android/carsdk/protobuf/CodedInputStream;->skipField(I)Z

    move-result p3

    if-nez p3, :cond_2

    goto :goto_3

    .line 6724
    :cond_3
    iget-object p3, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$TollLaneInfo;->tollGateInfo_:Lcom/android/carsdk/protobuf/Internal$IntList;

    invoke-interface {p3}, Lcom/android/carsdk/protobuf/Internal$IntList;->isModifiable()Z

    move-result p3

    if-nez p3, :cond_4

    .line 6725
    iget-object p3, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$TollLaneInfo;->tollGateInfo_:Lcom/android/carsdk/protobuf/Internal$IntList;

    .line 6726
    invoke-static {p3}, Lcom/android/carsdk/protobuf/GeneratedMessageLite;->mutableCopy(Lcom/android/carsdk/protobuf/Internal$IntList;)Lcom/android/carsdk/protobuf/Internal$IntList;

    move-result-object p3

    iput-object p3, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$TollLaneInfo;->tollGateInfo_:Lcom/android/carsdk/protobuf/Internal$IntList;

    .line 6728
    :cond_4
    invoke-virtual {p2}, Lcom/android/carsdk/protobuf/CodedInputStream;->readRawVarint32()I

    move-result p3

    .line 6729
    invoke-virtual {p2, p3}, Lcom/android/carsdk/protobuf/CodedInputStream;->pushLimit(I)I

    move-result p3

    .line 6730
    :goto_2
    invoke-virtual {p2}, Lcom/android/carsdk/protobuf/CodedInputStream;->getBytesUntilLimit()I

    move-result v0

    if-lez v0, :cond_5

    .line 6731
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$TollLaneInfo;->tollGateInfo_:Lcom/android/carsdk/protobuf/Internal$IntList;

    invoke-virtual {p2}, Lcom/android/carsdk/protobuf/CodedInputStream;->readEnum()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/android/carsdk/protobuf/Internal$IntList;->addInt(I)V

    goto :goto_2

    .line 6733
    :cond_5
    invoke-virtual {p2, p3}, Lcom/android/carsdk/protobuf/CodedInputStream;->popLimit(I)V

    goto :goto_1

    .line 6716
    :cond_6
    iget-object p3, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$TollLaneInfo;->tollGateInfo_:Lcom/android/carsdk/protobuf/Internal$IntList;

    invoke-interface {p3}, Lcom/android/carsdk/protobuf/Internal$IntList;->isModifiable()Z

    move-result p3

    if-nez p3, :cond_7

    .line 6717
    iget-object p3, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$TollLaneInfo;->tollGateInfo_:Lcom/android/carsdk/protobuf/Internal$IntList;

    .line 6718
    invoke-static {p3}, Lcom/android/carsdk/protobuf/GeneratedMessageLite;->mutableCopy(Lcom/android/carsdk/protobuf/Internal$IntList;)Lcom/android/carsdk/protobuf/Internal$IntList;

    move-result-object p3

    iput-object p3, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$TollLaneInfo;->tollGateInfo_:Lcom/android/carsdk/protobuf/Internal$IntList;

    .line 6720
    :cond_7
    iget-object p3, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$TollLaneInfo;->tollGateInfo_:Lcom/android/carsdk/protobuf/Internal$IntList;

    invoke-virtual {p2}, Lcom/android/carsdk/protobuf/CodedInputStream;->readEnum()I

    move-result v0

    invoke-interface {p3, v0}, Lcom/android/carsdk/protobuf/Internal$IntList;->addInt(I)V
    :try_end_1
    .catch Lcom/android/carsdk/protobuf/InvalidProtocolBufferException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    :cond_8
    :goto_3
    move p1, v0

    goto :goto_1

    :catchall_1
    move-exception p1

    goto :goto_4

    :catch_0
    move-exception p1

    .line 6741
    :try_start_2
    new-instance p2, Ljava/lang/RuntimeException;

    new-instance p3, Lcom/android/carsdk/protobuf/InvalidProtocolBufferException;

    .line 6743
    invoke-virtual {p1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p3, p1}, Lcom/android/carsdk/protobuf/InvalidProtocolBufferException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, p0}, Lcom/android/carsdk/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/android/carsdk/protobuf/MessageLite;)Lcom/android/carsdk/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p2

    :catch_1
    move-exception p1

    .line 6739
    new-instance p2, Ljava/lang/RuntimeException;

    invoke-virtual {p1, p0}, Lcom/android/carsdk/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/android/carsdk/protobuf/MessageLite;)Lcom/android/carsdk/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 6744
    :goto_4
    throw p1

    .line 6748
    :cond_9
    :pswitch_2
    sget-object p1, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$TollLaneInfo;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuXNgpNaviInfo$TollLaneInfo;

    return-object p1

    .line 6688
    :pswitch_3
    check-cast p2, Lcom/android/carsdk/protobuf/GeneratedMessageLite$Visitor;

    .line 6689
    check-cast p3, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$TollLaneInfo;

    .line 6690
    iget-object p1, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$TollLaneInfo;->tollGateInfo_:Lcom/android/carsdk/protobuf/Internal$IntList;

    iget-object p3, p3, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$TollLaneInfo;->tollGateInfo_:Lcom/android/carsdk/protobuf/Internal$IntList;

    invoke-interface {p2, p1, p3}, Lcom/android/carsdk/protobuf/GeneratedMessageLite$Visitor;->visitIntList(Lcom/android/carsdk/protobuf/Internal$IntList;Lcom/android/carsdk/protobuf/Internal$IntList;)Lcom/android/carsdk/protobuf/Internal$IntList;

    move-result-object p1

    iput-object p1, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$TollLaneInfo;->tollGateInfo_:Lcom/android/carsdk/protobuf/Internal$IntList;

    .line 6691
    sget-object p1, Lcom/android/carsdk/protobuf/GeneratedMessageLite$MergeFromVisitor;->INSTANCE:Lcom/android/carsdk/protobuf/GeneratedMessageLite$MergeFromVisitor;

    return-object p0

    .line 6685
    :pswitch_4
    new-instance p1, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$TollLaneInfo$Builder;

    invoke-direct {p1, v0}, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$TollLaneInfo$Builder;-><init>(Landroid/car/hardware/xpu/XpuXNgpNaviInfo$1;)V

    return-object p1

    .line 6681
    :pswitch_5
    iget-object p1, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$TollLaneInfo;->tollGateInfo_:Lcom/android/carsdk/protobuf/Internal$IntList;

    invoke-interface {p1}, Lcom/android/carsdk/protobuf/Internal$IntList;->makeImmutable()V

    return-object v0

    .line 6678
    :pswitch_6
    sget-object p1, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$TollLaneInfo;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuXNgpNaviInfo$TollLaneInfo;

    return-object p1

    .line 6675
    :pswitch_7
    new-instance p1, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$TollLaneInfo;

    invoke-direct {p1}, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$TollLaneInfo;-><init>()V

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

.method public getSerializedSize()I
    .locals 4

    .line 6430
    iget v0, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$TollLaneInfo;->memoizedSerializedSize:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    return v0

    :cond_0
    const/4 v0, 0x0

    move v1, v0

    move v2, v1

    .line 6436
    :goto_0
    iget-object v3, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$TollLaneInfo;->tollGateInfo_:Lcom/android/carsdk/protobuf/Internal$IntList;

    invoke-interface {v3}, Lcom/android/carsdk/protobuf/Internal$IntList;->size()I

    move-result v3

    if-ge v1, v3, :cond_1

    .line 6437
    iget-object v3, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$TollLaneInfo;->tollGateInfo_:Lcom/android/carsdk/protobuf/Internal$IntList;

    .line 6438
    invoke-interface {v3, v1}, Lcom/android/carsdk/protobuf/Internal$IntList;->getInt(I)I

    move-result v3

    invoke-static {v3}, Lcom/android/carsdk/protobuf/CodedOutputStream;->computeEnumSizeNoTag(I)I

    move-result v3

    add-int/2addr v2, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    add-int/2addr v0, v2

    .line 6441
    iget-object v1, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$TollLaneInfo;->tollGateInfo_:Lcom/android/carsdk/protobuf/Internal$IntList;

    invoke-interface {v1}, Lcom/android/carsdk/protobuf/Internal$IntList;->size()I

    move-result v1

    mul-int/lit8 v1, v1, 0x1

    add-int/2addr v0, v1

    .line 6443
    iput v0, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$TollLaneInfo;->memoizedSerializedSize:I

    return v0
.end method

.method public getTollGateInfo(I)Landroid/car/hardware/xpu/XpuXNgpNaviInfo$TollLaneType;
    .locals 2

    .line 6301
    sget-object v0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$TollLaneInfo;->tollGateInfo_converter_:Lcom/android/carsdk/protobuf/Internal$ListAdapter$Converter;

    iget-object v1, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$TollLaneInfo;->tollGateInfo_:Lcom/android/carsdk/protobuf/Internal$IntList;

    invoke-interface {v1, p1}, Lcom/android/carsdk/protobuf/Internal$IntList;->getInt(I)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/android/carsdk/protobuf/Internal$ListAdapter$Converter;->convert(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$TollLaneType;

    return-object p1
.end method

.method public getTollGateInfoCount()I
    .locals 1

    .line 6291
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$TollLaneInfo;->tollGateInfo_:Lcom/android/carsdk/protobuf/Internal$IntList;

    invoke-interface {v0}, Lcom/android/carsdk/protobuf/Internal$IntList;->size()I

    move-result v0

    return v0
.end method

.method public getTollGateInfoList()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/car/hardware/xpu/XpuXNgpNaviInfo$TollLaneType;",
            ">;"
        }
    .end annotation

    .line 6280
    new-instance v0, Lcom/android/carsdk/protobuf/Internal$ListAdapter;

    iget-object v1, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$TollLaneInfo;->tollGateInfo_:Lcom/android/carsdk/protobuf/Internal$IntList;

    sget-object v2, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$TollLaneInfo;->tollGateInfo_converter_:Lcom/android/carsdk/protobuf/Internal$ListAdapter$Converter;

    invoke-direct {v0, v1, v2}, Lcom/android/carsdk/protobuf/Internal$ListAdapter;-><init>(Ljava/util/List;Lcom/android/carsdk/protobuf/Internal$ListAdapter$Converter;)V

    return-object v0
.end method

.method public getTollGateInfoValue(I)I
    .locals 1

    .line 6322
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$TollLaneInfo;->tollGateInfo_:Lcom/android/carsdk/protobuf/Internal$IntList;

    invoke-interface {v0, p1}, Lcom/android/carsdk/protobuf/Internal$IntList;->getInt(I)I

    move-result p1

    return p1
.end method

.method public getTollGateInfoValueList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 6312
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$TollLaneInfo;->tollGateInfo_:Lcom/android/carsdk/protobuf/Internal$IntList;

    return-object v0
.end method

.method public writeTo(Lcom/android/carsdk/protobuf/CodedOutputStream;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 6423
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$TollLaneInfo;->getSerializedSize()I

    const/4 v0, 0x0

    .line 6424
    :goto_0
    iget-object v1, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$TollLaneInfo;->tollGateInfo_:Lcom/android/carsdk/protobuf/Internal$IntList;

    invoke-interface {v1}, Lcom/android/carsdk/protobuf/Internal$IntList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 6425
    iget-object v1, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$TollLaneInfo;->tollGateInfo_:Lcom/android/carsdk/protobuf/Internal$IntList;

    invoke-interface {v1, v0}, Lcom/android/carsdk/protobuf/Internal$IntList;->getInt(I)I

    move-result v1

    const/4 v2, 0x1

    invoke-virtual {p1, v2, v1}, Lcom/android/carsdk/protobuf/CodedOutputStream;->writeEnum(II)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method
