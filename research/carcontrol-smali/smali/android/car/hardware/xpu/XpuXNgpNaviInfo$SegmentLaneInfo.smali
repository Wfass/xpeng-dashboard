.class public final Landroid/car/hardware/xpu/XpuXNgpNaviInfo$SegmentLaneInfo;
.super Lcom/android/carsdk/protobuf/GeneratedMessageLite;
.source "XpuXNgpNaviInfo.java"

# interfaces
.implements Landroid/car/hardware/xpu/XpuXNgpNaviInfo$SegmentLaneInfoOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/car/hardware/xpu/XpuXNgpNaviInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "SegmentLaneInfo"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/car/hardware/xpu/XpuXNgpNaviInfo$SegmentLaneInfo$Builder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/carsdk/protobuf/GeneratedMessageLite<",
        "Landroid/car/hardware/xpu/XpuXNgpNaviInfo$SegmentLaneInfo;",
        "Landroid/car/hardware/xpu/XpuXNgpNaviInfo$SegmentLaneInfo$Builder;",
        ">;",
        "Landroid/car/hardware/xpu/XpuXNgpNaviInfo$SegmentLaneInfoOrBuilder;"
    }
.end annotation


# static fields
.field private static final DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuXNgpNaviInfo$SegmentLaneInfo;

.field public static final LANE_INFOS_FIELD_NUMBER:I = 0x1

.field private static volatile PARSER:Lcom/android/carsdk/protobuf/Parser; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/carsdk/protobuf/Parser<",
            "Landroid/car/hardware/xpu/XpuXNgpNaviInfo$SegmentLaneInfo;",
            ">;"
        }
    .end annotation
.end field

.field public static final SEGMENT_INDEX_FIELD_NUMBER:I = 0x2


# instance fields
.field private bitField0_:I

.field private laneInfos_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/carsdk/protobuf/Internal$ProtobufList<",
            "Landroid/car/hardware/xpu/XpuXNgpNaviInfo$LaneInfo;",
            ">;"
        }
    .end annotation
.end field

.field private segmentIndex_:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 10184
    new-instance v0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$SegmentLaneInfo;

    invoke-direct {v0}, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$SegmentLaneInfo;-><init>()V

    sput-object v0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$SegmentLaneInfo;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuXNgpNaviInfo$SegmentLaneInfo;

    .line 10185
    invoke-virtual {v0}, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$SegmentLaneInfo;->makeImmutable()V

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 9584
    invoke-direct {p0}, Lcom/android/carsdk/protobuf/GeneratedMessageLite;-><init>()V

    .line 9585
    invoke-static {}, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$SegmentLaneInfo;->emptyProtobufList()Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    move-result-object v0

    iput-object v0, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$SegmentLaneInfo;->laneInfos_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    const/4 v0, 0x0

    .line 9586
    iput v0, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$SegmentLaneInfo;->segmentIndex_:I

    return-void
.end method

.method static synthetic access$13700()Landroid/car/hardware/xpu/XpuXNgpNaviInfo$SegmentLaneInfo;
    .locals 1

    .line 9579
    sget-object v0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$SegmentLaneInfo;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuXNgpNaviInfo$SegmentLaneInfo;

    return-object v0
.end method

.method static synthetic access$13800(Landroid/car/hardware/xpu/XpuXNgpNaviInfo$SegmentLaneInfo;ILandroid/car/hardware/xpu/XpuXNgpNaviInfo$LaneInfo;)V
    .locals 0

    .line 9579
    invoke-direct {p0, p1, p2}, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$SegmentLaneInfo;->setLaneInfos(ILandroid/car/hardware/xpu/XpuXNgpNaviInfo$LaneInfo;)V

    return-void
.end method

.method static synthetic access$13900(Landroid/car/hardware/xpu/XpuXNgpNaviInfo$SegmentLaneInfo;ILandroid/car/hardware/xpu/XpuXNgpNaviInfo$LaneInfo$Builder;)V
    .locals 0

    .line 9579
    invoke-direct {p0, p1, p2}, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$SegmentLaneInfo;->setLaneInfos(ILandroid/car/hardware/xpu/XpuXNgpNaviInfo$LaneInfo$Builder;)V

    return-void
.end method

.method static synthetic access$14000(Landroid/car/hardware/xpu/XpuXNgpNaviInfo$SegmentLaneInfo;Landroid/car/hardware/xpu/XpuXNgpNaviInfo$LaneInfo;)V
    .locals 0

    .line 9579
    invoke-direct {p0, p1}, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$SegmentLaneInfo;->addLaneInfos(Landroid/car/hardware/xpu/XpuXNgpNaviInfo$LaneInfo;)V

    return-void
.end method

.method static synthetic access$14100(Landroid/car/hardware/xpu/XpuXNgpNaviInfo$SegmentLaneInfo;ILandroid/car/hardware/xpu/XpuXNgpNaviInfo$LaneInfo;)V
    .locals 0

    .line 9579
    invoke-direct {p0, p1, p2}, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$SegmentLaneInfo;->addLaneInfos(ILandroid/car/hardware/xpu/XpuXNgpNaviInfo$LaneInfo;)V

    return-void
.end method

.method static synthetic access$14200(Landroid/car/hardware/xpu/XpuXNgpNaviInfo$SegmentLaneInfo;Landroid/car/hardware/xpu/XpuXNgpNaviInfo$LaneInfo$Builder;)V
    .locals 0

    .line 9579
    invoke-direct {p0, p1}, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$SegmentLaneInfo;->addLaneInfos(Landroid/car/hardware/xpu/XpuXNgpNaviInfo$LaneInfo$Builder;)V

    return-void
.end method

.method static synthetic access$14300(Landroid/car/hardware/xpu/XpuXNgpNaviInfo$SegmentLaneInfo;ILandroid/car/hardware/xpu/XpuXNgpNaviInfo$LaneInfo$Builder;)V
    .locals 0

    .line 9579
    invoke-direct {p0, p1, p2}, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$SegmentLaneInfo;->addLaneInfos(ILandroid/car/hardware/xpu/XpuXNgpNaviInfo$LaneInfo$Builder;)V

    return-void
.end method

.method static synthetic access$14400(Landroid/car/hardware/xpu/XpuXNgpNaviInfo$SegmentLaneInfo;Ljava/lang/Iterable;)V
    .locals 0

    .line 9579
    invoke-direct {p0, p1}, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$SegmentLaneInfo;->addAllLaneInfos(Ljava/lang/Iterable;)V

    return-void
.end method

.method static synthetic access$14500(Landroid/car/hardware/xpu/XpuXNgpNaviInfo$SegmentLaneInfo;)V
    .locals 0

    .line 9579
    invoke-direct {p0}, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$SegmentLaneInfo;->clearLaneInfos()V

    return-void
.end method

.method static synthetic access$14600(Landroid/car/hardware/xpu/XpuXNgpNaviInfo$SegmentLaneInfo;I)V
    .locals 0

    .line 9579
    invoke-direct {p0, p1}, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$SegmentLaneInfo;->removeLaneInfos(I)V

    return-void
.end method

.method static synthetic access$14700(Landroid/car/hardware/xpu/XpuXNgpNaviInfo$SegmentLaneInfo;I)V
    .locals 0

    .line 9579
    invoke-direct {p0, p1}, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$SegmentLaneInfo;->setSegmentIndex(I)V

    return-void
.end method

.method static synthetic access$14800(Landroid/car/hardware/xpu/XpuXNgpNaviInfo$SegmentLaneInfo;)V
    .locals 0

    .line 9579
    invoke-direct {p0}, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$SegmentLaneInfo;->clearSegmentIndex()V

    return-void
.end method

.method private addAllLaneInfos(Ljava/lang/Iterable;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Landroid/car/hardware/xpu/XpuXNgpNaviInfo$LaneInfo;",
            ">;)V"
        }
    .end annotation

    .line 9739
    invoke-direct {p0}, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$SegmentLaneInfo;->ensureLaneInfosIsMutable()V

    .line 9740
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$SegmentLaneInfo;->laneInfos_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    invoke-static {p1, v0}, Lcom/android/carsdk/protobuf/AbstractMessageLite;->addAll(Ljava/lang/Iterable;Ljava/util/Collection;)V

    return-void
.end method

.method private addLaneInfos(ILandroid/car/hardware/xpu/XpuXNgpNaviInfo$LaneInfo$Builder;)V
    .locals 1

    .line 9727
    invoke-direct {p0}, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$SegmentLaneInfo;->ensureLaneInfosIsMutable()V

    .line 9728
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$SegmentLaneInfo;->laneInfos_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    invoke-virtual {p2}, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$LaneInfo$Builder;->build()Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object p2

    check-cast p2, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$LaneInfo;

    invoke-interface {v0, p1, p2}, Lcom/android/carsdk/protobuf/Internal$ProtobufList;->add(ILjava/lang/Object;)V

    return-void
.end method

.method private addLaneInfos(ILandroid/car/hardware/xpu/XpuXNgpNaviInfo$LaneInfo;)V
    .locals 1

    .line 9701
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 9703
    invoke-direct {p0}, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$SegmentLaneInfo;->ensureLaneInfosIsMutable()V

    .line 9704
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$SegmentLaneInfo;->laneInfos_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1, p2}, Lcom/android/carsdk/protobuf/Internal$ProtobufList;->add(ILjava/lang/Object;)V

    return-void
.end method

.method private addLaneInfos(Landroid/car/hardware/xpu/XpuXNgpNaviInfo$LaneInfo$Builder;)V
    .locals 1

    .line 9715
    invoke-direct {p0}, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$SegmentLaneInfo;->ensureLaneInfosIsMutable()V

    .line 9716
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$SegmentLaneInfo;->laneInfos_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    invoke-virtual {p1}, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$LaneInfo$Builder;->build()Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$LaneInfo;

    invoke-interface {v0, p1}, Lcom/android/carsdk/protobuf/Internal$ProtobufList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private addLaneInfos(Landroid/car/hardware/xpu/XpuXNgpNaviInfo$LaneInfo;)V
    .locals 1

    .line 9686
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 9688
    invoke-direct {p0}, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$SegmentLaneInfo;->ensureLaneInfosIsMutable()V

    .line 9689
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$SegmentLaneInfo;->laneInfos_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1}, Lcom/android/carsdk/protobuf/Internal$ProtobufList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private clearLaneInfos()V
    .locals 1

    .line 9751
    invoke-static {}, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$SegmentLaneInfo;->emptyProtobufList()Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    move-result-object v0

    iput-object v0, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$SegmentLaneInfo;->laneInfos_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    return-void
.end method

.method private clearSegmentIndex()V
    .locals 1

    const/4 v0, 0x0

    .line 9797
    iput v0, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$SegmentLaneInfo;->segmentIndex_:I

    return-void
.end method

.method private ensureLaneInfosIsMutable()V
    .locals 1

    .line 9644
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$SegmentLaneInfo;->laneInfos_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    invoke-interface {v0}, Lcom/android/carsdk/protobuf/Internal$ProtobufList;->isModifiable()Z

    move-result v0

    if-nez v0, :cond_0

    .line 9645
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$SegmentLaneInfo;->laneInfos_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    .line 9646
    invoke-static {v0}, Lcom/android/carsdk/protobuf/GeneratedMessageLite;->mutableCopy(Lcom/android/carsdk/protobuf/Internal$ProtobufList;)Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    move-result-object v0

    iput-object v0, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$SegmentLaneInfo;->laneInfos_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    :cond_0
    return-void
.end method

.method public static getDefaultInstance()Landroid/car/hardware/xpu/XpuXNgpNaviInfo$SegmentLaneInfo;
    .locals 1

    .line 10189
    sget-object v0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$SegmentLaneInfo;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuXNgpNaviInfo$SegmentLaneInfo;

    return-object v0
.end method

.method public static newBuilder()Landroid/car/hardware/xpu/XpuXNgpNaviInfo$SegmentLaneInfo$Builder;
    .locals 1

    .line 9889
    sget-object v0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$SegmentLaneInfo;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuXNgpNaviInfo$SegmentLaneInfo;

    invoke-virtual {v0}, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$SegmentLaneInfo;->toBuilder()Lcom/android/carsdk/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$SegmentLaneInfo$Builder;

    return-object v0
.end method

.method public static newBuilder(Landroid/car/hardware/xpu/XpuXNgpNaviInfo$SegmentLaneInfo;)Landroid/car/hardware/xpu/XpuXNgpNaviInfo$SegmentLaneInfo$Builder;
    .locals 1

    .line 9892
    sget-object v0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$SegmentLaneInfo;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuXNgpNaviInfo$SegmentLaneInfo;

    invoke-virtual {v0}, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$SegmentLaneInfo;->toBuilder()Lcom/android/carsdk/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$SegmentLaneInfo$Builder;

    invoke-virtual {v0, p0}, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$SegmentLaneInfo$Builder;->mergeFrom(Lcom/android/carsdk/protobuf/GeneratedMessageLite;)Lcom/android/carsdk/protobuf/GeneratedMessageLite$Builder;

    move-result-object p0

    check-cast p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$SegmentLaneInfo$Builder;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Landroid/car/hardware/xpu/XpuXNgpNaviInfo$SegmentLaneInfo;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 9866
    sget-object v0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$SegmentLaneInfo;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuXNgpNaviInfo$SegmentLaneInfo;

    invoke-static {v0, p0}, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$SegmentLaneInfo;->parseDelimitedFrom(Lcom/android/carsdk/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$SegmentLaneInfo;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/android/carsdk/protobuf/ExtensionRegistryLite;)Landroid/car/hardware/xpu/XpuXNgpNaviInfo$SegmentLaneInfo;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 9872
    sget-object v0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$SegmentLaneInfo;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuXNgpNaviInfo$SegmentLaneInfo;

    invoke-static {v0, p0, p1}, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$SegmentLaneInfo;->parseDelimitedFrom(Lcom/android/carsdk/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/android/carsdk/protobuf/ExtensionRegistryLite;)Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$SegmentLaneInfo;

    return-object p0
.end method

.method public static parseFrom(Lcom/android/carsdk/protobuf/ByteString;)Landroid/car/hardware/xpu/XpuXNgpNaviInfo$SegmentLaneInfo;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/carsdk/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 9830
    sget-object v0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$SegmentLaneInfo;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuXNgpNaviInfo$SegmentLaneInfo;

    invoke-static {v0, p0}, Lcom/android/carsdk/protobuf/GeneratedMessageLite;->parseFrom(Lcom/android/carsdk/protobuf/GeneratedMessageLite;Lcom/android/carsdk/protobuf/ByteString;)Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$SegmentLaneInfo;

    return-object p0
.end method

.method public static parseFrom(Lcom/android/carsdk/protobuf/ByteString;Lcom/android/carsdk/protobuf/ExtensionRegistryLite;)Landroid/car/hardware/xpu/XpuXNgpNaviInfo$SegmentLaneInfo;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/carsdk/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 9837
    sget-object v0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$SegmentLaneInfo;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuXNgpNaviInfo$SegmentLaneInfo;

    invoke-static {v0, p0, p1}, Lcom/android/carsdk/protobuf/GeneratedMessageLite;->parseFrom(Lcom/android/carsdk/protobuf/GeneratedMessageLite;Lcom/android/carsdk/protobuf/ByteString;Lcom/android/carsdk/protobuf/ExtensionRegistryLite;)Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$SegmentLaneInfo;

    return-object p0
.end method

.method public static parseFrom(Lcom/android/carsdk/protobuf/CodedInputStream;)Landroid/car/hardware/xpu/XpuXNgpNaviInfo$SegmentLaneInfo;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 9877
    sget-object v0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$SegmentLaneInfo;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuXNgpNaviInfo$SegmentLaneInfo;

    invoke-static {v0, p0}, Lcom/android/carsdk/protobuf/GeneratedMessageLite;->parseFrom(Lcom/android/carsdk/protobuf/GeneratedMessageLite;Lcom/android/carsdk/protobuf/CodedInputStream;)Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$SegmentLaneInfo;

    return-object p0
.end method

.method public static parseFrom(Lcom/android/carsdk/protobuf/CodedInputStream;Lcom/android/carsdk/protobuf/ExtensionRegistryLite;)Landroid/car/hardware/xpu/XpuXNgpNaviInfo$SegmentLaneInfo;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 9884
    sget-object v0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$SegmentLaneInfo;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuXNgpNaviInfo$SegmentLaneInfo;

    invoke-static {v0, p0, p1}, Lcom/android/carsdk/protobuf/GeneratedMessageLite;->parseFrom(Lcom/android/carsdk/protobuf/GeneratedMessageLite;Lcom/android/carsdk/protobuf/CodedInputStream;Lcom/android/carsdk/protobuf/ExtensionRegistryLite;)Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$SegmentLaneInfo;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Landroid/car/hardware/xpu/XpuXNgpNaviInfo$SegmentLaneInfo;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 9854
    sget-object v0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$SegmentLaneInfo;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuXNgpNaviInfo$SegmentLaneInfo;

    invoke-static {v0, p0}, Lcom/android/carsdk/protobuf/GeneratedMessageLite;->parseFrom(Lcom/android/carsdk/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$SegmentLaneInfo;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/android/carsdk/protobuf/ExtensionRegistryLite;)Landroid/car/hardware/xpu/XpuXNgpNaviInfo$SegmentLaneInfo;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 9861
    sget-object v0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$SegmentLaneInfo;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuXNgpNaviInfo$SegmentLaneInfo;

    invoke-static {v0, p0, p1}, Lcom/android/carsdk/protobuf/GeneratedMessageLite;->parseFrom(Lcom/android/carsdk/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/android/carsdk/protobuf/ExtensionRegistryLite;)Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$SegmentLaneInfo;

    return-object p0
.end method

.method public static parseFrom([B)Landroid/car/hardware/xpu/XpuXNgpNaviInfo$SegmentLaneInfo;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/carsdk/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 9842
    sget-object v0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$SegmentLaneInfo;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuXNgpNaviInfo$SegmentLaneInfo;

    invoke-static {v0, p0}, Lcom/android/carsdk/protobuf/GeneratedMessageLite;->parseFrom(Lcom/android/carsdk/protobuf/GeneratedMessageLite;[B)Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$SegmentLaneInfo;

    return-object p0
.end method

.method public static parseFrom([BLcom/android/carsdk/protobuf/ExtensionRegistryLite;)Landroid/car/hardware/xpu/XpuXNgpNaviInfo$SegmentLaneInfo;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/carsdk/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 9849
    sget-object v0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$SegmentLaneInfo;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuXNgpNaviInfo$SegmentLaneInfo;

    invoke-static {v0, p0, p1}, Lcom/android/carsdk/protobuf/GeneratedMessageLite;->parseFrom(Lcom/android/carsdk/protobuf/GeneratedMessageLite;[BLcom/android/carsdk/protobuf/ExtensionRegistryLite;)Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$SegmentLaneInfo;

    return-object p0
.end method

.method public static parser()Lcom/android/carsdk/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/android/carsdk/protobuf/Parser<",
            "Landroid/car/hardware/xpu/XpuXNgpNaviInfo$SegmentLaneInfo;",
            ">;"
        }
    .end annotation

    .line 10195
    sget-object v0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$SegmentLaneInfo;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuXNgpNaviInfo$SegmentLaneInfo;

    invoke-virtual {v0}, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$SegmentLaneInfo;->getParserForType()Lcom/android/carsdk/protobuf/Parser;

    move-result-object v0

    return-object v0
.end method

.method private removeLaneInfos(I)V
    .locals 1

    .line 9761
    invoke-direct {p0}, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$SegmentLaneInfo;->ensureLaneInfosIsMutable()V

    .line 9762
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$SegmentLaneInfo;->laneInfos_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1}, Lcom/android/carsdk/protobuf/Internal$ProtobufList;->remove(I)Ljava/lang/Object;

    return-void
.end method

.method private setLaneInfos(ILandroid/car/hardware/xpu/XpuXNgpNaviInfo$LaneInfo$Builder;)V
    .locals 1

    .line 9674
    invoke-direct {p0}, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$SegmentLaneInfo;->ensureLaneInfosIsMutable()V

    .line 9675
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$SegmentLaneInfo;->laneInfos_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    invoke-virtual {p2}, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$LaneInfo$Builder;->build()Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object p2

    check-cast p2, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$LaneInfo;

    invoke-interface {v0, p1, p2}, Lcom/android/carsdk/protobuf/Internal$ProtobufList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private setLaneInfos(ILandroid/car/hardware/xpu/XpuXNgpNaviInfo$LaneInfo;)V
    .locals 1

    .line 9660
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 9662
    invoke-direct {p0}, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$SegmentLaneInfo;->ensureLaneInfosIsMutable()V

    .line 9663
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$SegmentLaneInfo;->laneInfos_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1, p2}, Lcom/android/carsdk/protobuf/Internal$ProtobufList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private setSegmentIndex(I)V
    .locals 0

    .line 9786
    iput p1, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$SegmentLaneInfo;->segmentIndex_:I

    return-void
.end method


# virtual methods
.method protected final dynamicMethod(Lcom/android/carsdk/protobuf/GeneratedMessageLite$MethodToInvoke;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    .line 10094
    sget-object v0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$1;->$SwitchMap$com$google$protobuf$GeneratedMessageLite$MethodToInvoke:[I

    invoke-virtual {p1}, Lcom/android/carsdk/protobuf/GeneratedMessageLite$MethodToInvoke;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x1

    packed-switch p1, :pswitch_data_0

    .line 10177
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1

    .line 10168
    :pswitch_0
    sget-object p1, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$SegmentLaneInfo;->PARSER:Lcom/android/carsdk/protobuf/Parser;

    if-nez p1, :cond_1

    const-class p1, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$SegmentLaneInfo;

    monitor-enter p1

    .line 10169
    :try_start_0
    sget-object p2, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$SegmentLaneInfo;->PARSER:Lcom/android/carsdk/protobuf/Parser;

    if-nez p2, :cond_0

    .line 10170
    new-instance p2, Lcom/android/carsdk/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;

    sget-object p3, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$SegmentLaneInfo;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuXNgpNaviInfo$SegmentLaneInfo;

    invoke-direct {p2, p3}, Lcom/android/carsdk/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;-><init>(Lcom/android/carsdk/protobuf/GeneratedMessageLite;)V

    sput-object p2, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$SegmentLaneInfo;->PARSER:Lcom/android/carsdk/protobuf/Parser;

    .line 10172
    :cond_0
    monitor-exit p1

    goto :goto_0

    :catchall_0
    move-exception p2

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p2

    .line 10174
    :cond_1
    :goto_0
    sget-object p1, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$SegmentLaneInfo;->PARSER:Lcom/android/carsdk/protobuf/Parser;

    return-object p1

    .line 10121
    :pswitch_1
    check-cast p2, Lcom/android/carsdk/protobuf/CodedInputStream;

    .line 10123
    check-cast p3, Lcom/android/carsdk/protobuf/ExtensionRegistryLite;

    :cond_2
    :goto_1
    if-nez v1, :cond_7

    .line 10128
    :try_start_1
    invoke-virtual {p2}, Lcom/android/carsdk/protobuf/CodedInputStream;->readTag()I

    move-result p1

    if-eqz p1, :cond_6

    const/16 v0, 0xa

    if-eq p1, v0, :cond_4

    const/16 v0, 0x10

    if-eq p1, v0, :cond_3

    .line 10134
    invoke-virtual {p2, p1}, Lcom/android/carsdk/protobuf/CodedInputStream;->skipField(I)Z

    move-result p1

    if-nez p1, :cond_2

    goto :goto_2

    .line 10150
    :cond_3
    invoke-virtual {p2}, Lcom/android/carsdk/protobuf/CodedInputStream;->readInt32()I

    move-result p1

    iput p1, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$SegmentLaneInfo;->segmentIndex_:I

    goto :goto_1

    .line 10140
    :cond_4
    iget-object p1, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$SegmentLaneInfo;->laneInfos_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    invoke-interface {p1}, Lcom/android/carsdk/protobuf/Internal$ProtobufList;->isModifiable()Z

    move-result p1

    if-nez p1, :cond_5

    .line 10141
    iget-object p1, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$SegmentLaneInfo;->laneInfos_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    .line 10142
    invoke-static {p1}, Lcom/android/carsdk/protobuf/GeneratedMessageLite;->mutableCopy(Lcom/android/carsdk/protobuf/Internal$ProtobufList;)Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    move-result-object p1

    iput-object p1, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$SegmentLaneInfo;->laneInfos_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    .line 10144
    :cond_5
    iget-object p1, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$SegmentLaneInfo;->laneInfos_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    .line 10145
    invoke-static {}, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$LaneInfo;->parser()Lcom/android/carsdk/protobuf/Parser;

    move-result-object v0

    invoke-virtual {p2, v0, p3}, Lcom/android/carsdk/protobuf/CodedInputStream;->readMessage(Lcom/android/carsdk/protobuf/Parser;Lcom/android/carsdk/protobuf/ExtensionRegistryLite;)Lcom/android/carsdk/protobuf/MessageLite;

    move-result-object v0

    check-cast v0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$LaneInfo;

    .line 10144
    invoke-interface {p1, v0}, Lcom/android/carsdk/protobuf/Internal$ProtobufList;->add(Ljava/lang/Object;)Z
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

    .line 10158
    :try_start_2
    new-instance p2, Ljava/lang/RuntimeException;

    new-instance p3, Lcom/android/carsdk/protobuf/InvalidProtocolBufferException;

    .line 10160
    invoke-virtual {p1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p3, p1}, Lcom/android/carsdk/protobuf/InvalidProtocolBufferException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, p0}, Lcom/android/carsdk/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/android/carsdk/protobuf/MessageLite;)Lcom/android/carsdk/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p2

    :catch_1
    move-exception p1

    .line 10156
    new-instance p2, Ljava/lang/RuntimeException;

    invoke-virtual {p1, p0}, Lcom/android/carsdk/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/android/carsdk/protobuf/MessageLite;)Lcom/android/carsdk/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 10161
    :goto_3
    throw p1

    .line 10165
    :cond_7
    :pswitch_2
    sget-object p1, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$SegmentLaneInfo;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuXNgpNaviInfo$SegmentLaneInfo;

    return-object p1

    .line 10109
    :pswitch_3
    check-cast p2, Lcom/android/carsdk/protobuf/GeneratedMessageLite$Visitor;

    .line 10110
    check-cast p3, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$SegmentLaneInfo;

    .line 10111
    iget-object p1, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$SegmentLaneInfo;->laneInfos_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    iget-object v0, p3, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$SegmentLaneInfo;->laneInfos_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    invoke-interface {p2, p1, v0}, Lcom/android/carsdk/protobuf/GeneratedMessageLite$Visitor;->visitList(Lcom/android/carsdk/protobuf/Internal$ProtobufList;Lcom/android/carsdk/protobuf/Internal$ProtobufList;)Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    move-result-object p1

    iput-object p1, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$SegmentLaneInfo;->laneInfos_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    .line 10112
    iget p1, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$SegmentLaneInfo;->segmentIndex_:I

    if-eqz p1, :cond_8

    move v0, v2

    goto :goto_4

    :cond_8
    move v0, v1

    :goto_4
    iget v3, p3, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$SegmentLaneInfo;->segmentIndex_:I

    if-eqz v3, :cond_9

    move v1, v2

    :cond_9
    invoke-interface {p2, v0, p1, v1, v3}, Lcom/android/carsdk/protobuf/GeneratedMessageLite$Visitor;->visitInt(ZIZI)I

    move-result p1

    iput p1, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$SegmentLaneInfo;->segmentIndex_:I

    .line 10114
    sget-object p1, Lcom/android/carsdk/protobuf/GeneratedMessageLite$MergeFromVisitor;->INSTANCE:Lcom/android/carsdk/protobuf/GeneratedMessageLite$MergeFromVisitor;

    if-ne p2, p1, :cond_a

    .line 10116
    iget p1, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$SegmentLaneInfo;->bitField0_:I

    iget p2, p3, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$SegmentLaneInfo;->bitField0_:I

    or-int/2addr p1, p2

    iput p1, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$SegmentLaneInfo;->bitField0_:I

    :cond_a
    return-object p0

    .line 10106
    :pswitch_4
    new-instance p1, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$SegmentLaneInfo$Builder;

    invoke-direct {p1, v0}, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$SegmentLaneInfo$Builder;-><init>(Landroid/car/hardware/xpu/XpuXNgpNaviInfo$1;)V

    return-object p1

    .line 10102
    :pswitch_5
    iget-object p1, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$SegmentLaneInfo;->laneInfos_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    invoke-interface {p1}, Lcom/android/carsdk/protobuf/Internal$ProtobufList;->makeImmutable()V

    return-object v0

    .line 10099
    :pswitch_6
    sget-object p1, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$SegmentLaneInfo;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuXNgpNaviInfo$SegmentLaneInfo;

    return-object p1

    .line 10096
    :pswitch_7
    new-instance p1, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$SegmentLaneInfo;

    invoke-direct {p1}, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$SegmentLaneInfo;-><init>()V

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

.method public getLaneInfos(I)Landroid/car/hardware/xpu/XpuXNgpNaviInfo$LaneInfo;
    .locals 1

    .line 9630
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$SegmentLaneInfo;->laneInfos_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1}, Lcom/android/carsdk/protobuf/Internal$ProtobufList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$LaneInfo;

    return-object p1
.end method

.method public getLaneInfosCount()I
    .locals 1

    .line 9620
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$SegmentLaneInfo;->laneInfos_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    invoke-interface {v0}, Lcom/android/carsdk/protobuf/Internal$ProtobufList;->size()I

    move-result v0

    return v0
.end method

.method public getLaneInfosList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/car/hardware/xpu/XpuXNgpNaviInfo$LaneInfo;",
            ">;"
        }
    .end annotation

    .line 9599
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$SegmentLaneInfo;->laneInfos_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    return-object v0
.end method

.method public getLaneInfosOrBuilder(I)Landroid/car/hardware/xpu/XpuXNgpNaviInfo$LaneInfoOrBuilder;
    .locals 1

    .line 9641
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$SegmentLaneInfo;->laneInfos_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1}, Lcom/android/carsdk/protobuf/Internal$ProtobufList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$LaneInfoOrBuilder;

    return-object p1
.end method

.method public getLaneInfosOrBuilderList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "+",
            "Landroid/car/hardware/xpu/XpuXNgpNaviInfo$LaneInfoOrBuilder;",
            ">;"
        }
    .end annotation

    .line 9610
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$SegmentLaneInfo;->laneInfos_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    return-object v0
.end method

.method public getSegmentIndex()I
    .locals 1

    .line 9775
    iget v0, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$SegmentLaneInfo;->segmentIndex_:I

    return v0
.end method

.method public getSerializedSize()I
    .locals 4

    .line 9811
    iget v0, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$SegmentLaneInfo;->memoizedSerializedSize:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    return v0

    :cond_0
    const/4 v0, 0x0

    move v1, v0

    .line 9815
    :goto_0
    iget-object v2, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$SegmentLaneInfo;->laneInfos_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    invoke-interface {v2}, Lcom/android/carsdk/protobuf/Internal$ProtobufList;->size()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 9816
    iget-object v2, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$SegmentLaneInfo;->laneInfos_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    .line 9817
    invoke-interface {v2, v0}, Lcom/android/carsdk/protobuf/Internal$ProtobufList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/carsdk/protobuf/MessageLite;

    const/4 v3, 0x1

    invoke-static {v3, v2}, Lcom/android/carsdk/protobuf/CodedOutputStream;->computeMessageSize(ILcom/android/carsdk/protobuf/MessageLite;)I

    move-result v2

    add-int/2addr v1, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 9819
    :cond_1
    iget v0, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$SegmentLaneInfo;->segmentIndex_:I

    if-eqz v0, :cond_2

    const/4 v2, 0x2

    .line 9821
    invoke-static {v2, v0}, Lcom/android/carsdk/protobuf/CodedOutputStream;->computeInt32Size(II)I

    move-result v0

    add-int/2addr v1, v0

    .line 9823
    :cond_2
    iput v1, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$SegmentLaneInfo;->memoizedSerializedSize:I

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

    .line 9802
    :goto_0
    iget-object v1, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$SegmentLaneInfo;->laneInfos_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    invoke-interface {v1}, Lcom/android/carsdk/protobuf/Internal$ProtobufList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 9803
    iget-object v1, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$SegmentLaneInfo;->laneInfos_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    invoke-interface {v1, v0}, Lcom/android/carsdk/protobuf/Internal$ProtobufList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/carsdk/protobuf/MessageLite;

    const/4 v2, 0x1

    invoke-virtual {p1, v2, v1}, Lcom/android/carsdk/protobuf/CodedOutputStream;->writeMessage(ILcom/android/carsdk/protobuf/MessageLite;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 9805
    :cond_0
    iget v0, p0, Landroid/car/hardware/xpu/XpuXNgpNaviInfo$SegmentLaneInfo;->segmentIndex_:I

    if-eqz v0, :cond_1

    const/4 v1, 0x2

    .line 9806
    invoke-virtual {p1, v1, v0}, Lcom/android/carsdk/protobuf/CodedOutputStream;->writeInt32(II)V

    :cond_1
    return-void
.end method
