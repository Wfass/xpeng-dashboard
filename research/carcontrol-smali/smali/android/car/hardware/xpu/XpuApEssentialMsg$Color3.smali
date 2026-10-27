.class public final Landroid/car/hardware/xpu/XpuApEssentialMsg$Color3;
.super Lcom/android/carsdk/protobuf/GeneratedMessageLite;
.source "XpuApEssentialMsg.java"

# interfaces
.implements Landroid/car/hardware/xpu/XpuApEssentialMsg$Color3OrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/car/hardware/xpu/XpuApEssentialMsg;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Color3"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/car/hardware/xpu/XpuApEssentialMsg$Color3$Builder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/carsdk/protobuf/GeneratedMessageLite<",
        "Landroid/car/hardware/xpu/XpuApEssentialMsg$Color3;",
        "Landroid/car/hardware/xpu/XpuApEssentialMsg$Color3$Builder;",
        ">;",
        "Landroid/car/hardware/xpu/XpuApEssentialMsg$Color3OrBuilder;"
    }
.end annotation


# static fields
.field public static final B_FIELD_NUMBER:I = 0x2

.field private static final DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuApEssentialMsg$Color3;

.field public static final G_FIELD_NUMBER:I = 0x3

.field private static volatile PARSER:Lcom/android/carsdk/protobuf/Parser; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/carsdk/protobuf/Parser<",
            "Landroid/car/hardware/xpu/XpuApEssentialMsg$Color3;",
            ">;"
        }
    .end annotation
.end field

.field public static final R_FIELD_NUMBER:I = 0x1


# instance fields
.field private b_:F

.field private g_:F

.field private r_:F


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1749
    new-instance v0, Landroid/car/hardware/xpu/XpuApEssentialMsg$Color3;

    invoke-direct {v0}, Landroid/car/hardware/xpu/XpuApEssentialMsg$Color3;-><init>()V

    sput-object v0, Landroid/car/hardware/xpu/XpuApEssentialMsg$Color3;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuApEssentialMsg$Color3;

    .line 1750
    invoke-virtual {v0}, Landroid/car/hardware/xpu/XpuApEssentialMsg$Color3;->makeImmutable()V

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 1393
    invoke-direct {p0}, Lcom/android/carsdk/protobuf/GeneratedMessageLite;-><init>()V

    const/4 v0, 0x0

    .line 1394
    iput v0, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$Color3;->r_:F

    .line 1395
    iput v0, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$Color3;->g_:F

    .line 1396
    iput v0, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$Color3;->b_:F

    return-void
.end method

.method static synthetic access$2400()Landroid/car/hardware/xpu/XpuApEssentialMsg$Color3;
    .locals 1

    .line 1388
    sget-object v0, Landroid/car/hardware/xpu/XpuApEssentialMsg$Color3;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuApEssentialMsg$Color3;

    return-object v0
.end method

.method static synthetic access$2500(Landroid/car/hardware/xpu/XpuApEssentialMsg$Color3;F)V
    .locals 0

    .line 1388
    invoke-direct {p0, p1}, Landroid/car/hardware/xpu/XpuApEssentialMsg$Color3;->setR(F)V

    return-void
.end method

.method static synthetic access$2600(Landroid/car/hardware/xpu/XpuApEssentialMsg$Color3;)V
    .locals 0

    .line 1388
    invoke-direct {p0}, Landroid/car/hardware/xpu/XpuApEssentialMsg$Color3;->clearR()V

    return-void
.end method

.method static synthetic access$2700(Landroid/car/hardware/xpu/XpuApEssentialMsg$Color3;F)V
    .locals 0

    .line 1388
    invoke-direct {p0, p1}, Landroid/car/hardware/xpu/XpuApEssentialMsg$Color3;->setG(F)V

    return-void
.end method

.method static synthetic access$2800(Landroid/car/hardware/xpu/XpuApEssentialMsg$Color3;)V
    .locals 0

    .line 1388
    invoke-direct {p0}, Landroid/car/hardware/xpu/XpuApEssentialMsg$Color3;->clearG()V

    return-void
.end method

.method static synthetic access$2900(Landroid/car/hardware/xpu/XpuApEssentialMsg$Color3;F)V
    .locals 0

    .line 1388
    invoke-direct {p0, p1}, Landroid/car/hardware/xpu/XpuApEssentialMsg$Color3;->setB(F)V

    return-void
.end method

.method static synthetic access$3000(Landroid/car/hardware/xpu/XpuApEssentialMsg$Color3;)V
    .locals 0

    .line 1388
    invoke-direct {p0}, Landroid/car/hardware/xpu/XpuApEssentialMsg$Color3;->clearB()V

    return-void
.end method

.method private clearB()V
    .locals 1

    const/4 v0, 0x0

    .line 1464
    iput v0, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$Color3;->b_:F

    return-void
.end method

.method private clearG()V
    .locals 1

    const/4 v0, 0x0

    .line 1441
    iput v0, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$Color3;->g_:F

    return-void
.end method

.method private clearR()V
    .locals 1

    const/4 v0, 0x0

    .line 1418
    iput v0, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$Color3;->r_:F

    return-void
.end method

.method public static getDefaultInstance()Landroid/car/hardware/xpu/XpuApEssentialMsg$Color3;
    .locals 1

    .line 1754
    sget-object v0, Landroid/car/hardware/xpu/XpuApEssentialMsg$Color3;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuApEssentialMsg$Color3;

    return-object v0
.end method

.method public static newBuilder()Landroid/car/hardware/xpu/XpuApEssentialMsg$Color3$Builder;
    .locals 1

    .line 1563
    sget-object v0, Landroid/car/hardware/xpu/XpuApEssentialMsg$Color3;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuApEssentialMsg$Color3;

    invoke-virtual {v0}, Landroid/car/hardware/xpu/XpuApEssentialMsg$Color3;->toBuilder()Lcom/android/carsdk/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Landroid/car/hardware/xpu/XpuApEssentialMsg$Color3$Builder;

    return-object v0
.end method

.method public static newBuilder(Landroid/car/hardware/xpu/XpuApEssentialMsg$Color3;)Landroid/car/hardware/xpu/XpuApEssentialMsg$Color3$Builder;
    .locals 1

    .line 1566
    sget-object v0, Landroid/car/hardware/xpu/XpuApEssentialMsg$Color3;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuApEssentialMsg$Color3;

    invoke-virtual {v0}, Landroid/car/hardware/xpu/XpuApEssentialMsg$Color3;->toBuilder()Lcom/android/carsdk/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Landroid/car/hardware/xpu/XpuApEssentialMsg$Color3$Builder;

    invoke-virtual {v0, p0}, Landroid/car/hardware/xpu/XpuApEssentialMsg$Color3$Builder;->mergeFrom(Lcom/android/carsdk/protobuf/GeneratedMessageLite;)Lcom/android/carsdk/protobuf/GeneratedMessageLite$Builder;

    move-result-object p0

    check-cast p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$Color3$Builder;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Landroid/car/hardware/xpu/XpuApEssentialMsg$Color3;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1540
    sget-object v0, Landroid/car/hardware/xpu/XpuApEssentialMsg$Color3;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuApEssentialMsg$Color3;

    invoke-static {v0, p0}, Landroid/car/hardware/xpu/XpuApEssentialMsg$Color3;->parseDelimitedFrom(Lcom/android/carsdk/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$Color3;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/android/carsdk/protobuf/ExtensionRegistryLite;)Landroid/car/hardware/xpu/XpuApEssentialMsg$Color3;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1546
    sget-object v0, Landroid/car/hardware/xpu/XpuApEssentialMsg$Color3;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuApEssentialMsg$Color3;

    invoke-static {v0, p0, p1}, Landroid/car/hardware/xpu/XpuApEssentialMsg$Color3;->parseDelimitedFrom(Lcom/android/carsdk/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/android/carsdk/protobuf/ExtensionRegistryLite;)Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$Color3;

    return-object p0
.end method

.method public static parseFrom(Lcom/android/carsdk/protobuf/ByteString;)Landroid/car/hardware/xpu/XpuApEssentialMsg$Color3;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/carsdk/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1504
    sget-object v0, Landroid/car/hardware/xpu/XpuApEssentialMsg$Color3;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuApEssentialMsg$Color3;

    invoke-static {v0, p0}, Lcom/android/carsdk/protobuf/GeneratedMessageLite;->parseFrom(Lcom/android/carsdk/protobuf/GeneratedMessageLite;Lcom/android/carsdk/protobuf/ByteString;)Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$Color3;

    return-object p0
.end method

.method public static parseFrom(Lcom/android/carsdk/protobuf/ByteString;Lcom/android/carsdk/protobuf/ExtensionRegistryLite;)Landroid/car/hardware/xpu/XpuApEssentialMsg$Color3;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/carsdk/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1511
    sget-object v0, Landroid/car/hardware/xpu/XpuApEssentialMsg$Color3;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuApEssentialMsg$Color3;

    invoke-static {v0, p0, p1}, Lcom/android/carsdk/protobuf/GeneratedMessageLite;->parseFrom(Lcom/android/carsdk/protobuf/GeneratedMessageLite;Lcom/android/carsdk/protobuf/ByteString;Lcom/android/carsdk/protobuf/ExtensionRegistryLite;)Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$Color3;

    return-object p0
.end method

.method public static parseFrom(Lcom/android/carsdk/protobuf/CodedInputStream;)Landroid/car/hardware/xpu/XpuApEssentialMsg$Color3;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1551
    sget-object v0, Landroid/car/hardware/xpu/XpuApEssentialMsg$Color3;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuApEssentialMsg$Color3;

    invoke-static {v0, p0}, Lcom/android/carsdk/protobuf/GeneratedMessageLite;->parseFrom(Lcom/android/carsdk/protobuf/GeneratedMessageLite;Lcom/android/carsdk/protobuf/CodedInputStream;)Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$Color3;

    return-object p0
.end method

.method public static parseFrom(Lcom/android/carsdk/protobuf/CodedInputStream;Lcom/android/carsdk/protobuf/ExtensionRegistryLite;)Landroid/car/hardware/xpu/XpuApEssentialMsg$Color3;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1558
    sget-object v0, Landroid/car/hardware/xpu/XpuApEssentialMsg$Color3;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuApEssentialMsg$Color3;

    invoke-static {v0, p0, p1}, Lcom/android/carsdk/protobuf/GeneratedMessageLite;->parseFrom(Lcom/android/carsdk/protobuf/GeneratedMessageLite;Lcom/android/carsdk/protobuf/CodedInputStream;Lcom/android/carsdk/protobuf/ExtensionRegistryLite;)Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$Color3;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Landroid/car/hardware/xpu/XpuApEssentialMsg$Color3;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1528
    sget-object v0, Landroid/car/hardware/xpu/XpuApEssentialMsg$Color3;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuApEssentialMsg$Color3;

    invoke-static {v0, p0}, Lcom/android/carsdk/protobuf/GeneratedMessageLite;->parseFrom(Lcom/android/carsdk/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$Color3;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/android/carsdk/protobuf/ExtensionRegistryLite;)Landroid/car/hardware/xpu/XpuApEssentialMsg$Color3;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1535
    sget-object v0, Landroid/car/hardware/xpu/XpuApEssentialMsg$Color3;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuApEssentialMsg$Color3;

    invoke-static {v0, p0, p1}, Lcom/android/carsdk/protobuf/GeneratedMessageLite;->parseFrom(Lcom/android/carsdk/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/android/carsdk/protobuf/ExtensionRegistryLite;)Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$Color3;

    return-object p0
.end method

.method public static parseFrom([B)Landroid/car/hardware/xpu/XpuApEssentialMsg$Color3;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/carsdk/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1516
    sget-object v0, Landroid/car/hardware/xpu/XpuApEssentialMsg$Color3;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuApEssentialMsg$Color3;

    invoke-static {v0, p0}, Lcom/android/carsdk/protobuf/GeneratedMessageLite;->parseFrom(Lcom/android/carsdk/protobuf/GeneratedMessageLite;[B)Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$Color3;

    return-object p0
.end method

.method public static parseFrom([BLcom/android/carsdk/protobuf/ExtensionRegistryLite;)Landroid/car/hardware/xpu/XpuApEssentialMsg$Color3;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/carsdk/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1523
    sget-object v0, Landroid/car/hardware/xpu/XpuApEssentialMsg$Color3;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuApEssentialMsg$Color3;

    invoke-static {v0, p0, p1}, Lcom/android/carsdk/protobuf/GeneratedMessageLite;->parseFrom(Lcom/android/carsdk/protobuf/GeneratedMessageLite;[BLcom/android/carsdk/protobuf/ExtensionRegistryLite;)Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$Color3;

    return-object p0
.end method

.method public static parser()Lcom/android/carsdk/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/android/carsdk/protobuf/Parser<",
            "Landroid/car/hardware/xpu/XpuApEssentialMsg$Color3;",
            ">;"
        }
    .end annotation

    .line 1760
    sget-object v0, Landroid/car/hardware/xpu/XpuApEssentialMsg$Color3;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuApEssentialMsg$Color3;

    invoke-virtual {v0}, Landroid/car/hardware/xpu/XpuApEssentialMsg$Color3;->getParserForType()Lcom/android/carsdk/protobuf/Parser;

    move-result-object v0

    return-object v0
.end method

.method private setB(F)V
    .locals 0

    .line 1457
    iput p1, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$Color3;->b_:F

    return-void
.end method

.method private setG(F)V
    .locals 0

    .line 1434
    iput p1, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$Color3;->g_:F

    return-void
.end method

.method private setR(F)V
    .locals 0

    .line 1411
    iput p1, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$Color3;->r_:F

    return-void
.end method


# virtual methods
.method protected final dynamicMethod(Lcom/android/carsdk/protobuf/GeneratedMessageLite$MethodToInvoke;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    .line 1657
    sget-object v0, Landroid/car/hardware/xpu/XpuApEssentialMsg$1;->$SwitchMap$com$google$protobuf$GeneratedMessageLite$MethodToInvoke:[I

    invoke-virtual {p1}, Lcom/android/carsdk/protobuf/GeneratedMessageLite$MethodToInvoke;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x1

    packed-switch p1, :pswitch_data_0

    .line 1742
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1

    .line 1733
    :pswitch_0
    sget-object p1, Landroid/car/hardware/xpu/XpuApEssentialMsg$Color3;->PARSER:Lcom/android/carsdk/protobuf/Parser;

    if-nez p1, :cond_1

    const-class p1, Landroid/car/hardware/xpu/XpuApEssentialMsg$Color3;

    monitor-enter p1

    .line 1734
    :try_start_0
    sget-object p2, Landroid/car/hardware/xpu/XpuApEssentialMsg$Color3;->PARSER:Lcom/android/carsdk/protobuf/Parser;

    if-nez p2, :cond_0

    .line 1735
    new-instance p2, Lcom/android/carsdk/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;

    sget-object p3, Landroid/car/hardware/xpu/XpuApEssentialMsg$Color3;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuApEssentialMsg$Color3;

    invoke-direct {p2, p3}, Lcom/android/carsdk/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;-><init>(Lcom/android/carsdk/protobuf/GeneratedMessageLite;)V

    sput-object p2, Landroid/car/hardware/xpu/XpuApEssentialMsg$Color3;->PARSER:Lcom/android/carsdk/protobuf/Parser;

    .line 1737
    :cond_0
    monitor-exit p1

    goto :goto_0

    :catchall_0
    move-exception p2

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p2

    .line 1739
    :cond_1
    :goto_0
    sget-object p1, Landroid/car/hardware/xpu/XpuApEssentialMsg$Color3;->PARSER:Lcom/android/carsdk/protobuf/Parser;

    return-object p1

    .line 1685
    :pswitch_1
    check-cast p2, Lcom/android/carsdk/protobuf/CodedInputStream;

    .line 1687
    check-cast p3, Lcom/android/carsdk/protobuf/ExtensionRegistryLite;

    :cond_2
    :goto_1
    if-nez v1, :cond_7

    .line 1692
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

    .line 1698
    invoke-virtual {p2, p1}, Lcom/android/carsdk/protobuf/CodedInputStream;->skipField(I)Z

    move-result p1

    if-nez p1, :cond_2

    goto :goto_2

    .line 1715
    :cond_3
    invoke-virtual {p2}, Lcom/android/carsdk/protobuf/CodedInputStream;->readFloat()F

    move-result p1

    iput p1, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$Color3;->g_:F

    goto :goto_1

    .line 1710
    :cond_4
    invoke-virtual {p2}, Lcom/android/carsdk/protobuf/CodedInputStream;->readFloat()F

    move-result p1

    iput p1, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$Color3;->b_:F

    goto :goto_1

    .line 1705
    :cond_5
    invoke-virtual {p2}, Lcom/android/carsdk/protobuf/CodedInputStream;->readFloat()F

    move-result p1

    iput p1, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$Color3;->r_:F
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

    .line 1723
    :try_start_2
    new-instance p2, Ljava/lang/RuntimeException;

    new-instance p3, Lcom/android/carsdk/protobuf/InvalidProtocolBufferException;

    .line 1725
    invoke-virtual {p1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p3, p1}, Lcom/android/carsdk/protobuf/InvalidProtocolBufferException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, p0}, Lcom/android/carsdk/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/android/carsdk/protobuf/MessageLite;)Lcom/android/carsdk/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p2

    :catch_1
    move-exception p1

    .line 1721
    new-instance p2, Ljava/lang/RuntimeException;

    invoke-virtual {p1, p0}, Lcom/android/carsdk/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/android/carsdk/protobuf/MessageLite;)Lcom/android/carsdk/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 1726
    :goto_3
    throw p1

    .line 1730
    :cond_7
    :pswitch_2
    sget-object p1, Landroid/car/hardware/xpu/XpuApEssentialMsg$Color3;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuApEssentialMsg$Color3;

    return-object p1

    .line 1671
    :pswitch_3
    check-cast p2, Lcom/android/carsdk/protobuf/GeneratedMessageLite$Visitor;

    .line 1672
    check-cast p3, Landroid/car/hardware/xpu/XpuApEssentialMsg$Color3;

    .line 1673
    iget p1, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$Color3;->r_:F

    const/4 v0, 0x0

    cmpl-float v3, p1, v0

    if-eqz v3, :cond_8

    move v3, v2

    goto :goto_4

    :cond_8
    move v3, v1

    :goto_4
    iget v4, p3, Landroid/car/hardware/xpu/XpuApEssentialMsg$Color3;->r_:F

    cmpl-float v5, v4, v0

    if-eqz v5, :cond_9

    move v5, v2

    goto :goto_5

    :cond_9
    move v5, v1

    :goto_5
    invoke-interface {p2, v3, p1, v5, v4}, Lcom/android/carsdk/protobuf/GeneratedMessageLite$Visitor;->visitFloat(ZFZF)F

    move-result p1

    iput p1, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$Color3;->r_:F

    .line 1675
    iget p1, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$Color3;->g_:F

    cmpl-float v3, p1, v0

    if-eqz v3, :cond_a

    move v3, v2

    goto :goto_6

    :cond_a
    move v3, v1

    :goto_6
    iget v4, p3, Landroid/car/hardware/xpu/XpuApEssentialMsg$Color3;->g_:F

    cmpl-float v5, v4, v0

    if-eqz v5, :cond_b

    move v5, v2

    goto :goto_7

    :cond_b
    move v5, v1

    :goto_7
    invoke-interface {p2, v3, p1, v5, v4}, Lcom/android/carsdk/protobuf/GeneratedMessageLite$Visitor;->visitFloat(ZFZF)F

    move-result p1

    iput p1, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$Color3;->g_:F

    .line 1677
    iget p1, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$Color3;->b_:F

    cmpl-float v3, p1, v0

    if-eqz v3, :cond_c

    move v3, v2

    goto :goto_8

    :cond_c
    move v3, v1

    :goto_8
    iget p3, p3, Landroid/car/hardware/xpu/XpuApEssentialMsg$Color3;->b_:F

    cmpl-float v0, p3, v0

    if-eqz v0, :cond_d

    move v1, v2

    :cond_d
    invoke-interface {p2, v3, p1, v1, p3}, Lcom/android/carsdk/protobuf/GeneratedMessageLite$Visitor;->visitFloat(ZFZF)F

    move-result p1

    iput p1, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$Color3;->b_:F

    .line 1679
    sget-object p1, Lcom/android/carsdk/protobuf/GeneratedMessageLite$MergeFromVisitor;->INSTANCE:Lcom/android/carsdk/protobuf/GeneratedMessageLite$MergeFromVisitor;

    return-object p0

    .line 1668
    :pswitch_4
    new-instance p1, Landroid/car/hardware/xpu/XpuApEssentialMsg$Color3$Builder;

    invoke-direct {p1, v0}, Landroid/car/hardware/xpu/XpuApEssentialMsg$Color3$Builder;-><init>(Landroid/car/hardware/xpu/XpuApEssentialMsg$1;)V

    return-object p1

    :pswitch_5
    return-object v0

    .line 1662
    :pswitch_6
    sget-object p1, Landroid/car/hardware/xpu/XpuApEssentialMsg$Color3;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuApEssentialMsg$Color3;

    return-object p1

    .line 1659
    :pswitch_7
    new-instance p1, Landroid/car/hardware/xpu/XpuApEssentialMsg$Color3;

    invoke-direct {p1}, Landroid/car/hardware/xpu/XpuApEssentialMsg$Color3;-><init>()V

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

.method public getB()F
    .locals 1

    .line 1450
    iget v0, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$Color3;->b_:F

    return v0
.end method

.method public getG()F
    .locals 1

    .line 1427
    iget v0, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$Color3;->g_:F

    return v0
.end method

.method public getR()F
    .locals 1

    .line 1404
    iget v0, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$Color3;->r_:F

    return v0
.end method

.method public getSerializedSize()I
    .locals 4

    .line 1481
    iget v0, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$Color3;->memoizedSerializedSize:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    return v0

    :cond_0
    const/4 v0, 0x0

    .line 1485
    iget v1, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$Color3;->r_:F

    const/4 v2, 0x0

    cmpl-float v3, v1, v2

    if-eqz v3, :cond_1

    const/4 v3, 0x1

    .line 1487
    invoke-static {v3, v1}, Lcom/android/carsdk/protobuf/CodedOutputStream;->computeFloatSize(IF)I

    move-result v1

    add-int/2addr v0, v1

    .line 1489
    :cond_1
    iget v1, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$Color3;->b_:F

    cmpl-float v3, v1, v2

    if-eqz v3, :cond_2

    const/4 v3, 0x2

    .line 1491
    invoke-static {v3, v1}, Lcom/android/carsdk/protobuf/CodedOutputStream;->computeFloatSize(IF)I

    move-result v1

    add-int/2addr v0, v1

    .line 1493
    :cond_2
    iget v1, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$Color3;->g_:F

    cmpl-float v2, v1, v2

    if-eqz v2, :cond_3

    const/4 v2, 0x3

    .line 1495
    invoke-static {v2, v1}, Lcom/android/carsdk/protobuf/CodedOutputStream;->computeFloatSize(IF)I

    move-result v1

    add-int/2addr v0, v1

    .line 1497
    :cond_3
    iput v0, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$Color3;->memoizedSerializedSize:I

    return v0
.end method

.method public writeTo(Lcom/android/carsdk/protobuf/CodedOutputStream;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1469
    iget v0, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$Color3;->r_:F

    const/4 v1, 0x0

    cmpl-float v2, v0, v1

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    .line 1470
    invoke-virtual {p1, v2, v0}, Lcom/android/carsdk/protobuf/CodedOutputStream;->writeFloat(IF)V

    .line 1472
    :cond_0
    iget v0, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$Color3;->b_:F

    cmpl-float v2, v0, v1

    if-eqz v2, :cond_1

    const/4 v2, 0x2

    .line 1473
    invoke-virtual {p1, v2, v0}, Lcom/android/carsdk/protobuf/CodedOutputStream;->writeFloat(IF)V

    .line 1475
    :cond_1
    iget v0, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$Color3;->g_:F

    cmpl-float v1, v0, v1

    if-eqz v1, :cond_2

    const/4 v1, 0x3

    .line 1476
    invoke-virtual {p1, v1, v0}, Lcom/android/carsdk/protobuf/CodedOutputStream;->writeFloat(IF)V

    :cond_2
    return-void
.end method
