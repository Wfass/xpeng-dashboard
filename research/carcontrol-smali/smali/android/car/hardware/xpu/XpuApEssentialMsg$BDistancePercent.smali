.class public final Landroid/car/hardware/xpu/XpuApEssentialMsg$BDistancePercent;
.super Lcom/android/carsdk/protobuf/GeneratedMessageLite;
.source "XpuApEssentialMsg.java"

# interfaces
.implements Landroid/car/hardware/xpu/XpuApEssentialMsg$BDistancePercentOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/car/hardware/xpu/XpuApEssentialMsg;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "BDistancePercent"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/car/hardware/xpu/XpuApEssentialMsg$BDistancePercent$Builder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/carsdk/protobuf/GeneratedMessageLite<",
        "Landroid/car/hardware/xpu/XpuApEssentialMsg$BDistancePercent;",
        "Landroid/car/hardware/xpu/XpuApEssentialMsg$BDistancePercent$Builder;",
        ">;",
        "Landroid/car/hardware/xpu/XpuApEssentialMsg$BDistancePercentOrBuilder;"
    }
.end annotation


# static fields
.field private static final DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuApEssentialMsg$BDistancePercent;

.field public static final DISTANCE_FIELD_NUMBER:I = 0x1

.field private static volatile PARSER:Lcom/android/carsdk/protobuf/Parser; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/carsdk/protobuf/Parser<",
            "Landroid/car/hardware/xpu/XpuApEssentialMsg$BDistancePercent;",
            ">;"
        }
    .end annotation
.end field

.field public static final PERCENT_FIELD_NUMBER:I = 0x2


# instance fields
.field private distance_:F

.field private percent_:F


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 8501
    new-instance v0, Landroid/car/hardware/xpu/XpuApEssentialMsg$BDistancePercent;

    invoke-direct {v0}, Landroid/car/hardware/xpu/XpuApEssentialMsg$BDistancePercent;-><init>()V

    sput-object v0, Landroid/car/hardware/xpu/XpuApEssentialMsg$BDistancePercent;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuApEssentialMsg$BDistancePercent;

    .line 8502
    invoke-virtual {v0}, Landroid/car/hardware/xpu/XpuApEssentialMsg$BDistancePercent;->makeImmutable()V

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 8206
    invoke-direct {p0}, Lcom/android/carsdk/protobuf/GeneratedMessageLite;-><init>()V

    const/4 v0, 0x0

    .line 8207
    iput v0, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$BDistancePercent;->distance_:F

    .line 8208
    iput v0, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$BDistancePercent;->percent_:F

    return-void
.end method

.method static synthetic access$18600()Landroid/car/hardware/xpu/XpuApEssentialMsg$BDistancePercent;
    .locals 1

    .line 8201
    sget-object v0, Landroid/car/hardware/xpu/XpuApEssentialMsg$BDistancePercent;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuApEssentialMsg$BDistancePercent;

    return-object v0
.end method

.method static synthetic access$18700(Landroid/car/hardware/xpu/XpuApEssentialMsg$BDistancePercent;F)V
    .locals 0

    .line 8201
    invoke-direct {p0, p1}, Landroid/car/hardware/xpu/XpuApEssentialMsg$BDistancePercent;->setDistance(F)V

    return-void
.end method

.method static synthetic access$18800(Landroid/car/hardware/xpu/XpuApEssentialMsg$BDistancePercent;)V
    .locals 0

    .line 8201
    invoke-direct {p0}, Landroid/car/hardware/xpu/XpuApEssentialMsg$BDistancePercent;->clearDistance()V

    return-void
.end method

.method static synthetic access$18900(Landroid/car/hardware/xpu/XpuApEssentialMsg$BDistancePercent;F)V
    .locals 0

    .line 8201
    invoke-direct {p0, p1}, Landroid/car/hardware/xpu/XpuApEssentialMsg$BDistancePercent;->setPercent(F)V

    return-void
.end method

.method static synthetic access$19000(Landroid/car/hardware/xpu/XpuApEssentialMsg$BDistancePercent;)V
    .locals 0

    .line 8201
    invoke-direct {p0}, Landroid/car/hardware/xpu/XpuApEssentialMsg$BDistancePercent;->clearPercent()V

    return-void
.end method

.method private clearDistance()V
    .locals 1

    const/4 v0, 0x0

    .line 8230
    iput v0, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$BDistancePercent;->distance_:F

    return-void
.end method

.method private clearPercent()V
    .locals 1

    const/4 v0, 0x0

    .line 8253
    iput v0, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$BDistancePercent;->percent_:F

    return-void
.end method

.method public static getDefaultInstance()Landroid/car/hardware/xpu/XpuApEssentialMsg$BDistancePercent;
    .locals 1

    .line 8506
    sget-object v0, Landroid/car/hardware/xpu/XpuApEssentialMsg$BDistancePercent;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuApEssentialMsg$BDistancePercent;

    return-object v0
.end method

.method public static newBuilder()Landroid/car/hardware/xpu/XpuApEssentialMsg$BDistancePercent$Builder;
    .locals 1

    .line 8345
    sget-object v0, Landroid/car/hardware/xpu/XpuApEssentialMsg$BDistancePercent;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuApEssentialMsg$BDistancePercent;

    invoke-virtual {v0}, Landroid/car/hardware/xpu/XpuApEssentialMsg$BDistancePercent;->toBuilder()Lcom/android/carsdk/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Landroid/car/hardware/xpu/XpuApEssentialMsg$BDistancePercent$Builder;

    return-object v0
.end method

.method public static newBuilder(Landroid/car/hardware/xpu/XpuApEssentialMsg$BDistancePercent;)Landroid/car/hardware/xpu/XpuApEssentialMsg$BDistancePercent$Builder;
    .locals 1

    .line 8348
    sget-object v0, Landroid/car/hardware/xpu/XpuApEssentialMsg$BDistancePercent;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuApEssentialMsg$BDistancePercent;

    invoke-virtual {v0}, Landroid/car/hardware/xpu/XpuApEssentialMsg$BDistancePercent;->toBuilder()Lcom/android/carsdk/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Landroid/car/hardware/xpu/XpuApEssentialMsg$BDistancePercent$Builder;

    invoke-virtual {v0, p0}, Landroid/car/hardware/xpu/XpuApEssentialMsg$BDistancePercent$Builder;->mergeFrom(Lcom/android/carsdk/protobuf/GeneratedMessageLite;)Lcom/android/carsdk/protobuf/GeneratedMessageLite$Builder;

    move-result-object p0

    check-cast p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$BDistancePercent$Builder;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Landroid/car/hardware/xpu/XpuApEssentialMsg$BDistancePercent;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 8322
    sget-object v0, Landroid/car/hardware/xpu/XpuApEssentialMsg$BDistancePercent;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuApEssentialMsg$BDistancePercent;

    invoke-static {v0, p0}, Landroid/car/hardware/xpu/XpuApEssentialMsg$BDistancePercent;->parseDelimitedFrom(Lcom/android/carsdk/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$BDistancePercent;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/android/carsdk/protobuf/ExtensionRegistryLite;)Landroid/car/hardware/xpu/XpuApEssentialMsg$BDistancePercent;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 8328
    sget-object v0, Landroid/car/hardware/xpu/XpuApEssentialMsg$BDistancePercent;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuApEssentialMsg$BDistancePercent;

    invoke-static {v0, p0, p1}, Landroid/car/hardware/xpu/XpuApEssentialMsg$BDistancePercent;->parseDelimitedFrom(Lcom/android/carsdk/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/android/carsdk/protobuf/ExtensionRegistryLite;)Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$BDistancePercent;

    return-object p0
.end method

.method public static parseFrom(Lcom/android/carsdk/protobuf/ByteString;)Landroid/car/hardware/xpu/XpuApEssentialMsg$BDistancePercent;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/carsdk/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 8286
    sget-object v0, Landroid/car/hardware/xpu/XpuApEssentialMsg$BDistancePercent;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuApEssentialMsg$BDistancePercent;

    invoke-static {v0, p0}, Lcom/android/carsdk/protobuf/GeneratedMessageLite;->parseFrom(Lcom/android/carsdk/protobuf/GeneratedMessageLite;Lcom/android/carsdk/protobuf/ByteString;)Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$BDistancePercent;

    return-object p0
.end method

.method public static parseFrom(Lcom/android/carsdk/protobuf/ByteString;Lcom/android/carsdk/protobuf/ExtensionRegistryLite;)Landroid/car/hardware/xpu/XpuApEssentialMsg$BDistancePercent;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/carsdk/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 8293
    sget-object v0, Landroid/car/hardware/xpu/XpuApEssentialMsg$BDistancePercent;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuApEssentialMsg$BDistancePercent;

    invoke-static {v0, p0, p1}, Lcom/android/carsdk/protobuf/GeneratedMessageLite;->parseFrom(Lcom/android/carsdk/protobuf/GeneratedMessageLite;Lcom/android/carsdk/protobuf/ByteString;Lcom/android/carsdk/protobuf/ExtensionRegistryLite;)Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$BDistancePercent;

    return-object p0
.end method

.method public static parseFrom(Lcom/android/carsdk/protobuf/CodedInputStream;)Landroid/car/hardware/xpu/XpuApEssentialMsg$BDistancePercent;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 8333
    sget-object v0, Landroid/car/hardware/xpu/XpuApEssentialMsg$BDistancePercent;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuApEssentialMsg$BDistancePercent;

    invoke-static {v0, p0}, Lcom/android/carsdk/protobuf/GeneratedMessageLite;->parseFrom(Lcom/android/carsdk/protobuf/GeneratedMessageLite;Lcom/android/carsdk/protobuf/CodedInputStream;)Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$BDistancePercent;

    return-object p0
.end method

.method public static parseFrom(Lcom/android/carsdk/protobuf/CodedInputStream;Lcom/android/carsdk/protobuf/ExtensionRegistryLite;)Landroid/car/hardware/xpu/XpuApEssentialMsg$BDistancePercent;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 8340
    sget-object v0, Landroid/car/hardware/xpu/XpuApEssentialMsg$BDistancePercent;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuApEssentialMsg$BDistancePercent;

    invoke-static {v0, p0, p1}, Lcom/android/carsdk/protobuf/GeneratedMessageLite;->parseFrom(Lcom/android/carsdk/protobuf/GeneratedMessageLite;Lcom/android/carsdk/protobuf/CodedInputStream;Lcom/android/carsdk/protobuf/ExtensionRegistryLite;)Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$BDistancePercent;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Landroid/car/hardware/xpu/XpuApEssentialMsg$BDistancePercent;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 8310
    sget-object v0, Landroid/car/hardware/xpu/XpuApEssentialMsg$BDistancePercent;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuApEssentialMsg$BDistancePercent;

    invoke-static {v0, p0}, Lcom/android/carsdk/protobuf/GeneratedMessageLite;->parseFrom(Lcom/android/carsdk/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$BDistancePercent;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/android/carsdk/protobuf/ExtensionRegistryLite;)Landroid/car/hardware/xpu/XpuApEssentialMsg$BDistancePercent;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 8317
    sget-object v0, Landroid/car/hardware/xpu/XpuApEssentialMsg$BDistancePercent;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuApEssentialMsg$BDistancePercent;

    invoke-static {v0, p0, p1}, Lcom/android/carsdk/protobuf/GeneratedMessageLite;->parseFrom(Lcom/android/carsdk/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/android/carsdk/protobuf/ExtensionRegistryLite;)Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$BDistancePercent;

    return-object p0
.end method

.method public static parseFrom([B)Landroid/car/hardware/xpu/XpuApEssentialMsg$BDistancePercent;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/carsdk/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 8298
    sget-object v0, Landroid/car/hardware/xpu/XpuApEssentialMsg$BDistancePercent;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuApEssentialMsg$BDistancePercent;

    invoke-static {v0, p0}, Lcom/android/carsdk/protobuf/GeneratedMessageLite;->parseFrom(Lcom/android/carsdk/protobuf/GeneratedMessageLite;[B)Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$BDistancePercent;

    return-object p0
.end method

.method public static parseFrom([BLcom/android/carsdk/protobuf/ExtensionRegistryLite;)Landroid/car/hardware/xpu/XpuApEssentialMsg$BDistancePercent;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/carsdk/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 8305
    sget-object v0, Landroid/car/hardware/xpu/XpuApEssentialMsg$BDistancePercent;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuApEssentialMsg$BDistancePercent;

    invoke-static {v0, p0, p1}, Lcom/android/carsdk/protobuf/GeneratedMessageLite;->parseFrom(Lcom/android/carsdk/protobuf/GeneratedMessageLite;[BLcom/android/carsdk/protobuf/ExtensionRegistryLite;)Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$BDistancePercent;

    return-object p0
.end method

.method public static parser()Lcom/android/carsdk/protobuf/Parser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/android/carsdk/protobuf/Parser<",
            "Landroid/car/hardware/xpu/XpuApEssentialMsg$BDistancePercent;",
            ">;"
        }
    .end annotation

    .line 8512
    sget-object v0, Landroid/car/hardware/xpu/XpuApEssentialMsg$BDistancePercent;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuApEssentialMsg$BDistancePercent;

    invoke-virtual {v0}, Landroid/car/hardware/xpu/XpuApEssentialMsg$BDistancePercent;->getParserForType()Lcom/android/carsdk/protobuf/Parser;

    move-result-object v0

    return-object v0
.end method

.method private setDistance(F)V
    .locals 0

    .line 8223
    iput p1, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$BDistancePercent;->distance_:F

    return-void
.end method

.method private setPercent(F)V
    .locals 0

    .line 8246
    iput p1, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$BDistancePercent;->percent_:F

    return-void
.end method


# virtual methods
.method protected final dynamicMethod(Lcom/android/carsdk/protobuf/GeneratedMessageLite$MethodToInvoke;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    .line 8416
    sget-object v0, Landroid/car/hardware/xpu/XpuApEssentialMsg$1;->$SwitchMap$com$google$protobuf$GeneratedMessageLite$MethodToInvoke:[I

    invoke-virtual {p1}, Lcom/android/carsdk/protobuf/GeneratedMessageLite$MethodToInvoke;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x1

    packed-switch p1, :pswitch_data_0

    .line 8494
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1

    .line 8485
    :pswitch_0
    sget-object p1, Landroid/car/hardware/xpu/XpuApEssentialMsg$BDistancePercent;->PARSER:Lcom/android/carsdk/protobuf/Parser;

    if-nez p1, :cond_1

    const-class p1, Landroid/car/hardware/xpu/XpuApEssentialMsg$BDistancePercent;

    monitor-enter p1

    .line 8486
    :try_start_0
    sget-object p2, Landroid/car/hardware/xpu/XpuApEssentialMsg$BDistancePercent;->PARSER:Lcom/android/carsdk/protobuf/Parser;

    if-nez p2, :cond_0

    .line 8487
    new-instance p2, Lcom/android/carsdk/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;

    sget-object p3, Landroid/car/hardware/xpu/XpuApEssentialMsg$BDistancePercent;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuApEssentialMsg$BDistancePercent;

    invoke-direct {p2, p3}, Lcom/android/carsdk/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;-><init>(Lcom/android/carsdk/protobuf/GeneratedMessageLite;)V

    sput-object p2, Landroid/car/hardware/xpu/XpuApEssentialMsg$BDistancePercent;->PARSER:Lcom/android/carsdk/protobuf/Parser;

    .line 8489
    :cond_0
    monitor-exit p1

    goto :goto_0

    :catchall_0
    move-exception p2

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p2

    .line 8491
    :cond_1
    :goto_0
    sget-object p1, Landroid/car/hardware/xpu/XpuApEssentialMsg$BDistancePercent;->PARSER:Lcom/android/carsdk/protobuf/Parser;

    return-object p1

    .line 8442
    :pswitch_1
    check-cast p2, Lcom/android/carsdk/protobuf/CodedInputStream;

    .line 8444
    check-cast p3, Lcom/android/carsdk/protobuf/ExtensionRegistryLite;

    :cond_2
    :goto_1
    if-nez v1, :cond_6

    .line 8449
    :try_start_1
    invoke-virtual {p2}, Lcom/android/carsdk/protobuf/CodedInputStream;->readTag()I

    move-result p1

    if-eqz p1, :cond_5

    const/16 p3, 0xd

    if-eq p1, p3, :cond_4

    const/16 p3, 0x15

    if-eq p1, p3, :cond_3

    .line 8455
    invoke-virtual {p2, p1}, Lcom/android/carsdk/protobuf/CodedInputStream;->skipField(I)Z

    move-result p1

    if-nez p1, :cond_2

    goto :goto_2

    .line 8467
    :cond_3
    invoke-virtual {p2}, Lcom/android/carsdk/protobuf/CodedInputStream;->readFloat()F

    move-result p1

    iput p1, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$BDistancePercent;->percent_:F

    goto :goto_1

    .line 8462
    :cond_4
    invoke-virtual {p2}, Lcom/android/carsdk/protobuf/CodedInputStream;->readFloat()F

    move-result p1

    iput p1, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$BDistancePercent;->distance_:F
    :try_end_1
    .catch Lcom/android/carsdk/protobuf/InvalidProtocolBufferException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    :cond_5
    :goto_2
    move v1, v2

    goto :goto_1

    :catchall_1
    move-exception p1

    goto :goto_3

    :catch_0
    move-exception p1

    .line 8475
    :try_start_2
    new-instance p2, Ljava/lang/RuntimeException;

    new-instance p3, Lcom/android/carsdk/protobuf/InvalidProtocolBufferException;

    .line 8477
    invoke-virtual {p1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p3, p1}, Lcom/android/carsdk/protobuf/InvalidProtocolBufferException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, p0}, Lcom/android/carsdk/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/android/carsdk/protobuf/MessageLite;)Lcom/android/carsdk/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p2

    :catch_1
    move-exception p1

    .line 8473
    new-instance p2, Ljava/lang/RuntimeException;

    invoke-virtual {p1, p0}, Lcom/android/carsdk/protobuf/InvalidProtocolBufferException;->setUnfinishedMessage(Lcom/android/carsdk/protobuf/MessageLite;)Lcom/android/carsdk/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 8478
    :goto_3
    throw p1

    .line 8482
    :cond_6
    :pswitch_2
    sget-object p1, Landroid/car/hardware/xpu/XpuApEssentialMsg$BDistancePercent;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuApEssentialMsg$BDistancePercent;

    return-object p1

    .line 8430
    :pswitch_3
    check-cast p2, Lcom/android/carsdk/protobuf/GeneratedMessageLite$Visitor;

    .line 8431
    check-cast p3, Landroid/car/hardware/xpu/XpuApEssentialMsg$BDistancePercent;

    .line 8432
    iget p1, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$BDistancePercent;->distance_:F

    const/4 v0, 0x0

    cmpl-float v3, p1, v0

    if-eqz v3, :cond_7

    move v3, v2

    goto :goto_4

    :cond_7
    move v3, v1

    :goto_4
    iget v4, p3, Landroid/car/hardware/xpu/XpuApEssentialMsg$BDistancePercent;->distance_:F

    cmpl-float v5, v4, v0

    if-eqz v5, :cond_8

    move v5, v2

    goto :goto_5

    :cond_8
    move v5, v1

    :goto_5
    invoke-interface {p2, v3, p1, v5, v4}, Lcom/android/carsdk/protobuf/GeneratedMessageLite$Visitor;->visitFloat(ZFZF)F

    move-result p1

    iput p1, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$BDistancePercent;->distance_:F

    .line 8434
    iget p1, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$BDistancePercent;->percent_:F

    cmpl-float v3, p1, v0

    if-eqz v3, :cond_9

    move v3, v2

    goto :goto_6

    :cond_9
    move v3, v1

    :goto_6
    iget p3, p3, Landroid/car/hardware/xpu/XpuApEssentialMsg$BDistancePercent;->percent_:F

    cmpl-float v0, p3, v0

    if-eqz v0, :cond_a

    move v1, v2

    :cond_a
    invoke-interface {p2, v3, p1, v1, p3}, Lcom/android/carsdk/protobuf/GeneratedMessageLite$Visitor;->visitFloat(ZFZF)F

    move-result p1

    iput p1, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$BDistancePercent;->percent_:F

    .line 8436
    sget-object p1, Lcom/android/carsdk/protobuf/GeneratedMessageLite$MergeFromVisitor;->INSTANCE:Lcom/android/carsdk/protobuf/GeneratedMessageLite$MergeFromVisitor;

    return-object p0

    .line 8427
    :pswitch_4
    new-instance p1, Landroid/car/hardware/xpu/XpuApEssentialMsg$BDistancePercent$Builder;

    invoke-direct {p1, v0}, Landroid/car/hardware/xpu/XpuApEssentialMsg$BDistancePercent$Builder;-><init>(Landroid/car/hardware/xpu/XpuApEssentialMsg$1;)V

    return-object p1

    :pswitch_5
    return-object v0

    .line 8421
    :pswitch_6
    sget-object p1, Landroid/car/hardware/xpu/XpuApEssentialMsg$BDistancePercent;->DEFAULT_INSTANCE:Landroid/car/hardware/xpu/XpuApEssentialMsg$BDistancePercent;

    return-object p1

    .line 8418
    :pswitch_7
    new-instance p1, Landroid/car/hardware/xpu/XpuApEssentialMsg$BDistancePercent;

    invoke-direct {p1}, Landroid/car/hardware/xpu/XpuApEssentialMsg$BDistancePercent;-><init>()V

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

.method public getDistance()F
    .locals 1

    .line 8216
    iget v0, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$BDistancePercent;->distance_:F

    return v0
.end method

.method public getPercent()F
    .locals 1

    .line 8239
    iget v0, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$BDistancePercent;->percent_:F

    return v0
.end method

.method public getSerializedSize()I
    .locals 4

    .line 8267
    iget v0, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$BDistancePercent;->memoizedSerializedSize:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    return v0

    :cond_0
    const/4 v0, 0x0

    .line 8271
    iget v1, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$BDistancePercent;->distance_:F

    const/4 v2, 0x0

    cmpl-float v3, v1, v2

    if-eqz v3, :cond_1

    const/4 v3, 0x1

    .line 8273
    invoke-static {v3, v1}, Lcom/android/carsdk/protobuf/CodedOutputStream;->computeFloatSize(IF)I

    move-result v1

    add-int/2addr v0, v1

    .line 8275
    :cond_1
    iget v1, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$BDistancePercent;->percent_:F

    cmpl-float v2, v1, v2

    if-eqz v2, :cond_2

    const/4 v2, 0x2

    .line 8277
    invoke-static {v2, v1}, Lcom/android/carsdk/protobuf/CodedOutputStream;->computeFloatSize(IF)I

    move-result v1

    add-int/2addr v0, v1

    .line 8279
    :cond_2
    iput v0, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$BDistancePercent;->memoizedSerializedSize:I

    return v0
.end method

.method public writeTo(Lcom/android/carsdk/protobuf/CodedOutputStream;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 8258
    iget v0, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$BDistancePercent;->distance_:F

    const/4 v1, 0x0

    cmpl-float v2, v0, v1

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    .line 8259
    invoke-virtual {p1, v2, v0}, Lcom/android/carsdk/protobuf/CodedOutputStream;->writeFloat(IF)V

    .line 8261
    :cond_0
    iget v0, p0, Landroid/car/hardware/xpu/XpuApEssentialMsg$BDistancePercent;->percent_:F

    cmpl-float v1, v0, v1

    if-eqz v1, :cond_1

    const/4 v1, 0x2

    .line 8262
    invoke-virtual {p1, v1, v0}, Lcom/android/carsdk/protobuf/CodedOutputStream;->writeFloat(IF)V

    :cond_1
    return-void
.end method
