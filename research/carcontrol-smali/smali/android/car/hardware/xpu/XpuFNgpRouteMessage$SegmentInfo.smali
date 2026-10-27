.class public final Landroid/car/hardware/xpu/XpuFNgpRouteMessage$SegmentInfo;
.super Lcom/android/carsdk/protobuf/GeneratedMessageLite;
.source "XpuFNgpRouteMessage.java"

# interfaces
.implements Landroid/car/hardware/xpu/XpuFNgpRouteMessage$SegmentInfoOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/car/hardware/xpu/XpuFNgpRouteMessage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "SegmentInfo"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/car/hardware/xpu/XpuFNgpRouteMessage$SegmentInfo$Builder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/carsdk/protobuf/GeneratedMessageLite<",
        "Landroid/car/hardware/xpu/XpuFNgpRouteMessage$SegmentInfo;",
        "Landroid/car/hardware/xpu/XpuFNgpRouteMessage$SegmentInfo$Builder;",
        ">;",
        "Landroid/car/hardware/xpu/XpuFNgpRouteMessage$SegmentInfoOrBuilder;"
    }
.end annotation


# static fields
.field public static final BEGIN_INDEX_FIELD_NUMBER:I = 0x3

.field public static final BEGIN_OFFSET_FIELD_NUMBER:I = 0x6

.field private static final DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuFNgpRouteMessage$SegmentInfo;

.field public static final DESC_FIELD_NUMBER:I = 0x5

.field public static final END_INDEX_FIELD_NUMBER:I = 0x4

.field public static final END_OFFSET_FIELD_NUMBER:I = 0x7

.field public static final MILEAGE_FIELD_NUMBER:I = 0x1

.field private static volatile PARSER:Lcom/android/carsdk/protobuf/Parser; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/carsdk/protobuf/Parser<",
            "Landroid/car/hardware/xpu/XpuFNgpRouteMessage$SegmentInfo;",
            ">;"
        }
    .end annotation
.end field

.field public static final STATUS_FIELD_NUMBER:I = 0x2


# instance fields
.field private beginIndex_:I

.field private beginOffset_:I

.field private desc_:I

.field private endIndex_:I

.field private endOffset_:I

.field private mileage_:I

.field private status_:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 4024
    new-instance v0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$SegmentInfo;

    invoke-direct {v0}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$SegmentInfo;-><init>()V

    sput-object v0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$SegmentInfo;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuFNgpRouteMessage$SegmentInfo;

    .line 4025
    invoke-virtual {v0}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$SegmentInfo;->makeImmutable()V

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 3206
    invoke-direct {p0}, Lcom/android/carsdk/protobuf/GeneratedMessageLite;-><init>()V

    const/4 v0, 0x0

    .line 3207
    iput v0, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$SegmentInfo;->mileage_:I

    .line 3208
    iput v0, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$SegmentInfo;->status_:I

    .line 3209
    iput v0, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$SegmentInfo;->beginIndex_:I

    .line 3210
    iput v0, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$SegmentInfo;->endIndex_:I

    .line 3211
    iput v0, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$SegmentInfo;->desc_:I

    .line 3212
    iput v0, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$SegmentInfo;->beginOffset_:I

    .line 3213
    iput v0, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$SegmentInfo;->endOffset_:I

    return-void
.end method

.method static synthetic access$1000(Landroid/car/hardware/xpu/XpuFNgpRouteMessage$SegmentInfo;)V
    .locals 0

    .line 3201
    invoke-direct {p0}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$SegmentInfo;->clearMileage()V

    return-void
.end method

.method static synthetic access$1100(Landroid/car/hardware/xpu/XpuFNgpRouteMessage$SegmentInfo;I)V
    .locals 0

    .line 3201
    invoke-direct {p0, p1}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$SegmentInfo;->setStatusValue(I)V

    return-void
.end method

.method static synthetic access$1200(Landroid/car/hardware/xpu/XpuFNgpRouteMessage$SegmentInfo;Landroid/car/hardware/xpu/XpuFNgpRouteMessage$SegmentAvailableStatus;)V
    .locals 0

    .line 3201
    invoke-direct {p0, p1}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$SegmentInfo;->setStatus(Landroid/car/hardware/xpu/XpuFNgpRouteMessage$SegmentAvailableStatus;)V

    return-void
.end method

.method static synthetic access$1300(Landroid/car/hardware/xpu/XpuFNgpRouteMessage$SegmentInfo;)V
    .locals 0

    .line 3201
    invoke-direct {p0}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$SegmentInfo;->clearStatus()V

    return-void
.end method

.method static synthetic access$1400(Landroid/car/hardware/xpu/XpuFNgpRouteMessage$SegmentInfo;I)V
    .locals 0

    .line 3201
    invoke-direct {p0, p1}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$SegmentInfo;->setBeginIndex(I)V

    return-void
.end method

.method static synthetic access$1500(Landroid/car/hardware/xpu/XpuFNgpRouteMessage$SegmentInfo;)V
    .locals 0

    .line 3201
    invoke-direct {p0}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$SegmentInfo;->clearBeginIndex()V

    return-void
.end method

.method static synthetic access$1600(Landroid/car/hardware/xpu/XpuFNgpRouteMessage$SegmentInfo;I)V
    .locals 0

    .line 3201
    invoke-direct {p0, p1}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$SegmentInfo;->setEndIndex(I)V

    return-void
.end method

.method static synthetic access$1700(Landroid/car/hardware/xpu/XpuFNgpRouteMessage$SegmentInfo;)V
    .locals 0

    .line 3201
    invoke-direct {p0}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$SegmentInfo;->clearEndIndex()V

    return-void
.end method

.method static synthetic access$1800(Landroid/car/hardware/xpu/XpuFNgpRouteMessage$SegmentInfo;I)V
    .locals 0

    .line 3201
    invoke-direct {p0, p1}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$SegmentInfo;->setDesc(I)V

    return-void
.end method

.method static synthetic access$1900(Landroid/car/hardware/xpu/XpuFNgpRouteMessage$SegmentInfo;)V
    .locals 0

    .line 3201
    invoke-direct {p0}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$SegmentInfo;->clearDesc()V

    return-void
.end method

.method static synthetic access$2000(Landroid/car/hardware/xpu/XpuFNgpRouteMessage$SegmentInfo;I)V
    .locals 0

    .line 3201
    invoke-direct {p0, p1}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$SegmentInfo;->setBeginOffset(I)V

    return-void
.end method

.method static synthetic access$2100(Landroid/car/hardware/xpu/XpuFNgpRouteMessage$SegmentInfo;)V
    .locals 0

    .line 3201
    invoke-direct {p0}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$SegmentInfo;->clearBeginOffset()V

    return-void
.end method

.method static synthetic access$2200(Landroid/car/hardware/xpu/XpuFNgpRouteMessage$SegmentInfo;I)V
    .locals 0

    .line 3201
    invoke-direct {p0, p1}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$SegmentInfo;->setEndOffset(I)V

    return-void
.end method

.method static synthetic access$2300(Landroid/car/hardware/xpu/XpuFNgpRouteMessage$SegmentInfo;)V
    .locals 0

    .line 3201
    invoke-direct {p0}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$SegmentInfo;->clearEndOffset()V

    return-void
.end method

.method static synthetic access$800()Landroid/car/hardware/xpu/XpuFNgpRouteMessage$SegmentInfo;
    .locals 1

    .line 3201
    sget-object v0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$SegmentInfo;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuFNgpRouteMessage$SegmentInfo;

    return-object v0
.end method

.method static synthetic access$900(Landroid/car/hardware/xpu/XpuFNgpRouteMessage$SegmentInfo;I)V
    .locals 0

    .line 3201
    invoke-direct {p0, p1}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$SegmentInfo;->setMileage(I)V

    return-void
.end method

.method private clearBeginIndex()V
    .locals 1

    const/4 v0, 0x0

    .line 3341
    iput v0, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$SegmentInfo;->beginIndex_:I

    return-void
.end method

.method private clearBeginOffset()V
    .locals 1

    const/4 v0, 0x0

    .line 3446
    iput v0, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$SegmentInfo;->beginOffset_:I

    return-void
.end method

.method private clearDesc()V
    .locals 1

    const/4 v0, 0x0

    .line 3411
    iput v0, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$SegmentInfo;->desc_:I

    return-void
.end method

.method private clearEndIndex()V
    .locals 1

    const/4 v0, 0x0

    .line 3376
    iput v0, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$SegmentInfo;->endIndex_:I

    return-void
.end method

.method private clearEndOffset()V
    .locals 1

    const/4 v0, 0x0

    .line 3481
    iput v0, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$SegmentInfo;->endOffset_:I

    return-void
.end method

.method private clearMileage()V
    .locals 1

    const/4 v0, 0x0

    .line 3247
    iput v0, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$SegmentInfo;->mileage_:I

    return-void
.end method

.method private clearStatus()V
    .locals 1

    const/4 v0, 0x0

    .line 3306
    iput v0, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$SegmentInfo;->status_:I

    return-void
.end method

.method public static getDefaultInstance()Landroid/car/hardware/xpu/XpuFNgpRouteMessage$SegmentInfo;
    .locals 1

    .line 4029
    sget-object v0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$SegmentInfo;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuFNgpRouteMessage$SegmentInfo;

    return-object v0
.end method

.method public static newBuilder()Landroid/car/hardware/xpu/XpuFNgpRouteMessage$SegmentInfo$Builder;
    .locals 1

    .line 3608
    sget-object v0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$SegmentInfo;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuFNgpRouteMessage$SegmentInfo;

    invoke-virtual {v0}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$SegmentInfo;->toBuilder()Lcom/android/carsdk/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$SegmentInfo$Builder;

    return-object v0
.end method

.method public static newBuilder(Landroid/car/hardware/xpu/XpuFNgpRouteMessage$SegmentInfo;)Landroid/car/hardware/xpu/XpuFNgpRouteMessage$SegmentInfo$Builder;
    .locals 1

    .line 3611
    sget-object v0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$SegmentInfo;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuFNgpRouteMessage$SegmentInfo;

    invoke-virtual {v0}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$SegmentInfo;->toBuilder()Lcom/android/carsdk/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$SegmentInfo$Builder;

    invoke-virtual {v0, p0}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$SegmentInfo$Builder;->mergeFrom(Lcom/android/carsdk/protobuf/GeneratedMessageLite;)Lcom/android/carsdk/protobuf/GeneratedMessageLite$Builder;

    move-result-object p0

    check-cast p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$SegmentInfo$Builder;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Landroid/car/hardware/xpu/XpuFNgpRouteMessage$SegmentInfo;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3585
    sget-object v0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$SegmentInfo;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuFNgpRouteMessage$SegmentInfo;

    invoke-static {v0, p0}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$SegmentInfo;->parseDelimitedFrom(Lcom/android/carsdk/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$SegmentInfo;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/android/carsdk/protobuf/ExtensionRegistryLite;)Landroid/car/hardware/xpu/XpuFNgpRouteMessage$SegmentInfo;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3591
    sget-object v0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$SegmentInfo;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuFNgpRouteMessage$SegmentInfo;

    invoke-static {v0, p0, p1}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$SegmentInfo;->parseDelimitedFrom(Lcom/android/carsdk/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/android/carsdk/protobuf/ExtensionRegistryLite;)Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$SegmentInfo;

    return-object p0
.end method

.method public static parseFrom(Lcom/android/carsdk/protobuf/ByteString;)Landroid/car/hardware/xpu/XpuFNgpRouteMessage$SegmentInfo;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/carsdk/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 3549
    sget-object v0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$SegmentInfo;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuFNgpRouteMessage$SegmentInfo;

    invoke-static {v0, p0}, Lcom/android/carsdk/protobuf/GeneratedMessageLite;->parseFrom(Lcom/android/carsdk/protobuf/GeneratedMessageLite;Lcom/android/carsdk/protobuf/ByteString;)Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$SegmentInfo;

    return-object p0
.end method

.method public static parseFrom(Lcom/android/carsdk/protobuf/ByteString;Lcom/android/carsdk/protobuf/ExtensionRegistryLite;)Landroid/car/hardware/xpu/XpuFNgpRouteMessage$SegmentInfo;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/carsdk/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 3556
    sget-object v0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$SegmentInfo;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuFNgpRouteMessage$SegmentInfo;

    invoke-static {v0, p0, p1}, Lcom/android/carsdk/protobuf/GeneratedMessageLite;->parseFrom(Lcom/android/carsdk/protobuf/GeneratedMessageLite;Lcom/android/carsdk/protobuf/ByteString;Lcom/android/carsdk/protobuf/ExtensionRegistryLite;)Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$SegmentInfo;

    return-object p0
.end method

.method public static parseFrom(Lcom/android/carsdk/protobuf/CodedInputStream;)Landroid/car/hardware/xpu/XpuFNgpRouteMessage$SegmentInfo;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3596
    sget-object v0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$SegmentInfo;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuFNgpRouteMessage$SegmentInfo;

    invoke-static {v0, p0}, Lcom/android/carsdk/protobuf/GeneratedMessageLite;->parseFrom(Lcom/android/carsdk/protobuf/GeneratedMessageLite;Lcom/android/carsdk/protobuf/CodedInputStream;)Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$SegmentInfo;

    return-object p0
.end method

.method public static parseFrom(Lcom/android/carsdk/protobuf/CodedInputStream;Lcom/android/carsdk/protobuf/ExtensionRegistryLite;)Landroid/car/hardware/xpu/XpuFNgpRouteMessage$SegmentInfo;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3603
    sget-object v0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$SegmentInfo;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuFNgpRouteMessage$SegmentInfo;

    invoke-static {v0, p0, p1}, Lcom/android/carsdk/protobuf/GeneratedMessageLite;->parseFrom(Lcom/android/carsdk/protobuf/GeneratedMessageLite;Lcom/android/carsdk/protobuf/CodedInputStream;Lcom/android/carsdk/protobuf/ExtensionRegistryLite;)Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$SegmentInfo;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Landroid/car/hardware/xpu/XpuFNgpRouteMessage$SegmentInfo;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3573
    sget-object v0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$SegmentInfo;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuFNgpRouteMessage$SegmentInfo;

    invoke-static {v0, p0}, Lcom/android/carsdk/protobuf/GeneratedMessageLite;->parseFrom(Lcom/android/carsdk/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$SegmentInfo;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/android/carsdk/protobuf/ExtensionRegistryLite;)Landroid/car/hardware/xpu/XpuFNgpRouteMessage$SegmentInfo;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3580
    sget-object v0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$SegmentInfo;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuFNgpRouteMessage$SegmentInfo;

    invoke-static {v0, p0, p1}, Lcom/android/carsdk/protobuf/GeneratedMessageLite;->parseFrom(Lcom/android/carsdk/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/android/carsdk/protobuf/ExtensionRegistryLite;)Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$SegmentInfo;

    return-object p0
.end method

.method public static parseFrom([B)Landroid/car/hardware/xpu/XpuFNgpRouteMessage$SegmentInfo;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/carsdk/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 3561
    sget-object v0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$SegmentInfo;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuFNgpRouteMessage$SegmentInfo;

    invoke-static {v0, p0}, Lcom/android/carsdk/protobuf/GeneratedMessageLite;->parseFrom(Lcom/android/carsdk/protobuf/GeneratedMessageLite;[B)Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$SegmentInfo;

    return-object p0
.end method

.method public static parseFrom([BLcom/android/carsdk/protobuf/ExtensionRegistryLite;)Landroid/car/hardware/xpu/XpuFNgpRouteMessage$SegmentInfo;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/carsdk/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 3568
    sget-object v0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$SegmentInfo;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuFNgpRouteMessage$SegmentInfo;

    invoke-static {v0, p0, p1}, Lcom/android/carsdk/protobuf/GeneratedMessageLite;->parseFrom(Lcom/android/carsdk/protobuf/GeneratedMessageLite;[BLcom/android/carsdk/protobuf/ExtensionRegistryLite;)Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$SegmentInfo;

    return-object p0
.end method

.method public static parser()Lcom/android/carsdk/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/android/carsdk/protobuf/Parser<",
            "Landroid/car/hardware/xpu/XpuFNgpRouteMessage$SegmentInfo;",
            ">;"
        }
    .end annotation

    .line 4035
    sget-object v0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$SegmentInfo;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuFNgpRouteMessage$SegmentInfo;

    invoke-virtual {v0}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$SegmentInfo;->getParserForType()Lcom/android/carsdk/protobuf/Parser;

    move-result-object v0

    return-object v0
.end method

.method private setBeginIndex(I)V
    .locals 0

    .line 3330
    iput p1, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$SegmentInfo;->beginIndex_:I

    return-void
.end method

.method private setBeginOffset(I)V
    .locals 0

    .line 3435
    iput p1, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$SegmentInfo;->beginOffset_:I

    return-void
.end method

.method private setDesc(I)V
    .locals 0

    .line 3400
    iput p1, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$SegmentInfo;->desc_:I

    return-void
.end method

.method private setEndIndex(I)V
    .locals 0

    .line 3365
    iput p1, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$SegmentInfo;->endIndex_:I

    return-void
.end method

.method private setEndOffset(I)V
    .locals 0

    .line 3470
    iput p1, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$SegmentInfo;->endOffset_:I

    return-void
.end method

.method private setMileage(I)V
    .locals 0

    .line 3236
    iput p1, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$SegmentInfo;->mileage_:I

    return-void
.end method

.method private setStatus(Landroid/car/hardware/xpu/XpuFNgpRouteMessage$SegmentAvailableStatus;)V
    .locals 0

    .line 3292
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3295
    invoke-virtual {p1}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$SegmentAvailableStatus;->getNumber()I

    move-result p1

    iput p1, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$SegmentInfo;->status_:I

    return-void
.end method

.method private setStatusValue(I)V
    .locals 0

    .line 3281
    iput p1, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$SegmentInfo;->status_:I

    return-void
.end method


# virtual methods
.method protected final dynamicMethod(Lcom/android/carsdk/protobuf/GeneratedMessageLite$MethodToInvoke;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5

    .line 3904
    sget-object v0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$1;->$SwitchMap$com$google$protobuf$GeneratedMessageLite$MethodToInvoke:[I

    invoke-virtual {p1}, Lcom/android/carsdk/protobuf/GeneratedMessageLite$MethodToInvoke;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x1

    packed-switch p1, :pswitch_data_0

    .line 4017
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1

    .line 4008
    :pswitch_0
    sget-object p1, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$SegmentInfo;->PARSER:Lcom/android/carsdk/protobuf/Parser;

    if-nez p1, :cond_1

    const-class p1, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$SegmentInfo;

    monitor-enter p1

    .line 4009
    :try_start_0
    sget-object p2, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$SegmentInfo;->PARSER:Lcom/android/carsdk/protobuf/Parser;

    if-nez p2, :cond_0

    .line 4010
    new-instance p2, Lcom/android/carsdk/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;

    sget-object p3, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$SegmentInfo;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuFNgpRouteMessage$SegmentInfo;

    invoke-direct {p2, p3}, Lcom/android/carsdk/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;-><init>(Lcom/android/carsdk/protobuf/GeneratedMessageLite;)V

    sput-object p2, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$SegmentInfo;->PARSER:Lcom/android/carsdk/protobuf/Parser;

    .line 4012
    :cond_0
    monitor-exit p1

    goto :goto_0

    :catchall_0
    move-exception p2

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p2

    .line 4014
    :cond_1
    :goto_0
    sget-object p1, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$SegmentInfo;->PARSER:Lcom/android/carsdk/protobuf/Parser;

    return-object p1

    .line 3939
    :pswitch_1
    check-cast p2, Lcom/android/carsdk/protobuf/CodedInputStream;

    .line 3941
    check-cast p3, Lcom/android/carsdk/protobuf/ExtensionRegistryLite;

    :cond_2
    :goto_1
    if-nez v1, :cond_b

    .line 3946
    :try_start_1
    invoke-virtual {p2}, Lcom/android/carsdk/protobuf/CodedInputStream;->readTag()I

    move-result p1

    if-eqz p1, :cond_a

    const/16 p3, 0x8

    if-eq p1, p3, :cond_9

    const/16 p3, 0x10

    if-eq p1, p3, :cond_8

    const/16 p3, 0x18

    if-eq p1, p3, :cond_7

    const/16 p3, 0x20

    if-eq p1, p3, :cond_6

    const/16 p3, 0x28

    if-eq p1, p3, :cond_5

    const/16 p3, 0x30

    if-eq p1, p3, :cond_4

    const/16 p3, 0x38

    if-eq p1, p3, :cond_3

    .line 3952
    invoke-virtual {p2, p1}, Lcom/android/carsdk/protobuf/CodedInputStream;->skipField(I)Z

    move-result p1

    if-nez p1, :cond_2

    goto :goto_2

    .line 3990
    :cond_3
    invoke-virtual {p2}, Lcom/android/carsdk/protobuf/CodedInputStream;->readInt32()I

    move-result p1

    iput p1, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$SegmentInfo;->endOffset_:I

    goto :goto_1

    .line 3985
    :cond_4
    invoke-virtual {p2}, Lcom/android/carsdk/protobuf/CodedInputStream;->readInt32()I

    move-result p1

    iput p1, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$SegmentInfo;->beginOffset_:I

    goto :goto_1

    .line 3980
    :cond_5
    invoke-virtual {p2}, Lcom/android/carsdk/protobuf/CodedInputStream;->readInt32()I

    move-result p1

    iput p1, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$SegmentInfo;->desc_:I

    goto :goto_1

    .line 3975
    :cond_6
    invoke-virtual {p2}, Lcom/android/carsdk/protobuf/CodedInputStream;->readInt32()I

    move-result p1

    iput p1, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$SegmentInfo;->endIndex_:I

    goto :goto_1

    .line 3970
    :cond_7
    invoke-virtual {p2}, Lcom/android/carsdk/protobuf/CodedInputStream;->readInt32()I

    move-result p1

    iput p1, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$SegmentInfo;->beginIndex_:I

    goto :goto_1

    .line 3963
    :cond_8
    invoke-virtual {p2}, Lcom/android/carsdk/protobuf/CodedInputStream;->readEnum()I

    move-result p1

    .line 3965
    iput p1, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$SegmentInfo;->status_:I

    goto :goto_1

    .line 3959
    :cond_9
    invoke-virtual {p2}, Lcom/android/carsdk/protobuf/CodedInputStream;->readInt32()I

    move-result p1

    iput p1, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$SegmentInfo;->mileage_:I
    :try_end_1
    .catch Lcom/android/carsdk/protobuf/InvalidProtocolBufferException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    :cond_a
    :goto_2
    move v1, v2

    goto :goto_1

    :catchall_1
    move-exception p1

    goto :goto_3

    :catch_0
    move-exception p1

    .line 3998
    :try_start_2
    new-instance p2, Ljava/lang/RuntimeException;

    new-instance p3, Lcom/android/carsdk/protobuf/InvalidProtocolBufferException;

    .line 4000
    invoke-virtual {p1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p3, p1}, Lcom/android/carsdk/protobuf/InvalidProtocolBufferException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, p0}, Lcom/android/carsdk/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/android/carsdk/protobuf/MessageLite;)Lcom/android/carsdk/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p2

    :catch_1
    move-exception p1

    .line 3996
    new-instance p2, Ljava/lang/RuntimeException;

    invoke-virtual {p1, p0}, Lcom/android/carsdk/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/android/carsdk/protobuf/MessageLite;)Lcom/android/carsdk/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 4001
    :goto_3
    throw p1

    .line 4005
    :cond_b
    :pswitch_2
    sget-object p1, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$SegmentInfo;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuFNgpRouteMessage$SegmentInfo;

    return-object p1

    .line 3918
    :pswitch_3
    check-cast p2, Lcom/android/carsdk/protobuf/GeneratedMessageLite$Visitor;

    .line 3919
    check-cast p3, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$SegmentInfo;

    .line 3920
    iget p1, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$SegmentInfo;->mileage_:I

    if-eqz p1, :cond_c

    move v0, v2

    goto :goto_4

    :cond_c
    move v0, v1

    :goto_4
    iget v3, p3, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$SegmentInfo;->mileage_:I

    if-eqz v3, :cond_d

    move v4, v2

    goto :goto_5

    :cond_d
    move v4, v1

    :goto_5
    invoke-interface {p2, v0, p1, v4, v3}, Lcom/android/carsdk/protobuf/GeneratedMessageLite$Visitor;->visitInt(ZIZI)I

    move-result p1

    iput p1, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$SegmentInfo;->mileage_:I

    .line 3922
    iget p1, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$SegmentInfo;->status_:I

    if-eqz p1, :cond_e

    move v0, v2

    goto :goto_6

    :cond_e
    move v0, v1

    :goto_6
    iget v3, p3, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$SegmentInfo;->status_:I

    if-eqz v3, :cond_f

    move v4, v2

    goto :goto_7

    :cond_f
    move v4, v1

    :goto_7
    invoke-interface {p2, v0, p1, v4, v3}, Lcom/android/carsdk/protobuf/GeneratedMessageLite$Visitor;->visitInt(ZIZI)I

    move-result p1

    iput p1, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$SegmentInfo;->status_:I

    .line 3923
    iget p1, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$SegmentInfo;->beginIndex_:I

    if-eqz p1, :cond_10

    move v0, v2

    goto :goto_8

    :cond_10
    move v0, v1

    :goto_8
    iget v3, p3, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$SegmentInfo;->beginIndex_:I

    if-eqz v3, :cond_11

    move v4, v2

    goto :goto_9

    :cond_11
    move v4, v1

    :goto_9
    invoke-interface {p2, v0, p1, v4, v3}, Lcom/android/carsdk/protobuf/GeneratedMessageLite$Visitor;->visitInt(ZIZI)I

    move-result p1

    iput p1, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$SegmentInfo;->beginIndex_:I

    .line 3925
    iget p1, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$SegmentInfo;->endIndex_:I

    if-eqz p1, :cond_12

    move v0, v2

    goto :goto_a

    :cond_12
    move v0, v1

    :goto_a
    iget v3, p3, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$SegmentInfo;->endIndex_:I

    if-eqz v3, :cond_13

    move v4, v2

    goto :goto_b

    :cond_13
    move v4, v1

    :goto_b
    invoke-interface {p2, v0, p1, v4, v3}, Lcom/android/carsdk/protobuf/GeneratedMessageLite$Visitor;->visitInt(ZIZI)I

    move-result p1

    iput p1, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$SegmentInfo;->endIndex_:I

    .line 3927
    iget p1, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$SegmentInfo;->desc_:I

    if-eqz p1, :cond_14

    move v0, v2

    goto :goto_c

    :cond_14
    move v0, v1

    :goto_c
    iget v3, p3, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$SegmentInfo;->desc_:I

    if-eqz v3, :cond_15

    move v4, v2

    goto :goto_d

    :cond_15
    move v4, v1

    :goto_d
    invoke-interface {p2, v0, p1, v4, v3}, Lcom/android/carsdk/protobuf/GeneratedMessageLite$Visitor;->visitInt(ZIZI)I

    move-result p1

    iput p1, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$SegmentInfo;->desc_:I

    .line 3929
    iget p1, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$SegmentInfo;->beginOffset_:I

    if-eqz p1, :cond_16

    move v0, v2

    goto :goto_e

    :cond_16
    move v0, v1

    :goto_e
    iget v3, p3, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$SegmentInfo;->beginOffset_:I

    if-eqz v3, :cond_17

    move v4, v2

    goto :goto_f

    :cond_17
    move v4, v1

    :goto_f
    invoke-interface {p2, v0, p1, v4, v3}, Lcom/android/carsdk/protobuf/GeneratedMessageLite$Visitor;->visitInt(ZIZI)I

    move-result p1

    iput p1, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$SegmentInfo;->beginOffset_:I

    .line 3931
    iget p1, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$SegmentInfo;->endOffset_:I

    if-eqz p1, :cond_18

    move v0, v2

    goto :goto_10

    :cond_18
    move v0, v1

    :goto_10
    iget p3, p3, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$SegmentInfo;->endOffset_:I

    if-eqz p3, :cond_19

    move v1, v2

    :cond_19
    invoke-interface {p2, v0, p1, v1, p3}, Lcom/android/carsdk/protobuf/GeneratedMessageLite$Visitor;->visitInt(ZIZI)I

    move-result p1

    iput p1, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$SegmentInfo;->endOffset_:I

    .line 3933
    sget-object p1, Lcom/android/carsdk/protobuf/GeneratedMessageLite$MergeFromVisitor;->INSTANCE:Lcom/android/carsdk/protobuf/GeneratedMessageLite$MergeFromVisitor;

    return-object p0

    .line 3915
    :pswitch_4
    new-instance p1, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$SegmentInfo$Builder;

    invoke-direct {p1, v0}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$SegmentInfo$Builder;-><init>(Landroid/car/hardware/xpu/XpuFNgpRouteMessage$1;)V

    return-object p1

    :pswitch_5
    return-object v0

    .line 3909
    :pswitch_6
    sget-object p1, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$SegmentInfo;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuFNgpRouteMessage$SegmentInfo;

    return-object p1

    .line 3906
    :pswitch_7
    new-instance p1, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$SegmentInfo;

    invoke-direct {p1}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$SegmentInfo;-><init>()V

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

.method public getBeginIndex()I
    .locals 1

    .line 3319
    iget v0, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$SegmentInfo;->beginIndex_:I

    return v0
.end method

.method public getBeginOffset()I
    .locals 1

    .line 3424
    iget v0, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$SegmentInfo;->beginOffset_:I

    return v0
.end method

.method public getDesc()I
    .locals 1

    .line 3389
    iget v0, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$SegmentInfo;->desc_:I

    return v0
.end method

.method public getEndIndex()I
    .locals 1

    .line 3354
    iget v0, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$SegmentInfo;->endIndex_:I

    return v0
.end method

.method public getEndOffset()I
    .locals 1

    .line 3459
    iget v0, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$SegmentInfo;->endOffset_:I

    return v0
.end method

.method public getMileage()I
    .locals 1

    .line 3225
    iget v0, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$SegmentInfo;->mileage_:I

    return v0
.end method

.method public getSerializedSize()I
    .locals 3

    .line 3510
    iget v0, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$SegmentInfo;->memoizedSerializedSize:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    return v0

    :cond_0
    const/4 v0, 0x0

    .line 3514
    iget v1, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$SegmentInfo;->mileage_:I

    if-eqz v1, :cond_1

    const/4 v2, 0x1

    .line 3516
    invoke-static {v2, v1}, Lcom/android/carsdk/protobuf/CodedOutputStream;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 3518
    :cond_1
    iget v1, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$SegmentInfo;->status_:I

    sget-object v2, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$SegmentAvailableStatus;->AVAILABLE:Landroid/car/hardware/xpu/XpuFNgpRouteMessage$SegmentAvailableStatus;

    invoke-virtual {v2}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$SegmentAvailableStatus;->getNumber()I

    move-result v2

    if-eq v1, v2, :cond_2

    const/4 v1, 0x2

    .line 3519
    iget v2, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$SegmentInfo;->status_:I

    .line 3520
    invoke-static {v1, v2}, Lcom/android/carsdk/protobuf/CodedOutputStream;->computeEnumSize(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 3522
    :cond_2
    iget v1, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$SegmentInfo;->beginIndex_:I

    if-eqz v1, :cond_3

    const/4 v2, 0x3

    .line 3524
    invoke-static {v2, v1}, Lcom/android/carsdk/protobuf/CodedOutputStream;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 3526
    :cond_3
    iget v1, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$SegmentInfo;->endIndex_:I

    if-eqz v1, :cond_4

    const/4 v2, 0x4

    .line 3528
    invoke-static {v2, v1}, Lcom/android/carsdk/protobuf/CodedOutputStream;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 3530
    :cond_4
    iget v1, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$SegmentInfo;->desc_:I

    if-eqz v1, :cond_5

    const/4 v2, 0x5

    .line 3532
    invoke-static {v2, v1}, Lcom/android/carsdk/protobuf/CodedOutputStream;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 3534
    :cond_5
    iget v1, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$SegmentInfo;->beginOffset_:I

    if-eqz v1, :cond_6

    const/4 v2, 0x6

    .line 3536
    invoke-static {v2, v1}, Lcom/android/carsdk/protobuf/CodedOutputStream;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 3538
    :cond_6
    iget v1, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$SegmentInfo;->endOffset_:I

    if-eqz v1, :cond_7

    const/4 v2, 0x7

    .line 3540
    invoke-static {v2, v1}, Lcom/android/carsdk/protobuf/CodedOutputStream;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 3542
    :cond_7
    iput v0, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$SegmentInfo;->memoizedSerializedSize:I

    return v0
.end method

.method public getStatus()Landroid/car/hardware/xpu/XpuFNgpRouteMessage$SegmentAvailableStatus;
    .locals 1

    .line 3270
    iget v0, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$SegmentInfo;->status_:I

    invoke-static {v0}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$SegmentAvailableStatus;->forNumber(I)Landroid/car/hardware/xpu/XpuFNgpRouteMessage$SegmentAvailableStatus;

    move-result-object v0

    if-nez v0, :cond_0

    .line 3271
    sget-object v0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$SegmentAvailableStatus;->UNRECOGNIZED:Landroid/car/hardware/xpu/XpuFNgpRouteMessage$SegmentAvailableStatus;

    :cond_0
    return-object v0
.end method

.method public getStatusValue()I
    .locals 1

    .line 3260
    iget v0, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$SegmentInfo;->status_:I

    return v0
.end method

.method public writeTo(Lcom/android/carsdk/protobuf/CodedOutputStream;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3486
    iget v0, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$SegmentInfo;->mileage_:I

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    .line 3487
    invoke-virtual {p1, v1, v0}, Lcom/android/carsdk/protobuf/CodedOutputStream;->writeInt32(II)V

    .line 3489
    :cond_0
    iget v0, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$SegmentInfo;->status_:I

    sget-object v1, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$SegmentAvailableStatus;->AVAILABLE:Landroid/car/hardware/xpu/XpuFNgpRouteMessage$SegmentAvailableStatus;

    invoke-virtual {v1}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$SegmentAvailableStatus;->getNumber()I

    move-result v1

    if-eq v0, v1, :cond_1

    const/4 v0, 0x2

    .line 3490
    iget v1, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$SegmentInfo;->status_:I

    invoke-virtual {p1, v0, v1}, Lcom/android/carsdk/protobuf/CodedOutputStream;->writeEnum(II)V

    .line 3492
    :cond_1
    iget v0, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$SegmentInfo;->beginIndex_:I

    if-eqz v0, :cond_2

    const/4 v1, 0x3

    .line 3493
    invoke-virtual {p1, v1, v0}, Lcom/android/carsdk/protobuf/CodedOutputStream;->writeInt32(II)V

    .line 3495
    :cond_2
    iget v0, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$SegmentInfo;->endIndex_:I

    if-eqz v0, :cond_3

    const/4 v1, 0x4

    .line 3496
    invoke-virtual {p1, v1, v0}, Lcom/android/carsdk/protobuf/CodedOutputStream;->writeInt32(II)V

    .line 3498
    :cond_3
    iget v0, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$SegmentInfo;->desc_:I

    if-eqz v0, :cond_4

    const/4 v1, 0x5

    .line 3499
    invoke-virtual {p1, v1, v0}, Lcom/android/carsdk/protobuf/CodedOutputStream;->writeInt32(II)V

    .line 3501
    :cond_4
    iget v0, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$SegmentInfo;->beginOffset_:I

    if-eqz v0, :cond_5

    const/4 v1, 0x6

    .line 3502
    invoke-virtual {p1, v1, v0}, Lcom/android/carsdk/protobuf/CodedOutputStream;->writeInt32(II)V

    .line 3504
    :cond_5
    iget v0, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$SegmentInfo;->endOffset_:I

    if-eqz v0, :cond_6

    const/4 v1, 0x7

    .line 3505
    invoke-virtual {p1, v1, v0}, Lcom/android/carsdk/protobuf/CodedOutputStream;->writeInt32(II)V

    :cond_6
    return-void
.end method
