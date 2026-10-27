.class public final Landroid/car/hardware/xpu/XpuApEssentialMsg$ApPathPoint;
.super Lcom/android/carsdk/protobuf/GeneratedMessageLite;
.source "XpuApEssentialMsg.java"

# interfaces
.implements Landroid/car/hardware/xpu/XpuApEssentialMsg$ApPathPointOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/car/hardware/xpu/XpuApEssentialMsg;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ApPathPoint"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/car/hardware/xpu/XpuApEssentialMsg$ApPathPoint$Builder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/carsdk/protobuf/GeneratedMessageLite<",
        "Landroid/car/hardware/xpu/XpuApEssentialMsg$ApPathPoint;",
        "Landroid/car/hardware/xpu/XpuApEssentialMsg$ApPathPoint$Builder;",
        ">;",
        "Landroid/car/hardware/xpu/XpuApEssentialMsg$ApPathPointOrBuilder;"
    }
.end annotation


# static fields
.field public static final BASE_POINT_FIELD_NUMBER:I = 0x2

.field public static final CONFIDENCE_FIELD_NUMBER:I = 0x1

.field public static final DDKAPPA_FIELD_NUMBER:I = 0x9

.field private static final DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuApEssentialMsg$ApPathPoint;

.field public static final DKAPPA_FIELD_NUMBER:I = 0x8

.field public static final KAPPA_FIELD_NUMBER:I = 0x4

.field public static final LANE_WIDTH_FIELD_NUMBER:I = 0xa

.field public static final LEFT_WIDTH_FIELD_NUMBER:I = 0x6

.field private static volatile PARSER:Lcom/android/carsdk/protobuf/Parser; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/carsdk/protobuf/Parser<",
            "Landroid/car/hardware/xpu/XpuApEssentialMsg$ApPathPoint;",
            ">;"
        }
    .end annotation
.end field

.field public static final RIGHT_WIDTH_FIELD_NUMBER:I = 0x7

.field public static final S_FIELD_NUMBER:I = 0x5

.field public static final THETA_FIELD_NUMBER:I = 0x3


# instance fields
.field private basePoint_:Landroid/car/hardware/xpu/XpuApEssentialMsg$Point3f;

.field private confidence_:F

.field private ddkappa_:F

.field private dkappa_:F

.field private kappa_:F

.field private laneWidth_:F

.field private leftWidth_:F

.field private rightWidth_:F

.field private s_:F

.field private theta_:F


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 6079
    new-instance v0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApPathPoint;

    invoke-direct {v0}, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApPathPoint;-><init>()V

    sput-object v0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApPathPoint;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuApEssentialMsg$ApPathPoint;

    .line 6080
    invoke-virtual {v0}, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApPathPoint;->makeImmutable()V

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 5239
    invoke-direct {p0}, Lcom/android/carsdk/protobuf/GeneratedMessageLite;-><init>()V

    const/4 v0, 0x0

    .line 5240
    iput v0, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApPathPoint;->confidence_:F

    .line 5241
    iput v0, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApPathPoint;->theta_:F

    .line 5242
    iput v0, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApPathPoint;->kappa_:F

    .line 5243
    iput v0, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApPathPoint;->s_:F

    .line 5244
    iput v0, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApPathPoint;->leftWidth_:F

    .line 5245
    iput v0, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApPathPoint;->rightWidth_:F

    .line 5246
    iput v0, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApPathPoint;->dkappa_:F

    .line 5247
    iput v0, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApPathPoint;->ddkappa_:F

    .line 5248
    iput v0, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApPathPoint;->laneWidth_:F

    return-void
.end method

.method static synthetic access$11200()Landroid/car/hardware/xpu/XpuApEssentialMsg$ApPathPoint;
    .locals 1

    .line 5234
    sget-object v0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApPathPoint;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuApEssentialMsg$ApPathPoint;

    return-object v0
.end method

.method static synthetic access$11300(Landroid/car/hardware/xpu/XpuApEssentialMsg$ApPathPoint;F)V
    .locals 0

    .line 5234
    invoke-direct {p0, p1}, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApPathPoint;->setConfidence(F)V

    return-void
.end method

.method static synthetic access$11400(Landroid/car/hardware/xpu/XpuApEssentialMsg$ApPathPoint;)V
    .locals 0

    .line 5234
    invoke-direct {p0}, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApPathPoint;->clearConfidence()V

    return-void
.end method

.method static synthetic access$11500(Landroid/car/hardware/xpu/XpuApEssentialMsg$ApPathPoint;Landroid/car/hardware/xpu/XpuApEssentialMsg$Point3f;)V
    .locals 0

    .line 5234
    invoke-direct {p0, p1}, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApPathPoint;->setBasePoint(Landroid/car/hardware/xpu/XpuApEssentialMsg$Point3f;)V

    return-void
.end method

.method static synthetic access$11600(Landroid/car/hardware/xpu/XpuApEssentialMsg$ApPathPoint;Landroid/car/hardware/xpu/XpuApEssentialMsg$Point3f$Builder;)V
    .locals 0

    .line 5234
    invoke-direct {p0, p1}, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApPathPoint;->setBasePoint(Landroid/car/hardware/xpu/XpuApEssentialMsg$Point3f$Builder;)V

    return-void
.end method

.method static synthetic access$11700(Landroid/car/hardware/xpu/XpuApEssentialMsg$ApPathPoint;Landroid/car/hardware/xpu/XpuApEssentialMsg$Point3f;)V
    .locals 0

    .line 5234
    invoke-direct {p0, p1}, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApPathPoint;->mergeBasePoint(Landroid/car/hardware/xpu/XpuApEssentialMsg$Point3f;)V

    return-void
.end method

.method static synthetic access$11800(Landroid/car/hardware/xpu/XpuApEssentialMsg$ApPathPoint;)V
    .locals 0

    .line 5234
    invoke-direct {p0}, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApPathPoint;->clearBasePoint()V

    return-void
.end method

.method static synthetic access$11900(Landroid/car/hardware/xpu/XpuApEssentialMsg$ApPathPoint;F)V
    .locals 0

    .line 5234
    invoke-direct {p0, p1}, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApPathPoint;->setTheta(F)V

    return-void
.end method

.method static synthetic access$12000(Landroid/car/hardware/xpu/XpuApEssentialMsg$ApPathPoint;)V
    .locals 0

    .line 5234
    invoke-direct {p0}, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApPathPoint;->clearTheta()V

    return-void
.end method

.method static synthetic access$12100(Landroid/car/hardware/xpu/XpuApEssentialMsg$ApPathPoint;F)V
    .locals 0

    .line 5234
    invoke-direct {p0, p1}, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApPathPoint;->setKappa(F)V

    return-void
.end method

.method static synthetic access$12200(Landroid/car/hardware/xpu/XpuApEssentialMsg$ApPathPoint;)V
    .locals 0

    .line 5234
    invoke-direct {p0}, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApPathPoint;->clearKappa()V

    return-void
.end method

.method static synthetic access$12300(Landroid/car/hardware/xpu/XpuApEssentialMsg$ApPathPoint;F)V
    .locals 0

    .line 5234
    invoke-direct {p0, p1}, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApPathPoint;->setS(F)V

    return-void
.end method

.method static synthetic access$12400(Landroid/car/hardware/xpu/XpuApEssentialMsg$ApPathPoint;)V
    .locals 0

    .line 5234
    invoke-direct {p0}, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApPathPoint;->clearS()V

    return-void
.end method

.method static synthetic access$12500(Landroid/car/hardware/xpu/XpuApEssentialMsg$ApPathPoint;F)V
    .locals 0

    .line 5234
    invoke-direct {p0, p1}, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApPathPoint;->setLeftWidth(F)V

    return-void
.end method

.method static synthetic access$12600(Landroid/car/hardware/xpu/XpuApEssentialMsg$ApPathPoint;)V
    .locals 0

    .line 5234
    invoke-direct {p0}, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApPathPoint;->clearLeftWidth()V

    return-void
.end method

.method static synthetic access$12700(Landroid/car/hardware/xpu/XpuApEssentialMsg$ApPathPoint;F)V
    .locals 0

    .line 5234
    invoke-direct {p0, p1}, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApPathPoint;->setRightWidth(F)V

    return-void
.end method

.method static synthetic access$12800(Landroid/car/hardware/xpu/XpuApEssentialMsg$ApPathPoint;)V
    .locals 0

    .line 5234
    invoke-direct {p0}, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApPathPoint;->clearRightWidth()V

    return-void
.end method

.method static synthetic access$12900(Landroid/car/hardware/xpu/XpuApEssentialMsg$ApPathPoint;F)V
    .locals 0

    .line 5234
    invoke-direct {p0, p1}, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApPathPoint;->setDkappa(F)V

    return-void
.end method

.method static synthetic access$13000(Landroid/car/hardware/xpu/XpuApEssentialMsg$ApPathPoint;)V
    .locals 0

    .line 5234
    invoke-direct {p0}, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApPathPoint;->clearDkappa()V

    return-void
.end method

.method static synthetic access$13100(Landroid/car/hardware/xpu/XpuApEssentialMsg$ApPathPoint;F)V
    .locals 0

    .line 5234
    invoke-direct {p0, p1}, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApPathPoint;->setDdkappa(F)V

    return-void
.end method

.method static synthetic access$13200(Landroid/car/hardware/xpu/XpuApEssentialMsg$ApPathPoint;)V
    .locals 0

    .line 5234
    invoke-direct {p0}, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApPathPoint;->clearDdkappa()V

    return-void
.end method

.method static synthetic access$13300(Landroid/car/hardware/xpu/XpuApEssentialMsg$ApPathPoint;F)V
    .locals 0

    .line 5234
    invoke-direct {p0, p1}, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApPathPoint;->setLaneWidth(F)V

    return-void
.end method

.method static synthetic access$13400(Landroid/car/hardware/xpu/XpuApEssentialMsg$ApPathPoint;)V
    .locals 0

    .line 5234
    invoke-direct {p0}, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApPathPoint;->clearLaneWidth()V

    return-void
.end method

.method private clearBasePoint()V
    .locals 1

    const/4 v0, 0x0

    .line 5321
    iput-object v0, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApPathPoint;->basePoint_:Landroid/car/hardware/xpu/XpuApEssentialMsg$Point3f;

    return-void
.end method

.method private clearConfidence()V
    .locals 1

    const/4 v0, 0x0

    .line 5270
    iput v0, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApPathPoint;->confidence_:F

    return-void
.end method

.method private clearDdkappa()V
    .locals 1

    const/4 v0, 0x0

    .line 5483
    iput v0, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApPathPoint;->ddkappa_:F

    return-void
.end method

.method private clearDkappa()V
    .locals 1

    const/4 v0, 0x0

    .line 5460
    iput v0, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApPathPoint;->dkappa_:F

    return-void
.end method

.method private clearKappa()V
    .locals 1

    const/4 v0, 0x0

    .line 5368
    iput v0, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApPathPoint;->kappa_:F

    return-void
.end method

.method private clearLaneWidth()V
    .locals 1

    const/4 v0, 0x0

    .line 5506
    iput v0, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApPathPoint;->laneWidth_:F

    return-void
.end method

.method private clearLeftWidth()V
    .locals 1

    const/4 v0, 0x0

    .line 5414
    iput v0, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApPathPoint;->leftWidth_:F

    return-void
.end method

.method private clearRightWidth()V
    .locals 1

    const/4 v0, 0x0

    .line 5437
    iput v0, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApPathPoint;->rightWidth_:F

    return-void
.end method

.method private clearS()V
    .locals 1

    const/4 v0, 0x0

    .line 5391
    iput v0, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApPathPoint;->s_:F

    return-void
.end method

.method private clearTheta()V
    .locals 1

    const/4 v0, 0x0

    .line 5345
    iput v0, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApPathPoint;->theta_:F

    return-void
.end method

.method public static getDefaultInstance()Landroid/car/hardware/xpu/XpuApEssentialMsg$ApPathPoint;
    .locals 1

    .line 6084
    sget-object v0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApPathPoint;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuApEssentialMsg$ApPathPoint;

    return-object v0
.end method

.method private mergeBasePoint(Landroid/car/hardware/xpu/XpuApEssentialMsg$Point3f;)V
    .locals 2

    .line 5309
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApPathPoint;->basePoint_:Landroid/car/hardware/xpu/XpuApEssentialMsg$Point3f;

    if-eqz v0, :cond_0

    .line 5310
    invoke-static {}, Landroid/car/hardware/xpu/XpuApEssentialMsg$Point3f;->getDefaultInstance()Landroid/car/hardware/xpu/XpuApEssentialMsg$Point3f;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 5311
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApPathPoint;->basePoint_:Landroid/car/hardware/xpu/XpuApEssentialMsg$Point3f;

    .line 5312
    invoke-static {v0}, Landroid/car/hardware/xpu/XpuApEssentialMsg$Point3f;->newBuilder(Landroid/car/hardware/xpu/XpuApEssentialMsg$Point3f;)Landroid/car/hardware/xpu/XpuApEssentialMsg$Point3f$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/car/hardware/xpu/XpuApEssentialMsg$Point3f$Builder;->mergeFrom(Lcom/android/carsdk/protobuf/GeneratedMessageLite;)Lcom/android/carsdk/protobuf/GeneratedMessageLite$Builder;

    move-result-object p1

    check-cast p1, Landroid/car/hardware/xpu/XpuApEssentialMsg$Point3f$Builder;

    invoke-virtual {p1}, Landroid/car/hardware/xpu/XpuApEssentialMsg$Point3f$Builder;->buildPartial()Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Landroid/car/hardware/xpu/XpuApEssentialMsg$Point3f;

    iput-object p1, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApPathPoint;->basePoint_:Landroid/car/hardware/xpu/XpuApEssentialMsg$Point3f;

    goto :goto_0

    .line 5314
    :cond_0
    iput-object p1, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApPathPoint;->basePoint_:Landroid/car/hardware/xpu/XpuApEssentialMsg$Point3f;

    :goto_0
    return-void
.end method

.method public static newBuilder()Landroid/car/hardware/xpu/XpuApEssentialMsg$ApPathPoint$Builder;
    .locals 1

    .line 5654
    sget-object v0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApPathPoint;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuApEssentialMsg$ApPathPoint;

    invoke-virtual {v0}, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApPathPoint;->toBuilder()Lcom/android/carsdk/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApPathPoint$Builder;

    return-object v0
.end method

.method public static newBuilder(Landroid/car/hardware/xpu/XpuApEssentialMsg$ApPathPoint;)Landroid/car/hardware/xpu/XpuApEssentialMsg$ApPathPoint$Builder;
    .locals 1

    .line 5657
    sget-object v0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApPathPoint;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuApEssentialMsg$ApPathPoint;

    invoke-virtual {v0}, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApPathPoint;->toBuilder()Lcom/android/carsdk/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApPathPoint$Builder;

    invoke-virtual {v0, p0}, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApPathPoint$Builder;->mergeFrom(Lcom/android/carsdk/protobuf/GeneratedMessageLite;)Lcom/android/carsdk/protobuf/GeneratedMessageLite$Builder;

    move-result-object p0

    check-cast p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApPathPoint$Builder;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Landroid/car/hardware/xpu/XpuApEssentialMsg$ApPathPoint;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 5631
    sget-object v0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApPathPoint;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuApEssentialMsg$ApPathPoint;

    invoke-static {v0, p0}, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApPathPoint;->parseDelimitedFrom(Lcom/android/carsdk/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApPathPoint;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/android/carsdk/protobuf/ExtensionRegistryLite;)Landroid/car/hardware/xpu/XpuApEssentialMsg$ApPathPoint;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 5637
    sget-object v0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApPathPoint;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuApEssentialMsg$ApPathPoint;

    invoke-static {v0, p0, p1}, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApPathPoint;->parseDelimitedFrom(Lcom/android/carsdk/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/android/carsdk/protobuf/ExtensionRegistryLite;)Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApPathPoint;

    return-object p0
.end method

.method public static parseFrom(Lcom/android/carsdk/protobuf/ByteString;)Landroid/car/hardware/xpu/XpuApEssentialMsg$ApPathPoint;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/carsdk/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 5595
    sget-object v0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApPathPoint;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuApEssentialMsg$ApPathPoint;

    invoke-static {v0, p0}, Lcom/android/carsdk/protobuf/GeneratedMessageLite;->parseFrom(Lcom/android/carsdk/protobuf/GeneratedMessageLite;Lcom/android/carsdk/protobuf/ByteString;)Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApPathPoint;

    return-object p0
.end method

.method public static parseFrom(Lcom/android/carsdk/protobuf/ByteString;Lcom/android/carsdk/protobuf/ExtensionRegistryLite;)Landroid/car/hardware/xpu/XpuApEssentialMsg$ApPathPoint;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/carsdk/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 5602
    sget-object v0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApPathPoint;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuApEssentialMsg$ApPathPoint;

    invoke-static {v0, p0, p1}, Lcom/android/carsdk/protobuf/GeneratedMessageLite;->parseFrom(Lcom/android/carsdk/protobuf/GeneratedMessageLite;Lcom/android/carsdk/protobuf/ByteString;Lcom/android/carsdk/protobuf/ExtensionRegistryLite;)Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApPathPoint;

    return-object p0
.end method

.method public static parseFrom(Lcom/android/carsdk/protobuf/CodedInputStream;)Landroid/car/hardware/xpu/XpuApEssentialMsg$ApPathPoint;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 5642
    sget-object v0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApPathPoint;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuApEssentialMsg$ApPathPoint;

    invoke-static {v0, p0}, Lcom/android/carsdk/protobuf/GeneratedMessageLite;->parseFrom(Lcom/android/carsdk/protobuf/GeneratedMessageLite;Lcom/android/carsdk/protobuf/CodedInputStream;)Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApPathPoint;

    return-object p0
.end method

.method public static parseFrom(Lcom/android/carsdk/protobuf/CodedInputStream;Lcom/android/carsdk/protobuf/ExtensionRegistryLite;)Landroid/car/hardware/xpu/XpuApEssentialMsg$ApPathPoint;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 5649
    sget-object v0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApPathPoint;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuApEssentialMsg$ApPathPoint;

    invoke-static {v0, p0, p1}, Lcom/android/carsdk/protobuf/GeneratedMessageLite;->parseFrom(Lcom/android/carsdk/protobuf/GeneratedMessageLite;Lcom/android/carsdk/protobuf/CodedInputStream;Lcom/android/carsdk/protobuf/ExtensionRegistryLite;)Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApPathPoint;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Landroid/car/hardware/xpu/XpuApEssentialMsg$ApPathPoint;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 5619
    sget-object v0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApPathPoint;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuApEssentialMsg$ApPathPoint;

    invoke-static {v0, p0}, Lcom/android/carsdk/protobuf/GeneratedMessageLite;->parseFrom(Lcom/android/carsdk/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApPathPoint;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/android/carsdk/protobuf/ExtensionRegistryLite;)Landroid/car/hardware/xpu/XpuApEssentialMsg$ApPathPoint;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 5626
    sget-object v0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApPathPoint;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuApEssentialMsg$ApPathPoint;

    invoke-static {v0, p0, p1}, Lcom/android/carsdk/protobuf/GeneratedMessageLite;->parseFrom(Lcom/android/carsdk/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/android/carsdk/protobuf/ExtensionRegistryLite;)Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApPathPoint;

    return-object p0
.end method

.method public static parseFrom([B)Landroid/car/hardware/xpu/XpuApEssentialMsg$ApPathPoint;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/carsdk/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 5607
    sget-object v0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApPathPoint;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuApEssentialMsg$ApPathPoint;

    invoke-static {v0, p0}, Lcom/android/carsdk/protobuf/GeneratedMessageLite;->parseFrom(Lcom/android/carsdk/protobuf/GeneratedMessageLite;[B)Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApPathPoint;

    return-object p0
.end method

.method public static parseFrom([BLcom/android/carsdk/protobuf/ExtensionRegistryLite;)Landroid/car/hardware/xpu/XpuApEssentialMsg$ApPathPoint;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/carsdk/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 5614
    sget-object v0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApPathPoint;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuApEssentialMsg$ApPathPoint;

    invoke-static {v0, p0, p1}, Lcom/android/carsdk/protobuf/GeneratedMessageLite;->parseFrom(Lcom/android/carsdk/protobuf/GeneratedMessageLite;[BLcom/android/carsdk/protobuf/ExtensionRegistryLite;)Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApPathPoint;

    return-object p0
.end method

.method public static parser()Lcom/android/carsdk/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/android/carsdk/protobuf/Parser<",
            "Landroid/car/hardware/xpu/XpuApEssentialMsg$ApPathPoint;",
            ">;"
        }
    .end annotation

    .line 6090
    sget-object v0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApPathPoint;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuApEssentialMsg$ApPathPoint;

    invoke-virtual {v0}, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApPathPoint;->getParserForType()Lcom/android/carsdk/protobuf/Parser;

    move-result-object v0

    return-object v0
.end method

.method private setBasePoint(Landroid/car/hardware/xpu/XpuApEssentialMsg$Point3f$Builder;)V
    .locals 0

    .line 5302
    invoke-virtual {p1}, Landroid/car/hardware/xpu/XpuApEssentialMsg$Point3f$Builder;->build()Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Landroid/car/hardware/xpu/XpuApEssentialMsg$Point3f;

    iput-object p1, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApPathPoint;->basePoint_:Landroid/car/hardware/xpu/XpuApEssentialMsg$Point3f;

    return-void
.end method

.method private setBasePoint(Landroid/car/hardware/xpu/XpuApEssentialMsg$Point3f;)V
    .locals 0

    .line 5292
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 5294
    iput-object p1, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApPathPoint;->basePoint_:Landroid/car/hardware/xpu/XpuApEssentialMsg$Point3f;

    return-void
.end method

.method private setConfidence(F)V
    .locals 0

    .line 5263
    iput p1, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApPathPoint;->confidence_:F

    return-void
.end method

.method private setDdkappa(F)V
    .locals 0

    .line 5476
    iput p1, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApPathPoint;->ddkappa_:F

    return-void
.end method

.method private setDkappa(F)V
    .locals 0

    .line 5453
    iput p1, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApPathPoint;->dkappa_:F

    return-void
.end method

.method private setKappa(F)V
    .locals 0

    .line 5361
    iput p1, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApPathPoint;->kappa_:F

    return-void
.end method

.method private setLaneWidth(F)V
    .locals 0

    .line 5499
    iput p1, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApPathPoint;->laneWidth_:F

    return-void
.end method

.method private setLeftWidth(F)V
    .locals 0

    .line 5407
    iput p1, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApPathPoint;->leftWidth_:F

    return-void
.end method

.method private setRightWidth(F)V
    .locals 0

    .line 5430
    iput p1, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApPathPoint;->rightWidth_:F

    return-void
.end method

.method private setS(F)V
    .locals 0

    .line 5384
    iput p1, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApPathPoint;->s_:F

    return-void
.end method

.method private setTheta(F)V
    .locals 0

    .line 5338
    iput p1, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApPathPoint;->theta_:F

    return-void
.end method


# virtual methods
.method protected final dynamicMethod(Lcom/android/carsdk/protobuf/GeneratedMessageLite$MethodToInvoke;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    .line 5931
    sget-object v0, Landroid/car/hardware/xpu/XpuApEssentialMsg$1;->$SwitchMap$com$google$protobuf$GeneratedMessageLite$MethodToInvoke:[I

    invoke-virtual {p1}, Lcom/android/carsdk/protobuf/GeneratedMessageLite$MethodToInvoke;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x1

    packed-switch p1, :pswitch_data_0

    .line 6072
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1

    .line 6063
    :pswitch_0
    sget-object p1, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApPathPoint;->PARSER:Lcom/android/carsdk/protobuf/Parser;

    if-nez p1, :cond_1

    const-class p1, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApPathPoint;

    monitor-enter p1

    .line 6064
    :try_start_0
    sget-object p2, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApPathPoint;->PARSER:Lcom/android/carsdk/protobuf/Parser;

    if-nez p2, :cond_0

    .line 6065
    new-instance p2, Lcom/android/carsdk/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;

    sget-object p3, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApPathPoint;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuApEssentialMsg$ApPathPoint;

    invoke-direct {p2, p3}, Lcom/android/carsdk/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;-><init>(Lcom/android/carsdk/protobuf/GeneratedMessageLite;)V

    sput-object p2, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApPathPoint;->PARSER:Lcom/android/carsdk/protobuf/Parser;

    .line 6067
    :cond_0
    monitor-exit p1

    goto :goto_0

    :catchall_0
    move-exception p2

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p2

    .line 6069
    :cond_1
    :goto_0
    sget-object p1, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApPathPoint;->PARSER:Lcom/android/carsdk/protobuf/Parser;

    return-object p1

    .line 5972
    :pswitch_1
    check-cast p2, Lcom/android/carsdk/protobuf/CodedInputStream;

    .line 5974
    check-cast p3, Lcom/android/carsdk/protobuf/ExtensionRegistryLite;

    :cond_2
    :goto_1
    if-nez v1, :cond_4

    .line 5979
    :try_start_1
    invoke-virtual {p2}, Lcom/android/carsdk/protobuf/CodedInputStream;->readTag()I

    move-result p1

    sparse-switch p1, :sswitch_data_0

    .line 5985
    invoke-virtual {p2, p1}, Lcom/android/carsdk/protobuf/CodedInputStream;->skipField(I)Z

    move-result p1

    goto/16 :goto_4

    .line 6045
    :sswitch_0
    invoke-virtual {p2}, Lcom/android/carsdk/protobuf/CodedInputStream;->readFloat()F

    move-result p1

    iput p1, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApPathPoint;->laneWidth_:F

    goto :goto_1

    .line 6040
    :sswitch_1
    invoke-virtual {p2}, Lcom/android/carsdk/protobuf/CodedInputStream;->readFloat()F

    move-result p1

    iput p1, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApPathPoint;->ddkappa_:F

    goto :goto_1

    .line 6035
    :sswitch_2
    invoke-virtual {p2}, Lcom/android/carsdk/protobuf/CodedInputStream;->readFloat()F

    move-result p1

    iput p1, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApPathPoint;->dkappa_:F

    goto :goto_1

    .line 6030
    :sswitch_3
    invoke-virtual {p2}, Lcom/android/carsdk/protobuf/CodedInputStream;->readFloat()F

    move-result p1

    iput p1, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApPathPoint;->rightWidth_:F

    goto :goto_1

    .line 6025
    :sswitch_4
    invoke-virtual {p2}, Lcom/android/carsdk/protobuf/CodedInputStream;->readFloat()F

    move-result p1

    iput p1, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApPathPoint;->leftWidth_:F

    goto :goto_1

    .line 6020
    :sswitch_5
    invoke-virtual {p2}, Lcom/android/carsdk/protobuf/CodedInputStream;->readFloat()F

    move-result p1

    iput p1, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApPathPoint;->s_:F

    goto :goto_1

    .line 6015
    :sswitch_6
    invoke-virtual {p2}, Lcom/android/carsdk/protobuf/CodedInputStream;->readFloat()F

    move-result p1

    iput p1, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApPathPoint;->kappa_:F

    goto :goto_1

    .line 6010
    :sswitch_7
    invoke-virtual {p2}, Lcom/android/carsdk/protobuf/CodedInputStream;->readFloat()F

    move-result p1

    iput p1, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApPathPoint;->theta_:F

    goto :goto_1

    .line 5997
    :sswitch_8
    iget-object p1, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApPathPoint;->basePoint_:Landroid/car/hardware/xpu/XpuApEssentialMsg$Point3f;

    if-eqz p1, :cond_3

    .line 5998
    invoke-virtual {p1}, Landroid/car/hardware/xpu/XpuApEssentialMsg$Point3f;->toBuilder()Lcom/android/carsdk/protobuf/GeneratedMessageLite$Builder;

    move-result-object p1

    check-cast p1, Landroid/car/hardware/xpu/XpuApEssentialMsg$Point3f$Builder;

    goto :goto_2

    :cond_3
    move-object p1, v0

    .line 6000
    :goto_2
    invoke-static {}, Landroid/car/hardware/xpu/XpuApEssentialMsg$Point3f;->parser()Lcom/android/carsdk/protobuf/Parser;

    move-result-object v3

    invoke-virtual {p2, v3, p3}, Lcom/android/carsdk/protobuf/CodedInputStream;->readMessage(Lcom/android/carsdk/protobuf/Parser;Lcom/android/carsdk/protobuf/ExtensionRegistryLite;)Lcom/android/carsdk/protobuf/MessageLite;

    move-result-object v3

    check-cast v3, Landroid/car/hardware/xpu/XpuApEssentialMsg$Point3f;

    iput-object v3, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApPathPoint;->basePoint_:Landroid/car/hardware/xpu/XpuApEssentialMsg$Point3f;

    if-eqz p1, :cond_2

    .line 6002
    invoke-virtual {p1, v3}, Landroid/car/hardware/xpu/XpuApEssentialMsg$Point3f$Builder;->mergeFrom(Lcom/android/carsdk/protobuf/GeneratedMessageLite;)Lcom/android/carsdk/protobuf/GeneratedMessageLite$Builder;

    .line 6003
    invoke-virtual {p1}, Landroid/car/hardware/xpu/XpuApEssentialMsg$Point3f$Builder;->buildPartial()Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Landroid/car/hardware/xpu/XpuApEssentialMsg$Point3f;

    iput-object p1, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApPathPoint;->basePoint_:Landroid/car/hardware/xpu/XpuApEssentialMsg$Point3f;

    goto :goto_1

    .line 5992
    :sswitch_9
    invoke-virtual {p2}, Lcom/android/carsdk/protobuf/CodedInputStream;->readFloat()F

    move-result p1

    iput p1, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApPathPoint;->confidence_:F
    :try_end_1
    .catch Lcom/android/carsdk/protobuf/InvalidProtocolBufferException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    :goto_3
    :sswitch_a
    move v1, v2

    goto :goto_1

    :goto_4
    if-nez p1, :cond_2

    goto :goto_3

    :catchall_1
    move-exception p1

    goto :goto_5

    :catch_0
    move-exception p1

    .line 6053
    :try_start_2
    new-instance p2, Ljava/lang/RuntimeException;

    new-instance p3, Lcom/android/carsdk/protobuf/InvalidProtocolBufferException;

    .line 6055
    invoke-virtual {p1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p3, p1}, Lcom/android/carsdk/protobuf/InvalidProtocolBufferException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, p0}, Lcom/android/carsdk/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/android/carsdk/protobuf/MessageLite;)Lcom/android/carsdk/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p2

    :catch_1
    move-exception p1

    .line 6051
    new-instance p2, Ljava/lang/RuntimeException;

    invoke-virtual {p1, p0}, Lcom/android/carsdk/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/android/carsdk/protobuf/MessageLite;)Lcom/android/carsdk/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 6056
    :goto_5
    throw p1

    .line 6060
    :cond_4
    :pswitch_2
    sget-object p1, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApPathPoint;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuApEssentialMsg$ApPathPoint;

    return-object p1

    .line 5945
    :pswitch_3
    check-cast p2, Lcom/android/carsdk/protobuf/GeneratedMessageLite$Visitor;

    .line 5946
    check-cast p3, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApPathPoint;

    .line 5947
    iget p1, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApPathPoint;->confidence_:F

    const/4 v0, 0x0

    cmpl-float v3, p1, v0

    if-eqz v3, :cond_5

    move v3, v2

    goto :goto_6

    :cond_5
    move v3, v1

    :goto_6
    iget v4, p3, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApPathPoint;->confidence_:F

    cmpl-float v5, v4, v0

    if-eqz v5, :cond_6

    move v5, v2

    goto :goto_7

    :cond_6
    move v5, v1

    :goto_7
    invoke-interface {p2, v3, p1, v5, v4}, Lcom/android/carsdk/protobuf/GeneratedMessageLite$Visitor;->visitFloat(ZFZF)F

    move-result p1

    iput p1, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApPathPoint;->confidence_:F

    .line 5949
    iget-object p1, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApPathPoint;->basePoint_:Landroid/car/hardware/xpu/XpuApEssentialMsg$Point3f;

    iget-object v3, p3, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApPathPoint;->basePoint_:Landroid/car/hardware/xpu/XpuApEssentialMsg$Point3f;

    invoke-interface {p2, p1, v3}, Lcom/android/carsdk/protobuf/GeneratedMessageLite$Visitor;->visitMessage(Lcom/android/carsdk/protobuf/MessageLite;Lcom/android/carsdk/protobuf/MessageLite;)Lcom/android/carsdk/protobuf/MessageLite;

    move-result-object p1

    check-cast p1, Landroid/car/hardware/xpu/XpuApEssentialMsg$Point3f;

    iput-object p1, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApPathPoint;->basePoint_:Landroid/car/hardware/xpu/XpuApEssentialMsg$Point3f;

    .line 5950
    iget p1, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApPathPoint;->theta_:F

    cmpl-float v3, p1, v0

    if-eqz v3, :cond_7

    move v3, v2

    goto :goto_8

    :cond_7
    move v3, v1

    :goto_8
    iget v4, p3, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApPathPoint;->theta_:F

    cmpl-float v5, v4, v0

    if-eqz v5, :cond_8

    move v5, v2

    goto :goto_9

    :cond_8
    move v5, v1

    :goto_9
    invoke-interface {p2, v3, p1, v5, v4}, Lcom/android/carsdk/protobuf/GeneratedMessageLite$Visitor;->visitFloat(ZFZF)F

    move-result p1

    iput p1, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApPathPoint;->theta_:F

    .line 5952
    iget p1, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApPathPoint;->kappa_:F

    cmpl-float v3, p1, v0

    if-eqz v3, :cond_9

    move v3, v2

    goto :goto_a

    :cond_9
    move v3, v1

    :goto_a
    iget v4, p3, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApPathPoint;->kappa_:F

    cmpl-float v5, v4, v0

    if-eqz v5, :cond_a

    move v5, v2

    goto :goto_b

    :cond_a
    move v5, v1

    :goto_b
    invoke-interface {p2, v3, p1, v5, v4}, Lcom/android/carsdk/protobuf/GeneratedMessageLite$Visitor;->visitFloat(ZFZF)F

    move-result p1

    iput p1, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApPathPoint;->kappa_:F

    .line 5954
    iget p1, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApPathPoint;->s_:F

    cmpl-float v3, p1, v0

    if-eqz v3, :cond_b

    move v3, v2

    goto :goto_c

    :cond_b
    move v3, v1

    :goto_c
    iget v4, p3, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApPathPoint;->s_:F

    cmpl-float v5, v4, v0

    if-eqz v5, :cond_c

    move v5, v2

    goto :goto_d

    :cond_c
    move v5, v1

    :goto_d
    invoke-interface {p2, v3, p1, v5, v4}, Lcom/android/carsdk/protobuf/GeneratedMessageLite$Visitor;->visitFloat(ZFZF)F

    move-result p1

    iput p1, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApPathPoint;->s_:F

    .line 5956
    iget p1, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApPathPoint;->leftWidth_:F

    cmpl-float v3, p1, v0

    if-eqz v3, :cond_d

    move v3, v2

    goto :goto_e

    :cond_d
    move v3, v1

    :goto_e
    iget v4, p3, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApPathPoint;->leftWidth_:F

    cmpl-float v5, v4, v0

    if-eqz v5, :cond_e

    move v5, v2

    goto :goto_f

    :cond_e
    move v5, v1

    :goto_f
    invoke-interface {p2, v3, p1, v5, v4}, Lcom/android/carsdk/protobuf/GeneratedMessageLite$Visitor;->visitFloat(ZFZF)F

    move-result p1

    iput p1, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApPathPoint;->leftWidth_:F

    .line 5958
    iget p1, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApPathPoint;->rightWidth_:F

    cmpl-float v3, p1, v0

    if-eqz v3, :cond_f

    move v3, v2

    goto :goto_10

    :cond_f
    move v3, v1

    :goto_10
    iget v4, p3, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApPathPoint;->rightWidth_:F

    cmpl-float v5, v4, v0

    if-eqz v5, :cond_10

    move v5, v2

    goto :goto_11

    :cond_10
    move v5, v1

    :goto_11
    invoke-interface {p2, v3, p1, v5, v4}, Lcom/android/carsdk/protobuf/GeneratedMessageLite$Visitor;->visitFloat(ZFZF)F

    move-result p1

    iput p1, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApPathPoint;->rightWidth_:F

    .line 5960
    iget p1, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApPathPoint;->dkappa_:F

    cmpl-float v3, p1, v0

    if-eqz v3, :cond_11

    move v3, v2

    goto :goto_12

    :cond_11
    move v3, v1

    :goto_12
    iget v4, p3, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApPathPoint;->dkappa_:F

    cmpl-float v5, v4, v0

    if-eqz v5, :cond_12

    move v5, v2

    goto :goto_13

    :cond_12
    move v5, v1

    :goto_13
    invoke-interface {p2, v3, p1, v5, v4}, Lcom/android/carsdk/protobuf/GeneratedMessageLite$Visitor;->visitFloat(ZFZF)F

    move-result p1

    iput p1, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApPathPoint;->dkappa_:F

    .line 5962
    iget p1, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApPathPoint;->ddkappa_:F

    cmpl-float v3, p1, v0

    if-eqz v3, :cond_13

    move v3, v2

    goto :goto_14

    :cond_13
    move v3, v1

    :goto_14
    iget v4, p3, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApPathPoint;->ddkappa_:F

    cmpl-float v5, v4, v0

    if-eqz v5, :cond_14

    move v5, v2

    goto :goto_15

    :cond_14
    move v5, v1

    :goto_15
    invoke-interface {p2, v3, p1, v5, v4}, Lcom/android/carsdk/protobuf/GeneratedMessageLite$Visitor;->visitFloat(ZFZF)F

    move-result p1

    iput p1, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApPathPoint;->ddkappa_:F

    .line 5964
    iget p1, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApPathPoint;->laneWidth_:F

    cmpl-float v3, p1, v0

    if-eqz v3, :cond_15

    move v3, v2

    goto :goto_16

    :cond_15
    move v3, v1

    :goto_16
    iget p3, p3, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApPathPoint;->laneWidth_:F

    cmpl-float v0, p3, v0

    if-eqz v0, :cond_16

    move v1, v2

    :cond_16
    invoke-interface {p2, v3, p1, v1, p3}, Lcom/android/carsdk/protobuf/GeneratedMessageLite$Visitor;->visitFloat(ZFZF)F

    move-result p1

    iput p1, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApPathPoint;->laneWidth_:F

    .line 5966
    sget-object p1, Lcom/android/carsdk/protobuf/GeneratedMessageLite$MergeFromVisitor;->INSTANCE:Lcom/android/carsdk/protobuf/GeneratedMessageLite$MergeFromVisitor;

    return-object p0

    .line 5942
    :pswitch_4
    new-instance p1, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApPathPoint$Builder;

    invoke-direct {p1, v0}, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApPathPoint$Builder;-><init>(Landroid/car/hardware/xpu/XpuApEssentialMsg$1;)V

    return-object p1

    :pswitch_5
    return-object v0

    .line 5936
    :pswitch_6
    sget-object p1, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApPathPoint;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuApEssentialMsg$ApPathPoint;

    return-object p1

    .line 5933
    :pswitch_7
    new-instance p1, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApPathPoint;

    invoke-direct {p1}, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApPathPoint;-><init>()V

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

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_a
        0xd -> :sswitch_9
        0x12 -> :sswitch_8
        0x1d -> :sswitch_7
        0x25 -> :sswitch_6
        0x2d -> :sswitch_5
        0x35 -> :sswitch_4
        0x3d -> :sswitch_3
        0x45 -> :sswitch_2
        0x4d -> :sswitch_1
        0x55 -> :sswitch_0
    .end sparse-switch
.end method

.method public getBasePoint()Landroid/car/hardware/xpu/XpuApEssentialMsg$Point3f;
    .locals 1

    .line 5285
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApPathPoint;->basePoint_:Landroid/car/hardware/xpu/XpuApEssentialMsg$Point3f;

    if-nez v0, :cond_0

    invoke-static {}, Landroid/car/hardware/xpu/XpuApEssentialMsg$Point3f;->getDefaultInstance()Landroid/car/hardware/xpu/XpuApEssentialMsg$Point3f;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public getConfidence()F
    .locals 1

    .line 5256
    iget v0, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApPathPoint;->confidence_:F

    return v0
.end method

.method public getDdkappa()F
    .locals 1

    .line 5469
    iget v0, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApPathPoint;->ddkappa_:F

    return v0
.end method

.method public getDkappa()F
    .locals 1

    .line 5446
    iget v0, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApPathPoint;->dkappa_:F

    return v0
.end method

.method public getKappa()F
    .locals 1

    .line 5354
    iget v0, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApPathPoint;->kappa_:F

    return v0
.end method

.method public getLaneWidth()F
    .locals 1

    .line 5492
    iget v0, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApPathPoint;->laneWidth_:F

    return v0
.end method

.method public getLeftWidth()F
    .locals 1

    .line 5400
    iget v0, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApPathPoint;->leftWidth_:F

    return v0
.end method

.method public getRightWidth()F
    .locals 1

    .line 5423
    iget v0, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApPathPoint;->rightWidth_:F

    return v0
.end method

.method public getS()F
    .locals 1

    .line 5377
    iget v0, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApPathPoint;->s_:F

    return v0
.end method

.method public getSerializedSize()I
    .locals 4

    .line 5544
    iget v0, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApPathPoint;->memoizedSerializedSize:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    return v0

    :cond_0
    const/4 v0, 0x0

    .line 5548
    iget v1, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApPathPoint;->confidence_:F

    const/4 v2, 0x0

    cmpl-float v3, v1, v2

    if-eqz v3, :cond_1

    const/4 v3, 0x1

    .line 5550
    invoke-static {v3, v1}, Lcom/android/carsdk/protobuf/CodedOutputStream;->computeFloatSize(IF)I

    move-result v1

    add-int/2addr v0, v1

    .line 5552
    :cond_1
    iget-object v1, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApPathPoint;->basePoint_:Landroid/car/hardware/xpu/XpuApEssentialMsg$Point3f;

    if-eqz v1, :cond_2

    const/4 v1, 0x2

    .line 5554
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApPathPoint;->getBasePoint()Landroid/car/hardware/xpu/XpuApEssentialMsg$Point3f;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/android/carsdk/protobuf/CodedOutputStream;->computeMessageSize(ILcom/android/carsdk/protobuf/MessageLite;)I

    move-result v1

    add-int/2addr v0, v1

    .line 5556
    :cond_2
    iget v1, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApPathPoint;->theta_:F

    cmpl-float v3, v1, v2

    if-eqz v3, :cond_3

    const/4 v3, 0x3

    .line 5558
    invoke-static {v3, v1}, Lcom/android/carsdk/protobuf/CodedOutputStream;->computeFloatSize(IF)I

    move-result v1

    add-int/2addr v0, v1

    .line 5560
    :cond_3
    iget v1, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApPathPoint;->kappa_:F

    cmpl-float v3, v1, v2

    if-eqz v3, :cond_4

    const/4 v3, 0x4

    .line 5562
    invoke-static {v3, v1}, Lcom/android/carsdk/protobuf/CodedOutputStream;->computeFloatSize(IF)I

    move-result v1

    add-int/2addr v0, v1

    .line 5564
    :cond_4
    iget v1, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApPathPoint;->s_:F

    cmpl-float v3, v1, v2

    if-eqz v3, :cond_5

    const/4 v3, 0x5

    .line 5566
    invoke-static {v3, v1}, Lcom/android/carsdk/protobuf/CodedOutputStream;->computeFloatSize(IF)I

    move-result v1

    add-int/2addr v0, v1

    .line 5568
    :cond_5
    iget v1, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApPathPoint;->leftWidth_:F

    cmpl-float v3, v1, v2

    if-eqz v3, :cond_6

    const/4 v3, 0x6

    .line 5570
    invoke-static {v3, v1}, Lcom/android/carsdk/protobuf/CodedOutputStream;->computeFloatSize(IF)I

    move-result v1

    add-int/2addr v0, v1

    .line 5572
    :cond_6
    iget v1, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApPathPoint;->rightWidth_:F

    cmpl-float v3, v1, v2

    if-eqz v3, :cond_7

    const/4 v3, 0x7

    .line 5574
    invoke-static {v3, v1}, Lcom/android/carsdk/protobuf/CodedOutputStream;->computeFloatSize(IF)I

    move-result v1

    add-int/2addr v0, v1

    .line 5576
    :cond_7
    iget v1, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApPathPoint;->dkappa_:F

    cmpl-float v3, v1, v2

    if-eqz v3, :cond_8

    const/16 v3, 0x8

    .line 5578
    invoke-static {v3, v1}, Lcom/android/carsdk/protobuf/CodedOutputStream;->computeFloatSize(IF)I

    move-result v1

    add-int/2addr v0, v1

    .line 5580
    :cond_8
    iget v1, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApPathPoint;->ddkappa_:F

    cmpl-float v3, v1, v2

    if-eqz v3, :cond_9

    const/16 v3, 0x9

    .line 5582
    invoke-static {v3, v1}, Lcom/android/carsdk/protobuf/CodedOutputStream;->computeFloatSize(IF)I

    move-result v1

    add-int/2addr v0, v1

    .line 5584
    :cond_9
    iget v1, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApPathPoint;->laneWidth_:F

    cmpl-float v2, v1, v2

    if-eqz v2, :cond_a

    const/16 v2, 0xa

    .line 5586
    invoke-static {v2, v1}, Lcom/android/carsdk/protobuf/CodedOutputStream;->computeFloatSize(IF)I

    move-result v1

    add-int/2addr v0, v1

    .line 5588
    :cond_a
    iput v0, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApPathPoint;->memoizedSerializedSize:I

    return v0
.end method

.method public getTheta()F
    .locals 1

    .line 5331
    iget v0, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApPathPoint;->theta_:F

    return v0
.end method

.method public hasBasePoint()Z
    .locals 1

    .line 5279
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApPathPoint;->basePoint_:Landroid/car/hardware/xpu/XpuApEssentialMsg$Point3f;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public writeTo(Lcom/android/carsdk/protobuf/CodedOutputStream;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 5511
    iget v0, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApPathPoint;->confidence_:F

    const/4 v1, 0x0

    cmpl-float v2, v0, v1

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    .line 5512
    invoke-virtual {p1, v2, v0}, Lcom/android/carsdk/protobuf/CodedOutputStream;->writeFloat(IF)V

    .line 5514
    :cond_0
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApPathPoint;->basePoint_:Landroid/car/hardware/xpu/XpuApEssentialMsg$Point3f;

    if-eqz v0, :cond_1

    const/4 v0, 0x2

    .line 5515
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApPathPoint;->getBasePoint()Landroid/car/hardware/xpu/XpuApEssentialMsg$Point3f;

    move-result-object v2

    invoke-virtual {p1, v0, v2}, Lcom/android/carsdk/protobuf/CodedOutputStream;->writeMessage(ILcom/android/carsdk/protobuf/MessageLite;)V

    .line 5517
    :cond_1
    iget v0, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApPathPoint;->theta_:F

    cmpl-float v2, v0, v1

    if-eqz v2, :cond_2

    const/4 v2, 0x3

    .line 5518
    invoke-virtual {p1, v2, v0}, Lcom/android/carsdk/protobuf/CodedOutputStream;->writeFloat(IF)V

    .line 5520
    :cond_2
    iget v0, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApPathPoint;->kappa_:F

    cmpl-float v2, v0, v1

    if-eqz v2, :cond_3

    const/4 v2, 0x4

    .line 5521
    invoke-virtual {p1, v2, v0}, Lcom/android/carsdk/protobuf/CodedOutputStream;->writeFloat(IF)V

    .line 5523
    :cond_3
    iget v0, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApPathPoint;->s_:F

    cmpl-float v2, v0, v1

    if-eqz v2, :cond_4

    const/4 v2, 0x5

    .line 5524
    invoke-virtual {p1, v2, v0}, Lcom/android/carsdk/protobuf/CodedOutputStream;->writeFloat(IF)V

    .line 5526
    :cond_4
    iget v0, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApPathPoint;->leftWidth_:F

    cmpl-float v2, v0, v1

    if-eqz v2, :cond_5

    const/4 v2, 0x6

    .line 5527
    invoke-virtual {p1, v2, v0}, Lcom/android/carsdk/protobuf/CodedOutputStream;->writeFloat(IF)V

    .line 5529
    :cond_5
    iget v0, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApPathPoint;->rightWidth_:F

    cmpl-float v2, v0, v1

    if-eqz v2, :cond_6

    const/4 v2, 0x7

    .line 5530
    invoke-virtual {p1, v2, v0}, Lcom/android/carsdk/protobuf/CodedOutputStream;->writeFloat(IF)V

    .line 5532
    :cond_6
    iget v0, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApPathPoint;->dkappa_:F

    cmpl-float v2, v0, v1

    if-eqz v2, :cond_7

    const/16 v2, 0x8

    .line 5533
    invoke-virtual {p1, v2, v0}, Lcom/android/carsdk/protobuf/CodedOutputStream;->writeFloat(IF)V

    .line 5535
    :cond_7
    iget v0, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApPathPoint;->ddkappa_:F

    cmpl-float v2, v0, v1

    if-eqz v2, :cond_8

    const/16 v2, 0x9

    .line 5536
    invoke-virtual {p1, v2, v0}, Lcom/android/carsdk/protobuf/CodedOutputStream;->writeFloat(IF)V

    .line 5538
    :cond_8
    iget v0, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApPathPoint;->laneWidth_:F

    cmpl-float v1, v0, v1

    if-eqz v1, :cond_9

    const/16 v1, 0xa

    .line 5539
    invoke-virtual {p1, v1, v0}, Lcom/android/carsdk/protobuf/CodedOutputStream;->writeFloat(IF)V

    :cond_9
    return-void
.end method
