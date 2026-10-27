.class public final Landroid/car/hardware/xpu/XpuXNgpNaviInfo$NaviFacilityList;
.super Lcom/android/carsdk/protobuf/GeneratedMessageLite;
.source "XpuXNgpNaviInfo.java"

# interfaces
.implements Landroid/car/hardware/xpu/XpuXNgpNaviInfo$NaviFacilityListOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/car/hardware/xpu/XpuXNgpNaviInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "NaviFacilityList"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/car/hardware/xpu/XpuXNgpNaviInfo$NaviFacilityList$Builder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/carsdk/protobuf/GeneratedMessageLite<",
        "Landroid/car/hardware/xpu/XpuXNgpNaviInfo$NaviFacilityList;",
        "Landroid/car/hardware/xpu/XpuXNgpNaviInfo$NaviFacilityList$Builder;",
        ">;",
        "Landroid/car/hardware/xpu/XpuXNgpNaviInfo$NaviFacilityListOrBuilder;"
    }
.end annotation


# static fields
.field private static final DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuXNgpNaviInfo$NaviFacilityList;

.field public static final INFOS_FIELD_NUMBER:I = 0x1

.field private static volatile PARSER:Lcom/android/carsdk/protobuf/Parser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/carsdk/protobuf/Parser<",
            "Landroid/car/hardware/xpu/XpuXNgpNaviInfo$NaviFacilityList;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private infos_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/carsdk/protobuf/Internal$ProtobufList<",
            "Landroid/car/hardware/xpu/XpuXNgpNaviInfo$NaviFacility;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 13215
    new-instance v0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$NaviFacilityList;

    invoke-direct {v0}, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$NaviFacilityList;-><init>()V

    sput-object v0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$NaviFacilityList;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuXNgpNaviInfo$NaviFacilityList;

    .line 13216
    invoke-virtual {v0}, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$NaviFacilityList;->makeImmutable()V

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 12702
    invoke-direct {p0}, Lcom/android/carsdk/protobuf/GeneratedMessageLite;-><init>()V

    .line 12703
    invoke-static {}, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$NaviFacilityList;->emptyProtobufList()Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    move-result-object v0

    iput-object v0, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$NaviFacilityList;->infos_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    return-void
.end method

.method static synthetic access$19800()Landroid/car/hardware/xpu/XpuXNgpNaviInfo$NaviFacilityList;
    .locals 1

    .line 12697
    sget-object v0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$NaviFacilityList;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuXNgpNaviInfo$NaviFacilityList;

    return-object v0
.end method

.method static synthetic access$19900(Landroid/car/hardware/xpu/XpuXNgpNaviInfo$NaviFacilityList;ILandroid/car/hardware/xpu/XpuXNgpNaviInfo$NaviFacility;)V
    .locals 0

    .line 12697
    invoke-direct {p0, p1, p2}, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$NaviFacilityList;->setInfos(ILandroid/car/hardware/xpu/XpuXNgpNaviInfo$NaviFacility;)V

    return-void
.end method

.method static synthetic access$20000(Landroid/car/hardware/xpu/XpuXNgpNaviInfo$NaviFacilityList;ILandroid/car/hardware/xpu/XpuXNgpNaviInfo$NaviFacility$Builder;)V
    .locals 0

    .line 12697
    invoke-direct {p0, p1, p2}, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$NaviFacilityList;->setInfos(ILandroid/car/hardware/xpu/XpuXNgpNaviInfo$NaviFacility$Builder;)V

    return-void
.end method

.method static synthetic access$20100(Landroid/car/hardware/xpu/XpuXNgpNaviInfo$NaviFacilityList;Landroid/car/hardware/xpu/XpuXNgpNaviInfo$NaviFacility;)V
    .locals 0

    .line 12697
    invoke-direct {p0, p1}, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$NaviFacilityList;->addInfos(Landroid/car/hardware/xpu/XpuXNgpNaviInfo$NaviFacility;)V

    return-void
.end method

.method static synthetic access$20200(Landroid/car/hardware/xpu/XpuXNgpNaviInfo$NaviFacilityList;ILandroid/car/hardware/xpu/XpuXNgpNaviInfo$NaviFacility;)V
    .locals 0

    .line 12697
    invoke-direct {p0, p1, p2}, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$NaviFacilityList;->addInfos(ILandroid/car/hardware/xpu/XpuXNgpNaviInfo$NaviFacility;)V

    return-void
.end method

.method static synthetic access$20300(Landroid/car/hardware/xpu/XpuXNgpNaviInfo$NaviFacilityList;Landroid/car/hardware/xpu/XpuXNgpNaviInfo$NaviFacility$Builder;)V
    .locals 0

    .line 12697
    invoke-direct {p0, p1}, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$NaviFacilityList;->addInfos(Landroid/car/hardware/xpu/XpuXNgpNaviInfo$NaviFacility$Builder;)V

    return-void
.end method

.method static synthetic access$20400(Landroid/car/hardware/xpu/XpuXNgpNaviInfo$NaviFacilityList;ILandroid/car/hardware/xpu/XpuXNgpNaviInfo$NaviFacility$Builder;)V
    .locals 0

    .line 12697
    invoke-direct {p0, p1, p2}, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$NaviFacilityList;->addInfos(ILandroid/car/hardware/xpu/XpuXNgpNaviInfo$NaviFacility$Builder;)V

    return-void
.end method

.method static synthetic access$20500(Landroid/car/hardware/xpu/XpuXNgpNaviInfo$NaviFacilityList;Ljava/lang/Iterable;)V
    .locals 0

    .line 12697
    invoke-direct {p0, p1}, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$NaviFacilityList;->addAllInfos(Ljava/lang/Iterable;)V

    return-void
.end method

.method static synthetic access$20600(Landroid/car/hardware/xpu/XpuXNgpNaviInfo$NaviFacilityList;)V
    .locals 0

    .line 12697
    invoke-direct {p0}, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$NaviFacilityList;->clearInfos()V

    return-void
.end method

.method static synthetic access$20700(Landroid/car/hardware/xpu/XpuXNgpNaviInfo$NaviFacilityList;I)V
    .locals 0

    .line 12697
    invoke-direct {p0, p1}, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$NaviFacilityList;->removeInfos(I)V

    return-void
.end method

.method private addAllInfos(Ljava/lang/Iterable;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Landroid/car/hardware/xpu/XpuXNgpNaviInfo$NaviFacility;",
            ">;)V"
        }
    .end annotation

    .line 12855
    invoke-direct {p0}, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$NaviFacilityList;->ensureInfosIsMutable()V

    .line 12856
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$NaviFacilityList;->infos_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    invoke-static {p1, v0}, Lcom/android/carsdk/protobuf/AbstractMessageLite;->addAll(Ljava/lang/Iterable;Ljava/util/Collection;)V

    return-void
.end method

.method private addInfos(ILandroid/car/hardware/xpu/XpuXNgpNaviInfo$NaviFacility$Builder;)V
    .locals 1

    .line 12843
    invoke-direct {p0}, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$NaviFacilityList;->ensureInfosIsMutable()V

    .line 12844
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$NaviFacilityList;->infos_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    invoke-virtual {p2}, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$NaviFacility$Builder;->build()Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object p2

    check-cast p2, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$NaviFacility;

    invoke-interface {v0, p1, p2}, Lcom/android/carsdk/protobuf/Internal$ProtobufList;->add(ILjava/lang/Object;)V

    return-void
.end method

.method private addInfos(ILandroid/car/hardware/xpu/XpuXNgpNaviInfo$NaviFacility;)V
    .locals 1

    .line 12817
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 12819
    invoke-direct {p0}, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$NaviFacilityList;->ensureInfosIsMutable()V

    .line 12820
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$NaviFacilityList;->infos_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1, p2}, Lcom/android/carsdk/protobuf/Internal$ProtobufList;->add(ILjava/lang/Object;)V

    return-void
.end method

.method private addInfos(Landroid/car/hardware/xpu/XpuXNgpNaviInfo$NaviFacility$Builder;)V
    .locals 1

    .line 12831
    invoke-direct {p0}, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$NaviFacilityList;->ensureInfosIsMutable()V

    .line 12832
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$NaviFacilityList;->infos_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    invoke-virtual {p1}, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$NaviFacility$Builder;->build()Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$NaviFacility;

    invoke-interface {v0, p1}, Lcom/android/carsdk/protobuf/Internal$ProtobufList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private addInfos(Landroid/car/hardware/xpu/XpuXNgpNaviInfo$NaviFacility;)V
    .locals 1

    .line 12802
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 12804
    invoke-direct {p0}, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$NaviFacilityList;->ensureInfosIsMutable()V

    .line 12805
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$NaviFacilityList;->infos_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1}, Lcom/android/carsdk/protobuf/Internal$ProtobufList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private clearInfos()V
    .locals 1

    .line 12867
    invoke-static {}, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$NaviFacilityList;->emptyProtobufList()Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    move-result-object v0

    iput-object v0, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$NaviFacilityList;->infos_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    return-void
.end method

.method private ensureInfosIsMutable()V
    .locals 1

    .line 12760
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$NaviFacilityList;->infos_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    invoke-interface {v0}, Lcom/android/carsdk/protobuf/Internal$ProtobufList;->isModifiable()Z

    move-result v0

    if-nez v0, :cond_0

    .line 12761
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$NaviFacilityList;->infos_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    .line 12762
    invoke-static {v0}, Lcom/android/carsdk/protobuf/GeneratedMessageLite;->mutableCopy(Lcom/android/carsdk/protobuf/Internal$ProtobufList;)Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    move-result-object v0

    iput-object v0, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$NaviFacilityList;->infos_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    :cond_0
    return-void
.end method

.method public static getDefaultInstance()Landroid/car/hardware/xpu/XpuXNgpNaviInfo$NaviFacilityList;
    .locals 1

    .line 13220
    sget-object v0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$NaviFacilityList;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuXNgpNaviInfo$NaviFacilityList;

    return-object v0
.end method

.method public static newBuilder()Landroid/car/hardware/xpu/XpuXNgpNaviInfo$NaviFacilityList$Builder;
    .locals 1

    .line 12963
    sget-object v0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$NaviFacilityList;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuXNgpNaviInfo$NaviFacilityList;

    invoke-virtual {v0}, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$NaviFacilityList;->toBuilder()Lcom/android/carsdk/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$NaviFacilityList$Builder;

    return-object v0
.end method

.method public static newBuilder(Landroid/car/hardware/xpu/XpuXNgpNaviInfo$NaviFacilityList;)Landroid/car/hardware/xpu/XpuXNgpNaviInfo$NaviFacilityList$Builder;
    .locals 1

    .line 12966
    sget-object v0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$NaviFacilityList;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuXNgpNaviInfo$NaviFacilityList;

    invoke-virtual {v0}, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$NaviFacilityList;->toBuilder()Lcom/android/carsdk/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$NaviFacilityList$Builder;

    invoke-virtual {v0, p0}, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$NaviFacilityList$Builder;->mergeFrom(Lcom/android/carsdk/protobuf/GeneratedMessageLite;)Lcom/android/carsdk/protobuf/GeneratedMessageLite$Builder;

    move-result-object p0

    check-cast p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$NaviFacilityList$Builder;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Landroid/car/hardware/xpu/XpuXNgpNaviInfo$NaviFacilityList;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 12940
    sget-object v0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$NaviFacilityList;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuXNgpNaviInfo$NaviFacilityList;

    invoke-static {v0, p0}, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$NaviFacilityList;->parseDelimitedFrom(Lcom/android/carsdk/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$NaviFacilityList;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/android/carsdk/protobuf/ExtensionRegistryLite;)Landroid/car/hardware/xpu/XpuXNgpNaviInfo$NaviFacilityList;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 12946
    sget-object v0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$NaviFacilityList;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuXNgpNaviInfo$NaviFacilityList;

    invoke-static {v0, p0, p1}, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$NaviFacilityList;->parseDelimitedFrom(Lcom/android/carsdk/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/android/carsdk/protobuf/ExtensionRegistryLite;)Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$NaviFacilityList;

    return-object p0
.end method

.method public static parseFrom(Lcom/android/carsdk/protobuf/ByteString;)Landroid/car/hardware/xpu/XpuXNgpNaviInfo$NaviFacilityList;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/carsdk/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 12904
    sget-object v0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$NaviFacilityList;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuXNgpNaviInfo$NaviFacilityList;

    invoke-static {v0, p0}, Lcom/android/carsdk/protobuf/GeneratedMessageLite;->parseFrom(Lcom/android/carsdk/protobuf/GeneratedMessageLite;Lcom/android/carsdk/protobuf/ByteString;)Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$NaviFacilityList;

    return-object p0
.end method

.method public static parseFrom(Lcom/android/carsdk/protobuf/ByteString;Lcom/android/carsdk/protobuf/ExtensionRegistryLite;)Landroid/car/hardware/xpu/XpuXNgpNaviInfo$NaviFacilityList;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/carsdk/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 12911
    sget-object v0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$NaviFacilityList;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuXNgpNaviInfo$NaviFacilityList;

    invoke-static {v0, p0, p1}, Lcom/android/carsdk/protobuf/GeneratedMessageLite;->parseFrom(Lcom/android/carsdk/protobuf/GeneratedMessageLite;Lcom/android/carsdk/protobuf/ByteString;Lcom/android/carsdk/protobuf/ExtensionRegistryLite;)Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$NaviFacilityList;

    return-object p0
.end method

.method public static parseFrom(Lcom/android/carsdk/protobuf/CodedInputStream;)Landroid/car/hardware/xpu/XpuXNgpNaviInfo$NaviFacilityList;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 12951
    sget-object v0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$NaviFacilityList;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuXNgpNaviInfo$NaviFacilityList;

    invoke-static {v0, p0}, Lcom/android/carsdk/protobuf/GeneratedMessageLite;->parseFrom(Lcom/android/carsdk/protobuf/GeneratedMessageLite;Lcom/android/carsdk/protobuf/CodedInputStream;)Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$NaviFacilityList;

    return-object p0
.end method

.method public static parseFrom(Lcom/android/carsdk/protobuf/CodedInputStream;Lcom/android/carsdk/protobuf/ExtensionRegistryLite;)Landroid/car/hardware/xpu/XpuXNgpNaviInfo$NaviFacilityList;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 12958
    sget-object v0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$NaviFacilityList;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuXNgpNaviInfo$NaviFacilityList;

    invoke-static {v0, p0, p1}, Lcom/android/carsdk/protobuf/GeneratedMessageLite;->parseFrom(Lcom/android/carsdk/protobuf/GeneratedMessageLite;Lcom/android/carsdk/protobuf/CodedInputStream;Lcom/android/carsdk/protobuf/ExtensionRegistryLite;)Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$NaviFacilityList;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Landroid/car/hardware/xpu/XpuXNgpNaviInfo$NaviFacilityList;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 12928
    sget-object v0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$NaviFacilityList;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuXNgpNaviInfo$NaviFacilityList;

    invoke-static {v0, p0}, Lcom/android/carsdk/protobuf/GeneratedMessageLite;->parseFrom(Lcom/android/carsdk/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$NaviFacilityList;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/android/carsdk/protobuf/ExtensionRegistryLite;)Landroid/car/hardware/xpu/XpuXNgpNaviInfo$NaviFacilityList;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 12935
    sget-object v0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$NaviFacilityList;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuXNgpNaviInfo$NaviFacilityList;

    invoke-static {v0, p0, p1}, Lcom/android/carsdk/protobuf/GeneratedMessageLite;->parseFrom(Lcom/android/carsdk/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/android/carsdk/protobuf/ExtensionRegistryLite;)Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$NaviFacilityList;

    return-object p0
.end method

.method public static parseFrom([B)Landroid/car/hardware/xpu/XpuXNgpNaviInfo$NaviFacilityList;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/carsdk/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 12916
    sget-object v0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$NaviFacilityList;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuXNgpNaviInfo$NaviFacilityList;

    invoke-static {v0, p0}, Lcom/android/carsdk/protobuf/GeneratedMessageLite;->parseFrom(Lcom/android/carsdk/protobuf/GeneratedMessageLite;[B)Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$NaviFacilityList;

    return-object p0
.end method

.method public static parseFrom([BLcom/android/carsdk/protobuf/ExtensionRegistryLite;)Landroid/car/hardware/xpu/XpuXNgpNaviInfo$NaviFacilityList;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/carsdk/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 12923
    sget-object v0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$NaviFacilityList;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuXNgpNaviInfo$NaviFacilityList;

    invoke-static {v0, p0, p1}, Lcom/android/carsdk/protobuf/GeneratedMessageLite;->parseFrom(Lcom/android/carsdk/protobuf/GeneratedMessageLite;[BLcom/android/carsdk/protobuf/ExtensionRegistryLite;)Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$NaviFacilityList;

    return-object p0
.end method

.method public static parser()Lcom/android/carsdk/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/android/carsdk/protobuf/Parser<",
            "Landroid/car/hardware/xpu/XpuXNgpNaviInfo$NaviFacilityList;",
            ">;"
        }
    .end annotation

    .line 13226
    sget-object v0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$NaviFacilityList;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuXNgpNaviInfo$NaviFacilityList;

    invoke-virtual {v0}, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$NaviFacilityList;->getParserForType()Lcom/android/carsdk/protobuf/Parser;

    move-result-object v0

    return-object v0
.end method

.method private removeInfos(I)V
    .locals 1

    .line 12877
    invoke-direct {p0}, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$NaviFacilityList;->ensureInfosIsMutable()V

    .line 12878
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$NaviFacilityList;->infos_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1}, Lcom/android/carsdk/protobuf/Internal$ProtobufList;->remove(I)Ljava/lang/Object;

    return-void
.end method

.method private setInfos(ILandroid/car/hardware/xpu/XpuXNgpNaviInfo$NaviFacility$Builder;)V
    .locals 1

    .line 12790
    invoke-direct {p0}, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$NaviFacilityList;->ensureInfosIsMutable()V

    .line 12791
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$NaviFacilityList;->infos_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    invoke-virtual {p2}, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$NaviFacility$Builder;->build()Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object p2

    check-cast p2, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$NaviFacility;

    invoke-interface {v0, p1, p2}, Lcom/android/carsdk/protobuf/Internal$ProtobufList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private setInfos(ILandroid/car/hardware/xpu/XpuXNgpNaviInfo$NaviFacility;)V
    .locals 1

    .line 12776
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 12778
    invoke-direct {p0}, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$NaviFacilityList;->ensureInfosIsMutable()V

    .line 12779
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$NaviFacilityList;->infos_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1, p2}, Lcom/android/carsdk/protobuf/Internal$ProtobufList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method protected final dynamicMethod(Lcom/android/carsdk/protobuf/GeneratedMessageLite$MethodToInvoke;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    .line 13133
    sget-object v0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$1;->$SwitchMap$com$google$protobuf$GeneratedMessageLite$MethodToInvoke:[I

    invoke-virtual {p1}, Lcom/android/carsdk/protobuf/GeneratedMessageLite$MethodToInvoke;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x0

    packed-switch p1, :pswitch_data_0

    .line 13208
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1

    .line 13199
    :pswitch_0
    sget-object p1, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$NaviFacilityList;->PARSER:Lcom/android/carsdk/protobuf/Parser;

    if-nez p1, :cond_1

    const-class p1, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$NaviFacilityList;

    monitor-enter p1

    .line 13200
    :try_start_0
    sget-object p2, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$NaviFacilityList;->PARSER:Lcom/android/carsdk/protobuf/Parser;

    if-nez p2, :cond_0

    .line 13201
    new-instance p2, Lcom/android/carsdk/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;

    sget-object p3, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$NaviFacilityList;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuXNgpNaviInfo$NaviFacilityList;

    invoke-direct {p2, p3}, Lcom/android/carsdk/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;-><init>(Lcom/android/carsdk/protobuf/GeneratedMessageLite;)V

    sput-object p2, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$NaviFacilityList;->PARSER:Lcom/android/carsdk/protobuf/Parser;

    .line 13203
    :cond_0
    monitor-exit p1

    goto :goto_0

    :catchall_0
    move-exception p2

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p2

    .line 13205
    :cond_1
    :goto_0
    sget-object p1, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$NaviFacilityList;->PARSER:Lcom/android/carsdk/protobuf/Parser;

    return-object p1

    .line 13157
    :pswitch_1
    check-cast p2, Lcom/android/carsdk/protobuf/CodedInputStream;

    .line 13159
    check-cast p3, Lcom/android/carsdk/protobuf/ExtensionRegistryLite;

    const/4 p1, 0x0

    :cond_2
    :goto_1
    if-nez p1, :cond_6

    .line 13164
    :try_start_1
    invoke-virtual {p2}, Lcom/android/carsdk/protobuf/CodedInputStream;->readTag()I

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_5

    const/16 v2, 0xa

    if-eq v0, v2, :cond_3

    .line 13170
    invoke-virtual {p2, v0}, Lcom/android/carsdk/protobuf/CodedInputStream;->skipField(I)Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_2

    .line 13176
    :cond_3
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$NaviFacilityList;->infos_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    invoke-interface {v0}, Lcom/android/carsdk/protobuf/Internal$ProtobufList;->isModifiable()Z

    move-result v0

    if-nez v0, :cond_4

    .line 13177
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$NaviFacilityList;->infos_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    .line 13178
    invoke-static {v0}, Lcom/android/carsdk/protobuf/GeneratedMessageLite;->mutableCopy(Lcom/android/carsdk/protobuf/Internal$ProtobufList;)Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    move-result-object v0

    iput-object v0, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$NaviFacilityList;->infos_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    .line 13180
    :cond_4
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$NaviFacilityList;->infos_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    .line 13181
    invoke-static {}, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$NaviFacility;->parser()Lcom/android/carsdk/protobuf/Parser;

    move-result-object v1

    invoke-virtual {p2, v1, p3}, Lcom/android/carsdk/protobuf/CodedInputStream;->readMessage(Lcom/android/carsdk/protobuf/Parser;Lcom/android/carsdk/protobuf/ExtensionRegistryLite;)Lcom/android/carsdk/protobuf/MessageLite;

    move-result-object v1

    check-cast v1, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$NaviFacility;

    .line 13180
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

    .line 13189
    :try_start_2
    new-instance p2, Ljava/lang/RuntimeException;

    new-instance p3, Lcom/android/carsdk/protobuf/InvalidProtocolBufferException;

    .line 13191
    invoke-virtual {p1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p3, p1}, Lcom/android/carsdk/protobuf/InvalidProtocolBufferException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, p0}, Lcom/android/carsdk/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/android/carsdk/protobuf/MessageLite;)Lcom/android/carsdk/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p2

    :catch_1
    move-exception p1

    .line 13187
    new-instance p2, Ljava/lang/RuntimeException;

    invoke-virtual {p1, p0}, Lcom/android/carsdk/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/android/carsdk/protobuf/MessageLite;)Lcom/android/carsdk/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 13192
    :goto_3
    throw p1

    .line 13196
    :cond_6
    :pswitch_2
    sget-object p1, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$NaviFacilityList;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuXNgpNaviInfo$NaviFacilityList;

    return-object p1

    .line 13148
    :pswitch_3
    check-cast p2, Lcom/android/carsdk/protobuf/GeneratedMessageLite$Visitor;

    .line 13149
    check-cast p3, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$NaviFacilityList;

    .line 13150
    iget-object p1, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$NaviFacilityList;->infos_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    iget-object p3, p3, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$NaviFacilityList;->infos_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    invoke-interface {p2, p1, p3}, Lcom/android/carsdk/protobuf/GeneratedMessageLite$Visitor;->visitList(Lcom/android/carsdk/protobuf/Internal$ProtobufList;Lcom/android/carsdk/protobuf/Internal$ProtobufList;)Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    move-result-object p1

    iput-object p1, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$NaviFacilityList;->infos_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    .line 13151
    sget-object p1, Lcom/android/carsdk/protobuf/GeneratedMessageLite$MergeFromVisitor;->INSTANCE:Lcom/android/carsdk/protobuf/GeneratedMessageLite$MergeFromVisitor;

    return-object p0

    .line 13145
    :pswitch_4
    new-instance p1, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$NaviFacilityList$Builder;

    invoke-direct {p1, v0}, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$NaviFacilityList$Builder;-><init>(Landroid/car/hardware/xpu/XpuXNgpNaviInfo$1;)V

    return-object p1

    .line 13141
    :pswitch_5
    iget-object p1, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$NaviFacilityList;->infos_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    invoke-interface {p1}, Lcom/android/carsdk/protobuf/Internal$ProtobufList;->makeImmutable()V

    return-object v0

    .line 13138
    :pswitch_6
    sget-object p1, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$NaviFacilityList;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuXNgpNaviInfo$NaviFacilityList;

    return-object p1

    .line 13135
    :pswitch_7
    new-instance p1, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$NaviFacilityList;

    invoke-direct {p1}, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$NaviFacilityList;-><init>()V

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

.method public getInfos(I)Landroid/car/hardware/xpu/XpuXNgpNaviInfo$NaviFacility;
    .locals 1

    .line 12746
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$NaviFacilityList;->infos_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1}, Lcom/android/carsdk/protobuf/Internal$ProtobufList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$NaviFacility;

    return-object p1
.end method

.method public getInfosCount()I
    .locals 1

    .line 12736
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$NaviFacilityList;->infos_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

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
            "Landroid/car/hardware/xpu/XpuXNgpNaviInfo$NaviFacility;",
            ">;"
        }
    .end annotation

    .line 12715
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$NaviFacilityList;->infos_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    return-object v0
.end method

.method public getInfosOrBuilder(I)Landroid/car/hardware/xpu/XpuXNgpNaviInfo$NaviFacilityOrBuilder;
    .locals 1

    .line 12757
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$NaviFacilityList;->infos_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1}, Lcom/android/carsdk/protobuf/Internal$ProtobufList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$NaviFacilityOrBuilder;

    return-object p1
.end method

.method public getInfosOrBuilderList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "+",
            "Landroid/car/hardware/xpu/XpuXNgpNaviInfo$NaviFacilityOrBuilder;",
            ">;"
        }
    .end annotation

    .line 12726
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$NaviFacilityList;->infos_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    return-object v0
.end method

.method public getSerializedSize()I
    .locals 4

    .line 12889
    iget v0, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$NaviFacilityList;->memoizedSerializedSize:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    return v0

    :cond_0
    const/4 v0, 0x0

    move v1, v0

    .line 12893
    :goto_0
    iget-object v2, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$NaviFacilityList;->infos_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    invoke-interface {v2}, Lcom/android/carsdk/protobuf/Internal$ProtobufList;->size()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 12894
    iget-object v2, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$NaviFacilityList;->infos_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    .line 12895
    invoke-interface {v2, v0}, Lcom/android/carsdk/protobuf/Internal$ProtobufList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/carsdk/protobuf/MessageLite;

    const/4 v3, 0x1

    invoke-static {v3, v2}, Lcom/android/carsdk/protobuf/CodedOutputStream;->computeMessageSize(ILcom/android/carsdk/protobuf/MessageLite;)I

    move-result v2

    add-int/2addr v1, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 12897
    :cond_1
    iput v1, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$NaviFacilityList;->memoizedSerializedSize:I

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

    .line 12883
    :goto_0
    iget-object v1, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$NaviFacilityList;->infos_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    invoke-interface {v1}, Lcom/android/carsdk/protobuf/Internal$ProtobufList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 12884
    iget-object v1, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$NaviFacilityList;->infos_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

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
