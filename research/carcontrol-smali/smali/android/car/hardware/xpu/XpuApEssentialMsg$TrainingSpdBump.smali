.class public final Landroid/car/hardware/xpu/XpuApEssentialMsg$TrainingSpdBump;
.super Lcom/android/carsdk/protobuf/GeneratedMessageLite;
.source "XpuApEssentialMsg.java"

# interfaces
.implements Landroid/car/hardware/xpu/XpuApEssentialMsg$TrainingSpdBumpOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/car/hardware/xpu/XpuApEssentialMsg;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "TrainingSpdBump"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/car/hardware/xpu/XpuApEssentialMsg$TrainingSpdBump$Builder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/carsdk/protobuf/GeneratedMessageLite<",
        "Landroid/car/hardware/xpu/XpuApEssentialMsg$TrainingSpdBump;",
        "Landroid/car/hardware/xpu/XpuApEssentialMsg$TrainingSpdBump$Builder;",
        ">;",
        "Landroid/car/hardware/xpu/XpuApEssentialMsg$TrainingSpdBumpOrBuilder;"
    }
.end annotation


# static fields
.field private static final DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuApEssentialMsg$TrainingSpdBump;

.field public static final FLAG_FIELD_NUMBER:I = 0x1

.field private static volatile PARSER:Lcom/android/carsdk/protobuf/Parser; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/carsdk/protobuf/Parser<",
            "Landroid/car/hardware/xpu/XpuApEssentialMsg$TrainingSpdBump;",
            ">;"
        }
    .end annotation
.end field

.field public static final S_FIELD_NUMBER:I = 0x6

.field public static final THETA_FIELD_NUMBER:I = 0x5

.field public static final X_FIELD_NUMBER:I = 0x2

.field public static final Y_FIELD_NUMBER:I = 0x3

.field public static final Z_FIELD_NUMBER:I = 0x4


# instance fields
.field private flag_:I

.field private s_:F

.field private theta_:F

.field private x_:F

.field private y_:F

.field private z_:F


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 10843
    new-instance v0, Landroid/car/hardware/xpu/XpuApEssentialMsg$TrainingSpdBump;

    invoke-direct {v0}, Landroid/car/hardware/xpu/XpuApEssentialMsg$TrainingSpdBump;-><init>()V

    sput-object v0, Landroid/car/hardware/xpu/XpuApEssentialMsg$TrainingSpdBump;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuApEssentialMsg$TrainingSpdBump;

    .line 10844
    invoke-virtual {v0}, Landroid/car/hardware/xpu/XpuApEssentialMsg$TrainingSpdBump;->makeImmutable()V

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 10304
    invoke-direct {p0}, Lcom/android/carsdk/protobuf/GeneratedMessageLite;-><init>()V

    const/4 v0, 0x0

    .line 10305
    iput v0, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$TrainingSpdBump;->flag_:I

    const/4 v0, 0x0

    .line 10306
    iput v0, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$TrainingSpdBump;->x_:F

    .line 10307
    iput v0, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$TrainingSpdBump;->y_:F

    .line 10308
    iput v0, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$TrainingSpdBump;->z_:F

    .line 10309
    iput v0, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$TrainingSpdBump;->theta_:F

    .line 10310
    iput v0, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$TrainingSpdBump;->s_:F

    return-void
.end method

.method static synthetic access$24000()Landroid/car/hardware/xpu/XpuApEssentialMsg$TrainingSpdBump;
    .locals 1

    .line 10299
    sget-object v0, Landroid/car/hardware/xpu/XpuApEssentialMsg$TrainingSpdBump;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuApEssentialMsg$TrainingSpdBump;

    return-object v0
.end method

.method static synthetic access$24100(Landroid/car/hardware/xpu/XpuApEssentialMsg$TrainingSpdBump;I)V
    .locals 0

    .line 10299
    invoke-direct {p0, p1}, Landroid/car/hardware/xpu/XpuApEssentialMsg$TrainingSpdBump;->setFlag(I)V

    return-void
.end method

.method static synthetic access$24200(Landroid/car/hardware/xpu/XpuApEssentialMsg$TrainingSpdBump;)V
    .locals 0

    .line 10299
    invoke-direct {p0}, Landroid/car/hardware/xpu/XpuApEssentialMsg$TrainingSpdBump;->clearFlag()V

    return-void
.end method

.method static synthetic access$24300(Landroid/car/hardware/xpu/XpuApEssentialMsg$TrainingSpdBump;F)V
    .locals 0

    .line 10299
    invoke-direct {p0, p1}, Landroid/car/hardware/xpu/XpuApEssentialMsg$TrainingSpdBump;->setX(F)V

    return-void
.end method

.method static synthetic access$24400(Landroid/car/hardware/xpu/XpuApEssentialMsg$TrainingSpdBump;)V
    .locals 0

    .line 10299
    invoke-direct {p0}, Landroid/car/hardware/xpu/XpuApEssentialMsg$TrainingSpdBump;->clearX()V

    return-void
.end method

.method static synthetic access$24500(Landroid/car/hardware/xpu/XpuApEssentialMsg$TrainingSpdBump;F)V
    .locals 0

    .line 10299
    invoke-direct {p0, p1}, Landroid/car/hardware/xpu/XpuApEssentialMsg$TrainingSpdBump;->setY(F)V

    return-void
.end method

.method static synthetic access$24600(Landroid/car/hardware/xpu/XpuApEssentialMsg$TrainingSpdBump;)V
    .locals 0

    .line 10299
    invoke-direct {p0}, Landroid/car/hardware/xpu/XpuApEssentialMsg$TrainingSpdBump;->clearY()V

    return-void
.end method

.method static synthetic access$24700(Landroid/car/hardware/xpu/XpuApEssentialMsg$TrainingSpdBump;F)V
    .locals 0

    .line 10299
    invoke-direct {p0, p1}, Landroid/car/hardware/xpu/XpuApEssentialMsg$TrainingSpdBump;->setZ(F)V

    return-void
.end method

.method static synthetic access$24800(Landroid/car/hardware/xpu/XpuApEssentialMsg$TrainingSpdBump;)V
    .locals 0

    .line 10299
    invoke-direct {p0}, Landroid/car/hardware/xpu/XpuApEssentialMsg$TrainingSpdBump;->clearZ()V

    return-void
.end method

.method static synthetic access$24900(Landroid/car/hardware/xpu/XpuApEssentialMsg$TrainingSpdBump;F)V
    .locals 0

    .line 10299
    invoke-direct {p0, p1}, Landroid/car/hardware/xpu/XpuApEssentialMsg$TrainingSpdBump;->setTheta(F)V

    return-void
.end method

.method static synthetic access$25000(Landroid/car/hardware/xpu/XpuApEssentialMsg$TrainingSpdBump;)V
    .locals 0

    .line 10299
    invoke-direct {p0}, Landroid/car/hardware/xpu/XpuApEssentialMsg$TrainingSpdBump;->clearTheta()V

    return-void
.end method

.method static synthetic access$25100(Landroid/car/hardware/xpu/XpuApEssentialMsg$TrainingSpdBump;F)V
    .locals 0

    .line 10299
    invoke-direct {p0, p1}, Landroid/car/hardware/xpu/XpuApEssentialMsg$TrainingSpdBump;->setS(F)V

    return-void
.end method

.method static synthetic access$25200(Landroid/car/hardware/xpu/XpuApEssentialMsg$TrainingSpdBump;)V
    .locals 0

    .line 10299
    invoke-direct {p0}, Landroid/car/hardware/xpu/XpuApEssentialMsg$TrainingSpdBump;->clearS()V

    return-void
.end method

.method private clearFlag()V
    .locals 1

    const/4 v0, 0x0

    .line 10332
    iput v0, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$TrainingSpdBump;->flag_:I

    return-void
.end method

.method private clearS()V
    .locals 1

    const/4 v0, 0x0

    .line 10447
    iput v0, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$TrainingSpdBump;->s_:F

    return-void
.end method

.method private clearTheta()V
    .locals 1

    const/4 v0, 0x0

    .line 10424
    iput v0, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$TrainingSpdBump;->theta_:F

    return-void
.end method

.method private clearX()V
    .locals 1

    const/4 v0, 0x0

    .line 10355
    iput v0, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$TrainingSpdBump;->x_:F

    return-void
.end method

.method private clearY()V
    .locals 1

    const/4 v0, 0x0

    .line 10378
    iput v0, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$TrainingSpdBump;->y_:F

    return-void
.end method

.method private clearZ()V
    .locals 1

    const/4 v0, 0x0

    .line 10401
    iput v0, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$TrainingSpdBump;->z_:F

    return-void
.end method

.method public static getDefaultInstance()Landroid/car/hardware/xpu/XpuApEssentialMsg$TrainingSpdBump;
    .locals 1

    .line 10848
    sget-object v0, Landroid/car/hardware/xpu/XpuApEssentialMsg$TrainingSpdBump;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuApEssentialMsg$TrainingSpdBump;

    return-object v0
.end method

.method public static newBuilder()Landroid/car/hardware/xpu/XpuApEssentialMsg$TrainingSpdBump$Builder;
    .locals 1

    .line 10567
    sget-object v0, Landroid/car/hardware/xpu/XpuApEssentialMsg$TrainingSpdBump;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuApEssentialMsg$TrainingSpdBump;

    invoke-virtual {v0}, Landroid/car/hardware/xpu/XpuApEssentialMsg$TrainingSpdBump;->toBuilder()Lcom/android/carsdk/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Landroid/car/hardware/xpu/XpuApEssentialMsg$TrainingSpdBump$Builder;

    return-object v0
.end method

.method public static newBuilder(Landroid/car/hardware/xpu/XpuApEssentialMsg$TrainingSpdBump;)Landroid/car/hardware/xpu/XpuApEssentialMsg$TrainingSpdBump$Builder;
    .locals 1

    .line 10570
    sget-object v0, Landroid/car/hardware/xpu/XpuApEssentialMsg$TrainingSpdBump;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuApEssentialMsg$TrainingSpdBump;

    invoke-virtual {v0}, Landroid/car/hardware/xpu/XpuApEssentialMsg$TrainingSpdBump;->toBuilder()Lcom/android/carsdk/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Landroid/car/hardware/xpu/XpuApEssentialMsg$TrainingSpdBump$Builder;

    invoke-virtual {v0, p0}, Landroid/car/hardware/xpu/XpuApEssentialMsg$TrainingSpdBump$Builder;->mergeFrom(Lcom/android/carsdk/protobuf/GeneratedMessageLite;)Lcom/android/carsdk/protobuf/GeneratedMessageLite$Builder;

    move-result-object p0

    check-cast p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$TrainingSpdBump$Builder;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Landroid/car/hardware/xpu/XpuApEssentialMsg$TrainingSpdBump;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 10544
    sget-object v0, Landroid/car/hardware/xpu/XpuApEssentialMsg$TrainingSpdBump;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuApEssentialMsg$TrainingSpdBump;

    invoke-static {v0, p0}, Landroid/car/hardware/xpu/XpuApEssentialMsg$TrainingSpdBump;->parseDelimitedFrom(Lcom/android/carsdk/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$TrainingSpdBump;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/android/carsdk/protobuf/ExtensionRegistryLite;)Landroid/car/hardware/xpu/XpuApEssentialMsg$TrainingSpdBump;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 10550
    sget-object v0, Landroid/car/hardware/xpu/XpuApEssentialMsg$TrainingSpdBump;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuApEssentialMsg$TrainingSpdBump;

    invoke-static {v0, p0, p1}, Landroid/car/hardware/xpu/XpuApEssentialMsg$TrainingSpdBump;->parseDelimitedFrom(Lcom/android/carsdk/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/android/carsdk/protobuf/ExtensionRegistryLite;)Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$TrainingSpdBump;

    return-object p0
.end method

.method public static parseFrom(Lcom/android/carsdk/protobuf/ByteString;)Landroid/car/hardware/xpu/XpuApEssentialMsg$TrainingSpdBump;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/carsdk/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 10508
    sget-object v0, Landroid/car/hardware/xpu/XpuApEssentialMsg$TrainingSpdBump;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuApEssentialMsg$TrainingSpdBump;

    invoke-static {v0, p0}, Lcom/android/carsdk/protobuf/GeneratedMessageLite;->parseFrom(Lcom/android/carsdk/protobuf/GeneratedMessageLite;Lcom/android/carsdk/protobuf/ByteString;)Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$TrainingSpdBump;

    return-object p0
.end method

.method public static parseFrom(Lcom/android/carsdk/protobuf/ByteString;Lcom/android/carsdk/protobuf/ExtensionRegistryLite;)Landroid/car/hardware/xpu/XpuApEssentialMsg$TrainingSpdBump;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/carsdk/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 10515
    sget-object v0, Landroid/car/hardware/xpu/XpuApEssentialMsg$TrainingSpdBump;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuApEssentialMsg$TrainingSpdBump;

    invoke-static {v0, p0, p1}, Lcom/android/carsdk/protobuf/GeneratedMessageLite;->parseFrom(Lcom/android/carsdk/protobuf/GeneratedMessageLite;Lcom/android/carsdk/protobuf/ByteString;Lcom/android/carsdk/protobuf/ExtensionRegistryLite;)Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$TrainingSpdBump;

    return-object p0
.end method

.method public static parseFrom(Lcom/android/carsdk/protobuf/CodedInputStream;)Landroid/car/hardware/xpu/XpuApEssentialMsg$TrainingSpdBump;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 10555
    sget-object v0, Landroid/car/hardware/xpu/XpuApEssentialMsg$TrainingSpdBump;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuApEssentialMsg$TrainingSpdBump;

    invoke-static {v0, p0}, Lcom/android/carsdk/protobuf/GeneratedMessageLite;->parseFrom(Lcom/android/carsdk/protobuf/GeneratedMessageLite;Lcom/android/carsdk/protobuf/CodedInputStream;)Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$TrainingSpdBump;

    return-object p0
.end method

.method public static parseFrom(Lcom/android/carsdk/protobuf/CodedInputStream;Lcom/android/carsdk/protobuf/ExtensionRegistryLite;)Landroid/car/hardware/xpu/XpuApEssentialMsg$TrainingSpdBump;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 10562
    sget-object v0, Landroid/car/hardware/xpu/XpuApEssentialMsg$TrainingSpdBump;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuApEssentialMsg$TrainingSpdBump;

    invoke-static {v0, p0, p1}, Lcom/android/carsdk/protobuf/GeneratedMessageLite;->parseFrom(Lcom/android/carsdk/protobuf/GeneratedMessageLite;Lcom/android/carsdk/protobuf/CodedInputStream;Lcom/android/carsdk/protobuf/ExtensionRegistryLite;)Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$TrainingSpdBump;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Landroid/car/hardware/xpu/XpuApEssentialMsg$TrainingSpdBump;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 10532
    sget-object v0, Landroid/car/hardware/xpu/XpuApEssentialMsg$TrainingSpdBump;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuApEssentialMsg$TrainingSpdBump;

    invoke-static {v0, p0}, Lcom/android/carsdk/protobuf/GeneratedMessageLite;->parseFrom(Lcom/android/carsdk/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$TrainingSpdBump;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/android/carsdk/protobuf/ExtensionRegistryLite;)Landroid/car/hardware/xpu/XpuApEssentialMsg$TrainingSpdBump;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 10539
    sget-object v0, Landroid/car/hardware/xpu/XpuApEssentialMsg$TrainingSpdBump;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuApEssentialMsg$TrainingSpdBump;

    invoke-static {v0, p0, p1}, Lcom/android/carsdk/protobuf/GeneratedMessageLite;->parseFrom(Lcom/android/carsdk/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/android/carsdk/protobuf/ExtensionRegistryLite;)Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$TrainingSpdBump;

    return-object p0
.end method

.method public static parseFrom([B)Landroid/car/hardware/xpu/XpuApEssentialMsg$TrainingSpdBump;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/carsdk/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 10520
    sget-object v0, Landroid/car/hardware/xpu/XpuApEssentialMsg$TrainingSpdBump;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuApEssentialMsg$TrainingSpdBump;

    invoke-static {v0, p0}, Lcom/android/carsdk/protobuf/GeneratedMessageLite;->parseFrom(Lcom/android/carsdk/protobuf/GeneratedMessageLite;[B)Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$TrainingSpdBump;

    return-object p0
.end method

.method public static parseFrom([BLcom/android/carsdk/protobuf/ExtensionRegistryLite;)Landroid/car/hardware/xpu/XpuApEssentialMsg$TrainingSpdBump;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/carsdk/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 10527
    sget-object v0, Landroid/car/hardware/xpu/XpuApEssentialMsg$TrainingSpdBump;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuApEssentialMsg$TrainingSpdBump;

    invoke-static {v0, p0, p1}, Lcom/android/carsdk/protobuf/GeneratedMessageLite;->parseFrom(Lcom/android/carsdk/protobuf/GeneratedMessageLite;[BLcom/android/carsdk/protobuf/ExtensionRegistryLite;)Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$TrainingSpdBump;

    return-object p0
.end method

.method public static parser()Lcom/android/carsdk/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/android/carsdk/protobuf/Parser<",
            "Landroid/car/hardware/xpu/XpuApEssentialMsg$TrainingSpdBump;",
            ">;"
        }
    .end annotation

    .line 10854
    sget-object v0, Landroid/car/hardware/xpu/XpuApEssentialMsg$TrainingSpdBump;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuApEssentialMsg$TrainingSpdBump;

    invoke-virtual {v0}, Landroid/car/hardware/xpu/XpuApEssentialMsg$TrainingSpdBump;->getParserForType()Lcom/android/carsdk/protobuf/Parser;

    move-result-object v0

    return-object v0
.end method

.method private setFlag(I)V
    .locals 0

    .line 10325
    iput p1, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$TrainingSpdBump;->flag_:I

    return-void
.end method

.method private setS(F)V
    .locals 0

    .line 10440
    iput p1, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$TrainingSpdBump;->s_:F

    return-void
.end method

.method private setTheta(F)V
    .locals 0

    .line 10417
    iput p1, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$TrainingSpdBump;->theta_:F

    return-void
.end method

.method private setX(F)V
    .locals 0

    .line 10348
    iput p1, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$TrainingSpdBump;->x_:F

    return-void
.end method

.method private setY(F)V
    .locals 0

    .line 10371
    iput p1, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$TrainingSpdBump;->y_:F

    return-void
.end method

.method private setZ(F)V
    .locals 0

    .line 10394
    iput p1, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$TrainingSpdBump;->z_:F

    return-void
.end method


# virtual methods
.method protected final dynamicMethod(Lcom/android/carsdk/protobuf/GeneratedMessageLite$MethodToInvoke;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    .line 10730
    sget-object v0, Landroid/car/hardware/xpu/XpuApEssentialMsg$1;->$SwitchMap$com$google$protobuf$GeneratedMessageLite$MethodToInvoke:[I

    invoke-virtual {p1}, Lcom/android/carsdk/protobuf/GeneratedMessageLite$MethodToInvoke;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x1

    packed-switch p1, :pswitch_data_0

    .line 10836
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1

    .line 10827
    :pswitch_0
    sget-object p1, Landroid/car/hardware/xpu/XpuApEssentialMsg$TrainingSpdBump;->PARSER:Lcom/android/carsdk/protobuf/Parser;

    if-nez p1, :cond_1

    const-class p1, Landroid/car/hardware/xpu/XpuApEssentialMsg$TrainingSpdBump;

    monitor-enter p1

    .line 10828
    :try_start_0
    sget-object p2, Landroid/car/hardware/xpu/XpuApEssentialMsg$TrainingSpdBump;->PARSER:Lcom/android/carsdk/protobuf/Parser;

    if-nez p2, :cond_0

    .line 10829
    new-instance p2, Lcom/android/carsdk/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;

    sget-object p3, Landroid/car/hardware/xpu/XpuApEssentialMsg$TrainingSpdBump;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuApEssentialMsg$TrainingSpdBump;

    invoke-direct {p2, p3}, Lcom/android/carsdk/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;-><init>(Lcom/android/carsdk/protobuf/GeneratedMessageLite;)V

    sput-object p2, Landroid/car/hardware/xpu/XpuApEssentialMsg$TrainingSpdBump;->PARSER:Lcom/android/carsdk/protobuf/Parser;

    .line 10831
    :cond_0
    monitor-exit p1

    goto :goto_0

    :catchall_0
    move-exception p2

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p2

    .line 10833
    :cond_1
    :goto_0
    sget-object p1, Landroid/car/hardware/xpu/XpuApEssentialMsg$TrainingSpdBump;->PARSER:Lcom/android/carsdk/protobuf/Parser;

    return-object p1

    .line 10764
    :pswitch_1
    check-cast p2, Lcom/android/carsdk/protobuf/CodedInputStream;

    .line 10766
    check-cast p3, Lcom/android/carsdk/protobuf/ExtensionRegistryLite;

    :cond_2
    :goto_1
    if-nez v1, :cond_a

    .line 10771
    :try_start_1
    invoke-virtual {p2}, Lcom/android/carsdk/protobuf/CodedInputStream;->readTag()I

    move-result p1

    if-eqz p1, :cond_9

    const/16 p3, 0x8

    if-eq p1, p3, :cond_8

    const/16 p3, 0x15

    if-eq p1, p3, :cond_7

    const/16 p3, 0x1d

    if-eq p1, p3, :cond_6

    const/16 p3, 0x25

    if-eq p1, p3, :cond_5

    const/16 p3, 0x2d

    if-eq p1, p3, :cond_4

    const/16 p3, 0x35

    if-eq p1, p3, :cond_3

    .line 10777
    invoke-virtual {p2, p1}, Lcom/android/carsdk/protobuf/CodedInputStream;->skipField(I)Z

    move-result p1

    if-nez p1, :cond_2

    goto :goto_2

    .line 10809
    :cond_3
    invoke-virtual {p2}, Lcom/android/carsdk/protobuf/CodedInputStream;->readFloat()F

    move-result p1

    iput p1, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$TrainingSpdBump;->s_:F

    goto :goto_1

    .line 10804
    :cond_4
    invoke-virtual {p2}, Lcom/android/carsdk/protobuf/CodedInputStream;->readFloat()F

    move-result p1

    iput p1, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$TrainingSpdBump;->theta_:F

    goto :goto_1

    .line 10799
    :cond_5
    invoke-virtual {p2}, Lcom/android/carsdk/protobuf/CodedInputStream;->readFloat()F

    move-result p1

    iput p1, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$TrainingSpdBump;->z_:F

    goto :goto_1

    .line 10794
    :cond_6
    invoke-virtual {p2}, Lcom/android/carsdk/protobuf/CodedInputStream;->readFloat()F

    move-result p1

    iput p1, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$TrainingSpdBump;->y_:F

    goto :goto_1

    .line 10789
    :cond_7
    invoke-virtual {p2}, Lcom/android/carsdk/protobuf/CodedInputStream;->readFloat()F

    move-result p1

    iput p1, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$TrainingSpdBump;->x_:F

    goto :goto_1

    .line 10784
    :cond_8
    invoke-virtual {p2}, Lcom/android/carsdk/protobuf/CodedInputStream;->readInt32()I

    move-result p1

    iput p1, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$TrainingSpdBump;->flag_:I
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

    .line 10817
    :try_start_2
    new-instance p2, Ljava/lang/RuntimeException;

    new-instance p3, Lcom/android/carsdk/protobuf/InvalidProtocolBufferException;

    .line 10819
    invoke-virtual {p1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p3, p1}, Lcom/android/carsdk/protobuf/InvalidProtocolBufferException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, p0}, Lcom/android/carsdk/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/android/carsdk/protobuf/MessageLite;)Lcom/android/carsdk/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p2

    :catch_1
    move-exception p1

    .line 10815
    new-instance p2, Ljava/lang/RuntimeException;

    invoke-virtual {p1, p0}, Lcom/android/carsdk/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/android/carsdk/protobuf/MessageLite;)Lcom/android/carsdk/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 10820
    :goto_3
    throw p1

    .line 10824
    :cond_a
    :pswitch_2
    sget-object p1, Landroid/car/hardware/xpu/XpuApEssentialMsg$TrainingSpdBump;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuApEssentialMsg$TrainingSpdBump;

    return-object p1

    .line 10744
    :pswitch_3
    check-cast p2, Lcom/android/carsdk/protobuf/GeneratedMessageLite$Visitor;

    .line 10745
    check-cast p3, Landroid/car/hardware/xpu/XpuApEssentialMsg$TrainingSpdBump;

    .line 10746
    iget p1, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$TrainingSpdBump;->flag_:I

    if-eqz p1, :cond_b

    move v0, v2

    goto :goto_4

    :cond_b
    move v0, v1

    :goto_4
    iget v3, p3, Landroid/car/hardware/xpu/XpuApEssentialMsg$TrainingSpdBump;->flag_:I

    if-eqz v3, :cond_c

    move v4, v2

    goto :goto_5

    :cond_c
    move v4, v1

    :goto_5
    invoke-interface {p2, v0, p1, v4, v3}, Lcom/android/carsdk/protobuf/GeneratedMessageLite$Visitor;->visitInt(ZIZI)I

    move-result p1

    iput p1, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$TrainingSpdBump;->flag_:I

    .line 10748
    iget p1, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$TrainingSpdBump;->x_:F

    const/4 v0, 0x0

    cmpl-float v3, p1, v0

    if-eqz v3, :cond_d

    move v3, v2

    goto :goto_6

    :cond_d
    move v3, v1

    :goto_6
    iget v4, p3, Landroid/car/hardware/xpu/XpuApEssentialMsg$TrainingSpdBump;->x_:F

    cmpl-float v5, v4, v0

    if-eqz v5, :cond_e

    move v5, v2

    goto :goto_7

    :cond_e
    move v5, v1

    :goto_7
    invoke-interface {p2, v3, p1, v5, v4}, Lcom/android/carsdk/protobuf/GeneratedMessageLite$Visitor;->visitFloat(ZFZF)F

    move-result p1

    iput p1, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$TrainingSpdBump;->x_:F

    .line 10750
    iget p1, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$TrainingSpdBump;->y_:F

    cmpl-float v3, p1, v0

    if-eqz v3, :cond_f

    move v3, v2

    goto :goto_8

    :cond_f
    move v3, v1

    :goto_8
    iget v4, p3, Landroid/car/hardware/xpu/XpuApEssentialMsg$TrainingSpdBump;->y_:F

    cmpl-float v5, v4, v0

    if-eqz v5, :cond_10

    move v5, v2

    goto :goto_9

    :cond_10
    move v5, v1

    :goto_9
    invoke-interface {p2, v3, p1, v5, v4}, Lcom/android/carsdk/protobuf/GeneratedMessageLite$Visitor;->visitFloat(ZFZF)F

    move-result p1

    iput p1, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$TrainingSpdBump;->y_:F

    .line 10752
    iget p1, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$TrainingSpdBump;->z_:F

    cmpl-float v3, p1, v0

    if-eqz v3, :cond_11

    move v3, v2

    goto :goto_a

    :cond_11
    move v3, v1

    :goto_a
    iget v4, p3, Landroid/car/hardware/xpu/XpuApEssentialMsg$TrainingSpdBump;->z_:F

    cmpl-float v5, v4, v0

    if-eqz v5, :cond_12

    move v5, v2

    goto :goto_b

    :cond_12
    move v5, v1

    :goto_b
    invoke-interface {p2, v3, p1, v5, v4}, Lcom/android/carsdk/protobuf/GeneratedMessageLite$Visitor;->visitFloat(ZFZF)F

    move-result p1

    iput p1, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$TrainingSpdBump;->z_:F

    .line 10754
    iget p1, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$TrainingSpdBump;->theta_:F

    cmpl-float v3, p1, v0

    if-eqz v3, :cond_13

    move v3, v2

    goto :goto_c

    :cond_13
    move v3, v1

    :goto_c
    iget v4, p3, Landroid/car/hardware/xpu/XpuApEssentialMsg$TrainingSpdBump;->theta_:F

    cmpl-float v5, v4, v0

    if-eqz v5, :cond_14

    move v5, v2

    goto :goto_d

    :cond_14
    move v5, v1

    :goto_d
    invoke-interface {p2, v3, p1, v5, v4}, Lcom/android/carsdk/protobuf/GeneratedMessageLite$Visitor;->visitFloat(ZFZF)F

    move-result p1

    iput p1, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$TrainingSpdBump;->theta_:F

    .line 10756
    iget p1, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$TrainingSpdBump;->s_:F

    cmpl-float v3, p1, v0

    if-eqz v3, :cond_15

    move v3, v2

    goto :goto_e

    :cond_15
    move v3, v1

    :goto_e
    iget p3, p3, Landroid/car/hardware/xpu/XpuApEssentialMsg$TrainingSpdBump;->s_:F

    cmpl-float v0, p3, v0

    if-eqz v0, :cond_16

    move v1, v2

    :cond_16
    invoke-interface {p2, v3, p1, v1, p3}, Lcom/android/carsdk/protobuf/GeneratedMessageLite$Visitor;->visitFloat(ZFZF)F

    move-result p1

    iput p1, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$TrainingSpdBump;->s_:F

    .line 10758
    sget-object p1, Lcom/android/carsdk/protobuf/GeneratedMessageLite$MergeFromVisitor;->INSTANCE:Lcom/android/carsdk/protobuf/GeneratedMessageLite$MergeFromVisitor;

    return-object p0

    .line 10741
    :pswitch_4
    new-instance p1, Landroid/car/hardware/xpu/XpuApEssentialMsg$TrainingSpdBump$Builder;

    invoke-direct {p1, v0}, Landroid/car/hardware/xpu/XpuApEssentialMsg$TrainingSpdBump$Builder;-><init>(Landroid/car/hardware/xpu/XpuApEssentialMsg$1;)V

    return-object p1

    :pswitch_5
    return-object v0

    .line 10735
    :pswitch_6
    sget-object p1, Landroid/car/hardware/xpu/XpuApEssentialMsg$TrainingSpdBump;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuApEssentialMsg$TrainingSpdBump;

    return-object p1

    .line 10732
    :pswitch_7
    new-instance p1, Landroid/car/hardware/xpu/XpuApEssentialMsg$TrainingSpdBump;

    invoke-direct {p1}, Landroid/car/hardware/xpu/XpuApEssentialMsg$TrainingSpdBump;-><init>()V

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

.method public getFlag()I
    .locals 1

    .line 10318
    iget v0, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$TrainingSpdBump;->flag_:I

    return v0
.end method

.method public getS()F
    .locals 1

    .line 10433
    iget v0, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$TrainingSpdBump;->s_:F

    return v0
.end method

.method public getSerializedSize()I
    .locals 4

    .line 10473
    iget v0, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$TrainingSpdBump;->memoizedSerializedSize:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    return v0

    :cond_0
    const/4 v0, 0x0

    .line 10477
    iget v1, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$TrainingSpdBump;->flag_:I

    if-eqz v1, :cond_1

    const/4 v2, 0x1

    .line 10479
    invoke-static {v2, v1}, Lcom/android/carsdk/protobuf/CodedOutputStream;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 10481
    :cond_1
    iget v1, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$TrainingSpdBump;->x_:F

    const/4 v2, 0x0

    cmpl-float v3, v1, v2

    if-eqz v3, :cond_2

    const/4 v3, 0x2

    .line 10483
    invoke-static {v3, v1}, Lcom/android/carsdk/protobuf/CodedOutputStream;->computeFloatSize(IF)I

    move-result v1

    add-int/2addr v0, v1

    .line 10485
    :cond_2
    iget v1, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$TrainingSpdBump;->y_:F

    cmpl-float v3, v1, v2

    if-eqz v3, :cond_3

    const/4 v3, 0x3

    .line 10487
    invoke-static {v3, v1}, Lcom/android/carsdk/protobuf/CodedOutputStream;->computeFloatSize(IF)I

    move-result v1

    add-int/2addr v0, v1

    .line 10489
    :cond_3
    iget v1, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$TrainingSpdBump;->z_:F

    cmpl-float v3, v1, v2

    if-eqz v3, :cond_4

    const/4 v3, 0x4

    .line 10491
    invoke-static {v3, v1}, Lcom/android/carsdk/protobuf/CodedOutputStream;->computeFloatSize(IF)I

    move-result v1

    add-int/2addr v0, v1

    .line 10493
    :cond_4
    iget v1, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$TrainingSpdBump;->theta_:F

    cmpl-float v3, v1, v2

    if-eqz v3, :cond_5

    const/4 v3, 0x5

    .line 10495
    invoke-static {v3, v1}, Lcom/android/carsdk/protobuf/CodedOutputStream;->computeFloatSize(IF)I

    move-result v1

    add-int/2addr v0, v1

    .line 10497
    :cond_5
    iget v1, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$TrainingSpdBump;->s_:F

    cmpl-float v2, v1, v2

    if-eqz v2, :cond_6

    const/4 v2, 0x6

    .line 10499
    invoke-static {v2, v1}, Lcom/android/carsdk/protobuf/CodedOutputStream;->computeFloatSize(IF)I

    move-result v1

    add-int/2addr v0, v1

    .line 10501
    :cond_6
    iput v0, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$TrainingSpdBump;->memoizedSerializedSize:I

    return v0
.end method

.method public getTheta()F
    .locals 1

    .line 10410
    iget v0, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$TrainingSpdBump;->theta_:F

    return v0
.end method

.method public getX()F
    .locals 1

    .line 10341
    iget v0, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$TrainingSpdBump;->x_:F

    return v0
.end method

.method public getY()F
    .locals 1

    .line 10364
    iget v0, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$TrainingSpdBump;->y_:F

    return v0
.end method

.method public getZ()F
    .locals 1

    .line 10387
    iget v0, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$TrainingSpdBump;->z_:F

    return v0
.end method

.method public writeTo(Lcom/android/carsdk/protobuf/CodedOutputStream;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 10452
    iget v0, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$TrainingSpdBump;->flag_:I

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    .line 10453
    invoke-virtual {p1, v1, v0}, Lcom/android/carsdk/protobuf/CodedOutputStream;->writeInt32(II)V

    .line 10455
    :cond_0
    iget v0, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$TrainingSpdBump;->x_:F

    const/4 v1, 0x0

    cmpl-float v2, v0, v1

    if-eqz v2, :cond_1

    const/4 v2, 0x2

    .line 10456
    invoke-virtual {p1, v2, v0}, Lcom/android/carsdk/protobuf/CodedOutputStream;->writeFloat(IF)V

    .line 10458
    :cond_1
    iget v0, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$TrainingSpdBump;->y_:F

    cmpl-float v2, v0, v1

    if-eqz v2, :cond_2

    const/4 v2, 0x3

    .line 10459
    invoke-virtual {p1, v2, v0}, Lcom/android/carsdk/protobuf/CodedOutputStream;->writeFloat(IF)V

    .line 10461
    :cond_2
    iget v0, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$TrainingSpdBump;->z_:F

    cmpl-float v2, v0, v1

    if-eqz v2, :cond_3

    const/4 v2, 0x4

    .line 10462
    invoke-virtual {p1, v2, v0}, Lcom/android/carsdk/protobuf/CodedOutputStream;->writeFloat(IF)V

    .line 10464
    :cond_3
    iget v0, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$TrainingSpdBump;->theta_:F

    cmpl-float v2, v0, v1

    if-eqz v2, :cond_4

    const/4 v2, 0x5

    .line 10465
    invoke-virtual {p1, v2, v0}, Lcom/android/carsdk/protobuf/CodedOutputStream;->writeFloat(IF)V

    .line 10467
    :cond_4
    iget v0, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$TrainingSpdBump;->s_:F

    cmpl-float v1, v0, v1

    if-eqz v1, :cond_5

    const/4 v1, 0x6

    .line 10468
    invoke-virtual {p1, v1, v0}, Lcom/android/carsdk/protobuf/CodedOutputStream;->writeFloat(IF)V

    :cond_5
    return-void
.end method
