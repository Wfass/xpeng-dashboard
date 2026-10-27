.class public final Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDynaObject;
.super Lcom/android/carsdk/protobuf/GeneratedMessageLite;
.source "XpuApEssentialMsg.java"

# interfaces
.implements Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDynaObjectOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/car/hardware/xpu/XpuApEssentialMsg;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ApDynaObject"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDynaObject$Builder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/carsdk/protobuf/GeneratedMessageLite<",
        "Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDynaObject;",
        "Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDynaObject$Builder;",
        ">;",
        "Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDynaObjectOrBuilder;"
    }
.end annotation


# static fields
.field public static final COLOR_FIELD_NUMBER:I = 0x6

.field private static final DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDynaObject;

.field public static final ID_FIELD_NUMBER:I = 0x1

.field private static volatile PARSER:Lcom/android/carsdk/protobuf/Parser; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/carsdk/protobuf/Parser<",
            "Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDynaObject;",
            ">;"
        }
    .end annotation
.end field

.field public static final POSE_FIELD_NUMBER:I = 0x4

.field public static final PT_FIELD_NUMBER:I = 0x5

.field public static final SIZE_FIELD_NUMBER:I = 0x2

.field public static final TYPE_FIELD_NUMBER:I = 0x3


# instance fields
.field private color_:I

.field private id_:I

.field private pose_:Landroid/car/hardware/xpu/XpuApEssentialMsg$Pose3f;

.field private pt_:Landroid/car/hardware/xpu/XpuApEssentialMsg$Point3f;

.field private size_:Landroid/car/hardware/xpu/XpuApEssentialMsg$Size3f;

.field private type_:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 7438
    new-instance v0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDynaObject;

    invoke-direct {v0}, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDynaObject;-><init>()V

    sput-object v0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDynaObject;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDynaObject;

    .line 7439
    invoke-virtual {v0}, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDynaObject;->makeImmutable()V

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 6674
    invoke-direct {p0}, Lcom/android/carsdk/protobuf/GeneratedMessageLite;-><init>()V

    const/4 v0, 0x0

    .line 6675
    iput v0, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDynaObject;->id_:I

    .line 6676
    iput v0, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDynaObject;->type_:I

    .line 6677
    iput v0, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDynaObject;->color_:I

    return-void
.end method

.method static synthetic access$14900()Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDynaObject;
    .locals 1

    .line 6669
    sget-object v0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDynaObject;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDynaObject;

    return-object v0
.end method

.method static synthetic access$15000(Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDynaObject;I)V
    .locals 0

    .line 6669
    invoke-direct {p0, p1}, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDynaObject;->setId(I)V

    return-void
.end method

.method static synthetic access$15100(Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDynaObject;)V
    .locals 0

    .line 6669
    invoke-direct {p0}, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDynaObject;->clearId()V

    return-void
.end method

.method static synthetic access$15200(Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDynaObject;Landroid/car/hardware/xpu/XpuApEssentialMsg$Size3f;)V
    .locals 0

    .line 6669
    invoke-direct {p0, p1}, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDynaObject;->setSize(Landroid/car/hardware/xpu/XpuApEssentialMsg$Size3f;)V

    return-void
.end method

.method static synthetic access$15300(Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDynaObject;Landroid/car/hardware/xpu/XpuApEssentialMsg$Size3f$Builder;)V
    .locals 0

    .line 6669
    invoke-direct {p0, p1}, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDynaObject;->setSize(Landroid/car/hardware/xpu/XpuApEssentialMsg$Size3f$Builder;)V

    return-void
.end method

.method static synthetic access$15400(Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDynaObject;Landroid/car/hardware/xpu/XpuApEssentialMsg$Size3f;)V
    .locals 0

    .line 6669
    invoke-direct {p0, p1}, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDynaObject;->mergeSize(Landroid/car/hardware/xpu/XpuApEssentialMsg$Size3f;)V

    return-void
.end method

.method static synthetic access$15500(Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDynaObject;)V
    .locals 0

    .line 6669
    invoke-direct {p0}, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDynaObject;->clearSize()V

    return-void
.end method

.method static synthetic access$15600(Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDynaObject;I)V
    .locals 0

    .line 6669
    invoke-direct {p0, p1}, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDynaObject;->setTypeValue(I)V

    return-void
.end method

.method static synthetic access$15700(Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDynaObject;Landroid/car/hardware/xpu/XpuApEssentialMsg$ApObjectType;)V
    .locals 0

    .line 6669
    invoke-direct {p0, p1}, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDynaObject;->setType(Landroid/car/hardware/xpu/XpuApEssentialMsg$ApObjectType;)V

    return-void
.end method

.method static synthetic access$15800(Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDynaObject;)V
    .locals 0

    .line 6669
    invoke-direct {p0}, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDynaObject;->clearType()V

    return-void
.end method

.method static synthetic access$15900(Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDynaObject;Landroid/car/hardware/xpu/XpuApEssentialMsg$Pose3f;)V
    .locals 0

    .line 6669
    invoke-direct {p0, p1}, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDynaObject;->setPose(Landroid/car/hardware/xpu/XpuApEssentialMsg$Pose3f;)V

    return-void
.end method

.method static synthetic access$16000(Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDynaObject;Landroid/car/hardware/xpu/XpuApEssentialMsg$Pose3f$Builder;)V
    .locals 0

    .line 6669
    invoke-direct {p0, p1}, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDynaObject;->setPose(Landroid/car/hardware/xpu/XpuApEssentialMsg$Pose3f$Builder;)V

    return-void
.end method

.method static synthetic access$16100(Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDynaObject;Landroid/car/hardware/xpu/XpuApEssentialMsg$Pose3f;)V
    .locals 0

    .line 6669
    invoke-direct {p0, p1}, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDynaObject;->mergePose(Landroid/car/hardware/xpu/XpuApEssentialMsg$Pose3f;)V

    return-void
.end method

.method static synthetic access$16200(Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDynaObject;)V
    .locals 0

    .line 6669
    invoke-direct {p0}, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDynaObject;->clearPose()V

    return-void
.end method

.method static synthetic access$16300(Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDynaObject;Landroid/car/hardware/xpu/XpuApEssentialMsg$Point3f;)V
    .locals 0

    .line 6669
    invoke-direct {p0, p1}, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDynaObject;->setPt(Landroid/car/hardware/xpu/XpuApEssentialMsg$Point3f;)V

    return-void
.end method

.method static synthetic access$16400(Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDynaObject;Landroid/car/hardware/xpu/XpuApEssentialMsg$Point3f$Builder;)V
    .locals 0

    .line 6669
    invoke-direct {p0, p1}, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDynaObject;->setPt(Landroid/car/hardware/xpu/XpuApEssentialMsg$Point3f$Builder;)V

    return-void
.end method

.method static synthetic access$16500(Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDynaObject;Landroid/car/hardware/xpu/XpuApEssentialMsg$Point3f;)V
    .locals 0

    .line 6669
    invoke-direct {p0, p1}, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDynaObject;->mergePt(Landroid/car/hardware/xpu/XpuApEssentialMsg$Point3f;)V

    return-void
.end method

.method static synthetic access$16600(Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDynaObject;)V
    .locals 0

    .line 6669
    invoke-direct {p0}, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDynaObject;->clearPt()V

    return-void
.end method

.method static synthetic access$16700(Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDynaObject;I)V
    .locals 0

    .line 6669
    invoke-direct {p0, p1}, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDynaObject;->setColor(I)V

    return-void
.end method

.method static synthetic access$16800(Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDynaObject;)V
    .locals 0

    .line 6669
    invoke-direct {p0}, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDynaObject;->clearColor()V

    return-void
.end method

.method private clearColor()V
    .locals 1

    const/4 v0, 0x0

    .line 6929
    iput v0, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDynaObject;->color_:I

    return-void
.end method

.method private clearId()V
    .locals 1

    const/4 v0, 0x0

    .line 6699
    iput v0, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDynaObject;->id_:I

    return-void
.end method

.method private clearPose()V
    .locals 1

    const/4 v0, 0x0

    .line 6841
    iput-object v0, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDynaObject;->pose_:Landroid/car/hardware/xpu/XpuApEssentialMsg$Pose3f;

    return-void
.end method

.method private clearPt()V
    .locals 1

    const/4 v0, 0x0

    .line 6893
    iput-object v0, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDynaObject;->pt_:Landroid/car/hardware/xpu/XpuApEssentialMsg$Point3f;

    return-void
.end method

.method private clearSize()V
    .locals 1

    const/4 v0, 0x0

    .line 6750
    iput-object v0, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDynaObject;->size_:Landroid/car/hardware/xpu/XpuApEssentialMsg$Size3f;

    return-void
.end method

.method private clearType()V
    .locals 1

    const/4 v0, 0x0

    .line 6790
    iput v0, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDynaObject;->type_:I

    return-void
.end method

.method public static getDefaultInstance()Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDynaObject;
    .locals 1

    .line 7443
    sget-object v0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDynaObject;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDynaObject;

    return-object v0
.end method

.method private mergePose(Landroid/car/hardware/xpu/XpuApEssentialMsg$Pose3f;)V
    .locals 2

    .line 6829
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDynaObject;->pose_:Landroid/car/hardware/xpu/XpuApEssentialMsg$Pose3f;

    if-eqz v0, :cond_0

    .line 6830
    invoke-static {}, Landroid/car/hardware/xpu/XpuApEssentialMsg$Pose3f;->getDefaultInstance()Landroid/car/hardware/xpu/XpuApEssentialMsg$Pose3f;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 6831
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDynaObject;->pose_:Landroid/car/hardware/xpu/XpuApEssentialMsg$Pose3f;

    .line 6832
    invoke-static {v0}, Landroid/car/hardware/xpu/XpuApEssentialMsg$Pose3f;->newBuilder(Landroid/car/hardware/xpu/XpuApEssentialMsg$Pose3f;)Landroid/car/hardware/xpu/XpuApEssentialMsg$Pose3f$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/car/hardware/xpu/XpuApEssentialMsg$Pose3f$Builder;->mergeFrom(Lcom/android/carsdk/protobuf/GeneratedMessageLite;)Lcom/android/carsdk/protobuf/GeneratedMessageLite$Builder;

    move-result-object p1

    check-cast p1, Landroid/car/hardware/xpu/XpuApEssentialMsg$Pose3f$Builder;

    invoke-virtual {p1}, Landroid/car/hardware/xpu/XpuApEssentialMsg$Pose3f$Builder;->buildPartial()Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Landroid/car/hardware/xpu/XpuApEssentialMsg$Pose3f;

    iput-object p1, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDynaObject;->pose_:Landroid/car/hardware/xpu/XpuApEssentialMsg$Pose3f;

    goto :goto_0

    .line 6834
    :cond_0
    iput-object p1, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDynaObject;->pose_:Landroid/car/hardware/xpu/XpuApEssentialMsg$Pose3f;

    :goto_0
    return-void
.end method

.method private mergePt(Landroid/car/hardware/xpu/XpuApEssentialMsg$Point3f;)V
    .locals 2

    .line 6881
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDynaObject;->pt_:Landroid/car/hardware/xpu/XpuApEssentialMsg$Point3f;

    if-eqz v0, :cond_0

    .line 6882
    invoke-static {}, Landroid/car/hardware/xpu/XpuApEssentialMsg$Point3f;->getDefaultInstance()Landroid/car/hardware/xpu/XpuApEssentialMsg$Point3f;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 6883
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDynaObject;->pt_:Landroid/car/hardware/xpu/XpuApEssentialMsg$Point3f;

    .line 6884
    invoke-static {v0}, Landroid/car/hardware/xpu/XpuApEssentialMsg$Point3f;->newBuilder(Landroid/car/hardware/xpu/XpuApEssentialMsg$Point3f;)Landroid/car/hardware/xpu/XpuApEssentialMsg$Point3f$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/car/hardware/xpu/XpuApEssentialMsg$Point3f$Builder;->mergeFrom(Lcom/android/carsdk/protobuf/GeneratedMessageLite;)Lcom/android/carsdk/protobuf/GeneratedMessageLite$Builder;

    move-result-object p1

    check-cast p1, Landroid/car/hardware/xpu/XpuApEssentialMsg$Point3f$Builder;

    invoke-virtual {p1}, Landroid/car/hardware/xpu/XpuApEssentialMsg$Point3f$Builder;->buildPartial()Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Landroid/car/hardware/xpu/XpuApEssentialMsg$Point3f;

    iput-object p1, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDynaObject;->pt_:Landroid/car/hardware/xpu/XpuApEssentialMsg$Point3f;

    goto :goto_0

    .line 6886
    :cond_0
    iput-object p1, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDynaObject;->pt_:Landroid/car/hardware/xpu/XpuApEssentialMsg$Point3f;

    :goto_0
    return-void
.end method

.method private mergeSize(Landroid/car/hardware/xpu/XpuApEssentialMsg$Size3f;)V
    .locals 2

    .line 6738
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDynaObject;->size_:Landroid/car/hardware/xpu/XpuApEssentialMsg$Size3f;

    if-eqz v0, :cond_0

    .line 6739
    invoke-static {}, Landroid/car/hardware/xpu/XpuApEssentialMsg$Size3f;->getDefaultInstance()Landroid/car/hardware/xpu/XpuApEssentialMsg$Size3f;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 6740
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDynaObject;->size_:Landroid/car/hardware/xpu/XpuApEssentialMsg$Size3f;

    .line 6741
    invoke-static {v0}, Landroid/car/hardware/xpu/XpuApEssentialMsg$Size3f;->newBuilder(Landroid/car/hardware/xpu/XpuApEssentialMsg$Size3f;)Landroid/car/hardware/xpu/XpuApEssentialMsg$Size3f$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/car/hardware/xpu/XpuApEssentialMsg$Size3f$Builder;->mergeFrom(Lcom/android/carsdk/protobuf/GeneratedMessageLite;)Lcom/android/carsdk/protobuf/GeneratedMessageLite$Builder;

    move-result-object p1

    check-cast p1, Landroid/car/hardware/xpu/XpuApEssentialMsg$Size3f$Builder;

    invoke-virtual {p1}, Landroid/car/hardware/xpu/XpuApEssentialMsg$Size3f$Builder;->buildPartial()Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Landroid/car/hardware/xpu/XpuApEssentialMsg$Size3f;

    iput-object p1, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDynaObject;->size_:Landroid/car/hardware/xpu/XpuApEssentialMsg$Size3f;

    goto :goto_0

    .line 6743
    :cond_0
    iput-object p1, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDynaObject;->size_:Landroid/car/hardware/xpu/XpuApEssentialMsg$Size3f;

    :goto_0
    return-void
.end method

.method public static newBuilder()Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDynaObject$Builder;
    .locals 1

    .line 7049
    sget-object v0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDynaObject;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDynaObject;

    invoke-virtual {v0}, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDynaObject;->toBuilder()Lcom/android/carsdk/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDynaObject$Builder;

    return-object v0
.end method

.method public static newBuilder(Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDynaObject;)Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDynaObject$Builder;
    .locals 1

    .line 7052
    sget-object v0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDynaObject;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDynaObject;

    invoke-virtual {v0}, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDynaObject;->toBuilder()Lcom/android/carsdk/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDynaObject$Builder;

    invoke-virtual {v0, p0}, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDynaObject$Builder;->mergeFrom(Lcom/android/carsdk/protobuf/GeneratedMessageLite;)Lcom/android/carsdk/protobuf/GeneratedMessageLite$Builder;

    move-result-object p0

    check-cast p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDynaObject$Builder;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDynaObject;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 7026
    sget-object v0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDynaObject;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDynaObject;

    invoke-static {v0, p0}, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDynaObject;->parseDelimitedFrom(Lcom/android/carsdk/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDynaObject;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/android/carsdk/protobuf/ExtensionRegistryLite;)Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDynaObject;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 7032
    sget-object v0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDynaObject;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDynaObject;

    invoke-static {v0, p0, p1}, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDynaObject;->parseDelimitedFrom(Lcom/android/carsdk/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/android/carsdk/protobuf/ExtensionRegistryLite;)Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDynaObject;

    return-object p0
.end method

.method public static parseFrom(Lcom/android/carsdk/protobuf/ByteString;)Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDynaObject;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/carsdk/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 6990
    sget-object v0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDynaObject;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDynaObject;

    invoke-static {v0, p0}, Lcom/android/carsdk/protobuf/GeneratedMessageLite;->parseFrom(Lcom/android/carsdk/protobuf/GeneratedMessageLite;Lcom/android/carsdk/protobuf/ByteString;)Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDynaObject;

    return-object p0
.end method

.method public static parseFrom(Lcom/android/carsdk/protobuf/ByteString;Lcom/android/carsdk/protobuf/ExtensionRegistryLite;)Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDynaObject;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/carsdk/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 6997
    sget-object v0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDynaObject;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDynaObject;

    invoke-static {v0, p0, p1}, Lcom/android/carsdk/protobuf/GeneratedMessageLite;->parseFrom(Lcom/android/carsdk/protobuf/GeneratedMessageLite;Lcom/android/carsdk/protobuf/ByteString;Lcom/android/carsdk/protobuf/ExtensionRegistryLite;)Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDynaObject;

    return-object p0
.end method

.method public static parseFrom(Lcom/android/carsdk/protobuf/CodedInputStream;)Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDynaObject;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 7037
    sget-object v0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDynaObject;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDynaObject;

    invoke-static {v0, p0}, Lcom/android/carsdk/protobuf/GeneratedMessageLite;->parseFrom(Lcom/android/carsdk/protobuf/GeneratedMessageLite;Lcom/android/carsdk/protobuf/CodedInputStream;)Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDynaObject;

    return-object p0
.end method

.method public static parseFrom(Lcom/android/carsdk/protobuf/CodedInputStream;Lcom/android/carsdk/protobuf/ExtensionRegistryLite;)Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDynaObject;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 7044
    sget-object v0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDynaObject;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDynaObject;

    invoke-static {v0, p0, p1}, Lcom/android/carsdk/protobuf/GeneratedMessageLite;->parseFrom(Lcom/android/carsdk/protobuf/GeneratedMessageLite;Lcom/android/carsdk/protobuf/CodedInputStream;Lcom/android/carsdk/protobuf/ExtensionRegistryLite;)Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDynaObject;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDynaObject;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 7014
    sget-object v0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDynaObject;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDynaObject;

    invoke-static {v0, p0}, Lcom/android/carsdk/protobuf/GeneratedMessageLite;->parseFrom(Lcom/android/carsdk/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDynaObject;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/android/carsdk/protobuf/ExtensionRegistryLite;)Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDynaObject;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 7021
    sget-object v0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDynaObject;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDynaObject;

    invoke-static {v0, p0, p1}, Lcom/android/carsdk/protobuf/GeneratedMessageLite;->parseFrom(Lcom/android/carsdk/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/android/carsdk/protobuf/ExtensionRegistryLite;)Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDynaObject;

    return-object p0
.end method

.method public static parseFrom([B)Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDynaObject;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/carsdk/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 7002
    sget-object v0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDynaObject;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDynaObject;

    invoke-static {v0, p0}, Lcom/android/carsdk/protobuf/GeneratedMessageLite;->parseFrom(Lcom/android/carsdk/protobuf/GeneratedMessageLite;[B)Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDynaObject;

    return-object p0
.end method

.method public static parseFrom([BLcom/android/carsdk/protobuf/ExtensionRegistryLite;)Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDynaObject;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/carsdk/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 7009
    sget-object v0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDynaObject;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDynaObject;

    invoke-static {v0, p0, p1}, Lcom/android/carsdk/protobuf/GeneratedMessageLite;->parseFrom(Lcom/android/carsdk/protobuf/GeneratedMessageLite;[BLcom/android/carsdk/protobuf/ExtensionRegistryLite;)Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDynaObject;

    return-object p0
.end method

.method public static parser()Lcom/android/carsdk/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/android/carsdk/protobuf/Parser<",
            "Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDynaObject;",
            ">;"
        }
    .end annotation

    .line 7449
    sget-object v0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDynaObject;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDynaObject;

    invoke-virtual {v0}, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDynaObject;->getParserForType()Lcom/android/carsdk/protobuf/Parser;

    move-result-object v0

    return-object v0
.end method

.method private setColor(I)V
    .locals 0

    .line 6918
    iput p1, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDynaObject;->color_:I

    return-void
.end method

.method private setId(I)V
    .locals 0

    .line 6692
    iput p1, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDynaObject;->id_:I

    return-void
.end method

.method private setPose(Landroid/car/hardware/xpu/XpuApEssentialMsg$Pose3f$Builder;)V
    .locals 0

    .line 6822
    invoke-virtual {p1}, Landroid/car/hardware/xpu/XpuApEssentialMsg$Pose3f$Builder;->build()Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Landroid/car/hardware/xpu/XpuApEssentialMsg$Pose3f;

    iput-object p1, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDynaObject;->pose_:Landroid/car/hardware/xpu/XpuApEssentialMsg$Pose3f;

    return-void
.end method

.method private setPose(Landroid/car/hardware/xpu/XpuApEssentialMsg$Pose3f;)V
    .locals 0

    .line 6812
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6814
    iput-object p1, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDynaObject;->pose_:Landroid/car/hardware/xpu/XpuApEssentialMsg$Pose3f;

    return-void
.end method

.method private setPt(Landroid/car/hardware/xpu/XpuApEssentialMsg$Point3f$Builder;)V
    .locals 0

    .line 6874
    invoke-virtual {p1}, Landroid/car/hardware/xpu/XpuApEssentialMsg$Point3f$Builder;->build()Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Landroid/car/hardware/xpu/XpuApEssentialMsg$Point3f;

    iput-object p1, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDynaObject;->pt_:Landroid/car/hardware/xpu/XpuApEssentialMsg$Point3f;

    return-void
.end method

.method private setPt(Landroid/car/hardware/xpu/XpuApEssentialMsg$Point3f;)V
    .locals 0

    .line 6864
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6866
    iput-object p1, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDynaObject;->pt_:Landroid/car/hardware/xpu/XpuApEssentialMsg$Point3f;

    return-void
.end method

.method private setSize(Landroid/car/hardware/xpu/XpuApEssentialMsg$Size3f$Builder;)V
    .locals 0

    .line 6731
    invoke-virtual {p1}, Landroid/car/hardware/xpu/XpuApEssentialMsg$Size3f$Builder;->build()Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Landroid/car/hardware/xpu/XpuApEssentialMsg$Size3f;

    iput-object p1, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDynaObject;->size_:Landroid/car/hardware/xpu/XpuApEssentialMsg$Size3f;

    return-void
.end method

.method private setSize(Landroid/car/hardware/xpu/XpuApEssentialMsg$Size3f;)V
    .locals 0

    .line 6721
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6723
    iput-object p1, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDynaObject;->size_:Landroid/car/hardware/xpu/XpuApEssentialMsg$Size3f;

    return-void
.end method

.method private setType(Landroid/car/hardware/xpu/XpuApEssentialMsg$ApObjectType;)V
    .locals 0

    .line 6780
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6783
    invoke-virtual {p1}, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApObjectType;->getNumber()I

    move-result p1

    iput p1, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDynaObject;->type_:I

    return-void
.end method

.method private setTypeValue(I)V
    .locals 0

    .line 6773
    iput p1, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDynaObject;->type_:I

    return-void
.end method


# virtual methods
.method protected final dynamicMethod(Lcom/android/carsdk/protobuf/GeneratedMessageLite$MethodToInvoke;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5

    .line 7304
    sget-object v0, Landroid/car/hardware/xpu/XpuApEssentialMsg$1;->$SwitchMap$com$google$protobuf$GeneratedMessageLite$MethodToInvoke:[I

    invoke-virtual {p1}, Lcom/android/carsdk/protobuf/GeneratedMessageLite$MethodToInvoke;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x1

    packed-switch p1, :pswitch_data_0

    .line 7431
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1

    .line 7422
    :pswitch_0
    sget-object p1, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDynaObject;->PARSER:Lcom/android/carsdk/protobuf/Parser;

    if-nez p1, :cond_1

    const-class p1, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDynaObject;

    monitor-enter p1

    .line 7423
    :try_start_0
    sget-object p2, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDynaObject;->PARSER:Lcom/android/carsdk/protobuf/Parser;

    if-nez p2, :cond_0

    .line 7424
    new-instance p2, Lcom/android/carsdk/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;

    sget-object p3, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDynaObject;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDynaObject;

    invoke-direct {p2, p3}, Lcom/android/carsdk/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;-><init>(Lcom/android/carsdk/protobuf/GeneratedMessageLite;)V

    sput-object p2, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDynaObject;->PARSER:Lcom/android/carsdk/protobuf/Parser;

    .line 7426
    :cond_0
    monitor-exit p1

    goto :goto_0

    :catchall_0
    move-exception p2

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p2

    .line 7428
    :cond_1
    :goto_0
    sget-object p1, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDynaObject;->PARSER:Lcom/android/carsdk/protobuf/Parser;

    return-object p1

    .line 7334
    :pswitch_1
    check-cast p2, Lcom/android/carsdk/protobuf/CodedInputStream;

    .line 7336
    check-cast p3, Lcom/android/carsdk/protobuf/ExtensionRegistryLite;

    :cond_2
    :goto_1
    if-nez v1, :cond_d

    .line 7341
    :try_start_1
    invoke-virtual {p2}, Lcom/android/carsdk/protobuf/CodedInputStream;->readTag()I

    move-result p1

    if-eqz p1, :cond_c

    const/16 v3, 0x8

    if-eq p1, v3, :cond_b

    const/16 v3, 0x12

    if-eq p1, v3, :cond_9

    const/16 v3, 0x18

    if-eq p1, v3, :cond_8

    const/16 v3, 0x22

    if-eq p1, v3, :cond_6

    const/16 v3, 0x2a

    if-eq p1, v3, :cond_4

    const/16 v3, 0x30

    if-eq p1, v3, :cond_3

    .line 7347
    invoke-virtual {p2, p1}, Lcom/android/carsdk/protobuf/CodedInputStream;->skipField(I)Z

    move-result p1

    if-nez p1, :cond_2

    goto/16 :goto_5

    .line 7404
    :cond_3
    invoke-virtual {p2}, Lcom/android/carsdk/protobuf/CodedInputStream;->readInt32()I

    move-result p1

    iput p1, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDynaObject;->color_:I

    goto :goto_1

    .line 7391
    :cond_4
    iget-object p1, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDynaObject;->pt_:Landroid/car/hardware/xpu/XpuApEssentialMsg$Point3f;

    if-eqz p1, :cond_5

    .line 7392
    invoke-virtual {p1}, Landroid/car/hardware/xpu/XpuApEssentialMsg$Point3f;->toBuilder()Lcom/android/carsdk/protobuf/GeneratedMessageLite$Builder;

    move-result-object p1

    check-cast p1, Landroid/car/hardware/xpu/XpuApEssentialMsg$Point3f$Builder;

    goto :goto_2

    :cond_5
    move-object p1, v0

    .line 7394
    :goto_2
    invoke-static {}, Landroid/car/hardware/xpu/XpuApEssentialMsg$Point3f;->parser()Lcom/android/carsdk/protobuf/Parser;

    move-result-object v3

    invoke-virtual {p2, v3, p3}, Lcom/android/carsdk/protobuf/CodedInputStream;->readMessage(Lcom/android/carsdk/protobuf/Parser;Lcom/android/carsdk/protobuf/ExtensionRegistryLite;)Lcom/android/carsdk/protobuf/MessageLite;

    move-result-object v3

    check-cast v3, Landroid/car/hardware/xpu/XpuApEssentialMsg$Point3f;

    iput-object v3, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDynaObject;->pt_:Landroid/car/hardware/xpu/XpuApEssentialMsg$Point3f;

    if-eqz p1, :cond_2

    .line 7396
    invoke-virtual {p1, v3}, Landroid/car/hardware/xpu/XpuApEssentialMsg$Point3f$Builder;->mergeFrom(Lcom/android/carsdk/protobuf/GeneratedMessageLite;)Lcom/android/carsdk/protobuf/GeneratedMessageLite$Builder;

    .line 7397
    invoke-virtual {p1}, Landroid/car/hardware/xpu/XpuApEssentialMsg$Point3f$Builder;->buildPartial()Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Landroid/car/hardware/xpu/XpuApEssentialMsg$Point3f;

    iput-object p1, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDynaObject;->pt_:Landroid/car/hardware/xpu/XpuApEssentialMsg$Point3f;

    goto :goto_1

    .line 7378
    :cond_6
    iget-object p1, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDynaObject;->pose_:Landroid/car/hardware/xpu/XpuApEssentialMsg$Pose3f;

    if-eqz p1, :cond_7

    .line 7379
    invoke-virtual {p1}, Landroid/car/hardware/xpu/XpuApEssentialMsg$Pose3f;->toBuilder()Lcom/android/carsdk/protobuf/GeneratedMessageLite$Builder;

    move-result-object p1

    check-cast p1, Landroid/car/hardware/xpu/XpuApEssentialMsg$Pose3f$Builder;

    goto :goto_3

    :cond_7
    move-object p1, v0

    .line 7381
    :goto_3
    invoke-static {}, Landroid/car/hardware/xpu/XpuApEssentialMsg$Pose3f;->parser()Lcom/android/carsdk/protobuf/Parser;

    move-result-object v3

    invoke-virtual {p2, v3, p3}, Lcom/android/carsdk/protobuf/CodedInputStream;->readMessage(Lcom/android/carsdk/protobuf/Parser;Lcom/android/carsdk/protobuf/ExtensionRegistryLite;)Lcom/android/carsdk/protobuf/MessageLite;

    move-result-object v3

    check-cast v3, Landroid/car/hardware/xpu/XpuApEssentialMsg$Pose3f;

    iput-object v3, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDynaObject;->pose_:Landroid/car/hardware/xpu/XpuApEssentialMsg$Pose3f;

    if-eqz p1, :cond_2

    .line 7383
    invoke-virtual {p1, v3}, Landroid/car/hardware/xpu/XpuApEssentialMsg$Pose3f$Builder;->mergeFrom(Lcom/android/carsdk/protobuf/GeneratedMessageLite;)Lcom/android/carsdk/protobuf/GeneratedMessageLite$Builder;

    .line 7384
    invoke-virtual {p1}, Landroid/car/hardware/xpu/XpuApEssentialMsg$Pose3f$Builder;->buildPartial()Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Landroid/car/hardware/xpu/XpuApEssentialMsg$Pose3f;

    iput-object p1, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDynaObject;->pose_:Landroid/car/hardware/xpu/XpuApEssentialMsg$Pose3f;

    goto :goto_1

    .line 7371
    :cond_8
    invoke-virtual {p2}, Lcom/android/carsdk/protobuf/CodedInputStream;->readEnum()I

    move-result p1

    .line 7373
    iput p1, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDynaObject;->type_:I

    goto/16 :goto_1

    .line 7359
    :cond_9
    iget-object p1, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDynaObject;->size_:Landroid/car/hardware/xpu/XpuApEssentialMsg$Size3f;

    if-eqz p1, :cond_a

    .line 7360
    invoke-virtual {p1}, Landroid/car/hardware/xpu/XpuApEssentialMsg$Size3f;->toBuilder()Lcom/android/carsdk/protobuf/GeneratedMessageLite$Builder;

    move-result-object p1

    check-cast p1, Landroid/car/hardware/xpu/XpuApEssentialMsg$Size3f$Builder;

    goto :goto_4

    :cond_a
    move-object p1, v0

    .line 7362
    :goto_4
    invoke-static {}, Landroid/car/hardware/xpu/XpuApEssentialMsg$Size3f;->parser()Lcom/android/carsdk/protobuf/Parser;

    move-result-object v3

    invoke-virtual {p2, v3, p3}, Lcom/android/carsdk/protobuf/CodedInputStream;->readMessage(Lcom/android/carsdk/protobuf/Parser;Lcom/android/carsdk/protobuf/ExtensionRegistryLite;)Lcom/android/carsdk/protobuf/MessageLite;

    move-result-object v3

    check-cast v3, Landroid/car/hardware/xpu/XpuApEssentialMsg$Size3f;

    iput-object v3, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDynaObject;->size_:Landroid/car/hardware/xpu/XpuApEssentialMsg$Size3f;

    if-eqz p1, :cond_2

    .line 7364
    invoke-virtual {p1, v3}, Landroid/car/hardware/xpu/XpuApEssentialMsg$Size3f$Builder;->mergeFrom(Lcom/android/carsdk/protobuf/GeneratedMessageLite;)Lcom/android/carsdk/protobuf/GeneratedMessageLite$Builder;

    .line 7365
    invoke-virtual {p1}, Landroid/car/hardware/xpu/XpuApEssentialMsg$Size3f$Builder;->buildPartial()Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Landroid/car/hardware/xpu/XpuApEssentialMsg$Size3f;

    iput-object p1, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDynaObject;->size_:Landroid/car/hardware/xpu/XpuApEssentialMsg$Size3f;

    goto/16 :goto_1

    .line 7354
    :cond_b
    invoke-virtual {p2}, Lcom/android/carsdk/protobuf/CodedInputStream;->readUInt32()I

    move-result p1

    iput p1, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDynaObject;->id_:I
    :try_end_1
    .catch Lcom/android/carsdk/protobuf/InvalidProtocolBufferException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto/16 :goto_1

    :cond_c
    :goto_5
    move v1, v2

    goto/16 :goto_1

    :catchall_1
    move-exception p1

    goto :goto_6

    :catch_0
    move-exception p1

    .line 7412
    :try_start_2
    new-instance p2, Ljava/lang/RuntimeException;

    new-instance p3, Lcom/android/carsdk/protobuf/InvalidProtocolBufferException;

    .line 7414
    invoke-virtual {p1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p3, p1}, Lcom/android/carsdk/protobuf/InvalidProtocolBufferException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, p0}, Lcom/android/carsdk/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/android/carsdk/protobuf/MessageLite;)Lcom/android/carsdk/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p2

    :catch_1
    move-exception p1

    .line 7410
    new-instance p2, Ljava/lang/RuntimeException;

    invoke-virtual {p1, p0}, Lcom/android/carsdk/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/android/carsdk/protobuf/MessageLite;)Lcom/android/carsdk/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 7415
    :goto_6
    throw p1

    .line 7419
    :cond_d
    :pswitch_2
    sget-object p1, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDynaObject;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDynaObject;

    return-object p1

    .line 7318
    :pswitch_3
    check-cast p2, Lcom/android/carsdk/protobuf/GeneratedMessageLite$Visitor;

    .line 7319
    check-cast p3, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDynaObject;

    .line 7320
    iget p1, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDynaObject;->id_:I

    if-eqz p1, :cond_e

    move v0, v2

    goto :goto_7

    :cond_e
    move v0, v1

    :goto_7
    iget v3, p3, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDynaObject;->id_:I

    if-eqz v3, :cond_f

    move v4, v2

    goto :goto_8

    :cond_f
    move v4, v1

    :goto_8
    invoke-interface {p2, v0, p1, v4, v3}, Lcom/android/carsdk/protobuf/GeneratedMessageLite$Visitor;->visitInt(ZIZI)I

    move-result p1

    iput p1, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDynaObject;->id_:I

    .line 7322
    iget-object p1, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDynaObject;->size_:Landroid/car/hardware/xpu/XpuApEssentialMsg$Size3f;

    iget-object v0, p3, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDynaObject;->size_:Landroid/car/hardware/xpu/XpuApEssentialMsg$Size3f;

    invoke-interface {p2, p1, v0}, Lcom/android/carsdk/protobuf/GeneratedMessageLite$Visitor;->visitMessage(Lcom/android/carsdk/protobuf/MessageLite;Lcom/android/carsdk/protobuf/MessageLite;)Lcom/android/carsdk/protobuf/MessageLite;

    move-result-object p1

    check-cast p1, Landroid/car/hardware/xpu/XpuApEssentialMsg$Size3f;

    iput-object p1, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDynaObject;->size_:Landroid/car/hardware/xpu/XpuApEssentialMsg$Size3f;

    .line 7323
    iget p1, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDynaObject;->type_:I

    if-eqz p1, :cond_10

    move v0, v2

    goto :goto_9

    :cond_10
    move v0, v1

    :goto_9
    iget v3, p3, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDynaObject;->type_:I

    if-eqz v3, :cond_11

    move v4, v2

    goto :goto_a

    :cond_11
    move v4, v1

    :goto_a
    invoke-interface {p2, v0, p1, v4, v3}, Lcom/android/carsdk/protobuf/GeneratedMessageLite$Visitor;->visitInt(ZIZI)I

    move-result p1

    iput p1, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDynaObject;->type_:I

    .line 7324
    iget-object p1, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDynaObject;->pose_:Landroid/car/hardware/xpu/XpuApEssentialMsg$Pose3f;

    iget-object v0, p3, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDynaObject;->pose_:Landroid/car/hardware/xpu/XpuApEssentialMsg$Pose3f;

    invoke-interface {p2, p1, v0}, Lcom/android/carsdk/protobuf/GeneratedMessageLite$Visitor;->visitMessage(Lcom/android/carsdk/protobuf/MessageLite;Lcom/android/carsdk/protobuf/MessageLite;)Lcom/android/carsdk/protobuf/MessageLite;

    move-result-object p1

    check-cast p1, Landroid/car/hardware/xpu/XpuApEssentialMsg$Pose3f;

    iput-object p1, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDynaObject;->pose_:Landroid/car/hardware/xpu/XpuApEssentialMsg$Pose3f;

    .line 7325
    iget-object p1, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDynaObject;->pt_:Landroid/car/hardware/xpu/XpuApEssentialMsg$Point3f;

    iget-object v0, p3, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDynaObject;->pt_:Landroid/car/hardware/xpu/XpuApEssentialMsg$Point3f;

    invoke-interface {p2, p1, v0}, Lcom/android/carsdk/protobuf/GeneratedMessageLite$Visitor;->visitMessage(Lcom/android/carsdk/protobuf/MessageLite;Lcom/android/carsdk/protobuf/MessageLite;)Lcom/android/carsdk/protobuf/MessageLite;

    move-result-object p1

    check-cast p1, Landroid/car/hardware/xpu/XpuApEssentialMsg$Point3f;

    iput-object p1, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDynaObject;->pt_:Landroid/car/hardware/xpu/XpuApEssentialMsg$Point3f;

    .line 7326
    iget p1, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDynaObject;->color_:I

    if-eqz p1, :cond_12

    move v0, v2

    goto :goto_b

    :cond_12
    move v0, v1

    :goto_b
    iget p3, p3, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDynaObject;->color_:I

    if-eqz p3, :cond_13

    move v1, v2

    :cond_13
    invoke-interface {p2, v0, p1, v1, p3}, Lcom/android/carsdk/protobuf/GeneratedMessageLite$Visitor;->visitInt(ZIZI)I

    move-result p1

    iput p1, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDynaObject;->color_:I

    .line 7328
    sget-object p1, Lcom/android/carsdk/protobuf/GeneratedMessageLite$MergeFromVisitor;->INSTANCE:Lcom/android/carsdk/protobuf/GeneratedMessageLite$MergeFromVisitor;

    return-object p0

    .line 7315
    :pswitch_4
    new-instance p1, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDynaObject$Builder;

    invoke-direct {p1, v0}, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDynaObject$Builder;-><init>(Landroid/car/hardware/xpu/XpuApEssentialMsg$1;)V

    return-object p1

    :pswitch_5
    return-object v0

    .line 7309
    :pswitch_6
    sget-object p1, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDynaObject;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDynaObject;

    return-object p1

    .line 7306
    :pswitch_7
    new-instance p1, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDynaObject;

    invoke-direct {p1}, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDynaObject;-><init>()V

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

.method public getColor()I
    .locals 1

    .line 6907
    iget v0, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDynaObject;->color_:I

    return v0
.end method

.method public getId()I
    .locals 1

    .line 6685
    iget v0, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDynaObject;->id_:I

    return v0
.end method

.method public getPose()Landroid/car/hardware/xpu/XpuApEssentialMsg$Pose3f;
    .locals 1

    .line 6805
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDynaObject;->pose_:Landroid/car/hardware/xpu/XpuApEssentialMsg$Pose3f;

    if-nez v0, :cond_0

    invoke-static {}, Landroid/car/hardware/xpu/XpuApEssentialMsg$Pose3f;->getDefaultInstance()Landroid/car/hardware/xpu/XpuApEssentialMsg$Pose3f;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public getPt()Landroid/car/hardware/xpu/XpuApEssentialMsg$Point3f;
    .locals 1

    .line 6857
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDynaObject;->pt_:Landroid/car/hardware/xpu/XpuApEssentialMsg$Point3f;

    if-nez v0, :cond_0

    invoke-static {}, Landroid/car/hardware/xpu/XpuApEssentialMsg$Point3f;->getDefaultInstance()Landroid/car/hardware/xpu/XpuApEssentialMsg$Point3f;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public getSerializedSize()I
    .locals 3

    .line 6955
    iget v0, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDynaObject;->memoizedSerializedSize:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    return v0

    :cond_0
    const/4 v0, 0x0

    .line 6959
    iget v1, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDynaObject;->id_:I

    if-eqz v1, :cond_1

    const/4 v2, 0x1

    .line 6961
    invoke-static {v2, v1}, Lcom/android/carsdk/protobuf/CodedOutputStream;->computeUInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 6963
    :cond_1
    iget-object v1, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDynaObject;->size_:Landroid/car/hardware/xpu/XpuApEssentialMsg$Size3f;

    if-eqz v1, :cond_2

    const/4 v1, 0x2

    .line 6965
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDynaObject;->getSize()Landroid/car/hardware/xpu/XpuApEssentialMsg$Size3f;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/carsdk/protobuf/CodedOutputStream;->computeMessageSize(ILcom/android/carsdk/protobuf/MessageLite;)I

    move-result v1

    add-int/2addr v0, v1

    .line 6967
    :cond_2
    iget v1, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDynaObject;->type_:I

    sget-object v2, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApObjectType;->OBJ_TYPE_UNKNOWN:Landroid/car/hardware/xpu/XpuApEssentialMsg$ApObjectType;

    invoke-virtual {v2}, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApObjectType;->getNumber()I

    move-result v2

    if-eq v1, v2, :cond_3

    const/4 v1, 0x3

    .line 6968
    iget v2, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDynaObject;->type_:I

    .line 6969
    invoke-static {v1, v2}, Lcom/android/carsdk/protobuf/CodedOutputStream;->computeEnumSize(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 6971
    :cond_3
    iget-object v1, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDynaObject;->pose_:Landroid/car/hardware/xpu/XpuApEssentialMsg$Pose3f;

    if-eqz v1, :cond_4

    const/4 v1, 0x4

    .line 6973
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDynaObject;->getPose()Landroid/car/hardware/xpu/XpuApEssentialMsg$Pose3f;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/carsdk/protobuf/CodedOutputStream;->computeMessageSize(ILcom/android/carsdk/protobuf/MessageLite;)I

    move-result v1

    add-int/2addr v0, v1

    .line 6975
    :cond_4
    iget-object v1, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDynaObject;->pt_:Landroid/car/hardware/xpu/XpuApEssentialMsg$Point3f;

    if-eqz v1, :cond_5

    const/4 v1, 0x5

    .line 6977
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDynaObject;->getPt()Landroid/car/hardware/xpu/XpuApEssentialMsg$Point3f;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/carsdk/protobuf/CodedOutputStream;->computeMessageSize(ILcom/android/carsdk/protobuf/MessageLite;)I

    move-result v1

    add-int/2addr v0, v1

    .line 6979
    :cond_5
    iget v1, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDynaObject;->color_:I

    if-eqz v1, :cond_6

    const/4 v2, 0x6

    .line 6981
    invoke-static {v2, v1}, Lcom/android/carsdk/protobuf/CodedOutputStream;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 6983
    :cond_6
    iput v0, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDynaObject;->memoizedSerializedSize:I

    return v0
.end method

.method public getSize()Landroid/car/hardware/xpu/XpuApEssentialMsg$Size3f;
    .locals 1

    .line 6714
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDynaObject;->size_:Landroid/car/hardware/xpu/XpuApEssentialMsg$Size3f;

    if-nez v0, :cond_0

    invoke-static {}, Landroid/car/hardware/xpu/XpuApEssentialMsg$Size3f;->getDefaultInstance()Landroid/car/hardware/xpu/XpuApEssentialMsg$Size3f;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public getType()Landroid/car/hardware/xpu/XpuApEssentialMsg$ApObjectType;
    .locals 1

    .line 6766
    iget v0, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDynaObject;->type_:I

    invoke-static {v0}, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApObjectType;->forNumber(I)Landroid/car/hardware/xpu/XpuApEssentialMsg$ApObjectType;

    move-result-object v0

    if-nez v0, :cond_0

    .line 6767
    sget-object v0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApObjectType;->UNRECOGNIZED:Landroid/car/hardware/xpu/XpuApEssentialMsg$ApObjectType;

    :cond_0
    return-object v0
.end method

.method public getTypeValue()I
    .locals 1

    .line 6760
    iget v0, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDynaObject;->type_:I

    return v0
.end method

.method public hasPose()Z
    .locals 1

    .line 6799
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDynaObject;->pose_:Landroid/car/hardware/xpu/XpuApEssentialMsg$Pose3f;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasPt()Z
    .locals 1

    .line 6851
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDynaObject;->pt_:Landroid/car/hardware/xpu/XpuApEssentialMsg$Point3f;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasSize()Z
    .locals 1

    .line 6708
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDynaObject;->size_:Landroid/car/hardware/xpu/XpuApEssentialMsg$Size3f;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public writeTo(Lcom/android/carsdk/protobuf/CodedOutputStream;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 6934
    iget v0, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDynaObject;->id_:I

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    .line 6935
    invoke-virtual {p1, v1, v0}, Lcom/android/carsdk/protobuf/CodedOutputStream;->writeUInt32(II)V

    .line 6937
    :cond_0
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDynaObject;->size_:Landroid/car/hardware/xpu/XpuApEssentialMsg$Size3f;

    if-eqz v0, :cond_1

    const/4 v0, 0x2

    .line 6938
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDynaObject;->getSize()Landroid/car/hardware/xpu/XpuApEssentialMsg$Size3f;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/android/carsdk/protobuf/CodedOutputStream;->writeMessage(ILcom/android/carsdk/protobuf/MessageLite;)V

    .line 6940
    :cond_1
    iget v0, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDynaObject;->type_:I

    sget-object v1, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApObjectType;->OBJ_TYPE_UNKNOWN:Landroid/car/hardware/xpu/XpuApEssentialMsg$ApObjectType;

    invoke-virtual {v1}, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApObjectType;->getNumber()I

    move-result v1

    if-eq v0, v1, :cond_2

    const/4 v0, 0x3

    .line 6941
    iget v1, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDynaObject;->type_:I

    invoke-virtual {p1, v0, v1}, Lcom/android/carsdk/protobuf/CodedOutputStream;->writeEnum(II)V

    .line 6943
    :cond_2
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDynaObject;->pose_:Landroid/car/hardware/xpu/XpuApEssentialMsg$Pose3f;

    if-eqz v0, :cond_3

    const/4 v0, 0x4

    .line 6944
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDynaObject;->getPose()Landroid/car/hardware/xpu/XpuApEssentialMsg$Pose3f;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/android/carsdk/protobuf/CodedOutputStream;->writeMessage(ILcom/android/carsdk/protobuf/MessageLite;)V

    .line 6946
    :cond_3
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDynaObject;->pt_:Landroid/car/hardware/xpu/XpuApEssentialMsg$Point3f;

    if-eqz v0, :cond_4

    const/4 v0, 0x5

    .line 6947
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDynaObject;->getPt()Landroid/car/hardware/xpu/XpuApEssentialMsg$Point3f;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/android/carsdk/protobuf/CodedOutputStream;->writeMessage(ILcom/android/carsdk/protobuf/MessageLite;)V

    .line 6949
    :cond_4
    iget v0, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$ApDynaObject;->color_:I

    if-eqz v0, :cond_5

    const/4 v1, 0x6

    .line 6950
    invoke-virtual {p1, v1, v0}, Lcom/android/carsdk/protobuf/CodedOutputStream;->writeInt32(II)V

    :cond_5
    return-void
.end method
