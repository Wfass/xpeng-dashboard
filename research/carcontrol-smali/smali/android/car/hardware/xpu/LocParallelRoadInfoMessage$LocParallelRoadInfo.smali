.class public final Landroid/car/hardware/xpu/LocParallelRoadInfoMessage$LocParallelRoadInfo;
.super Lcom/android/carsdk/protobuf/GeneratedMessageLite;
.source "LocParallelRoadInfoMessage.java"

# interfaces
.implements Landroid/car/hardware/xpu/LocParallelRoadInfoMessage$LocParallelRoadInfoOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/car/hardware/xpu/LocParallelRoadInfoMessage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "LocParallelRoadInfo"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/car/hardware/xpu/LocParallelRoadInfoMessage$LocParallelRoadInfo$Builder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/carsdk/protobuf/GeneratedMessageLite<",
        "Landroid/car/hardware/xpu/LocParallelRoadInfoMessage$LocParallelRoadInfo;",
        "Landroid/car/hardware/xpu/LocParallelRoadInfoMessage$LocParallelRoadInfo$Builder;",
        ">;",
        "Landroid/car/hardware/xpu/LocParallelRoadInfoMessage$LocParallelRoadInfoOrBuilder;"
    }
.end annotation


# static fields
.field public static final COUNT_FIELD_NUMBER:I = 0x4

.field private static final DEFAULT_INSTANCE:Landroid/car/hardware/xpu/LocParallelRoadInfoMessage$LocParallelRoadInfo;

.field public static final FLAG_FIELD_NUMBER:I = 0x2

.field public static final HW_FLAG_FIELD_NUMBER:I = 0x3

.field public static final PARALLEL_ROAD_LIST_FIELD_NUMBER:I = 0x5

.field private static volatile PARSER:Lcom/android/carsdk/protobuf/Parser; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/carsdk/protobuf/Parser<",
            "Landroid/car/hardware/xpu/LocParallelRoadInfoMessage$LocParallelRoadInfo;",
            ">;"
        }
    .end annotation
.end field

.field public static final STATUS_FIELD_NUMBER:I = 0x1


# instance fields
.field private bitField0_:I

.field private count_:I

.field private flag_:I

.field private hwFlag_:I

.field private parallelRoadList_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/carsdk/protobuf/Internal$ProtobufList<",
            "Landroid/car/hardware/xpu/LocParallelRoadInfoMessage$LocParallelRoad;",
            ">;"
        }
    .end annotation
.end field

.field private status_:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1574
    new-instance v0, Landroid/car/hardware/xpu/LocParallelRoadInfoMessage$LocParallelRoadInfo;

    invoke-direct {v0}, Landroid/car/hardware/xpu/LocParallelRoadInfoMessage$LocParallelRoadInfo;-><init>()V

    sput-object v0, Landroid/car/hardware/xpu/LocParallelRoadInfoMessage$LocParallelRoadInfo;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/LocParallelRoadInfoMessage$LocParallelRoadInfo;

    .line 1575
    invoke-virtual {v0}, Landroid/car/hardware/xpu/LocParallelRoadInfoMessage$LocParallelRoadInfo;->makeImmutable()V

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 679
    invoke-direct {p0}, Lcom/android/carsdk/protobuf/GeneratedMessageLite;-><init>()V

    const/4 v0, 0x0

    .line 680
    iput v0, p0, Landroid/car/hardware/xpu/LocParallelRoadInfoMessage$LocParallelRoadInfo;->status_:I

    .line 681
    iput v0, p0, Landroid/car/hardware/xpu/LocParallelRoadInfoMessage$LocParallelRoadInfo;->flag_:I

    .line 682
    iput v0, p0, Landroid/car/hardware/xpu/LocParallelRoadInfoMessage$LocParallelRoadInfo;->hwFlag_:I

    .line 683
    iput v0, p0, Landroid/car/hardware/xpu/LocParallelRoadInfoMessage$LocParallelRoadInfo;->count_:I

    .line 684
    invoke-static {}, Landroid/car/hardware/xpu/LocParallelRoadInfoMessage$LocParallelRoadInfo;->emptyProtobufList()Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    move-result-object v0

    iput-object v0, p0, Landroid/car/hardware/xpu/LocParallelRoadInfoMessage$LocParallelRoadInfo;->parallelRoadList_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    return-void
.end method

.method static synthetic access$1000()Landroid/car/hardware/xpu/LocParallelRoadInfoMessage$LocParallelRoadInfo;
    .locals 1

    .line 674
    sget-object v0, Landroid/car/hardware/xpu/LocParallelRoadInfoMessage$LocParallelRoadInfo;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/LocParallelRoadInfoMessage$LocParallelRoadInfo;

    return-object v0
.end method

.method static synthetic access$1100(Landroid/car/hardware/xpu/LocParallelRoadInfoMessage$LocParallelRoadInfo;I)V
    .locals 0

    .line 674
    invoke-direct {p0, p1}, Landroid/car/hardware/xpu/LocParallelRoadInfoMessage$LocParallelRoadInfo;->setStatus(I)V

    return-void
.end method

.method static synthetic access$1200(Landroid/car/hardware/xpu/LocParallelRoadInfoMessage$LocParallelRoadInfo;)V
    .locals 0

    .line 674
    invoke-direct {p0}, Landroid/car/hardware/xpu/LocParallelRoadInfoMessage$LocParallelRoadInfo;->clearStatus()V

    return-void
.end method

.method static synthetic access$1300(Landroid/car/hardware/xpu/LocParallelRoadInfoMessage$LocParallelRoadInfo;I)V
    .locals 0

    .line 674
    invoke-direct {p0, p1}, Landroid/car/hardware/xpu/LocParallelRoadInfoMessage$LocParallelRoadInfo;->setFlag(I)V

    return-void
.end method

.method static synthetic access$1400(Landroid/car/hardware/xpu/LocParallelRoadInfoMessage$LocParallelRoadInfo;)V
    .locals 0

    .line 674
    invoke-direct {p0}, Landroid/car/hardware/xpu/LocParallelRoadInfoMessage$LocParallelRoadInfo;->clearFlag()V

    return-void
.end method

.method static synthetic access$1500(Landroid/car/hardware/xpu/LocParallelRoadInfoMessage$LocParallelRoadInfo;I)V
    .locals 0

    .line 674
    invoke-direct {p0, p1}, Landroid/car/hardware/xpu/LocParallelRoadInfoMessage$LocParallelRoadInfo;->setHwFlag(I)V

    return-void
.end method

.method static synthetic access$1600(Landroid/car/hardware/xpu/LocParallelRoadInfoMessage$LocParallelRoadInfo;)V
    .locals 0

    .line 674
    invoke-direct {p0}, Landroid/car/hardware/xpu/LocParallelRoadInfoMessage$LocParallelRoadInfo;->clearHwFlag()V

    return-void
.end method

.method static synthetic access$1700(Landroid/car/hardware/xpu/LocParallelRoadInfoMessage$LocParallelRoadInfo;I)V
    .locals 0

    .line 674
    invoke-direct {p0, p1}, Landroid/car/hardware/xpu/LocParallelRoadInfoMessage$LocParallelRoadInfo;->setCount(I)V

    return-void
.end method

.method static synthetic access$1800(Landroid/car/hardware/xpu/LocParallelRoadInfoMessage$LocParallelRoadInfo;)V
    .locals 0

    .line 674
    invoke-direct {p0}, Landroid/car/hardware/xpu/LocParallelRoadInfoMessage$LocParallelRoadInfo;->clearCount()V

    return-void
.end method

.method static synthetic access$1900(Landroid/car/hardware/xpu/LocParallelRoadInfoMessage$LocParallelRoadInfo;ILandroid/car/hardware/xpu/LocParallelRoadInfoMessage$LocParallelRoad;)V
    .locals 0

    .line 674
    invoke-direct {p0, p1, p2}, Landroid/car/hardware/xpu/LocParallelRoadInfoMessage$LocParallelRoadInfo;->setParallelRoadList(ILandroid/car/hardware/xpu/LocParallelRoadInfoMessage$LocParallelRoad;)V

    return-void
.end method

.method static synthetic access$2000(Landroid/car/hardware/xpu/LocParallelRoadInfoMessage$LocParallelRoadInfo;ILandroid/car/hardware/xpu/LocParallelRoadInfoMessage$LocParallelRoad$Builder;)V
    .locals 0

    .line 674
    invoke-direct {p0, p1, p2}, Landroid/car/hardware/xpu/LocParallelRoadInfoMessage$LocParallelRoadInfo;->setParallelRoadList(ILandroid/car/hardware/xpu/LocParallelRoadInfoMessage$LocParallelRoad$Builder;)V

    return-void
.end method

.method static synthetic access$2100(Landroid/car/hardware/xpu/LocParallelRoadInfoMessage$LocParallelRoadInfo;Landroid/car/hardware/xpu/LocParallelRoadInfoMessage$LocParallelRoad;)V
    .locals 0

    .line 674
    invoke-direct {p0, p1}, Landroid/car/hardware/xpu/LocParallelRoadInfoMessage$LocParallelRoadInfo;->addParallelRoadList(Landroid/car/hardware/xpu/LocParallelRoadInfoMessage$LocParallelRoad;)V

    return-void
.end method

.method static synthetic access$2200(Landroid/car/hardware/xpu/LocParallelRoadInfoMessage$LocParallelRoadInfo;ILandroid/car/hardware/xpu/LocParallelRoadInfoMessage$LocParallelRoad;)V
    .locals 0

    .line 674
    invoke-direct {p0, p1, p2}, Landroid/car/hardware/xpu/LocParallelRoadInfoMessage$LocParallelRoadInfo;->addParallelRoadList(ILandroid/car/hardware/xpu/LocParallelRoadInfoMessage$LocParallelRoad;)V

    return-void
.end method

.method static synthetic access$2300(Landroid/car/hardware/xpu/LocParallelRoadInfoMessage$LocParallelRoadInfo;Landroid/car/hardware/xpu/LocParallelRoadInfoMessage$LocParallelRoad$Builder;)V
    .locals 0

    .line 674
    invoke-direct {p0, p1}, Landroid/car/hardware/xpu/LocParallelRoadInfoMessage$LocParallelRoadInfo;->addParallelRoadList(Landroid/car/hardware/xpu/LocParallelRoadInfoMessage$LocParallelRoad$Builder;)V

    return-void
.end method

.method static synthetic access$2400(Landroid/car/hardware/xpu/LocParallelRoadInfoMessage$LocParallelRoadInfo;ILandroid/car/hardware/xpu/LocParallelRoadInfoMessage$LocParallelRoad$Builder;)V
    .locals 0

    .line 674
    invoke-direct {p0, p1, p2}, Landroid/car/hardware/xpu/LocParallelRoadInfoMessage$LocParallelRoadInfo;->addParallelRoadList(ILandroid/car/hardware/xpu/LocParallelRoadInfoMessage$LocParallelRoad$Builder;)V

    return-void
.end method

.method static synthetic access$2500(Landroid/car/hardware/xpu/LocParallelRoadInfoMessage$LocParallelRoadInfo;Ljava/lang/Iterable;)V
    .locals 0

    .line 674
    invoke-direct {p0, p1}, Landroid/car/hardware/xpu/LocParallelRoadInfoMessage$LocParallelRoadInfo;->addAllParallelRoadList(Ljava/lang/Iterable;)V

    return-void
.end method

.method static synthetic access$2600(Landroid/car/hardware/xpu/LocParallelRoadInfoMessage$LocParallelRoadInfo;)V
    .locals 0

    .line 674
    invoke-direct {p0}, Landroid/car/hardware/xpu/LocParallelRoadInfoMessage$LocParallelRoadInfo;->clearParallelRoadList()V

    return-void
.end method

.method static synthetic access$2700(Landroid/car/hardware/xpu/LocParallelRoadInfoMessage$LocParallelRoadInfo;I)V
    .locals 0

    .line 674
    invoke-direct {p0, p1}, Landroid/car/hardware/xpu/LocParallelRoadInfoMessage$LocParallelRoadInfo;->removeParallelRoadList(I)V

    return-void
.end method

.method private addAllParallelRoadList(Ljava/lang/Iterable;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Landroid/car/hardware/xpu/LocParallelRoadInfoMessage$LocParallelRoad;",
            ">;)V"
        }
    .end annotation

    .line 995
    invoke-direct {p0}, Landroid/car/hardware/xpu/LocParallelRoadInfoMessage$LocParallelRoadInfo;->ensureParallelRoadListIsMutable()V

    .line 996
    iget-object v0, p0, Landroid/car/hardware/xpu/LocParallelRoadInfoMessage$LocParallelRoadInfo;->parallelRoadList_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    invoke-static {p1, v0}, Lcom/android/carsdk/protobuf/AbstractMessageLite;->addAll(Ljava/lang/Iterable;Ljava/util/Collection;)V

    return-void
.end method

.method private addParallelRoadList(ILandroid/car/hardware/xpu/LocParallelRoadInfoMessage$LocParallelRoad$Builder;)V
    .locals 1

    .line 983
    invoke-direct {p0}, Landroid/car/hardware/xpu/LocParallelRoadInfoMessage$LocParallelRoadInfo;->ensureParallelRoadListIsMutable()V

    .line 984
    iget-object v0, p0, Landroid/car/hardware/xpu/LocParallelRoadInfoMessage$LocParallelRoadInfo;->parallelRoadList_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    invoke-virtual {p2}, Landroid/car/hardware/xpu/LocParallelRoadInfoMessage$LocParallelRoad$Builder;->build()Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object p2

    check-cast p2, Landroid/car/hardware/xpu/LocParallelRoadInfoMessage$LocParallelRoad;

    invoke-interface {v0, p1, p2}, Lcom/android/carsdk/protobuf/Internal$ProtobufList;->add(ILjava/lang/Object;)V

    return-void
.end method

.method private addParallelRoadList(ILandroid/car/hardware/xpu/LocParallelRoadInfoMessage$LocParallelRoad;)V
    .locals 1

    .line 957
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 959
    invoke-direct {p0}, Landroid/car/hardware/xpu/LocParallelRoadInfoMessage$LocParallelRoadInfo;->ensureParallelRoadListIsMutable()V

    .line 960
    iget-object v0, p0, Landroid/car/hardware/xpu/LocParallelRoadInfoMessage$LocParallelRoadInfo;->parallelRoadList_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1, p2}, Lcom/android/carsdk/protobuf/Internal$ProtobufList;->add(ILjava/lang/Object;)V

    return-void
.end method

.method private addParallelRoadList(Landroid/car/hardware/xpu/LocParallelRoadInfoMessage$LocParallelRoad$Builder;)V
    .locals 1

    .line 971
    invoke-direct {p0}, Landroid/car/hardware/xpu/LocParallelRoadInfoMessage$LocParallelRoadInfo;->ensureParallelRoadListIsMutable()V

    .line 972
    iget-object v0, p0, Landroid/car/hardware/xpu/LocParallelRoadInfoMessage$LocParallelRoadInfo;->parallelRoadList_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    invoke-virtual {p1}, Landroid/car/hardware/xpu/LocParallelRoadInfoMessage$LocParallelRoad$Builder;->build()Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Landroid/car/hardware/xpu/LocParallelRoadInfoMessage$LocParallelRoad;

    invoke-interface {v0, p1}, Lcom/android/carsdk/protobuf/Internal$ProtobufList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private addParallelRoadList(Landroid/car/hardware/xpu/LocParallelRoadInfoMessage$LocParallelRoad;)V
    .locals 1

    .line 942
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 944
    invoke-direct {p0}, Landroid/car/hardware/xpu/LocParallelRoadInfoMessage$LocParallelRoadInfo;->ensureParallelRoadListIsMutable()V

    .line 945
    iget-object v0, p0, Landroid/car/hardware/xpu/LocParallelRoadInfoMessage$LocParallelRoadInfo;->parallelRoadList_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1}, Lcom/android/carsdk/protobuf/Internal$ProtobufList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private clearCount()V
    .locals 1

    const/4 v0, 0x0

    .line 842
    iput v0, p0, Landroid/car/hardware/xpu/LocParallelRoadInfoMessage$LocParallelRoadInfo;->count_:I

    return-void
.end method

.method private clearFlag()V
    .locals 1

    const/4 v0, 0x0

    .line 763
    iput v0, p0, Landroid/car/hardware/xpu/LocParallelRoadInfoMessage$LocParallelRoadInfo;->flag_:I

    return-void
.end method

.method private clearHwFlag()V
    .locals 1

    const/4 v0, 0x0

    .line 807
    iput v0, p0, Landroid/car/hardware/xpu/LocParallelRoadInfoMessage$LocParallelRoadInfo;->hwFlag_:I

    return-void
.end method

.method private clearParallelRoadList()V
    .locals 1

    .line 1007
    invoke-static {}, Landroid/car/hardware/xpu/LocParallelRoadInfoMessage$LocParallelRoadInfo;->emptyProtobufList()Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    move-result-object v0

    iput-object v0, p0, Landroid/car/hardware/xpu/LocParallelRoadInfoMessage$LocParallelRoadInfo;->parallelRoadList_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    return-void
.end method

.method private clearStatus()V
    .locals 1

    const/4 v0, 0x0

    .line 719
    iput v0, p0, Landroid/car/hardware/xpu/LocParallelRoadInfoMessage$LocParallelRoadInfo;->status_:I

    return-void
.end method

.method private ensureParallelRoadListIsMutable()V
    .locals 1

    .line 900
    iget-object v0, p0, Landroid/car/hardware/xpu/LocParallelRoadInfoMessage$LocParallelRoadInfo;->parallelRoadList_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    invoke-interface {v0}, Lcom/android/carsdk/protobuf/Internal$ProtobufList;->isModifiable()Z

    move-result v0

    if-nez v0, :cond_0

    .line 901
    iget-object v0, p0, Landroid/car/hardware/xpu/LocParallelRoadInfoMessage$LocParallelRoadInfo;->parallelRoadList_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    .line 902
    invoke-static {v0}, Lcom/android/carsdk/protobuf/GeneratedMessageLite;->mutableCopy(Lcom/android/carsdk/protobuf/Internal$ProtobufList;)Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    move-result-object v0

    iput-object v0, p0, Landroid/car/hardware/xpu/LocParallelRoadInfoMessage$LocParallelRoadInfo;->parallelRoadList_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    :cond_0
    return-void
.end method

.method public static getDefaultInstance()Landroid/car/hardware/xpu/LocParallelRoadInfoMessage$LocParallelRoadInfo;
    .locals 1

    .line 1579
    sget-object v0, Landroid/car/hardware/xpu/LocParallelRoadInfoMessage$LocParallelRoadInfo;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/LocParallelRoadInfoMessage$LocParallelRoadInfo;

    return-object v0
.end method

.method public static newBuilder()Landroid/car/hardware/xpu/LocParallelRoadInfoMessage$LocParallelRoadInfo$Builder;
    .locals 1

    .line 1131
    sget-object v0, Landroid/car/hardware/xpu/LocParallelRoadInfoMessage$LocParallelRoadInfo;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/LocParallelRoadInfoMessage$LocParallelRoadInfo;

    invoke-virtual {v0}, Landroid/car/hardware/xpu/LocParallelRoadInfoMessage$LocParallelRoadInfo;->toBuilder()Lcom/android/carsdk/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Landroid/car/hardware/xpu/LocParallelRoadInfoMessage$LocParallelRoadInfo$Builder;

    return-object v0
.end method

.method public static newBuilder(Landroid/car/hardware/xpu/LocParallelRoadInfoMessage$LocParallelRoadInfo;)Landroid/car/hardware/xpu/LocParallelRoadInfoMessage$LocParallelRoadInfo$Builder;
    .locals 1

    .line 1134
    sget-object v0, Landroid/car/hardware/xpu/LocParallelRoadInfoMessage$LocParallelRoadInfo;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/LocParallelRoadInfoMessage$LocParallelRoadInfo;

    invoke-virtual {v0}, Landroid/car/hardware/xpu/LocParallelRoadInfoMessage$LocParallelRoadInfo;->toBuilder()Lcom/android/carsdk/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Landroid/car/hardware/xpu/LocParallelRoadInfoMessage$LocParallelRoadInfo$Builder;

    invoke-virtual {v0, p0}, Landroid/car/hardware/xpu/LocParallelRoadInfoMessage$LocParallelRoadInfo$Builder;->mergeFrom(Lcom/android/carsdk/protobuf/GeneratedMessageLite;)Lcom/android/carsdk/protobuf/GeneratedMessageLite$Builder;

    move-result-object p0

    check-cast p0, Landroid/car/hardware/xpu/LocParallelRoadInfoMessage$LocParallelRoadInfo$Builder;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Landroid/car/hardware/xpu/LocParallelRoadInfoMessage$LocParallelRoadInfo;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1108
    sget-object v0, Landroid/car/hardware/xpu/LocParallelRoadInfoMessage$LocParallelRoadInfo;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/LocParallelRoadInfoMessage$LocParallelRoadInfo;

    invoke-static {v0, p0}, Landroid/car/hardware/xpu/LocParallelRoadInfoMessage$LocParallelRoadInfo;->parseDelimitedFrom(Lcom/android/carsdk/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Landroid/car/hardware/xpu/LocParallelRoadInfoMessage$LocParallelRoadInfo;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/android/carsdk/protobuf/ExtensionRegistryLite;)Landroid/car/hardware/xpu/LocParallelRoadInfoMessage$LocParallelRoadInfo;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1114
    sget-object v0, Landroid/car/hardware/xpu/LocParallelRoadInfoMessage$LocParallelRoadInfo;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/LocParallelRoadInfoMessage$LocParallelRoadInfo;

    invoke-static {v0, p0, p1}, Landroid/car/hardware/xpu/LocParallelRoadInfoMessage$LocParallelRoadInfo;->parseDelimitedFrom(Lcom/android/carsdk/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/android/carsdk/protobuf/ExtensionRegistryLite;)Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Landroid/car/hardware/xpu/LocParallelRoadInfoMessage$LocParallelRoadInfo;

    return-object p0
.end method

.method public static parseFrom(Lcom/android/carsdk/protobuf/ByteString;)Landroid/car/hardware/xpu/LocParallelRoadInfoMessage$LocParallelRoadInfo;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/carsdk/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1072
    sget-object v0, Landroid/car/hardware/xpu/LocParallelRoadInfoMessage$LocParallelRoadInfo;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/LocParallelRoadInfoMessage$LocParallelRoadInfo;

    invoke-static {v0, p0}, Lcom/android/carsdk/protobuf/GeneratedMessageLite;->parseFrom(Lcom/android/carsdk/protobuf/GeneratedMessageLite;Lcom/android/carsdk/protobuf/ByteString;)Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Landroid/car/hardware/xpu/LocParallelRoadInfoMessage$LocParallelRoadInfo;

    return-object p0
.end method

.method public static parseFrom(Lcom/android/carsdk/protobuf/ByteString;Lcom/android/carsdk/protobuf/ExtensionRegistryLite;)Landroid/car/hardware/xpu/LocParallelRoadInfoMessage$LocParallelRoadInfo;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/carsdk/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1079
    sget-object v0, Landroid/car/hardware/xpu/LocParallelRoadInfoMessage$LocParallelRoadInfo;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/LocParallelRoadInfoMessage$LocParallelRoadInfo;

    invoke-static {v0, p0, p1}, Lcom/android/carsdk/protobuf/GeneratedMessageLite;->parseFrom(Lcom/android/carsdk/protobuf/GeneratedMessageLite;Lcom/android/carsdk/protobuf/ByteString;Lcom/android/carsdk/protobuf/ExtensionRegistryLite;)Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Landroid/car/hardware/xpu/LocParallelRoadInfoMessage$LocParallelRoadInfo;

    return-object p0
.end method

.method public static parseFrom(Lcom/android/carsdk/protobuf/CodedInputStream;)Landroid/car/hardware/xpu/LocParallelRoadInfoMessage$LocParallelRoadInfo;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1119
    sget-object v0, Landroid/car/hardware/xpu/LocParallelRoadInfoMessage$LocParallelRoadInfo;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/LocParallelRoadInfoMessage$LocParallelRoadInfo;

    invoke-static {v0, p0}, Lcom/android/carsdk/protobuf/GeneratedMessageLite;->parseFrom(Lcom/android/carsdk/protobuf/GeneratedMessageLite;Lcom/android/carsdk/protobuf/CodedInputStream;)Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Landroid/car/hardware/xpu/LocParallelRoadInfoMessage$LocParallelRoadInfo;

    return-object p0
.end method

.method public static parseFrom(Lcom/android/carsdk/protobuf/CodedInputStream;Lcom/android/carsdk/protobuf/ExtensionRegistryLite;)Landroid/car/hardware/xpu/LocParallelRoadInfoMessage$LocParallelRoadInfo;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1126
    sget-object v0, Landroid/car/hardware/xpu/LocParallelRoadInfoMessage$LocParallelRoadInfo;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/LocParallelRoadInfoMessage$LocParallelRoadInfo;

    invoke-static {v0, p0, p1}, Lcom/android/carsdk/protobuf/GeneratedMessageLite;->parseFrom(Lcom/android/carsdk/protobuf/GeneratedMessageLite;Lcom/android/carsdk/protobuf/CodedInputStream;Lcom/android/carsdk/protobuf/ExtensionRegistryLite;)Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Landroid/car/hardware/xpu/LocParallelRoadInfoMessage$LocParallelRoadInfo;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Landroid/car/hardware/xpu/LocParallelRoadInfoMessage$LocParallelRoadInfo;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1096
    sget-object v0, Landroid/car/hardware/xpu/LocParallelRoadInfoMessage$LocParallelRoadInfo;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/LocParallelRoadInfoMessage$LocParallelRoadInfo;

    invoke-static {v0, p0}, Lcom/android/carsdk/protobuf/GeneratedMessageLite;->parseFrom(Lcom/android/carsdk/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Landroid/car/hardware/xpu/LocParallelRoadInfoMessage$LocParallelRoadInfo;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/android/carsdk/protobuf/ExtensionRegistryLite;)Landroid/car/hardware/xpu/LocParallelRoadInfoMessage$LocParallelRoadInfo;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1103
    sget-object v0, Landroid/car/hardware/xpu/LocParallelRoadInfoMessage$LocParallelRoadInfo;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/LocParallelRoadInfoMessage$LocParallelRoadInfo;

    invoke-static {v0, p0, p1}, Lcom/android/carsdk/protobuf/GeneratedMessageLite;->parseFrom(Lcom/android/carsdk/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/android/carsdk/protobuf/ExtensionRegistryLite;)Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Landroid/car/hardware/xpu/LocParallelRoadInfoMessage$LocParallelRoadInfo;

    return-object p0
.end method

.method public static parseFrom([B)Landroid/car/hardware/xpu/LocParallelRoadInfoMessage$LocParallelRoadInfo;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/carsdk/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1084
    sget-object v0, Landroid/car/hardware/xpu/LocParallelRoadInfoMessage$LocParallelRoadInfo;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/LocParallelRoadInfoMessage$LocParallelRoadInfo;

    invoke-static {v0, p0}, Lcom/android/carsdk/protobuf/GeneratedMessageLite;->parseFrom(Lcom/android/carsdk/protobuf/GeneratedMessageLite;[B)Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Landroid/car/hardware/xpu/LocParallelRoadInfoMessage$LocParallelRoadInfo;

    return-object p0
.end method

.method public static parseFrom([BLcom/android/carsdk/protobuf/ExtensionRegistryLite;)Landroid/car/hardware/xpu/LocParallelRoadInfoMessage$LocParallelRoadInfo;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/carsdk/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1091
    sget-object v0, Landroid/car/hardware/xpu/LocParallelRoadInfoMessage$LocParallelRoadInfo;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/LocParallelRoadInfoMessage$LocParallelRoadInfo;

    invoke-static {v0, p0, p1}, Lcom/android/carsdk/protobuf/GeneratedMessageLite;->parseFrom(Lcom/android/carsdk/protobuf/GeneratedMessageLite;[BLcom/android/carsdk/protobuf/ExtensionRegistryLite;)Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Landroid/car/hardware/xpu/LocParallelRoadInfoMessage$LocParallelRoadInfo;

    return-object p0
.end method

.method public static parser()Lcom/android/carsdk/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/android/carsdk/protobuf/Parser<",
            "Landroid/car/hardware/xpu/LocParallelRoadInfoMessage$LocParallelRoadInfo;",
            ">;"
        }
    .end annotation

    .line 1585
    sget-object v0, Landroid/car/hardware/xpu/LocParallelRoadInfoMessage$LocParallelRoadInfo;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/LocParallelRoadInfoMessage$LocParallelRoadInfo;

    invoke-virtual {v0}, Landroid/car/hardware/xpu/LocParallelRoadInfoMessage$LocParallelRoadInfo;->getParserForType()Lcom/android/carsdk/protobuf/Parser;

    move-result-object v0

    return-object v0
.end method

.method private removeParallelRoadList(I)V
    .locals 1

    .line 1017
    invoke-direct {p0}, Landroid/car/hardware/xpu/LocParallelRoadInfoMessage$LocParallelRoadInfo;->ensureParallelRoadListIsMutable()V

    .line 1018
    iget-object v0, p0, Landroid/car/hardware/xpu/LocParallelRoadInfoMessage$LocParallelRoadInfo;->parallelRoadList_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1}, Lcom/android/carsdk/protobuf/Internal$ProtobufList;->remove(I)Ljava/lang/Object;

    return-void
.end method

.method private setCount(I)V
    .locals 0

    .line 831
    iput p1, p0, Landroid/car/hardware/xpu/LocParallelRoadInfoMessage$LocParallelRoadInfo;->count_:I

    return-void
.end method

.method private setFlag(I)V
    .locals 0

    .line 749
    iput p1, p0, Landroid/car/hardware/xpu/LocParallelRoadInfoMessage$LocParallelRoadInfo;->flag_:I

    return-void
.end method

.method private setHwFlag(I)V
    .locals 0

    .line 793
    iput p1, p0, Landroid/car/hardware/xpu/LocParallelRoadInfoMessage$LocParallelRoadInfo;->hwFlag_:I

    return-void
.end method

.method private setParallelRoadList(ILandroid/car/hardware/xpu/LocParallelRoadInfoMessage$LocParallelRoad$Builder;)V
    .locals 1

    .line 930
    invoke-direct {p0}, Landroid/car/hardware/xpu/LocParallelRoadInfoMessage$LocParallelRoadInfo;->ensureParallelRoadListIsMutable()V

    .line 931
    iget-object v0, p0, Landroid/car/hardware/xpu/LocParallelRoadInfoMessage$LocParallelRoadInfo;->parallelRoadList_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    invoke-virtual {p2}, Landroid/car/hardware/xpu/LocParallelRoadInfoMessage$LocParallelRoad$Builder;->build()Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object p2

    check-cast p2, Landroid/car/hardware/xpu/LocParallelRoadInfoMessage$LocParallelRoad;

    invoke-interface {v0, p1, p2}, Lcom/android/carsdk/protobuf/Internal$ProtobufList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private setParallelRoadList(ILandroid/car/hardware/xpu/LocParallelRoadInfoMessage$LocParallelRoad;)V
    .locals 1

    .line 916
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 918
    invoke-direct {p0}, Landroid/car/hardware/xpu/LocParallelRoadInfoMessage$LocParallelRoadInfo;->ensureParallelRoadListIsMutable()V

    .line 919
    iget-object v0, p0, Landroid/car/hardware/xpu/LocParallelRoadInfoMessage$LocParallelRoadInfo;->parallelRoadList_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1, p2}, Lcom/android/carsdk/protobuf/Internal$ProtobufList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private setStatus(I)V
    .locals 0

    .line 708
    iput p1, p0, Landroid/car/hardware/xpu/LocParallelRoadInfoMessage$LocParallelRoadInfo;->status_:I

    return-void
.end method


# virtual methods
.method protected final dynamicMethod(Lcom/android/carsdk/protobuf/GeneratedMessageLite$MethodToInvoke;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5

    .line 1463
    sget-object v0, Landroid/car/hardware/xpu/LocParallelRoadInfoMessage$1;->$SwitchMap$com$google$protobuf$GeneratedMessageLite$MethodToInvoke:[I

    invoke-virtual {p1}, Lcom/android/carsdk/protobuf/GeneratedMessageLite$MethodToInvoke;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x1

    packed-switch p1, :pswitch_data_0

    .line 1567
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1

    .line 1558
    :pswitch_0
    sget-object p1, Landroid/car/hardware/xpu/LocParallelRoadInfoMessage$LocParallelRoadInfo;->PARSER:Lcom/android/carsdk/protobuf/Parser;

    if-nez p1, :cond_1

    const-class p1, Landroid/car/hardware/xpu/LocParallelRoadInfoMessage$LocParallelRoadInfo;

    monitor-enter p1

    .line 1559
    :try_start_0
    sget-object p2, Landroid/car/hardware/xpu/LocParallelRoadInfoMessage$LocParallelRoadInfo;->PARSER:Lcom/android/carsdk/protobuf/Parser;

    if-nez p2, :cond_0

    .line 1560
    new-instance p2, Lcom/android/carsdk/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;

    sget-object p3, Landroid/car/hardware/xpu/LocParallelRoadInfoMessage$LocParallelRoadInfo;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/LocParallelRoadInfoMessage$LocParallelRoadInfo;

    invoke-direct {p2, p3}, Lcom/android/carsdk/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;-><init>(Lcom/android/carsdk/protobuf/GeneratedMessageLite;)V

    sput-object p2, Landroid/car/hardware/xpu/LocParallelRoadInfoMessage$LocParallelRoadInfo;->PARSER:Lcom/android/carsdk/protobuf/Parser;

    .line 1562
    :cond_0
    monitor-exit p1

    goto :goto_0

    :catchall_0
    move-exception p2

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p2

    .line 1564
    :cond_1
    :goto_0
    sget-object p1, Landroid/car/hardware/xpu/LocParallelRoadInfoMessage$LocParallelRoadInfo;->PARSER:Lcom/android/carsdk/protobuf/Parser;

    return-object p1

    .line 1496
    :pswitch_1
    check-cast p2, Lcom/android/carsdk/protobuf/CodedInputStream;

    .line 1498
    check-cast p3, Lcom/android/carsdk/protobuf/ExtensionRegistryLite;

    :cond_2
    :goto_1
    if-nez v1, :cond_a

    .line 1503
    :try_start_1
    invoke-virtual {p2}, Lcom/android/carsdk/protobuf/CodedInputStream;->readTag()I

    move-result p1

    if-eqz p1, :cond_9

    const/16 v0, 0x8

    if-eq p1, v0, :cond_8

    const/16 v0, 0x10

    if-eq p1, v0, :cond_7

    const/16 v0, 0x18

    if-eq p1, v0, :cond_6

    const/16 v0, 0x20

    if-eq p1, v0, :cond_5

    const/16 v0, 0x2a

    if-eq p1, v0, :cond_3

    .line 1509
    invoke-virtual {p2, p1}, Lcom/android/carsdk/protobuf/CodedInputStream;->skipField(I)Z

    move-result p1

    if-nez p1, :cond_2

    goto :goto_2

    .line 1535
    :cond_3
    iget-object p1, p0, Landroid/car/hardware/xpu/LocParallelRoadInfoMessage$LocParallelRoadInfo;->parallelRoadList_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    invoke-interface {p1}, Lcom/android/carsdk/protobuf/Internal$ProtobufList;->isModifiable()Z

    move-result p1

    if-nez p1, :cond_4

    .line 1536
    iget-object p1, p0, Landroid/car/hardware/xpu/LocParallelRoadInfoMessage$LocParallelRoadInfo;->parallelRoadList_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    .line 1537
    invoke-static {p1}, Lcom/android/carsdk/protobuf/GeneratedMessageLite;->mutableCopy(Lcom/android/carsdk/protobuf/Internal$ProtobufList;)Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    move-result-object p1

    iput-object p1, p0, Landroid/car/hardware/xpu/LocParallelRoadInfoMessage$LocParallelRoadInfo;->parallelRoadList_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    .line 1539
    :cond_4
    iget-object p1, p0, Landroid/car/hardware/xpu/LocParallelRoadInfoMessage$LocParallelRoadInfo;->parallelRoadList_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    .line 1540
    invoke-static {}, Landroid/car/hardware/xpu/LocParallelRoadInfoMessage$LocParallelRoad;->parser()Lcom/android/carsdk/protobuf/Parser;

    move-result-object v0

    invoke-virtual {p2, v0, p3}, Lcom/android/carsdk/protobuf/CodedInputStream;->readMessage(Lcom/android/carsdk/protobuf/Parser;Lcom/android/carsdk/protobuf/ExtensionRegistryLite;)Lcom/android/carsdk/protobuf/MessageLite;

    move-result-object v0

    check-cast v0, Landroid/car/hardware/xpu/LocParallelRoadInfoMessage$LocParallelRoad;

    .line 1539
    invoke-interface {p1, v0}, Lcom/android/carsdk/protobuf/Internal$ProtobufList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 1531
    :cond_5
    invoke-virtual {p2}, Lcom/android/carsdk/protobuf/CodedInputStream;->readUInt32()I

    move-result p1

    iput p1, p0, Landroid/car/hardware/xpu/LocParallelRoadInfoMessage$LocParallelRoadInfo;->count_:I

    goto :goto_1

    .line 1526
    :cond_6
    invoke-virtual {p2}, Lcom/android/carsdk/protobuf/CodedInputStream;->readUInt32()I

    move-result p1

    iput p1, p0, Landroid/car/hardware/xpu/LocParallelRoadInfoMessage$LocParallelRoadInfo;->hwFlag_:I

    goto :goto_1

    .line 1521
    :cond_7
    invoke-virtual {p2}, Lcom/android/carsdk/protobuf/CodedInputStream;->readUInt32()I

    move-result p1

    iput p1, p0, Landroid/car/hardware/xpu/LocParallelRoadInfoMessage$LocParallelRoadInfo;->flag_:I

    goto :goto_1

    .line 1516
    :cond_8
    invoke-virtual {p2}, Lcom/android/carsdk/protobuf/CodedInputStream;->readUInt32()I

    move-result p1

    iput p1, p0, Landroid/car/hardware/xpu/LocParallelRoadInfoMessage$LocParallelRoadInfo;->status_:I
    :try_end_1
    .catch Lcom/android/carsdk/protobuf/InvalidProtocolBufferException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    :cond_9
    :goto_2
    move v1, v2

    goto :goto_1

    :catchall_1
    move-exception p1

    goto :goto_3

    :catch_0
    move-exception p1

    .line 1548
    :try_start_2
    new-instance p2, Ljava/lang/RuntimeException;

    new-instance p3, Lcom/android/carsdk/protobuf/InvalidProtocolBufferException;

    .line 1550
    invoke-virtual {p1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p3, p1}, Lcom/android/carsdk/protobuf/InvalidProtocolBufferException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, p0}, Lcom/android/carsdk/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/android/carsdk/protobuf/MessageLite;)Lcom/android/carsdk/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p2

    :catch_1
    move-exception p1

    .line 1546
    new-instance p2, Ljava/lang/RuntimeException;

    invoke-virtual {p1, p0}, Lcom/android/carsdk/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/android/carsdk/protobuf/MessageLite;)Lcom/android/carsdk/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 1551
    :goto_3
    throw p1

    .line 1555
    :cond_a
    :pswitch_2
    sget-object p1, Landroid/car/hardware/xpu/LocParallelRoadInfoMessage$LocParallelRoadInfo;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/LocParallelRoadInfoMessage$LocParallelRoadInfo;

    return-object p1

    .line 1478
    :pswitch_3
    check-cast p2, Lcom/android/carsdk/protobuf/GeneratedMessageLite$Visitor;

    .line 1479
    check-cast p3, Landroid/car/hardware/xpu/LocParallelRoadInfoMessage$LocParallelRoadInfo;

    .line 1480
    iget p1, p0, Landroid/car/hardware/xpu/LocParallelRoadInfoMessage$LocParallelRoadInfo;->status_:I

    if-eqz p1, :cond_b

    move v0, v2

    goto :goto_4

    :cond_b
    move v0, v1

    :goto_4
    iget v3, p3, Landroid/car/hardware/xpu/LocParallelRoadInfoMessage$LocParallelRoadInfo;->status_:I

    if-eqz v3, :cond_c

    move v4, v2

    goto :goto_5

    :cond_c
    move v4, v1

    :goto_5
    invoke-interface {p2, v0, p1, v4, v3}, Lcom/android/carsdk/protobuf/GeneratedMessageLite$Visitor;->visitInt(ZIZI)I

    move-result p1

    iput p1, p0, Landroid/car/hardware/xpu/LocParallelRoadInfoMessage$LocParallelRoadInfo;->status_:I

    .line 1482
    iget p1, p0, Landroid/car/hardware/xpu/LocParallelRoadInfoMessage$LocParallelRoadInfo;->flag_:I

    if-eqz p1, :cond_d

    move v0, v2

    goto :goto_6

    :cond_d
    move v0, v1

    :goto_6
    iget v3, p3, Landroid/car/hardware/xpu/LocParallelRoadInfoMessage$LocParallelRoadInfo;->flag_:I

    if-eqz v3, :cond_e

    move v4, v2

    goto :goto_7

    :cond_e
    move v4, v1

    :goto_7
    invoke-interface {p2, v0, p1, v4, v3}, Lcom/android/carsdk/protobuf/GeneratedMessageLite$Visitor;->visitInt(ZIZI)I

    move-result p1

    iput p1, p0, Landroid/car/hardware/xpu/LocParallelRoadInfoMessage$LocParallelRoadInfo;->flag_:I

    .line 1484
    iget p1, p0, Landroid/car/hardware/xpu/LocParallelRoadInfoMessage$LocParallelRoadInfo;->hwFlag_:I

    if-eqz p1, :cond_f

    move v0, v2

    goto :goto_8

    :cond_f
    move v0, v1

    :goto_8
    iget v3, p3, Landroid/car/hardware/xpu/LocParallelRoadInfoMessage$LocParallelRoadInfo;->hwFlag_:I

    if-eqz v3, :cond_10

    move v4, v2

    goto :goto_9

    :cond_10
    move v4, v1

    :goto_9
    invoke-interface {p2, v0, p1, v4, v3}, Lcom/android/carsdk/protobuf/GeneratedMessageLite$Visitor;->visitInt(ZIZI)I

    move-result p1

    iput p1, p0, Landroid/car/hardware/xpu/LocParallelRoadInfoMessage$LocParallelRoadInfo;->hwFlag_:I

    .line 1486
    iget p1, p0, Landroid/car/hardware/xpu/LocParallelRoadInfoMessage$LocParallelRoadInfo;->count_:I

    if-eqz p1, :cond_11

    move v0, v2

    goto :goto_a

    :cond_11
    move v0, v1

    :goto_a
    iget v3, p3, Landroid/car/hardware/xpu/LocParallelRoadInfoMessage$LocParallelRoadInfo;->count_:I

    if-eqz v3, :cond_12

    move v1, v2

    :cond_12
    invoke-interface {p2, v0, p1, v1, v3}, Lcom/android/carsdk/protobuf/GeneratedMessageLite$Visitor;->visitInt(ZIZI)I

    move-result p1

    iput p1, p0, Landroid/car/hardware/xpu/LocParallelRoadInfoMessage$LocParallelRoadInfo;->count_:I

    .line 1488
    iget-object p1, p0, Landroid/car/hardware/xpu/LocParallelRoadInfoMessage$LocParallelRoadInfo;->parallelRoadList_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    iget-object v0, p3, Landroid/car/hardware/xpu/LocParallelRoadInfoMessage$LocParallelRoadInfo;->parallelRoadList_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    invoke-interface {p2, p1, v0}, Lcom/android/carsdk/protobuf/GeneratedMessageLite$Visitor;->visitList(Lcom/android/carsdk/protobuf/Internal$ProtobufList;Lcom/android/carsdk/protobuf/Internal$ProtobufList;)Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    move-result-object p1

    iput-object p1, p0, Landroid/car/hardware/xpu/LocParallelRoadInfoMessage$LocParallelRoadInfo;->parallelRoadList_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    .line 1489
    sget-object p1, Lcom/android/carsdk/protobuf/GeneratedMessageLite$MergeFromVisitor;->INSTANCE:Lcom/android/carsdk/protobuf/GeneratedMessageLite$MergeFromVisitor;

    if-ne p2, p1, :cond_13

    .line 1491
    iget p1, p0, Landroid/car/hardware/xpu/LocParallelRoadInfoMessage$LocParallelRoadInfo;->bitField0_:I

    iget p2, p3, Landroid/car/hardware/xpu/LocParallelRoadInfoMessage$LocParallelRoadInfo;->bitField0_:I

    or-int/2addr p1, p2

    iput p1, p0, Landroid/car/hardware/xpu/LocParallelRoadInfoMessage$LocParallelRoadInfo;->bitField0_:I

    :cond_13
    return-object p0

    .line 1475
    :pswitch_4
    new-instance p1, Landroid/car/hardware/xpu/LocParallelRoadInfoMessage$LocParallelRoadInfo$Builder;

    invoke-direct {p1, v0}, Landroid/car/hardware/xpu/LocParallelRoadInfoMessage$LocParallelRoadInfo$Builder;-><init>(Landroid/car/hardware/xpu/LocParallelRoadInfoMessage$1;)V

    return-object p1

    .line 1471
    :pswitch_5
    iget-object p1, p0, Landroid/car/hardware/xpu/LocParallelRoadInfoMessage$LocParallelRoadInfo;->parallelRoadList_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    invoke-interface {p1}, Lcom/android/carsdk/protobuf/Internal$ProtobufList;->makeImmutable()V

    return-object v0

    .line 1468
    :pswitch_6
    sget-object p1, Landroid/car/hardware/xpu/LocParallelRoadInfoMessage$LocParallelRoadInfo;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/LocParallelRoadInfoMessage$LocParallelRoadInfo;

    return-object p1

    .line 1465
    :pswitch_7
    new-instance p1, Landroid/car/hardware/xpu/LocParallelRoadInfoMessage$LocParallelRoadInfo;

    invoke-direct {p1}, Landroid/car/hardware/xpu/LocParallelRoadInfoMessage$LocParallelRoadInfo;-><init>()V

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

.method public getCount()I
    .locals 1

    .line 820
    iget v0, p0, Landroid/car/hardware/xpu/LocParallelRoadInfoMessage$LocParallelRoadInfo;->count_:I

    return v0
.end method

.method public getFlag()I
    .locals 1

    .line 735
    iget v0, p0, Landroid/car/hardware/xpu/LocParallelRoadInfoMessage$LocParallelRoadInfo;->flag_:I

    return v0
.end method

.method public getHwFlag()I
    .locals 1

    .line 779
    iget v0, p0, Landroid/car/hardware/xpu/LocParallelRoadInfoMessage$LocParallelRoadInfo;->hwFlag_:I

    return v0
.end method

.method public getParallelRoadList(I)Landroid/car/hardware/xpu/LocParallelRoadInfoMessage$LocParallelRoad;
    .locals 1

    .line 886
    iget-object v0, p0, Landroid/car/hardware/xpu/LocParallelRoadInfoMessage$LocParallelRoadInfo;->parallelRoadList_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1}, Lcom/android/carsdk/protobuf/Internal$ProtobufList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/car/hardware/xpu/LocParallelRoadInfoMessage$LocParallelRoad;

    return-object p1
.end method

.method public getParallelRoadListCount()I
    .locals 1

    .line 876
    iget-object v0, p0, Landroid/car/hardware/xpu/LocParallelRoadInfoMessage$LocParallelRoadInfo;->parallelRoadList_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    invoke-interface {v0}, Lcom/android/carsdk/protobuf/Internal$ProtobufList;->size()I

    move-result v0

    return v0
.end method

.method public getParallelRoadListList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/car/hardware/xpu/LocParallelRoadInfoMessage$LocParallelRoad;",
            ">;"
        }
    .end annotation

    .line 855
    iget-object v0, p0, Landroid/car/hardware/xpu/LocParallelRoadInfoMessage$LocParallelRoadInfo;->parallelRoadList_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    return-object v0
.end method

.method public getParallelRoadListOrBuilder(I)Landroid/car/hardware/xpu/LocParallelRoadInfoMessage$LocParallelRoadOrBuilder;
    .locals 1

    .line 897
    iget-object v0, p0, Landroid/car/hardware/xpu/LocParallelRoadInfoMessage$LocParallelRoadInfo;->parallelRoadList_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1}, Lcom/android/carsdk/protobuf/Internal$ProtobufList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/car/hardware/xpu/LocParallelRoadInfoMessage$LocParallelRoadOrBuilder;

    return-object p1
.end method

.method public getParallelRoadListOrBuilderList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "+",
            "Landroid/car/hardware/xpu/LocParallelRoadInfoMessage$LocParallelRoadOrBuilder;",
            ">;"
        }
    .end annotation

    .line 866
    iget-object v0, p0, Landroid/car/hardware/xpu/LocParallelRoadInfoMessage$LocParallelRoadInfo;->parallelRoadList_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    return-object v0
.end method

.method public getSerializedSize()I
    .locals 4

    .line 1041
    iget v0, p0, Landroid/car/hardware/xpu/LocParallelRoadInfoMessage$LocParallelRoadInfo;->memoizedSerializedSize:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    return v0

    .line 1045
    :cond_0
    iget v0, p0, Landroid/car/hardware/xpu/LocParallelRoadInfoMessage$LocParallelRoadInfo;->status_:I

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    const/4 v2, 0x1

    .line 1047
    invoke-static {v2, v0}, Lcom/android/carsdk/protobuf/CodedOutputStream;->computeUInt32Size(II)I

    move-result v0

    add-int/2addr v0, v1

    goto :goto_0

    :cond_1
    move v0, v1

    .line 1049
    :goto_0
    iget v2, p0, Landroid/car/hardware/xpu/LocParallelRoadInfoMessage$LocParallelRoadInfo;->flag_:I

    if-eqz v2, :cond_2

    const/4 v3, 0x2

    .line 1051
    invoke-static {v3, v2}, Lcom/android/carsdk/protobuf/CodedOutputStream;->computeUInt32Size(II)I

    move-result v2

    add-int/2addr v0, v2

    .line 1053
    :cond_2
    iget v2, p0, Landroid/car/hardware/xpu/LocParallelRoadInfoMessage$LocParallelRoadInfo;->hwFlag_:I

    if-eqz v2, :cond_3

    const/4 v3, 0x3

    .line 1055
    invoke-static {v3, v2}, Lcom/android/carsdk/protobuf/CodedOutputStream;->computeUInt32Size(II)I

    move-result v2

    add-int/2addr v0, v2

    .line 1057
    :cond_3
    iget v2, p0, Landroid/car/hardware/xpu/LocParallelRoadInfoMessage$LocParallelRoadInfo;->count_:I

    if-eqz v2, :cond_4

    const/4 v3, 0x4

    .line 1059
    invoke-static {v3, v2}, Lcom/android/carsdk/protobuf/CodedOutputStream;->computeUInt32Size(II)I

    move-result v2

    add-int/2addr v0, v2

    .line 1061
    :cond_4
    :goto_1
    iget-object v2, p0, Landroid/car/hardware/xpu/LocParallelRoadInfoMessage$LocParallelRoadInfo;->parallelRoadList_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    invoke-interface {v2}, Lcom/android/carsdk/protobuf/Internal$ProtobufList;->size()I

    move-result v2

    if-ge v1, v2, :cond_5

    const/4 v2, 0x5

    .line 1062
    iget-object v3, p0, Landroid/car/hardware/xpu/LocParallelRoadInfoMessage$LocParallelRoadInfo;->parallelRoadList_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    .line 1063
    invoke-interface {v3, v1}, Lcom/android/carsdk/protobuf/Internal$ProtobufList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/carsdk/protobuf/MessageLite;

    invoke-static {v2, v3}, Lcom/android/carsdk/protobuf/CodedOutputStream;->computeMessageSize(ILcom/android/carsdk/protobuf/MessageLite;)I

    move-result v2

    add-int/2addr v0, v2

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 1065
    :cond_5
    iput v0, p0, Landroid/car/hardware/xpu/LocParallelRoadInfoMessage$LocParallelRoadInfo;->memoizedSerializedSize:I

    return v0
.end method

.method public getStatus()I
    .locals 1

    .line 697
    iget v0, p0, Landroid/car/hardware/xpu/LocParallelRoadInfoMessage$LocParallelRoadInfo;->status_:I

    return v0
.end method

.method public writeTo(Lcom/android/carsdk/protobuf/CodedOutputStream;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1023
    iget v0, p0, Landroid/car/hardware/xpu/LocParallelRoadInfoMessage$LocParallelRoadInfo;->status_:I

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    .line 1024
    invoke-virtual {p1, v1, v0}, Lcom/android/carsdk/protobuf/CodedOutputStream;->writeUInt32(II)V

    .line 1026
    :cond_0
    iget v0, p0, Landroid/car/hardware/xpu/LocParallelRoadInfoMessage$LocParallelRoadInfo;->flag_:I

    if-eqz v0, :cond_1

    const/4 v1, 0x2

    .line 1027
    invoke-virtual {p1, v1, v0}, Lcom/android/carsdk/protobuf/CodedOutputStream;->writeUInt32(II)V

    .line 1029
    :cond_1
    iget v0, p0, Landroid/car/hardware/xpu/LocParallelRoadInfoMessage$LocParallelRoadInfo;->hwFlag_:I

    if-eqz v0, :cond_2

    const/4 v1, 0x3

    .line 1030
    invoke-virtual {p1, v1, v0}, Lcom/android/carsdk/protobuf/CodedOutputStream;->writeUInt32(II)V

    .line 1032
    :cond_2
    iget v0, p0, Landroid/car/hardware/xpu/LocParallelRoadInfoMessage$LocParallelRoadInfo;->count_:I

    if-eqz v0, :cond_3

    const/4 v1, 0x4

    .line 1033
    invoke-virtual {p1, v1, v0}, Lcom/android/carsdk/protobuf/CodedOutputStream;->writeUInt32(II)V

    :cond_3
    const/4 v0, 0x0

    .line 1035
    :goto_0
    iget-object v1, p0, Landroid/car/hardware/xpu/LocParallelRoadInfoMessage$LocParallelRoadInfo;->parallelRoadList_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    invoke-interface {v1}, Lcom/android/carsdk/protobuf/Internal$ProtobufList;->size()I

    move-result v1

    if-ge v0, v1, :cond_4

    const/4 v1, 0x5

    .line 1036
    iget-object v2, p0, Landroid/car/hardware/xpu/LocParallelRoadInfoMessage$LocParallelRoadInfo;->parallelRoadList_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    invoke-interface {v2, v0}, Lcom/android/carsdk/protobuf/Internal$ProtobufList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/carsdk/protobuf/MessageLite;

    invoke-virtual {p1, v1, v2}, Lcom/android/carsdk/protobuf/CodedOutputStream;->writeMessage(ILcom/android/carsdk/protobuf/MessageLite;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_4
    return-void
.end method
