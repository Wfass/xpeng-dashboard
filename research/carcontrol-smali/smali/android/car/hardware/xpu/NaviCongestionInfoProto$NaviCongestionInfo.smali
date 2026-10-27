.class public final Landroid/car/hardware/xpu/NaviCongestionInfoProto$NaviCongestionInfo;
.super Lcom/android/carsdk/protobuf/GeneratedMessageLite;
.source "NaviCongestionInfoProto.java"

# interfaces
.implements Landroid/car/hardware/xpu/NaviCongestionInfoProto$NaviCongestionInfoOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/car/hardware/xpu/NaviCongestionInfoProto;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "NaviCongestionInfo"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/car/hardware/xpu/NaviCongestionInfoProto$NaviCongestionInfo$Builder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/carsdk/protobuf/GeneratedMessageLite<",
        "Landroid/car/hardware/xpu/NaviCongestionInfoProto$NaviCongestionInfo;",
        "Landroid/car/hardware/xpu/NaviCongestionInfoProto$NaviCongestionInfo$Builder;",
        ">;",
        "Landroid/car/hardware/xpu/NaviCongestionInfoProto$NaviCongestionInfoOrBuilder;"
    }
.end annotation


# static fields
.field private static final DEFAULT_INSTANCE:Landroid/car/hardware/xpu/NaviCongestionInfoProto$NaviCongestionInfo;

.field public static final DETAIL_INFO_FIELD_NUMBER:I = 0x5

.field private static volatile PARSER:Lcom/android/carsdk/protobuf/Parser; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/carsdk/protobuf/Parser<",
            "Landroid/car/hardware/xpu/NaviCongestionInfoProto$NaviCongestionInfo;",
            ">;"
        }
    .end annotation
.end field

.field public static final PATH_ID_FIELD_NUMBER:I = 0x1

.field public static final TOTAL_REMAIN_DIST_FIELD_NUMBER:I = 0x3

.field public static final TOTAL_TIME_OF_SECOND_FIELD_NUMBER:I = 0x2

.field public static final UNOBSTRUCTED_FIELD_NUMBER:I = 0x4


# instance fields
.field private bitField0_:I

.field private detailInfo_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/carsdk/protobuf/Internal$ProtobufList<",
            "Landroid/car/hardware/xpu/NaviCongestionInfoProto$NaviCongestionDetailInfo;",
            ">;"
        }
    .end annotation
.end field

.field private pathId_:J

.field private totalRemainDist_:J

.field private totalTimeOfSecond_:J

.field private unobstructed_:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 2235
    new-instance v0, Landroid/car/hardware/xpu/NaviCongestionInfoProto$NaviCongestionInfo;

    invoke-direct {v0}, Landroid/car/hardware/xpu/NaviCongestionInfoProto$NaviCongestionInfo;-><init>()V

    sput-object v0, Landroid/car/hardware/xpu/NaviCongestionInfoProto$NaviCongestionInfo;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/NaviCongestionInfoProto$NaviCongestionInfo;

    .line 2236
    invoke-virtual {v0}, Landroid/car/hardware/xpu/NaviCongestionInfoProto$NaviCongestionInfo;->makeImmutable()V

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .line 1580
    invoke-direct {p0}, Lcom/android/carsdk/protobuf/GeneratedMessageLite;-><init>()V

    const-wide/16 v0, 0x0

    .line 1581
    iput-wide v0, p0, Landroid/car/hardware/xpu/NaviCongestionInfoProto$NaviCongestionInfo;->pathId_:J

    .line 1582
    iput-wide v0, p0, Landroid/car/hardware/xpu/NaviCongestionInfoProto$NaviCongestionInfo;->totalTimeOfSecond_:J

    .line 1583
    iput-wide v0, p0, Landroid/car/hardware/xpu/NaviCongestionInfoProto$NaviCongestionInfo;->totalRemainDist_:J

    const/4 v0, 0x0

    .line 1584
    iput-boolean v0, p0, Landroid/car/hardware/xpu/NaviCongestionInfoProto$NaviCongestionInfo;->unobstructed_:Z

    .line 1585
    invoke-static {}, Landroid/car/hardware/xpu/NaviCongestionInfoProto$NaviCongestionInfo;->emptyProtobufList()Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    move-result-object v0

    iput-object v0, p0, Landroid/car/hardware/xpu/NaviCongestionInfoProto$NaviCongestionInfo;->detailInfo_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    return-void
.end method

.method static synthetic access$3900()Landroid/car/hardware/xpu/NaviCongestionInfoProto$NaviCongestionInfo;
    .locals 1

    .line 1575
    sget-object v0, Landroid/car/hardware/xpu/NaviCongestionInfoProto$NaviCongestionInfo;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/NaviCongestionInfoProto$NaviCongestionInfo;

    return-object v0
.end method

.method static synthetic access$4000(Landroid/car/hardware/xpu/NaviCongestionInfoProto$NaviCongestionInfo;J)V
    .locals 0

    .line 1575
    invoke-direct {p0, p1, p2}, Landroid/car/hardware/xpu/NaviCongestionInfoProto$NaviCongestionInfo;->setPathId(J)V

    return-void
.end method

.method static synthetic access$4100(Landroid/car/hardware/xpu/NaviCongestionInfoProto$NaviCongestionInfo;)V
    .locals 0

    .line 1575
    invoke-direct {p0}, Landroid/car/hardware/xpu/NaviCongestionInfoProto$NaviCongestionInfo;->clearPathId()V

    return-void
.end method

.method static synthetic access$4200(Landroid/car/hardware/xpu/NaviCongestionInfoProto$NaviCongestionInfo;J)V
    .locals 0

    .line 1575
    invoke-direct {p0, p1, p2}, Landroid/car/hardware/xpu/NaviCongestionInfoProto$NaviCongestionInfo;->setTotalTimeOfSecond(J)V

    return-void
.end method

.method static synthetic access$4300(Landroid/car/hardware/xpu/NaviCongestionInfoProto$NaviCongestionInfo;)V
    .locals 0

    .line 1575
    invoke-direct {p0}, Landroid/car/hardware/xpu/NaviCongestionInfoProto$NaviCongestionInfo;->clearTotalTimeOfSecond()V

    return-void
.end method

.method static synthetic access$4400(Landroid/car/hardware/xpu/NaviCongestionInfoProto$NaviCongestionInfo;J)V
    .locals 0

    .line 1575
    invoke-direct {p0, p1, p2}, Landroid/car/hardware/xpu/NaviCongestionInfoProto$NaviCongestionInfo;->setTotalRemainDist(J)V

    return-void
.end method

.method static synthetic access$4500(Landroid/car/hardware/xpu/NaviCongestionInfoProto$NaviCongestionInfo;)V
    .locals 0

    .line 1575
    invoke-direct {p0}, Landroid/car/hardware/xpu/NaviCongestionInfoProto$NaviCongestionInfo;->clearTotalRemainDist()V

    return-void
.end method

.method static synthetic access$4600(Landroid/car/hardware/xpu/NaviCongestionInfoProto$NaviCongestionInfo;Z)V
    .locals 0

    .line 1575
    invoke-direct {p0, p1}, Landroid/car/hardware/xpu/NaviCongestionInfoProto$NaviCongestionInfo;->setUnobstructed(Z)V

    return-void
.end method

.method static synthetic access$4700(Landroid/car/hardware/xpu/NaviCongestionInfoProto$NaviCongestionInfo;)V
    .locals 0

    .line 1575
    invoke-direct {p0}, Landroid/car/hardware/xpu/NaviCongestionInfoProto$NaviCongestionInfo;->clearUnobstructed()V

    return-void
.end method

.method static synthetic access$4800(Landroid/car/hardware/xpu/NaviCongestionInfoProto$NaviCongestionInfo;ILandroid/car/hardware/xpu/NaviCongestionInfoProto$NaviCongestionDetailInfo;)V
    .locals 0

    .line 1575
    invoke-direct {p0, p1, p2}, Landroid/car/hardware/xpu/NaviCongestionInfoProto$NaviCongestionInfo;->setDetailInfo(ILandroid/car/hardware/xpu/NaviCongestionInfoProto$NaviCongestionDetailInfo;)V

    return-void
.end method

.method static synthetic access$4900(Landroid/car/hardware/xpu/NaviCongestionInfoProto$NaviCongestionInfo;ILandroid/car/hardware/xpu/NaviCongestionInfoProto$NaviCongestionDetailInfo$Builder;)V
    .locals 0

    .line 1575
    invoke-direct {p0, p1, p2}, Landroid/car/hardware/xpu/NaviCongestionInfoProto$NaviCongestionInfo;->setDetailInfo(ILandroid/car/hardware/xpu/NaviCongestionInfoProto$NaviCongestionDetailInfo$Builder;)V

    return-void
.end method

.method static synthetic access$5000(Landroid/car/hardware/xpu/NaviCongestionInfoProto$NaviCongestionInfo;Landroid/car/hardware/xpu/NaviCongestionInfoProto$NaviCongestionDetailInfo;)V
    .locals 0

    .line 1575
    invoke-direct {p0, p1}, Landroid/car/hardware/xpu/NaviCongestionInfoProto$NaviCongestionInfo;->addDetailInfo(Landroid/car/hardware/xpu/NaviCongestionInfoProto$NaviCongestionDetailInfo;)V

    return-void
.end method

.method static synthetic access$5100(Landroid/car/hardware/xpu/NaviCongestionInfoProto$NaviCongestionInfo;ILandroid/car/hardware/xpu/NaviCongestionInfoProto$NaviCongestionDetailInfo;)V
    .locals 0

    .line 1575
    invoke-direct {p0, p1, p2}, Landroid/car/hardware/xpu/NaviCongestionInfoProto$NaviCongestionInfo;->addDetailInfo(ILandroid/car/hardware/xpu/NaviCongestionInfoProto$NaviCongestionDetailInfo;)V

    return-void
.end method

.method static synthetic access$5200(Landroid/car/hardware/xpu/NaviCongestionInfoProto$NaviCongestionInfo;Landroid/car/hardware/xpu/NaviCongestionInfoProto$NaviCongestionDetailInfo$Builder;)V
    .locals 0

    .line 1575
    invoke-direct {p0, p1}, Landroid/car/hardware/xpu/NaviCongestionInfoProto$NaviCongestionInfo;->addDetailInfo(Landroid/car/hardware/xpu/NaviCongestionInfoProto$NaviCongestionDetailInfo$Builder;)V

    return-void
.end method

.method static synthetic access$5300(Landroid/car/hardware/xpu/NaviCongestionInfoProto$NaviCongestionInfo;ILandroid/car/hardware/xpu/NaviCongestionInfoProto$NaviCongestionDetailInfo$Builder;)V
    .locals 0

    .line 1575
    invoke-direct {p0, p1, p2}, Landroid/car/hardware/xpu/NaviCongestionInfoProto$NaviCongestionInfo;->addDetailInfo(ILandroid/car/hardware/xpu/NaviCongestionInfoProto$NaviCongestionDetailInfo$Builder;)V

    return-void
.end method

.method static synthetic access$5400(Landroid/car/hardware/xpu/NaviCongestionInfoProto$NaviCongestionInfo;Ljava/lang/Iterable;)V
    .locals 0

    .line 1575
    invoke-direct {p0, p1}, Landroid/car/hardware/xpu/NaviCongestionInfoProto$NaviCongestionInfo;->addAllDetailInfo(Ljava/lang/Iterable;)V

    return-void
.end method

.method static synthetic access$5500(Landroid/car/hardware/xpu/NaviCongestionInfoProto$NaviCongestionInfo;)V
    .locals 0

    .line 1575
    invoke-direct {p0}, Landroid/car/hardware/xpu/NaviCongestionInfoProto$NaviCongestionInfo;->clearDetailInfo()V

    return-void
.end method

.method static synthetic access$5600(Landroid/car/hardware/xpu/NaviCongestionInfoProto$NaviCongestionInfo;I)V
    .locals 0

    .line 1575
    invoke-direct {p0, p1}, Landroid/car/hardware/xpu/NaviCongestionInfoProto$NaviCongestionInfo;->removeDetailInfo(I)V

    return-void
.end method

.method private addAllDetailInfo(Ljava/lang/Iterable;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Landroid/car/hardware/xpu/NaviCongestionInfoProto$NaviCongestionDetailInfo;",
            ">;)V"
        }
    .end annotation

    .line 1782
    invoke-direct {p0}, Landroid/car/hardware/xpu/NaviCongestionInfoProto$NaviCongestionInfo;->ensureDetailInfoIsMutable()V

    .line 1783
    iget-object v0, p0, Landroid/car/hardware/xpu/NaviCongestionInfoProto$NaviCongestionInfo;->detailInfo_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    invoke-static {p1, v0}, Lcom/android/carsdk/protobuf/AbstractMessageLite;->addAll(Ljava/lang/Iterable;Ljava/util/Collection;)V

    return-void
.end method

.method private addDetailInfo(ILandroid/car/hardware/xpu/NaviCongestionInfoProto$NaviCongestionDetailInfo$Builder;)V
    .locals 1

    .line 1774
    invoke-direct {p0}, Landroid/car/hardware/xpu/NaviCongestionInfoProto$NaviCongestionInfo;->ensureDetailInfoIsMutable()V

    .line 1775
    iget-object v0, p0, Landroid/car/hardware/xpu/NaviCongestionInfoProto$NaviCongestionInfo;->detailInfo_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    invoke-virtual {p2}, Landroid/car/hardware/xpu/NaviCongestionInfoProto$NaviCongestionDetailInfo$Builder;->build()Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object p2

    check-cast p2, Landroid/car/hardware/xpu/NaviCongestionInfoProto$NaviCongestionDetailInfo;

    invoke-interface {v0, p1, p2}, Lcom/android/carsdk/protobuf/Internal$ProtobufList;->add(ILjava/lang/Object;)V

    return-void
.end method

.method private addDetailInfo(ILandroid/car/hardware/xpu/NaviCongestionInfoProto$NaviCongestionDetailInfo;)V
    .locals 1

    .line 1756
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1758
    invoke-direct {p0}, Landroid/car/hardware/xpu/NaviCongestionInfoProto$NaviCongestionInfo;->ensureDetailInfoIsMutable()V

    .line 1759
    iget-object v0, p0, Landroid/car/hardware/xpu/NaviCongestionInfoProto$NaviCongestionInfo;->detailInfo_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1, p2}, Lcom/android/carsdk/protobuf/Internal$ProtobufList;->add(ILjava/lang/Object;)V

    return-void
.end method

.method private addDetailInfo(Landroid/car/hardware/xpu/NaviCongestionInfoProto$NaviCongestionDetailInfo$Builder;)V
    .locals 1

    .line 1766
    invoke-direct {p0}, Landroid/car/hardware/xpu/NaviCongestionInfoProto$NaviCongestionInfo;->ensureDetailInfoIsMutable()V

    .line 1767
    iget-object v0, p0, Landroid/car/hardware/xpu/NaviCongestionInfoProto$NaviCongestionInfo;->detailInfo_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    invoke-virtual {p1}, Landroid/car/hardware/xpu/NaviCongestionInfoProto$NaviCongestionDetailInfo$Builder;->build()Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Landroid/car/hardware/xpu/NaviCongestionInfoProto$NaviCongestionDetailInfo;

    invoke-interface {v0, p1}, Lcom/android/carsdk/protobuf/Internal$ProtobufList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private addDetailInfo(Landroid/car/hardware/xpu/NaviCongestionInfoProto$NaviCongestionDetailInfo;)V
    .locals 1

    .line 1745
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1747
    invoke-direct {p0}, Landroid/car/hardware/xpu/NaviCongestionInfoProto$NaviCongestionInfo;->ensureDetailInfoIsMutable()V

    .line 1748
    iget-object v0, p0, Landroid/car/hardware/xpu/NaviCongestionInfoProto$NaviCongestionInfo;->detailInfo_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1}, Lcom/android/carsdk/protobuf/Internal$ProtobufList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private clearDetailInfo()V
    .locals 1

    .line 1790
    invoke-static {}, Landroid/car/hardware/xpu/NaviCongestionInfoProto$NaviCongestionInfo;->emptyProtobufList()Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    move-result-object v0

    iput-object v0, p0, Landroid/car/hardware/xpu/NaviCongestionInfoProto$NaviCongestionInfo;->detailInfo_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    return-void
.end method

.method private clearPathId()V
    .locals 2

    const-wide/16 v0, 0x0

    .line 1608
    iput-wide v0, p0, Landroid/car/hardware/xpu/NaviCongestionInfoProto$NaviCongestionInfo;->pathId_:J

    return-void
.end method

.method private clearTotalRemainDist()V
    .locals 2

    const-wide/16 v0, 0x0

    .line 1654
    iput-wide v0, p0, Landroid/car/hardware/xpu/NaviCongestionInfoProto$NaviCongestionInfo;->totalRemainDist_:J

    return-void
.end method

.method private clearTotalTimeOfSecond()V
    .locals 2

    const-wide/16 v0, 0x0

    .line 1631
    iput-wide v0, p0, Landroid/car/hardware/xpu/NaviCongestionInfoProto$NaviCongestionInfo;->totalTimeOfSecond_:J

    return-void
.end method

.method private clearUnobstructed()V
    .locals 1

    const/4 v0, 0x0

    .line 1677
    iput-boolean v0, p0, Landroid/car/hardware/xpu/NaviCongestionInfoProto$NaviCongestionInfo;->unobstructed_:Z

    return-void
.end method

.method private ensureDetailInfoIsMutable()V
    .locals 1

    .line 1715
    iget-object v0, p0, Landroid/car/hardware/xpu/NaviCongestionInfoProto$NaviCongestionInfo;->detailInfo_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    invoke-interface {v0}, Lcom/android/carsdk/protobuf/Internal$ProtobufList;->isModifiable()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1716
    iget-object v0, p0, Landroid/car/hardware/xpu/NaviCongestionInfoProto$NaviCongestionInfo;->detailInfo_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    .line 1717
    invoke-static {v0}, Lcom/android/carsdk/protobuf/GeneratedMessageLite;->mutableCopy(Lcom/android/carsdk/protobuf/Internal$ProtobufList;)Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    move-result-object v0

    iput-object v0, p0, Landroid/car/hardware/xpu/NaviCongestionInfoProto$NaviCongestionInfo;->detailInfo_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    :cond_0
    return-void
.end method

.method public static getDefaultInstance()Landroid/car/hardware/xpu/NaviCongestionInfoProto$NaviCongestionInfo;
    .locals 1

    .line 2240
    sget-object v0, Landroid/car/hardware/xpu/NaviCongestionInfoProto$NaviCongestionInfo;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/NaviCongestionInfoProto$NaviCongestionInfo;

    return-object v0
.end method

.method public static newBuilder()Landroid/car/hardware/xpu/NaviCongestionInfoProto$NaviCongestionInfo$Builder;
    .locals 1

    .line 1910
    sget-object v0, Landroid/car/hardware/xpu/NaviCongestionInfoProto$NaviCongestionInfo;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/NaviCongestionInfoProto$NaviCongestionInfo;

    invoke-virtual {v0}, Landroid/car/hardware/xpu/NaviCongestionInfoProto$NaviCongestionInfo;->toBuilder()Lcom/android/carsdk/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Landroid/car/hardware/xpu/NaviCongestionInfoProto$NaviCongestionInfo$Builder;

    return-object v0
.end method

.method public static newBuilder(Landroid/car/hardware/xpu/NaviCongestionInfoProto$NaviCongestionInfo;)Landroid/car/hardware/xpu/NaviCongestionInfoProto$NaviCongestionInfo$Builder;
    .locals 1

    .line 1913
    sget-object v0, Landroid/car/hardware/xpu/NaviCongestionInfoProto$NaviCongestionInfo;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/NaviCongestionInfoProto$NaviCongestionInfo;

    invoke-virtual {v0}, Landroid/car/hardware/xpu/NaviCongestionInfoProto$NaviCongestionInfo;->toBuilder()Lcom/android/carsdk/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Landroid/car/hardware/xpu/NaviCongestionInfoProto$NaviCongestionInfo$Builder;

    invoke-virtual {v0, p0}, Landroid/car/hardware/xpu/NaviCongestionInfoProto$NaviCongestionInfo$Builder;->mergeFrom(Lcom/android/carsdk/protobuf/GeneratedMessageLite;)Lcom/android/carsdk/protobuf/GeneratedMessageLite$Builder;

    move-result-object p0

    check-cast p0, Landroid/car/hardware/xpu/NaviCongestionInfoProto$NaviCongestionInfo$Builder;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Landroid/car/hardware/xpu/NaviCongestionInfoProto$NaviCongestionInfo;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1887
    sget-object v0, Landroid/car/hardware/xpu/NaviCongestionInfoProto$NaviCongestionInfo;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/NaviCongestionInfoProto$NaviCongestionInfo;

    invoke-static {v0, p0}, Landroid/car/hardware/xpu/NaviCongestionInfoProto$NaviCongestionInfo;->parseDelimitedFrom(Lcom/android/carsdk/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Landroid/car/hardware/xpu/NaviCongestionInfoProto$NaviCongestionInfo;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/android/carsdk/protobuf/ExtensionRegistryLite;)Landroid/car/hardware/xpu/NaviCongestionInfoProto$NaviCongestionInfo;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1893
    sget-object v0, Landroid/car/hardware/xpu/NaviCongestionInfoProto$NaviCongestionInfo;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/NaviCongestionInfoProto$NaviCongestionInfo;

    invoke-static {v0, p0, p1}, Landroid/car/hardware/xpu/NaviCongestionInfoProto$NaviCongestionInfo;->parseDelimitedFrom(Lcom/android/carsdk/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/android/carsdk/protobuf/ExtensionRegistryLite;)Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Landroid/car/hardware/xpu/NaviCongestionInfoProto$NaviCongestionInfo;

    return-object p0
.end method

.method public static parseFrom(Lcom/android/carsdk/protobuf/ByteString;)Landroid/car/hardware/xpu/NaviCongestionInfoProto$NaviCongestionInfo;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/carsdk/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1851
    sget-object v0, Landroid/car/hardware/xpu/NaviCongestionInfoProto$NaviCongestionInfo;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/NaviCongestionInfoProto$NaviCongestionInfo;

    invoke-static {v0, p0}, Lcom/android/carsdk/protobuf/GeneratedMessageLite;->parseFrom(Lcom/android/carsdk/protobuf/GeneratedMessageLite;Lcom/android/carsdk/protobuf/ByteString;)Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Landroid/car/hardware/xpu/NaviCongestionInfoProto$NaviCongestionInfo;

    return-object p0
.end method

.method public static parseFrom(Lcom/android/carsdk/protobuf/ByteString;Lcom/android/carsdk/protobuf/ExtensionRegistryLite;)Landroid/car/hardware/xpu/NaviCongestionInfoProto$NaviCongestionInfo;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/carsdk/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1858
    sget-object v0, Landroid/car/hardware/xpu/NaviCongestionInfoProto$NaviCongestionInfo;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/NaviCongestionInfoProto$NaviCongestionInfo;

    invoke-static {v0, p0, p1}, Lcom/android/carsdk/protobuf/GeneratedMessageLite;->parseFrom(Lcom/android/carsdk/protobuf/GeneratedMessageLite;Lcom/android/carsdk/protobuf/ByteString;Lcom/android/carsdk/protobuf/ExtensionRegistryLite;)Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Landroid/car/hardware/xpu/NaviCongestionInfoProto$NaviCongestionInfo;

    return-object p0
.end method

.method public static parseFrom(Lcom/android/carsdk/protobuf/CodedInputStream;)Landroid/car/hardware/xpu/NaviCongestionInfoProto$NaviCongestionInfo;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1898
    sget-object v0, Landroid/car/hardware/xpu/NaviCongestionInfoProto$NaviCongestionInfo;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/NaviCongestionInfoProto$NaviCongestionInfo;

    invoke-static {v0, p0}, Lcom/android/carsdk/protobuf/GeneratedMessageLite;->parseFrom(Lcom/android/carsdk/protobuf/GeneratedMessageLite;Lcom/android/carsdk/protobuf/CodedInputStream;)Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Landroid/car/hardware/xpu/NaviCongestionInfoProto$NaviCongestionInfo;

    return-object p0
.end method

.method public static parseFrom(Lcom/android/carsdk/protobuf/CodedInputStream;Lcom/android/carsdk/protobuf/ExtensionRegistryLite;)Landroid/car/hardware/xpu/NaviCongestionInfoProto$NaviCongestionInfo;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1905
    sget-object v0, Landroid/car/hardware/xpu/NaviCongestionInfoProto$NaviCongestionInfo;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/NaviCongestionInfoProto$NaviCongestionInfo;

    invoke-static {v0, p0, p1}, Lcom/android/carsdk/protobuf/GeneratedMessageLite;->parseFrom(Lcom/android/carsdk/protobuf/GeneratedMessageLite;Lcom/android/carsdk/protobuf/CodedInputStream;Lcom/android/carsdk/protobuf/ExtensionRegistryLite;)Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Landroid/car/hardware/xpu/NaviCongestionInfoProto$NaviCongestionInfo;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Landroid/car/hardware/xpu/NaviCongestionInfoProto$NaviCongestionInfo;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1875
    sget-object v0, Landroid/car/hardware/xpu/NaviCongestionInfoProto$NaviCongestionInfo;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/NaviCongestionInfoProto$NaviCongestionInfo;

    invoke-static {v0, p0}, Lcom/android/carsdk/protobuf/GeneratedMessageLite;->parseFrom(Lcom/android/carsdk/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Landroid/car/hardware/xpu/NaviCongestionInfoProto$NaviCongestionInfo;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/android/carsdk/protobuf/ExtensionRegistryLite;)Landroid/car/hardware/xpu/NaviCongestionInfoProto$NaviCongestionInfo;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1882
    sget-object v0, Landroid/car/hardware/xpu/NaviCongestionInfoProto$NaviCongestionInfo;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/NaviCongestionInfoProto$NaviCongestionInfo;

    invoke-static {v0, p0, p1}, Lcom/android/carsdk/protobuf/GeneratedMessageLite;->parseFrom(Lcom/android/carsdk/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/android/carsdk/protobuf/ExtensionRegistryLite;)Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Landroid/car/hardware/xpu/NaviCongestionInfoProto$NaviCongestionInfo;

    return-object p0
.end method

.method public static parseFrom([B)Landroid/car/hardware/xpu/NaviCongestionInfoProto$NaviCongestionInfo;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/carsdk/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1863
    sget-object v0, Landroid/car/hardware/xpu/NaviCongestionInfoProto$NaviCongestionInfo;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/NaviCongestionInfoProto$NaviCongestionInfo;

    invoke-static {v0, p0}, Lcom/android/carsdk/protobuf/GeneratedMessageLite;->parseFrom(Lcom/android/carsdk/protobuf/GeneratedMessageLite;[B)Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Landroid/car/hardware/xpu/NaviCongestionInfoProto$NaviCongestionInfo;

    return-object p0
.end method

.method public static parseFrom([BLcom/android/carsdk/protobuf/ExtensionRegistryLite;)Landroid/car/hardware/xpu/NaviCongestionInfoProto$NaviCongestionInfo;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/carsdk/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1870
    sget-object v0, Landroid/car/hardware/xpu/NaviCongestionInfoProto$NaviCongestionInfo;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/NaviCongestionInfoProto$NaviCongestionInfo;

    invoke-static {v0, p0, p1}, Lcom/android/carsdk/protobuf/GeneratedMessageLite;->parseFrom(Lcom/android/carsdk/protobuf/GeneratedMessageLite;[BLcom/android/carsdk/protobuf/ExtensionRegistryLite;)Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Landroid/car/hardware/xpu/NaviCongestionInfoProto$NaviCongestionInfo;

    return-object p0
.end method

.method public static parser()Lcom/android/carsdk/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/android/carsdk/protobuf/Parser<",
            "Landroid/car/hardware/xpu/NaviCongestionInfoProto$NaviCongestionInfo;",
            ">;"
        }
    .end annotation

    .line 2246
    sget-object v0, Landroid/car/hardware/xpu/NaviCongestionInfoProto$NaviCongestionInfo;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/NaviCongestionInfoProto$NaviCongestionInfo;

    invoke-virtual {v0}, Landroid/car/hardware/xpu/NaviCongestionInfoProto$NaviCongestionInfo;->getParserForType()Lcom/android/carsdk/protobuf/Parser;

    move-result-object v0

    return-object v0
.end method

.method private removeDetailInfo(I)V
    .locals 1

    .line 1796
    invoke-direct {p0}, Landroid/car/hardware/xpu/NaviCongestionInfoProto$NaviCongestionInfo;->ensureDetailInfoIsMutable()V

    .line 1797
    iget-object v0, p0, Landroid/car/hardware/xpu/NaviCongestionInfoProto$NaviCongestionInfo;->detailInfo_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1}, Lcom/android/carsdk/protobuf/Internal$ProtobufList;->remove(I)Ljava/lang/Object;

    return-void
.end method

.method private setDetailInfo(ILandroid/car/hardware/xpu/NaviCongestionInfoProto$NaviCongestionDetailInfo$Builder;)V
    .locals 1

    .line 1737
    invoke-direct {p0}, Landroid/car/hardware/xpu/NaviCongestionInfoProto$NaviCongestionInfo;->ensureDetailInfoIsMutable()V

    .line 1738
    iget-object v0, p0, Landroid/car/hardware/xpu/NaviCongestionInfoProto$NaviCongestionInfo;->detailInfo_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    invoke-virtual {p2}, Landroid/car/hardware/xpu/NaviCongestionInfoProto$NaviCongestionDetailInfo$Builder;->build()Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object p2

    check-cast p2, Landroid/car/hardware/xpu/NaviCongestionInfoProto$NaviCongestionDetailInfo;

    invoke-interface {v0, p1, p2}, Lcom/android/carsdk/protobuf/Internal$ProtobufList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private setDetailInfo(ILandroid/car/hardware/xpu/NaviCongestionInfoProto$NaviCongestionDetailInfo;)V
    .locals 1

    .line 1727
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1729
    invoke-direct {p0}, Landroid/car/hardware/xpu/NaviCongestionInfoProto$NaviCongestionInfo;->ensureDetailInfoIsMutable()V

    .line 1730
    iget-object v0, p0, Landroid/car/hardware/xpu/NaviCongestionInfoProto$NaviCongestionInfo;->detailInfo_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1, p2}, Lcom/android/carsdk/protobuf/Internal$ProtobufList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private setPathId(J)V
    .locals 0

    .line 1601
    iput-wide p1, p0, Landroid/car/hardware/xpu/NaviCongestionInfoProto$NaviCongestionInfo;->pathId_:J

    return-void
.end method

.method private setTotalRemainDist(J)V
    .locals 0

    .line 1647
    iput-wide p1, p0, Landroid/car/hardware/xpu/NaviCongestionInfoProto$NaviCongestionInfo;->totalRemainDist_:J

    return-void
.end method

.method private setTotalTimeOfSecond(J)V
    .locals 0

    .line 1624
    iput-wide p1, p0, Landroid/car/hardware/xpu/NaviCongestionInfoProto$NaviCongestionInfo;->totalTimeOfSecond_:J

    return-void
.end method

.method private setUnobstructed(Z)V
    .locals 0

    .line 1670
    iput-boolean p1, p0, Landroid/car/hardware/xpu/NaviCongestionInfoProto$NaviCongestionInfo;->unobstructed_:Z

    return-void
.end method


# virtual methods
.method protected final dynamicMethod(Lcom/android/carsdk/protobuf/GeneratedMessageLite$MethodToInvoke;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 12

    .line 2124
    sget-object v0, Landroid/car/hardware/xpu/NaviCongestionInfoProto$1;->$SwitchMap$com$google$protobuf$GeneratedMessageLite$MethodToInvoke:[I

    invoke-virtual {p1}, Lcom/android/carsdk/protobuf/GeneratedMessageLite$MethodToInvoke;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x1

    packed-switch p1, :pswitch_data_0

    .line 2228
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1

    .line 2219
    :pswitch_0
    sget-object p1, Landroid/car/hardware/xpu/NaviCongestionInfoProto$NaviCongestionInfo;->PARSER:Lcom/android/carsdk/protobuf/Parser;

    if-nez p1, :cond_1

    const-class p1, Landroid/car/hardware/xpu/NaviCongestionInfoProto$NaviCongestionInfo;

    monitor-enter p1

    .line 2220
    :try_start_0
    sget-object p2, Landroid/car/hardware/xpu/NaviCongestionInfoProto$NaviCongestionInfo;->PARSER:Lcom/android/carsdk/protobuf/Parser;

    if-nez p2, :cond_0

    .line 2221
    new-instance p2, Lcom/android/carsdk/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;

    sget-object p3, Landroid/car/hardware/xpu/NaviCongestionInfoProto$NaviCongestionInfo;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/NaviCongestionInfoProto$NaviCongestionInfo;

    invoke-direct {p2, p3}, Lcom/android/carsdk/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;-><init>(Lcom/android/carsdk/protobuf/GeneratedMessageLite;)V

    sput-object p2, Landroid/car/hardware/xpu/NaviCongestionInfoProto$NaviCongestionInfo;->PARSER:Lcom/android/carsdk/protobuf/Parser;

    .line 2223
    :cond_0
    monitor-exit p1

    goto :goto_0

    :catchall_0
    move-exception p2

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p2

    .line 2225
    :cond_1
    :goto_0
    sget-object p1, Landroid/car/hardware/xpu/NaviCongestionInfoProto$NaviCongestionInfo;->PARSER:Lcom/android/carsdk/protobuf/Parser;

    return-object p1

    .line 2157
    :pswitch_1
    check-cast p2, Lcom/android/carsdk/protobuf/CodedInputStream;

    .line 2159
    check-cast p3, Lcom/android/carsdk/protobuf/ExtensionRegistryLite;

    :cond_2
    :goto_1
    if-nez v1, :cond_a

    .line 2164
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

    .line 2170
    invoke-virtual {p2, p1}, Lcom/android/carsdk/protobuf/CodedInputStream;->skipField(I)Z

    move-result p1

    if-nez p1, :cond_2

    goto :goto_2

    .line 2196
    :cond_3
    iget-object p1, p0, Landroid/car/hardware/xpu/NaviCongestionInfoProto$NaviCongestionInfo;->detailInfo_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    invoke-interface {p1}, Lcom/android/carsdk/protobuf/Internal$ProtobufList;->isModifiable()Z

    move-result p1

    if-nez p1, :cond_4

    .line 2197
    iget-object p1, p0, Landroid/car/hardware/xpu/NaviCongestionInfoProto$NaviCongestionInfo;->detailInfo_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    .line 2198
    invoke-static {p1}, Lcom/android/carsdk/protobuf/GeneratedMessageLite;->mutableCopy(Lcom/android/carsdk/protobuf/Internal$ProtobufList;)Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    move-result-object p1

    iput-object p1, p0, Landroid/car/hardware/xpu/NaviCongestionInfoProto$NaviCongestionInfo;->detailInfo_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    .line 2200
    :cond_4
    iget-object p1, p0, Landroid/car/hardware/xpu/NaviCongestionInfoProto$NaviCongestionInfo;->detailInfo_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    .line 2201
    invoke-static {}, Landroid/car/hardware/xpu/NaviCongestionInfoProto$NaviCongestionDetailInfo;->parser()Lcom/android/carsdk/protobuf/Parser;

    move-result-object v0

    invoke-virtual {p2, v0, p3}, Lcom/android/carsdk/protobuf/CodedInputStream;->readMessage(Lcom/android/carsdk/protobuf/Parser;Lcom/android/carsdk/protobuf/ExtensionRegistryLite;)Lcom/android/carsdk/protobuf/MessageLite;

    move-result-object v0

    check-cast v0, Landroid/car/hardware/xpu/NaviCongestionInfoProto$NaviCongestionDetailInfo;

    .line 2200
    invoke-interface {p1, v0}, Lcom/android/carsdk/protobuf/Internal$ProtobufList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 2192
    :cond_5
    invoke-virtual {p2}, Lcom/android/carsdk/protobuf/CodedInputStream;->readBool()Z

    move-result p1

    iput-boolean p1, p0, Landroid/car/hardware/xpu/NaviCongestionInfoProto$NaviCongestionInfo;->unobstructed_:Z

    goto :goto_1

    .line 2187
    :cond_6
    invoke-virtual {p2}, Lcom/android/carsdk/protobuf/CodedInputStream;->readInt64()J

    move-result-wide v3

    iput-wide v3, p0, Landroid/car/hardware/xpu/NaviCongestionInfoProto$NaviCongestionInfo;->totalRemainDist_:J

    goto :goto_1

    .line 2182
    :cond_7
    invoke-virtual {p2}, Lcom/android/carsdk/protobuf/CodedInputStream;->readInt64()J

    move-result-wide v3

    iput-wide v3, p0, Landroid/car/hardware/xpu/NaviCongestionInfoProto$NaviCongestionInfo;->totalTimeOfSecond_:J

    goto :goto_1

    .line 2177
    :cond_8
    invoke-virtual {p2}, Lcom/android/carsdk/protobuf/CodedInputStream;->readUInt64()J

    move-result-wide v3

    iput-wide v3, p0, Landroid/car/hardware/xpu/NaviCongestionInfoProto$NaviCongestionInfo;->pathId_:J
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

    .line 2209
    :try_start_2
    new-instance p2, Ljava/lang/RuntimeException;

    new-instance p3, Lcom/android/carsdk/protobuf/InvalidProtocolBufferException;

    .line 2211
    invoke-virtual {p1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p3, p1}, Lcom/android/carsdk/protobuf/InvalidProtocolBufferException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, p0}, Lcom/android/carsdk/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/android/carsdk/protobuf/MessageLite;)Lcom/android/carsdk/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p2

    :catch_1
    move-exception p1

    .line 2207
    new-instance p2, Ljava/lang/RuntimeException;

    invoke-virtual {p1, p0}, Lcom/android/carsdk/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/android/carsdk/protobuf/MessageLite;)Lcom/android/carsdk/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 2212
    :goto_3
    throw p1

    .line 2216
    :cond_a
    :pswitch_2
    sget-object p1, Landroid/car/hardware/xpu/NaviCongestionInfoProto$NaviCongestionInfo;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/NaviCongestionInfoProto$NaviCongestionInfo;

    return-object p1

    .line 2139
    :pswitch_3
    check-cast p2, Lcom/android/carsdk/protobuf/GeneratedMessageLite$Visitor;

    .line 2140
    check-cast p3, Landroid/car/hardware/xpu/NaviCongestionInfoProto$NaviCongestionInfo;

    .line 2141
    iget-wide v5, p0, Landroid/car/hardware/xpu/NaviCongestionInfoProto$NaviCongestionInfo;->pathId_:J

    const-wide/16 v10, 0x0

    cmp-long p1, v5, v10

    if-eqz p1, :cond_b

    move v4, v2

    goto :goto_4

    :cond_b
    move v4, v1

    :goto_4
    iget-wide v8, p3, Landroid/car/hardware/xpu/NaviCongestionInfoProto$NaviCongestionInfo;->pathId_:J

    cmp-long p1, v8, v10

    if-eqz p1, :cond_c

    move v7, v2

    goto :goto_5

    :cond_c
    move v7, v1

    :goto_5
    move-object v3, p2

    invoke-interface/range {v3 .. v9}, Lcom/android/carsdk/protobuf/GeneratedMessageLite$Visitor;->visitLong(ZJZJ)J

    move-result-wide v3

    iput-wide v3, p0, Landroid/car/hardware/xpu/NaviCongestionInfoProto$NaviCongestionInfo;->pathId_:J

    .line 2143
    iget-wide v5, p0, Landroid/car/hardware/xpu/NaviCongestionInfoProto$NaviCongestionInfo;->totalTimeOfSecond_:J

    cmp-long p1, v5, v10

    if-eqz p1, :cond_d

    move v4, v2

    goto :goto_6

    :cond_d
    move v4, v1

    :goto_6
    iget-wide v8, p3, Landroid/car/hardware/xpu/NaviCongestionInfoProto$NaviCongestionInfo;->totalTimeOfSecond_:J

    cmp-long p1, v8, v10

    if-eqz p1, :cond_e

    move v7, v2

    goto :goto_7

    :cond_e
    move v7, v1

    :goto_7
    move-object v3, p2

    invoke-interface/range {v3 .. v9}, Lcom/android/carsdk/protobuf/GeneratedMessageLite$Visitor;->visitLong(ZJZJ)J

    move-result-wide v3

    iput-wide v3, p0, Landroid/car/hardware/xpu/NaviCongestionInfoProto$NaviCongestionInfo;->totalTimeOfSecond_:J

    .line 2145
    iget-wide v3, p0, Landroid/car/hardware/xpu/NaviCongestionInfoProto$NaviCongestionInfo;->totalRemainDist_:J

    cmp-long p1, v3, v10

    if-eqz p1, :cond_f

    move p1, v2

    goto :goto_8

    :cond_f
    move p1, v1

    :goto_8
    iget-wide v5, p3, Landroid/car/hardware/xpu/NaviCongestionInfoProto$NaviCongestionInfo;->totalRemainDist_:J

    cmp-long v0, v5, v10

    if-eqz v0, :cond_10

    move v7, v2

    goto :goto_9

    :cond_10
    move v7, v1

    :goto_9
    move-object v0, p2

    move v1, p1

    move-wide v2, v3

    move v4, v7

    invoke-interface/range {v0 .. v6}, Lcom/android/carsdk/protobuf/GeneratedMessageLite$Visitor;->visitLong(ZJZJ)J

    move-result-wide v0

    iput-wide v0, p0, Landroid/car/hardware/xpu/NaviCongestionInfoProto$NaviCongestionInfo;->totalRemainDist_:J

    .line 2147
    iget-boolean p1, p0, Landroid/car/hardware/xpu/NaviCongestionInfoProto$NaviCongestionInfo;->unobstructed_:Z

    iget-boolean v0, p3, Landroid/car/hardware/xpu/NaviCongestionInfoProto$NaviCongestionInfo;->unobstructed_:Z

    invoke-interface {p2, p1, p1, v0, v0}, Lcom/android/carsdk/protobuf/GeneratedMessageLite$Visitor;->visitBoolean(ZZZZ)Z

    move-result p1

    iput-boolean p1, p0, Landroid/car/hardware/xpu/NaviCongestionInfoProto$NaviCongestionInfo;->unobstructed_:Z

    .line 2149
    iget-object p1, p0, Landroid/car/hardware/xpu/NaviCongestionInfoProto$NaviCongestionInfo;->detailInfo_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    iget-object v0, p3, Landroid/car/hardware/xpu/NaviCongestionInfoProto$NaviCongestionInfo;->detailInfo_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    invoke-interface {p2, p1, v0}, Lcom/android/carsdk/protobuf/GeneratedMessageLite$Visitor;->visitList(Lcom/android/carsdk/protobuf/Internal$ProtobufList;Lcom/android/carsdk/protobuf/Internal$ProtobufList;)Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    move-result-object p1

    iput-object p1, p0, Landroid/car/hardware/xpu/NaviCongestionInfoProto$NaviCongestionInfo;->detailInfo_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    .line 2150
    sget-object p1, Lcom/android/carsdk/protobuf/GeneratedMessageLite$MergeFromVisitor;->INSTANCE:Lcom/android/carsdk/protobuf/GeneratedMessageLite$MergeFromVisitor;

    if-ne p2, p1, :cond_11

    .line 2152
    iget p1, p0, Landroid/car/hardware/xpu/NaviCongestionInfoProto$NaviCongestionInfo;->bitField0_:I

    iget p2, p3, Landroid/car/hardware/xpu/NaviCongestionInfoProto$NaviCongestionInfo;->bitField0_:I

    or-int/2addr p1, p2

    iput p1, p0, Landroid/car/hardware/xpu/NaviCongestionInfoProto$NaviCongestionInfo;->bitField0_:I

    :cond_11
    return-object p0

    .line 2136
    :pswitch_4
    new-instance p1, Landroid/car/hardware/xpu/NaviCongestionInfoProto$NaviCongestionInfo$Builder;

    invoke-direct {p1, v0}, Landroid/car/hardware/xpu/NaviCongestionInfoProto$NaviCongestionInfo$Builder;-><init>(Landroid/car/hardware/xpu/NaviCongestionInfoProto$1;)V

    return-object p1

    .line 2132
    :pswitch_5
    iget-object p1, p0, Landroid/car/hardware/xpu/NaviCongestionInfoProto$NaviCongestionInfo;->detailInfo_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    invoke-interface {p1}, Lcom/android/carsdk/protobuf/Internal$ProtobufList;->makeImmutable()V

    return-object v0

    .line 2129
    :pswitch_6
    sget-object p1, Landroid/car/hardware/xpu/NaviCongestionInfoProto$NaviCongestionInfo;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/NaviCongestionInfoProto$NaviCongestionInfo;

    return-object p1

    .line 2126
    :pswitch_7
    new-instance p1, Landroid/car/hardware/xpu/NaviCongestionInfoProto$NaviCongestionInfo;

    invoke-direct {p1}, Landroid/car/hardware/xpu/NaviCongestionInfoProto$NaviCongestionInfo;-><init>()V

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

.method public getDetailInfo(I)Landroid/car/hardware/xpu/NaviCongestionInfoProto$NaviCongestionDetailInfo;
    .locals 1

    .line 1705
    iget-object v0, p0, Landroid/car/hardware/xpu/NaviCongestionInfoProto$NaviCongestionInfo;->detailInfo_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1}, Lcom/android/carsdk/protobuf/Internal$ProtobufList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/car/hardware/xpu/NaviCongestionInfoProto$NaviCongestionDetailInfo;

    return-object p1
.end method

.method public getDetailInfoCount()I
    .locals 1

    .line 1699
    iget-object v0, p0, Landroid/car/hardware/xpu/NaviCongestionInfoProto$NaviCongestionInfo;->detailInfo_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    invoke-interface {v0}, Lcom/android/carsdk/protobuf/Internal$ProtobufList;->size()I

    move-result v0

    return v0
.end method

.method public getDetailInfoList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/car/hardware/xpu/NaviCongestionInfoProto$NaviCongestionDetailInfo;",
            ">;"
        }
    .end annotation

    .line 1686
    iget-object v0, p0, Landroid/car/hardware/xpu/NaviCongestionInfoProto$NaviCongestionInfo;->detailInfo_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    return-object v0
.end method

.method public getDetailInfoOrBuilder(I)Landroid/car/hardware/xpu/NaviCongestionInfoProto$NaviCongestionDetailInfoOrBuilder;
    .locals 1

    .line 1712
    iget-object v0, p0, Landroid/car/hardware/xpu/NaviCongestionInfoProto$NaviCongestionInfo;->detailInfo_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    invoke-interface {v0, p1}, Lcom/android/carsdk/protobuf/Internal$ProtobufList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/car/hardware/xpu/NaviCongestionInfoProto$NaviCongestionDetailInfoOrBuilder;

    return-object p1
.end method

.method public getDetailInfoOrBuilderList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "+",
            "Landroid/car/hardware/xpu/NaviCongestionInfoProto$NaviCongestionDetailInfoOrBuilder;",
            ">;"
        }
    .end annotation

    .line 1693
    iget-object v0, p0, Landroid/car/hardware/xpu/NaviCongestionInfoProto$NaviCongestionInfo;->detailInfo_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    return-object v0
.end method

.method public getPathId()J
    .locals 2

    .line 1594
    iget-wide v0, p0, Landroid/car/hardware/xpu/NaviCongestionInfoProto$NaviCongestionInfo;->pathId_:J

    return-wide v0
.end method

.method public getSerializedSize()I
    .locals 8

    .line 1820
    iget v0, p0, Landroid/car/hardware/xpu/NaviCongestionInfoProto$NaviCongestionInfo;->memoizedSerializedSize:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    return v0

    .line 1824
    :cond_0
    iget-wide v0, p0, Landroid/car/hardware/xpu/NaviCongestionInfoProto$NaviCongestionInfo;->pathId_:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    const/4 v5, 0x0

    if-eqz v4, :cond_1

    const/4 v4, 0x1

    .line 1826
    invoke-static {v4, v0, v1}, Lcom/android/carsdk/protobuf/CodedOutputStream;->computeUInt64Size(IJ)I

    move-result v0

    add-int/2addr v0, v5

    goto :goto_0

    :cond_1
    move v0, v5

    .line 1828
    :goto_0
    iget-wide v6, p0, Landroid/car/hardware/xpu/NaviCongestionInfoProto$NaviCongestionInfo;->totalTimeOfSecond_:J

    cmp-long v1, v6, v2

    if-eqz v1, :cond_2

    const/4 v1, 0x2

    .line 1830
    invoke-static {v1, v6, v7}, Lcom/android/carsdk/protobuf/CodedOutputStream;->computeInt64Size(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 1832
    :cond_2
    iget-wide v6, p0, Landroid/car/hardware/xpu/NaviCongestionInfoProto$NaviCongestionInfo;->totalRemainDist_:J

    cmp-long v1, v6, v2

    if-eqz v1, :cond_3

    const/4 v1, 0x3

    .line 1834
    invoke-static {v1, v6, v7}, Lcom/android/carsdk/protobuf/CodedOutputStream;->computeInt64Size(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 1836
    :cond_3
    iget-boolean v1, p0, Landroid/car/hardware/xpu/NaviCongestionInfoProto$NaviCongestionInfo;->unobstructed_:Z

    if-eqz v1, :cond_4

    const/4 v2, 0x4

    .line 1838
    invoke-static {v2, v1}, Lcom/android/carsdk/protobuf/CodedOutputStream;->computeBoolSize(IZ)I

    move-result v1

    add-int/2addr v0, v1

    .line 1840
    :cond_4
    :goto_1
    iget-object v1, p0, Landroid/car/hardware/xpu/NaviCongestionInfoProto$NaviCongestionInfo;->detailInfo_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    invoke-interface {v1}, Lcom/android/carsdk/protobuf/Internal$ProtobufList;->size()I

    move-result v1

    if-ge v5, v1, :cond_5

    const/4 v1, 0x5

    .line 1841
    iget-object v2, p0, Landroid/car/hardware/xpu/NaviCongestionInfoProto$NaviCongestionInfo;->detailInfo_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    .line 1842
    invoke-interface {v2, v5}, Lcom/android/carsdk/protobuf/Internal$ProtobufList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/carsdk/protobuf/MessageLite;

    invoke-static {v1, v2}, Lcom/android/carsdk/protobuf/CodedOutputStream;->computeMessageSize(ILcom/android/carsdk/protobuf/MessageLite;)I

    move-result v1

    add-int/2addr v0, v1

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 1844
    :cond_5
    iput v0, p0, Landroid/car/hardware/xpu/NaviCongestionInfoProto$NaviCongestionInfo;->memoizedSerializedSize:I

    return v0
.end method

.method public getTotalRemainDist()J
    .locals 2

    .line 1640
    iget-wide v0, p0, Landroid/car/hardware/xpu/NaviCongestionInfoProto$NaviCongestionInfo;->totalRemainDist_:J

    return-wide v0
.end method

.method public getTotalTimeOfSecond()J
    .locals 2

    .line 1617
    iget-wide v0, p0, Landroid/car/hardware/xpu/NaviCongestionInfoProto$NaviCongestionInfo;->totalTimeOfSecond_:J

    return-wide v0
.end method

.method public getUnobstructed()Z
    .locals 1

    .line 1663
    iget-boolean v0, p0, Landroid/car/hardware/xpu/NaviCongestionInfoProto$NaviCongestionInfo;->unobstructed_:Z

    return v0
.end method

.method public writeTo(Lcom/android/carsdk/protobuf/CodedOutputStream;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1802
    iget-wide v0, p0, Landroid/car/hardware/xpu/NaviCongestionInfoProto$NaviCongestionInfo;->pathId_:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    const/4 v4, 0x1

    .line 1803
    invoke-virtual {p1, v4, v0, v1}, Lcom/android/carsdk/protobuf/CodedOutputStream;->writeUInt64(IJ)V

    .line 1805
    :cond_0
    iget-wide v0, p0, Landroid/car/hardware/xpu/NaviCongestionInfoProto$NaviCongestionInfo;->totalTimeOfSecond_:J

    cmp-long v4, v0, v2

    if-eqz v4, :cond_1

    const/4 v4, 0x2

    .line 1806
    invoke-virtual {p1, v4, v0, v1}, Lcom/android/carsdk/protobuf/CodedOutputStream;->writeInt64(IJ)V

    .line 1808
    :cond_1
    iget-wide v0, p0, Landroid/car/hardware/xpu/NaviCongestionInfoProto$NaviCongestionInfo;->totalRemainDist_:J

    cmp-long v2, v0, v2

    if-eqz v2, :cond_2

    const/4 v2, 0x3

    .line 1809
    invoke-virtual {p1, v2, v0, v1}, Lcom/android/carsdk/protobuf/CodedOutputStream;->writeInt64(IJ)V

    .line 1811
    :cond_2
    iget-boolean v0, p0, Landroid/car/hardware/xpu/NaviCongestionInfoProto$NaviCongestionInfo;->unobstructed_:Z

    if-eqz v0, :cond_3

    const/4 v1, 0x4

    .line 1812
    invoke-virtual {p1, v1, v0}, Lcom/android/carsdk/protobuf/CodedOutputStream;->writeBool(IZ)V

    :cond_3
    const/4 v0, 0x0

    .line 1814
    :goto_0
    iget-object v1, p0, Landroid/car/hardware/xpu/NaviCongestionInfoProto$NaviCongestionInfo;->detailInfo_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    invoke-interface {v1}, Lcom/android/carsdk/protobuf/Internal$ProtobufList;->size()I

    move-result v1

    if-ge v0, v1, :cond_4

    const/4 v1, 0x5

    .line 1815
    iget-object v2, p0, Landroid/car/hardware/xpu/NaviCongestionInfoProto$NaviCongestionInfo;->detailInfo_:Lcom/android/carsdk/protobuf/Internal$ProtobufList;

    invoke-interface {v2, v0}, Lcom/android/carsdk/protobuf/Internal$ProtobufList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/carsdk/protobuf/MessageLite;

    invoke-virtual {p1, v1, v2}, Lcom/android/carsdk/protobuf/CodedOutputStream;->writeMessage(ILcom/android/carsdk/protobuf/MessageLite;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_4
    return-void
.end method
