.class public final Landroid/car/hardware/xpu/XpuFNgpRouteMessage$SemanticTrajectoryPose;
.super Lcom/android/carsdk/protobuf/GeneratedMessageLite;
.source "XpuFNgpRouteMessage.java"

# interfaces
.implements Landroid/car/hardware/xpu/XpuFNgpRouteMessage$SemanticTrajectoryPoseOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/car/hardware/xpu/XpuFNgpRouteMessage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "SemanticTrajectoryPose"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/car/hardware/xpu/XpuFNgpRouteMessage$SemanticTrajectoryPose$Builder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/carsdk/protobuf/GeneratedMessageLite<",
        "Landroid/car/hardware/xpu/XpuFNgpRouteMessage$SemanticTrajectoryPose;",
        "Landroid/car/hardware/xpu/XpuFNgpRouteMessage$SemanticTrajectoryPose$Builder;",
        ">;",
        "Landroid/car/hardware/xpu/XpuFNgpRouteMessage$SemanticTrajectoryPoseOrBuilder;"
    }
.end annotation


# static fields
.field private static final DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuFNgpRouteMessage$SemanticTrajectoryPose;

.field private static volatile PARSER:Lcom/android/carsdk/protobuf/Parser; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/carsdk/protobuf/Parser<",
            "Landroid/car/hardware/xpu/XpuFNgpRouteMessage$SemanticTrajectoryPose;",
            ">;"
        }
    .end annotation
.end field

.field public static final V2_OFFSET_FIELD_NUMBER:I = 0x4

.field public static final X_FIELD_NUMBER:I = 0x1

.field public static final Y_FIELD_NUMBER:I = 0x2

.field public static final Z_FIELD_NUMBER:I = 0x3


# instance fields
.field private v2Offset_:I

.field private x_:F

.field private y_:F

.field private z_:F


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 21767
    new-instance v0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$SemanticTrajectoryPose;

    invoke-direct {v0}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$SemanticTrajectoryPose;-><init>()V

    sput-object v0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$SemanticTrajectoryPose;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuFNgpRouteMessage$SemanticTrajectoryPose;

    .line 21768
    invoke-virtual {v0}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$SemanticTrajectoryPose;->makeImmutable()V

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 21250
    invoke-direct {p0}, Lcom/android/carsdk/protobuf/GeneratedMessageLite;-><init>()V

    const/4 v0, 0x0

    .line 21251
    iput v0, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$SemanticTrajectoryPose;->x_:F

    .line 21252
    iput v0, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$SemanticTrajectoryPose;->y_:F

    .line 21253
    iput v0, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$SemanticTrajectoryPose;->z_:F

    const/4 v0, 0x0

    .line 21254
    iput v0, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$SemanticTrajectoryPose;->v2Offset_:I

    return-void
.end method

.method static synthetic access$36400()Landroid/car/hardware/xpu/XpuFNgpRouteMessage$SemanticTrajectoryPose;
    .locals 1

    .line 21245
    sget-object v0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$SemanticTrajectoryPose;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuFNgpRouteMessage$SemanticTrajectoryPose;

    return-object v0
.end method

.method static synthetic access$36500(Landroid/car/hardware/xpu/XpuFNgpRouteMessage$SemanticTrajectoryPose;F)V
    .locals 0

    .line 21245
    invoke-direct {p0, p1}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$SemanticTrajectoryPose;->setX(F)V

    return-void
.end method

.method static synthetic access$36600(Landroid/car/hardware/xpu/XpuFNgpRouteMessage$SemanticTrajectoryPose;)V
    .locals 0

    .line 21245
    invoke-direct {p0}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$SemanticTrajectoryPose;->clearX()V

    return-void
.end method

.method static synthetic access$36700(Landroid/car/hardware/xpu/XpuFNgpRouteMessage$SemanticTrajectoryPose;F)V
    .locals 0

    .line 21245
    invoke-direct {p0, p1}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$SemanticTrajectoryPose;->setY(F)V

    return-void
.end method

.method static synthetic access$36800(Landroid/car/hardware/xpu/XpuFNgpRouteMessage$SemanticTrajectoryPose;)V
    .locals 0

    .line 21245
    invoke-direct {p0}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$SemanticTrajectoryPose;->clearY()V

    return-void
.end method

.method static synthetic access$36900(Landroid/car/hardware/xpu/XpuFNgpRouteMessage$SemanticTrajectoryPose;F)V
    .locals 0

    .line 21245
    invoke-direct {p0, p1}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$SemanticTrajectoryPose;->setZ(F)V

    return-void
.end method

.method static synthetic access$37000(Landroid/car/hardware/xpu/XpuFNgpRouteMessage$SemanticTrajectoryPose;)V
    .locals 0

    .line 21245
    invoke-direct {p0}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$SemanticTrajectoryPose;->clearZ()V

    return-void
.end method

.method static synthetic access$37100(Landroid/car/hardware/xpu/XpuFNgpRouteMessage$SemanticTrajectoryPose;I)V
    .locals 0

    .line 21245
    invoke-direct {p0, p1}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$SemanticTrajectoryPose;->setV2Offset(I)V

    return-void
.end method

.method static synthetic access$37200(Landroid/car/hardware/xpu/XpuFNgpRouteMessage$SemanticTrajectoryPose;)V
    .locals 0

    .line 21245
    invoke-direct {p0}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$SemanticTrajectoryPose;->clearV2Offset()V

    return-void
.end method

.method private clearV2Offset()V
    .locals 1

    const/4 v0, 0x0

    .line 21393
    iput v0, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$SemanticTrajectoryPose;->v2Offset_:I

    return-void
.end method

.method private clearX()V
    .locals 1

    const/4 v0, 0x0

    .line 21288
    iput v0, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$SemanticTrajectoryPose;->x_:F

    return-void
.end method

.method private clearY()V
    .locals 1

    const/4 v0, 0x0

    .line 21323
    iput v0, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$SemanticTrajectoryPose;->y_:F

    return-void
.end method

.method private clearZ()V
    .locals 1

    const/4 v0, 0x0

    .line 21358
    iput v0, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$SemanticTrajectoryPose;->z_:F

    return-void
.end method

.method public static getDefaultInstance()Landroid/car/hardware/xpu/XpuFNgpRouteMessage$SemanticTrajectoryPose;
    .locals 1

    .line 21772
    sget-object v0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$SemanticTrajectoryPose;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuFNgpRouteMessage$SemanticTrajectoryPose;

    return-object v0
.end method

.method public static newBuilder()Landroid/car/hardware/xpu/XpuFNgpRouteMessage$SemanticTrajectoryPose$Builder;
    .locals 1

    .line 21499
    sget-object v0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$SemanticTrajectoryPose;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuFNgpRouteMessage$SemanticTrajectoryPose;

    invoke-virtual {v0}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$SemanticTrajectoryPose;->toBuilder()Lcom/android/carsdk/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$SemanticTrajectoryPose$Builder;

    return-object v0
.end method

.method public static newBuilder(Landroid/car/hardware/xpu/XpuFNgpRouteMessage$SemanticTrajectoryPose;)Landroid/car/hardware/xpu/XpuFNgpRouteMessage$SemanticTrajectoryPose$Builder;
    .locals 1

    .line 21502
    sget-object v0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$SemanticTrajectoryPose;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuFNgpRouteMessage$SemanticTrajectoryPose;

    invoke-virtual {v0}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$SemanticTrajectoryPose;->toBuilder()Lcom/android/carsdk/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$SemanticTrajectoryPose$Builder;

    invoke-virtual {v0, p0}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$SemanticTrajectoryPose$Builder;->mergeFrom(Lcom/android/carsdk/protobuf/GeneratedMessageLite;)Lcom/android/carsdk/protobuf/GeneratedMessageLite$Builder;

    move-result-object p0

    check-cast p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$SemanticTrajectoryPose$Builder;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Landroid/car/hardware/xpu/XpuFNgpRouteMessage$SemanticTrajectoryPose;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 21476
    sget-object v0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$SemanticTrajectoryPose;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuFNgpRouteMessage$SemanticTrajectoryPose;

    invoke-static {v0, p0}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$SemanticTrajectoryPose;->parseDelimitedFrom(Lcom/android/carsdk/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$SemanticTrajectoryPose;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/android/carsdk/protobuf/ExtensionRegistryLite;)Landroid/car/hardware/xpu/XpuFNgpRouteMessage$SemanticTrajectoryPose;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 21482
    sget-object v0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$SemanticTrajectoryPose;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuFNgpRouteMessage$SemanticTrajectoryPose;

    invoke-static {v0, p0, p1}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$SemanticTrajectoryPose;->parseDelimitedFrom(Lcom/android/carsdk/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/android/carsdk/protobuf/ExtensionRegistryLite;)Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$SemanticTrajectoryPose;

    return-object p0
.end method

.method public static parseFrom(Lcom/android/carsdk/protobuf/ByteString;)Landroid/car/hardware/xpu/XpuFNgpRouteMessage$SemanticTrajectoryPose;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/carsdk/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 21440
    sget-object v0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$SemanticTrajectoryPose;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuFNgpRouteMessage$SemanticTrajectoryPose;

    invoke-static {v0, p0}, Lcom/android/carsdk/protobuf/GeneratedMessageLite;->parseFrom(Lcom/android/carsdk/protobuf/GeneratedMessageLite;Lcom/android/carsdk/protobuf/ByteString;)Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$SemanticTrajectoryPose;

    return-object p0
.end method

.method public static parseFrom(Lcom/android/carsdk/protobuf/ByteString;Lcom/android/carsdk/protobuf/ExtensionRegistryLite;)Landroid/car/hardware/xpu/XpuFNgpRouteMessage$SemanticTrajectoryPose;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/carsdk/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 21447
    sget-object v0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$SemanticTrajectoryPose;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuFNgpRouteMessage$SemanticTrajectoryPose;

    invoke-static {v0, p0, p1}, Lcom/android/carsdk/protobuf/GeneratedMessageLite;->parseFrom(Lcom/android/carsdk/protobuf/GeneratedMessageLite;Lcom/android/carsdk/protobuf/ByteString;Lcom/android/carsdk/protobuf/ExtensionRegistryLite;)Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$SemanticTrajectoryPose;

    return-object p0
.end method

.method public static parseFrom(Lcom/android/carsdk/protobuf/CodedInputStream;)Landroid/car/hardware/xpu/XpuFNgpRouteMessage$SemanticTrajectoryPose;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 21487
    sget-object v0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$SemanticTrajectoryPose;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuFNgpRouteMessage$SemanticTrajectoryPose;

    invoke-static {v0, p0}, Lcom/android/carsdk/protobuf/GeneratedMessageLite;->parseFrom(Lcom/android/carsdk/protobuf/GeneratedMessageLite;Lcom/android/carsdk/protobuf/CodedInputStream;)Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$SemanticTrajectoryPose;

    return-object p0
.end method

.method public static parseFrom(Lcom/android/carsdk/protobuf/CodedInputStream;Lcom/android/carsdk/protobuf/ExtensionRegistryLite;)Landroid/car/hardware/xpu/XpuFNgpRouteMessage$SemanticTrajectoryPose;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 21494
    sget-object v0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$SemanticTrajectoryPose;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuFNgpRouteMessage$SemanticTrajectoryPose;

    invoke-static {v0, p0, p1}, Lcom/android/carsdk/protobuf/GeneratedMessageLite;->parseFrom(Lcom/android/carsdk/protobuf/GeneratedMessageLite;Lcom/android/carsdk/protobuf/CodedInputStream;Lcom/android/carsdk/protobuf/ExtensionRegistryLite;)Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$SemanticTrajectoryPose;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Landroid/car/hardware/xpu/XpuFNgpRouteMessage$SemanticTrajectoryPose;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 21464
    sget-object v0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$SemanticTrajectoryPose;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuFNgpRouteMessage$SemanticTrajectoryPose;

    invoke-static {v0, p0}, Lcom/android/carsdk/protobuf/GeneratedMessageLite;->parseFrom(Lcom/android/carsdk/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$SemanticTrajectoryPose;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/android/carsdk/protobuf/ExtensionRegistryLite;)Landroid/car/hardware/xpu/XpuFNgpRouteMessage$SemanticTrajectoryPose;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 21471
    sget-object v0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$SemanticTrajectoryPose;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuFNgpRouteMessage$SemanticTrajectoryPose;

    invoke-static {v0, p0, p1}, Lcom/android/carsdk/protobuf/GeneratedMessageLite;->parseFrom(Lcom/android/carsdk/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/android/carsdk/protobuf/ExtensionRegistryLite;)Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$SemanticTrajectoryPose;

    return-object p0
.end method

.method public static parseFrom([B)Landroid/car/hardware/xpu/XpuFNgpRouteMessage$SemanticTrajectoryPose;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/carsdk/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 21452
    sget-object v0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$SemanticTrajectoryPose;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuFNgpRouteMessage$SemanticTrajectoryPose;

    invoke-static {v0, p0}, Lcom/android/carsdk/protobuf/GeneratedMessageLite;->parseFrom(Lcom/android/carsdk/protobuf/GeneratedMessageLite;[B)Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$SemanticTrajectoryPose;

    return-object p0
.end method

.method public static parseFrom([BLcom/android/carsdk/protobuf/ExtensionRegistryLite;)Landroid/car/hardware/xpu/XpuFNgpRouteMessage$SemanticTrajectoryPose;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/carsdk/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 21459
    sget-object v0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$SemanticTrajectoryPose;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuFNgpRouteMessage$SemanticTrajectoryPose;

    invoke-static {v0, p0, p1}, Lcom/android/carsdk/protobuf/GeneratedMessageLite;->parseFrom(Lcom/android/carsdk/protobuf/GeneratedMessageLite;[BLcom/android/carsdk/protobuf/ExtensionRegistryLite;)Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$SemanticTrajectoryPose;

    return-object p0
.end method

.method public static parser()Lcom/android/carsdk/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/android/carsdk/protobuf/Parser<",
            "Landroid/car/hardware/xpu/XpuFNgpRouteMessage$SemanticTrajectoryPose;",
            ">;"
        }
    .end annotation

    .line 21778
    sget-object v0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$SemanticTrajectoryPose;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuFNgpRouteMessage$SemanticTrajectoryPose;

    invoke-virtual {v0}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$SemanticTrajectoryPose;->getParserForType()Lcom/android/carsdk/protobuf/Parser;

    move-result-object v0

    return-object v0
.end method

.method private setV2Offset(I)V
    .locals 0

    .line 21382
    iput p1, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$SemanticTrajectoryPose;->v2Offset_:I

    return-void
.end method

.method private setX(F)V
    .locals 0

    .line 21277
    iput p1, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$SemanticTrajectoryPose;->x_:F

    return-void
.end method

.method private setY(F)V
    .locals 0

    .line 21312
    iput p1, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$SemanticTrajectoryPose;->y_:F

    return-void
.end method

.method private setZ(F)V
    .locals 0

    .line 21347
    iput p1, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$SemanticTrajectoryPose;->z_:F

    return-void
.end method


# virtual methods
.method protected final dynamicMethod(Lcom/android/carsdk/protobuf/GeneratedMessageLite$MethodToInvoke;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    .line 21668
    sget-object v0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$1;->$SwitchMap$com$google$protobuf$GeneratedMessageLite$MethodToInvoke:[I

    invoke-virtual {p1}, Lcom/android/carsdk/protobuf/GeneratedMessageLite$MethodToInvoke;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x1

    packed-switch p1, :pswitch_data_0

    .line 21760
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1

    .line 21751
    :pswitch_0
    sget-object p1, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$SemanticTrajectoryPose;->PARSER:Lcom/android/carsdk/protobuf/Parser;

    if-nez p1, :cond_1

    const-class p1, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$SemanticTrajectoryPose;

    monitor-enter p1

    .line 21752
    :try_start_0
    sget-object p2, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$SemanticTrajectoryPose;->PARSER:Lcom/android/carsdk/protobuf/Parser;

    if-nez p2, :cond_0

    .line 21753
    new-instance p2, Lcom/android/carsdk/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;

    sget-object p3, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$SemanticTrajectoryPose;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuFNgpRouteMessage$SemanticTrajectoryPose;

    invoke-direct {p2, p3}, Lcom/android/carsdk/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;-><init>(Lcom/android/carsdk/protobuf/GeneratedMessageLite;)V

    sput-object p2, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$SemanticTrajectoryPose;->PARSER:Lcom/android/carsdk/protobuf/Parser;

    .line 21755
    :cond_0
    monitor-exit p1

    goto :goto_0

    :catchall_0
    move-exception p2

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p2

    .line 21757
    :cond_1
    :goto_0
    sget-object p1, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$SemanticTrajectoryPose;->PARSER:Lcom/android/carsdk/protobuf/Parser;

    return-object p1

    .line 21698
    :pswitch_1
    check-cast p2, Lcom/android/carsdk/protobuf/CodedInputStream;

    .line 21700
    check-cast p3, Lcom/android/carsdk/protobuf/ExtensionRegistryLite;

    :cond_2
    :goto_1
    if-nez v1, :cond_8

    .line 21705
    :try_start_1
    invoke-virtual {p2}, Lcom/android/carsdk/protobuf/CodedInputStream;->readTag()I

    move-result p1

    if-eqz p1, :cond_7

    const/16 p3, 0xd

    if-eq p1, p3, :cond_6

    const/16 p3, 0x15

    if-eq p1, p3, :cond_5

    const/16 p3, 0x1d

    if-eq p1, p3, :cond_4

    const/16 p3, 0x20

    if-eq p1, p3, :cond_3

    .line 21711
    invoke-virtual {p2, p1}, Lcom/android/carsdk/protobuf/CodedInputStream;->skipField(I)Z

    move-result p1

    if-nez p1, :cond_2

    goto :goto_2

    .line 21733
    :cond_3
    invoke-virtual {p2}, Lcom/android/carsdk/protobuf/CodedInputStream;->readInt32()I

    move-result p1

    iput p1, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$SemanticTrajectoryPose;->v2Offset_:I

    goto :goto_1

    .line 21728
    :cond_4
    invoke-virtual {p2}, Lcom/android/carsdk/protobuf/CodedInputStream;->readFloat()F

    move-result p1

    iput p1, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$SemanticTrajectoryPose;->z_:F

    goto :goto_1

    .line 21723
    :cond_5
    invoke-virtual {p2}, Lcom/android/carsdk/protobuf/CodedInputStream;->readFloat()F

    move-result p1

    iput p1, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$SemanticTrajectoryPose;->y_:F

    goto :goto_1

    .line 21718
    :cond_6
    invoke-virtual {p2}, Lcom/android/carsdk/protobuf/CodedInputStream;->readFloat()F

    move-result p1

    iput p1, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$SemanticTrajectoryPose;->x_:F
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

    .line 21741
    :try_start_2
    new-instance p2, Ljava/lang/RuntimeException;

    new-instance p3, Lcom/android/carsdk/protobuf/InvalidProtocolBufferException;

    .line 21743
    invoke-virtual {p1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p3, p1}, Lcom/android/carsdk/protobuf/InvalidProtocolBufferException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, p0}, Lcom/android/carsdk/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/android/carsdk/protobuf/MessageLite;)Lcom/android/carsdk/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p2

    :catch_1
    move-exception p1

    .line 21739
    new-instance p2, Ljava/lang/RuntimeException;

    invoke-virtual {p1, p0}, Lcom/android/carsdk/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/android/carsdk/protobuf/MessageLite;)Lcom/android/carsdk/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 21744
    :goto_3
    throw p1

    .line 21748
    :cond_8
    :pswitch_2
    sget-object p1, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$SemanticTrajectoryPose;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuFNgpRouteMessage$SemanticTrajectoryPose;

    return-object p1

    .line 21682
    :pswitch_3
    check-cast p2, Lcom/android/carsdk/protobuf/GeneratedMessageLite$Visitor;

    .line 21683
    check-cast p3, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$SemanticTrajectoryPose;

    .line 21684
    iget p1, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$SemanticTrajectoryPose;->x_:F

    const/4 v0, 0x0

    cmpl-float v3, p1, v0

    if-eqz v3, :cond_9

    move v3, v2

    goto :goto_4

    :cond_9
    move v3, v1

    :goto_4
    iget v4, p3, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$SemanticTrajectoryPose;->x_:F

    cmpl-float v5, v4, v0

    if-eqz v5, :cond_a

    move v5, v2

    goto :goto_5

    :cond_a
    move v5, v1

    :goto_5
    invoke-interface {p2, v3, p1, v5, v4}, Lcom/android/carsdk/protobuf/GeneratedMessageLite$Visitor;->visitFloat(ZFZF)F

    move-result p1

    iput p1, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$SemanticTrajectoryPose;->x_:F

    .line 21686
    iget p1, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$SemanticTrajectoryPose;->y_:F

    cmpl-float v3, p1, v0

    if-eqz v3, :cond_b

    move v3, v2

    goto :goto_6

    :cond_b
    move v3, v1

    :goto_6
    iget v4, p3, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$SemanticTrajectoryPose;->y_:F

    cmpl-float v5, v4, v0

    if-eqz v5, :cond_c

    move v5, v2

    goto :goto_7

    :cond_c
    move v5, v1

    :goto_7
    invoke-interface {p2, v3, p1, v5, v4}, Lcom/android/carsdk/protobuf/GeneratedMessageLite$Visitor;->visitFloat(ZFZF)F

    move-result p1

    iput p1, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$SemanticTrajectoryPose;->y_:F

    .line 21688
    iget p1, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$SemanticTrajectoryPose;->z_:F

    cmpl-float v3, p1, v0

    if-eqz v3, :cond_d

    move v3, v2

    goto :goto_8

    :cond_d
    move v3, v1

    :goto_8
    iget v4, p3, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$SemanticTrajectoryPose;->z_:F

    cmpl-float v0, v4, v0

    if-eqz v0, :cond_e

    move v0, v2

    goto :goto_9

    :cond_e
    move v0, v1

    :goto_9
    invoke-interface {p2, v3, p1, v0, v4}, Lcom/android/carsdk/protobuf/GeneratedMessageLite$Visitor;->visitFloat(ZFZF)F

    move-result p1

    iput p1, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$SemanticTrajectoryPose;->z_:F

    .line 21690
    iget p1, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$SemanticTrajectoryPose;->v2Offset_:I

    if-eqz p1, :cond_f

    move v0, v2

    goto :goto_a

    :cond_f
    move v0, v1

    :goto_a
    iget p3, p3, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$SemanticTrajectoryPose;->v2Offset_:I

    if-eqz p3, :cond_10

    move v1, v2

    :cond_10
    invoke-interface {p2, v0, p1, v1, p3}, Lcom/android/carsdk/protobuf/GeneratedMessageLite$Visitor;->visitInt(ZIZI)I

    move-result p1

    iput p1, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$SemanticTrajectoryPose;->v2Offset_:I

    .line 21692
    sget-object p1, Lcom/android/carsdk/protobuf/GeneratedMessageLite$MergeFromVisitor;->INSTANCE:Lcom/android/carsdk/protobuf/GeneratedMessageLite$MergeFromVisitor;

    return-object p0

    .line 21679
    :pswitch_4
    new-instance p1, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$SemanticTrajectoryPose$Builder;

    invoke-direct {p1, v0}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$SemanticTrajectoryPose$Builder;-><init>(Landroid/car/hardware/xpu/XpuFNgpRouteMessage$1;)V

    return-object p1

    :pswitch_5
    return-object v0

    .line 21673
    :pswitch_6
    sget-object p1, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$SemanticTrajectoryPose;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuFNgpRouteMessage$SemanticTrajectoryPose;

    return-object p1

    .line 21670
    :pswitch_7
    new-instance p1, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$SemanticTrajectoryPose;

    invoke-direct {p1}, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$SemanticTrajectoryPose;-><init>()V

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

.method public getSerializedSize()I
    .locals 4

    .line 21413
    iget v0, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$SemanticTrajectoryPose;->memoizedSerializedSize:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    return v0

    :cond_0
    const/4 v0, 0x0

    .line 21417
    iget v1, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$SemanticTrajectoryPose;->x_:F

    const/4 v2, 0x0

    cmpl-float v3, v1, v2

    if-eqz v3, :cond_1

    const/4 v3, 0x1

    .line 21419
    invoke-static {v3, v1}, Lcom/android/carsdk/protobuf/CodedOutputStream;->computeFloatSize(IF)I

    move-result v1

    add-int/2addr v0, v1

    .line 21421
    :cond_1
    iget v1, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$SemanticTrajectoryPose;->y_:F

    cmpl-float v3, v1, v2

    if-eqz v3, :cond_2

    const/4 v3, 0x2

    .line 21423
    invoke-static {v3, v1}, Lcom/android/carsdk/protobuf/CodedOutputStream;->computeFloatSize(IF)I

    move-result v1

    add-int/2addr v0, v1

    .line 21425
    :cond_2
    iget v1, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$SemanticTrajectoryPose;->z_:F

    cmpl-float v2, v1, v2

    if-eqz v2, :cond_3

    const/4 v2, 0x3

    .line 21427
    invoke-static {v2, v1}, Lcom/android/carsdk/protobuf/CodedOutputStream;->computeFloatSize(IF)I

    move-result v1

    add-int/2addr v0, v1

    .line 21429
    :cond_3
    iget v1, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$SemanticTrajectoryPose;->v2Offset_:I

    if-eqz v1, :cond_4

    const/4 v2, 0x4

    .line 21431
    invoke-static {v2, v1}, Lcom/android/carsdk/protobuf/CodedOutputStream;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 21433
    :cond_4
    iput v0, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$SemanticTrajectoryPose;->memoizedSerializedSize:I

    return v0
.end method

.method public getV2Offset()I
    .locals 1

    .line 21371
    iget v0, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$SemanticTrajectoryPose;->v2Offset_:I

    return v0
.end method

.method public getX()F
    .locals 1

    .line 21266
    iget v0, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$SemanticTrajectoryPose;->x_:F

    return v0
.end method

.method public getY()F
    .locals 1

    .line 21301
    iget v0, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$SemanticTrajectoryPose;->y_:F

    return v0
.end method

.method public getZ()F
    .locals 1

    .line 21336
    iget v0, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$SemanticTrajectoryPose;->z_:F

    return v0
.end method

.method public writeTo(Lcom/android/carsdk/protobuf/CodedOutputStream;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 21398
    iget v0, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$SemanticTrajectoryPose;->x_:F

    const/4 v1, 0x0

    cmpl-float v2, v0, v1

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    .line 21399
    invoke-virtual {p1, v2, v0}, Lcom/android/carsdk/protobuf/CodedOutputStream;->writeFloat(IF)V

    .line 21401
    :cond_0
    iget v0, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$SemanticTrajectoryPose;->y_:F

    cmpl-float v2, v0, v1

    if-eqz v2, :cond_1

    const/4 v2, 0x2

    .line 21402
    invoke-virtual {p1, v2, v0}, Lcom/android/carsdk/protobuf/CodedOutputStream;->writeFloat(IF)V

    .line 21404
    :cond_1
    iget v0, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$SemanticTrajectoryPose;->z_:F

    cmpl-float v1, v0, v1

    if-eqz v1, :cond_2

    const/4 v1, 0x3

    .line 21405
    invoke-virtual {p1, v1, v0}, Lcom/android/carsdk/protobuf/CodedOutputStream;->writeFloat(IF)V

    .line 21407
    :cond_2
    iget v0, p0, Landroid/car/hardware/xpu/XpuFNgpRouteMessage$SemanticTrajectoryPose;->v2Offset_:I

    if-eqz v0, :cond_3

    const/4 v1, 0x4

    .line 21408
    invoke-virtual {p1, v1, v0}, Lcom/android/carsdk/protobuf/CodedOutputStream;->writeInt32(II)V

    :cond_3
    return-void
.end method
