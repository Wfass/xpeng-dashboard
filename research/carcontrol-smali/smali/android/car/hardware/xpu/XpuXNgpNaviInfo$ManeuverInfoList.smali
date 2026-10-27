.class public final Landroid/car/hardware/xpu/XpuXNgpNaviInfo$ManeuverInfoList;
.super Lcom/android/carsdk/protobuf/GeneratedMessageLite;
.source "XpuXNgpNaviInfo.java"

# interfaces
.implements Landroid/car/hardware/xpu/XpuXNgpNaviInfo$ManeuverInfoListOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/car/hardware/xpu/XpuXNgpNaviInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ManeuverInfoList"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/car/hardware/xpu/XpuXNgpNaviInfo$ManeuverInfoList$Builder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/carsdk/protobuf/GeneratedMessageLite<",
        "Landroid/car/hardware/xpu/XpuXNgpNaviInfo$ManeuverInfoList;",
        "Landroid/car/hardware/xpu/XpuXNgpNaviInfo$ManeuverInfoList$Builder;",
        ">;",
        "Landroid/car/hardware/xpu/XpuXNgpNaviInfo$ManeuverInfoListOrBuilder;"
    }
.end annotation


# static fields
.field private static final DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuXNgpNaviInfo$ManeuverInfoList;

.field public static final INFOS_FIELD_NUMBER:I = 0x1

.field private static volatile PARSER:Lcom/android/carsdk/protobuf/Parser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/carsdk/protobuf/Parser<",
            "Landroid/car/hardware/xpu/XpuXNgpNaviInfo$ManeuverInfoList;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private infos_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/carsdk/protobuf/Internal$ProtobufList<",
            "Landroid/car/hardware/xpu/XpuXNgpNaviInfo$ManeuverInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 5857
    new-instance v0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$ManeuverInfoList;

    invoke-direct {v0}, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$ManeuverInfoList;-><init>()V

    sput-object v0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$ManeuverInfoList;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuXNgpNaviInfo$ManeuverInfoList;

    .line 5858
    invoke-virtual {v0}, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$ManeuverInfoList;->makeImmutable()V

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 5344
    invoke-direct {p0}, Lcom/android/carsdk/protobuf/GeneratedMessageLite;-><init>()V

    .line 5345
    invoke-static {}, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$ManeuverInfoList;->emptyProtobufList()Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    move-result-object v0

    iput-object v0, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$ManeuverInfoList;->infos_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    return-void
.end method

.method static synthetic access$6100()Landroid/car/hardware/xpu/XpuXNgpNaviInfo$ManeuverInfoList;
    .locals 1

    .line 5339
    sget-object v0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$ManeuverInfoList;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuXNgpNaviInfo$ManeuverInfoList;

    return-object v0
.end method

.method static synthetic access$6200(Landroid/car/hardware/xpu/XpuXNgpNaviInfo$ManeuverInfoList;ILandroid/car/hardware/xpu/XpuXNgpNaviInfo$ManeuverInfo;)V
    .locals 0

    .line 5339
    invoke-direct {p0, p1, p2}, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$ManeuverInfoList;->setInfos(ILandroid/car/hardware/xpu/XpuXNgpNaviInfo$ManeuverInfo;)V

    return-void
.end method

.method static synthetic access$6300(Landroid/car/hardware/xpu/XpuXNgpNaviInfo$ManeuverInfoList;ILandroid/car/hardware/xpu/XpuXNgpNaviInfo$ManeuverInfo$Builder;)V
    .locals 0

    .line 5339
    invoke-direct {p0, p1, p2}, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$ManeuverInfoList;->setInfos(ILandroid/car/hardware/xpu/XpuXNgpNaviInfo$ManeuverInfo$Builder;)V

    return-void
.end method

.method static synthetic access$6400(Landroid/car/hardware/xpu/XpuXNgpNaviInfo$ManeuverInfoList;Landroid/car/hardware/xpu/XpuXNgpNaviInfo$ManeuverInfo;)V
    .locals 0

    .line 5339
    invoke-direct {p0, p1}, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$ManeuverInfoList;->addInfos(Landroid/car/hardware/xpu/XpuXNgpNaviInfo$ManeuverInfo;)V

    return-void
.end method

.method static synthetic access$6500(Landroid/car/hardware/xpu/XpuXNgpNaviInfo$ManeuverInfoList;ILandroid/car/hardware/xpu/XpuXNgpNaviInfo$ManeuverInfo;)V
    .locals 0

    .line 5339
    invoke-direct {p0, p1, p2}, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$ManeuverInfoList;->addInfos(ILandroid/car/hardware/xpu/XpuXNgpNaviInfo$ManeuverInfo;)V

    return-void
.end method

.method static synthetic access$6600(Landroid/car/hardware/xpu/XpuXNgpNaviInfo$ManeuverInfoList;Landroid/car/hardware/xpu/XpuXNgpNaviInfo$ManeuverInfo$Builder;)V
    .locals 0

    .line 5339
    invoke-direct {p0, p1}, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$ManeuverInfoList;->addInfos(Landroid/car/hardware/xpu/XpuXNgpNaviInfo$ManeuverInfo$Builder;)V

    return-void
.end method

.method static synthetic access$6700(Landroid/car/hardware/xpu/XpuXNgpNaviInfo$ManeuverInfoList;ILandroid/car/hardware/xpu/XpuXNgpNaviInfo$ManeuverInfo$Builder;)V
    .locals 0

    .line 5339
    invoke-direct {p0, p1, p2}, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$ManeuverInfoList;->addInfos(ILandroid/car/hardware/xpu/XpuXNgpNaviInfo$ManeuverInfo$Builder;)V

    return-void
.end method

.method static synthetic access$6800(Landroid/car/hardware/xpu/XpuXNgpNaviInfo$ManeuverInfoList;Ljava/lang/Iterable;)V
    .locals 0

    .line 5339
    invoke-direct {p0, p1}, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$ManeuverInfoList;->addAllInfos(Ljava/lang/Iterable;)V

    return-void
.end method

.method static synthetic access$6900(Landroid/car/hardware/xpu/XpuXNgpNaviInfo$ManeuverInfoList;)V
    .locals 0

    .line 5339
    invoke-direct {p0}, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$ManeuverInfoList;->clearInfos()V

    return-void
.end method

.method static synthetic access$7000(Landroid/car/hardware/xpu/XpuXNgpNaviInfo$ManeuverInfoList;I)V
    .locals 0

    .line 5339
    invoke-direct {p0, p1}, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$ManeuverInfoList;->removeInfos(I)V

    return-void
.end method

.method private addAllInfos(Ljava/lang/Iterable;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Landroid/car/hardware/xpu/XpuXNgpNaviInfo$ManeuverInfo;",
            ">;)V"
        }
    .end annotation

    .line 5497
    invoke-direct {p0}, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$ManeuverInfoList;->ensureInfosIsMutable()V

    .line 5498
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$ManeuverInfoList;->infos_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    invoke-static {p1, v0}, Lcom/android/carsdk/protobuf/AbstractMessageLite;->addAll(Ljava/lang/Iterable;Ljava/util/Collection;)V

    return-void
.end method

.method private addInfos(ILandroid/car/hardware/xpu/XpuXNgpNaviInfo$ManeuverInfo$Builder;)V
    .locals 1

    .line 5485
    invoke-direct {p0}, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$ManeuverInfoList;->ensureInfosIsMutable()V

    .line 5486
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$ManeuverInfoList;->infos_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    invoke-virtual {p2}, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$ManeuverInfo$Builder;->build()Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object p2

    check-cast p2, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$ManeuverInfo;

    invoke-interface {v0, p1, p2}, Lcom/android/carsdk/protobuf/Internal$ProtobufList;->add(ILjava/lang/Object;)V

    return-void
.end method

.method private addInfos(ILandroid/car/hardware/xpu/XpuXNgpNaviInfo$ManeuverInfo;)V
    .locals 1

    .line 5459
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 5461
    invoke-direct {p0}, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$ManeuverInfoList;->ensureInfosIsMutable()V

    .line 5462
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$ManeuverInfoList;->infos_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1, p2}, Lcom/android/carsdk/protobuf/Internal$ProtobufList;->add(ILjava/lang/Object;)V

    return-void
.end method

.method private addInfos(Landroid/car/hardware/xpu/XpuXNgpNaviInfo$ManeuverInfo$Builder;)V
    .locals 1

    .line 5473
    invoke-direct {p0}, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$ManeuverInfoList;->ensureInfosIsMutable()V

    .line 5474
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$ManeuverInfoList;->infos_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    invoke-virtual {p1}, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$ManeuverInfo$Builder;->build()Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$ManeuverInfo;

    invoke-interface {v0, p1}, Lcom/android/carsdk/protobuf/Internal$ProtobufList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private addInfos(Landroid/car/hardware/xpu/XpuXNgpNaviInfo$ManeuverInfo;)V
    .locals 1

    .line 5444
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 5446
    invoke-direct {p0}, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$ManeuverInfoList;->ensureInfosIsMutable()V

    .line 5447
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$ManeuverInfoList;->infos_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1}, Lcom/android/carsdk/protobuf/Internal$ProtobufList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private clearInfos()V
    .locals 1

    .line 5509
    invoke-static {}, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$ManeuverInfoList;->emptyProtobufList()Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    move-result-object v0

    iput-object v0, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$ManeuverInfoList;->infos_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    return-void
.end method

.method private ensureInfosIsMutable()V
    .locals 1

    .line 5402
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$ManeuverInfoList;->infos_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    invoke-interface {v0}, Lcom/android/carsdk/protobuf/Internal$ProtobufList;->isModifiable()Z

    move-result v0

    if-nez v0, :cond_0

    .line 5403
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$ManeuverInfoList;->infos_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    .line 5404
    invoke-static {v0}, Lcom/android/carsdk/protobuf/GeneratedMessageLite;->mutableCopy(Lcom/android/carsdk/protobuf/Internal$ProtobufList;)Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    move-result-object v0

    iput-object v0, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$ManeuverInfoList;->infos_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    :cond_0
    return-void
.end method

.method public static getDefaultInstance()Landroid/car/hardware/xpu/XpuXNgpNaviInfo$ManeuverInfoList;
    .locals 1

    .line 5862
    sget-object v0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$ManeuverInfoList;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuXNgpNaviInfo$ManeuverInfoList;

    return-object v0
.end method

.method public static newBuilder()Landroid/car/hardware/xpu/XpuXNgpNaviInfo$ManeuverInfoList$Builder;
    .locals 1

    .line 5605
    sget-object v0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$ManeuverInfoList;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuXNgpNaviInfo$ManeuverInfoList;

    invoke-virtual {v0}, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$ManeuverInfoList;->toBuilder()Lcom/android/carsdk/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$ManeuverInfoList$Builder;

    return-object v0
.end method

.method public static newBuilder(Landroid/car/hardware/xpu/XpuXNgpNaviInfo$ManeuverInfoList;)Landroid/car/hardware/xpu/XpuXNgpNaviInfo$ManeuverInfoList$Builder;
    .locals 1

    .line 5608
    sget-object v0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$ManeuverInfoList;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuXNgpNaviInfo$ManeuverInfoList;

    invoke-virtual {v0}, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$ManeuverInfoList;->toBuilder()Lcom/android/carsdk/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$ManeuverInfoList$Builder;

    invoke-virtual {v0, p0}, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$ManeuverInfoList$Builder;->mergeFrom(Lcom/android/carsdk/protobuf/GeneratedMessageLite;)Lcom/android/carsdk/protobuf/GeneratedMessageLite$Builder;

    move-result-object p0

    check-cast p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$ManeuverInfoList$Builder;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Landroid/car/hardware/xpu/XpuXNgpNaviInfo$ManeuverInfoList;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 5582
    sget-object v0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$ManeuverInfoList;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuXNgpNaviInfo$ManeuverInfoList;

    invoke-static {v0, p0}, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$ManeuverInfoList;->parseDelimitedFrom(Lcom/android/carsdk/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$ManeuverInfoList;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/android/carsdk/protobuf/ExtensionRegistryLite;)Landroid/car/hardware/xpu/XpuXNgpNaviInfo$ManeuverInfoList;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 5588
    sget-object v0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$ManeuverInfoList;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuXNgpNaviInfo$ManeuverInfoList;

    invoke-static {v0, p0, p1}, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$ManeuverInfoList;->parseDelimitedFrom(Lcom/android/carsdk/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/android/carsdk/protobuf/ExtensionRegistryLite;)Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$ManeuverInfoList;

    return-object p0
.end method

.method public static parseFrom(Lcom/android/carsdk/protobuf/ByteString;)Landroid/car/hardware/xpu/XpuXNgpNaviInfo$ManeuverInfoList;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/carsdk/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 5546
    sget-object v0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$ManeuverInfoList;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuXNgpNaviInfo$ManeuverInfoList;

    invoke-static {v0, p0}, Lcom/android/carsdk/protobuf/GeneratedMessageLite;->parseFrom(Lcom/android/carsdk/protobuf/GeneratedMessageLite;Lcom/android/carsdk/protobuf/ByteString;)Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$ManeuverInfoList;

    return-object p0
.end method

.method public static parseFrom(Lcom/android/carsdk/protobuf/ByteString;Lcom/android/carsdk/protobuf/ExtensionRegistryLite;)Landroid/car/hardware/xpu/XpuXNgpNaviInfo$ManeuverInfoList;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/carsdk/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 5553
    sget-object v0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$ManeuverInfoList;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuXNgpNaviInfo$ManeuverInfoList;

    invoke-static {v0, p0, p1}, Lcom/android/carsdk/protobuf/GeneratedMessageLite;->parseFrom(Lcom/android/carsdk/protobuf/GeneratedMessageLite;Lcom/android/carsdk/protobuf/ByteString;Lcom/android/carsdk/protobuf/ExtensionRegistryLite;)Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$ManeuverInfoList;

    return-object p0
.end method

.method public static parseFrom(Lcom/android/carsdk/protobuf/CodedInputStream;)Landroid/car/hardware/xpu/XpuXNgpNaviInfo$ManeuverInfoList;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 5593
    sget-object v0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$ManeuverInfoList;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuXNgpNaviInfo$ManeuverInfoList;

    invoke-static {v0, p0}, Lcom/android/carsdk/protobuf/GeneratedMessageLite;->parseFrom(Lcom/android/carsdk/protobuf/GeneratedMessageLite;Lcom/android/carsdk/protobuf/CodedInputStream;)Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$ManeuverInfoList;

    return-object p0
.end method

.method public static parseFrom(Lcom/android/carsdk/protobuf/CodedInputStream;Lcom/android/carsdk/protobuf/ExtensionRegistryLite;)Landroid/car/hardware/xpu/XpuXNgpNaviInfo$ManeuverInfoList;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 5600
    sget-object v0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$ManeuverInfoList;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuXNgpNaviInfo$ManeuverInfoList;

    invoke-static {v0, p0, p1}, Lcom/android/carsdk/protobuf/GeneratedMessageLite;->parseFrom(Lcom/android/carsdk/protobuf/GeneratedMessageLite;Lcom/android/carsdk/protobuf/CodedInputStream;Lcom/android/carsdk/protobuf/ExtensionRegistryLite;)Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$ManeuverInfoList;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Landroid/car/hardware/xpu/XpuXNgpNaviInfo$ManeuverInfoList;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 5570
    sget-object v0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$ManeuverInfoList;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuXNgpNaviInfo$ManeuverInfoList;

    invoke-static {v0, p0}, Lcom/android/carsdk/protobuf/GeneratedMessageLite;->parseFrom(Lcom/android/carsdk/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$ManeuverInfoList;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/android/carsdk/protobuf/ExtensionRegistryLite;)Landroid/car/hardware/xpu/XpuXNgpNaviInfo$ManeuverInfoList;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 5577
    sget-object v0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$ManeuverInfoList;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuXNgpNaviInfo$ManeuverInfoList;

    invoke-static {v0, p0, p1}, Lcom/android/carsdk/protobuf/GeneratedMessageLite;->parseFrom(Lcom/android/carsdk/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/android/carsdk/protobuf/ExtensionRegistryLite;)Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$ManeuverInfoList;

    return-object p0
.end method

.method public static parseFrom([B)Landroid/car/hardware/xpu/XpuXNgpNaviInfo$ManeuverInfoList;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/carsdk/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 5558
    sget-object v0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$ManeuverInfoList;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuXNgpNaviInfo$ManeuverInfoList;

    invoke-static {v0, p0}, Lcom/android/carsdk/protobuf/GeneratedMessageLite;->parseFrom(Lcom/android/carsdk/protobuf/GeneratedMessageLite;[B)Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$ManeuverInfoList;

    return-object p0
.end method

.method public static parseFrom([BLcom/android/carsdk/protobuf/ExtensionRegistryLite;)Landroid/car/hardware/xpu/XpuXNgpNaviInfo$ManeuverInfoList;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/carsdk/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 5565
    sget-object v0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$ManeuverInfoList;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuXNgpNaviInfo$ManeuverInfoList;

    invoke-static {v0, p0, p1}, Lcom/android/carsdk/protobuf/GeneratedMessageLite;->parseFrom(Lcom/android/carsdk/protobuf/GeneratedMessageLite;[BLcom/android/carsdk/protobuf/ExtensionRegistryLite;)Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$ManeuverInfoList;

    return-object p0
.end method

.method public static parser()Lcom/android/carsdk/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/android/carsdk/protobuf/Parser<",
            "Landroid/car/hardware/xpu/XpuXNgpNaviInfo$ManeuverInfoList;",
            ">;"
        }
    .end annotation

    .line 5868
    sget-object v0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$ManeuverInfoList;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuXNgpNaviInfo$ManeuverInfoList;

    invoke-virtual {v0}, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$ManeuverInfoList;->getParserForType()Lcom/android/carsdk/protobuf/Parser;

    move-result-object v0

    return-object v0
.end method

.method private removeInfos(I)V
    .locals 1

    .line 5519
    invoke-direct {p0}, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$ManeuverInfoList;->ensureInfosIsMutable()V

    .line 5520
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$ManeuverInfoList;->infos_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1}, Lcom/android/carsdk/protobuf/Internal$ProtobufList;->remove(I)Ljava/lang/Object;

    return-void
.end method

.method private setInfos(ILandroid/car/hardware/xpu/XpuXNgpNaviInfo$ManeuverInfo$Builder;)V
    .locals 1

    .line 5432
    invoke-direct {p0}, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$ManeuverInfoList;->ensureInfosIsMutable()V

    .line 5433
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$ManeuverInfoList;->infos_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    invoke-virtual {p2}, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$ManeuverInfo$Builder;->build()Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object p2

    check-cast p2, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$ManeuverInfo;

    invoke-interface {v0, p1, p2}, Lcom/android/carsdk/protobuf/Internal$ProtobufList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private setInfos(ILandroid/car/hardware/xpu/XpuXNgpNaviInfo$ManeuverInfo;)V
    .locals 1

    .line 5418
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 5420
    invoke-direct {p0}, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$ManeuverInfoList;->ensureInfosIsMutable()V

    .line 5421
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$ManeuverInfoList;->infos_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1, p2}, Lcom/android/carsdk/protobuf/Internal$ProtobufList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method protected final dynamicMethod(Lcom/android/carsdk/protobuf/GeneratedMessageLite$MethodToInvoke;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    .line 5775
    sget-object v0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$1;->$SwitchMap$com$google$protobuf$GeneratedMessageLite$MethodToInvoke:[I

    invoke-virtual {p1}, Lcom/android/carsdk/protobuf/GeneratedMessageLite$MethodToInvoke;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x0

    packed-switch p1, :pswitch_data_0

    .line 5850
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1

    .line 5841
    :pswitch_0
    sget-object p1, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$ManeuverInfoList;->PARSER:Lcom/android/carsdk/protobuf/Parser;

    if-nez p1, :cond_1

    const-class p1, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$ManeuverInfoList;

    monitor-enter p1

    .line 5842
    :try_start_0
    sget-object p2, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$ManeuverInfoList;->PARSER:Lcom/android/carsdk/protobuf/Parser;

    if-nez p2, :cond_0

    .line 5843
    new-instance p2, Lcom/android/carsdk/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;

    sget-object p3, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$ManeuverInfoList;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuXNgpNaviInfo$ManeuverInfoList;

    invoke-direct {p2, p3}, Lcom/android/carsdk/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;-><init>(Lcom/android/carsdk/protobuf/GeneratedMessageLite;)V

    sput-object p2, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$ManeuverInfoList;->PARSER:Lcom/android/carsdk/protobuf/Parser;

    .line 5845
    :cond_0
    monitor-exit p1

    goto :goto_0

    :catchall_0
    move-exception p2

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p2

    .line 5847
    :cond_1
    :goto_0
    sget-object p1, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$ManeuverInfoList;->PARSER:Lcom/android/carsdk/protobuf/Parser;

    return-object p1

    .line 5799
    :pswitch_1
    check-cast p2, Lcom/android/carsdk/protobuf/CodedInputStream;

    .line 5801
    check-cast p3, Lcom/android/carsdk/protobuf/ExtensionRegistryLite;

    const/4 p1, 0x0

    :cond_2
    :goto_1
    if-nez p1, :cond_6

    .line 5806
    :try_start_1
    invoke-virtual {p2}, Lcom/android/carsdk/protobuf/CodedInputStream;->readTag()I

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_5

    const/16 v2, 0xa

    if-eq v0, v2, :cond_3

    .line 5812
    invoke-virtual {p2, v0}, Lcom/android/carsdk/protobuf/CodedInputStream;->skipField(I)Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_2

    .line 5818
    :cond_3
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$ManeuverInfoList;->infos_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    invoke-interface {v0}, Lcom/android/carsdk/protobuf/Internal$ProtobufList;->isModifiable()Z

    move-result v0

    if-nez v0, :cond_4

    .line 5819
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$ManeuverInfoList;->infos_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    .line 5820
    invoke-static {v0}, Lcom/android/carsdk/protobuf/GeneratedMessageLite;->mutableCopy(Lcom/android/carsdk/protobuf/Internal$ProtobufList;)Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    move-result-object v0

    iput-object v0, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$ManeuverInfoList;->infos_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    .line 5822
    :cond_4
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$ManeuverInfoList;->infos_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    .line 5823
    invoke-static {}, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$ManeuverInfo;->parser()Lcom/android/carsdk/protobuf/Parser;

    move-result-object v1

    invoke-virtual {p2, v1, p3}, Lcom/android/carsdk/protobuf/CodedInputStream;->readMessage(Lcom/android/carsdk/protobuf/Parser;Lcom/android/carsdk/protobuf/ExtensionRegistryLite;)Lcom/android/carsdk/protobuf/MessageLite;

    move-result-object v1

    check-cast v1, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$ManeuverInfo;

    .line 5822
    invoke-interface {v0, v1}, Lcom/android/carsdk/protobuf/Internal$ProtobufList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Lcom/android/carsdk/protobuf/InvalidProtocolBufferException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    :cond_5
    :goto_2
    move p1, v1

    goto :goto_1

    :catchall_1
    move-exception p1

    goto :goto_3

    :catch_0
    move-exception p1

    .line 5831
    :try_start_2
    new-instance p2, Ljava/lang/RuntimeException;

    new-instance p3, Lcom/android/carsdk/protobuf/InvalidProtocolBufferException;

    .line 5833
    invoke-virtual {p1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p3, p1}, Lcom/android/carsdk/protobuf/InvalidProtocolBufferException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, p0}, Lcom/android/carsdk/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/android/carsdk/protobuf/MessageLite;)Lcom/android/carsdk/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p2

    :catch_1
    move-exception p1

    .line 5829
    new-instance p2, Ljava/lang/RuntimeException;

    invoke-virtual {p1, p0}, Lcom/android/carsdk/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/android/carsdk/protobuf/MessageLite;)Lcom/android/carsdk/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 5834
    :goto_3
    throw p1

    .line 5838
    :cond_6
    :pswitch_2
    sget-object p1, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$ManeuverInfoList;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuXNgpNaviInfo$ManeuverInfoList;

    return-object p1

    .line 5790
    :pswitch_3
    check-cast p2, Lcom/android/carsdk/protobuf/GeneratedMessageLite$Visitor;

    .line 5791
    check-cast p3, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$ManeuverInfoList;

    .line 5792
    iget-object p1, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$ManeuverInfoList;->infos_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    iget-object p3, p3, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$ManeuverInfoList;->infos_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    invoke-interface {p2, p1, p3}, Lcom/android/carsdk/protobuf/GeneratedMessageLite$Visitor;->visitList(Lcom/android/carsdk/protobuf/Internal$ProtobufList;Lcom/android/carsdk/protobuf/Internal$ProtobufList;)Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    move-result-object p1

    iput-object p1, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$ManeuverInfoList;->infos_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    .line 5793
    sget-object p1, Lcom/android/carsdk/protobuf/GeneratedMessageLite$MergeFromVisitor;->INSTANCE:Lcom/android/carsdk/protobuf/GeneratedMessageLite$MergeFromVisitor;

    return-object p0

    .line 5787
    :pswitch_4
    new-instance p1, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$ManeuverInfoList$Builder;

    invoke-direct {p1, v0}, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$ManeuverInfoList$Builder;-><init>(Landroid/car/hardware/xpu/XpuXNgpNaviInfo$1;)V

    return-object p1

    .line 5783
    :pswitch_5
    iget-object p1, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$ManeuverInfoList;->infos_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    invoke-interface {p1}, Lcom/android/carsdk/protobuf/Internal$ProtobufList;->makeImmutable()V

    return-object v0

    .line 5780
    :pswitch_6
    sget-object p1, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$ManeuverInfoList;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuXNgpNaviInfo$ManeuverInfoList;

    return-object p1

    .line 5777
    :pswitch_7
    new-instance p1, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$ManeuverInfoList;

    invoke-direct {p1}, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$ManeuverInfoList;-><init>()V

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

.method public getInfos(I)Landroid/car/hardware/xpu/XpuXNgpNaviInfo$ManeuverInfo;
    .locals 1

    .line 5388
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$ManeuverInfoList;->infos_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1}, Lcom/android/carsdk/protobuf/Internal$ProtobufList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$ManeuverInfo;

    return-object p1
.end method

.method public getInfosCount()I
    .locals 1

    .line 5378
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$ManeuverInfoList;->infos_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    invoke-interface {v0}, Lcom/android/carsdk/protobuf/Internal$ProtobufList;->size()I

    move-result v0

    return v0
.end method

.method public getInfosList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/car/hardware/xpu/XpuXNgpNaviInfo$ManeuverInfo;",
            ">;"
        }
    .end annotation

    .line 5357
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$ManeuverInfoList;->infos_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    return-object v0
.end method

.method public getInfosOrBuilder(I)Landroid/car/hardware/xpu/XpuXNgpNaviInfo$ManeuverInfoOrBuilder;
    .locals 1

    .line 5399
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$ManeuverInfoList;->infos_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1}, Lcom/android/carsdk/protobuf/Internal$ProtobufList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$ManeuverInfoOrBuilder;

    return-object p1
.end method

.method public getInfosOrBuilderList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "+",
            "Landroid/car/hardware/xpu/XpuXNgpNaviInfo$ManeuverInfoOrBuilder;",
            ">;"
        }
    .end annotation

    .line 5368
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$ManeuverInfoList;->infos_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    return-object v0
.end method

.method public getSerializedSize()I
    .locals 4

    .line 5531
    iget v0, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$ManeuverInfoList;->memoizedSerializedSize:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    return v0

    :cond_0
    const/4 v0, 0x0

    move v1, v0

    .line 5535
    :goto_0
    iget-object v2, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$ManeuverInfoList;->infos_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    invoke-interface {v2}, Lcom/android/carsdk/protobuf/Internal$ProtobufList;->size()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 5536
    iget-object v2, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$ManeuverInfoList;->infos_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    .line 5537
    invoke-interface {v2, v0}, Lcom/android/carsdk/protobuf/Internal$ProtobufList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/carsdk/protobuf/MessageLite;

    const/4 v3, 0x1

    invoke-static {v3, v2}, Lcom/android/carsdk/protobuf/CodedOutputStream;->computeMessageSize(ILcom/android/carsdk/protobuf/MessageLite;)I

    move-result v2

    add-int/2addr v1, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 5539
    :cond_1
    iput v1, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$ManeuverInfoList;->memoizedSerializedSize:I

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

    .line 5525
    :goto_0
    iget-object v1, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$ManeuverInfoList;->infos_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    invoke-interface {v1}, Lcom/android/carsdk/protobuf/Internal$ProtobufList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 5526
    iget-object v1, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$ManeuverInfoList;->infos_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    invoke-interface {v1, v0}, Lcom/android/carsdk/protobuf/Internal$ProtobufList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/carsdk/protobuf/MessageLite;

    const/4 v2, 0x1

    invoke-virtual {p1, v2, v1}, Lcom/android/carsdk/protobuf/CodedOutputStream;->writeMessage(ILcom/android/carsdk/protobuf/MessageLite;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method
