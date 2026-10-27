.class public final Landroid/car/hardware/xpu/XpuApEssentialMsg$Point3f;
.super Lcom/android/carsdk/protobuf/GeneratedMessageLite;
.source "XpuApEssentialMsg.java"

# interfaces
.implements Landroid/car/hardware/xpu/XpuApEssentialMsg$Point3fOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/car/hardware/xpu/XpuApEssentialMsg;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Point3f"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/car/hardware/xpu/XpuApEssentialMsg$Point3f$Builder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/carsdk/protobuf/GeneratedMessageLite<",
        "Landroid/car/hardware/xpu/XpuApEssentialMsg$Point3f;",
        "Landroid/car/hardware/xpu/XpuApEssentialMsg$Point3f$Builder;",
        ">;",
        "Landroid/car/hardware/xpu/XpuApEssentialMsg$Point3fOrBuilder;"
    }
.end annotation


# static fields
.field private static final DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuApEssentialMsg$Point3f;

.field private static volatile PARSER:Lcom/android/carsdk/protobuf/Parser; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/carsdk/protobuf/Parser<",
            "Landroid/car/hardware/xpu/XpuApEssentialMsg$Point3f;",
            ">;"
        }
    .end annotation
.end field

.field public static final X_FIELD_NUMBER:I = 0x1

.field public static final Y_FIELD_NUMBER:I = 0x2

.field public static final Z_FIELD_NUMBER:I = 0x3


# instance fields
.field private x_:F

.field private y_:F

.field private z_:F


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 555
    new-instance v0, Landroid/car/hardware/xpu/XpuApEssentialMsg$Point3f;

    invoke-direct {v0}, Landroid/car/hardware/xpu/XpuApEssentialMsg$Point3f;-><init>()V

    sput-object v0, Landroid/car/hardware/xpu/XpuApEssentialMsg$Point3f;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuApEssentialMsg$Point3f;

    .line 556
    invoke-virtual {v0}, Landroid/car/hardware/xpu/XpuApEssentialMsg$Point3f;->makeImmutable()V

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 199
    invoke-direct {p0}, Lcom/android/carsdk/protobuf/GeneratedMessageLite;-><init>()V

    const/4 v0, 0x0

    .line 200
    iput v0, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$Point3f;->x_:F

    .line 201
    iput v0, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$Point3f;->y_:F

    .line 202
    iput v0, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$Point3f;->z_:F

    return-void
.end method

.method static synthetic access$000()Landroid/car/hardware/xpu/XpuApEssentialMsg$Point3f;
    .locals 1

    .line 194
    sget-object v0, Landroid/car/hardware/xpu/XpuApEssentialMsg$Point3f;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuApEssentialMsg$Point3f;

    return-object v0
.end method

.method static synthetic access$100(Landroid/car/hardware/xpu/XpuApEssentialMsg$Point3f;F)V
    .locals 0

    .line 194
    invoke-direct {p0, p1}, Landroid/car/hardware/xpu/XpuApEssentialMsg$Point3f;->setX(F)V

    return-void
.end method

.method static synthetic access$200(Landroid/car/hardware/xpu/XpuApEssentialMsg$Point3f;)V
    .locals 0

    .line 194
    invoke-direct {p0}, Landroid/car/hardware/xpu/XpuApEssentialMsg$Point3f;->clearX()V

    return-void
.end method

.method static synthetic access$300(Landroid/car/hardware/xpu/XpuApEssentialMsg$Point3f;F)V
    .locals 0

    .line 194
    invoke-direct {p0, p1}, Landroid/car/hardware/xpu/XpuApEssentialMsg$Point3f;->setY(F)V

    return-void
.end method

.method static synthetic access$400(Landroid/car/hardware/xpu/XpuApEssentialMsg$Point3f;)V
    .locals 0

    .line 194
    invoke-direct {p0}, Landroid/car/hardware/xpu/XpuApEssentialMsg$Point3f;->clearY()V

    return-void
.end method

.method static synthetic access$500(Landroid/car/hardware/xpu/XpuApEssentialMsg$Point3f;F)V
    .locals 0

    .line 194
    invoke-direct {p0, p1}, Landroid/car/hardware/xpu/XpuApEssentialMsg$Point3f;->setZ(F)V

    return-void
.end method

.method static synthetic access$600(Landroid/car/hardware/xpu/XpuApEssentialMsg$Point3f;)V
    .locals 0

    .line 194
    invoke-direct {p0}, Landroid/car/hardware/xpu/XpuApEssentialMsg$Point3f;->clearZ()V

    return-void
.end method

.method private clearX()V
    .locals 1

    const/4 v0, 0x0

    .line 224
    iput v0, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$Point3f;->x_:F

    return-void
.end method

.method private clearY()V
    .locals 1

    const/4 v0, 0x0

    .line 247
    iput v0, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$Point3f;->y_:F

    return-void
.end method

.method private clearZ()V
    .locals 1

    const/4 v0, 0x0

    .line 270
    iput v0, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$Point3f;->z_:F

    return-void
.end method

.method public static getDefaultInstance()Landroid/car/hardware/xpu/XpuApEssentialMsg$Point3f;
    .locals 1

    .line 560
    sget-object v0, Landroid/car/hardware/xpu/XpuApEssentialMsg$Point3f;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuApEssentialMsg$Point3f;

    return-object v0
.end method

.method public static newBuilder()Landroid/car/hardware/xpu/XpuApEssentialMsg$Point3f$Builder;
    .locals 1

    .line 369
    sget-object v0, Landroid/car/hardware/xpu/XpuApEssentialMsg$Point3f;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuApEssentialMsg$Point3f;

    invoke-virtual {v0}, Landroid/car/hardware/xpu/XpuApEssentialMsg$Point3f;->toBuilder()Lcom/android/carsdk/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Landroid/car/hardware/xpu/XpuApEssentialMsg$Point3f$Builder;

    return-object v0
.end method

.method public static newBuilder(Landroid/car/hardware/xpu/XpuApEssentialMsg$Point3f;)Landroid/car/hardware/xpu/XpuApEssentialMsg$Point3f$Builder;
    .locals 1

    .line 372
    sget-object v0, Landroid/car/hardware/xpu/XpuApEssentialMsg$Point3f;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuApEssentialMsg$Point3f;

    invoke-virtual {v0}, Landroid/car/hardware/xpu/XpuApEssentialMsg$Point3f;->toBuilder()Lcom/android/carsdk/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Landroid/car/hardware/xpu/XpuApEssentialMsg$Point3f$Builder;

    invoke-virtual {v0, p0}, Landroid/car/hardware/xpu/XpuApEssentialMsg$Point3f$Builder;->mergeFrom(Lcom/android/carsdk/protobuf/GeneratedMessageLite;)Lcom/android/carsdk/protobuf/GeneratedMessageLite$Builder;

    move-result-object p0

    check-cast p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$Point3f$Builder;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Landroid/car/hardware/xpu/XpuApEssentialMsg$Point3f;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 346
    sget-object v0, Landroid/car/hardware/xpu/XpuApEssentialMsg$Point3f;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuApEssentialMsg$Point3f;

    invoke-static {v0, p0}, Landroid/car/hardware/xpu/XpuApEssentialMsg$Point3f;->parseDelimitedFrom(Lcom/android/carsdk/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$Point3f;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/android/carsdk/protobuf/ExtensionRegistryLite;)Landroid/car/hardware/xpu/XpuApEssentialMsg$Point3f;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 352
    sget-object v0, Landroid/car/hardware/xpu/XpuApEssentialMsg$Point3f;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuApEssentialMsg$Point3f;

    invoke-static {v0, p0, p1}, Landroid/car/hardware/xpu/XpuApEssentialMsg$Point3f;->parseDelimitedFrom(Lcom/android/carsdk/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/android/carsdk/protobuf/ExtensionRegistryLite;)Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$Point3f;

    return-object p0
.end method

.method public static parseFrom(Lcom/android/carsdk/protobuf/ByteString;)Landroid/car/hardware/xpu/XpuApEssentialMsg$Point3f;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/carsdk/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 310
    sget-object v0, Landroid/car/hardware/xpu/XpuApEssentialMsg$Point3f;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuApEssentialMsg$Point3f;

    invoke-static {v0, p0}, Lcom/android/carsdk/protobuf/GeneratedMessageLite;->parseFrom(Lcom/android/carsdk/protobuf/GeneratedMessageLite;Lcom/android/carsdk/protobuf/ByteString;)Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$Point3f;

    return-object p0
.end method

.method public static parseFrom(Lcom/android/carsdk/protobuf/ByteString;Lcom/android/carsdk/protobuf/ExtensionRegistryLite;)Landroid/car/hardware/xpu/XpuApEssentialMsg$Point3f;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/carsdk/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 317
    sget-object v0, Landroid/car/hardware/xpu/XpuApEssentialMsg$Point3f;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuApEssentialMsg$Point3f;

    invoke-static {v0, p0, p1}, Lcom/android/carsdk/protobuf/GeneratedMessageLite;->parseFrom(Lcom/android/carsdk/protobuf/GeneratedMessageLite;Lcom/android/carsdk/protobuf/ByteString;Lcom/android/carsdk/protobuf/ExtensionRegistryLite;)Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$Point3f;

    return-object p0
.end method

.method public static parseFrom(Lcom/android/carsdk/protobuf/CodedInputStream;)Landroid/car/hardware/xpu/XpuApEssentialMsg$Point3f;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 357
    sget-object v0, Landroid/car/hardware/xpu/XpuApEssentialMsg$Point3f;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuApEssentialMsg$Point3f;

    invoke-static {v0, p0}, Lcom/android/carsdk/protobuf/GeneratedMessageLite;->parseFrom(Lcom/android/carsdk/protobuf/GeneratedMessageLite;Lcom/android/carsdk/protobuf/CodedInputStream;)Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$Point3f;

    return-object p0
.end method

.method public static parseFrom(Lcom/android/carsdk/protobuf/CodedInputStream;Lcom/android/carsdk/protobuf/ExtensionRegistryLite;)Landroid/car/hardware/xpu/XpuApEssentialMsg$Point3f;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 364
    sget-object v0, Landroid/car/hardware/xpu/XpuApEssentialMsg$Point3f;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuApEssentialMsg$Point3f;

    invoke-static {v0, p0, p1}, Lcom/android/carsdk/protobuf/GeneratedMessageLite;->parseFrom(Lcom/android/carsdk/protobuf/GeneratedMessageLite;Lcom/android/carsdk/protobuf/CodedInputStream;Lcom/android/carsdk/protobuf/ExtensionRegistryLite;)Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$Point3f;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Landroid/car/hardware/xpu/XpuApEssentialMsg$Point3f;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 334
    sget-object v0, Landroid/car/hardware/xpu/XpuApEssentialMsg$Point3f;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuApEssentialMsg$Point3f;

    invoke-static {v0, p0}, Lcom/android/carsdk/protobuf/GeneratedMessageLite;->parseFrom(Lcom/android/carsdk/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$Point3f;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/android/carsdk/protobuf/ExtensionRegistryLite;)Landroid/car/hardware/xpu/XpuApEssentialMsg$Point3f;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 341
    sget-object v0, Landroid/car/hardware/xpu/XpuApEssentialMsg$Point3f;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuApEssentialMsg$Point3f;

    invoke-static {v0, p0, p1}, Lcom/android/carsdk/protobuf/GeneratedMessageLite;->parseFrom(Lcom/android/carsdk/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/android/carsdk/protobuf/ExtensionRegistryLite;)Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$Point3f;

    return-object p0
.end method

.method public static parseFrom([B)Landroid/car/hardware/xpu/XpuApEssentialMsg$Point3f;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/carsdk/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 322
    sget-object v0, Landroid/car/hardware/xpu/XpuApEssentialMsg$Point3f;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuApEssentialMsg$Point3f;

    invoke-static {v0, p0}, Lcom/android/carsdk/protobuf/GeneratedMessageLite;->parseFrom(Lcom/android/carsdk/protobuf/GeneratedMessageLite;[B)Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$Point3f;

    return-object p0
.end method

.method public static parseFrom([BLcom/android/carsdk/protobuf/ExtensionRegistryLite;)Landroid/car/hardware/xpu/XpuApEssentialMsg$Point3f;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/carsdk/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 329
    sget-object v0, Landroid/car/hardware/xpu/XpuApEssentialMsg$Point3f;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuApEssentialMsg$Point3f;

    invoke-static {v0, p0, p1}, Lcom/android/carsdk/protobuf/GeneratedMessageLite;->parseFrom(Lcom/android/carsdk/protobuf/GeneratedMessageLite;[BLcom/android/carsdk/protobuf/ExtensionRegistryLite;)Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$Point3f;

    return-object p0
.end method

.method public static parser()Lcom/android/carsdk/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/android/carsdk/protobuf/Parser<",
            "Landroid/car/hardware/xpu/XpuApEssentialMsg$Point3f;",
            ">;"
        }
    .end annotation

    .line 566
    sget-object v0, Landroid/car/hardware/xpu/XpuApEssentialMsg$Point3f;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuApEssentialMsg$Point3f;

    invoke-virtual {v0}, Landroid/car/hardware/xpu/XpuApEssentialMsg$Point3f;->getParserForType()Lcom/android/carsdk/protobuf/Parser;

    move-result-object v0

    return-object v0
.end method

.method private setX(F)V
    .locals 0

    .line 217
    iput p1, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$Point3f;->x_:F

    return-void
.end method

.method private setY(F)V
    .locals 0

    .line 240
    iput p1, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$Point3f;->y_:F

    return-void
.end method

.method private setZ(F)V
    .locals 0

    .line 263
    iput p1, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$Point3f;->z_:F

    return-void
.end method


# virtual methods
.method protected final dynamicMethod(Lcom/android/carsdk/protobuf/GeneratedMessageLite$MethodToInvoke;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    .line 463
    sget-object v0, Landroid/car/hardware/xpu/XpuApEssentialMsg$1;->$SwitchMap$com$google$protobuf$GeneratedMessageLite$MethodToInvoke:[I

    invoke-virtual {p1}, Lcom/android/carsdk/protobuf/GeneratedMessageLite$MethodToInvoke;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x1

    packed-switch p1, :pswitch_data_0

    .line 548
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1

    .line 539
    :pswitch_0
    sget-object p1, Landroid/car/hardware/xpu/XpuApEssentialMsg$Point3f;->PARSER:Lcom/android/carsdk/protobuf/Parser;

    if-nez p1, :cond_1

    const-class p1, Landroid/car/hardware/xpu/XpuApEssentialMsg$Point3f;

    monitor-enter p1

    .line 540
    :try_start_0
    sget-object p2, Landroid/car/hardware/xpu/XpuApEssentialMsg$Point3f;->PARSER:Lcom/android/carsdk/protobuf/Parser;

    if-nez p2, :cond_0

    .line 541
    new-instance p2, Lcom/android/carsdk/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;

    sget-object p3, Landroid/car/hardware/xpu/XpuApEssentialMsg$Point3f;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuApEssentialMsg$Point3f;

    invoke-direct {p2, p3}, Lcom/android/carsdk/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;-><init>(Lcom/android/carsdk/protobuf/GeneratedMessageLite;)V

    sput-object p2, Landroid/car/hardware/xpu/XpuApEssentialMsg$Point3f;->PARSER:Lcom/android/carsdk/protobuf/Parser;

    .line 543
    :cond_0
    monitor-exit p1

    goto :goto_0

    :catchall_0
    move-exception p2

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p2

    .line 545
    :cond_1
    :goto_0
    sget-object p1, Landroid/car/hardware/xpu/XpuApEssentialMsg$Point3f;->PARSER:Lcom/android/carsdk/protobuf/Parser;

    return-object p1

    .line 491
    :pswitch_1
    check-cast p2, Lcom/android/carsdk/protobuf/CodedInputStream;

    .line 493
    check-cast p3, Lcom/android/carsdk/protobuf/ExtensionRegistryLite;

    :cond_2
    :goto_1
    if-nez v1, :cond_7

    .line 498
    :try_start_1
    invoke-virtual {p2}, Lcom/android/carsdk/protobuf/CodedInputStream;->readTag()I

    move-result p1

    if-eqz p1, :cond_6

    const/16 p3, 0xd

    if-eq p1, p3, :cond_5

    const/16 p3, 0x15

    if-eq p1, p3, :cond_4

    const/16 p3, 0x1d

    if-eq p1, p3, :cond_3

    .line 504
    invoke-virtual {p2, p1}, Lcom/android/carsdk/protobuf/CodedInputStream;->skipField(I)Z

    move-result p1

    if-nez p1, :cond_2

    goto :goto_2

    .line 521
    :cond_3
    invoke-virtual {p2}, Lcom/android/carsdk/protobuf/CodedInputStream;->readFloat()F

    move-result p1

    iput p1, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$Point3f;->z_:F

    goto :goto_1

    .line 516
    :cond_4
    invoke-virtual {p2}, Lcom/android/carsdk/protobuf/CodedInputStream;->readFloat()F

    move-result p1

    iput p1, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$Point3f;->y_:F

    goto :goto_1

    .line 511
    :cond_5
    invoke-virtual {p2}, Lcom/android/carsdk/protobuf/CodedInputStream;->readFloat()F

    move-result p1

    iput p1, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$Point3f;->x_:F
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

    .line 529
    :try_start_2
    new-instance p2, Ljava/lang/RuntimeException;

    new-instance p3, Lcom/android/carsdk/protobuf/InvalidProtocolBufferException;

    .line 531
    invoke-virtual {p1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p3, p1}, Lcom/android/carsdk/protobuf/InvalidProtocolBufferException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, p0}, Lcom/android/carsdk/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/android/carsdk/protobuf/MessageLite;)Lcom/android/carsdk/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p2

    :catch_1
    move-exception p1

    .line 527
    new-instance p2, Ljava/lang/RuntimeException;

    invoke-virtual {p1, p0}, Lcom/android/carsdk/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/android/carsdk/protobuf/MessageLite;)Lcom/android/carsdk/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 532
    :goto_3
    throw p1

    .line 536
    :cond_7
    :pswitch_2
    sget-object p1, Landroid/car/hardware/xpu/XpuApEssentialMsg$Point3f;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuApEssentialMsg$Point3f;

    return-object p1

    .line 477
    :pswitch_3
    check-cast p2, Lcom/android/carsdk/protobuf/GeneratedMessageLite$Visitor;

    .line 478
    check-cast p3, Landroid/car/hardware/xpu/XpuApEssentialMsg$Point3f;

    .line 479
    iget p1, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$Point3f;->x_:F

    const/4 v0, 0x0

    cmpl-float v3, p1, v0

    if-eqz v3, :cond_8

    move v3, v2

    goto :goto_4

    :cond_8
    move v3, v1

    :goto_4
    iget v4, p3, Landroid/car/hardware/xpu/XpuApEssentialMsg$Point3f;->x_:F

    cmpl-float v5, v4, v0

    if-eqz v5, :cond_9

    move v5, v2

    goto :goto_5

    :cond_9
    move v5, v1

    :goto_5
    invoke-interface {p2, v3, p1, v5, v4}, Lcom/android/carsdk/protobuf/GeneratedMessageLite$Visitor;->visitFloat(ZFZF)F

    move-result p1

    iput p1, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$Point3f;->x_:F

    .line 481
    iget p1, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$Point3f;->y_:F

    cmpl-float v3, p1, v0

    if-eqz v3, :cond_a

    move v3, v2

    goto :goto_6

    :cond_a
    move v3, v1

    :goto_6
    iget v4, p3, Landroid/car/hardware/xpu/XpuApEssentialMsg$Point3f;->y_:F

    cmpl-float v5, v4, v0

    if-eqz v5, :cond_b

    move v5, v2

    goto :goto_7

    :cond_b
    move v5, v1

    :goto_7
    invoke-interface {p2, v3, p1, v5, v4}, Lcom/android/carsdk/protobuf/GeneratedMessageLite$Visitor;->visitFloat(ZFZF)F

    move-result p1

    iput p1, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$Point3f;->y_:F

    .line 483
    iget p1, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$Point3f;->z_:F

    cmpl-float v3, p1, v0

    if-eqz v3, :cond_c

    move v3, v2

    goto :goto_8

    :cond_c
    move v3, v1

    :goto_8
    iget p3, p3, Landroid/car/hardware/xpu/XpuApEssentialMsg$Point3f;->z_:F

    cmpl-float v0, p3, v0

    if-eqz v0, :cond_d

    move v1, v2

    :cond_d
    invoke-interface {p2, v3, p1, v1, p3}, Lcom/android/carsdk/protobuf/GeneratedMessageLite$Visitor;->visitFloat(ZFZF)F

    move-result p1

    iput p1, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$Point3f;->z_:F

    .line 485
    sget-object p1, Lcom/android/carsdk/protobuf/GeneratedMessageLite$MergeFromVisitor;->INSTANCE:Lcom/android/carsdk/protobuf/GeneratedMessageLite$MergeFromVisitor;

    return-object p0

    .line 474
    :pswitch_4
    new-instance p1, Landroid/car/hardware/xpu/XpuApEssentialMsg$Point3f$Builder;

    invoke-direct {p1, v0}, Landroid/car/hardware/xpu/XpuApEssentialMsg$Point3f$Builder;-><init>(Landroid/car/hardware/xpu/XpuApEssentialMsg$1;)V

    return-object p1

    :pswitch_5
    return-object v0

    .line 468
    :pswitch_6
    sget-object p1, Landroid/car/hardware/xpu/XpuApEssentialMsg$Point3f;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuApEssentialMsg$Point3f;

    return-object p1

    .line 465
    :pswitch_7
    new-instance p1, Landroid/car/hardware/xpu/XpuApEssentialMsg$Point3f;

    invoke-direct {p1}, Landroid/car/hardware/xpu/XpuApEssentialMsg$Point3f;-><init>()V

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

.method public getSerializedSize()I
    .locals 4

    .line 287
    iget v0, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$Point3f;->memoizedSerializedSize:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    return v0

    :cond_0
    const/4 v0, 0x0

    .line 291
    iget v1, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$Point3f;->x_:F

    const/4 v2, 0x0

    cmpl-float v3, v1, v2

    if-eqz v3, :cond_1

    const/4 v3, 0x1

    .line 293
    invoke-static {v3, v1}, Lcom/android/carsdk/protobuf/CodedOutputStream;->computeFloatSize(IF)I

    move-result v1

    add-int/2addr v0, v1

    .line 295
    :cond_1
    iget v1, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$Point3f;->y_:F

    cmpl-float v3, v1, v2

    if-eqz v3, :cond_2

    const/4 v3, 0x2

    .line 297
    invoke-static {v3, v1}, Lcom/android/carsdk/protobuf/CodedOutputStream;->computeFloatSize(IF)I

    move-result v1

    add-int/2addr v0, v1

    .line 299
    :cond_2
    iget v1, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$Point3f;->z_:F

    cmpl-float v2, v1, v2

    if-eqz v2, :cond_3

    const/4 v2, 0x3

    .line 301
    invoke-static {v2, v1}, Lcom/android/carsdk/protobuf/CodedOutputStream;->computeFloatSize(IF)I

    move-result v1

    add-int/2addr v0, v1

    .line 303
    :cond_3
    iput v0, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$Point3f;->memoizedSerializedSize:I

    return v0
.end method

.method public getX()F
    .locals 1

    .line 210
    iget v0, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$Point3f;->x_:F

    return v0
.end method

.method public getY()F
    .locals 1

    .line 233
    iget v0, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$Point3f;->y_:F

    return v0
.end method

.method public getZ()F
    .locals 1

    .line 256
    iget v0, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$Point3f;->z_:F

    return v0
.end method

.method public writeTo(Lcom/android/carsdk/protobuf/CodedOutputStream;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 275
    iget v0, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$Point3f;->x_:F

    const/4 v1, 0x0

    cmpl-float v2, v0, v1

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    .line 276
    invoke-virtual {p1, v2, v0}, Lcom/android/carsdk/protobuf/CodedOutputStream;->writeFloat(IF)V

    .line 278
    :cond_0
    iget v0, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$Point3f;->y_:F

    cmpl-float v2, v0, v1

    if-eqz v2, :cond_1

    const/4 v2, 0x2

    .line 279
    invoke-virtual {p1, v2, v0}, Lcom/android/carsdk/protobuf/CodedOutputStream;->writeFloat(IF)V

    .line 281
    :cond_1
    iget v0, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$Point3f;->z_:F

    cmpl-float v1, v0, v1

    if-eqz v1, :cond_2

    const/4 v1, 0x3

    .line 282
    invoke-virtual {p1, v1, v0}, Lcom/android/carsdk/protobuf/CodedOutputStream;->writeFloat(IF)V

    :cond_2
    return-void
.end method
