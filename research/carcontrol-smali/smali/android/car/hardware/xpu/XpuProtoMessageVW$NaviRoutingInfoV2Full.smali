.class public final Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviRoutingInfoV2Full;
.super Lcom/android/carsdk/protobuf/GeneratedMessageLite;
.source "XpuProtoMessageVW.java"

# interfaces
.implements Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviRoutingInfoV2FullOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/car/hardware/xpu/XpuProtoMessageVW;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "NaviRoutingInfoV2Full"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviRoutingInfoV2Full$Builder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/carsdk/protobuf/GeneratedMessageLite<",
        "Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviRoutingInfoV2Full;",
        "Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviRoutingInfoV2Full$Builder;",
        ">;",
        "Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviRoutingInfoV2FullOrBuilder;"
    }
.end annotation


# static fields
.field private static final DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviRoutingInfoV2Full;

.field public static final NAVI_ROUTING_INFO_V2_FULL_FIELD_NUMBER:I = 0x1

.field private static volatile PARSER:Lcom/android/carsdk/protobuf/Parser; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/carsdk/protobuf/Parser<",
            "Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviRoutingInfoV2Full;",
            ">;"
        }
    .end annotation
.end field

.field public static final REQUEST_CODE_FIELD_NUMBER:I = 0x3

.field public static final REQUEST_SOURCE_FIELD_NUMBER:I = 0x2


# instance fields
.field private bitField0_:I

.field private naviRoutingInfoV2Full_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/carsdk/protobuf/Internal$ProtobufList<",
            "Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviReloadInfo;",
            ">;"
        }
    .end annotation
.end field

.field private requestCode_:I

.field private requestSource_:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 22485
    new-instance v0, Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviRoutingInfoV2Full;

    invoke-direct {v0}, Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviRoutingInfoV2Full;-><init>()V

    sput-object v0, Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviRoutingInfoV2Full;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviRoutingInfoV2Full;

    .line 22486
    invoke-virtual {v0}, Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviRoutingInfoV2Full;->makeImmutable()V

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 21918
    invoke-direct {p0}, Lcom/android/carsdk/protobuf/GeneratedMessageLite;-><init>()V

    .line 21919
    invoke-static {}, Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviRoutingInfoV2Full;->emptyProtobufList()Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    move-result-object v0

    iput-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviRoutingInfoV2Full;->naviRoutingInfoV2Full_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    const/4 v0, 0x0

    .line 21920
    iput v0, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviRoutingInfoV2Full;->requestSource_:I

    .line 21921
    iput v0, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviRoutingInfoV2Full;->requestCode_:I

    return-void
.end method

.method static synthetic access$51900()Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviRoutingInfoV2Full;
    .locals 1

    .line 21913
    sget-object v0, Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviRoutingInfoV2Full;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviRoutingInfoV2Full;

    return-object v0
.end method

.method static synthetic access$52000(Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviRoutingInfoV2Full;ILandroid/car/hardware/xpu/XpuProtoMessageVW$NaviReloadInfo;)V
    .locals 0

    .line 21913
    invoke-direct {p0, p1, p2}, Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviRoutingInfoV2Full;->setNaviRoutingInfoV2Full(ILandroid/car/hardware/xpu/XpuProtoMessageVW$NaviReloadInfo;)V

    return-void
.end method

.method static synthetic access$52100(Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviRoutingInfoV2Full;ILandroid/car/hardware/xpu/XpuProtoMessageVW$NaviReloadInfo$Builder;)V
    .locals 0

    .line 21913
    invoke-direct {p0, p1, p2}, Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviRoutingInfoV2Full;->setNaviRoutingInfoV2Full(ILandroid/car/hardware/xpu/XpuProtoMessageVW$NaviReloadInfo$Builder;)V

    return-void
.end method

.method static synthetic access$52200(Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviRoutingInfoV2Full;Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviReloadInfo;)V
    .locals 0

    .line 21913
    invoke-direct {p0, p1}, Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviRoutingInfoV2Full;->addNaviRoutingInfoV2Full(Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviReloadInfo;)V

    return-void
.end method

.method static synthetic access$52300(Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviRoutingInfoV2Full;ILandroid/car/hardware/xpu/XpuProtoMessageVW$NaviReloadInfo;)V
    .locals 0

    .line 21913
    invoke-direct {p0, p1, p2}, Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviRoutingInfoV2Full;->addNaviRoutingInfoV2Full(ILandroid/car/hardware/xpu/XpuProtoMessageVW$NaviReloadInfo;)V

    return-void
.end method

.method static synthetic access$52400(Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviRoutingInfoV2Full;Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviReloadInfo$Builder;)V
    .locals 0

    .line 21913
    invoke-direct {p0, p1}, Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviRoutingInfoV2Full;->addNaviRoutingInfoV2Full(Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviReloadInfo$Builder;)V

    return-void
.end method

.method static synthetic access$52500(Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviRoutingInfoV2Full;ILandroid/car/hardware/xpu/XpuProtoMessageVW$NaviReloadInfo$Builder;)V
    .locals 0

    .line 21913
    invoke-direct {p0, p1, p2}, Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviRoutingInfoV2Full;->addNaviRoutingInfoV2Full(ILandroid/car/hardware/xpu/XpuProtoMessageVW$NaviReloadInfo$Builder;)V

    return-void
.end method

.method static synthetic access$52600(Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviRoutingInfoV2Full;Ljava/lang/Iterable;)V
    .locals 0

    .line 21913
    invoke-direct {p0, p1}, Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviRoutingInfoV2Full;->addAllNaviRoutingInfoV2Full(Ljava/lang/Iterable;)V

    return-void
.end method

.method static synthetic access$52700(Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviRoutingInfoV2Full;)V
    .locals 0

    .line 21913
    invoke-direct {p0}, Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviRoutingInfoV2Full;->clearNaviRoutingInfoV2Full()V

    return-void
.end method

.method static synthetic access$52800(Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviRoutingInfoV2Full;I)V
    .locals 0

    .line 21913
    invoke-direct {p0, p1}, Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviRoutingInfoV2Full;->removeNaviRoutingInfoV2Full(I)V

    return-void
.end method

.method static synthetic access$52900(Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviRoutingInfoV2Full;I)V
    .locals 0

    .line 21913
    invoke-direct {p0, p1}, Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviRoutingInfoV2Full;->setRequestSource(I)V

    return-void
.end method

.method static synthetic access$53000(Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviRoutingInfoV2Full;)V
    .locals 0

    .line 21913
    invoke-direct {p0}, Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviRoutingInfoV2Full;->clearRequestSource()V

    return-void
.end method

.method static synthetic access$53100(Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviRoutingInfoV2Full;I)V
    .locals 0

    .line 21913
    invoke-direct {p0, p1}, Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviRoutingInfoV2Full;->setRequestCode(I)V

    return-void
.end method

.method static synthetic access$53200(Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviRoutingInfoV2Full;)V
    .locals 0

    .line 21913
    invoke-direct {p0}, Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviRoutingInfoV2Full;->clearRequestCode()V

    return-void
.end method

.method private addAllNaviRoutingInfoV2Full(Ljava/lang/Iterable;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviReloadInfo;",
            ">;)V"
        }
    .end annotation

    .line 22026
    invoke-direct {p0}, Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviRoutingInfoV2Full;->ensureNaviRoutingInfoV2FullIsMutable()V

    .line 22027
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviRoutingInfoV2Full;->naviRoutingInfoV2Full_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    invoke-static {p1, v0}, Lcom/android/carsdk/protobuf/AbstractMessageLite;->addAll(Ljava/lang/Iterable;Ljava/util/Collection;)V

    return-void
.end method

.method private addNaviRoutingInfoV2Full(ILandroid/car/hardware/xpu/XpuProtoMessageVW$NaviReloadInfo$Builder;)V
    .locals 1

    .line 22018
    invoke-direct {p0}, Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviRoutingInfoV2Full;->ensureNaviRoutingInfoV2FullIsMutable()V

    .line 22019
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviRoutingInfoV2Full;->naviRoutingInfoV2Full_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    invoke-virtual {p2}, Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviReloadInfo$Builder;->build()Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object p2

    check-cast p2, Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviReloadInfo;

    invoke-interface {v0, p1, p2}, Lcom/android/carsdk/protobuf/Internal$ProtobufList;->add(ILjava/lang/Object;)V

    return-void
.end method

.method private addNaviRoutingInfoV2Full(ILandroid/car/hardware/xpu/XpuProtoMessageVW$NaviReloadInfo;)V
    .locals 1

    .line 22000
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 22002
    invoke-direct {p0}, Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviRoutingInfoV2Full;->ensureNaviRoutingInfoV2FullIsMutable()V

    .line 22003
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviRoutingInfoV2Full;->naviRoutingInfoV2Full_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1, p2}, Lcom/android/carsdk/protobuf/Internal$ProtobufList;->add(ILjava/lang/Object;)V

    return-void
.end method

.method private addNaviRoutingInfoV2Full(Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviReloadInfo$Builder;)V
    .locals 1

    .line 22010
    invoke-direct {p0}, Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviRoutingInfoV2Full;->ensureNaviRoutingInfoV2FullIsMutable()V

    .line 22011
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviRoutingInfoV2Full;->naviRoutingInfoV2Full_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    invoke-virtual {p1}, Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviReloadInfo$Builder;->build()Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviReloadInfo;

    invoke-interface {v0, p1}, Lcom/android/carsdk/protobuf/Internal$ProtobufList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private addNaviRoutingInfoV2Full(Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviReloadInfo;)V
    .locals 1

    .line 21989
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 21991
    invoke-direct {p0}, Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviRoutingInfoV2Full;->ensureNaviRoutingInfoV2FullIsMutable()V

    .line 21992
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviRoutingInfoV2Full;->naviRoutingInfoV2Full_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1}, Lcom/android/carsdk/protobuf/Internal$ProtobufList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private clearNaviRoutingInfoV2Full()V
    .locals 1

    .line 22034
    invoke-static {}, Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviRoutingInfoV2Full;->emptyProtobufList()Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    move-result-object v0

    iput-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviRoutingInfoV2Full;->naviRoutingInfoV2Full_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    return-void
.end method

.method private clearRequestCode()V
    .locals 1

    const/4 v0, 0x0

    .line 22102
    iput v0, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviRoutingInfoV2Full;->requestCode_:I

    return-void
.end method

.method private clearRequestSource()V
    .locals 1

    const/4 v0, 0x0

    .line 22079
    iput v0, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviRoutingInfoV2Full;->requestSource_:I

    return-void
.end method

.method private ensureNaviRoutingInfoV2FullIsMutable()V
    .locals 1

    .line 21959
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviRoutingInfoV2Full;->naviRoutingInfoV2Full_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    invoke-interface {v0}, Lcom/android/carsdk/protobuf/Internal$ProtobufList;->isModifiable()Z

    move-result v0

    if-nez v0, :cond_0

    .line 21960
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviRoutingInfoV2Full;->naviRoutingInfoV2Full_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    .line 21961
    invoke-static {v0}, Lcom/android/carsdk/protobuf/GeneratedMessageLite;->mutableCopy(Lcom/android/carsdk/protobuf/Internal$ProtobufList;)Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    move-result-object v0

    iput-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviRoutingInfoV2Full;->naviRoutingInfoV2Full_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    :cond_0
    return-void
.end method

.method public static getDefaultInstance()Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviRoutingInfoV2Full;
    .locals 1

    .line 22490
    sget-object v0, Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviRoutingInfoV2Full;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviRoutingInfoV2Full;

    return-object v0
.end method

.method public static newBuilder()Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviRoutingInfoV2Full$Builder;
    .locals 1

    .line 22201
    sget-object v0, Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviRoutingInfoV2Full;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviRoutingInfoV2Full;

    invoke-virtual {v0}, Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviRoutingInfoV2Full;->toBuilder()Lcom/android/carsdk/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviRoutingInfoV2Full$Builder;

    return-object v0
.end method

.method public static newBuilder(Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviRoutingInfoV2Full;)Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviRoutingInfoV2Full$Builder;
    .locals 1

    .line 22204
    sget-object v0, Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviRoutingInfoV2Full;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviRoutingInfoV2Full;

    invoke-virtual {v0}, Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviRoutingInfoV2Full;->toBuilder()Lcom/android/carsdk/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviRoutingInfoV2Full$Builder;

    invoke-virtual {v0, p0}, Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviRoutingInfoV2Full$Builder;->mergeFrom(Lcom/android/carsdk/protobuf/GeneratedMessageLite;)Lcom/android/carsdk/protobuf/GeneratedMessageLite$Builder;

    move-result-object p0

    check-cast p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviRoutingInfoV2Full$Builder;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviRoutingInfoV2Full;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 22178
    sget-object v0, Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviRoutingInfoV2Full;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviRoutingInfoV2Full;

    invoke-static {v0, p0}, Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviRoutingInfoV2Full;->parseDelimitedFrom(Lcom/android/carsdk/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviRoutingInfoV2Full;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/android/carsdk/protobuf/ExtensionRegistryLite;)Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviRoutingInfoV2Full;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 22184
    sget-object v0, Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviRoutingInfoV2Full;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviRoutingInfoV2Full;

    invoke-static {v0, p0, p1}, Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviRoutingInfoV2Full;->parseDelimitedFrom(Lcom/android/carsdk/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/android/carsdk/protobuf/ExtensionRegistryLite;)Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviRoutingInfoV2Full;

    return-object p0
.end method

.method public static parseFrom(Lcom/android/carsdk/protobuf/ByteString;)Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviRoutingInfoV2Full;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/carsdk/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 22142
    sget-object v0, Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviRoutingInfoV2Full;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviRoutingInfoV2Full;

    invoke-static {v0, p0}, Lcom/android/carsdk/protobuf/GeneratedMessageLite;->parseFrom(Lcom/android/carsdk/protobuf/GeneratedMessageLite;Lcom/android/carsdk/protobuf/ByteString;)Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviRoutingInfoV2Full;

    return-object p0
.end method

.method public static parseFrom(Lcom/android/carsdk/protobuf/ByteString;Lcom/android/carsdk/protobuf/ExtensionRegistryLite;)Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviRoutingInfoV2Full;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/carsdk/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 22149
    sget-object v0, Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviRoutingInfoV2Full;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviRoutingInfoV2Full;

    invoke-static {v0, p0, p1}, Lcom/android/carsdk/protobuf/GeneratedMessageLite;->parseFrom(Lcom/android/carsdk/protobuf/GeneratedMessageLite;Lcom/android/carsdk/protobuf/ByteString;Lcom/android/carsdk/protobuf/ExtensionRegistryLite;)Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviRoutingInfoV2Full;

    return-object p0
.end method

.method public static parseFrom(Lcom/android/carsdk/protobuf/CodedInputStream;)Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviRoutingInfoV2Full;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 22189
    sget-object v0, Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviRoutingInfoV2Full;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviRoutingInfoV2Full;

    invoke-static {v0, p0}, Lcom/android/carsdk/protobuf/GeneratedMessageLite;->parseFrom(Lcom/android/carsdk/protobuf/GeneratedMessageLite;Lcom/android/carsdk/protobuf/CodedInputStream;)Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviRoutingInfoV2Full;

    return-object p0
.end method

.method public static parseFrom(Lcom/android/carsdk/protobuf/CodedInputStream;Lcom/android/carsdk/protobuf/ExtensionRegistryLite;)Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviRoutingInfoV2Full;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 22196
    sget-object v0, Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviRoutingInfoV2Full;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviRoutingInfoV2Full;

    invoke-static {v0, p0, p1}, Lcom/android/carsdk/protobuf/GeneratedMessageLite;->parseFrom(Lcom/android/carsdk/protobuf/GeneratedMessageLite;Lcom/android/carsdk/protobuf/CodedInputStream;Lcom/android/carsdk/protobuf/ExtensionRegistryLite;)Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviRoutingInfoV2Full;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviRoutingInfoV2Full;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 22166
    sget-object v0, Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviRoutingInfoV2Full;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviRoutingInfoV2Full;

    invoke-static {v0, p0}, Lcom/android/carsdk/protobuf/GeneratedMessageLite;->parseFrom(Lcom/android/carsdk/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviRoutingInfoV2Full;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/android/carsdk/protobuf/ExtensionRegistryLite;)Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviRoutingInfoV2Full;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 22173
    sget-object v0, Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviRoutingInfoV2Full;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviRoutingInfoV2Full;

    invoke-static {v0, p0, p1}, Lcom/android/carsdk/protobuf/GeneratedMessageLite;->parseFrom(Lcom/android/carsdk/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/android/carsdk/protobuf/ExtensionRegistryLite;)Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviRoutingInfoV2Full;

    return-object p0
.end method

.method public static parseFrom([B)Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviRoutingInfoV2Full;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/carsdk/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 22154
    sget-object v0, Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviRoutingInfoV2Full;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviRoutingInfoV2Full;

    invoke-static {v0, p0}, Lcom/android/carsdk/protobuf/GeneratedMessageLite;->parseFrom(Lcom/android/carsdk/protobuf/GeneratedMessageLite;[B)Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviRoutingInfoV2Full;

    return-object p0
.end method

.method public static parseFrom([BLcom/android/carsdk/protobuf/ExtensionRegistryLite;)Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviRoutingInfoV2Full;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/carsdk/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 22161
    sget-object v0, Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviRoutingInfoV2Full;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviRoutingInfoV2Full;

    invoke-static {v0, p0, p1}, Lcom/android/carsdk/protobuf/GeneratedMessageLite;->parseFrom(Lcom/android/carsdk/protobuf/GeneratedMessageLite;[BLcom/android/carsdk/protobuf/ExtensionRegistryLite;)Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviRoutingInfoV2Full;

    return-object p0
.end method

.method public static parser()Lcom/android/carsdk/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/android/carsdk/protobuf/Parser<",
            "Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviRoutingInfoV2Full;",
            ">;"
        }
    .end annotation

    .line 22496
    sget-object v0, Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviRoutingInfoV2Full;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviRoutingInfoV2Full;

    invoke-virtual {v0}, Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviRoutingInfoV2Full;->getParserForType()Lcom/android/carsdk/protobuf/Parser;

    move-result-object v0

    return-object v0
.end method

.method private removeNaviRoutingInfoV2Full(I)V
    .locals 1

    .line 22040
    invoke-direct {p0}, Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviRoutingInfoV2Full;->ensureNaviRoutingInfoV2FullIsMutable()V

    .line 22041
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviRoutingInfoV2Full;->naviRoutingInfoV2Full_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1}, Lcom/android/carsdk/protobuf/Internal$ProtobufList;->remove(I)Ljava/lang/Object;

    return-void
.end method

.method private setNaviRoutingInfoV2Full(ILandroid/car/hardware/xpu/XpuProtoMessageVW$NaviReloadInfo$Builder;)V
    .locals 1

    .line 21981
    invoke-direct {p0}, Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviRoutingInfoV2Full;->ensureNaviRoutingInfoV2FullIsMutable()V

    .line 21982
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviRoutingInfoV2Full;->naviRoutingInfoV2Full_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    invoke-virtual {p2}, Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviReloadInfo$Builder;->build()Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object p2

    check-cast p2, Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviReloadInfo;

    invoke-interface {v0, p1, p2}, Lcom/android/carsdk/protobuf/Internal$ProtobufList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private setNaviRoutingInfoV2Full(ILandroid/car/hardware/xpu/XpuProtoMessageVW$NaviReloadInfo;)V
    .locals 1

    .line 21971
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 21973
    invoke-direct {p0}, Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviRoutingInfoV2Full;->ensureNaviRoutingInfoV2FullIsMutable()V

    .line 21974
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviRoutingInfoV2Full;->naviRoutingInfoV2Full_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1, p2}, Lcom/android/carsdk/protobuf/Internal$ProtobufList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private setRequestCode(I)V
    .locals 0

    .line 22095
    iput p1, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviRoutingInfoV2Full;->requestCode_:I

    return-void
.end method

.method private setRequestSource(I)V
    .locals 0

    .line 22067
    iput p1, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviRoutingInfoV2Full;->requestSource_:I

    return-void
.end method


# virtual methods
.method protected final dynamicMethod(Lcom/android/carsdk/protobuf/GeneratedMessageLite$MethodToInvoke;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5

    .line 22388
    sget-object v0, Landroid/car/hardware/xpu/XpuProtoMessageVW$1;->$SwitchMap$com$google$protobuf$GeneratedMessageLite$MethodToInvoke:[I

    invoke-virtual {p1}, Lcom/android/carsdk/protobuf/GeneratedMessageLite$MethodToInvoke;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x1

    packed-switch p1, :pswitch_data_0

    .line 22478
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1

    .line 22469
    :pswitch_0
    sget-object p1, Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviRoutingInfoV2Full;->PARSER:Lcom/android/carsdk/protobuf/Parser;

    if-nez p1, :cond_1

    const-class p1, Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviRoutingInfoV2Full;

    monitor-enter p1

    .line 22470
    :try_start_0
    sget-object p2, Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviRoutingInfoV2Full;->PARSER:Lcom/android/carsdk/protobuf/Parser;

    if-nez p2, :cond_0

    .line 22471
    new-instance p2, Lcom/android/carsdk/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;

    sget-object p3, Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviRoutingInfoV2Full;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviRoutingInfoV2Full;

    invoke-direct {p2, p3}, Lcom/android/carsdk/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;-><init>(Lcom/android/carsdk/protobuf/GeneratedMessageLite;)V

    sput-object p2, Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviRoutingInfoV2Full;->PARSER:Lcom/android/carsdk/protobuf/Parser;

    .line 22473
    :cond_0
    monitor-exit p1

    goto :goto_0

    :catchall_0
    move-exception p2

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p2

    .line 22475
    :cond_1
    :goto_0
    sget-object p1, Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviRoutingInfoV2Full;->PARSER:Lcom/android/carsdk/protobuf/Parser;

    return-object p1

    .line 22417
    :pswitch_1
    check-cast p2, Lcom/android/carsdk/protobuf/CodedInputStream;

    .line 22419
    check-cast p3, Lcom/android/carsdk/protobuf/ExtensionRegistryLite;

    :cond_2
    :goto_1
    if-nez v1, :cond_8

    .line 22424
    :try_start_1
    invoke-virtual {p2}, Lcom/android/carsdk/protobuf/CodedInputStream;->readTag()I

    move-result p1

    if-eqz p1, :cond_7

    const/16 v0, 0xa

    if-eq p1, v0, :cond_5

    const/16 v0, 0x10

    if-eq p1, v0, :cond_4

    const/16 v0, 0x18

    if-eq p1, v0, :cond_3

    .line 22430
    invoke-virtual {p2, p1}, Lcom/android/carsdk/protobuf/CodedInputStream;->skipField(I)Z

    move-result p1

    if-nez p1, :cond_2

    goto :goto_2

    .line 22451
    :cond_3
    invoke-virtual {p2}, Lcom/android/carsdk/protobuf/CodedInputStream;->readInt32()I

    move-result p1

    iput p1, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviRoutingInfoV2Full;->requestCode_:I

    goto :goto_1

    .line 22446
    :cond_4
    invoke-virtual {p2}, Lcom/android/carsdk/protobuf/CodedInputStream;->readInt32()I

    move-result p1

    iput p1, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviRoutingInfoV2Full;->requestSource_:I

    goto :goto_1

    .line 22436
    :cond_5
    iget-object p1, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviRoutingInfoV2Full;->naviRoutingInfoV2Full_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    invoke-interface {p1}, Lcom/android/carsdk/protobuf/Internal$ProtobufList;->isModifiable()Z

    move-result p1

    if-nez p1, :cond_6

    .line 22437
    iget-object p1, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviRoutingInfoV2Full;->naviRoutingInfoV2Full_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    .line 22438
    invoke-static {p1}, Lcom/android/carsdk/protobuf/GeneratedMessageLite;->mutableCopy(Lcom/android/carsdk/protobuf/Internal$ProtobufList;)Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    move-result-object p1

    iput-object p1, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviRoutingInfoV2Full;->naviRoutingInfoV2Full_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    .line 22440
    :cond_6
    iget-object p1, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviRoutingInfoV2Full;->naviRoutingInfoV2Full_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    .line 22441
    invoke-static {}, Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviReloadInfo;->parser()Lcom/android/carsdk/protobuf/Parser;

    move-result-object v0

    invoke-virtual {p2, v0, p3}, Lcom/android/carsdk/protobuf/CodedInputStream;->readMessage(Lcom/android/carsdk/protobuf/Parser;Lcom/android/carsdk/protobuf/ExtensionRegistryLite;)Lcom/android/carsdk/protobuf/MessageLite;

    move-result-object v0

    check-cast v0, Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviReloadInfo;

    .line 22440
    invoke-interface {p1, v0}, Lcom/android/carsdk/protobuf/Internal$ProtobufList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Lcom/android/carsdk/protobuf/InvalidProtocolBufferException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    :cond_7
    :goto_2
    move v1, v2

    goto :goto_1

    :catchall_1
    move-exception p1

    goto :goto_3

    :catch_0
    move-exception p1

    .line 22459
    :try_start_2
    new-instance p2, Ljava/lang/RuntimeException;

    new-instance p3, Lcom/android/carsdk/protobuf/InvalidProtocolBufferException;

    .line 22461
    invoke-virtual {p1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p3, p1}, Lcom/android/carsdk/protobuf/InvalidProtocolBufferException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, p0}, Lcom/android/carsdk/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/android/carsdk/protobuf/MessageLite;)Lcom/android/carsdk/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p2

    :catch_1
    move-exception p1

    .line 22457
    new-instance p2, Ljava/lang/RuntimeException;

    invoke-virtual {p1, p0}, Lcom/android/carsdk/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/android/carsdk/protobuf/MessageLite;)Lcom/android/carsdk/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 22462
    :goto_3
    throw p1

    .line 22466
    :cond_8
    :pswitch_2
    sget-object p1, Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviRoutingInfoV2Full;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviRoutingInfoV2Full;

    return-object p1

    .line 22403
    :pswitch_3
    check-cast p2, Lcom/android/carsdk/protobuf/GeneratedMessageLite$Visitor;

    .line 22404
    check-cast p3, Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviRoutingInfoV2Full;

    .line 22405
    iget-object p1, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviRoutingInfoV2Full;->naviRoutingInfoV2Full_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    iget-object v0, p3, Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviRoutingInfoV2Full;->naviRoutingInfoV2Full_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    invoke-interface {p2, p1, v0}, Lcom/android/carsdk/protobuf/GeneratedMessageLite$Visitor;->visitList(Lcom/android/carsdk/protobuf/Internal$ProtobufList;Lcom/android/carsdk/protobuf/Internal$ProtobufList;)Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    move-result-object p1

    iput-object p1, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviRoutingInfoV2Full;->naviRoutingInfoV2Full_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    .line 22406
    iget p1, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviRoutingInfoV2Full;->requestSource_:I

    if-eqz p1, :cond_9

    move v0, v2

    goto :goto_4

    :cond_9
    move v0, v1

    :goto_4
    iget v3, p3, Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviRoutingInfoV2Full;->requestSource_:I

    if-eqz v3, :cond_a

    move v4, v2

    goto :goto_5

    :cond_a
    move v4, v1

    :goto_5
    invoke-interface {p2, v0, p1, v4, v3}, Lcom/android/carsdk/protobuf/GeneratedMessageLite$Visitor;->visitInt(ZIZI)I

    move-result p1

    iput p1, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviRoutingInfoV2Full;->requestSource_:I

    .line 22408
    iget p1, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviRoutingInfoV2Full;->requestCode_:I

    if-eqz p1, :cond_b

    move v0, v2

    goto :goto_6

    :cond_b
    move v0, v1

    :goto_6
    iget v3, p3, Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviRoutingInfoV2Full;->requestCode_:I

    if-eqz v3, :cond_c

    move v1, v2

    :cond_c
    invoke-interface {p2, v0, p1, v1, v3}, Lcom/android/carsdk/protobuf/GeneratedMessageLite$Visitor;->visitInt(ZIZI)I

    move-result p1

    iput p1, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviRoutingInfoV2Full;->requestCode_:I

    .line 22410
    sget-object p1, Lcom/android/carsdk/protobuf/GeneratedMessageLite$MergeFromVisitor;->INSTANCE:Lcom/android/carsdk/protobuf/GeneratedMessageLite$MergeFromVisitor;

    if-ne p2, p1, :cond_d

    .line 22412
    iget p1, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviRoutingInfoV2Full;->bitField0_:I

    iget p2, p3, Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviRoutingInfoV2Full;->bitField0_:I

    or-int/2addr p1, p2

    iput p1, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviRoutingInfoV2Full;->bitField0_:I

    :cond_d
    return-object p0

    .line 22400
    :pswitch_4
    new-instance p1, Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviRoutingInfoV2Full$Builder;

    invoke-direct {p1, v0}, Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviRoutingInfoV2Full$Builder;-><init>(Landroid/car/hardware/xpu/XpuProtoMessageVW$1;)V

    return-object p1

    .line 22396
    :pswitch_5
    iget-object p1, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviRoutingInfoV2Full;->naviRoutingInfoV2Full_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    invoke-interface {p1}, Lcom/android/carsdk/protobuf/Internal$ProtobufList;->makeImmutable()V

    return-object v0

    .line 22393
    :pswitch_6
    sget-object p1, Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviRoutingInfoV2Full;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviRoutingInfoV2Full;

    return-object p1

    .line 22390
    :pswitch_7
    new-instance p1, Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviRoutingInfoV2Full;

    invoke-direct {p1}, Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviRoutingInfoV2Full;-><init>()V

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

.method public getNaviRoutingInfoV2Full(I)Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviReloadInfo;
    .locals 1

    .line 21949
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviRoutingInfoV2Full;->naviRoutingInfoV2Full_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1}, Lcom/android/carsdk/protobuf/Internal$ProtobufList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviReloadInfo;

    return-object p1
.end method

.method public getNaviRoutingInfoV2FullCount()I
    .locals 1

    .line 21943
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviRoutingInfoV2Full;->naviRoutingInfoV2Full_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    invoke-interface {v0}, Lcom/android/carsdk/protobuf/Internal$ProtobufList;->size()I

    move-result v0

    return v0
.end method

.method public getNaviRoutingInfoV2FullList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviReloadInfo;",
            ">;"
        }
    .end annotation

    .line 21930
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviRoutingInfoV2Full;->naviRoutingInfoV2Full_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    return-object v0
.end method

.method public getNaviRoutingInfoV2FullOrBuilder(I)Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviReloadInfoOrBuilder;
    .locals 1

    .line 21956
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviRoutingInfoV2Full;->naviRoutingInfoV2Full_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1}, Lcom/android/carsdk/protobuf/Internal$ProtobufList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviReloadInfoOrBuilder;

    return-object p1
.end method

.method public getNaviRoutingInfoV2FullOrBuilderList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "+",
            "Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviReloadInfoOrBuilder;",
            ">;"
        }
    .end annotation

    .line 21937
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviRoutingInfoV2Full;->naviRoutingInfoV2Full_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    return-object v0
.end method

.method public getRequestCode()I
    .locals 1

    .line 22088
    iget v0, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviRoutingInfoV2Full;->requestCode_:I

    return v0
.end method

.method public getRequestSource()I
    .locals 1

    .line 22055
    iget v0, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviRoutingInfoV2Full;->requestSource_:I

    return v0
.end method

.method public getSerializedSize()I
    .locals 4

    .line 22119
    iget v0, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviRoutingInfoV2Full;->memoizedSerializedSize:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    return v0

    :cond_0
    const/4 v0, 0x0

    move v1, v0

    .line 22123
    :goto_0
    iget-object v2, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviRoutingInfoV2Full;->naviRoutingInfoV2Full_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    invoke-interface {v2}, Lcom/android/carsdk/protobuf/Internal$ProtobufList;->size()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 22124
    iget-object v2, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviRoutingInfoV2Full;->naviRoutingInfoV2Full_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    .line 22125
    invoke-interface {v2, v0}, Lcom/android/carsdk/protobuf/Internal$ProtobufList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/carsdk/protobuf/MessageLite;

    const/4 v3, 0x1

    invoke-static {v3, v2}, Lcom/android/carsdk/protobuf/CodedOutputStream;->computeMessageSize(ILcom/android/carsdk/protobuf/MessageLite;)I

    move-result v2

    add-int/2addr v1, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 22127
    :cond_1
    iget v0, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviRoutingInfoV2Full;->requestSource_:I

    if-eqz v0, :cond_2

    const/4 v2, 0x2

    .line 22129
    invoke-static {v2, v0}, Lcom/android/carsdk/protobuf/CodedOutputStream;->computeInt32Size(II)I

    move-result v0

    add-int/2addr v1, v0

    .line 22131
    :cond_2
    iget v0, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviRoutingInfoV2Full;->requestCode_:I

    if-eqz v0, :cond_3

    const/4 v2, 0x3

    .line 22133
    invoke-static {v2, v0}, Lcom/android/carsdk/protobuf/CodedOutputStream;->computeInt32Size(II)I

    move-result v0

    add-int/2addr v1, v0

    .line 22135
    :cond_3
    iput v1, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviRoutingInfoV2Full;->memoizedSerializedSize:I

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

    .line 22107
    :goto_0
    iget-object v1, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviRoutingInfoV2Full;->naviRoutingInfoV2Full_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    invoke-interface {v1}, Lcom/android/carsdk/protobuf/Internal$ProtobufList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 22108
    iget-object v1, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviRoutingInfoV2Full;->naviRoutingInfoV2Full_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    invoke-interface {v1, v0}, Lcom/android/carsdk/protobuf/Internal$ProtobufList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/carsdk/protobuf/MessageLite;

    const/4 v2, 0x1

    invoke-virtual {p1, v2, v1}, Lcom/android/carsdk/protobuf/CodedOutputStream;->writeMessage(ILcom/android/carsdk/protobuf/MessageLite;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 22110
    :cond_0
    iget v0, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviRoutingInfoV2Full;->requestSource_:I

    if-eqz v0, :cond_1

    const/4 v1, 0x2

    .line 22111
    invoke-virtual {p1, v1, v0}, Lcom/android/carsdk/protobuf/CodedOutputStream;->writeInt32(II)V

    .line 22113
    :cond_1
    iget v0, p0, Landroid/car/hardware/xpu/XpuProtoMessageVW$NaviRoutingInfoV2Full;->requestCode_:I

    if-eqz v0, :cond_2

    const/4 v1, 0x3

    .line 22114
    invoke-virtual {p1, v1, v0}, Lcom/android/carsdk/protobuf/CodedOutputStream;->writeInt32(II)V

    :cond_2
    return-void
.end method
