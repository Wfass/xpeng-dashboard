.class public final Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$TollLaneInfo;
.super Lcom/android/carsdk/protobuf/GeneratedMessageLite;
.source "XpuXNgpNaviInfoVW.java"

# interfaces
.implements Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$TollLaneInfoOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "TollLaneInfo"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$TollLaneInfo$Builder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/carsdk/protobuf/GeneratedMessageLite<",
        "Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$TollLaneInfo;",
        "Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$TollLaneInfo$Builder;",
        ">;",
        "Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$TollLaneInfoOrBuilder;"
    }
.end annotation


# static fields
.field private static final DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$TollLaneInfo;

.field private static volatile PARSER:Lcom/android/carsdk/protobuf/Parser; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/carsdk/protobuf/Parser<",
            "Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$TollLaneInfo;",
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
            "Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$TollLaneType;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private tollGateInfo_:Lcom/android/carsdk/protobuf/Internal$IntList;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 5914
    new-instance v0, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$TollLaneInfo$1;

    invoke-direct {v0}, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$TollLaneInfo$1;-><init>()V

    sput-object v0, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$TollLaneInfo;->tollGateInfo_converter_:Lcom/android/carsdk/protobuf/Internal$ListAdapter$Converter;

    .line 6417
    new-instance v0, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$TollLaneInfo;

    invoke-direct {v0}, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$TollLaneInfo;-><init>()V

    sput-object v0, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$TollLaneInfo;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$TollLaneInfo;

    .line 6418
    invoke-virtual {v0}, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$TollLaneInfo;->makeImmutable()V

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 5908
    invoke-direct {p0}, Lcom/android/carsdk/protobuf/GeneratedMessageLite;-><init>()V

    .line 5909
    invoke-static {}, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$TollLaneInfo;->emptyIntList()Lcom/android/carsdk/protobuf/Internal$IntList;

    move-result-object v0

    iput-object v0, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$TollLaneInfo;->tollGateInfo_:Lcom/android/carsdk/protobuf/Internal$IntList;

    return-void
.end method

.method static synthetic access$7100()Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$TollLaneInfo;
    .locals 1

    .line 5903
    sget-object v0, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$TollLaneInfo;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$TollLaneInfo;

    return-object v0
.end method

.method static synthetic access$7200(Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$TollLaneInfo;ILandroid/car/hardware/xpu/XpuXNgpNaviInfoVW$TollLaneType;)V
    .locals 0

    .line 5903
    invoke-direct {p0, p1, p2}, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$TollLaneInfo;->setTollGateInfo(ILandroid/car/hardware/xpu/XpuXNgpNaviInfoVW$TollLaneType;)V

    return-void
.end method

.method static synthetic access$7300(Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$TollLaneInfo;Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$TollLaneType;)V
    .locals 0

    .line 5903
    invoke-direct {p0, p1}, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$TollLaneInfo;->addTollGateInfo(Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$TollLaneType;)V

    return-void
.end method

.method static synthetic access$7400(Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$TollLaneInfo;Ljava/lang/Iterable;)V
    .locals 0

    .line 5903
    invoke-direct {p0, p1}, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$TollLaneInfo;->addAllTollGateInfo(Ljava/lang/Iterable;)V

    return-void
.end method

.method static synthetic access$7500(Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$TollLaneInfo;)V
    .locals 0

    .line 5903
    invoke-direct {p0}, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$TollLaneInfo;->clearTollGateInfo()V

    return-void
.end method

.method static synthetic access$7600(Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$TollLaneInfo;II)V
    .locals 0

    .line 5903
    invoke-direct {p0, p1, p2}, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$TollLaneInfo;->setTollGateInfoValue(II)V

    return-void
.end method

.method static synthetic access$7700(Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$TollLaneInfo;I)V
    .locals 0

    .line 5903
    invoke-direct {p0, p1}, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$TollLaneInfo;->addTollGateInfoValue(I)V

    return-void
.end method

.method static synthetic access$7800(Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$TollLaneInfo;Ljava/lang/Iterable;)V
    .locals 0

    .line 5903
    invoke-direct {p0, p1}, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$TollLaneInfo;->addAllTollGateInfoValue(Ljava/lang/Iterable;)V

    return-void
.end method

.method private addAllTollGateInfo(Ljava/lang/Iterable;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$TollLaneType;",
            ">;)V"
        }
    .end annotation

    .line 6018
    invoke-direct {p0}, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$TollLaneInfo;->ensureTollGateInfoIsMutable()V

    .line 6019
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$TollLaneType;

    .line 6020
    iget-object v1, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$TollLaneInfo;->tollGateInfo_:Lcom/android/carsdk/protobuf/Internal$IntList;

    invoke-virtual {v0}, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$TollLaneType;->getNumber()I

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

    .line 6065
    invoke-direct {p0}, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$TollLaneInfo;->ensureTollGateInfoIsMutable()V

    .line 6066
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

    .line 6067
    iget-object v1, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$TollLaneInfo;->tollGateInfo_:Lcom/android/carsdk/protobuf/Internal$IntList;

    invoke-interface {v1, v0}, Lcom/android/carsdk/protobuf/Internal$IntList;->addInt(I)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private addTollGateInfo(Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$TollLaneType;)V
    .locals 1

    .line 6004
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6006
    invoke-direct {p0}, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$TollLaneInfo;->ensureTollGateInfoIsMutable()V

    .line 6007
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$TollLaneInfo;->tollGateInfo_:Lcom/android/carsdk/protobuf/Internal$IntList;

    invoke-virtual {p1}, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$TollLaneType;->getNumber()I

    move-result p1

    invoke-interface {v0, p1}, Lcom/android/carsdk/protobuf/Internal$IntList;->addInt(I)V

    return-void
.end method

.method private addTollGateInfoValue(I)V
    .locals 1

    .line 6053
    invoke-direct {p0}, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$TollLaneInfo;->ensureTollGateInfoIsMutable()V

    .line 6054
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$TollLaneInfo;->tollGateInfo_:Lcom/android/carsdk/protobuf/Internal$IntList;

    invoke-interface {v0, p1}, Lcom/android/carsdk/protobuf/Internal$IntList;->addInt(I)V

    return-void
.end method

.method private clearTollGateInfo()V
    .locals 1

    .line 6031
    invoke-static {}, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$TollLaneInfo;->emptyIntList()Lcom/android/carsdk/protobuf/Internal$IntList;

    move-result-object v0

    iput-object v0, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$TollLaneInfo;->tollGateInfo_:Lcom/android/carsdk/protobuf/Internal$IntList;

    return-void
.end method

.method private ensureTollGateInfoIsMutable()V
    .locals 1

    .line 5975
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$TollLaneInfo;->tollGateInfo_:Lcom/android/carsdk/protobuf/Internal$IntList;

    invoke-interface {v0}, Lcom/android/carsdk/protobuf/Internal$IntList;->isModifiable()Z

    move-result v0

    if-nez v0, :cond_0

    .line 5976
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$TollLaneInfo;->tollGateInfo_:Lcom/android/carsdk/protobuf/Internal$IntList;

    .line 5977
    invoke-static {v0}, Lcom/android/carsdk/protobuf/GeneratedMessageLite;->mutableCopy(Lcom/android/carsdk/protobuf/Internal$IntList;)Lcom/android/carsdk/protobuf/Internal$IntList;

    move-result-object v0

    iput-object v0, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$TollLaneInfo;->tollGateInfo_:Lcom/android/carsdk/protobuf/Internal$IntList;

    :cond_0
    return-void
.end method

.method public static getDefaultInstance()Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$TollLaneInfo;
    .locals 1

    .line 6422
    sget-object v0, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$TollLaneInfo;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$TollLaneInfo;

    return-object v0
.end method

.method public static newBuilder()Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$TollLaneInfo$Builder;
    .locals 1

    .line 6159
    sget-object v0, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$TollLaneInfo;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$TollLaneInfo;

    invoke-virtual {v0}, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$TollLaneInfo;->toBuilder()Lcom/android/carsdk/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$TollLaneInfo$Builder;

    return-object v0
.end method

.method public static newBuilder(Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$TollLaneInfo;)Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$TollLaneInfo$Builder;
    .locals 1

    .line 6162
    sget-object v0, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$TollLaneInfo;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$TollLaneInfo;

    invoke-virtual {v0}, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$TollLaneInfo;->toBuilder()Lcom/android/carsdk/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$TollLaneInfo$Builder;

    invoke-virtual {v0, p0}, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$TollLaneInfo$Builder;->mergeFrom(Lcom/android/carsdk/protobuf/GeneratedMessageLite;)Lcom/android/carsdk/protobuf/GeneratedMessageLite$Builder;

    move-result-object p0

    check-cast p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$TollLaneInfo$Builder;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$TollLaneInfo;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 6136
    sget-object v0, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$TollLaneInfo;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$TollLaneInfo;

    invoke-static {v0, p0}, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$TollLaneInfo;->parseDelimitedFrom(Lcom/android/carsdk/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$TollLaneInfo;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/android/carsdk/protobuf/ExtensionRegistryLite;)Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$TollLaneInfo;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 6142
    sget-object v0, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$TollLaneInfo;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$TollLaneInfo;

    invoke-static {v0, p0, p1}, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$TollLaneInfo;->parseDelimitedFrom(Lcom/android/carsdk/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/android/carsdk/protobuf/ExtensionRegistryLite;)Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$TollLaneInfo;

    return-object p0
.end method

.method public static parseFrom(Lcom/android/carsdk/protobuf/ByteString;)Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$TollLaneInfo;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/carsdk/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 6100
    sget-object v0, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$TollLaneInfo;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$TollLaneInfo;

    invoke-static {v0, p0}, Lcom/android/carsdk/protobuf/GeneratedMessageLite;->parseFrom(Lcom/android/carsdk/protobuf/GeneratedMessageLite;Lcom/android/carsdk/protobuf/ByteString;)Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$TollLaneInfo;

    return-object p0
.end method

.method public static parseFrom(Lcom/android/carsdk/protobuf/ByteString;Lcom/android/carsdk/protobuf/ExtensionRegistryLite;)Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$TollLaneInfo;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/carsdk/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 6107
    sget-object v0, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$TollLaneInfo;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$TollLaneInfo;

    invoke-static {v0, p0, p1}, Lcom/android/carsdk/protobuf/GeneratedMessageLite;->parseFrom(Lcom/android/carsdk/protobuf/GeneratedMessageLite;Lcom/android/carsdk/protobuf/ByteString;Lcom/android/carsdk/protobuf/ExtensionRegistryLite;)Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$TollLaneInfo;

    return-object p0
.end method

.method public static parseFrom(Lcom/android/carsdk/protobuf/CodedInputStream;)Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$TollLaneInfo;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 6147
    sget-object v0, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$TollLaneInfo;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$TollLaneInfo;

    invoke-static {v0, p0}, Lcom/android/carsdk/protobuf/GeneratedMessageLite;->parseFrom(Lcom/android/carsdk/protobuf/GeneratedMessageLite;Lcom/android/carsdk/protobuf/CodedInputStream;)Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$TollLaneInfo;

    return-object p0
.end method

.method public static parseFrom(Lcom/android/carsdk/protobuf/CodedInputStream;Lcom/android/carsdk/protobuf/ExtensionRegistryLite;)Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$TollLaneInfo;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 6154
    sget-object v0, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$TollLaneInfo;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$TollLaneInfo;

    invoke-static {v0, p0, p1}, Lcom/android/carsdk/protobuf/GeneratedMessageLite;->parseFrom(Lcom/android/carsdk/protobuf/GeneratedMessageLite;Lcom/android/carsdk/protobuf/CodedInputStream;Lcom/android/carsdk/protobuf/ExtensionRegistryLite;)Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$TollLaneInfo;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$TollLaneInfo;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 6124
    sget-object v0, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$TollLaneInfo;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$TollLaneInfo;

    invoke-static {v0, p0}, Lcom/android/carsdk/protobuf/GeneratedMessageLite;->parseFrom(Lcom/android/carsdk/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$TollLaneInfo;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/android/carsdk/protobuf/ExtensionRegistryLite;)Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$TollLaneInfo;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 6131
    sget-object v0, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$TollLaneInfo;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$TollLaneInfo;

    invoke-static {v0, p0, p1}, Lcom/android/carsdk/protobuf/GeneratedMessageLite;->parseFrom(Lcom/android/carsdk/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/android/carsdk/protobuf/ExtensionRegistryLite;)Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$TollLaneInfo;

    return-object p0
.end method

.method public static parseFrom([B)Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$TollLaneInfo;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/carsdk/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 6112
    sget-object v0, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$TollLaneInfo;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$TollLaneInfo;

    invoke-static {v0, p0}, Lcom/android/carsdk/protobuf/GeneratedMessageLite;->parseFrom(Lcom/android/carsdk/protobuf/GeneratedMessageLite;[B)Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$TollLaneInfo;

    return-object p0
.end method

.method public static parseFrom([BLcom/android/carsdk/protobuf/ExtensionRegistryLite;)Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$TollLaneInfo;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/carsdk/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 6119
    sget-object v0, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$TollLaneInfo;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$TollLaneInfo;

    invoke-static {v0, p0, p1}, Lcom/android/carsdk/protobuf/GeneratedMessageLite;->parseFrom(Lcom/android/carsdk/protobuf/GeneratedMessageLite;[BLcom/android/carsdk/protobuf/ExtensionRegistryLite;)Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$TollLaneInfo;

    return-object p0
.end method

.method public static parser()Lcom/android/carsdk/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/android/carsdk/protobuf/Parser<",
            "Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$TollLaneInfo;",
            ">;"
        }
    .end annotation

    .line 6428
    sget-object v0, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$TollLaneInfo;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$TollLaneInfo;

    invoke-virtual {v0}, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$TollLaneInfo;->getParserForType()Lcom/android/carsdk/protobuf/Parser;

    move-result-object v0

    return-object v0
.end method

.method private setTollGateInfo(ILandroid/car/hardware/xpu/XpuXNgpNaviInfoVW$TollLaneType;)V
    .locals 1

    .line 5990
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 5992
    invoke-direct {p0}, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$TollLaneInfo;->ensureTollGateInfoIsMutable()V

    .line 5993
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$TollLaneInfo;->tollGateInfo_:Lcom/android/carsdk/protobuf/Internal$IntList;

    invoke-virtual {p2}, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$TollLaneType;->getNumber()I

    move-result p2

    invoke-interface {v0, p1, p2}, Lcom/android/carsdk/protobuf/Internal$IntList;->setInt(II)I

    return-void
.end method

.method private setTollGateInfoValue(II)V
    .locals 1

    .line 6042
    invoke-direct {p0}, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$TollLaneInfo;->ensureTollGateInfoIsMutable()V

    .line 6043
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$TollLaneInfo;->tollGateInfo_:Lcom/android/carsdk/protobuf/Internal$IntList;

    invoke-interface {v0, p1, p2}, Lcom/android/carsdk/protobuf/Internal$IntList;->setInt(II)I

    return-void
.end method


# virtual methods
.method protected final dynamicMethod(Lcom/android/carsdk/protobuf/GeneratedMessageLite$MethodToInvoke;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 6323
    sget-object v0, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$1;->$SwitchMap$com$google$protobuf$GeneratedMessageLite$MethodToInvoke:[I

    invoke-virtual {p1}, Lcom/android/carsdk/protobuf/GeneratedMessageLite$MethodToInvoke;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x0

    packed-switch p1, :pswitch_data_0

    .line 6410
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1

    .line 6401
    :pswitch_0
    sget-object p1, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$TollLaneInfo;->PARSER:Lcom/android/carsdk/protobuf/Parser;

    if-nez p1, :cond_1

    const-class p1, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$TollLaneInfo;

    monitor-enter p1

    .line 6402
    :try_start_0
    sget-object p2, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$TollLaneInfo;->PARSER:Lcom/android/carsdk/protobuf/Parser;

    if-nez p2, :cond_0

    .line 6403
    new-instance p2, Lcom/android/carsdk/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;

    sget-object p3, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$TollLaneInfo;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$TollLaneInfo;

    invoke-direct {p2, p3}, Lcom/android/carsdk/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;-><init>(Lcom/android/carsdk/protobuf/GeneratedMessageLite;)V

    sput-object p2, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$TollLaneInfo;->PARSER:Lcom/android/carsdk/protobuf/Parser;

    .line 6405
    :cond_0
    monitor-exit p1

    goto :goto_0

    :catchall_0
    move-exception p2

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p2

    .line 6407
    :cond_1
    :goto_0
    sget-object p1, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$TollLaneInfo;->PARSER:Lcom/android/carsdk/protobuf/Parser;

    return-object p1

    .line 6347
    :pswitch_1
    check-cast p2, Lcom/android/carsdk/protobuf/CodedInputStream;

    .line 6349
    check-cast p3, Lcom/android/carsdk/protobuf/ExtensionRegistryLite;

    const/4 p1, 0x0

    :cond_2
    :goto_1
    if-nez p1, :cond_9

    .line 6354
    :try_start_1
    invoke-virtual {p2}, Lcom/android/carsdk/protobuf/CodedInputStream;->readTag()I

    move-result p3

    const/4 v0, 0x1

    if-eqz p3, :cond_8

    const/16 v1, 0x8

    if-eq p3, v1, :cond_6

    const/16 v1, 0xa

    if-eq p3, v1, :cond_3

    .line 6360
    invoke-virtual {p2, p3}, Lcom/android/carsdk/protobuf/CodedInputStream;->skipField(I)Z

    move-result p3

    if-nez p3, :cond_2

    goto :goto_3

    .line 6374
    :cond_3
    iget-object p3, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$TollLaneInfo;->tollGateInfo_:Lcom/android/carsdk/protobuf/Internal$IntList;

    invoke-interface {p3}, Lcom/android/carsdk/protobuf/Internal$IntList;->isModifiable()Z

    move-result p3

    if-nez p3, :cond_4

    .line 6375
    iget-object p3, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$TollLaneInfo;->tollGateInfo_:Lcom/android/carsdk/protobuf/Internal$IntList;

    .line 6376
    invoke-static {p3}, Lcom/android/carsdk/protobuf/GeneratedMessageLite;->mutableCopy(Lcom/android/carsdk/protobuf/Internal$IntList;)Lcom/android/carsdk/protobuf/Internal$IntList;

    move-result-object p3

    iput-object p3, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$TollLaneInfo;->tollGateInfo_:Lcom/android/carsdk/protobuf/Internal$IntList;

    .line 6378
    :cond_4
    invoke-virtual {p2}, Lcom/android/carsdk/protobuf/CodedInputStream;->readRawVarint32()I

    move-result p3

    .line 6379
    invoke-virtual {p2, p3}, Lcom/android/carsdk/protobuf/CodedInputStream;->pushLimit(I)I

    move-result p3

    .line 6380
    :goto_2
    invoke-virtual {p2}, Lcom/android/carsdk/protobuf/CodedInputStream;->getBytesUntilLimit()I

    move-result v0

    if-lez v0, :cond_5

    .line 6381
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$TollLaneInfo;->tollGateInfo_:Lcom/android/carsdk/protobuf/Internal$IntList;

    invoke-virtual {p2}, Lcom/android/carsdk/protobuf/CodedInputStream;->readEnum()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/android/carsdk/protobuf/Internal$IntList;->addInt(I)V

    goto :goto_2

    .line 6383
    :cond_5
    invoke-virtual {p2, p3}, Lcom/android/carsdk/protobuf/CodedInputStream;->popLimit(I)V

    goto :goto_1

    .line 6366
    :cond_6
    iget-object p3, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$TollLaneInfo;->tollGateInfo_:Lcom/android/carsdk/protobuf/Internal$IntList;

    invoke-interface {p3}, Lcom/android/carsdk/protobuf/Internal$IntList;->isModifiable()Z

    move-result p3

    if-nez p3, :cond_7

    .line 6367
    iget-object p3, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$TollLaneInfo;->tollGateInfo_:Lcom/android/carsdk/protobuf/Internal$IntList;

    .line 6368
    invoke-static {p3}, Lcom/android/carsdk/protobuf/GeneratedMessageLite;->mutableCopy(Lcom/android/carsdk/protobuf/Internal$IntList;)Lcom/android/carsdk/protobuf/Internal$IntList;

    move-result-object p3

    iput-object p3, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$TollLaneInfo;->tollGateInfo_:Lcom/android/carsdk/protobuf/Internal$IntList;

    .line 6370
    :cond_7
    iget-object p3, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$TollLaneInfo;->tollGateInfo_:Lcom/android/carsdk/protobuf/Internal$IntList;

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

    .line 6391
    :try_start_2
    new-instance p2, Ljava/lang/RuntimeException;

    new-instance p3, Lcom/android/carsdk/protobuf/InvalidProtocolBufferException;

    .line 6393
    invoke-virtual {p1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p3, p1}, Lcom/android/carsdk/protobuf/InvalidProtocolBufferException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, p0}, Lcom/android/carsdk/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/android/carsdk/protobuf/MessageLite;)Lcom/android/carsdk/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p2

    :catch_1
    move-exception p1

    .line 6389
    new-instance p2, Ljava/lang/RuntimeException;

    invoke-virtual {p1, p0}, Lcom/android/carsdk/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/android/carsdk/protobuf/MessageLite;)Lcom/android/carsdk/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 6394
    :goto_4
    throw p1

    .line 6398
    :cond_9
    :pswitch_2
    sget-object p1, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$TollLaneInfo;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$TollLaneInfo;

    return-object p1

    .line 6338
    :pswitch_3
    check-cast p2, Lcom/android/carsdk/protobuf/GeneratedMessageLite$Visitor;

    .line 6339
    check-cast p3, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$TollLaneInfo;

    .line 6340
    iget-object p1, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$TollLaneInfo;->tollGateInfo_:Lcom/android/carsdk/protobuf/Internal$IntList;

    iget-object p3, p3, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$TollLaneInfo;->tollGateInfo_:Lcom/android/carsdk/protobuf/Internal$IntList;

    invoke-interface {p2, p1, p3}, Lcom/android/carsdk/protobuf/GeneratedMessageLite$Visitor;->visitIntList(Lcom/android/carsdk/protobuf/Internal$IntList;Lcom/android/carsdk/protobuf/Internal$IntList;)Lcom/android/carsdk/protobuf/Internal$IntList;

    move-result-object p1

    iput-object p1, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$TollLaneInfo;->tollGateInfo_:Lcom/android/carsdk/protobuf/Internal$IntList;

    .line 6341
    sget-object p1, Lcom/android/carsdk/protobuf/GeneratedMessageLite$MergeFromVisitor;->INSTANCE:Lcom/android/carsdk/protobuf/GeneratedMessageLite$MergeFromVisitor;

    return-object p0

    .line 6335
    :pswitch_4
    new-instance p1, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$TollLaneInfo$Builder;

    invoke-direct {p1, v0}, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$TollLaneInfo$Builder;-><init>(Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$1;)V

    return-object p1

    .line 6331
    :pswitch_5
    iget-object p1, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$TollLaneInfo;->tollGateInfo_:Lcom/android/carsdk/protobuf/Internal$IntList;

    invoke-interface {p1}, Lcom/android/carsdk/protobuf/Internal$IntList;->makeImmutable()V

    return-object v0

    .line 6328
    :pswitch_6
    sget-object p1, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$TollLaneInfo;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$TollLaneInfo;

    return-object p1

    .line 6325
    :pswitch_7
    new-instance p1, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$TollLaneInfo;

    invoke-direct {p1}, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$TollLaneInfo;-><init>()V

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

    .line 6080
    iget v0, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$TollLaneInfo;->memoizedSerializedSize:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    return v0

    :cond_0
    const/4 v0, 0x0

    move v1, v0

    move v2, v1

    .line 6086
    :goto_0
    iget-object v3, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$TollLaneInfo;->tollGateInfo_:Lcom/android/carsdk/protobuf/Internal$IntList;

    invoke-interface {v3}, Lcom/android/carsdk/protobuf/Internal$IntList;->size()I

    move-result v3

    if-ge v1, v3, :cond_1

    .line 6087
    iget-object v3, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$TollLaneInfo;->tollGateInfo_:Lcom/android/carsdk/protobuf/Internal$IntList;

    .line 6088
    invoke-interface {v3, v1}, Lcom/android/carsdk/protobuf/Internal$IntList;->getInt(I)I

    move-result v3

    invoke-static {v3}, Lcom/android/carsdk/protobuf/CodedOutputStream;->computeEnumSizeNoTag(I)I

    move-result v3

    add-int/2addr v2, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    add-int/2addr v0, v2

    .line 6091
    iget-object v1, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$TollLaneInfo;->tollGateInfo_:Lcom/android/carsdk/protobuf/Internal$IntList;

    invoke-interface {v1}, Lcom/android/carsdk/protobuf/Internal$IntList;->size()I

    move-result v1

    mul-int/lit8 v1, v1, 0x1

    add-int/2addr v0, v1

    .line 6093
    iput v0, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$TollLaneInfo;->memoizedSerializedSize:I

    return v0
.end method

.method public getTollGateInfo(I)Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$TollLaneType;
    .locals 2

    .line 5951
    sget-object v0, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$TollLaneInfo;->tollGateInfo_converter_:Lcom/android/carsdk/protobuf/Internal$ListAdapter$Converter;

    iget-object v1, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$TollLaneInfo;->tollGateInfo_:Lcom/android/carsdk/protobuf/Internal$IntList;

    invoke-interface {v1, p1}, Lcom/android/carsdk/protobuf/Internal$IntList;->getInt(I)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/android/carsdk/protobuf/Internal$ListAdapter$Converter;->convert(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$TollLaneType;

    return-object p1
.end method

.method public getTollGateInfoCount()I
    .locals 1

    .line 5941
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$TollLaneInfo;->tollGateInfo_:Lcom/android/carsdk/protobuf/Internal$IntList;

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
            "Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$TollLaneType;",
            ">;"
        }
    .end annotation

    .line 5930
    new-instance v0, Lcom/android/carsdk/protobuf/Internal$ListAdapter;

    iget-object v1, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$TollLaneInfo;->tollGateInfo_:Lcom/android/carsdk/protobuf/Internal$IntList;

    sget-object v2, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$TollLaneInfo;->tollGateInfo_converter_:Lcom/android/carsdk/protobuf/Internal$ListAdapter$Converter;

    invoke-direct {v0, v1, v2}, Lcom/android/carsdk/protobuf/Internal$ListAdapter;-><init>(Ljava/util/List;Lcom/android/carsdk/protobuf/Internal$ListAdapter$Converter;)V

    return-object v0
.end method

.method public getTollGateInfoValue(I)I
    .locals 1

    .line 5972
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$TollLaneInfo;->tollGateInfo_:Lcom/android/carsdk/protobuf/Internal$IntList;

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

    .line 5962
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$TollLaneInfo;->tollGateInfo_:Lcom/android/carsdk/protobuf/Internal$IntList;

    return-object v0
.end method

.method public writeTo(Lcom/android/carsdk/protobuf/CodedOutputStream;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 6073
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$TollLaneInfo;->getSerializedSize()I

    const/4 v0, 0x0

    .line 6074
    :goto_0
    iget-object v1, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$TollLaneInfo;->tollGateInfo_:Lcom/android/carsdk/protobuf/Internal$IntList;

    invoke-interface {v1}, Lcom/android/carsdk/protobuf/Internal$IntList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 6075
    iget-object v1, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfoVW$TollLaneInfo;->tollGateInfo_:Lcom/android/carsdk/protobuf/Internal$IntList;

    invoke-interface {v1, v0}, Lcom/android/carsdk/protobuf/Internal$IntList;->getInt(I)I

    move-result v1

    const/4 v2, 0x1

    invoke-virtual {p1, v2, v1}, Lcom/android/carsdk/protobuf/CodedOutputStream;->writeEnum(II)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method
